<?php
class WidgetSiteLogo extends CWidget 
{
	public $class_name;
	
	public function run() {		
		$this->render('site-logo');
	}
	
}
/*end class*/