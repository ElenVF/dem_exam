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
    <h5 class="card-title"><?= Html::encode($model->description) ?></h5>
    <p class="card-text"><h5 class="card-title"><?= Html::encode($model->date_str) ?></h5></p>
    
    <p class="card-text"> <?= Html::a('Просмотр', ['view', 'id' => $model->id], ['class' => 'btn btn-outline-info']) ?> </p>
    <p>
    <?= ($model->status_id==1)?Html::a('На рассмотрении', ['load', 'id' => $model->id], ['class' => 'btn btn-outline-warning','data'=>['method'=>'post']]):'' ?>
    <?= ($model->status_id==2)?Html::a('Выполнена', ['confirm', 'id' => $model->id], ['class' => 'btn btn-outline-success','data'=>['method'=>'post']]):'' ?>
    <?=($model->status_id==2)? Html::a('Отклонена', ['reject', 'id' => $model->id], ['class' => 'btn btn-outline-danger','data'=>['method'=>'post']]):'' ?>
</p>
  </div>
</div>
</div>
</div>
