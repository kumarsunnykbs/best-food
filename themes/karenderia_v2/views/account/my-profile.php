<div class="row mb-4">
  <div class="col d-flex justify-content-start align-items-center"> 
   <h6 class="m-0 p-2 pd-5 with-icon-account with-icon"><?php echo t("Profile")?></h6>
  </div> <!--col-->     
</div> <!--row-->


<div class="card">
  <div class="card-body">
  
  <div class="row">
    <div class="col-md-4">
    
    <div class="preview-image mb-2">
     <div class="col-lg-7">
      
      <div id="vue-profile-photo" class="position-relative update-photo"> 
      
            
	       <div class="skeleton-placeholder rounded-circle img-120"></div>
	       <img ref="refavatar" class="lazy img-fluid mb-2 rounded-circle img-120" data-src="<?php echo $avatar;?>"/>
	       
	       <div class="layer-black rounded-circle img-120"></div>
	       <div class="d-flex align-items-center rounded-circle img-120">	         
	         <a @click="showUpload" class="handle w-100 text-center bold">
	         <i class="zmdi zmdi-cloud-upload"></i> <?php echo t("Update")?>
	         </a>	         
	       </div>	    
	       
	       <components-profile-photo
	       ref="profile_photo"
	       @on-save="SavePhoto"
	       :label="{
	          crop_photo: '<?php echo CJavaScript::quote(t("Adjust photo"))?>',
	          save_photo: '<?php echo CJavaScript::quote(t("Save Photo"))?>',
	          add_photo: '<?php echo CJavaScript::quote(t("Add Photos"))?>',
	          drop_files_here: '<?php echo CJavaScript::quote(t("Drop files here to upload"))?>', 
	          max_file_exceeded : '<?php echo CJavaScript::quote(t("Maximum files exceeded"))?>',  
			  dictDefaultMessage : '<?php echo CJavaScript::quote(t("Drop files here to upload"))?>',  
			  dictFallbackMessage : '<?php echo CJavaScript::quote(t("Your browser does not support drag'n'drop file uploads."))?>',  dictFallbackText : '<?php echo CJavaScript::quote(t("Please use the fallback form below to upload your files like in the olden days."))?>',  
			  dictFileTooBig: '<?php echo CJavaScript::quote(t("File is too big ({{filesize}}MiB). Max filesize: {{maxFilesize}}MiB.w"))?>',  
			  dictInvalidFileType: '<?php echo CJavaScript::quote(t("You can't upload files of this type."))?>',  
			  dictResponseError: '<?php echo CJavaScript::quote(t("Server responded with {{statusCode}} code."))?>',  
			  dictCancelUpload: '<?php echo CJavaScript::quote(t("Cancel upload"))?>',  
			  dictCancelUploadConfirmation: '<?php echo CJavaScript::quote(t("Are you sure you want to cancel this upload?"))?>',  
			  dictRemoveFile: '<?php echo CJavaScript::quote(t("Remove file"))?>',  
		      dictMaxFilesExceeded: '<?php echo CJavaScript::quote(t("You can not upload any more files."))?>',   
	       }"
	       >
	       </components-profile-photo>
	          
	  </div> <!--update-photo-->
      
     </div>     
    </div>
     
    <div class="attributes-menu-wrap">
    <?php $this->widget('application.components.WidgetUserProfile',array());?>
    </div>
    
    </div> <!--col-->
    <div class="col-md-8">
    
    
	<div class="card">
	  <div class="card-body" id="vue-update-profile" v-cloak>
	
	  <form 
       @submit.prevent="checkForm" 
       method="POST" >
	  
	   <h5 class="mb-4">Basic details</h5>
	    
	   <div class="row">
	     <div class="col">	     

	      <div class="form-label-group">    
           <input class="form-control form-control-text" placeholder="" v-model="first_name" id="first_name" type="text"  >   
           <label for="first_name" class="required">First name</label> 
          </div>    
	     
	     </div> <!--col-->
	     <div class="col">	     
	     
	     <div class="form-label-group">    
           <input class="form-control form-control-text" placeholder="" v-model="last_name" id="last_name" type="text"  >   
           <label for="last_name" class="required">Last name</label> 
          </div>    
	     
	     </div> <!--col-->
	   </div> <!--row-->
	   
	    <div class="row">
	     <div class="col">	     
	     <div class="form-label-group">    
           <input  class="form-control form-control-text" placeholder=""
        v-model="email_address" id="email_address" type="text" >              
           <label for="email_address">Email address</label> 
          </div>   	     
	     </div> <!--col-->
	     <div class="col">	     
	     
	      <!--COMPONENTS-->
        <component-phone
	    default_country="<?php echo CJavaScript::quote($phone_default_country);?>"    
	    :only_countries='<?php echo json_encode($phone_country_list)?>'	
	    v-model:mobile_number="mobile_number"
	    v-model:mobile_prefix="mobile_prefix"
	    >
	    </component-phone>
	    <!--END COMPONENTS-->	 
	    
	    
	    <component-change-phoneverify
         ref="cphoneverify"
         @after-submit="saveProfile"
          :label="{
		    steps: '<?php echo t("2-Step Verification")?>',
		    for_security: '<?php echo CJavaScript::quote(t("For your security, we want to make sure it's really you."))?>', 
		    enter_digit: '<?php echo CJavaScript::quote(t("Enter 6-digit code"))?>',  			    
		    resend_code: '<?php echo CJavaScript::quote(t("Resend Code"))?>',
		    resend_code_in: '<?php echo CJavaScript::quote(t("Resend Code in"))?>',
		    code: '<?php echo CJavaScript::quote(t("Code"))?>',
		    submit: '<?php echo CJavaScript::quote(t("Submit"))?>',			    
		 }"
         >   
        </component-change-phoneverify>
	    
	     </div> <!--col-->
	   </div> <!--row-->
	  	   	
	   <div v-cloak v-if="error.length>0" class="alert alert-warning mb-2" role="alert">
		    <p v-cloak v-for="err in error" class="m-0">{{err}}</p>	    
	   </div>   
	   
	   <div  v-cloak v-if="success" class="alert alert-success" role="alert">
	    <p class="m-0">{{success}}</p>	    
	   </div>
	   
	   <button class="mt-3 btn btn-green w-100" :class="{ loading: is_loading }" :disabled="!DataValid"  >
          <span class="label">Submit</span>
          <div class="m-auto circle-loader" data-loader="circle-side"></div>
       </button>
       
      </form> 
	
	  </div> <!--body-->
	</div> <!--card-->
    
    </div> <!--col-->
  </div> <!--row-->
  
  </div> <!--card-body-->
</div> <!--card-->



<DIV id="vue-bootbox">
<component-bootbox
ref="bootbox"
@callback="Callback"
size='small'
:label="{
  confirm: '<?php echo CJavaScript::quote(t("Confirm account deletion"))?>',
  are_you_sure: '<?php echo CJavaScript::quote(t("Are you sure you want to delete your account and customer data from [site_title]?[new_line] This action is permanent and cannot be undone.",array(
      '[site_title]'=> Yii::app()->params['settings']['website_title'],
      '[new_line]'=>"<br/><br/>"
   )))?>',
  yes: '<?php echo CJavaScript::quote(t("Delete Account"))?>',
  cancel: '<?php echo CJavaScript::quote(t("Don't Delete"))?>',  
  ok: '<?php echo CJavaScript::quote(t("Okay"))?>',  
}"
>
</component-bootbox>
</DIV>