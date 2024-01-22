<?php
class add_table_ordernew extends CDbMigration
{
	public function up()
	{
				
		if(!Yii::app()->db->schema->getTable("{{ordernew}}")){
			$this->createTable(
		      "{{ordernew}}",
		      array(
		        'order_id'=>'pk',				        
		        'order_uuid'=>"varchar(100) NOT NULL DEFAULT ''",	
		        'merchant_id'=>"integer(14) NOT NULL DEFAULT '0'",
		        'client_id'=>"integer(14) NOT NULL DEFAULT '0'",
		        'status'=>"varchar(255) NOT NULL DEFAULT 'pending'",
		        'payment_status'=>"varchar(255) NOT NULL DEFAULT 'unpaid'",
		        'service_code'=>"varchar(255) NOT NULL DEFAULT ''",		        
		        'payment_code'=>"varchar(255) NOT NULL DEFAULT ''",
		        'total_discount'=>"float(14,4) NOT NULL DEFAULT '0'",
		        'points'=>"float(14,4) NOT NULL DEFAULT '0'",
		        'sub_total'=>"float(14,4) NOT NULL DEFAULT '0'",
		        'sub_total_less_discount'=>"float(14,4) NOT NULL DEFAULT '0'",
		        'service_fee'=>"float(14,4) NOT NULL DEFAULT '0'",
		        'delivery_fee'=>"float(14,4) NOT NULL DEFAULT '0'",
		        'packaging_fee'=>"float(14,4) NOT NULL DEFAULT '0'",
		        'tax'=>"float(14,4) NOT NULL DEFAULT '0'",
		        'tax_total'=>"float(14,4) NOT NULL DEFAULT '0'",
		        'courier_tip'=>"float(14,4) NOT NULL DEFAULT '0'",
		        'total'=>"float(14,4) NOT NULL DEFAULT '0'",
		        'promo_code'=>"varchar(100) NOT NULL DEFAULT ''",
		        'promo_total'=>"float(14,4) NOT NULL DEFAULT '0'",
		        'offer_discount'=>"varchar(100) NOT NULL DEFAULT ''",
		        'offer_total'=>"float(14,4) NOT NULL DEFAULT '0'",
		        'whento_deliver'=>"varchar(100) NOT NULL DEFAULT ''",
		        'delivery_date'=>"date DEFAULT NULL",
		        'delivery_time'=>"varchar(50) NOT NULL DEFAULT ''",		        
		        'commission_type'=>"varchar(100) NOT NULL DEFAULT ''",
		        'commission_based'=>"varchar(100) NOT NULL DEFAULT ''",
		        'commission'=>"float(14,4) NOT NULL DEFAULT '0'",
		        'merchant_earning'=>"float(14,4) NOT NULL DEFAULT '0'",
		        'use_currency_code'=>"varchar(5) NOT NULL DEFAULT ''",
		        'base_currency_code'=>"varchar(5) NOT NULL DEFAULT ''",
		        'exchange_rate'=>"float(14,4) NOT NULL DEFAULT '0'",
		        'formatted_address'=>"varchar(255) NOT NULL DEFAULT ''",
		        'driver_id'=>"bigint(20) NOT NULL DEFAULT '0'",
		        'date_cancelled'=>"timestamp NULL DEFAULT NULL",
		        'is_critical'=>"integer(1) NOT NULL DEFAULT '0'",
		        'date_created'=>"datetime DEFAULT NULL",
	            'date_modified'=>"datetime DEFAULT NULL",
	            'ip_address'=>"varchar(50) NOT NULL DEFAULT ''"		        
		      ),
			'ENGINE=InnoDB DEFAULT CHARSET=utf8');
			
			$this->create_Index("{{ordernew}}",array(
	    	 'order_uuid','merchant_id','client_id','service_code','payment_code','status','payment_status',
	    	 'use_currency','base_currency','is_critical'
	    	)); 	    		    	
		}
									
	}
	
	public function down()
	{
		$this->dropTable("{{ordernew}}");
	}
	
	public function create_Index($table_name='', $fields = array())
	{	
		$stats = array();
		foreach ($fields as $val) {		   
		   try {
		      $this->createIndex($val,$table_name,$val);
		      $stats[]  = "index [$val] created";
		   } catch (Exception $e) {
			  $stats[]  = "index [$val] already";
		   }					
		}	
		return $stats;
	}
}
/*end clas*/