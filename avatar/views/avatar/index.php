<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var app\models\AvatarSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Avatares';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="avatar-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Avatar', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'CODIGO',
            [
                'attribute' => 'AVATAR_NOME',
                'label' => 'Nome do Avatar',
            ],
            [
                'attribute' => 'NAVI_NOME',
                'label' => 'Nome do Navi',
            ],
            'CODIGOHUMANO',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'codigo' => $model['CODIGO']]);
                 }
            ],
        ],
        'pager' => [
            'class' => 'yii\widgets\LinkPager',
            'options' => ['class' => 'pagination custom-pagination'],  
            'linkOptions' => ['class' => 'page-link'],  
            'activePageCssClass' => 'active',  
            'disabledPageCssClass' => 'disabled',  
        ],
    ]); ?>


</div>
