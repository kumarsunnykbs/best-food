<div id="vue-subscription" class="container mt-3 mb-3" v-cloak>

<div class="text-center">
  <h4 class="mb-4 mt-4">Subscription Plans</h4>
  
  <DIV class="w-75 m-auto">
  <input type="hidden" ref="merchant" value="<?php echo $merchant_uuid?>">    
   <div v-for="item in data" 
   :class="isActive(item)"
   class="row no-gutters align-items-center border mb-3 p-1">
     <div class="col">
        <p class="mb-0"><span class="h2">{{item.price}}</span>/{{item.package_period}}</p>
        <p class="h5 m-0">{{item.title}}</p>
     </div>
     <div class="col">
     
      <ul v-if="plan_details[item.package_id]" class="list-group list-group-flush ">
        <li v-for="details in plan_details[item.package_id]" 
        class="list-group-item font-weight-light">
          {{details}}
        </li>        
      </ul>
     
     </div>
     <div class="col">
        <button @click="setPlan(item.package_id,item.package_uuid)" 
        :disabled="package_id==item.package_id"
        class="btn btn-sm btn-green">&nbsp;<?php echo t("Select")?>&nbsp;
        </button>
     </div>
  </div> 
  <!--row-->
  
  
  <div class="payments mt-4 mb-4">
	    
	<!--COMPONENTS PAYMENT METHOD-->
	<components-payment-plans
	ref="payment_method"
	payment_type='online'
	show_payment="true"
	ajax_url="<?php echo Yii::app()->createUrl("/api")?>" 
    actions="PaymenPlanList"	
	@set-Payment="setPayment"
	:label="{
	  select_payment: '<?php echo CJavaScript::quote(t("Select Payment"))?>',
	}"
	>
	</components-payment-plans>
	<!--COMPONENTS PAYMENT METHOD-->
  
  </div>
  <!--payments-->
  
  
  <div class="m-0 text-left">        
  
    <div class="form-check mb-4">
	  <input v-model="agree" class="form-check-input" type="checkbox" value="1" id="agree">
	  <label class="form-check-label" for="agree">
	    I have read and agree to {{site_name}} Auto Renewal Terms, <a href=""  class="text-green">Terms of Service</a> and <a href="" class="text-green">Cancellation Policy</a> and acknowledge receipt of the 
    <a href=""  class="text-green">Privacy Notice</a>.
	  </label>
	</div>
    
    <button 
    :disabled="canContinue"
    @click="showPayment"
    class="btn btn-green pl-5 pr-5">
    <?php echo t("Submit")?>
    </button>
  </div>
  
  
  </DIV> <!--w-75-->
      
</div>
<!--center-->

<?php CComponentsManager::renderComponents($payments,$payments_credentials,$this,'plans')?>
 
</div> <!--container-->