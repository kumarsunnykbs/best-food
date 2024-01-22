<?php
class MG_sms_provider extends CDbMigration
{
	public function up()
	{
		//Yii::app()->db->createCommand("Truncate table {{sms_provider}}")->query();   		
		
		/*General Template*/
		$data = array();
		$data[]=array(
		  'provider_id'=>'twilio',
		  'provider_name'=>"Twilio"		  
		);
		$data[]=array(
		  'provider_id'=>'nexmo',
		  'provider_name'=>"Nexmo"		  
		);
		$data[]=array(
		  'provider_id'=>'clickatell',
		  'provider_name'=>"Clickatell"		  
		);
		$data[]=array(
		  'provider_id'=>'bhashsms',
		  'provider_name'=>"BHASHSMS"		  
		);
		$data[]=array(
		  'provider_id'=>'smsglobal',
		  'provider_name'=>"SMS Global"		  
		);
		$data[]=array(
		  'provider_id'=>'swift',
		  'provider_name'=>"Swift SMS"		  
		);
		$data[]=array(
		  'provider_id'=>'solutionsinfini',
		  'provider_name'=>"Solutionsinfini"		  
		);
		$data[]=array(
		  'provider_id'=>'plivo',
		  'provider_name'=>"plivo"		  
		);
		$data[]=array(
		  'provider_id'=>'spothit',
		  'provider_name'=>"Spot-hit"		  
		);
				
		/*$builder=Yii::app()->db->schema->commandBuilder;
		$command=$builder->createMultipleInsertCommand('{{sms_provider}}',$data);
		$command->execute();*/
				
	}
}
/*end clas*/