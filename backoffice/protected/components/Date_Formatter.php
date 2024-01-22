<?php
class Date_Formatter
{
	
	public static function date($date='',$pattern='dd MMM yyyy')
	{	
	    /*if(isset(Yii::app()->params['settings']['website_date_format_new'])){
			if(!empty(Yii::app()->params['settings']['website_date_format_new'])){
				$pattern = Yii::app()->params['settings']['website_date_format_new'];				
			}
		}	*/
		return Yii::app()->dateFormatter->format($pattern, $date);
	}
	
	public static function dateTime($date='',$pattern='dd MMM yyyy h:mm a')
	{	
				
		/*if(isset(Yii::app()->params['settings']['website_date_format_new'])){
			if(!empty(Yii::app()->params['settings']['website_date_format_new'])){
				$pattern = Yii::app()->params['settings']['website_date_format_new'];
				$pattern.= " ".Yii::app()->params['settings']['website_time_format'];
			}
		}*/
		return Yii::app()->dateFormatter->format($pattern, $date);
	}
	
	public static function Time($time='',$pattern='h:mm a')
	{	
				
		/*if(isset(Yii::app()->params['settings']['website_date_format_new'])){
			if(!empty(Yii::app()->params['settings']['website_date_format_new'])){
				$pattern = Yii::app()->params['settings']['website_time_format'];				
			}
		}	*/
		return Yii::app()->dateFormatter->format($pattern, $time);
	}
	
	public static function TimeTo24($time='',$pattern='H:mm')
	{					
		return Yii::app()->dateFormatter->format($pattern, $time);
	}
	
}
/*end class*/