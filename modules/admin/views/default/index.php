<?php

use app\models\Application;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\widgets\ListView;

/** @var yii\web\View $this */
/** @var app\models\ApplicationSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Заявки';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="application-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
    <?= Html::a('Категории', ['/admin/category'], ['class' => 'btn btn-outline-warning']) ?>
    <?= Html::a('Отделы', ['/admin/dept'], ['class' => 'btn btn-outline-info']) ?>
    </p>

    <?php  echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= ListView::widget([
        'dataProvider' => $dataProvider,
      
        'itemView' => '_list',
        'layout'=>'<div class="row row-cols-1 row-cols-md-4 g-4">{items}</div>'
    ]); ?>


</div>
