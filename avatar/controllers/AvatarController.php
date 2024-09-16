<?php

namespace app\controllers;

use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\data\ArrayDataProvider;
use Yii;
use PDO;

/**
 * AvatarController implements the CRUD actions for Avatar model.
 */
class AvatarController extends Controller
{
    public $enableCsrfValidation = false;

    /**
     * @inheritDoc
     */
    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'verbs' => [
                    'class' => VerbFilter::className(),
                    'actions' => [
                        'delete' => ['POST'],
                    ],
                ],
            ]
        );
    }

    /**
     * Lists all Avatar models.
     *
     * @return string
     */
    public function actionIndex()
    {

        $dsn = 'oci:dbname=//localhost:1521/orcl';  
        $username = 'C##MARCOS';
        $password = 'admin';

        try {
            $pdo = new PDO($dsn, $username, $password);

            $stmt = $pdo->prepare("
                SELECT 
                    P3_AVATAR.CODIGO AS CODIGO, 
                    P3_AVATAR.NOME AS AVATAR_NOME, 
                    P3_NAVI.NOME AS NAVI_NOME, 
                    P3_AVATAR.CODIGOHUMANO,
                    P3_NAVI.CODIGOSER
                FROM P3_AVATAR 
                LEFT JOIN P3_NAVI ON P3_NAVI.CODIGOSER = P3_AVATAR.CODIGONAVI
            ");
            $stmt->execute();
            $avatars = $stmt->fetchAll(PDO::FETCH_ASSOC);

            Yii::Debug($avatars);

            $dataProvider = new ArrayDataProvider([
                'allModels' => $avatars,  
                'sort' => [
                    'attributes' => ['CODIGO', 'NOME', 'CODIGONAVI', 'CODIGOHUMANO'],  
                    'defaultOrder' => [
                        'CODIGO' => SORT_ASC,  
                    ],
                ],
            ]);

            return $this->render('index', [
                'dataProvider' => $dataProvider,
            ]);

        } catch (PDOException $e) {
            return 'Erro: ' . $e->getMessage();
        }
    }

    /**
     * Displays a single Avatar model.
     * @param int $CODIGO Codigo
     * @return string
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($codigo)
    {
        $dsn = 'oci:dbname=//localhost:1521/orcl';
        $username = 'C##MARCOS';
        $password = 'admin';

        try {
            $pdo = new PDO($dsn, $username, $password);

            $sql = "SELECT * FROM P3_AVATAR WHERE CODIGO = :codigo";
            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(':codigo', $codigo);
            $stmt->execute();
            $avatar = $stmt->fetch(PDO::FETCH_ASSOC);

            if (!$avatar) {
                Yii::$app->session->setFlash('error', 'Avatar não encontrado.');
                return $this->redirect(['index']);
            }
        } catch (PDOException $e) {
            Yii::$app->session->setFlash('error', 'Erro ao visualizar avatar: ' . $e->getMessage());
        }

        return $this->render('view', [
            'avatar' => $avatar,
        ]);
    }

    /**
     * Creates a new Avatar model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return string|\yii\web\Response
     */
    public function actionCreate()
    {
        $dsn = 'oci:dbname=//localhost:1521/orcl';  
        $username = 'C##MARCOS';
        $password = 'admin';
        $pdo = new PDO($dsn, $username, $password);

        if (Yii::$app->request->isPost) {
            $codigo = Yii::$app->request->post('codigo');
            $nome = Yii::$app->request->post('nome');
            $codigoNavi = Yii::$app->request->post('codigoNavi');
            $codigoHumano = Yii::$app->request->post('codigoHumano');

            try {

                $sql = "INSERT INTO P3_AVATAR (CODIGO, NOME, CODIGONAVI, CODIGOHUMANO) VALUES (:codigo, :nome, :codigoNavi, :codigoHumano)";
                $stmt = $pdo->prepare($sql);

                $stmt->bindParam(':codigo', $codigo);
                $stmt->bindParam(':nome', $nome);
                $stmt->bindParam(':codigoNavi', $codigoNavi);
                $stmt->bindParam(':codigoHumano', $codigoHumano);

                $stmt->execute();

                Yii::$app->session->setFlash('success', 'Avatar criado com sucesso!');
                return $this->redirect(['index']);

            } catch (PDOException $e) {
                Yii::$app->session->setFlash('error', 'Erro ao criar avatar: ' . $e->getMessage());
            }
        }

        try {
            $sql = "SELECT CODIGOSER, NOME FROM P3_NAVI";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            $navis = $stmt->fetchAll(PDO::FETCH_ASSOC);

        } catch (PDOException $e) {
            Yii::$app->session->setFlash('error', 'Erro ao buscar Navis: ' . $e->getMessage());
            return $this->redirect(['index']);
        }

        try {
            $sql = "SELECT CODIGO FROM P3_HUMANO";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            $humanos = $stmt->fetchAll(PDO::FETCH_ASSOC);

        } catch (PDOException $e) {
            Yii::$app->session->setFlash('error', 'Erro ao buscar Humanos: ' . $e->getMessage());
            return $this->redirect(['index']);
        }

        return $this->render('create', [
            'navis' => $navis,
            'humanos' => $humanos,
        ]);
    }

    /**
     * Updates an existing Avatar model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $CODIGO Codigo
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($codigo)
    {
        $dsn = 'oci:dbname=//localhost:1521/orcl';
        $username = 'C##MARCOS';
        $password = 'admin';

        try {
            $pdo = new PDO($dsn, $username, $password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            $sql = "SELECT * FROM P3_AVATAR WHERE CODIGO = :codigo";
            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(':codigo', $codigo);
            $stmt->execute();
            $avatar = $stmt->fetch(PDO::FETCH_ASSOC);

            if (!$avatar) {
                Yii::$app->session->setFlash('error', 'Avatar não encontrado.');
                return $this->redirect(['index']);
            }

            if (Yii::$app->request->isPost) {
                $nome = Yii::$app->request->post('nome');
                $codigoNavi = Yii::$app->request->post('codigoNavi');
                $codigoHumano = Yii::$app->request->post('codigoHumano');

                $sql = "UPDATE P3_AVATAR SET NOME = :nome, CODIGONAVI = :codigoNavi, CODIGOHUMANO = :codigoHumano WHERE CODIGO = :codigo";
                $stmt = $pdo->prepare($sql);

                $stmt->bindParam(':nome', $nome);
                $stmt->bindParam(':codigoNavi', $codigoNavi);
                $stmt->bindParam(':codigoHumano', $codigoHumano);
                $stmt->bindParam(':codigo', $codigo);  

                $stmt->execute();

                Yii::$app->session->setFlash('success', 'Avatar atualizado com sucesso!');
                return $this->redirect(['index']);
            }

        } catch (PDOException $e) {
            Yii::$app->session->setFlash('error', 'Erro ao atualizar avatar: ' . $e->getMessage());
        }

        try {
            $sql = "SELECT CODIGOSER, NOME FROM P3_NAVI";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            $navis = $stmt->fetchAll(PDO::FETCH_ASSOC);

        } catch (PDOException $e) {
            Yii::$app->session->setFlash('error', 'Erro ao buscar Navis: ' . $e->getMessage());
            return $this->redirect(['index']);
        }

        try {
            $sql = "SELECT CODIGO FROM P3_HUMANO";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            $humanos = $stmt->fetchAll(PDO::FETCH_ASSOC);

        } catch (PDOException $e) {
            Yii::$app->session->setFlash('error', 'Erro ao buscar Humanos: ' . $e->getMessage());
            return $this->redirect(['index']);
        }

        return $this->render('update', [
            'avatar' => $avatar,
            'navis' => $navis,
            'humanos' => $humanos,
        ]);
    }

    /**
     * Deletes an existing Avatar model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $CODIGO Codigo
     * @return \yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($codigo)
    {
        $dsn = 'oci:dbname=//localhost:1521/orcl';
        $username = 'C##MARCOS';
        $password = 'admin';

        try {
            $pdo = new PDO($dsn, $username, $password);

            $sql = "DELETE FROM P3_AVATAR WHERE CODIGO = :codigo";
            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(':codigo', $codigo);
            $stmt->execute();
        } catch (PDOException $e) {
            Yii::$app->session->setFlash('error', 'Erro ao visualizar avatar: ' . $e->getMessage());
        }

        return $this->redirect(['index']);
    }
}
