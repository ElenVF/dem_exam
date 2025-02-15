<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "application".
 *
 * @property int $id
 * @property string $description
 * @property string $created_at
 * @property string $date_str
 * @property int $status_id
 * @property int $user_id
 * @property int $dept_id
 *
 * @property Dept $dept
 * @property Status $status
 * @property User $user
 */
class Application extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'application';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['description', 'date_str', 'dept_id'], 'required'],
            [['created_at', 'date_str'], 'safe'],
            [[ 'date_str'], 'datetime','format'=>'php:Y-m-d H:i:s'],
            [['status_id', 'user_id', 'dept_id'], 'integer'],
            [['description'], 'string', 'max' => 255],
            [['dept_id'], 'exist', 'skipOnError' => true, 'targetClass' => Dept::class, 'targetAttribute' => ['dept_id' => 'id']],
            [['status_id'], 'exist', 'skipOnError' => true, 'targetClass' => Status::class, 'targetAttribute' => ['status_id' => 'id']],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::class, 'targetAttribute' => ['user_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'description' => 'Описание',
            'created_at' => 'Дата создания',
            'date_str' => 'Дата окончания',
            'status_id' => 'Статус',
            'user_id' => 'Пользователь',
            'dept_id' => 'Отдел',
        ];
    }

    /**
     * Gets query for [[Dept]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getDept()
    {
        return $this->hasOne(Dept::class, ['id' => 'dept_id']);
    }

    /**
     * Gets query for [[Status]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getStatus()
    {
        return $this->hasOne(Status::class, ['id' => 'status_id']);
    }

    /**
     * Gets query for [[User]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::class, ['id' => 'user_id']);
    }
  

    public function beforeSave($insert)
    {
        if (!parent::beforeSave($insert)) {
            return false;
        }
    if($insert){
        $this->user_id=Yii::$app->user->identity->id;
        $this->created_at=date('Y-m-d H:i:s');
        $this->status_id=1;
    }
        // ...custom code here...
        return true;
    }
}
