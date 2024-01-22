<?php $this->beginContent('/layouts/main-layout'); ?>

<!--TOP NAV-->
<!--TOP SECTION-->
<div class="container-fluid">
 <div id="top-navigation" class="row" >
    <div id="vue-checkout-back" v-cloak class="col-md-auto d-flex justify-content-center align-items-center">    
      <a :href="back_url" class="back-arrow text-green"><?php echo t("Back to Menu");?></a>
    </div>
    <div class="col-9 d-flex justify-content-center align-items-center">            
       <?php 
       $this->widget('application.components.WidgetSiteLogo',array(
         'class_name'=>'top-logo'
       ));
       ?>
    </div> <!--col-->            
 </div><!-- row-->
</div> <!--container-->
<!--END TOP SECTION-->
<!--END TOP NAV-->

<!--MAIN CONTENT-->
<div class="page-content">
<?php echo $content; ?>
</div>
<!--END MAIN CONTENT-->

<!--SUB FOOTER-->
<?php $this->renderPartial("//layouts/sub-footer")?>
<!--END SUB FOOTER-->

<!--FOOTER-->
<?php $this->renderPartial("//layouts/footer")?>
<!--END FOOTER-->

<?php $this->endContent(); ?>