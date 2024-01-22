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
	
<div class="custom-control custom-switch custom-switch-md">  
  <?php echo $form->checkBox($model,"close_store",array(
     'class'=>"custom-control-input checkbox_child",     
     'value'=>1,
     'id'=>"close_store",
     'checked'=>$model->close_store==1?true:false
   )); ?>   
  <label class="custom-control-label" for="close_store">
   <?php echo t("Close this store")?>
  </label>
</div>    

<!--
<div class="custom-control custom-switch custom-switch-md">  
  <?php echo $form->checkBox($model,"disabled_ordering",array(
     'class'=>"custom-control-input checkbox_child",     
     'value'=>1,
     'id'=>"disabled_ordering",
     'checked'=>$model->disabled_ordering==1?true:false
   )); ?>   
  <label class="custom-control-label" for="disabled_ordering">
   <?php echo t("Disabled Ordering")?>
  </label>
</div>    -->


<div class="row text-left mt-4">
<div class="col-md-12 m-0">
<?php echo CHtml::submitButton('save',array(
'class'=>"btn btn-green btn-full",
'value'=>CommonUtility::t("Save")
)); ?>
</div>
</div>

<?php $this->endWidget(); ?>
 