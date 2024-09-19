<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Avatar $model */

$this->title = "Create Avatar";
$this->params["breadcrumbs"][] = ["label" => "Avatars", "url" => ["index"]];
$this->params["breadcrumbs"][] = $this->title;
?>
<div class="avatar-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php if (Yii::$app->session->hasFlash("success")): ?>
        <div class="alert alert-success">
            <?= Yii::$app->session->getFlash("success") ?>
        </div>
    <?php endif; ?>

    <?php if (Yii::$app->session->hasFlash("error")): ?>
        <div class="alert alert-danger">
            <?= Yii::$app->session->getFlash("error") ?>
        </div>
    <?php endif; ?>

    <div class="avatar-form">
        <form method="post" action="index.php?r=avatar/create">

            <!-- <div class="form-group">
                <label for="codigo">Código</label>
                <input type="number" class="form-control" id="codigo" name="codigo" required>
            </div> -->

            <div class="form-group">
                <label for="nome">Nome do Avatar</label>
                <input type="text" class="form-control" id="nome" name="nome" required>
            </div>

            <div class="form-group">
                <label for="codigoNavi">Navi</label>
                <select class="form-control" id="codigoNavi" name="codigoNavi" required>
                    <option value="">Selecione um Navi</option>
                    <?php foreach ($navis as $navi): ?>
                        <option value="<?= Html::encode($navi["CODIGOSER"]) ?>">
                            <?= Html::encode(
                                "Código: " .
                                    $navi["CODIGOSER"] .
                                    ", Nome: " .
                                    $navi["NOME"]
                            ) ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </div>

            <div class="form-group">
                <label for="codigoHumano">Humano</label>
                <select class="form-control" id="codigoHumano" name="codigoHumano" required>
                    <option value="">Selecione um Humano</option>
                    <?php foreach ($humanos as $humano): ?>
                        <option value="<?= Html::encode($humano["CODIGO"]) ?>">
                            <?= Html::encode("Código: " . $humano["CODIGO"]) ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Criar Avatar</button>
        </form>
    </div>
</div>
