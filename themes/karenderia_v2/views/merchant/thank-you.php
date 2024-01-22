<div class="container mt-3 mb-3">


<div class="receipt-section mb-4 mt-5">
  <img src="<?php echo Yii::app()->theme->baseUrl."/assets/images/receipt.png"?>" />
</div>

<div class="text-center mb-5">
  <p class="m-0">THANKS FOR JOINING</p>
  <h3 class="mb-4"><?php echo t("Your registration is complete!")?></h3>
  <p>
  <?php echo t('You can login to merchant portal by clicking <a href="{{link}}" target="_blank" class="text-green">here</a>',array(
   '{{link}}'=>Yii::app()->createUrl('/backoffice/merchant')
  ))?>
  </p>  
</div>
 
</div> <!--container-->