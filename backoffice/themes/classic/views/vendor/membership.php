<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'frm-merchant',
	'enableAjaxValidation'=>false,
)); ?>

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
	
<h6 class="mb-4"><?php echo t("Type")?></h6>

<div class="form-label-group">    
   <?php echo $form->dropDownList($model,'merchant_type', (array)$merchant_type,array(
     'class'=>"form-control custom-select form-control-select merchant_type_selection",     
     'placeholder'=>$form->label($model,'merchant_type'),
   )); ?>         
   <?php echo $form->error($model,'merchant_type'); ?>
</div>

<DIV class="membership_type_1">
<h6 class="mb-4"><?php echo t("Plan")?></h6>

<div class="form-label-group">    
   <?php echo $form->dropDownList($model,'package_id', (array)$package,array(
     'class'=>"form-control custom-select form-control-select",     
     'placeholder'=>$form->label($model,'package_id'),
   )); ?>         
   <?php echo $form->error($model,'package_id'); ?>
</div>


<!--<div class="form-label-group">    
   <?php echo $form->textField($model,'membership_expired',array(
     'class'=>"form-control form-control-text datepick",
     'readonly'=>true,
     'placeholder'=>$form->label($model,'membership_expired'),          
   )); ?>   
   <?php    
    echo $form->labelEx($model,'membership_expired'); ?>
   <?php echo $form->error($model,'membership_expired'); ?>
</div>-->

</DIV> <!--membership_type_1-->

<DIV class="membership_type_2">

<h6 class="mb-4"><?php echo t("commission on orders")?></h6>

<div class="row">
   <div class="col-md-6">
	<div class="form-label-group">    
	   <?php echo $form->dropDownList($model,'commision_type', (array)$commision_type,array(
	     'class'=>"form-control custom-select form-control-select",     
	     'placeholder'=>$form->label($model,'commision_type'),
	   )); ?>         
	   <?php echo $form->error($model,'commision_type'); ?>
	</div>
  </div> <!--col-->
  
  <div class="col-md-6">
  
   <div class="form-label-group">    
   <?php echo $form->textField($model,'percent_commision',array(
     'class'=>"form-control form-control-text",     
     'placeholder'=>$form->label($model,'percent_commision'),     
   )); ?>   
   <?php    
    echo $form->labelEx($model,'percent_commision'); ?>
   <?php echo $form->error($model,'percent_commision'); ?>
</div>

  </div> <!--col-->
  
</div> <!--row-->

</DIV> <!--membership_type_2-->

<DIV class="membership_type_3">

</DIV> <!--membership_type_3-->

<div class="row text-left mt-4">
<div class="col-md-12 m-0">
<?php echo CHtml::submitButton('Login',array(
'class'=>"btn btn-green btn-full",
'value'=>CommonUtility::t("Save")
)); ?>
</div>
</div>

<?php $this->endWidget(); ?>
 