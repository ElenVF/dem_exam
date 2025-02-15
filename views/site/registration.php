<?php

/** @var yii\web\View $this */
/** @var yii\bootstrap5\ActiveForm $form */

/** @var app\models\LoginForm $model */

use app\models\Category;
use yii\bootstrap5\ActiveForm;
use yii\bootstrap5\Html;

$this->title = 'Регистрация';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-login">
    <h1><?= Html::encode($this->title) ?></h1>

   
    <div class="row">
        <div class="col-lg-5">

            <?php $form = ActiveForm::begin([
                'id' => 'enableAjaxValidation',
                
            ]); ?>
            <?= $form->field($model, 'name')->textInput() ?>
            <?= $form->field($model, 'login',[ 'enableAjaxValidation'=>true])->textInput(['autofocus' => true]) ?>
            <?= $form->field($model, 'email',[ 'enableAjaxValidation'=>true])->textInput() ?>
            <?= $form->field($model, 'phone')->widget(\yii\widgets\MaskedInput::class, [
    'mask' => '+7(999)-999-99-99',
]) ?>
            <?= $form->field($model, 'passport')->widget(\yii\widgets\MaskedInput::class, [
    'mask' => '999999 9999',
]) ?>
            <?= $form->field($model, 'category_id')->dropDownList(Category::options()) ?>
            <?= $form->field($model, 'password')->passwordInput() ?>


            <div class="form-group">
                <div>
                    <?= Html::submitButton('Регистрация', ['class' => 'btn btn-primary', 'name' => 'login-button']) ?>
                </div>
            </div>

            <?php ActiveForm::end(); ?>

          

        </div>
    </div>
</div>
