<?php
Yii::import('zii.widgets.CMenu', true);

class WidgetMerchantSettings extends CMenu
{		 	
	 public function init()
	 {		 		 	  
	 	  	 	  
	 	  $menu = array();
	 	  $menu[]=array(
	 	    'label'=>'<i class="zmdi zmdi-settings"></i>'.t("Basic Settings"),
	 	    'url'=>array("/merchant/settings")
	 	  );	 	  	 	 	 	
	 	  
	 	  $menu[]=array(
	 	    'label'=>'<i class="zmdi zmdi-time"></i>'.t("Store Hours"),
	 	    'url'=>array("/merchant/store_hours"),
	 	    'itemOptions'=>array(
	 	      'class'=>"store-hours"
	 	    )
	 	  );	 	  	 	 	 	
	 	  
	 	  $menu[]=array(
	 	    'label'=>'<i class="zmdi zmdi-balance"></i>'.t("Taxes"),
	 	    'url'=>array("/merchant/taxes"),
	 	    'itemOptions'=>array(
	 	      'class'=>"taxes"
	 	    )
	 	  );
	 	  
	 	  $menu[]=array(
	 	    'label'=>'<i class="zmdi zmdi-facebook"></i>'.t("Social Settings"),
	 	    'url'=>array("/merchant/social_settings"),
	 	    'itemOptions'=>array(
	 	      'class'=>"social-settings"
	 	    )
	 	  );	 	  	 	 	 	
	 	  
	 	  $menu[]=array(
	 	    'label'=>'<i class="zmdi zmdi-notifications-active"></i>'.t("Notification Settings"),
	 	    'url'=>array("/merchant/notification_settings"),
	 	    'itemOptions'=>array(
	 	      'class'=>"notification-settings"
	 	    )
	 	  );	 	  	 	 	 	
	 	  
	 	  $menu[]=array(
	 	    'label'=>'<i class="zmdi zmdi-settings-square"></i>'.t("Orders Settings"),
	 	    'url'=>array("/merchant/orders_settings"),
	 	    'itemOptions'=>array(
	 	      'class'=>"orders-settings"
	 	    )
	 	  );	 	  	 	 	 	
	 	  	 	
	 	  $this->items = $menu;	 	  
	 	  	 	  
	 	  $this->encodeLabel = false;
	 	  $this->activeCssClass = "active";
	 	  $this->activateParents = true;
	 	  $this->htmlOptions = array(
	 	    'class'=>'merchant-settings'
	 	  ); 
	 	  $this->submenuHtmlOptions = array(
	 	    'class'=>'user-sub-menu'
	 	  ); 
	 	  
	 	  parent::init();
	 }
	 
}
/*end class*/