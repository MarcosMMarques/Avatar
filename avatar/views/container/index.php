<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var app\models\AvatarSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Contâineres';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="avatar-index">

    <h1><?= Html::encode("Contâiner Controle") ?></h1>

    <?= GridView::widget([
        'dataProvider' => $dataProviderControle,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute' => 'NOME',
                'label' => 'Nome do Contâiner',
            ],
            [
                'attribute' => 'SIGLA',
                'label' => 'Sigla do Contâiner',
            ],
            [
                'attribute' => 'CARACTERISTICA',
                'label' => 'Característica do Contâiner',
            ],
            [
                'class' => ActionColumn::className(),
                'template' => '',
                'urlCreator' => function ($action, $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'nomecon' => $model['NOME'], 
                                            'siglacon' => $model['SIGLA']
                                        ]);
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

    <h1><?= Html::encode("Residência") ?></h1>

    <p>
        <?= Html::a('Criar Residência', ['create-residencia'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProviderResidencia,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute' => 'NOMECON',
                'label' => 'Nome do Contâiner',
            ],
            [
                'attribute' => 'SIGLACON',
                'label' => 'Sigla do Contâiner',
            ],
            [
                'attribute' => 'NOMECOL',
                'label' => 'Nome da Colônia',
            ],
            [
                'attribute' => 'UNIDADECOL',
                'label' => 'Unidade da Colônia',
            ],
            [
                'attribute' => 'QTDBANHEIROS',
                'label' => 'Quantidade de Banheiros',
            ],
            [
                'attribute' => 'QTDCAMAS',
                'label' => 'Quantidade de Camas',
            ],
            [
                'class' => ActionColumn::className(),
                'template' => '{update} {delete}',
                'urlCreator' => function ($action, $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'nome' => $model['NOMECON'], 
                                            'sigla' => $model['SIGLACON'],
                                            'tipo' => "residencia",
                                        ]);
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

    <h1><?= Html::encode("Depósito") ?></h1>

    <p>
        <?= Html::a('Criar Depósito', ['create-deposito'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProviderDeposito,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute' => 'NOMECON',
                'label' => 'Nome do Contâiner',
            ],
            [
                'attribute' => 'SIGLACON',
                'label' => 'Sigla do Contâiner',
            ],
            [
                'attribute' => 'NOMECOL',
                'label' => 'Nome da Colônia',
            ],
            [
                'attribute' => 'UNIDADECOL',
                'label' => 'Unidade da Colônia',
            ],
            [
                'attribute' => 'TIPOMATERIAL',
                'label' => 'Tipo do Material',
            ],
            [
                'class' => ActionColumn::className(),
                'template' => '{update} {delete}',
                'urlCreator' => function ($action, $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'nome' => $model['NOMECON'], 
                                            'sigla' => $model['SIGLACON'],
                                            'tipo' => "deposito",
                                        ]);
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

    <h1><?= Html::encode("Laboratório") ?></h1>

    <p>
        <?= Html::a('Criar Laboratório', ['create-laboratorio'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProviderLaboratorio,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute' => 'NOMECON',
                'label' => 'Nome do Contâiner',
            ],
            [
                'attribute' => 'SIGLACON',
                'label' => 'Sigla do Contâiner',
            ],
            [
                'attribute' => 'NOMECOL',
                'label' => 'Nome da Colônia',
            ],
            [
                'attribute' => 'UNIDADECOL',
                'label' => 'Unidade da Colônia',
            ],
            [
                'attribute' => 'FINALIDADE',
                'label' => 'Finalidade',
            ],
            [
                'class' => ActionColumn::className(),
                'template' => '{update} {delete}',
                'urlCreator' => function ($action, $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'nome' => $model['NOMECON'], 
                                            'sigla' => $model['SIGLACON'],
                                            'tipo' => "laboratorio",
                                        ]);
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
