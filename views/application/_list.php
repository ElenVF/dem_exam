<?php

use app\models\Dept;
use yii\helpers\Html;


/** @var yii\web\View $this */
/** @var app\models\Application $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="application-form">
<div class="col">
<div class="card border-warning mb-3" style="max-width: 18rem;">
  <div class="card-header"><?= Html::encode($model->created_at) ?></div>
  <div class="card-body">
    <h5 class="card-title"><?= Html::encode($model->user->name) ?></h5>
    <h5 class="card-title"><?= Html::encode($model->user->category->name) ?></h5>
    <h5 class="card-title"><?= Html::encode($model->status->name) ?></h5>
    <h5 class="card-title"><?= Html::encode($model->dept->name) ?></h5>
    <p class="card-text"><h5 class="card-title"><?= Html::encode($model->date_str) ?></h5></p>
    <div class="d-grid gap-2 d-md-block ">
    <?= Html::a('Просмотр', ['view', 'id' => $model->id], ['class' => 'btn btn-outline-primary']) ?>
    </div>
  </div>
</div>
</div>
</div>
