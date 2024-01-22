<?php
class CMerchants
{	
	public static function get($merchant_id='')
	{
		$dependency = CCacheData::dependency();
		$model = AR_merchant::model()->cache(Yii::app()->params->cache, $dependency)->find('merchant_id=:merchant_id', 
		array(':merchant_id'=>$merchant_id)); 
		if($model){
			return $model;
		}
		throw new Exception( 'merchant not found' );
	}
	
	public static function getByUUID($merchant_uuid='')
	{
		$dependency = CCacheData::dependency();
		$model = AR_merchant::model()->cache(Yii::app()->params->cache, $dependency)->find('merchant_uuid=:merchant_uuid', 
		array(':merchant_uuid'=>$merchant_uuid)); 
		if($model){
			return $model;
		}
		throw new Exception( 'merchant not found' );
	}
	
	public static function getTotalOrders($merchant_id=0)
	{
		$draft = AttributesTools::initialStatus();
		$not_in_status = AOrderSettings::getStatus(array('status_cancel_order','status_rejection'));
		array_push($not_in_status,$draft);    		
		$criteria=new CDbCriteria();
		$criteria->select="sum(total) as total";		
		$criteria->condition = "merchant_id=:merchant_id";		    
		$criteria->params  = array(
		  ':merchant_id'=>intval($merchant_id)		  
		);				
		$criteria->addNotInCondition('status', (array)$not_in_status );
		$count = AR_ordernew::model()->count($criteria); 
		return intval($count);
	}
	
	public static function getMerchantType($merchant_id=0)
	{
		$model = self::get($merchant_id);
		if($model){
			return $model->merchant_type;
		}
	}
	
}
/*end class*/