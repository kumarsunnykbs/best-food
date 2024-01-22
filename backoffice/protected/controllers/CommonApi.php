<?php
class CommonApi extends CController
{
	public $code=2,$msg,$details,$data;		
	
	public function filters()
	{		
		return array(
			'accessControl', // perform access control for CRUD operations
		);
	}
	
	public function accessRules()
	{		
		return array(			
		    array('allow',
                'actions'=>array('logout','error'),
                'users'=>array('*'),
            ),
			/*array('allow', 			    
				'expression'=>array('AdminUserIdentity','verifyAccess'),
			),*/
			array('allow', 			    
				'users'=>array('@'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}
	
	public function init()
	{
		Yii::app()->params['settings'] = OptionsTools::find(array(
			  'website_date_format_new','website_time_format','website_timezone_new',
			  'image_resizing','image_driver'
		));		
		
		/*SET TIMEZONE*/
		$timezone = isset(Yii::app()->params['settings']['website_timezone_new'])?Yii::app()->params['settings']['website_timezone_new']:'';		
		if (is_string($timezone) && strlen($timezone) > 0){
		   Yii::app()->timeZone=$timezone;		   
		}
		
		Price_Formatter::init();
	}
	
	public function responseJson()
    {
    	header('Content-type: application/json');
		$resp=array('code'=>$this->code,'msg'=>$this->msg,'details'=>$this->details);
		echo CJSON::encode($resp);
		Yii::app()->end();
    }      
    
    public function responseTable($datatables=array())
    {
    	header('Content-type: application/json');
		echo CJSON::encode($datatables);
		Yii::app()->end();
    }
    
    public function responseSelect2($data)
    {
    	header('Content-type: application/json');
		echo CJSON::encode($data);
		Yii::app()->end();
    }        
}
/*end class*/