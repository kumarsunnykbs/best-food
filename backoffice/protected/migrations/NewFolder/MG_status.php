<?php
class MG_status extends CDbMigration
{
	public function up()
	{
		//Yii::app()->db->createCommand("Truncate table {{status_management}}")->query();   		
		
		/*CUSTOMER STATUS*/
		$data = array();				
		$data[]=array(
		  'group_name'=>'customer',
		  'status'=>"pending",
		  'title'=>"pending for approval",
		  'color_hex'=>"#ffd6c4"
		);
		$data[]=array(
		  'group_name'=>'customer',
		  'status'=>"active",
		  'title'=>"active",
		  'color_hex'=>"#ffd966"
		);		
		$data[]=array(
		  'group_name'=>'customer',
		  'status'=>"suspended",
		  'title'=>"suspended",
		  'color_hex'=>"#ea9895"
		);
		$data[]=array(
		  'group_name'=>'customer',
		  'status'=>"blocked",
		  'title'=>"blocked",
		  'color_hex'=>"#e8989b"
		);
		$data[]=array(
		  'group_name'=>'customer',
		  'status'=>"expired",
		  'title'=>"expired",
		  'color_hex'=>"#ea9895",
		  'font_color_hex'=>"#fff"
		);
		
		/*PAGE STATUS*/
		$data[]=array(
		  'group_name'=>'post',
		  'status'=>"publish",
		  'title'=>"Publish",
		  'color_hex'=>"#ffd966"
		);
		$data[]=array(
		  'group_name'=>'post',
		  'status'=>"pending",
		  'title'=>"Pending for review",
		  'color_hex'=>"#ffd6c4"
		);
		$data[]=array(
		  'group_name'=>'post',
		  'status'=>"draft",
		  'title'=>"Draft",
		  'color_hex'=>"",
		  'color_hex'=>"#e8989b"
		);
		
		/*BOOKING STATUS*/
		$data[]=array(
		  'group_name'=>'booking',
		  'status'=>"pending",
		  'title'=>"pending",
		  'color_hex'=>"",
		  'color_hex'=>"#ffd6c4"
		);
		$data[]=array(
		  'group_name'=>'booking',
		  'status'=>"approved",
		  'title'=>"approved",
		  'color_hex'=>"#d4ecdc"
		);
		$data[]=array(
		  'group_name'=>'booking',
		  'status'=>"denied",
		  'title'=>"denied",
		  'color_hex'=>"#e8989b"
		);
		$data[]=array(
		  'group_name'=>'booking',
		  'status'=>"request_cancel_booking",
		  'title'=>"request cancel booking",
		  'color_hex'=>"#d4ecdc"
		);
		$data[]=array(
		  'group_name'=>'booking',
		  'status'=>"cancel_booking_approved",
		  'title'=>"cancel booking approved",
		  'color_hex'=>"#efe5ee"
		);
		
		$data[]=array(
		  'group_name'=>'transaction',
		  'status'=>"process",
		  'title'=>"Process",
		  'color_hex'=>"#ffd966"
		);
		
		$data[]=array(
		  'group_name'=>'payment',
		  'status'=>"paid",
		  'title'=>"Paid",
		  'color_hex'=>"#ffd966"
		);
		$data[]=array(
		  'group_name'=>'payment',
		  'status'=>"pending",
		  'title'=>"Pending",
		  'color_hex'=>"#ffd6c4"
		);
				
		/*$builder=Yii::app()->db->schema->commandBuilder;
		$command=$builder->createMultipleInsertCommand('{{status_management}}',$data);
		$command->execute();*/
				
	}
}
/*end clas*/