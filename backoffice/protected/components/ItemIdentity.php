<?php
require_once 'php-curl/vendor/autoload.php';
class ItemIdentity
{

	public static function initializeIdentity($object)
	{						
		$resp = self::instantiateIdentity();				
		if(!$resp){
			Yii::app()->getController()->redirect( Yii::app()->createUrl('login/error') );	
			return false;
		}
		return true;
	}
	
	public static function instantiateIdentity()
	{	
		return true;				
	}
	
}
/*end class*/