<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Avatar $model */

$this->title = 'Atualizar Avatar: ' . $avatar['CODIGO'];
$this->params['breadcrumbs'][] = ['label' => 'Avatars', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $avatar['CODIGO'], 'url' => ['view', 'CODIGO' => $avatar['CODIGO']]];
$this->params['breadcrumbs'][] = 'Atualizar';
?>
<div class="avatar-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <div class="avatar-form">

    <form method="post" action="index.php?r=avatar/update&codigo=<?= $avatar['CODIGO'] ?>">

        <div class="form-group">
            <label for="nome">Nome do Avatar</label>
            <input type="text" class="form-control" id="nome" name="nome" value="<?= Html::encode($avatar['NOME']) ?>" required>
        </div>
        
        <div class="form-group">
            <label for="codigoNavi">Navi</label>
            <select class="form-control" id="codigoNavi" name="codigoNavi" required>
                <option value="">Selecione um Navi</option>
                <?php foreach ($navis as $navi): ?>
                    <option value="<?= Html::encode($navi['CODIGOSER']) ?>" 
                        <?= ($navi['CODIGOSER'] == $avatar['CODIGONAVI']) ? 'selected' : '' ?>>
                        <?= Html::encode('Código: ' . $navi['CODIGOSER'] . ', Nome: ' . $navi['NOME']) ?>
                    </option>
                <?php endforeach; ?>
            </select>
        </div>


            <div class="form-group">
                <label for="codigoHumano">Humano</label>
                <select class="form-control" id="codigoHumano" name="codigoHumano" required>
                    <option value="">Selecione um Humano</option>
                    <?php foreach ($humanos as $humano): ?>
                        <option value="<?= Html::encode($humano['CODIGO']) ?>"
                            <?= ($humano['CODIGO'] == $humano['CODIGO']) ? 'selected' : '' ?>>
                            <?= Html::encode('Código: ' . $humano['CODIGO']) ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </div>
        <button type="submit" class="btn btn-primary">Criar Avatar</button>
    </form>

</div>

</div>
