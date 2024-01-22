<?php
class MG_order_status extends CDbMigration
{
	public function up()
	{
		//Yii::app()->db->createCommand("Truncate table {{order_status}}")->query();   		
		
		/*CUSTOMER STATUS*/
		/*$data = array();				
		$data=array(		  
		  array('description'=>"pending",'background_color_hex'=>"#ffd6c4","font_color_hex"=>"#212529"),
		  array('description'=>"cancelled",'background_color_hex'=>"#efe5ee","font_color_hex"=>"#212529"),
		  array('description'=>"delivered",'background_color_hex'=>"#fbd7af","font_color_hex"=>"#212529"),
		  array('description'=>"paid",'background_color_hex'=>"#3ecf8e","font_color_hex"=>"#fff"),
		  array('description'=>"accepted",'background_color_hex'=>"#d4ecdc","font_color_hex"=>"#212529"),
		  array('description'=>"decline",'background_color_hex'=>"#e8989b","font_color_hex"=>"#212529"),
		  array('description'=>"failed",'background_color_hex'=>"#e8989b","font_color_hex"=>"#212529"),		  
		  array('description'=>"acknowledged",'background_color_hex'=>"#b9d5f1","font_color_hex"=>"#212529"),
		  array('description'=>"started",'background_color_hex'=>"#d4ecdc","font_color_hex"=>"#212529"),
		  array('description'=>"inprogress",'background_color_hex'=>"#45adca","font_color_hex"=>"#212529"),
		  array('description'=>"successful",'background_color_hex'=>"#3ecf8e","font_color_hex"=>"#212529"),
		  array('description'=>"unassigned",'background_color_hex'=>"#efe5ee","font_color_hex"=>"#212529"),
		);		
	
		$builder=Yii::app()->db->schema->commandBuilder;
		$command=$builder->createMultipleInsertCommand('{{order_status}}',$data);
		$command->execute();*/
				
	}
}
/*end clas*/