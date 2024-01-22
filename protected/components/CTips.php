<?php
class CTips{
		
	public static function data()
	{
		$criteria=new CDbCriteria();
		$criteria->condition  = 'meta_name=:meta_name';		
		$criteria->params = array(':meta_name'=>'tips');
		$criteria->order="meta_value ASC";
		$dependency = CCacheData::dependency();		
		$model = AR_admin_meta::model()->cache(Yii::app()->params->cache, $dependency)->findAll($criteria);
		if($model){
			$data = array();
			foreach ($model as $item) {
				$tip = floatval($item->meta_value);			
				$data[] = array(
				 'value'=>$tip,
				 'name'=>Price_Formatter::formatNumber($item->meta_value)
				); 
			}
			$data[] = array(
			 'value'=>'fixed',
			 'name'=>t("Other")
			); 
			return $data;
		}		
		throw new Exception( 'no results' );
	}
}
/*end class*/