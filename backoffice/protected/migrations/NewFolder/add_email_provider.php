<?php
class add_email_provider extends CDbMigration
{
	public function up()
	{
					
		if(!Yii::app()->db->schema->getTable("{{email_provider}}")){
			$this->createTable(
		      "{{email_provider}}",
		      array(
		         'id'=>'pk',		        
		        'provider_id'=>"varchar(100) NOT NULL DEFAULT ''",
		        'provider_name'=>"varchar(255) NOT NULL DEFAULT ''",
		        'as_default'=>"integer(1) NOT NULL DEFAULT '0'",	
		        'sender_name'=>"varchar(255) NOT NULL DEFAULT ''",    
		        'sender'=>"varchar(255) NOT NULL DEFAULT ''",    
		        'api_key'=>"varchar(255) NOT NULL DEFAULT ''",    
		        'secret_key'=>"varchar(255) NOT NULL DEFAULT ''",    
		        'smtp_host'=>"varchar(255) NOT NULL DEFAULT ''",    
		        'smtp_port'=>"varchar(255) NOT NULL DEFAULT ''",    
		        'smtp_username'=>"varchar(255) NOT NULL DEFAULT ''",  
		        'smtp_password'=>"varchar(255) NOT NULL DEFAULT ''",  
		        'smtp_secure'=>"varchar(255) NOT NULL DEFAULT ''",  
		        'date_created'=>"datetime DEFAULT NULL",
	            'date_modified'=>"datetime DEFAULT NULL",
	            'ip_address'=>"varchar(50) NOT NULL DEFAULT ''"
		      ),
			'ENGINE=InnoDB DEFAULT CHARSET=utf8');
			
			$this->create_Index("{{email_provider}}",array(
	    	 'provider_id','provider_name'
	    	)); 	    

	    	
	    	Yii::app()->db->createCommand("Truncate table {{email_provider}}")->query();    	
		
	    	$builder=Yii::app()->db->schema->commandBuilder;
			$command=$builder->createMultipleInsertCommand('{{email_provider}}', array(
			  array('provider_id' => 'phpmail','provider_name'=>'PHP Mail'),
			  array('provider_id' => 'smtp','provider_name'=>'SMTP'),
			  array('provider_id' => 'mandril','provider_name'=>'Mandril'),
			  array('provider_id' => 'sendgrid','provider_name'=>'SendGrid'),
			  array('provider_id' => 'mailjet','provider_name'=>'MailJet'),
			  array('provider_id' => 'elastic','provider_name'=>'Elastic Email'),
			));
			$command->execute();
	    	    	
		}							
				
	}
	
	public function down()
	{
		$this->dropTable("{{email_provider}}");
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