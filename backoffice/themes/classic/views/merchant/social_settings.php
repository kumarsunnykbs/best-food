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


<div class="form-label-group">    
   <?php echo $form->textField($model,'facebook_page',array(
     'class'=>"form-control form-control-text",
     'placeholder'=>$form->label($model,'facebook_page')     
   )); ?>   
   <?php    
    echo $form->labelEx($model,'facebook_page'); ?>
   <?php echo $form->error($model,'facebook_page'); ?>
</div>


<div class="form-label-group">    
   <?php echo $form->textField($model,'twitter_page',array(
     'class'=>"form-control form-control-text",
     'placeholder'=>$form->label($model,'twitter_page')     
   )); ?>   
   <?php    
    echo $form->labelEx($model,'twitter_page'); ?>
   <?php echo $form->error($model,'twitter_page'); ?>
</div>


<div class="form-label-group">    
   <?php echo $form->textField($model,'google_page',array(
     'class'=>"form-control form-control-text",
     'placeholder'=>$form->label($model,'google_page')     
   )); ?>   
   <?php    
    echo $form->labelEx($model,'google_page'); ?>
   <?php echo $form->error($model,'google_page'); ?>
</div>


  </div> <!--body-->
</div> <!--card-->



<?php echo CHtml::submitButton('submit',array(
'class'=>"btn btn-green btn-full mt-3",
'value'=>t("Save")
)); ?>

<?php $this->endWidget(); ?>  