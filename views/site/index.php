<?php

/** @var yii\web\View $this */

use yii\bootstrap5\Carousel;

$this->title = 'My Yii Application';
?>
<div class="site-index">

    <div class="jumbotron text-center bg-transparent mt-5 mb-5">
        <h1 class="display-4">Мфц</h1>

        <p class="lead">Поможем каждому!</p>

       
    <div class="body-content carousel">
<div class="carousel slide">
<?= Carousel::widget([
       
        'items' => [
        // the item contains only the image
        '<img class="d-block w-100" src="/image/1.jpg">',
        '<img class="d-block w-100" src="/image/2.jpg">',
        '<img class="d-block w-100" src="/image/3.jpg">',
    ]]); ?>
    </div>
</div>
