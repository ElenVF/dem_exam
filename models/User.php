<?php

namespace app\models;

use Yii;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "user".
 *
 * @property int $id
 * @property string $name
 * @property string $login
 * @property string $email
 * @property string $phone
 * @property string $auth_key
 * @property string $password_hash
 * @property string $passport
 * @property int $category_id
 * @property int $role_id
 *
 * @property Application[] $applications
 * @property Category $category
 * @property Role $role
 */
class User extends \yii\db\ActiveRecord implements \yii\web\IdentityInterface

{
    public $password;
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'user';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'login', 'email', 'phone', 'password', 'passport', 'category_id'], 'required'],
            [['category_id', 'role_id'], 'integer'],
            [['name', 'login', 'email', 'phone', 'password', 'passport', 'category_id'], 'string', 'max' => 255],
            [['password'], 'string', 'min' => 4],
            ['email','email'],
            ['email','unique'],
            ['login','unique'],
            ['login', 'match', 'pattern' => '/^[A-Za-z\-\d]+$/u','message'=>'латиница,цифры,тире'],
            ['password', 'match', 'pattern' => '/^[A-Za-z\-\d]+$/u','message'=>'латиница,цифры,тире'],
            ['passport', 'match', 'pattern' => '/^[\d{6}\s\d{4}]+$/u','message'=>'серия и номер паспорта'],
            ['name', 'match', 'pattern' => '/^[А-ЯЁа-яё]+\s+[А-ЯЁа-яё]+\s+[А-ЯЁа-яё]+$/u','message'=>'Кирилица, ФИО'],
            ['phone', 'match', 'pattern' => '/^\+7\(\d{3}\)-\d{3}-\d{2}-\d{2}$/u','message'=>'серия и номер паспорта'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'ФИО',
            'login' => 'Логин',
            'email' => 'Email',
            'phone' => 'Телефон',
           
            'password' => 'Пароль',
            'passport' => 'Паспорт',
            'category_id' => 'Категория',
          
        ];
    }

    /**
     * Gets query for [[Applications]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getApplications()
    {
        return $this->hasMany(Application::class, ['user_id' => 'id']);
    }

    /**
     * Gets query for [[Category]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getCategory()
    {
        return $this->hasOne(Category::class, ['id' => 'category_id']);
    }

    /**
     * Gets query for [[Role]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getRole()
    {
        return $this->hasOne(Role::class, ['id' => 'role_id']);
    }


    
    /**
     * {@inheritdoc}
     */
    public static function findIdentity($id)
    {
        return self::findOne(['id'=>$id])?? null;
    }

    /**
     * {@inheritdoc}
     */
    public static function findIdentityByAccessToken($token, $type = null)
    {
        

        return null;
    }

    /**
     * Finds user by login
     *
     * @param string $login
     * @return static|null
     */
    public static function findByLogin($login)
    {
        return self::findOne(['login'=>$login])?? null;
    }

    /**
     * {@inheritdoc}
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * {@inheritdoc}
     */
    public function getAuthKey()
    {
        return $this->auth_key;
    }

    /**
     * {@inheritdoc}
     */
    public function validateAuthKey($authKey)
    {
        return $this->auth_key === $authKey;
    }

    /**
     * Validates password
     *
     * @param string $password password to validate
     * @return bool if password provided is valid for current user
     */
    public function validatePassword($password)
    {
        return $this->password =Yii::$app->getSecurity()->validatePassword($password, $this->password_hash);
    }


    public function beforeSave($insert)
{
    if (!parent::beforeSave($insert)) {
        return false;
    }
if($insert){
    $this->role_id=1;
    $this->password_hash= Yii::$app->getSecurity()->generatePasswordHash($this->password);
    $this->auth_key=Yii::$app->getSecurity()->generateRandomString();
}
    // ...custom code here...
    return true;
}
public static function options()
{
    return ArrayHelper::map(self::find()->orderBy('name')->all(), 'id', 'name');
}


public  function getIsAdmin()
{
    return $this->role_id==2;
}
}
