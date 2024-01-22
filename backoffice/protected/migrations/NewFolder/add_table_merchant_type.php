<?php
class add_table_merchant_type extends CDbMigration
{
	public function up()
	{		
				
		if(!Yii::app()->db->schema->getTable("{{merchant_type}}")){
			$this->createTable(
		      "{{merchant_type}}",
		      array(
		        'id'=>'pk',
		        'type_id'=>"integer(11) NOT NULL DEFAULT '0'",	            
		        'type_name'=>"varchar(255) NOT NULL DEFAULT ''",	
		        'commision_type'=>"varchar(50) NOT NULL DEFAULT 'percentage'",		        
		        'commission'=>"float(14,2) NOT NULL DEFAULT '0'",	            
		        'based_on'=>"varchar(50) NOT NULL DEFAULT 'subtotal'",
		        'color_hex'=>"varchar(10) NOT NULL DEFAULT ''",
		        'font_color_hex'=>"varchar(10) NOT NULL DEFAULT ''",
		        'status'=>"varchar(255) NOT NULL DEFAULT 'publish'",
		        'date_created'=>"datetime DEFAULT NULL",
	            'date_modified'=>"datetime DEFAULT NULL",
	            'ip_address'=>"varchar(20) NOT NULL DEFAULT ''"            
		      ),
			'ENGINE=InnoDB DEFAULT CHARSET=utf8');
		
		
			Yii::app()->db->createCommand("Truncate table {{merchant_type}}")->query();   		
			
			/*CUSTOMER STATUS*/
			$data = array();				
			$data=array(		  
			  array('type_id'=>1,'type_name'=>"Membership",'color_hex'=>"#ffd6c4"),
			  array('type_id'=>2,'type_name'=>"Commission",'color_hex'=>"#e8989b"),
			  array('type_id'=>3,'type_name'=>"Commission+Invoice",'color_hex'=>"#ffd966"),
			);		
		
			$builder=Yii::app()->db->schema->commandBuilder;
			$command=$builder->createMultipleInsertCommand('{{merchant_type}}',$data);
			$command->execute();
		
		}
				
	}
	
	public function down()
	{
		$this->dropTable("{{merchant_type}}");
	}
}
/*end clas*/