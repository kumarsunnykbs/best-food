<?php
class MG_payment extends CDbMigration
{
	public function up()
	{
				
		if(!Yii::app()->db->schema->getTable("{{payment_gateway}}")){
			$this->createTable(
		      "{{payment_gateway}}",
		      array(
		        'payment_id'=>'pk',		        
		        'payment_name'=>"varchar(255) NOT NULL DEFAULT ''",		        
		        'payment_code'=>"varchar(255) NOT NULL DEFAULT ''",		        
		        'logo_type'=>"varchar(50) NOT NULL DEFAULT 'icon'",
		        'logo_class'=>"varchar(100) NOT NULL DEFAULT ''",
		        'logo_image'=>"varchar(255) NOT NULL DEFAULT ''",
	            'status'=>"varchar(100) NOT NULL DEFAULT 'active'",
	            'sequence'=>"integer(11) NOT NULL DEFAULT '0'",	   
	            'attr_json'=>"text",
	            'attr1'=>"varchar(255) NOT NULL DEFAULT ''",
	            'attr2'=>"varchar(255) NOT NULL DEFAULT ''",
	            'attr3'=>"varchar(255) NOT NULL DEFAULT ''",
	            'attr4'=>"varchar(255) NOT NULL DEFAULT ''",
	            'date_created'=>"timestamp NULL DEFAULT NULL",
	            'date_modified'=>"timestamp NULL DEFAULT NULL",
	            'ip_address'=>"varchar(50) NOT NULL DEFAULT ''"
		      ),
			'ENGINE=InnoDB DEFAULT CHARSET=utf8');	
		}
		
		if(!Yii::app()->db->createCommand("SELECT payment_name FROM {{payment_gateway}}")->queryRow()){
			
			//Yii::app()->db->createCommand("TRUNCATE TABLE {{payment_gateway}}")->query();	
					
			$builder = Yii::app()->db->schema->commandBuilder;
			$command = $builder->createMultipleInsertCommand("{{payment_gateway}}", array(
			    array('payment_name'=>'Cash On delivery', 'payment_code'=>'cod','sequence'=>1,
			    'logo_class'=>'zmdi zmdi-money-box','logo_type'=>'icon','logo_image'=>''),
			    
			    array('payment_name'=>'Credit/Debit Card', 'payment_code'=>'ocr','sequence'=>2,
			    'logo_class'=>'zmdi zmdi-card','logo_type'=>'icon','logo_image'=>''),
			    
			    array('payment_name'=>'Offline Bank Deposit', 'payment_code'=>'obd','sequence'=>3,
			    'logo_class'=>'','logo_type'=>'icon','logo_image'=>''),
			    		    
			    array('payment_name'=>'Pay By Card', 'payment_code'=>'pyr','sequence'=>4,
			    'logo_class'=>'','logo_type'=>'icon','logo_image'=>''),
			        
			    array('payment_name'=>'Paypal', 'payment_code'=>'paypal','sequence'=>5,
			    'logo_class'=>'zmdi zmdi-paypal','logo_type'=>'icon','logo_image'=>''),
			    
			    array('payment_name'=>'Stripe', 'payment_code'=>'stp','sequence'=>6,
			    'logo_class'=>'','logo_type'=>'image','logo_image'=>'stripe-1.svg'),
	
			    	    
			    array('payment_name'=>'Mercadopago', 'payment_code'=>'mercadopago','sequence'=>7,
			    'logo_class'=>'','logo_type'=>'icon','logo_image'=>''),
			    
			    array('payment_name'=>'Payumoney', 'payment_code'=>'payu','sequence'=>8,
			    'logo_class'=>'','logo_type'=>'icon','logo_image'=>''),
			    
			    array('payment_name'=>'Authorize.net', 'payment_code'=>'atz','sequence'=>8,
			    'logo_class'=>'','logo_type'=>'icon','logo_image'=>''),
			    
			    array('payment_name'=>'Braintree', 'payment_code'=>'btr','sequence'=>9,
			    'logo_class'=>'','logo_type'=>'icon','logo_image'=>''),
			    
			    array('payment_name'=>'Razorpay', 'payment_code'=>'rzr','sequence'=>10,
			    'logo_class'=>'','logo_type'=>'icon','logo_image'=>''),
			    
			    array('payment_name'=>'Voguepay', 'payment_code'=>'vog','sequence'=>11,
			    'logo_class'=>'','logo_type'=>'icon','logo_image'=>''),
			    
			));
		    $command->execute();
		}
				
	}
}
/*end clas*/