<?php if(is_array($menu) && count($menu)>=1):?>
<div class="row sub-footer-nav">   
   <?php foreach ($menu as $item):?>
   <div class="col-lg-3 col-md-3 mb-4 mb-lg-3">
      <h6><?php echo t($item['label'])?></h6>
      <?php $this->widget('application.components.WidgetSiteMapMenu' , array(
         'items'=>isset($item['items'])?$item['items']:array()
      ) );?>
   </div>
   <?php endforeach;?>
</div>
<?php endif;?>