<?php
class add_table_ordernew_attributes extends CDbMigration
{
	public function up()
	{
					
		if(!Yii::app()->db->schema->getTable("{{ordernew_attributes}}")){
			$this->createTable(
		      "{{ordernew_attributes}}",
		      array(
		        'id'=>'pk',				        		        
		        'order_id'=>"integer(14) NOT NULL DEFAULT '0'",
		        'item_row'=>"varchar(100) NOT NULL DEFAULT ''",		       
		        'meta_name'=>"varchar(255) NOT NULL DEFAULT ''",
		        'meta_value'=>"varchar(255) NOT NULL DEFAULT ''",
		      ),
			'ENGINE=InnoDB DEFAULT CHARSET=utf8');
			
			$this->create_Index("{{ordernew_attributes}}",array(
	    	 'order_id','item_row','meta_name'
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