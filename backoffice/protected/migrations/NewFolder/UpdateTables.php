<?php
class UpdateTables extends CDbMigration
{
	public function up()
	{
		if(Yii::app()->db->schema->getTable("{{merchant}}")){
    		$this->add_Column("{{merchant}}",array(    		  
    		  'disabled_ordering'=>"int(1) NOT NULL DEFAULT '0'",
    		  'header_image'=>"varchar(255) NOT NULL DEFAULT ''",
    		  'description'=>"text",
    		  'short_description'=>"text",
    		));
    	}
    	
    	if(Yii::app()->db->schema->getTable("{{opening_hours}}")){
    		$this->add_Column("{{opening_hours}}",array(
    		  'day_of_week'=>"int(1) NOT NULL DEFAULT '0'",
    		  'last_update'=>"timestamp NULL DEFAULT NULL",
    		));
    	}
    	
	} /*end up*/
	
	public function add_Column($table_name='',$fields = array())
	{
		$stats = array();
		$table_cols = Yii::app()->db->schema->getTable($table_name);
		if(is_array($fields) && count($fields)>=1){
			foreach ($fields as $key=>$val) {
				if(!isset($table_cols->columns[$key])) {							
				   $this->addColumn($table_name,$key,$val);				   
				    $stats[]= "field $key [OK]";
				} else {
					$stats[]= "field $key already exist";
				}							
			}
		}			
		return $stats;																			
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
/*end class*/