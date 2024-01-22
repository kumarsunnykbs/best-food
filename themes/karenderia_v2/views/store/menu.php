<!--COMPONENTS NEW ORDER-->
<div id="components-modal-neworder">
<components-neworder 
	@new-order="onConfirm"
	@close-order="onClose"
	:title="title"
	:content="content"
	:is_loading="is_loading"
></components-neworder>
</div>

<?php $this->renderPartial("//components/vue-bootbox")?>

<div id="vue-merchant-details" class="container-fluid top-merchant-details">
	<div class="container">
	 <div class="row">
	   <div class="col-lg-3 col-md-3 mb-4 mb-lg-3 list-items">
	   
	     <div class="position-relative"> 
	       <div class="skeleton-placeholder"></div>
	       <img class="rounded lazy" data-src="<?php echo $data['url_logo'];?>"/>
	     </div>
	     
	   </div> <!--col-->
	   
	   <div class="col-lg-9 col-md-9 mb-4 mb-lg-3" >
	   
	    <div class="d-flex merchant-details" v-cloak >
	      <div class="align-self-center w-100" >	      
	       <div class="d-flex justify-content-start mb-2">
	        <div class="w-50 align-self-center "><h5><?php echo $data['restaurant_name']?></h5></div>
	        
	        <?php if(isset($data['cuisine'][0])):?>
	        <div class="w-25 align-self-center "><span class="badge badge-white"><?php echo $data['cuisine'][0]?></span></div>
	        <?php endif;?>
	        
	        <div class="w-25 align-self-center ">
	        <span class="badge badge-white rounded-pill">
	           <?php echo Price_Formatter::convertToRaw($data['ratings'],1)?>
	        </span>
	        </div>
	        <div class="w-25 align-self-center ">
	         	         
	         <template v-if="!is_loading"> 
	         <!--COMPONENTS-->	         
	        <component-save-store
	         :active="found"
	         :merchant_id="<?php echo intval($data['merchant_id'])?>"
	         @after-save="getSaveStore"
	        />
	        </component-save-store>
	        <!--COMPONENTS-->
	        </template>
	        
	        </div>
	       </div> <!--d-flex-->
	       
	       <div class="d-flex justify-content-start mb-3">
	       	        
	        <div class="w-25 align-self-center "><p class="m-0">$ - low cost restaurant</p></div>
	        
	        <div class="w-25 align-self-center ">
	           <p class="m-0">
	           <?php echo t("Based on")?> <a href="#section-review"><u><?php echo t("[review_count] reviews",array('[review_count]'=>$data['review_count']))?></u>
	           </a>
	           </p>
	        </div>
	        <div class="w-25 align-self-center">		        
	           <template v-if="!is_loading">	        
	           <p v-if="!found" class="m-0"><?php echo t("Save store")?></p>
	           <p v-else class="m-0"><?php echo t("Saved")?></p>
	           </template>
	        </div>
	       </div> <!--d-flex-->
	       
	       
	       <?php if (is_string($data['description']) && strlen($data['description']) > 0):?>
	       <div class="readmore">
	       <div class="collapse" id="collapse-content" aria-expanded="false">	       
	       <?php echo Yii::app()->input->xssClean($data['description'])?>	       
	       </div>
	       <a role="button" class="collapsed" data-toggle="collapse" href="#collapse-content" aria-expanded="false" aria-controls="collapse-content"></a>
	       </div>
	       <?php endif;?>
	       	      
	      </div> <!--cente-->
	    </div> <!--flex-->
	  	       
	    <component-merchant-services
	    ref="ref_services"
	    @after-update="afterUpdateServices"
	    >
	    </component-merchant-services>
	     
	   </div> <!--col-->
	   
	   
	 </div> <!--row-->
	</div> <!--container-->
</div><!--top-merchant-details-->


<!--SHOW CHANGE ADDRESS IF OUT OF COVERAGE-->
<?php $this->renderPartial("//components/change-address")?>
<?php $this->renderPartial("//components/address-needed")?>
<?php $this->renderPartial("//components/schedule-order",array(
  'show'=>true
))?>


<div class="section-menu mt-4" >
	<div class="container">
	  <div class="row">
	  	  
	    <div id="vue-merchant-category" class="col-lg-2 col-md-2 mb-3 mb-lg-3 pr-0 menu-left">	    	     
	    
	      <div class="sidenav-loader loading" v-if="category_loading" >
	         <div v-if="menu_loading">
			   <?php $this->renderPartial("//store/skeleton",array(
			     'line'=>3
			   ))?>
			</div>
	      </div>
	      
	      <div  id="sticky-sidebar" class="sticky-sidebar">
	        <template v-if="category_loading==false">
	        <h5><?php echo t("Menu")?></h5>
	        <ul id="menu-category" class="list-unstyled menu-category">
	          <li v-cloak v-for="val in category_data">
		       <a :href="'#'+val.category_uiid" class="nav-link" >{{ val.category_name }}</a>
		     </li>
	        </ul>
	        </template>
	      </div>	      
	        
	    </div> <!--col menu-left-->
	    	    
	    <div id="vue-merchant-menu"  class="col-lg-7 col-md-7 mb-3 mb-lg-3 menu-center position-relative">	    	    			    
		<!--CHANGE ADDRRESS-->      
		<component-change-address
		ref="address"
		@set-location="afterChangeAddress"
		@after-close="afterCloseAddress"	
		@set-placeid="afterSetAddress"	
		@set-edit="editAddress"
		@after-delete="afterDeleteAddress"
		:label="{
			title:'<?php echo CJavaScript::quote(t("Delivery Address"))?>', 
			enter_address: '<?php echo CJavaScript::quote(t("Enter your address"))?>',	    	    
		}"
		:addresses="addresses"
		:location_data=""
		>
		</component-change-address>
	    	        
          
		  <div v-if="menu_loading">
			   <?php $this->renderPartial("//store/skeleton",array(
			     'line'=>3
			   ))?>
		  </div>
		   
		   <section v-cloak v-for="val in menu_data" :id="val.category_uiid" :data-cat_id="val.cat_id">
		     <h5>{{ val.category_name }}</h5>
		     
		     <div class="list-item-rows hover01" v-for="items in val.items" >		     
		       <div class="row m-0">
		       
		        <div class="col-lg-3 col-md-3 p-0">	           
	             <div class="position-relative"> 
	               <figure class="m-0">
			       <div class="skeleton-placeholder"></div>
			       <img class="rounded lazy" :data-src="items.url_image"/>
			       </figure>
			     </div>  	           
	            </div> <!--col-->
	            
	            <div class="col-lg-9 col-md-9 p-0">
	               <div class="row m-0 p-0">
	                  <div class="col-lg-8 col-md-8 d-flex align-items-center fixed-height">
	                     <div class="center">  
	                        <h6>{{items.item_name}}</h6>
	                        <p v-html="items.item_description"></p>
	                        
	                        <template v-if="items.total_addon <=0 && items.total_meta <=0 ">
	                        
	                          <div class="btn-group btn-group-toggle input-group-small" data-toggle="buttons">
	                           <label v-for="(price, index) in items.price" class="btn" :class="{ active: index==0 }">	                           
			                      <input :value="price.item_size_id" name="size" id="size" type="radio" :class="'item_size_id_'+ items.item_uuid"  > 
	                              <template v-if="price.discount <=0">
	                                {{price.size_name}} {{price.pretty_price}}
	                              </template><!-- v-if-->
	                              <template v-else>
	                                {{price.size_name}} <del>{{price.pretty_price}}</del> {{price.pretty_price_after_discount}}
	                              </template> <!--v-else-->
			                   </label>
	                          </div> <!--btn-group-->
	                          
	                        </template> <!--v-if-->
	                        
	                        <template v-else>
	                         <p class="bold m-0 prices">
	                           <template  v-for="(price, index) in items.price">
	                              <template v-if="price.discount <=0">
	                                <span class="mr-2">{{price.size_name}} {{price.pretty_price}}</span>
	                              </template><!-- v-if-->
	                              <template v-else>
	                                <span class="mr-2">{{price.size_name}} <del>{{price.pretty_price}}</del> {{price.pretty_price_after_discount}}</span>
	                              </template> <!--v-else-->
	                           </template > <!--v-for-->
	                         </p>
	                        </template> <!--v-else-->
	                        
	                     </div> <!--center-->
	                  </div> <!--col-->
	                  
	                  <div class="col-lg-4 col-md-4 d-flex align-items-center justify-content-center">
	                  	                  	                  
	                  <template v-if="items.total_addon <=0 && items.total_meta <=0 && items.price.length<=1 ">		                            	                 
		                  <div class="position-relative quantity-wrapper">	     
		                     <template v-if=" items.qty>0 " >              
			                 <div class="quantity-parent">
				                 <div class="quantity d-flex justify-content-between m-auto">
				                    <div><a href="javascript:;" @click="updateInlineQtyBefore('less',items,val.cat_id)" class="rounded-pill qty-btn" data-id="less"><i class="zmdi zmdi-minus"></i></a></div>
				                    <div class="qty">{{ items.qty }}</div>
				                    <div><a href="javascript:;" @click="updateInlineQtyBefore('add',items,val.cat_id)" class="rounded-pill qty-btn" data-id="plus"><i class="zmdi zmdi-plus"></i></a></div>
				                 </div>  
			                 </div> <!--quantity-parent-->		
			                 </template>                
			                 
			                 <template v-else=" items<=0 " >  
			                 <a href="javascript:;" @click="updateInlineQtyBefore('add',items,val.cat_id)" class="btn btn-grey quantity-add-cart">Add to cart</a>	                
			                 </template>
			                 			                 
		                 </div> <!--position-relative-->
	                 </template> <!--v-if-->
	                 
	                 <template v-else>
	                   <a href="javascript:;" class="btn btn-grey xget-item-details" 
                       @click="viewItemBefore({cat_id:val.cat_id,item_uuid:items.item_uuid})">Add to cart</a>
	                 </template> <!--v-else-->
	                  
	                  </div> <!--col-->
	                  
	               </div> <!--row-->
	            </div> <!--col-->
		       
		       </div> <!--row-->
		     </div><!-- list-item-rows-->		     
		   </section>
	    
		   <?php $this->renderPartial("//store/item-details")?>
		   
	    </div> <!--col menu center-->
	    
	    <div class="col-lg-3 col-md-3 mb-3 mb-lg-3 menu-right p-0">
	      <?php $this->renderPartial("//store/cart",array(
	        'checkout'=>false,
	        'checkout_link'=>$checkout_link
	      ))?>	   
	    </div> <!--col menu right-->
	    
	  </div> <!--row-->
	</div> <!--container-->
</div> <!--section-menu-->
<!--SECTION MENU-->
  

<!--SECTION RESTAURANT DETAILS-->

<div class="container mt-5">

  <section id="section-about" class="mb-3">
  <div class="row">
    <div class="col-lg-3 col-md-9 p-0">
        <div class="d-flex">
          <div class="mr-3"><img class="img-20" src="<?php echo Yii::app()->theme->baseUrl."/assets/images/comment-more.png"?>"/></div>
          <div><h5><?php echo t("Few words about [restaurant_name]",array('[restaurant_name]'=>$data['restaurant_name']))?></h5></div>
       </div> <!--d-flex-->
    </div> <!--col-->
    <div class="col-lg-9 col-md-3">
       <p><?php echo Yii::app()->input->xssClean(nl2br($data['short_description']))?></p>
    </div> <!--col-->
  </div> <!--row-->
  </section>
  
  
  <section id="section-gallery" class="mb-5" >
  <div class="row">
    <div class="col-lg-3 col-md-9 p-0">
        <div class="d-flex">
          <div class="mr-3"><img class="img-20" src="<?php echo Yii::app()->theme->baseUrl."/assets/images/image-gallery.png"?>"/></div>
          <div><h5>Gallery</h5></div>
       </div> <!--d-flex-->
    </div> <!--col-->
    <div class="col-lg-9 col-md-3">

    <?php if($gallery):?>
    <div class="gallery gallery_magnific row w-50 hover13">
       <?php $x=1;?>
       <?php foreach ($gallery as $gallery_item):?>
           <?php if($x<=5):?>           
	       <div class="col-lg-4 col-md-12 mb-0 mb-lg-0  p-1">
	         <div class="position-relative"> 
	           <figure>
		       <div class="skeleton-placeholder"></div>
		       <a href="<?php echo $gallery_item['image_url']?>">
		       <img class="rounded lazy" data-src="<?php echo $gallery_item['thumbnail']?>"/>
		       </a>
		       </figure>
		     </div>  
	       </div>   
	       <?php endif;?>
	       
	       <?php if($x>5):?>
	          <div class="col-lg-4 col-md-12 mb-0 mb-lg-0  p-1">
		         <div class="position-relative"> 
			       <div class="skeleton-placeholder"></div>
			       <a href="<?php echo $gallery_item['image_url']?>">
			       <div class="gallery-more d-flex align-items-center justify-content-center">+<?php echo count($gallery)-5;?></div>	       
			       <img class="rounded lazy" data-src="<?php echo $gallery_item['image_url']?>"/>
			       </a>
			     </div>  
		       </div>
	          <?php break;?>
	       <?php endif;?>
	       
       <?php $x++;?>
       <?php endforeach;?>
    </div> <!--gallery-->
    <?php endif;?>
    
    </div> <!--col-->
  </div> <!--row-->
  </section>
  
  <section id="section-address" class="mb-4">
   <div class="row">
    <div class="col-lg-3 col-md-9 p-0">
        <div class="d-flex">
          <div class="mr-3"><img class="img-20 contain" style="height:28px;" src="<?php echo Yii::app()->theme->baseUrl."/assets/images/location.png"?>"/></div>
          <div>
            <h5><?php echo t("Address")?>:</h5>
            <div class="mb-3">
	            <p class="m-0"><?php echo $data['merchant_address']?></p>
	            <?php if($map_direction):?>
	            <a href="<?php echo $map_direction;?>" target="_blank" class="a-12"><u><?php echo t("Get direction")?></u></a>
	            <?php endif;?>
            </div>
            
          </div>
       </div> <!--d-flex-->
       
       <div class="d-flex">
          <div class="mr-3"><img class="img-20" src="<?php echo Yii::app()->theme->baseUrl."/assets/images/clock.png"?>"/></div>
          <div class="flex-fill">
             <h5><?php echo t("Opening hours")?>:</h5>
             <?php if(is_array($opening_hours) && count($opening_hours)>=1):?>
             <table class="w-100">              
             <?php foreach ($opening_hours as $opening_hours_val):?>
                <tr >
                <td class="align-top pb-1"><?php echo ucwords(t($opening_hours_val['day']))?></td>
                 <td class="bold align-top pb-1">
                  <p class="m-0">
                  <?php echo t("[start] - [end]",
                       array(
                       '[start]'=>Date_Formatter::Time($opening_hours_val['start_time']),
                       '[end]'=>Date_Formatter::Time($opening_hours_val['end_time'])) )
                  ?>
                  </p>
                  <?php if(!empty($opening_hours_val['start_time_pm'])):?>
                  
	                  <p class="m-0">
	                  <?php echo t("[start] - [end]",
	                       array(
	                       '[start]'=>Date_Formatter::Time($opening_hours_val['start_time_pm']),
	                       '[end]'=>Date_Formatter::Time($opening_hours_val['end_time_pm'])) )
	                  ?>
	                  </p>  
                  
                  <?php endif;?>
                  
                  <?php if(!empty($opening_hours_val['custom_text'])):?>
                  <p class="m-0"><?php echo $opening_hours_val['custom_text'];?></p>
                  <?php endif;?>
                  
                 </td>
                </tr>
             <?php endforeach;?>
             </table>
             <?php endif;?>
          </div>
       </div> <!--d-flex-->
       
       
    </div> <!--col-->
    
    <div class="col-lg-9 col-md-9">
      <?php if(!empty($static_maps)):?>
      <img class="rounded w-100"  src="<?php echo $static_maps?>" alt="<?php echo $data['restaurant_name']?>">
      <?php endif;?>     
    </div> <!--col-->
    
  </div> <!--row-->
  </section>
  
</div> <!--container-->

<!--END SECTION RESTAURANT DETAILS-->



<!--SECTION REVIEW-->
<section id="section-review" class="container mb-4">


 <div class="row mb-4">
	 <div class="col-lg-3 col-md-3 p-0">
	    <div class="d-flex align-items-center" style="height:28px;">
          <div class="m-0 mr-3"><img class="img-20" src="<?php echo Yii::app()->theme->baseUrl."/assets/images/star.png"?>"/></div>
          <div><h5 class="m-0"><?php echo t("Reviews")?></h5></div>
        </div> <!--d-flex-->
	 </div> <!--col-->
	 
	 <div class="col-lg-9 col-md-9 ">
	     <div class="d-flex justify-content-between align-items-center" style="height:28px;">
	       <div class="flex-fill">
	         <!--<a href="javascript:;" @click="openFormReview" class="a-12"><u><?php echo t("Add your opinion")?></u></a>-->
	       </div>
	       <div class=""><p class="m-0 mr-5">Based on <u><?php echo t("[review_count] reviews",array('[review_count]'=>$data['review_count']))?></u></p></div>
	       <div><span class="badge badge-yellow rounded-pill"><?php echo Price_Formatter::convertToRaw($data['ratings'],1)?></span></div>
	     </div> <!--flex-->
	 </div> <!--col-->
 </div> <!--row-->
 
 <div v-if="review_loading">
   <?php $this->renderPartial("//store/skeleton",array(
     'line'=>2
   ))?>
 </div>
 
 <!--items-review-->
 <template v-for="data in review_data" >
 <div class="row items-review mb-4" v-for="reviews in data" >
	 <div class="col-lg-3 col-md-3 p-0">
	    <div class="d-flex align-items-center">
          <div class="mr-3"><img class="img-60 rounded rounded-pill" :src="reviews.url_image" /></div>
          <div>
            
            <h6 class="m-0" v-if="reviews.as_anonymous==0">{{ reviews.fullname }}</h6>
            <h6 class="m-0" v-if="reviews.as_anonymous==1">{{ reviews.hidden_fullname }}</h6>
                        
            <div class="star-rating"
            data-totalstars="5"
            :data-initialrating="reviews.rating"
            data-strokecolor="#fedc79"
            data-ratedcolor="#fedc79"
            data-strokewidth="10"
            data-starsize="15"
            data-readonly="true"
            ></div>            
            
          </div>
        </div> <!--d-flex-->
	 </div> <!--col-->
	 
	 <div class="col-lg-9 col-md-9 ">
	     <div class="d-flex justify-content-between align-items-center">
	       <div class="flex-fill mr-4 " >
	         <p v-html="reviews.review" ></p>
	         	         
	         <div v-if="reviews.meta.tags_like" class="d-flex flex-row mb-3">
	           <div v-for="tags_like in reviews.meta.tags_like" class="mr-2">
	             <span class="rounded-pill bg-lighter p-1 a-12 pl-2 pr-2">{{ tags_like }}</span>
	           </div>	           
	         </div>  
	         
	         <div v-if="reviews.meta.upload_images" class="gallery review_magnific row m-0">
	           <div v-for="upload_images in reviews.meta.upload_images" class="col-lg-2 col-md-2 mb-0 mb-lg-0 p-1">
	             <figure class="m-0">
	                <a :href="upload_images">
		             <img class="rounded" :src="upload_images">
		           </a>	  	       
	             </figure>
	           </div>	           	           
	         </div> <!--gallery-->
	         
	       </div>	       
	       <div><span class="badge badge-yellow rounded-pill">{{ reviews.rating }}</span></div>
	     </div> <!--flex-->
	 </div> <!--col-->
 </div> 
 </template>
 <!--items-review-->

 
 <div class="row mb-3" v-if="review_loadmore" >
	 <div class="col-lg-3 col-md-3 p-0"></div>
	 <div class="col-lg-9 col-md-9 ">
	    <a href="javascript:;" @click="loadMore" class="btn btn-black m-auto w25"><?php echo t("Load more")?></a>
	 </div>
</div><!-- row-->	 


</section>
<!--END SECTION REVIEW-->


<!--COMPONENTS REVIEW -->
<div id="components-modal-review">
<components-review 
	@add-review="onConfirm"
	@close-order="onClose"	
	@remove-upload="onRemove"	
	
	:title="title"
	:is_loading="is_loading"	
	:required_message="required_message"
	:upload_images="upload_images"
	
	:review-value="review_content"
    @update:review-value="review_content = $event"
    
    :rating-value="rating_value"
    @update:rating-value="rating_value = $event"
    
></components-review>
</div>


<div class="container-fluid m-0 p-0 full-width">
 <?php $this->renderPartial("//store/join-us")?>
</div>
