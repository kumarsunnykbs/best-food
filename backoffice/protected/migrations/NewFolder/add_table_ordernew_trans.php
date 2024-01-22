<?php
class add_table_ordernew_trans extends CDbMigration
{
	public function up()
	{
				
		if(!Yii::app()->db->schema->getTable("{{ordernew_transaction}}")){
			$this->createTable(
		      "{{ordernew_transaction}}",
		      array(
		        'transaction_id'=>'pk',		
		        'order_id'=>"integer(14) NOT NULL DEFAULT '0'",
		        'merchant_id'=>"integer(14) NOT NULL DEFAULT '0'",
		        'client_id'=>"integer(14) NOT NULL DEFAULT '0'",
		        'payment_code'=>"varchar(100) NOT NULL DEFAULT ''",		       
		        'trans_amount'=>"float(14,4) NOT NULL DEFAULT '0'",
		        'currency_code'=>"varchar(5) NOT NULL DEFAULT ''",
		        'payment_reference'=>"varchar(255) NOT NULL DEFAULT ''",
		        'status'=>"varchar(255) NOT NULL DEFAULT 'pending'",
		        'date_created'=>"datetime DEFAULT NULL",
	            'date_modified'=>"datetime DEFAULT NULL",
	            'ip_address'=>"varchar(20) NOT NULL DEFAULT ''"
		      ),
			'ENGINE=InnoDB DEFAULT CHARSET=utf8');
			
			$this->create_Index("{{ordernew_transaction}}",array(
	    	 'order_id','merchant_id','client_id','payment_code'
	    	)); 	    		    	
		}
									
	}
	
	public function down()
	{
		$this->dropTable("{{ordernew_transaction}}");
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