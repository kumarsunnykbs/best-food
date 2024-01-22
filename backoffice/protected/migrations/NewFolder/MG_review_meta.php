<?php
class MG_review_meta extends CDbMigration
{
	public function up()
	{
		$date_default = "datetime NOT NULL DEFAULT CURRENT_TIMESTAMP";		
		if($res = Yii::app()->db->createCommand("SELECT VERSION() as mysql_version")->queryRow()){				
			$mysql_version = (float)$res['mysql_version'];			
			if($mysql_version<=5.5){				
				$date_default="datetime NOT NULL DEFAULT '0000-00-00 00:00:00'";
			}
		}
						
		if(!Yii::app()->db->schema->getTable("{{review_meta}}")){
			$this->createTable(
		      "{{review_meta}}",
		      array(
		        'id'=>'pk',		
		        'review_id'=>"integer(14) NOT NULL DEFAULT '0'",
		        'meta_name'=>"varchar(100) NOT NULL DEFAULT ''",	
		        'meta_value'=>"varchar(255) NOT NULL DEFAULT ''",	        		        
		        'date_created'=>$date_default,	                      
		      ),
			'ENGINE=InnoDB DEFAULT CHARSET=utf8');
			
			$this->create_Index("{{review_meta}}",array(
	    	 'review_id','meta_name'
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