<?php
Yii::import('zii.widgets.CMenu', true);

class WidgetMerchantInfoMenu extends CMenu
{		 
	 public $merchant_id;
	 	
	 public function init()
	 {		 		 	 	 	
	 	  $menu = array();	 
	 	  	 	 
	 	  $menu[]=array(
	 	    'label'=>'<i class="zmdi zmdi-store"></i>'.t("Merchant information"),
	 	    'url'=>array("/".Yii::app()->controller->id."/edit",'id'=>$this->merchant_id)
	 	  );
	 	  $menu[]=array(	 	    
	 	    'label'=>'<i class="zmdi zmdi-account-circle"></i>'.t("Login information"),
	 	    'url'=>array("/".Yii::app()->controller->id."/login",'id'=>$this->merchant_id)
	 	  );
	 	  
	 	  $menu[]=array(	 	    
	 	    'label'=>'<i class="zmdi zmdi-pin"></i>'.t("Address"),
	 	    'url'=>array("/".Yii::app()->controller->id."/address",'id'=>$this->merchant_id)
	 	  );
	 	  
	 	  $menu[]=array(	 	    
	 	    'label'=>'<i class="zmdi zmdi-pin-drop"></i>'.t("Zone"),
	 	    'url'=>array("/".Yii::app()->controller->id."/zone",'id'=>$this->merchant_id)
	 	  );
	 	  
	 	  $menu[]=array(	 	    
	 	    'label'=>'<i class="zmdi zmdi-cutlery"></i>'.t("Merchant Type"),
	 	    'url'=>array("/".Yii::app()->controller->id."/membership",'id'=>$this->merchant_id)
	 	  );
	 	  $menu[]=array(	 	    
	 	    'label'=>'<i class="zmdi zmdi-star-outline"></i>'.t("Featured"),
	 	    'url'=>array("/".Yii::app()->controller->id."/featured",'id'=>$this->merchant_id)
	 	  );
	 	  $menu[]=array(	 	    
	 	    'label'=>'<i class="zmdi zmdi-tv-list"></i>'.t("Payment history"),
	 	    'url'=>array("/".Yii::app()->controller->id."/payment_history",'id'=>$this->merchant_id)
	 	  );
	 	  $menu[]=array(	 	    
	 	    'label'=>'<i class="zmdi zmdi-money"></i>'.t("Payment settings"),
	 	    'url'=>array("/".Yii::app()->controller->id."/payment_settings",'id'=>$this->merchant_id)
	 	  );
	 	  
	 	  $menu[]=array(	 	    
	 	    'label'=>'<i class="zmdi zmdi-store"></i>'.t("Others"),
	 	    'url'=>array("/".Yii::app()->controller->id."/others",'id'=>$this->merchant_id)
	 	  );
	 	  /*$menu[]=array(	 	    
	 	    'label'=>'<i class="zmdi zmdi-lock-open"></i>'.t("Access"),
	 	    'url'=>array("/".Yii::app()->controller->id."/access",'id'=>$this->merchant_id)
	 	  );*/
	 	  
	 	  $this->items = $menu;	 	  
	 	  	 	  
	 	  $this->encodeLabel = false;
	 	  $this->activeCssClass = "active";
	 	  $this->activateParents = true;
	 	  $this->htmlOptions = array(
	 	    'class'=>'attributes-menu'
	 	  ); 
	 	  $this->submenuHtmlOptions = array(
	 	    'class'=>'attributes-sub-menu'
	 	  ); 
	 	  
	 	  parent::init();
	 }
	 
}
/*end class*/