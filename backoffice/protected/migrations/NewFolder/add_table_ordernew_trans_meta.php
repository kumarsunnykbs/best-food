<?php
class add_table_ordernew_trans_meta extends CDbMigration
{
	public function up()
	{
				
		if(!Yii::app()->db->schema->getTable("{{ordernew_trans_meta}}")){
			$this->createTable(
		      "{{ordernew_trans_meta}}",
		      array(
		       'meta_id'=>'pk',		
		       'transaction_id'=>"integer(14) NOT NULL DEFAULT '0'",
		       'order_id'=>"integer(14) NOT NULL DEFAULT '0'",
		       'meta_name'=>"varchar(255) NOT NULL DEFAULT ''",
		       'meta_value'=>"longtext",
		       'meta_binary'=>"binary(255) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'",
		      ),
			'ENGINE=InnoDB DEFAULT CHARSET=utf8');
			
			$this->create_Index("{{ordernew_trans_meta}}",array(
	    	 'order_id','meta_name'
	    	)); 	    		    	
		}
									
	}
	
	public function down()
	{
		$this->dropTable("{{ordernew_trans_meta}}");
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