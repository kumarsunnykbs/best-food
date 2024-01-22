<?php
class ResetpswdController extends CController
{
	public $layout='login';

	public function init()
	{
		AssetsBundle::registerBundle(array(		 
		 'login-css'
		));			
	}
	
	public function behaviors() {
		return array(
	        'BodyClassesBehavior' => array(
	            'class' => 'ext.yii-body-classes.BodyClassesBehavior'
	        ),        
	    );
    }
    
    public function filters()
	{
		return array(			
			array(
			  'application.filters.HtmlCompressorFilter',
			)
		);
	}
    
	public function beforeAction($action)
	{		
		if(!Yii::app()->user->isGuest){
			$this->redirect(Yii::app()->createUrl('/merchant/dashboard'));
			Yii::app()->end();
		}								
		return true;
	}
	
	public function actionIndex()
	{
		$this->pageTitle = t("Merchant - Forgot Password");
		
		$model = new AR_merchant_login;
		$model->scenario='forgot_password';
		
		if(isset($_POST['AR_merchant_login'])){
			$model->attributes=$_POST['AR_merchant_login'];				
			if($model->validate()){
				Yii::app()->user->setFlash('success',t("E-mail has been sent to your account."));
				$this->refresh();
			}
		}
		
		$this->render('//forgotpassword/forgot_password',
		   array(
		     'model'=>$model,
		     'back_link'=>Yii::app()->createUrl("/auth/login")
		));
	}
	
}
/*end class*/