<?php
class add_table_ordernew_addons extends CDbMigration
{
	public function up()
	{		
		if(!Yii::app()->db->schema->getTable("{{ordernew_addons}}")){
			$this->createTable(
		      "{{ordernew_addons}}",
		      array(
		        'id'=>'pk',				        		        
		        'order_id'=>"integer(14) NOT NULL DEFAULT '0'",
		        'item_row'=>"varchar(100) NOT NULL DEFAULT ''",		        
		        'subcat_id'=>"integer(14) NOT NULL DEFAULT '0'",		        
		        'sub_item_id'=>"integer(14) NOT NULL DEFAULT '0'",		        
		        'qty'=>"integer(14) NOT NULL DEFAULT '0'",
		        'price'=>"float(14,4) NOT NULL DEFAULT '0'",
		        'addons_total'=>"float(14,4) NOT NULL DEFAULT '0'",
		        'multi_option'=>"varchar(100) NOT NULL DEFAULT ''",
		      ),
			'ENGINE=InnoDB DEFAULT CHARSET=utf8');
			
			$this->create_Index("{{ordernew_addons}}",array(
	    	 'order_id','item_row','subcat_id','sub_item_id'
	    	)); 	    		    	
		}
									
	}		
	
	public function down()
	{
		$this->dropTable("{{ordernew_addons}}");
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