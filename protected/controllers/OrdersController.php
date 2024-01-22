<?php
class OrdersController extends SiteCommon
{
	public function beforeAction($action)
	{
		if(Yii::app()->user->isGuest){
			$this->redirect(Yii::app()->getBaseUrl(true));	
			return false;	
		}
		return true;			
	}
	
	public function actionIndex()
	{			
		
		$maps = CMaps::config();		
		$provider = isset($maps['provider'])?$maps['provider']:'';
		$key = isset($maps['key'])?$maps['key']:'';			
		ScriptUtility::registerJS(array(
		  '//maps.googleapis.com/maps/api/js?v=3.exp&libraries=places&key='.$key
		),CClientScript::POS_HEAD);		
		
		$order_uuid = isset($_GET['order_uuid'])?$_GET['order_uuid']:'';	
		
		ScriptUtility::registerScript(array(
		  "var php_order_uuid='".CJavaScript::quote($order_uuid)."';"		  
		),'order_uuid');
			
		$this->render('order_place',array(	
		  'order_uuid'=>$order_uuid,
		));
	}
			
}
/*end class*/