
<!--register-section-->
<div class="register-section container-fluid mt-3">

<div class="container">

<div id="vue-merchant-signup" class="row">
  <div class="col">
    <h3>Become Restaurant partner</h3>
    <p class="text-grey font-weight-bold">Get a sales boost of up to 30% from takeaways</p>
    
    <form class="mb-5" 
    @submit.prevent="verifyForms" 
    method="POST"  v-cloak >
    
    <div class="form-label-group">    
     <input class="form-control form-control-text" placeholder="" v-model="restaurant_name" id="restaurant_name" type="text" >   
     <label for="restaurant_name" class="required">Store name</label> 
    </div> 
    
    
    <div class="auto-complete position-relative mb-3">
        
     <component-auto-complete
      v-model="address" 
      :modelValue="address"
      @update:modelValue="address = $event"
	  ref="auto_complete"	
	  @after-choose="afterChoose"  
	  :label="{		    
		 enter_address: '<?php echo CJavaScript::quote(t("Store address"))?>', 		    
	  }"	    
	  />
	  </component-auto-complete>   
	</div>
    
    <div class="form-label-group">    
     <input class="form-control form-control-text" placeholder="" v-model="contact_email" id="contact_email" type="text" >   
     <label for="contact_email" class="required">Email address</label> 
    </div>
         
   <component-phone
    default_country="<?php echo CJavaScript::quote($phone_default_country);?>"    
	:only_countries='<?php echo json_encode($phone_country_list)?>'	
    v-model:mobile_number="mobile_number"
    v-model:mobile_prefix="mobile_prefix"
   >
   </component-phone>
    
   
   <p class="m-0 mb-1">Choose your membership program</p>  
    
   <div v-for="item in membership_list" class="custom-control custom-radio mb-1">
	  <input type="radio" :id="item.type_id" :value="item.type_id" v-model="membership_type" class="custom-control-input">
	  <label class="custom-control-label" :for="item.type_id">{{item.description}}</label>
   </div>
                    
    <vue-recaptcha v-if="show_recaptcha" 
         sitekey="<?php echo CJavaScript::quote($captcha_site_key);?>"
		 size="normal" 
		 theme="light"		 
		 is_enabled="<?php echo CJavaScript::quote($capcha)?>"
		 :tabindex="0"
		 @verify="recaptchaVerified"
		 @expire="recaptchaExpired"
		 @fail="recaptchaFailed"
		 ref="vueRecaptcha">
    </vue-recaptcha>
        
    <div v-if="response.code==1" class="alert alert-success" role="alert">
     <p class="m-0">{{response.msg}}</p>	    
    </div>    
    <div v-else-if="response.code==2" class="alert alert-warning" role="alert">
      <p v-cloak v-for="err in response.msg" class="m-1">{{err}}</p>	    
    </div>       
    
    <?php if(!empty($terms)):?>
    <p class="m-0 mt-3">    
    <?php echo $terms;?>
    </p>
    <?php endif;?>
        
    <button class="btn btn-green w-100 mt-3"    
    :class="{ loading: loading }" 
    :disabled="checkForm"
    >
    <span v-if="loading==false">Submit</span>
	<div v-cloak v-if="loading==true" class="m-auto" data-loader="circle-side"></div>
    </button>
    
    </form>
    
  </div> <!--col-->
  <div class="col register-bg"></div> <!--col-->
</div> <!--row-->

</div> <!--container-->

</div> <!--register-section-->

<div class="grey-section m-0 partner-section">
<div class="container w-75">
   <h4 class="text-center mb-5 mt-3">Why partner with Us?</h4>
   
   <div class="row">
     <div class="col d-flex justify-content-start align-items-start">
        <div class="section rounded">
          <img class="contain" src="<?php echo Yii::app()->theme->baseUrl."/assets/images/increase-sales@2x.png"?>" />       
          <h5>Increase sales</h5>
          <p>Keep the kitchen busy</p>
          <p>Join a well-oiled marketing machine and watch the orders come in through your door and online.</p>
        </div> <!--section-->
     </div> <!--col-->
     
      <div class="col d-flex justify-content-start align-items-start">
        <div class="section rounded">
          <img class="contain" src="<?php echo Yii::app()->theme->baseUrl."/assets/images/more-customer@2x.png"?>" />       
          <h5>Reach more customers</h5>
          <p>Meet them and keep them</p>
          <p>Attract new local customers and keep them coming back for more.</p>
        </div> <!--section-->
     </div> <!--col-->
     
      <div class="col d-flex justify-content-start align-items-start">
        <div class="section rounded">
          <img class="contain" src="<?php echo Yii::app()->theme->baseUrl."/assets/images/service@2x.png"?>" />       
          <h5>Use our services</h5>
          <p>For businesses big and small</p>
          <p>Whatever your size we have tools, business support and savings to help grow your business.</p>
        </div> <!--section-->
     </div> <!--col-->
     
   </div> <!--row-->
   
</div> <!--container-->
</div> <!--grey-section-->


<div class="container-fluid m-0 p-0 full-width">
<div class="section-join-us section-join-us2 mt-0 mb-0">        
 <div class="d-flex align-items-start flex-column">
   <div class="mb-auto"></div>
   <div class="w-100 text-center">
     <h5 class="mb-4">Overtake competitors</h5>
     <h1 class="mb-4">Become a Multi Restaurant partner today.</h1>     
     <div class="btn-white-parent non-trasparent"><a href="#" class="btn btn-link w25">Join</a></div>
   </div>
   <div class="mt-auto border"></div>
 </div>
</div> <!--sections-->
</div>
