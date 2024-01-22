<div class="sub-footer">
  <div class="container">

    <div class="row">    
     <div class="col-md-4 d-flex justify-content-start align-items-center">       
       <?php 
       $this->widget('application.components.WidgetSiteLogo',array(
         'class_name'=>'footer-logo'
       ));
       ?>
     </div> <!--col-->
     
     <div class="col-md-4 d-flex justify-content-center align-items-center">
        <div class="row list-inline social-list"> 
          <div class="col">
             <a href="#" class="facebook"><i class="zmdi zmdi-facebook"></i></a>
          </div>
          <div class="col">
             <a href="#" class="instagram"><i class="zmdi zmdi-instagram"></i></a>
          </div>
          <div class="col">
             <a href="#" class="linkedin"><i class="zmdi zmdi-linkedin"></i></a>
          </div>
          <div class="col">
             <a href="#" class="twitter"><i class="zmdi zmdi-twitter"></i></a>
          </div>
          <div class="col">
             <a href="#" class="youtube"><i class="zmdi zmdi-youtube-play"></i></a>
          </div>
        </div> <!--row-->
     </div> <!--col-->
     
     <div class="col-md-4 d-flex justify-content-end align-items-center">
       
     </div> <!--col-->        
    </div> <!--row-->
    
   <?php $this->widget('application.components.WidgetFooterMenu');?>
  
  </div> <!--container-->
</div> <!--sub-footer-->