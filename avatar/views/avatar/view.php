<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/** @var yii\web\View $this */
/** @var app\models\Avatar $model */

$this->title = $avatar["CODIGO"];
$this->params["breadcrumbs"][] = ["label" => "Avatares", "url" => ["index"]];
$this->params["breadcrumbs"][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="avatar-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(
            "Update",
            ["update", "CODIGO" => $avatar["CODIGO"]],
            ["class" => "btn btn-primary"]
        ) ?>
        <?= Html::a(
            "Delete",
            ["delete", "CODIGO" => $avatar["CODIGO"]],
            [
                "class" => "btn btn-danger",
                "data" => [
                    "confirm" => "Are you sure you want to delete this item?",
                    "method" => "post",
                ],
            ]
        ) ?>
    </p>

    <?= Yii::Debug($avatar) ?>

    <?= DetailView::widget([
        "model" => $avatar,
        "attributes" => [
            "CODIGO",
            [
                "label" => "Nome do Avatar",
                "attribute" => "AVATAR_NOME",
            ],
            [
                "label" => "Código do Na'vi",
                "attribute" => "CODIGONAVI",
            ],
            [
                "label" => "Nome do Na'vi",
                "attribute" => "NAVI_NOME",
            ],
            [
                "label" => "Altura do Na'vi",
                "attribute" => "ALTURA",
            ],
            [
                "label" => "Tamanho da Cauda do Na'vi",
                "attribute" => "TAMCAUDA",
            ],
            [
                "label" => "Código do Humano",
                "attribute" => "CODIGOHUMANO",
            ],
        ],
    ]) ?>

</div>
