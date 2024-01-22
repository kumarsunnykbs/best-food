<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'frm-merchant',
	'enableAjaxValidation'=>false,
	'htmlOptions' => array('enctype' => 'multipart/form-data'),
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

<div class="row">
 <div class="col-md-6">
 
 <div class="form-label-group">    
   <?php echo $form->textField($model,'restaurant_name',array(
     'class'=>"form-control form-control-text",
     'placeholder'=>$form->label($model,'restaurant_name'),     
   )); ?>   
   <?php    
    echo $form->labelEx($model,'restaurant_name'); ?>
   <?php echo $form->error($model,'restaurant_name'); ?>
</div>
 
 </div>
 <div class="col-md-6">
 
 <div class="form-label-group">    
   <?php echo $form->textField($model,'restaurant_slug',array(
     'class'=>"form-control form-control-text",
     'placeholder'=>$form->label($model,'restaurant_slug'),     
   )); ?>   
   <?php    
    echo $form->labelEx($model,'restaurant_slug'); ?>
   <?php echo $form->error($model,'restaurant_slug'); ?>
</div>
 
 </div>
</div> <!--row-->


 <div class="form-label-group">    
   <?php echo $form->textField($model,'contact_name',array(
     'class'=>"form-control form-control-text",
     'placeholder'=>$form->label($model,'contact_name'),     
   )); ?>   
   <?php    
    echo $form->labelEx($model,'contact_name'); ?>
   <?php echo $form->error($model,'contact_name'); ?>
</div>


<div class="row">
 <div class="col-md-6">
 
 <div class="form-label-group">    
   <?php echo $form->textField($model,'contact_phone',array(
     'class'=>"form-control form-control-text mask_mobile",
     'placeholder'=>$form->label($model,'contact_phone'),     
   )); ?>   
   <?php    
    echo $form->labelEx($model,'contact_phone'); ?>
   <?php echo $form->error($model,'contact_phone'); ?>
</div>
 
 </div>
 <div class="col-md-6">
 
 <div class="form-label-group">    
   <?php echo $form->textField($model,'contact_email',array(
     'class'=>"form-control form-control-text",
     'placeholder'=>$form->label($model,'contact_email'),     
   )); ?>   
   <?php    
    echo $form->labelEx($model,'contact_email'); ?>
   <?php echo $form->error($model,'contact_email'); ?>
</div>
 
 </div>
</div> <!--row-->


<div id="vue-uploader">
<component-uploader
ref="uploader"
max_file="<?php echo Yii::app()->params->dropzone['max_file'];?>"
max_file_size = "<?php echo Yii::app()->params->dropzone['max_file_size']?>"
select_type="single"
field = "photo"
field_path = "path"
inline="false"
selected_file="<?php echo $model->logo;?>"
upload_path="<?php echo $upload_path?>"
save_path="<?php echo $model->path?>"

@set-afer-upload="afterUpload"
@set-afer-delete="afterDelete"
:label="{
    select_file:'<?php echo CJavaScript::quote(t("Select File"))?>',       
    upload_new:'<?php echo CJavaScript::quote(t("Upload New"))?>',     
    upload_button:'<?php echo CJavaScript::quote(t("Logo"))?>',     
    add_file:'<?php echo CJavaScript::quote(t("Add Files"))?>',
    previous:'<?php echo CJavaScript::quote(t("Previous"))?>',
    next:'<?php echo CJavaScript::quote(t("Next"))?>',
    search:'<?php echo CJavaScript::quote(t("Search"))?>',    
}"
>
</component-uploader>


<div class="pt-3">
<component-uploader
ref="uploader"
max_file="<?php echo Yii::app()->params->dropzone['max_file'];?>"
max_file_size = "<?php echo Yii::app()->params->dropzone['max_file_size']?>"
select_type="single"
field = "header_image"
field_path = "path2"
inline="false"
selected_file="<?php echo $model->header_image;?>"
upload_path="<?php echo $upload_path?>"
save_path="<?php echo $model->path2?>"

@set-afer-upload="afterUpload"
@set-afer-delete="afterDelete"
:label="{
    select_file:'<?php echo CJavaScript::quote(t("Select File"))?>',       
    upload_new:'<?php echo CJavaScript::quote(t("Upload New"))?>',     
    upload_button:'<?php echo CJavaScript::quote(t("Header"))?>',     
    add_file:'<?php echo CJavaScript::quote(t("Add Files"))?>',
    previous:'<?php echo CJavaScript::quote(t("Previous"))?>',
    next:'<?php echo CJavaScript::quote(t("Next"))?>',
    search:'<?php echo CJavaScript::quote(t("Search"))?>',    
}"
>
</component-uploader>
</div>

</div> <!--vue-->


<h6 class="mb-4 mt-4"><?php echo t("About")?></h6>
<div class="form-label-group mt-2">    
   <?php echo $form->textArea($model,'description',array(
     'class'=>"form-control form-control-text summernote",     
     'placeholder'=>t("Contact Content")
   )); ?>      
   <?php echo $form->error($model,'description'); ?>
</div>

<h6 class="mb-4 mt-4"><?php echo t("Short About")?></h6>
<div class="form-label-group mt-2">    
   <?php echo $form->textArea($model,'short_description',array(
     'class'=>"form-control form-control-text textarea_min",     
     'placeholder'=>t(""),     
   )); ?>      
   <?php echo $form->error($model,'short_description'); ?>
</div>

<h6 class="mb-4 mt-4"><?php echo t("Cuisine")?></h6>

<div class="form-label-group">    
   <?php echo $form->dropDownList($model,'cuisine2', (array)$cuisine,array(
     'class'=>"form-control custom-select form-control-select select_two",
     'multiple'=>true,
     'placeholder'=>$form->label($model,'cuisine2'),
   )); ?>         
   <?php echo $form->error($model,'cuisine2'); ?>
</div>

<h6 class="mb-4"><?php echo t("Services")?></h6>

<div class="form-label-group">    
   <?php echo $form->dropDownList($model,'service2', (array)$services,array(
     'class'=>"form-control custom-select form-control-select select_two",
     'placeholder'=>$form->label($model,'service2'),
     'multiple'=>true,
   )); ?>         
   <?php echo $form->error($model,'service2'); ?>
</div>


<h6 class="mb-4"><?php echo t("Tags")?></h6>

<div class="form-label-group">    
   <?php echo $form->dropDownList($model,'tags',(array)$tags,array(
     'class'=>"form-control custom-select form-control-select select_two",
     'placeholder'=>$form->label($model,'tags'),
     'multiple'=>true,
   )); ?>         
   <?php echo $form->error($model,'tags'); ?>
</div>

<h6 class="mb-4"><?php echo t("featured")?></h6>

<div class="form-label-group">    
   <?php echo $form->dropDownList($model,'featured',(array)$featured,array(
     'class'=>"form-control custom-select form-control-select select_two",
     'placeholder'=>$form->label($model,'featured'),
     'multiple'=>true,
   )); ?>         
   <?php echo $form->error($model,'featured'); ?>
</div>

<div class="row">
 <div class="col-md-6">
 
 <div class="form-label-group">    
   <?php echo $form->textField($model,'delivery_distance_covered',array(
     'class'=>"form-control form-control-text",
     'placeholder'=>$form->label($model,'delivery_distance_covered'),     
   )); ?>   
   <?php    
    echo $form->labelEx($model,'delivery_distance_covered'); ?>
   <?php echo $form->error($model,'delivery_distance_covered'); ?>
</div>
 
 </div>
 <div class="col-md-6">
 
 <div class="form-label-group">    
   <?php echo $form->dropDownList($model,'distance_unit',(array)$unit,array(
     'class'=>"form-control custom-select form-control-select",
     'placeholder'=>$form->label($model,'distance_unit'),
   )); ?>         
   <?php echo $form->error($model,'distance_unit'); ?>
</div>
 
 </div>
</div> <!--row-->


<DIV class="row mt-2 mb-2">
  <div class="col-md-6">
  
  <div class="custom-control custom-switch custom-switch-md">  
  <?php echo $form->checkBox($model,"is_ready",array(
     'class'=>"custom-control-input checkbox_child",     
     'value'=>2,
     'id'=>"is_ready",
     'checked'=>$model->is_ready==2?true:false
   )); ?>   
  <label class="custom-control-label" for="is_ready">
   <?php echo t("Published Merchant")?>
  </label>
</div>    
  
  
  </div><!-- col-->
  
</DIV>
<!--row-->

<?php if($show_status):?>
<h6 class="mb-4"><?php echo t("Status")?></h6>

<div class="form-label-group">    
   <?php echo $form->dropDownList($model,'status', (array) $status,array(
     'class'=>"form-control custom-select form-control-select",
     'placeholder'=>$form->label($model,'status'),
   )); ?>         
   <?php echo $form->error($model,'status'); ?>
</div>
<?php endif;?>


<div class="row text-left mt-4">
<div class="col-md-12 m-0">
<?php echo CHtml::submitButton('Login',array(
'class'=>"btn btn-green btn-full",
'value'=>CommonUtility::t("Save")
)); ?>
</div>
</div>

<?php $this->endWidget(); ?>
 <?php $this->renderPartial("/admin/modal_delete_image");?>