<!--TOP SECTION-->
<div class="container-fluid">
 <div id="top-navigation" class="row" >
    <div class="col-md-auto d-flex justify-content-start align-items-center">          
       <?php 
       $this->widget('application.components.WidgetSiteLogo',array(
         'class_name'=>'top-logo'
       ));
       ?>
    </div> <!--col-->
        
    <div id="vue-widget-nav" class="col d-flex justify-content-start align-items-center">          
                   
    <?php 
    if(!empty($widget_col1)){
    	 $this->renderPartial("//components/$widget_col1");
    }
    ?>
    
    </div> <!--col-->
    <div class="col-md-auto d-flex justify-content-end align-items-center">      
    
     <?php 
     if(!empty($widget_col2)){
    	 $this->renderPartial("//components/$widget_col2");
     }
     ?>
     <?php $this->widget('application.components.WidgetUserNav');?>
    
    </div> <!--col-->
 </div><!-- row-->
</div> <!--container-->
<!--END TOP SECTION-->