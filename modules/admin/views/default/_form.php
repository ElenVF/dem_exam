<?php

use app\models\Dept;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/** @var yii\web\View $this */
/** @var app\models\Application $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="application-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'description')->textInput(['maxlength' => true]) ?>

    

    <?= $form->field($model, 'date_str')->textInput(['type'=>'datetime-local','min'=>date('Y-m-d')]) ?>

   



    <?= $form->field($model, 'dept_id')->dropDownList(Dept::options(),['prompt'=>'Выберите отдел']) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
