<?php
class add_table_ordernew_item extends CDbMigration
{
	public function up()
	{
		
		if(!Yii::app()->db->schema->getTable("{{ordernew_item}}")){
			$this->createTable(
		      "{{ordernew_item}}",
		      array(
		        'id'=>'pk',				        		        
		        'order_id'=>"integer(14) NOT NULL DEFAULT '0'",
		        'item_row'=>"varchar(100) NOT NULL DEFAULT ''",		        		        
		        'cat_id'=>"integer(14) NOT NULL DEFAULT '0'",
		        'item_id'=>"integer(14) NOT NULL DEFAULT '0'",
		        'item_token'=>"varchar(255) NOT NULL DEFAULT ''",
		        'item_size_id'=>"integer(14) NOT NULL DEFAULT '0'",
		        'qty'=>"integer(14) NOT NULL DEFAULT '0'",
		        'special_instructions'=>"varchar(255) NOT NULL DEFAULT ''",		        
		        'if_sold_out'=>"varchar(50) NOT NULL DEFAULT ''",
		        'price'=>"float(14,5) NOT NULL DEFAULT '0'",
		        'discount'=>"float(14,5) NOT NULL DEFAULT '0'",
		        'discount_type'=>"varchar(100) NOT NULL DEFAULT ''",
		      ),
			'ENGINE=InnoDB DEFAULT CHARSET=utf8');
			
			$this->create_Index("{{ordernew_item}}",array(
	    	 'order_id','item_row','cat_id','item_token','item_size_id'
	    	)); 	    		    	
		}
									
	}		
	
	public function down()
	{
		$this->dropTable("{{ordernew_item}}");
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