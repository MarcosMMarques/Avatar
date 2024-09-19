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
    public $dsn = "oci:dbname=//200.131.242.43:1521/IFNMGPDB;charset=AL32UTF8";
    public $username = "mdmm31662";
    public $password = "BbP1fFYS1nIzNoLH8Fxt";

    /**
     * @inheritDoc
     */
    public function behaviors()
    {
        return array_merge(parent::behaviors(), [
            "verbs" => [
                "class" => VerbFilter::className(),
                "actions" => [
                    "delete" => ["POST"],
                ],
            ],
        ]);
    }

    /**
     * Lists all Avatar models.
     *
     * @return string
     */
    public function actionIndex()
    {
        try {
            $pdo = new PDO($this->dsn, $this->username, $this->password);

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
                "allModels" => $avatars,
                "sort" => [
                    "attributes" => [
                        "CODIGO",
                        "AVATAR_NOME",
                        "NAVI_NOME",
                        "CODIGOHUMANO",
                    ],
                    "defaultOrder" => [
                        "CODIGO" => SORT_ASC,
                    ],
                ],
            ]);

            return $this->render("index", [
                "dataProvider" => $dataProvider,
            ]);
        } catch (PDOException $e) {
            return "Erro: " . $e->getMessage();
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
        try {
            $pdo = new PDO($this->dsn, $this->username, $this->password);

            $sql = "SELECT A.CODIGO, A.NOME AS AVATAR_NOME, A.CODIGONAVI,
                A.CODIGOHUMANO, N.NOME AS NAVI_NOME, N.ALTURA,
                N.TAMCAUDA FROM P3_AVATAR A JOIN P3_NAVI N ON
                A.CODIGONAVI = N.CODIGOSER WHERE A.CODIGO = :codigo";

            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(":codigo", $codigo);
            $stmt->execute();
            $avatar = $stmt->fetch(PDO::FETCH_ASSOC);

            if (!$avatar) {
                Yii::$app->session->setFlash("error", "Avatar não encontrado.");
                return $this->redirect(["index"]);
            }
        } catch (PDOException $e) {
            Yii::$app->session->setFlash(
                "error",
                "Erro ao visualizar avatar: " . $e->getMessage()
            );
        }

        return $this->render("view", [
            "avatar" => $avatar,
        ]);
    }

    /**
     * Creates a new Avatar model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return string|\yii\web\Response
     */
    public function actionCreate()
    {
        $pdo = new PDO($this->dsn, $this->username, $this->password);

        if (Yii::$app->request->isPost) {
            $nome = Yii::$app->request->post("nome");
            $codigoNavi = Yii::$app->request->post("codigoNavi");
            $codigoHumano = Yii::$app->request->post("codigoHumano");

            try {
                $sql =
                    "INSERT INTO P3_AVATAR (CODIGO, NOME, CODIGONAVI, CODIGOHUMANO) VALUES (P3_AVATAR_SEQ.NEXTVAL, :nome, :codigoNavi, :codigoHumano)";
                $stmt = $pdo->prepare($sql);

                $stmt->bindParam(":nome", $nome);
                $stmt->bindParam(":codigoNavi", $codigoNavi);
                $stmt->bindParam(":codigoHumano", $codigoHumano);

                $stmt->execute();

                Yii::$app->session->setFlash(
                    "success",
                    "Avatar criado com sucesso!"
                );
                return $this->redirect(["index"]);
            } catch (PDOException $e) {
                Yii::$app->session->setFlash(
                    "error",
                    "Erro ao criar avatar: " . $e->getMessage()
                );
            }
        }

        try {
            $sql = "SELECT CODIGOSER, NOME FROM P3_NAVI";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            $navis = $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            Yii::$app->session->setFlash(
                "error",
                "Erro ao buscar Navis: " . $e->getMessage()
            );
            return $this->redirect(["index"]);
        }

        try {
            $sql = "SELECT CODIGO FROM P3_HUMANO";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            $humanos = $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            Yii::$app->session->setFlash(
                "error",
                "Erro ao buscar Humanos: " . $e->getMessage()
            );
            return $this->redirect(["index"]);
        }

        return $this->render("create", [
            "navis" => $navis,
            "humanos" => $humanos,
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
        try {
            $pdo = new PDO($this->dsn, $this->username, $this->password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            $sql = "SELECT * FROM P3_AVATAR WHERE CODIGO = :codigo";
            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(":codigo", $codigo);
            $stmt->execute();
            $avatar = $stmt->fetch(PDO::FETCH_ASSOC);

            if (!$avatar) {
                Yii::$app->session->setFlash("error", "Avatar não encontrado.");
                return $this->redirect(["index"]);
            }

            if (Yii::$app->request->isPost) {
                $nome = Yii::$app->request->post("nome");
                $codigoNavi = Yii::$app->request->post("codigoNavi");
                $codigoHumano = Yii::$app->request->post("codigoHumano");

                $sql =
                    "UPDATE P3_AVATAR SET NOME = :nome, CODIGONAVI = :codigoNavi, CODIGOHUMANO = :codigoHumano WHERE CODIGO = :codigo";
                $stmt = $pdo->prepare($sql);

                $stmt->bindParam(":nome", $nome);
                $stmt->bindParam(":codigoNavi", $codigoNavi);
                $stmt->bindParam(":codigoHumano", $codigoHumano);
                $stmt->bindParam(":codigo", $codigo);

                $stmt->execute();

                Yii::$app->session->setFlash(
                    "success",
                    "Avatar atualizado com sucesso!"
                );
                return $this->redirect(["index"]);
            }
        } catch (PDOException $e) {
            Yii::$app->session->setFlash(
                "error",
                "Erro ao atualizar avatar: " . $e->getMessage()
            );
        }

        try {
            $sql = "SELECT CODIGOSER, NOME FROM P3_NAVI";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            $navis = $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            Yii::$app->session->setFlash(
                "error",
                "Erro ao buscar Navis: " . $e->getMessage()
            );
            return $this->redirect(["index"]);
        }

        try {
            $sql = "SELECT CODIGO FROM P3_HUMANO";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            $humanos = $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            Yii::$app->session->setFlash(
                "error",
                "Erro ao buscar Humanos: " . $e->getMessage()
            );
            return $this->redirect(["index"]);
        }

        return $this->render("update", [
            "avatar" => $avatar,
            "navis" => $navis,
            "humanos" => $humanos,
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
        try {
            $pdo = new PDO($this->dsn, $this->username, $this->password);

            $sql = "DELETE FROM P3_AVATAR WHERE CODIGO = :codigo";
            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(":codigo", $codigo);
            $stmt->execute();
        } catch (PDOException $e) {
            Yii::$app->session->setFlash(
                "error",
                "Erro ao visualizar avatar: " . $e->getMessage()
            );
        }

        return $this->redirect(["index"]);
    }
}
