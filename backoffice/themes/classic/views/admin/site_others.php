
  
<?php
$form = $this->beginWidget(
	'CActiveForm',
	array(
		'id' => 'upload-form',
		'enableAjaxValidation' => false,		
	)
);
?>

<div class="card">
  <div class="card-body">

<?php if(Yii::app()->user->hasFlash('success')): ?>
	<div class="alert alert-success">
		<?php echo Yii::app()->user->getFlash('success'); ?>
	</div>
<?php endif;?>

<?php if(Yii::app()->user->hasFlash('error')): ?>
	<div class="alert alert-danger">
		<?php echo Yii::app()->user->getFlash('error'); ?>
	</div>
<?php endif;?>

<h6 class="mb-4"><?php echo t("Others")?></h6>

<div class="custom-control custom-switch custom-switch-md">  
  <?php echo $form->checkBox($model,"website_enabled_guest_checkout",array(
     'class'=>"custom-control-input checkbox_child",     
     'value'=>1,
     'id'=>"website_enabled_guest_checkout",
     'checked'=>$model->website_enabled_guest_checkout==1?true:false
   )); ?>   
  <label class="custom-control-label" for="website_enabled_guest_checkout">
   <?php echo t("Enabled Guest Check Out")?>
  </label>
</div>    

<div class="custom-control custom-switch custom-switch-md">  
  <?php echo $form->checkBox($model,"enabled_cc_management",array(
     'class'=>"custom-control-input checkbox_child",     
     'value'=>1,
     'id'=>"enabled_cc_management",
     'checked'=>$model->enabled_cc_management==1?true:false
   )); ?>   
  <label class="custom-control-label" for="enabled_cc_management">
   <?php echo t("Enabled Card Management")?>
  </label>
</div>    


<div class="custom-control custom-switch custom-switch-md">  
  <?php echo $form->checkBox($model,"enabled_featured_merchant",array(
     'class'=>"custom-control-input checkbox_child",     
     'value'=>1,
     'id'=>"enabled_featured_merchant",
     'checked'=>$model->enabled_featured_merchant==1?true:false
   )); ?>   
  <label class="custom-control-label" for="enabled_featured_merchant">
   <?php echo t("Enabled Featured Restaurant")?>
  </label>
</div>    


<div class="custom-control custom-switch custom-switch-md">  
  <?php echo $form->checkBox($model,"enabled_subscription",array(
     'class'=>"custom-control-input checkbox_child",     
     'value'=>1,
     'id'=>"enabled_subscription",
     'checked'=>$model->enabled_subscription==1?true:false
   )); ?>   
  <label class="custom-control-label" for="enabled_subscription">
   <?php echo t("Enabled Email Subscriptions")?>
  </label>
</div>    


  </div> <!--body-->
</div> <!--card-->



<?php echo CHtml::submitButton('submit',array(
'class'=>"btn btn-green btn-full mt-3",
'value'=>t("Save")
)); ?>

<?php $this->endWidget(); ?>