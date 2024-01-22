<?php
class ForgotpasswordController extends CController
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
    
	public function beforeAction($action)
	{		
		if(!Yii::app()->user->isGuest){
			$this->redirect(Yii::app()->createUrl('/admin/dashboard'));
			Yii::app()->end();
		}								
		return true;
	}
	
	public function actionIndex()
	{
		$this->pageTitle = t("Administrator - Forgot Password");
		
		$model = new AR_AdminUser;
		$model->scenario='forgot_password';
		
		if(isset($_POST['AR_AdminUser'])){
			$model->attributes=$_POST['AR_AdminUser'];				
			if($model->validate()){
				Yii::app()->user->setFlash('success',t("E-mail has been sent to your account."));
				$this->refresh();
			}
		}
		
		$this->render('forgot_password',
		  array(
		    'model'=>$model,
		    'back_link'=>Yii::app()->createUrl("/login")
		));
	}
	
}
/*end class*/