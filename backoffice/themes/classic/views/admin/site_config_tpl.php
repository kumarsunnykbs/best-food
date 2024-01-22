<nav class="navbar navbar-light justify-content-between">
<?php
$this->widget('zii.widgets.CBreadcrumbs', 
array(
'links'=>array(
    t("Site configuration")=>array('admin/site_information')    
),
'homeLink'=>false,
'separator'=>'<span class="separator">
<i class="zmdi zmdi-chevron-right"></i><i class="zmdi zmdi-chevron-right"></i></span>'
));
?>
</nav>

<div class="card">

  <div class="card-body">
    
  <div class="row">
    <div class="col-md-3">
         
    <?php if(Yii::app()->params['isMobile']==TRUE):?>    
      <?php $this->renderPartial("/tpl/site_config");?>
    <?php else :?>
    <div class="attributes-menu-wrap">
	  <?php $this->widget('application.components.WidgetSiteSetup',array());?>
	</div>
	<?php endif;?>
    
    </div> <!--col-->
    <div class="col-md-9">
    
     <?php echo $this->renderPartial($template_name, $params); ?>  
    
    </div>
  </div> <!--row-->  
  
  </div> <!--card-body-->

</div> <!--card-->