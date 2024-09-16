<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/** @var yii\web\View $this */
/** @var app\models\AvatarSearch $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="avatar-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'CODIGO') ?>

    <?= $form->field($model, 'NOME') ?>

    <?= $form->field($model, 'CODIGONAVI') ?>

    <?= $form->field($model, 'CODIGOHUMANO') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
