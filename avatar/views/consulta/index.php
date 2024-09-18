<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var app\models\AvatarSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Consulta Parte 3';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="avatar-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
    'dataProvider' => $dataProvider,
    'columns' => [
        ['class' => 'yii\grid\SerialColumn'],

        // COLÔNIA
        'COLONIA_UNIDADE',
        'COLONIA_NOME',
        'COLONIA_APELIDO',
        'COLONIA_PRESSURIZADA',
        'COLONIA_LATITUDE',
        'COLONIA_LONGITUDE',

        // EMPRESA
        'EMPRESA_REGISTRO',

        // TRABALHADORES
        'TRABALHADOR_CODIGO',
        'TRABALHADOR_NOME',
        'TRABALHADOR_ESPECIALIZACAO',

        // CONTAINERS
        'CONTAINER_NOME',
        'CONTAINER_SIGLA',
        'CONTAINER_CARACTERISTICA',

        // EQUIPAMENTOS
        'EQUIPAMENTO_CODIGO',
        'EQUIPAMENTO_NOME',
        'EQUIPAMENTO_UTILIDADE',
        'EQUIPAMENTO_ENERGIA',

        // JAZIDAS
        'JAZIDA_LATITUDE',
        'JAZIDA_LONGITUDE',
        'JAZIDA_RECURSOS',

        // MAQUINÁRIOS
        'MAQUINARIO_CODIGO',
        'MAQUINARIO_MODELO',
        'MAQUINARIO_PESO',
        'MAQUINARIO_POTENCIA',

        // Remover botões de ação
        [
            'class' => 'yii\grid\ActionColumn',
            'template' => '',
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
