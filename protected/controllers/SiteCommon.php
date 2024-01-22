<?php
class SiteCommon extends CController
{
	public $layout='main_layout';	
	public $code=2,$msg,$details,$data;			
	
	public function filters()
	{	
		return array(
			'accessControl',
			array(
			  'application.filters.HtmlCompressorFilter',
			)
		);
	}
	
	public function accessRules()
	{				
		return array(
		   array('deny',
                'actions'=>array('checkout','logout',
                    'orders','booking','vouchers','favourites','payments','addresses','points','profile','change_password',
                    'manage_account','orderHistory','pdf','orderSummary','orderDetails','orderBuyAgain','getAddressAttributesx',
                    'getAddresses','getAdddress','SaveAddress','deleteAddress','PaymentMethod','MyPayments','SavedPaymentProvider',
                    'deletePayment','saveStoreList','SaveStore','saveProfile','updatePassword','requestData','RequestEmailCode',
                    'verifyAccountDelete','getNotifications'
                   ),
                'users'=>array('?'),
            ),           
		);
	}
	
	public function behaviors() {
		return array(
	        'BodyClassesBehavior' => array(
	            'class' => 'ext.yii-body-classes.BodyClassesBehavior'
	        ),        
	    );
    }
	
	public function init()
	{
		
		$this->initSettings();
		
		$detect = CommonUtility::MobileDetect();
		$is_mobile = false;

		//$this->layout = 'main_layout';	
		$ajaxurl = Yii::app()->createUrl("/api");
				
		if ($detect->isMobile() || $detect->isTablet() ) {						
			$is_mobile=true;
			$ajaxurl = Yii::app()->createUrl("/frontapp");
		} 
		
		Yii::app()->params['isMobile'] = $is_mobile;
		
		$include = array('front-core','owl-carousel','front-css','front-js');

		$realtime = AR_admin_meta::getMeta(array('realtime_app_enabled','realtime_provider','webpush_app_enabled','webpush_provider'));		
		$realtime_app_enabled = isset($realtime['realtime_app_enabled'])?$realtime['realtime_app_enabled']['meta_value']:'';
		$realtime_provider = isset($realtime['realtime_provider'])?$realtime['realtime_provider']['meta_value']:'';
		
		$webpush_app_enabled = isset($realtime['webpush_app_enabled'])?$realtime['webpush_app_enabled']['meta_value']:'';
		$webpush_provider = isset($realtime['webpush_provider'])?$realtime['webpush_provider']['meta_value']:''; 
		
		if($realtime_app_enabled==1){
		   array_unshift($include, $realtime_provider);
		}
				
		if($webpush_app_enabled==1){
		   array_unshift($include, "webpush_".$webpush_provider );
		}
				
		AssetsFrontBundle::registerBundle($include);
		$settings = AttributesTools::MoneyConfig();
					
		ScriptUtility::registerScript(array(
		  "var ajaxurl='$ajaxurl';",
		  "var is_mobile='$is_mobile';",
		  "var money_config='".CJavaScript::quote($settings)."';",		  
		),'front_script');
	}
	
	public function initSettings()
	{
		Yii::app()->params['settings'] = OptionsTools::find(array(
			  'website_date_format_new','website_time_format_new','map_provider','google_geo_api_key',
			  'mapbox_access_token','home_search_unit_type','website_timezone_new','website_title',
			  'captcha_customer_signup','website_address','website_contact_phone','website_contact_email',
			  'image_resizing','image_driver','website_logo','review_image_resize_width','merchant_specific_country',
			  'merchant_enabled_registration_capcha','registration_program','registration_terms_condition'
		));			
						
		Yii::app()->params['map_credentials'] =  CommonUtility::MapCredentials();
		
		/*SET TIMEZONE*/
		$timezone = Yii::app()->params['settings']['website_timezone_new'];		
		if (is_string($timezone) && strlen($timezone) > 0){
		   Yii::app()->timeZone=$timezone;		   
		}
		Price_Formatter::init();	
				
		$realtime = AR_admin_meta::getMeta(array('realtime_app_enabled','realtime_provider',
		  'pusher_key','pusher_cluster','ably_apikey','piesocket_api_key','piesocket_websocket_api','piesocket_clusterid'
		));				
		$realtime_app_enabled = isset($realtime['realtime_app_enabled'])?$realtime['realtime_app_enabled']['meta_value']:'';
		
		$realtime_provider = isset($realtime['realtime_provider'])?$realtime['realtime_provider']['meta_value']:'';
		$pusher_key = isset($realtime['pusher_key'])?$realtime['pusher_key']['meta_value']:'';
		$pusher_cluster = isset($realtime['pusher_cluster'])?$realtime['pusher_cluster']['meta_value']:'';		
		$ably_apikey = isset($realtime['ably_apikey'])?$realtime['ably_apikey']['meta_value']:'';
		
		$piesocket_api_key = isset($realtime['piesocket_api_key'])?$realtime['piesocket_api_key']['meta_value']:'';
		$piesocket_websocket_api = isset($realtime['piesocket_websocket_api'])?$realtime['piesocket_websocket_api']['meta_value']:'';
		$piesocket_clusterid = isset($realtime['piesocket_clusterid'])?$realtime['piesocket_clusterid']['meta_value']:'';
		
		Yii::app()->params['realtime_settings'] = array(
		  'enabled'=>$realtime_app_enabled,
		  'provider'=>$realtime_provider,
		  'key'=>$pusher_key,
		  'cluster'=>$pusher_cluster,
		  'ably_apikey'=>$ably_apikey,
		  'piesocket_api_key'=>$piesocket_api_key,
		  'piesocket_websocket_api'=>$piesocket_websocket_api,
		  'piesocket_clusterid'=>$piesocket_clusterid,
		);						
	}
	
	public function actionDatableLocalize()
	{
		$data = CommonUtility::dataTablesLocalization();
		header('Content-Type: application/json; charset="UTF-8"');
		echo CJSON::encode($data);
	}
	
	public function jsonResponse()
	{
		$resp=array('code'=>$this->code,'msg'=>$this->msg,'details'=>$this->details);
		echo CJSON::encode($resp);
		Yii::app()->end();
	}
	
	public function DataTablesNodata()
	{
		if (isset($_POST['draw'])){
			$feed_data['draw']=(integer)$_POST['draw'];
		} else $feed_data['draw']=1;	   
		     
        $feed_data['recordsTotal']=0;
        $feed_data['recordsFiltered']=0;
        $feed_data['data']=array();		        
        echo CJSON::encode($feed_data);    	
	}

	public function DataTablesData($feed_data='')
	{
	    echo CJSON::encode($feed_data);    
    }    
    
    public function responseJson()
    {
    	header('Content-type: application/json');
		$resp=array('code'=>$this->code,'msg'=>$this->msg,'details'=>$this->details);
		echo CJSON::encode($resp);
		Yii::app()->end();
    }        
    
}
/*end class*/