<?php
class CustomerIdentityAuto extends CUserIdentity
{
	const LOGIN_TOKEN="logintoken";	
	private $_id;
	
	public function authenticate()
	{						
		$user=AR_customer_autologin::model()->find('LOWER(email_address)=?',array(strtolower($this->username)));				
		if($user===null)
			$this->errorCode=self::ERROR_USERNAME_INVALID;
		else if(!$user->validatePassword($this->password))
			$this->errorCode=self::ERROR_PASSWORD_INVALID;
		elseif ($user->status!="active"){			
			$this->errorCode=self::ERROR_UNKNOWN_IDENTITY;
		} else {			
			$this->_id=$user->client_id;
			$this->username=$user->username;			
			$this->setState('first_name', $user->first_name);
			$this->setState('last_name', $user->last_name);
			$this->setState('email_address', $user->email_address);
			$this->setState('contact_number', $user->contact_phone);
			
			$this->setState('avatar', CMedia::getImage($user->avatar,$user->path,Yii::app()->params->size_image_thumbnail,
			CommonUtility::getPlaceholderPhoto('customer')) );
			
			$this->errorCode=self::ERROR_NONE;
						
			$user->token = CommonUtility::generateToken("{{client}}",'token');						
			$user->last_login = CommonUtility::dateNow();
			$user->ip_address = CommonUtility::userIp();
			
			$this->setState(self::LOGIN_TOKEN, $user->token);
						
			$user->save();			
			
		}
		return $this->errorCode==self::ERROR_NONE;
	}
	
	/**
	 * @return integer the ID of the user record
	 */
	public function getId()
	{
		return $this->_id;
	}	
	
}
/*end class*/