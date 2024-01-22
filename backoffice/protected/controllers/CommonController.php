<?php
class CommonController extends CController
{
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
		    array('allow',
                'actions'=>array('logout','error','migrate'),
                'users'=>array('*'),
            ),
			array('allow', 			    
				'expression'=>array('AdminUserIdentity','verifyAccess'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}
	
	public function init()
	{
		
		$this->initSettings();
		
		$detect = CommonUtility::MobileDetect();
		$is_mobile = false;

		$this->layout = 'backend';	
		$ajaxurl = Yii::app()->createUrl("/backend");
				
		if ($detect->isMobile() || $detect->isTablet() ) {						
			//$is_mobile=true;
			$ajaxurl = Yii::app()->createUrl("/backendapp");
		} 
		
		Yii::app()->params['isMobile'] = $is_mobile;
		
		$realtime = AR_admin_meta::getMeta(array('realtime_app_enabled','realtime_provider','webpush_app_enabled','webpush_provider'));		
		$realtime_app_enabled = isset($realtime['realtime_app_enabled'])?$realtime['realtime_app_enabled']['meta_value']:'';
		$realtime_provider = isset($realtime['realtime_provider'])?$realtime['realtime_provider']['meta_value']:'';
		
		$webpush_app_enabled = isset($realtime['webpush_app_enabled'])?$realtime['webpush_app_enabled']['meta_value']:'';
		$webpush_provider = isset($realtime['webpush_provider'])?$realtime['webpush_provider']['meta_value']:'';
				
		$include = array('backend-core','backend-css','admin-js');
		if($realtime_app_enabled==1){
		   array_unshift($include, $realtime_provider);
		}
				
		if($webpush_app_enabled==1){
		   array_unshift($include, "webpush_".$webpush_provider );
		}
							
		AssetsBundle::registerBundle($include);	
			
		/*AssetsBundle::registerBundle(array(		 
		 'backend-core',
		 'backend-css',
		 'pusher',
		 'admin-js',
		));			*/
		
		$upload_ajaxurl = Yii::app()->createUrl("/uploadfiles");
		$api_url = Yii::app()->createUrl("/api");
				
		ScriptUtility::registerScript(array(
		  "var ajaxurl='$ajaxurl';",
		  "var upload_ajaxurl='$upload_ajaxurl';",
		  "var api_url='$api_url';",
		  "var is_mobile='$is_mobile';"
		),'admin_script');				
	}
	
	public function initSettings()
	{
		Yii::app()->params['settings'] = OptionsTools::find(array(
			  'website_date_format_new','website_time_format_new',
			  'image_resizing','image_driver'
		));		
		
		
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
		
		Price_Formatter::init();		
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
		header('Content-type: application/json');
	    echo CJSON::encode($feed_data);    
    }    
    
    /*public function responseJson($data)
    {
    	header('Content-type: application/json');
		echo CJSON::encode($data);
    }     */   
    
    public function responseJson()
    {
    	header('Content-type: application/json');
		$resp=array('code'=>$this->code,'msg'=>$this->msg,'details'=>$this->details);
		echo CJSON::encode($resp);
		Yii::app()->end();
    }       
    
}
/*end class*/