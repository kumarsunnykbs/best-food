<?php
class MG_templates extends CDbMigration
{
	public function up()
	{
		/*Yii::app()->db->createCommand("Truncate table {{templates}}")->query();   
		Yii::app()->db->createCommand("Truncate table {{templates_translation}}")->query();   */
		
		/*General Template*/
		$data = array();
		$data[]=array(
		  'template_key'=>'contact_us',
		  'template_name'=>"Contact us",
		  'tags'=>'name,email,country,phone,message'		  
		);
		$data[]=array(
		  'template_key'=>'customer_welcome_email',
		  'template_name'=>"Customer Welcome Email",
		  'tags'=>'firstname,lastname'		  
		);
		$data[]=array(
		  'template_key'=>'customer_verification',
		  'template_name'=>"Customer Verification",
		  'tags'=>'firstname,lastname,code,verification_link'		  
		);
		$data[]=array(
		  'template_key'=>'customer_forgot_password',
		  'template_name'=>"Customer Forgot Password",
		  'tags'=>'firstname,lastname,code,change_password_link'		  
		);
		$data[]=array(
		  'template_key'=>'merchant_welcome_signup',
		  'template_name'=>"Merchant Welcome Signup",
		  'tags'=>'restaurant_name,login_url'		  
		);
		$data[]=array(
		  'template_key'=>'merchant_verification_code',
		  'template_name'=>"Merchant Verification",
		  'tags'=>'restaurant_name,code,verification_link'		  
		);
		$data[]=array(
		  'template_key'=>'merchant_forgot_password',
		  'template_name'=>"Merchant Forgot Password",
		  'tags'=>'restaurant_name,code,change_password_link'		  	  
		);
		$data[]=array(
		  'template_key'=>'merchant_new_signup',
		  'template_name'=>"Merchant New Signup",
		  'tags'=>'restaurant_name,package_name,merchant_type'		  	  
		);
		$data[]=array(
		  'template_key'=>'admin_forgot_password',
		  'template_name'=>"Admin Forgot Password",
		  'tags'=>'username,code,change_password_link'		  	  
		);		
		$data[]=array(
		  'template_key'=>'merchant_near_expiration',
		  'template_name'=>"Merchant Expiration",
		  'tags'=>'restaurant_name,expiry_date'
		);
		$data[]=array(
		  'template_key'=>'merchant_change_status',
		  'template_name'=>"Merchant Change Status",
		  'tags'=>'restaurant_name,status'
		);
		$data[]=array(
		  'template_key'=>'merchant_invoice',
		  'template_name'=>"Merchant Invoice",
		  'tags'=>'restaurant_name,invoice_number,period,terms,invoice_link'
		);
		
		/*Order Template*/
				
		$data[]=array(
		  'template_key'=>'receipt_template',
		  'template_name'=>"Receipt To Customer",
		  'tags'=>'order_id,customer_name,restaurant_name,total_amount,details'
		);
		$data[]=array(
		  'template_key'=>'receipt_send_to_merchant',
		  'template_name'=>"Receipt To Merchant",
		  'tags'=>'order_id,customer_name,restaurant_name,total_amount,details,accept_link,decline_link'
		);
		$data[]=array(
		  'template_key'=>'receipt_send_to_admin',
		  'template_name'=>"Receipt To Admin",
		  'tags'=>'order_id,customer_name,restaurant_name,total_amount,details'
		);
		$data[]=array(
		  'template_key'=>'order_idle_to_admin',
		  'template_name'=>"Order Idle",
		  'tags'=>'order_id,customer_name,restaurant_name,idle_time'
		);
		$data[]=array(
		  'template_key'=>'order_request_cancel_to_merchant',
		  'template_name'=>"Order Cancel Request (Merchant)",
		  'tags'=>'order_id,customer_name,restaurant_name,total_amount,details'
		);
		$data[]=array(
		  'template_key'=>'order_request_cancel_to_customer',
		  'template_name'=>"Order Cancel Request (Customer)",
		  'tags'=>'order_id,customer_name,restaurant_name,status'
		);
		$data[]=array(
		  'template_key'=>'order_request_cancel_to_admin',
		  'template_name'=>"Order Cancel Request (Admin)",
		  'tags'=>'order_id,customer_name,restaurant_name,status'
		);
		$data[]=array(
		  'template_key'=>'food_is_done_to_driver',
		  'template_name'=>"Food is done (Driver)",
		  'tags'=>'order_id,customer_name,restaurant_name,status,notes,delivery_date,delivery_address,driver_name'
		);
		$data[]=array(
		  'template_key'=>'auto_order_update',
		  'template_name'=>"Auto Order Update",
		  'tags'=>'order_id,customer_name,restaurant_name,status'
		);
		$data[]=array(
		  'template_key'=>'driver_update_to_merchant',
		  'template_name'=>"Driver Update To Merchant",
		  'tags'=>'order_id,customer_name,restaurant_name,status'
		);
		
		/*Booking Template*/
		$data[]=array(
		  'template_key'=>'customer_booked',
		  'template_name'=>"Customer Booked",
		  'tags'=>'restaurant_name,number_guest,date_booking,time,email,mobile,instruction,booking_id'
		);
		$data[]=array(
		  'template_key'=>'booked_notify_admin',
		  'template_name'=>"Booked Notify (Admin)",
		  'tags'=>'restaurant_name,number_guest,date_booking,time,email,mobile,instruction,booking_id'
		);
		$data[]=array(
		  'template_key'=>'booked_notify_merchant',
		  'template_name'=>"Booked Notify (Merchant)",
		  'tags'=>'restaurant_name,number_guest,date_booking,time,email,mobile,instruction,booking_id'
		);
		$data[]=array(
		  'template_key'=>'booking_update_status',
		  'template_name'=>"Booked Notify (Merchant)",
		  'tags'=>'restaurant_name,number_guest,date_booking,time,email,mobile,instruction,booking_id,merchant_remarks'
		);
		$data[]=array(
		  'template_key'=>'booking_request_cancel',
		  'template_name'=>"Booked Request Cancellation",
		  'tags'=>'restaurant_name,number_guest,date_booking,time,email,mobile,instruction,booking_id,merchant_remarks'
		);
		
		/*Payment Template*/
		$data[]=array(
		  'template_key'=>'offline_bank_deposit_signup_merchant',
		  'template_name'=>"Offline Bank Deposit Signup Merchant",
		  'tags'=>'restaurant_name,amount,verify_payment_link'
		);
		$data[]=array(
		  'template_key'=>'offline_bank_deposit_purchase',
		  'template_name'=>"Offline Bank Deposit Purchase",
		  'tags'=>'customer_name,amount,verify_payment_link'
		);
		$data[]=array(
		  'template_key'=>'offline_new_bank_deposit',
		  'template_name'=>"Offline New Bank Deposit",
		  'tags'=>'restaurant_name,customer_name,amount'
		);
		
		/*Order Status Template*/
		$order_status = AttributesTools::StatusList();
		if(is_array($order_status) && count($order_status)>=1){
			foreach ($order_status as $val) {
				$data[]=array(
				  'template_key'=>"order_status_$val",
				  'template_name'=>$val,
				  'tags'=>'order_id,order_status,restaurant_name,customer_name,remarks'
				);				
			}
		}
		
		$data = array_reverse($data);		
		
		/*$builder=Yii::app()->db->schema->commandBuilder;
		$command=$builder->createMultipleInsertCommand('{{templates}}',$data);
		$command->execute();
		
		Yii::app()->db->createCommand("UPDATE
		{{templates}}
		SET enabled_email=1,enabled_sms=1,enabled_push=1
		")->query();   */
		
	}
}
/*end clas*/