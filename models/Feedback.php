<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "feedback".
 *
 * @property int $id
 * @property string $name
 * @property string $description
 * @property string $phone
 * @property string $url
 */
class Feedback extends \yii\db\ActiveRecord
{
    public $imageFile;
    public $terms;
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'feedback';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'description', 'phone'], 'required'],
            [['terms'], 'required','requiredValue'=>1,'message'=>'дайте согласие на обр перс данных'],
            [['name', 'description', 'phone'], 'string', 'max' => 255],

            [['imageFile'], 'file', 'skipOnEmpty' => false, 'extensions' => 'png, jpg','checkExtensionByMimeType'=>false],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Ваше имя',
            'description' => 'Отзыв',
            'phone' => 'Номер телефона',
            'imageFile' => 'Изображение',
        ];
    }

    public function upload()
    {
        if ($this->validate()&& $this->imageFile) {
            if($this->imageFile->saveAs('uploads/' . $this->imageFile->baseName . '.' . $this->imageFile->extension))
            {
                $this->url='uploads/' . $this->imageFile->baseName . '.' . $this->imageFile->extension;
            }
            return true;
        } else {
            return false;
        }
    }
}
