<!DOCTYPE html>
<html lang="<?php echo Yii::app()->language;?>">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="robots" content="noindex, nofollow" />
<meta name="<?php echo Yii::app()->request->csrfTokenName?>" content="<?php echo Yii::app()->request->csrfToken?>" />    
<link rel="apple-touch-icon" sizes="76x76" href="<?php echo Yii::app()->theme->baseUrl?>/assets/icons/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="<?php echo Yii::app()->theme->baseUrl?>/assets/icons/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="<?php echo Yii::app()->theme->baseUrl?>/assets/icons/favicon-16x16.png">
<link rel="manifest" href="<?php echo Yii::app()->theme->baseUrl?>/assets/icons/site.webmanifest">
<link rel="mask-icon" href="<?php echo Yii::app()->theme->baseUrl?>/assets/icons/safari-pinned-tab.svg" color="#5bbad5">
<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>
<body class="<?php echo $this->getBodyClasses(); ?>">

<div class="container-fluid m-0 p-0">
 
 <div class="sidebar-panel nice-scroll">
	 <div class="sidebar-wrap">
	 
	  <div class="sidebar-logo">
	   <a href="<?php echo Yii::app()->createUrl($this->ctr_name."/dashboard")?>">
	     <img class="img-200" src="<?php echo Yii::app()->theme->baseUrl?>/assets/images/logo@2x.png" />
	   </a>
	  </div>
	  
	  <div class="sidebar-profile">
	     <div class="row m-0">
	       <div class="col-md-3 m-0 p-0" >
	         <img class="rounded-circle" src="<?php echo MerchantTools::getProfilePhoto()?>" />
	       </div>
	       <div class="col-md-9 m-0 p-0" >
	         <h6><?php echo MerchantTools::displayAdminName();?></h6>
	         <p class="dim">	         
	         <?php 
	         if(!empty(Yii::app()->merchant->contact_number)){
	         	echo t("T.")." ".Yii::app()->merchant->contact_number;
	         }
	         if(!empty(Yii::app()->merchant->email_address)){
	         	echo '<br/>'.t("E.")." ".Yii::app()->merchant->email_address;
	         }	        	        
	         ?>
	         </p>
	       </div>
	     </div> <!--row-->
	  </div> 
	  <!--sidebar-profile-->
	  
	  <div id="vue-siderbar-menu" class="siderbar-menu">	  
	   <?php 
	   $this->widget('application.components.WidgetMenu',array(
	     'menu_type'=>"merchant"
	   ));
	   ?>
	  </div> <!--siderbar-menu-->
	   
	 </div> <!--sidebar-wrap-->
 </div> <!--sidebar-panel-->
 
 <DIV id="vue-top-nav" class="top-main-wrapper">
 <div class="top-container headroom">
 
   <!--desktop-top-menu-->
    <div id="desktop-top-menu" class="row m-0">
        <div class="col-md-6 " >
	    
        <div class="d-flex  align-items-center flex-row">
               
         <components-merchant-status
		  ref="merchant_status"
		  ajax_url="<?php echo Yii::app()->createUrl("/apibackend")?>" 
		 tpl="2"		  
		 :label="{    
		   current_status : '<?php echo CJavaScript::quote(("Current status"))?>',   
		   trial_ended : '<?php echo CJavaScript::quote(("Trial has ended"))?>',		  
		 }"   
		  >
		  </components-merchant-status>
         
		 <div class="p-2 align-self-center">
         
		 <components-pause-order
	      ref="pause_order"
	      ajax_url="<?php echo Yii::app()->createUrl("/apibackend")?>"
	      @after-clickpause="afterClickpause"
	     />
	     </components-pause-order>	     
		 
         </div>
         <!--p-2-->
		  
         <div class="p-2 align-self-center">         
          <a class="btn btn-sm" href="<?php echo CMedia::homeUrl()."/".Yii::app()->merchant->restaurant_slug?>" target="_blank" title="<?php echo t("Preview store")?>"><i class="zmdi zmdi-desktop-mac"></i>
		  </a>
         </div>
         <!--p-2-->
               
        
        </div>
        <!--flex-->
        
	    </div> <!--col-->
	    <div class="col-md-6" >
	    
	      <div class="top-menu-nav float-right">
	      
	      <div class="d-flex flex-row">
	       <div class="p-2">     
	         <img class="img-40 rounded-circle" src="<?php echo MerchantTools::getProfilePhoto()?>" />	       
	       </div>		   
	       <div class="p-2 mr-4">

	           <div class="dropdown userprofile">	      
				  <a class="btn btn-sm dropdown-toggle text-truncate" href="#" 
		          role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    <?php echo MerchantTools::displayAdminName();?>
				  </a>
				
				  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
				    <a class="dropdown-item" href="<?php echo Yii::app()->createUrl($this->ctr_name."/profile");?>">Profile</a>
				    <?php if(Yii::app()->merchant->merchant_type==1):?>
				    <a class="dropdown-item" href="<?php echo Yii::app()->createUrl('/plan/manage')?>">Manage Plan</a>
				    <?php endif;?>
				    <a class="dropdown-item" href="<?php echo Yii::app()->createUrl($this->ctr_name."/logout")?>">
				    Logout
				    </a>			    
				  </div>
				</div>	
	            
			  <div class="line"></div>  
				
	       </div>		   
	       	       
		   
		   <div id="vue-notificationsx" class="p-2 mr-4">		 		     
		     <components-notification
		     ref="notification"
		     ajax_url="<?php echo Yii::app()->createUrl("/apibackend")?>" 		     
		     view_url="<?php echo Yii::app()->createUrl("/merchant/all_notification")?>" 
		     :realtime="{
			   enabled : '<?php echo Yii::app()->params['realtime_settings']['enabled']==1?true:false ;?>',  
			   provider : '<?php echo CJavaScript::quote( Yii::app()->params['realtime_settings']['provider'] )?>',  			   
			   key : '<?php echo CJavaScript::quote( Yii::app()->params['realtime_settings']['key'] )?>',  			   
			   cluster : '<?php echo CJavaScript::quote( Yii::app()->params['realtime_settings']['cluster'] )?>', 
			   ably_apikey : '<?php echo CJavaScript::quote( Yii::app()->params['realtime_settings']['ably_apikey'] )?>', 
			   piesocket_api_key : '<?php echo CJavaScript::quote( Yii::app()->params['realtime_settings']['piesocket_api_key'] )?>', 
			   piesocket_websocket_api : '<?php echo CJavaScript::quote( Yii::app()->params['realtime_settings']['piesocket_websocket_api'] )?>', 
			   piesocket_clusterid : '<?php echo CJavaScript::quote( Yii::app()->params['realtime_settings']['piesocket_clusterid'] )?>', 
			   channel : '<?php echo CJavaScript::quote( Yii::app()->merchant->merchant_uuid )?>',  			   
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
		   </div> <!--p-2-->		
		   
		  </div> <!--flex-->
	      
	      </div><!--top-menu-nav-->	      
	      
	    </div>
    </div> <!--row desktop-top-menu-->
    
    <div id="mobile-top-menu" class="row m-0"> <!--mobile-top-menu-->
     <div class="col-md-12"  >
        <div class="d-flex flex-row justify-content-end">
        
         <div class="p-3 align-self-center">     
	         
	            <div class="dropdown userprofile">	      
				  <a class="btn btn-sm dropdown-toggle text-truncate" href="javascript:;" 
		          role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    <img class="img-40 rounded-circle" src="<?php echo MerchantTools::getProfilePhoto()?>" />
				  </a>
				
				  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
				    <a class="dropdown-item" href="<?php echo Yii::app()->createUrl($this->ctr_name."/profile");?>">Profile</a>
				    <a class="dropdown-item" href="<?php echo Yii::app()->createUrl($this->ctr_name."/logout")?>">
				    Logout
				    </a>			    
				  </div>
				</div>	
	         
	     </div>	<!--p-3-->

        <div class="p-3 align-self-center">
         
           <div class="hamburger hamburger--3dx ssm-toggle-nav">
		    <div class="hamburger-box">
		      <div class="hamburger-inner"></div>
		    </div>
		    </div> 
         
         </div> <!--p2-->
        
        </div> <!--flex-row-->
     </div>
    </div> <!--mobile-top-menu-->
    
 </div> <!--top-container-->
  
<components-pause-modal
ref="pause_modal"
ajax_url="<?php echo Yii::app()->createUrl("/apibackend")?>"
@after-pause="afterPause"
/>
</components-pause-modal>

<components-resume-order-modal
ref="resume_order"
ajax_url="<?php echo Yii::app()->createUrl("/apibackend")?>"
@after-pause="afterPause"
/>
</components-resume-order-modal>

 </DIV> <!--top main wrapper-->
 
 <div class="main-container">
    <div class="main-container-wrap">
       <div class="container">
       <?php echo $content;?>
       </div> <!--container-->
    </div> <!--main-container-wrap-->
 </div><!-- main-container-->
 
<div class="ssm-overlay ssm-toggle-nav"></div>

 
</div><!--container-->

</body>
</html> 