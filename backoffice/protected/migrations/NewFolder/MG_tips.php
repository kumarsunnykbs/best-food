<?php
class MG_tips extends CDbMigration
{
	public $date_default;
	
	public function up()
	{
				
		if(!Yii::app()->db->schema->getTable("{{tips}}")){
    		$this->createTable(
		      "{{tips}}",
		      array(
		        'id'=>'pk',	
		        'tip'=>"float(14,2) NOT NULL DEFAULT '0'",
	            'last_update'=>$this->date_default,	            
		      ),
			'ENGINE=InnoDB DEFAULT CHARSET=utf8');						
    	}
    	
    	if(!Yii::app()->db->createCommand("SELECT tip FROM {{tips}}")->queryRow()){
    		
    		$data=array(		  
			  array('tip'=>"10"),			  
			  array('tip'=>"15"),
			  array('tip'=>"20"),
			  array('tip'=>"25"),
			);		
			
    		$builder=Yii::app()->db->schema->commandBuilder;
			$command=$builder->createMultipleInsertCommand('{{tips}}',$data);
			$command->execute();
    	}
				
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