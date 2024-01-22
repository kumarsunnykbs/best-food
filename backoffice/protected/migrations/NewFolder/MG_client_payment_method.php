<?php
class MG_client_payment_method extends CDbMigration
{
	public $date_default;
	
	public function up()
	{
							
		//$this->dropTable("{{client_payment_method}}");
		if(!Yii::app()->db->schema->getTable("{{client_payment_method}}")){
			$this->createTable(
		      "{{client_payment_method}}",
		      array(
		        'payment_method_id'=>'pk',	
		        'payment_uuid'=>"varchar(100) NOT NULL DEFAULT ''",	
		        'client_id'=>"integer(14) NOT NULL DEFAULT '0'",	
		        'merchant_id'=>"integer(14) NOT NULL DEFAULT '0'",	
		        'payment_code'=>"varchar(100) NOT NULL DEFAULT ''",				        
		        'as_default'=>"integer(1) NOT NULL DEFAULT '0'",
		        'reference_id'=>"integer(14) NOT NULL DEFAULT '0'",	
		        'attr1'=>"varchar(255) NOT NULL DEFAULT ''",
		        'attr2'=>"varchar(255) NOT NULL DEFAULT ''",
		        'date_created'=>$this->date_default,
	            'date_modified'=>$this->date_default,
	            'ip_address'=>"varchar(20) NOT NULL DEFAULT ''"
		      ),
			'ENGINE=InnoDB DEFAULT CHARSET=utf8');
			
			$this->create_Index("{{client_payment_method}}",array(
	    	   'client_id','reference_id'
	    	)); 	    		    	
		}
						
	}
	
	public function down()
	{
		
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