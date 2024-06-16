<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Dept $model */

$this->title = 'Update Dept: ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Depts', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="dept-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
