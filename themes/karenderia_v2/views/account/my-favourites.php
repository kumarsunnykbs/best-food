<DIV id="vue-saved-store" v-cloak  >

<div class="card p-3 mb-3"  v-if="!is_loading" >
 <div class="rounded p-3 grey-bg" >
  <div class="row no-gutters align-items-center">
    <div class="col-md-2">
       <div class="header_icon _icons favourite d-flex align-items-center justify-content-center">         
       </div>
    </div>
    
    <div class="col-md-6">             
       <template  v-if="data.length>0">
         <h5><?php echo t("Saved Stores")?></h5>
         <p class="m-0"><?php echo t("Your collection of restaurant and foods")?></p>
       </template>
       <template v-else>
          <h5><?php echo t("You don't have any save stores here!")?></h5>
          <p class="m-0"><?php echo t("Let's change that!")?></p>
       </template>
    </div>
    
    <div class="col-md-4 text-center">
      <a class="btn btn-green" target="_self" href="<?php echo Yii::app()->createUrl("/store/restaurants")?>">
	     <?php echo t("Order now")?>
	  </a>
    </div>
    
  </div>
 </div>
</div> <!--card -->


<DIV v-if="is_loading">
  <div class="loading mt-5">      
    <div class="m-auto circle-loader" data-loader="circle-side"></div>
  </div>
</DIV>

<div class="row equal align-items-center position-relative">


<DIV v-if="reload_loading" class="overlay-loader">
  <div class="loading mt-5">      
    <div class="m-auto circle-loader" data-loader="circle-side"></div>
  </div>
</DIV>  

  <div class="col-lg-3 mb-3 col-md-6"  v-for="item in data" 
   :class="{ 'make-grey': item.saved_store==false  }" 
   >   
    <div class="card p-3 card-listing list-items" >  
    
        <div class="position-relative"> 
	       <div class="skeleton-placeholder"></div>
	       <a :href="item.merchant_url"><img class="rounded lazy" :data-src="item.url_logo"/></a>
	       <div v-if="item.saved_store==false" class="layer-grey"></div>
	     </div>
	     
	  <div class="row align-items-center mt-2" >
	      <div class="col text-truncate">
	       <h6 v-if="item.merchant_open_status=='0'" class="m-0">
	       {{item.next_opening}}
	       </h6> 
	       <a :href="item.merchant_url">
	         <h5 class="m-0 text-truncate">{{item.restaurant_name}}</h5>
	       </a>
	      </div>
	      <div class="col-md-auto text-right">
	           	      	     	      
	        <!--COMPONENTS-->
	        <component-save-store
	         :active="item.saved_store=='1'?true:false"
	         :merchant_id="item.merchant_id"
	         @after-save="afterSaveStore(item)"
	        />
	        </component-save-store>
	        <!--COMPONENTS-->
	        
	      </div>
	     </div> <!--flex-->
	     
	    
	     <div class="row align-items-center" >
	      <div class="col text-truncate">
       
	        <template  v-for="(cuisine,index) in item.cuisine_name"  >	        
	         <span class="a-12 mr-1">{{cuisine.cuisine_name}},</span>	      	         
	        </template>
	        
	      </div>
	      <div class="col-md-auto text-right">
	       <p class="m-0 bold">
	         <template v-if="estimation[item.merchant_id]">
	           <template v-if="services[item.merchant_id]">
	             <template v-for="(service_name,index_service) in services[item.merchant_id]"  >
	               <template v-if="index_service<=0">
	               
	                <template v-if=" estimation[item.merchant_id][service_name][item.charge_type] "> 
	                   {{ estimation[item.merchant_id][service_name][item.charge_type].estimation }} <?php echo t("min")?>
	                </template>
	                   
	               </template>
	             </template>
	           </template>
	         </template>
	       </p>
	      </div>
	    </div> <!--flex-->
	     
	     
	    <div class="row align-items-center">
	      <div class="col text-truncate">
	      <p class="m-0">
	      <b class="mr-1">{{item.ratings.rating}}</b> 
	      <i class="zmdi zmdi-star mr-1 text-grey"></i>
	        
	       <u v-if="item.ratings.review_count>0">{{item.ratings.review_count}}+ <?php echo t("ratings")?></u>
	       <u v-else>{{item.ratings.review_count}} <?php echo t("rating")?></u>
	       
	      </p>	      
	      </div>
	      
	      <div class="col-md-auto text-right">
	        <p class="m-0" v-if="item.free_delivery==='1'" ><?php echo t("Free delivery")?></p>
	      </div>
	    </div> <!--flex-->
    
    </div> <!--card-->
  </div> <!--col-->

</div> <!--row-->

</DIV>
<!--vue-saved-store-->

<?php $this->renderPartial("//components/vue-bootbox")?>