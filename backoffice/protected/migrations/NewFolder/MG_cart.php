<?php
class MG_cart extends CDbMigration
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
				
		if(!Yii::app()->db->schema->getTable("{{cart}}")){
			$this->createTable(
		      "{{cart}}",
		      array(
		        'id'=>'pk',		
		        'cart_row'=>"varchar(100) NOT NULL DEFAULT ''",
		        'cart_uuid'=>"varchar(100) NOT NULL DEFAULT ''",	
		        'merchant_id'=>"integer(14) NOT NULL DEFAULT '0'",	        
		        'cat_id'=>"integer(14) NOT NULL DEFAULT '0'",	
		        'item_token'=>"varchar(255) NOT NULL DEFAULT ''",
		        'item_size_id'=>"integer(14) NOT NULL DEFAULT '0'",		        
		        'qty'=>"integer(14) NOT NULL DEFAULT '0'",	
		        'special_instructions'=>"varchar(255) NOT NULL DEFAULT ''",
		        'if_sold_out'=>"varchar(50) NOT NULL DEFAULT ''",
		        'date_created'=>$date_default,
	            'date_modified'=>$date_default,
	            'ip_address'=>"varchar(50) NOT NULL DEFAULT ''"		        
		      ),
			'ENGINE=InnoDB DEFAULT CHARSET=utf8');
			
			$this->create_Index("{{cart}}",array(
	    	 'cart_uuid','item_token','item_size_id'
	    	)); 	    		    	
		}
								
		if(!Yii::app()->db->schema->getTable("{{cart_addons}}")){
			$this->createTable(
		      "{{cart_addons}}",
		      array(
		        'id'=>'pk',		
		        'cart_row'=>"varchar(100) NOT NULL DEFAULT ''",	
		        'cart_uuid'=>"varchar(100) NOT NULL DEFAULT ''",	
		        'subcat_id'=>"integer(14) NOT NULL DEFAULT '0'",		        		        
		        'sub_item_id'=>"integer(14) NOT NULL DEFAULT '0'",		        
		        'qty'=>"integer(14) NOT NULL DEFAULT '0'",
		        'multi_option'=>"varchar(100) NOT NULL DEFAULT '0'",
		      ),
			'ENGINE=InnoDB DEFAULT CHARSET=utf8');
			
			$this->create_Index("{{cart_addons}}",array(
	    	 'cart_row','cart_uuid','subcat_id','sub_item_id'
	    	)); 	    		    	
		}
				
		if(!Yii::app()->db->schema->getTable("{{cart_attributes}}")){
			$this->createTable(
		      "{{cart_attributes}}",
		      array(
		        'id'=>'pk',		
		        'cart_row'=>"varchar(100) NOT NULL DEFAULT ''",	
		        'cart_uuid'=>"varchar(100) NOT NULL DEFAULT ''",	
		        'meta_name'=>"varchar(255) NOT NULL DEFAULT ''",
		        'meta_id'=>"varchar(255) NOT NULL DEFAULT ''",		
		        'last_update'=>$date_default,        
		      ),
			'ENGINE=InnoDB DEFAULT CHARSET=utf8');
			
			$this->create_Index("{{cart_attributes}}",array(
	    	 'cart_row','cart_uuid','meta_name','meta_id'
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