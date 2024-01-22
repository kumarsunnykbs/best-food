<?php
class MG_services extends CDbMigration
{
	public $date_default;
	
	public function up()
	{
				
		//Yii::app()->db->createCommand("DROP TABLE {{services_fee}}")->query();
		
		if(!Yii::app()->db->schema->getTable("{{services}}")){
    		$this->createTable(
		      "{{services}}",
		      array(
		        'service_id'=>'pk',		        
		        'service_code'=>"varchar(255) NOT NULL DEFAULT ''",
		        'service_name'=>"varchar(255) NOT NULL DEFAULT ''",		        
		        'color_hex'=>"varchar(10) NOT NULL DEFAULT ''",
		        'font_color_hex'=>"varchar(10) NOT NULL DEFAULT ''",
		        'status'=>"varchar(255) NOT NULL DEFAULT 'publish'",
		        'date_created'=>$this->date_default,
	            'date_modified'=>$this->date_default,
	            'ip_address'=>"varchar(20) NOT NULL DEFAULT ''"
		      ),
			'ENGINE=InnoDB DEFAULT CHARSET=utf8');						
    	}
    	
    	if(!Yii::app()->db->schema->getTable("{{services_translation}}")){
    		$this->createTable(
		      "{{services_translation}}",
		      array(
		        'id'=>'pk',		        		        
		        'service_id'=>"integer(11) NOT NULL DEFAULT '0'",
		        'language'=>"varchar(100) NOT NULL DEFAULT ''",
		        'service_name'=>"varchar(255) NOT NULL DEFAULT ''",		        
		        'date_modified'=>$this->date_default,
		      ),
			'ENGINE=InnoDB DEFAULT CHARSET=utf8');
			
			$this->create_Index("{{services_translation}}",array(
	    	 'service_id','language'
	    	)); 	    		    	
    	}
    	
    	if(!Yii::app()->db->schema->getTable("{{services_fee}}")){
    		$this->createTable(
		      "{{services_fee}}",
		      array(
		        'id'=>'pk',		        		        
		        'service_id'=>"integer(11) NOT NULL DEFAULT '0'",
		        'merchant_id'=>"integer(11) NOT NULL DEFAULT '0'",	 
		        'service_fee'=>"float(14,4) NOT NULL DEFAULT '0'",		        
		        'date_modified'=>$this->date_default,
		      ),
			'ENGINE=InnoDB DEFAULT CHARSET=utf8');
			
			$this->create_Index("{{services_fee}}",array(
	    	 'service_id','merchant_id'
	    	)); 	    		    	
    	}
    	
    	
    	/*VIEW TABLE*/
    	/*$stmt="		
		CREATE OR REPLACE VIEW {{view_services_fee}} as
		select a.service_id,
		b.service_code,
		a.merchant_id,
		a.service_fee,
		a.date_modified
		
		FROM {{services_fee}} a
		LEFT JOIN {{services}} b
		ON
		a.service_id = b.service_id
		";		*/
    	
    	$stmt="
    	CREATE OR REPLACE VIEW {{view_services_fee}} as
    	select
		a.merchant_id,
		b.restaurant_name,
		b.merchant_type,
		a.meta_value as service_code,
		
		IFNULL(IF(b.merchant_type=2, 
		 (
		   select service_fee 
		   from {{services_fee}}
		   where merchant_id = 0
		   and service_id IN (
		     select service_id from {{services}} where service_code = a.meta_value
		   )
		 )
		, 
		
		(
		select service_fee
		from {{services_fee}}
		where merchant_id = a.merchant_id
		and service_id IN (
		     select service_id from {{services}} where service_code = a.meta_value
		   )
		)
		
		),0) as service_fee
		
		from {{merchant_meta}} a
		left join {{merchant}} b
		on
		a.merchant_id = b.merchant_id
		
		where 
		a.meta_name='services'		
    	";    	
		$this->execute($stmt);
    	
    	if(!Yii::app()->db->createCommand("SELECT service_code FROM {{services}}")->queryRow()){
			Yii::app()->db->createCommand("Truncate table {{services}}")->query();   		
			
			/*CUSTOMER STATUS*/
			$data = array();				
			$data=array(		  
			  array('service_code'=>"delivery",'service_name'=>"Delivery",'color_hex'=>"#ffd6c4"),
			  array('service_code'=>"pickup",'service_name'=>"Pickup",'color_hex'=>"#e8989b"),
			  array('service_code'=>"dinein",'service_name'=>"Dinein",'color_hex'=>"#ffd966"),
			);		
		
			$builder=Yii::app()->db->schema->commandBuilder;
			$command=$builder->createMultipleInsertCommand('{{services}}',$data);
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