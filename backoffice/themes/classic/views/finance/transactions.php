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
     <div class="flex-fill"><h5 class="m-0">Earnings</h5><p class="m-0 text-muted">Your commission transaction for all orders</p></div>
     <div class="flex-fill">
     
       <div class="d-flex">
       <p class="m-0 mr-2 text-muted">Total Commission</p><h5 class="m-0">
         <components-commission-balance
         ref="balance"
         ajax_url="<?php echo Yii::app()->createUrl("/api")?>" 
         @after-balance="afterBalance"
         >
         </components-commission-balance>         
       </h5>
       </div>              
     </div>  
     
     <div class="flex-fill text-right">
       
       <div class="dropdown">
		  <button class="btn btn-green dropdown-toggle"           
          type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		    Create a Transaction
		  </button>
		  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
		    <a @click="createTransaction" class="dropdown-item" >Adjustment</a>		    
		  </div>
		</div>
       
     </div> <!--flex-col-->
        
   </div> <!--d-flex-->
  </div><!-- bg-light-->

</div>


<components-datatable
ref="datatable"
ajax_url="<?php echo Yii::app()->createUrl("/api")?>" 
actions="transactionHistory"
:table_col='<?php echo json_encode($table_col)?>'
:columns='<?php echo json_encode($columns)?>'
:transaction_type_list='<?php echo json_encode($transaction_type)?>'
:date_filter='<?php echo true;?>'
:settings="{
    auto_load : '<?php echo true;?>',
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


<components-create-adjustment
ref="create_adjustment"
ajax_url="<?php echo Yii::app()->createUrl("/api")?>" 
:transaction_type_list='<?php echo json_encode($transaction_type)?>'
:label="{    
    title : '<?php echo t("Create adjustment")?>',
    close : '<?php echo t("Close")?>',
    submit : '<?php echo t("Submit")?>',
    transaction_description : '<?php echo t("Transaction Description")?>',
    transaction_amount : '<?php echo t("Amount")?>',
  }"  
@after-save="afterSave"
>
</components-create-adjustment>


</div> <!--card body-->
</div> <!--card-->