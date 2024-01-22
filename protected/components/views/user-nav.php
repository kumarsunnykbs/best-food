<ul id="vue-cart-preview" class="top-menu list-unstyled" v-cloak>
 <li class="d-inline notification-dropdown">
    
   <components-notification
     ref="notification"
     avatar="<?php echo Yii::app()->user->avatar?>"
     image_background="<?php echo websiteDomain().Yii::app()->theme->baseUrl."/assets/images/placeholder.png"?>"	
     ajax_url="<?php echo Yii::app()->createUrl("/api")?>" 		     
     view_url="<?php echo Yii::app()->createUrl("/account/notifications-list")?>" 
     :realtime="{
	   enabled : '<?php echo Yii::app()->params['realtime_settings']['enabled']==1?true:false ;?>',  
	   provider : '<?php echo CJavaScript::quote( Yii::app()->params['realtime_settings']['provider'] )?>',  			   
	   key : '<?php echo CJavaScript::quote( Yii::app()->params['realtime_settings']['key'] )?>',  			   
	   cluster : '<?php echo CJavaScript::quote( Yii::app()->params['realtime_settings']['cluster'] )?>', 
	   ably_apikey : '<?php echo CJavaScript::quote( Yii::app()->params['realtime_settings']['ably_apikey'] )?>', 
	   piesocket_api_key : '<?php echo CJavaScript::quote( Yii::app()->params['realtime_settings']['piesocket_api_key'] )?>', 
	   piesocket_websocket_api : '<?php echo CJavaScript::quote( Yii::app()->params['realtime_settings']['piesocket_websocket_api'] )?>', 
	   piesocket_clusterid : '<?php echo CJavaScript::quote( Yii::app()->params['realtime_settings']['piesocket_clusterid'] )?>', 
	   channel : '<?php echo CJavaScript::quote( Yii::app()->user->client_uuid  )?>',  			   
	   event : '<?php echo CJavaScript::quote( Yii::app()->params->realtime['notification_event'] )?>',  
	 }"  			 
     :label="{
	  title : '<?php echo CJavaScript::quote(t("Notification"))?>',  
	  clear : '<?php echo CJavaScript::quote(t("Clear all"))?>',  
	  view : '<?php echo CJavaScript::quote(t("View all"))?>',  			  
	  pushweb_start_failed : '<?php echo CJavaScript::quote(t("Could not push web notification"))?>',  			  
	  no_notification : '<?php echo CJavaScript::quote(t("No notifications yet"))?>',  	
	  no_notification_content : '<?php echo CJavaScript::quote(t("When you get notifications, they'll show up here"))?>',  	
	}"  			 
     >		      
     </components-notification>
    
 </li>
 <li class="d-inline">
 
 <div class="dropdown userprofile">	      
   
      <a class="btn btn-sm dropdown-toggle text-truncate shadow-none width-100" href="javascript:;"
      role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    <?php echo Yii::app()->input->xssClean(Yii::app()->user->first_name)?>
	  </a>
	  
	 <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
	    <a class="dropdown-item with-icon-account" href="<?php echo Yii::app()->createUrl("/account/profile");?>">
	    <?php echo t("Manage my account")?>
	    </a>
	    <a class="dropdown-item with-icon-orders" href="<?php echo Yii::app()->createUrl("/account/orders");?>">
	    <?php echo t("My orders")?>
	    </a>
	    <a class="dropdown-item with-icon-addresses" href="<?php echo Yii::app()->createUrl("/account/addresses");?>">
	    <?php echo t("Addresses")?>
	    </a>
	    <a class="dropdown-item with-icon-payments" href="<?php echo Yii::app()->createUrl("/account/payments");?>">
	    <?php echo t("Payments Options")?>
	    </a>
	    <a class="dropdown-item with-icon-savedstore" href="<?php echo Yii::app()->createUrl("/account/favourites");?>">
	    <?php echo t("Saved Stores")?>
	    </a>
	    <a class="dropdown-item with-icon-logout" href="<?php echo Yii::app()->createUrl("/account/logout")?>">
	    <?php echo t("Logout")?>
	    </a>			    
	  </div> 
	  
 </div> <!--dropdown-->
 
 
 </li>
 <li class="d-inline line-left">
 <a 
   href="<?php echo $cart_preview==true?'javascript:;':'#vue-cart'?>"
   class="<?php echo $cart_preview==true?'ssm-toggle-nav':''?>"
   >
   <?php echo t("Cart")?>
 </a>
 </li>
 <li class="d-inline">
 <a 
   href="<?php echo $cart_preview==true?'javascript:;':'#vue-cart'?>"
   class="cart-handle <?php echo $cart_preview==true?'ssm-toggle-nav':''?>">
    <img src="<?php echo Yii::app()->theme->baseUrl."/assets/images/shopping-bag.svg"?>" />
    <span class="badge small badge-dark rounded-pill">{{items_count}}</span>
 </a>
 </li>
 
<?php Yii::app()->controller->renderPartial("//components/cart-preview",array(
 'cart_preview'=>$cart_preview
))?>
 
</ul>