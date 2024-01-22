<ul id="vue-cart-preview" class="top-menu list-unstyled " v-cloak> 
 <li class="d-inline">
 
 <a href="<?php echo $cart_preview==true?'javascript:;':'#vue-cart'?>" 
   class="<?php echo $cart_preview==true?'ssm-toggle-nav':''?>">
   <?php echo t("Cart")?>
 </a>
 
 </li>
 <li class="d-inline pr-2">
 
 <a href="<?php echo $cart_preview==true?'javascript:;':'#vue-cart'?>" 
    class="cart-handle <?php echo $cart_preview==true?'ssm-toggle-nav':''?>">
    <img src="<?php echo Yii::app()->theme->baseUrl."/assets/images/shopping-bag.svg"?>" />
    <span class="badge small badge-dark rounded-pill">
    {{items_count}}
    </span>
 </a>
 
 </li>
  <li class="d-inline line-left">
   <a href="<?php echo Yii::app()->createUrl("/account/login")?>"><?php echo t("Sign in")?></a>  
 </li>
 
<?php Yii::app()->controller->renderPartial("//components/cart-preview",array(
 'cart_preview'=>$cart_preview
))?>
 
</ul>