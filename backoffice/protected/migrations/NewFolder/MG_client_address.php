<?php
class MG_client_address extends CDbMigration
{
	public $date_default;
	
	public function up()
	{
					
		//$this->dropTable("{{client_address}}");
		if(!Yii::app()->db->schema->getTable("{{client_address}}")){
			$this->createTable(
		      "{{client_address}}",
		      array(
		        'address_id'=>'pk',		
		        'client_id'=>"integer(14) NOT NULL DEFAULT '0'",	
		        'address_uuid'=>"varchar(100) NOT NULL DEFAULT ''",	
		        'place_id'=>"varchar(255) NOT NULL DEFAULT ''",
		        'address1'=>"varchar(255) NOT NULL DEFAULT ''",
		        'address2'=>"varchar(255) NOT NULL DEFAULT ''",	
		        'postal_code'=>"varchar(255) NOT NULL DEFAULT ''",
		        'country'=>"varchar(255) NOT NULL DEFAULT ''",
		        'country_code'=>"varchar(5) NOT NULL DEFAULT ''",
		        'formatted_address'=>"text",
		        'latitude'=>"varchar(255) NOT NULL DEFAULT ''",
		        'longitude'=>"varchar(255) NOT NULL DEFAULT ''",		        
		        'location_name'=>"varchar(255) NOT NULL DEFAULT ''",
		        'delivery_options'=>"varchar(255) NOT NULL DEFAULT ''",
		        'delivery_instructions'=>"varchar(255) NOT NULL DEFAULT ''",
		        'address_label'=>"varchar(255) NOT NULL DEFAULT ''",
		        'date_created'=>$this->date_default,
	            'date_modified'=>$this->date_default,
	            'ip_address'=>"varchar(20) NOT NULL DEFAULT ''"
		      ),
			'ENGINE=InnoDB DEFAULT CHARSET=utf8');
			
			$this->create_Index("{{client_address}}",array(
	    	 'place_id','address_uuid','client_id'
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