<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Avatar $model */

$this->title = 'Atualizar Contâiner: ' . $data['NOMECON'] . '/' . $data['SIGLACON'];
$this->params['breadcrumbs'][] = ['label' => 'Contâiners', 'url' => ['index']];
$this->params['breadcrumbs'][] = 'Atualizar';
?>
<div class="container-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php if (Yii::$app->session->hasFlash('success')): ?>
        <div class="alert alert-success">
            <?= Yii::$app->session->getFlash('success') ?>
        </div>
    <?php endif; ?>

    <?php if (Yii::$app->session->hasFlash('error')): ?>
        <div class="alert alert-danger">
            <?= Yii::$app->session->getFlash('error') ?>
        </div>
    <?php endif; ?>

    <div class="container-form">
        <form method="post" action="index.php?r=container/update&nome=<?=  $data['NOMECON'] ?>
            &sigla=<?=  $data['SIGLACON'] ?>&tipo=<?=  $tipo ?>">

            <div class="form-group">
                <label for="nomecon">Nome do Contâiner</label>
                <input type="text" class="form-control" id="nomecon" name="nomecon" value="<?= Html::encode($data['NOMECON']) ?>" required>
            </div>

            <div class="form-group">
                <label for="siglacon">Sigla do Contâiner</label>
                <input type="text" class="form-control" id="siglacon" name="siglacon" value="<?= Html::encode($data['SIGLACON']) ?>" required
                    pattern="^[A-Za-z]{1,10}$" title="A sigla deve conter apenas letras e ter entre 1 e 10 caracteres.">
            </div>

            <div class="form-group">
                <label for="colonia">Colônia</label>
                <select class="form-control" id="colonia" name="colonia" required>
                    <option value="">Selecione uma Colonia</option>
                    <?php foreach ($colonias as $colonia): ?>
                        <option value="<?= Html::encode($colonia['NOME'] . '+' . $colonia['UNIDADE']) ?>"
                            <?= ($data['NOMECOL'] == $colonia['NOME'] && $data['UNIDADECOL'] == $colonia['UNIDADE']) ? 'selected' : '' ?>>
                            <?= Html::encode('Nome: ' . $colonia['NOME'] . ', Unidade: ' . $colonia['UNIDADE']) ?>
                        </option>
                    <?php endforeach; ?>
                </select> 
            </div>

            <?php if($tipo == 'residencia'): ?>
                <div class="form-group">
                    <label for="qtdbanheiros">Quantidade de Banheiros</label>
                    <input type="number" class="form-control" id="qtdbanheiros" name="qtdbanheiros" value="<?= Html::encode($data['QTDBANHEIROS']) ?>" required>
                </div>

                <div class="form-group">
                    <label for="qtdcamas">Quantidade de Camas</label>
                    <input type="number" class="form-control" id="qtdcamas" name="qtdcamas" value="<?= Html::encode($data['QTDCAMAS']) ?>" required>
                </div>
            <?php endif; ?>

            <?php if($tipo == 'deposito'): ?>
                <div class="form-group">
                    <label for="tipomaterial">Tipo do Material</label>
                    <input type="text" class="form-control" id="tipomaterial" name="tipomaterial" value="<?= Html::encode($data['TIPOMATERIAL']) ?>" required>
                </div>
            <?php endif; ?>


            <?php if($tipo == 'laboratorio'): ?>
                <div class="form-group">
                    <label for="finalidade">Finalidade</label>
                    <input type="text" class="form-control" id="finalidade" name="finalidade" value="<?= Html::encode($data['FINALIDADE']) ?>" required>
                </div>
            <?php endif; ?>

            <button type="submit" class="btn btn-primary">Atualizar Contâiner</button>
        </form>
    </div>
</div>
