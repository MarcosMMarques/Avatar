<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Avatar $model */

$this->title = "Criar Contâiner Residência";
$this->params["breadcrumbs"][] = ["label" => "Contâiners", "url" => ["index"]];
$this->params["breadcrumbs"][] = $this->title;
?>
<div class="residencia-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <div class="residencia-form">
        <form method="post" action="index.php?r=container/create-residencia">

            <div class="form-group">
                <label for="nomecon">Nome do Contâiner</label>
                <input type="text" class="form-control" id="nomecon" name="nomecon" required>
            </div>

            <div class="form-group">
                <label for="siglacon">Sigla do Contâiner</label>
                <input type="text" class="form-control" id="siglacon" name="siglacon" required
                    pattern="^[A-Za-z]{1,10}$" title="A sigla deve conter apenas letras e ter entre 1 e 10 caracteres.">
            </div>

            <div class="form-group">
                <label for="colonia">Colônia</label>
                <select class="form-control" id="colonia" name="colonia" required>
                    <option value="">Selecione uma Colonia</option>
                    <?php foreach ($colonias as $colonia): ?>
                        <option value="<?= Html::encode(
                            $colonia["NOME"] . "+" . $colonia["UNIDADE"]
                        ) ?>">
                            <?= Html::encode(
                                "Nome: " .
                                    $colonia["NOME"] .
                                    ", Unidade: " .
                                    $colonia["UNIDADE"]
                            ) ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </div>

            <div class="form-group">
                <label for="qtdbanheiros">Quantidade de Banheiros</label>
                <input type="number" class="form-control" id="qtdbanheiros" name="qtdbanheiros" required>
            </div>

            <div class="form-group">
                <label for="qtdcamas">Quantidade de Camas</label>
                <input type="number" class="form-control" id="qtdcamas" name="qtdcamas" required>
            </div>

            <button type="submit" class="btn btn-primary">Criar Residência</button>
        </form>
    </div>
</div>
