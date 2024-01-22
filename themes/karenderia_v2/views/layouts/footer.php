<footer>
<div class="container">
  <div class="row">
     <div class="col d-flex justify-content-start align-items-center"> 
      <p class="m-0">&copy; <?php echo isset(Yii::app()->params['settings']['website_title'])? Yii::app()->params['settings']['website_title'] :'' .' '.date("Y")?></p>
     </div>
     
     <div class="app-store-wrap col d-flex justify-content-center align-items-center"> 
     
       <div class="d-flex justify-content-center">
		  <div class="p-2">
		    <a href="#">
		      <img src="<?php echo Yii::app()->theme->baseUrl?>/assets/images/app-store@2x.png">
		    </a>
		  </div>
		  <div class="p-2">
		    <a href="#">
		      <img src="<?php echo Yii::app()->theme->baseUrl?>/assets/images/google-play@2x.png">
		    </a>
		  </div>
		</div>
     
     </div> <!--col-->
     
     <div class="col d-flex justify-content-end align-items-center"> 
     <p class="m-0">Website: <a href=""><?php echo $_SERVER['SERVER_NAME']?></a></p>
     </div>
  </div> <!--row-->
</div> <!--container-->
</footer>
