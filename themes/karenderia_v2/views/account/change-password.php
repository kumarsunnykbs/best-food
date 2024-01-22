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
      
      <div class="position-relative"> 
	       <div class="skeleton-placeholder rounded-circle img-120"></div>
	       <img class="lazy img-fluid mb-2 rounded-circle img-120" data-src="<?php echo $avatar;?>"/>
	  </div>
      
     </div>     
    </div>
     
    <div class="attributes-menu-wrap">
    <?php $this->widget('application.components.WidgetUserProfile',array());?>
    </div>
    
    </div> <!--col-->
    <div class="col-md-8">
    
    
	<div class="card">
	  <div class="card-body" id="vue-update-password" v-cloak>
	
	   <form 
       @submit.prevent="updatePassword" 
       method="POST" >
	  
	   
	   <div class="form-label-group">    
        <input class="form-control form-control-text" placeholder="" v-model="old_password" id="old_password" type="text"  >   
        <label for="old_password" class="required">Old password</label> 
       </div>    
	   
       <div class="form-label-group">    
        <input class="form-control form-control-text" placeholder="" v-model="new_password" id="new_password" type="text"  >   
        <label for="new_password" class="required">New password</label> 
       </div>   
       
       <div class="form-label-group">    
        <input class="form-control form-control-text" placeholder="" v-model="confirm_password" 
       id="confirm_password" type="text"  >   
        <label for="confirm_password" class="required">Confirm password</label> 
       </div>   
       
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