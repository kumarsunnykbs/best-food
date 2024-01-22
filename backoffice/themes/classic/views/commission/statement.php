<nav class="navbar navbar-light justify-content-between">
  <a class="navbar-brand">
  <h5><?php echo CHtml::encode($this->pageTitle)?></h5>
  </a>     
</nav>

<div id="vue-commission-statement" class="card">
<div class="card-body">

<div class="mb-3">
  <h5 class="mb-4">Transaction History</h5>
  
  <div class="bg-light p-3 mb-3 rounded">
   <div class="d-flex align-items-center">
     <div class="flex-fill"><h5 class="m-0">Earnings</h5><p class="m-0 text-muted">Your sales, cash in and referral earnings</p></div>
     <div class="flex-fill">
     
       <div class="d-flex">
       <p class="m-0 mr-2 text-muted">Available Balance</p><h5 class="m-0">
         <components-merchant-balance
         ref="balance"
         ajax_url="<?php echo Yii::app()->createUrl("/apibackend")?>" 
         @after-balance="afterBalance"
         >
         </components-merchant-balance>
       </h5>
       </div>
        
     </div>
     <div class="flex-fill text-right">
      
      <?php if($payout_request_enabled):?>    
      
      <div class="dropdown">
		  <button class="btn btn-green dropdown-toggle"           
          type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		    Create a Transaction
		  </button>
		  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
		    <a @click="requestPayout" class="dropdown-item" ><?php echo t("Request Payout")?></a>		    
		    <a @click="showCashin" class="dropdown-item" ><?php echo t("Cash In")?></a>		    
		  </div>
	  </div>
      
      <?php endif;?>
      
     </div>
   </div> <!--d-flex-->
  </div><!-- bg-light-->

</div>

<components-datatable
ref="datatable"
ajax_url="<?php echo Yii::app()->createUrl("/apibackend")?>" 
actions="transactionHistory"
:table_col='<?php echo json_encode($table_col)?>'
:columns='<?php echo json_encode($columns)?>'
:transaction_type_list='<?php echo json_encode($transaction_type)?>'
:settings="{
    filter : '<?php echo false;?>',   
    ordering :'<?php echo false;?>',    
    order_col :'<?php echo intval($order_col);?>',   
    sortby :'<?php echo $sortby;?>',                                
    placeholder : '<?php echo t("Start date -- End date")?>',  
    separator : '<?php echo t("to")?>',
    all_transaction : '<?php echo t("All transactions")?>'
  }"  
page_limit = "<?php echo Yii::app()->params->list_limit?>"  
>
</components-datatable>



<components-request-payout
ref="payout"
ajax_url="<?php echo Yii::app()->createUrl("/apibackend")?>" 
@after-requestpayout="afterRequestpayout"
:balance="balance"
:label="{
  title : '<?php echo t("Request Payout")?>',  
  amount : '<?php echo t("Amount")?>',  
  submit : '<?php echo t("Submit")?>',  
  close : '<?php echo t("Close")?>',  
}"  
>
</components-request-payout>

<components-cash-in
ref="cashin"
cash_link="<?php echo $cash_in_link?>"
minimum_cashin="<?php echo floatval($minimum_cashin)?>"
:amount_selection='<?php echo json_encode($amount_selection)?>'
:label="{
  cancel : '<?php echo CJavaScript::quote(t("Cancel"))?>', 
  continue : '<?php echo CJavaScript::quote(t("Continue"))?>', 
  minimum_amount : '<?php echo CJavaScript::quote(t("Minimum amount {{amonut}}",array('{{amonut}}'=>Price_Formatter::formatNumber($minimum_cashin)) ))?>', 
  add_to_balance : '<?php echo CJavaScript::quote(t("Add to your balance"))?>', 
  how_much : '<?php echo CJavaScript::quote(t("how much do you want to add to your account?"))?>', 
  enter_amount : '<?php echo CJavaScript::quote(t("Enter top up amount"))?>',   
  cashin : '<?php echo CJavaScript::quote(t("cash in"))?>', 
}"  
>
</components-cash-in>

</div>
</div>