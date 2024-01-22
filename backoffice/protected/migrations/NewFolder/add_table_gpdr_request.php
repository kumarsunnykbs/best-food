<?php
class add_table_gpdr_request extends CDbMigration
{
	public function up()
	{
				
		if(!Yii::app()->db->schema->getTable("{{gpdr_request}}")){
			$this->createTable(
		      "{{gpdr_request}}",
		      array(
		        'id'=>'pk',
		        'request_type'=>"varchar(255) NOT NULL DEFAULT ''",
		        'client_id'=>"integer(14) NOT NULL DEFAULT '0'",
		        'first_name'=>"varchar(255) NOT NULL DEFAULT ''",
		        'last_name'=>"varchar(255) NOT NULL DEFAULT ''",
		        'email_address'=>"varchar(255) NOT NULL DEFAULT ''",
		        'message'=>"text ",
		        'date_created'=>"datetime DEFAULT NULL",
	            'date_modified'=>"datetime DEFAULT NULL",
	            'ip_address'=>"varchar(50) NOT NULL DEFAULT ''"
		      ),
			'ENGINE=InnoDB DEFAULT CHARSET=utf8');
			
			$this->create_Index("{{gpdr_request}}",array(
	    	 'request_type','client_id'
	    	)); 	    		    	
		}
									
	}
	
	public function down()
	{
		$this->dropTable("{{gpdr_request}}");
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