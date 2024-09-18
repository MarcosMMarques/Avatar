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
class ContainerController extends Controller
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

            $stmt = $pdo->prepare("SELECT * FROM P3_CONTAINERCONTROLE");
            $stmt->execute();
            $controle = $stmt->fetchAll(PDO::FETCH_ASSOC);

            $stmt = $pdo->prepare("SELECT * FROM P3_RESIDENCIA");
            $stmt->execute();
            $residencia = $stmt->fetchAll(PDO::FETCH_ASSOC);

            $stmt = $pdo->prepare("SELECT * FROM P3_DEPOSITO");
            $stmt->execute();
            $deposito = $stmt->fetchAll(PDO::FETCH_ASSOC);

            $stmt = $pdo->prepare("SELECT * FROM P3_LABORATORIO");
            $stmt->execute();
            $laboratorio = $stmt->fetchAll(PDO::FETCH_ASSOC);

            $dataProviderControle = new ArrayDataProvider([
                'allModels' => $controle,  
                'sort' => [
                    'attributes' => ['NOME', 'SIGLA', 'CARACTERISTICA'],  
                    'defaultOrder' => [
                        'NOME' => SORT_ASC,
                        'SIGLA' => SORT_ASC,    
                    ],
                ],
            ]);

            $dataProviderResidencia = new ArrayDataProvider([
                'allModels' => $residencia,  
                'sort' => [
                    'attributes' => ['NOMECON', 'SIGLACON', 'UNIDADECOL', 'NOMECOL', 'QTDBANHEIROS', 'QTDCAMAS'],  
                    'defaultOrder' => [
                        'NOMECON' => SORT_ASC,
                        'SIGLACON' => SORT_ASC,    
                    ],
                ],
            ]);

            $dataProviderDeposito = new ArrayDataProvider([
                'allModels' => $deposito,  
                'sort' => [
                    'attributes' => ['NOMECON', 'SIGLACON', 'UNIDADECOL', 'NOMECOL'],  
                    'defaultOrder' => [
                        'NOMECON' => SORT_ASC,
                        'SIGLACON' => SORT_ASC,    
                    ],
                ],
            ]);

            $dataProviderLaboratorio = new ArrayDataProvider([
                'allModels' => $laboratorio,  
                'sort' => [
                    'attributes' => ['NOMECON', 'SIGLACON', 'UNIDADECOL', 'NOMECOL'],  
                    'defaultOrder' => [
                        'NOMECON' => SORT_ASC,
                        'SIGLACON' => SORT_ASC,    
                    ],
                ],
            ]);

            return $this->render('index', [
                'dataProviderControle' => $dataProviderControle,
                'dataProviderResidencia' => $dataProviderResidencia,
                'dataProviderDeposito' => $dataProviderDeposito,
                'dataProviderLaboratorio' => $dataProviderLaboratorio,
            ]);

        } catch (PDOException $e) {
            return 'Erro: ' . $e->getMessage();
        }
    }

    public function actionCreateResidencia()
    {
        $dsn = 'oci:dbname=//localhost:1521/orcl';  
        $username = 'C##MARCOS';
        $password = 'admin';
        $pdo = new PDO($dsn, $username, $password);

        if (Yii::$app->request->isPost) {
            $nomecon = Yii::$app->request->post('nomecon');
            $siglacon = Yii::$app->request->post('siglacon');
            $colonia = explode('+', Yii::$app->request->post('colonia'));
            $nomecol = $colonia[0];
            $unidadecol = $colonia[1];
            $qtdbanheiros = Yii::$app->request->post('qtdbanheiros');
            $qtdcamas = Yii::$app->request->post('qtdcamas');
            $caracteristica = 'residencia';
           
            try {
                $pdo->beginTransaction();

                //Insere em ContainerCotnrole
                $sql = "INSERT INTO P3_CONTAINERCONTROLE (NOME, SIGLA, CARACTERISTICA) VALUES (:nomecon, :siglacon, :caracteristica)";
                $stmt1 = $pdo->prepare($sql);

                $stmt1->bindParam(':nomecon', $nomecon);
                $stmt1->bindParam(':siglacon', $siglacon);
                $stmt1->bindParam(':caracteristica', $caracteristica);
                $stmt1->execute();

                //Insere especialização
                $sql = "INSERT INTO P3_RESIDENCIA (NOMECON, SIGLACON, NOMECOL, UNIDADECOL, QTDBANHEIROS, QTDCAMAS) 
                        VALUES (:nomecon, :siglacon, :nomecol, :unidadecol, :qtdbanheiros, :qtdcamas)";
                $stmt2 = $pdo->prepare($sql);

                $stmt2->bindParam(':nomecon', $nomecon);
                $stmt2->bindParam(':siglacon', $siglacon);
                $stmt2->bindParam(':nomecol', $nomecol);
                $stmt2->bindParam(':unidadecol', $unidadecol);
                $stmt2->bindParam(':qtdbanheiros', $qtdbanheiros);
                $stmt2->bindParam(':qtdcamas', $qtdcamas);
                $stmt2->execute();

                $pdo->commit();
                Yii::$app->session->setFlash('success', 'Residência criada com sucesso!');
                return $this->redirect(['index']);
            } catch (PDOException $e) {
                $pdo->rollBack();
                Yii::$app->session->setFlash('error', 'Erro ao criar residência: ' . $e->getMessage());
                return $this->redirect(['create-residencia']);
            }
        }

        try {
            $sql = "SELECT UNIDADE, NOME FROM P3_COLONIA";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            $colonias = $stmt->fetchAll(PDO::FETCH_ASSOC);

        } catch (PDOException $e) {
            Yii::$app->session->setFlash('error', 'Erro ao buscar Colônias: ' . $e->getMessage());
            return $this->redirect(['index']);
        }

        return $this->render('create-residencia', [
            'colonias' => $colonias,
        ]);
    }

    public function actionCreateDeposito()
    {
        $dsn = 'oci:dbname=//localhost:1521/orcl';  
        $username = 'C##MARCOS';
        $password = 'admin';
        $pdo = new PDO($dsn, $username, $password);

        if (Yii::$app->request->isPost) {
            $nomecon = Yii::$app->request->post('nomecon');
            $siglacon = Yii::$app->request->post('siglacon');
            $colonia = explode('+', Yii::$app->request->post('colonia'));
            $nomecol = $colonia[0];
            $unidadecol = $colonia[1];
            $tipomaterial= Yii::$app->request->post('tipomaterial');
            $caracteristica = 'deposito';
           
            try {
                $pdo->beginTransaction();

                //Insere em ContainerCotnrole
                $sql = "INSERT INTO P3_CONTAINERCONTROLE (NOME, SIGLA, CARACTERISTICA) VALUES (:nomecon, :siglacon, :caracteristica)";
                $stmt1 = $pdo->prepare($sql);

                $stmt1->bindParam(':nomecon', $nomecon);
                $stmt1->bindParam(':siglacon', $siglacon);
                $stmt1->bindParam(':caracteristica', $caracteristica);
                $stmt1->execute();

                //Insere especialização
                $sql = "INSERT INTO P3_DEPOSITO (NOMECON, SIGLACON, NOMECOL, UNIDADECOL, TIPOMATERIAL) 
                        VALUES (:nomecon, :siglacon, :nomecol, :unidadecol, :tipomaterial)";
                $stmt2 = $pdo->prepare($sql);

                $stmt2->bindParam(':nomecon', $nomecon);
                $stmt2->bindParam(':siglacon', $siglacon);
                $stmt2->bindParam(':nomecol', $nomecol);
                $stmt2->bindParam(':unidadecol', $unidadecol);
                $stmt2->bindParam(':tipomaterial', $tipomaterial);
                $stmt2->execute();

                $pdo->commit();
                Yii::$app->session->setFlash('success', 'Depósito criada com sucesso!');
                return $this->redirect(['index']);
            } catch (PDOException $e) {
                $pdo->rollBack();
                Yii::$app->session->setFlash('error', 'Erro ao criar depósito: ' . $e->getMessage());
                return $this->redirect(['create-residencia']);
            }
        }

        try {
            $sql = "SELECT UNIDADE, NOME FROM P3_COLONIA";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            $colonias = $stmt->fetchAll(PDO::FETCH_ASSOC);

        } catch (PDOException $e) {
            Yii::$app->session->setFlash('error', 'Erro ao buscar Colônias: ' . $e->getMessage());
            return $this->redirect(['index']);
        }

        return $this->render('create-deposito', [
            'colonias' => $colonias,
        ]);
    }

    public function actionCreateLaboratorio()
    {
        $dsn = 'oci:dbname=//localhost:1521/orcl';  
        $username = 'C##MARCOS';
        $password = 'admin';
        $pdo = new PDO($dsn, $username, $password);

        if (Yii::$app->request->isPost) {
            $nomecon = Yii::$app->request->post('nomecon');
            $siglacon = Yii::$app->request->post('siglacon');
            $colonia = explode('+', Yii::$app->request->post('colonia'));
            $nomecol = $colonia[0];
            $unidadecol = $colonia[1];
            $finalidade = Yii::$app->request->post('finalidade');
            $caracteristica = 'laboratorio';
           
            try {
                $pdo->beginTransaction();

                //Insere em ContainerCotnrole
                $sql = "INSERT INTO P3_CONTAINERCONTROLE (NOME, SIGLA, CARACTERISTICA) VALUES (:nomecon, :siglacon, :caracteristica)";
                $stmt1 = $pdo->prepare($sql);

                $stmt1->bindParam(':nomecon', $nomecon);
                $stmt1->bindParam(':siglacon', $siglacon);
                $stmt1->bindParam(':caracteristica', $caracteristica);
                $stmt1->execute();

                //Insere especialização
                $sql = "INSERT INTO P3_LABORATORIO (NOMECON, SIGLACON, NOMECOL, UNIDADECOL, FINALIDADE) 
                        VALUES (:nomecon, :siglacon, :nomecol, :unidadecol, :finalidade)";
                $stmt2 = $pdo->prepare($sql);

                $stmt2->bindParam(':nomecon', $nomecon);
                $stmt2->bindParam(':siglacon', $siglacon);
                $stmt2->bindParam(':nomecol', $nomecol);
                $stmt2->bindParam(':unidadecol', $unidadecol);
                $stmt2->bindParam(':finalidade', $finalidade);
                $stmt2->execute();

                $pdo->commit();
                Yii::$app->session->setFlash('success', 'Laboratório criada com sucesso!');
                return $this->redirect(['index']);
            } catch (PDOException $e) {
                $pdo->rollBack();
                Yii::$app->session->setFlash('error', 'Erro ao criar laboratório: ' . $e->getMessage());
                return $this->redirect(['create-laboratorio']);
            }
        }

        try {
            $sql = "SELECT UNIDADE, NOME FROM P3_COLONIA";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            $colonias = $stmt->fetchAll(PDO::FETCH_ASSOC);

        } catch (PDOException $e) {
            Yii::$app->session->setFlash('error', 'Erro ao buscar Colônias: ' . $e->getMessage());
            return $this->redirect(['index']);
        }

        return $this->render('create-laboratorio', [
            'colonias' => $colonias,
        ]);
    }

    /**
     * Updates an existing Avatar model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $CODIGO Codigo
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($nome, $sigla, $tipo)
    {
        $dsn = 'oci:dbname=//localhost:1521/orcl';
        $username = 'C##MARCOS';
        $password = 'admin';

        try {
            $pdo = new PDO($dsn, $username, $password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            if (!Yii::$app->request->isPost) {
                if($tipo == 'residencia'){
                    $sql = "SELECT * FROM P3_RESIDENCIA WHERE NOMECON = :nome AND SIGLACON = :sigla";
                } else if($tipo == 'laboratorio'){
                    $sql = "SELECT * FROM P3_LABORATORIO WHERE NOMECON = :nome AND SIGLACON = :sigla";
                } else if($tipo == 'deposito'){
                    $sql = "SELECT * FROM P3_DEPOSITO WHERE NOMECON = :nome AND SIGLACON = :sigla";
                }

                $stmt = $pdo->prepare($sql);
                $stmt->bindParam(':nome', $nome);
                $stmt->bindParam(':sigla', $sigla);
                $stmt->execute();
                $data = $stmt->fetch(PDO::FETCH_ASSOC);

                if (!$data) {
                    Yii::$app->session->setFlash('error', 'Contâiner não encontrado.');
                    return $this->redirect(['index']);
                }
            }

            if (Yii::$app->request->isPost) {
                $pdo->beginTransaction();

                $novo_nome = Yii::$app->request->post('nomecon');
                $nova_sigla = Yii::$app->request->post('siglacon');
                $nomecol = Yii::$app->request->post('nomecol');
                $unidadecol = Yii::$app->request->post('unidadecol');

                Yii::Debug($nome);
                Yii::Debug($sigla);

                $sql = "UPDATE P3_CONTAINERCONTROLE SET NOME = :nome_novo, SIGLA = :sigla_nova, CARACTERISTICA = :caracteristica WHERE NOME = :nome AND SIGLA = :sigla";
                $stmt1 = $pdo->prepare($sql);

                $stmt1->bindParam(':nome_novo', $novo_nome);
                $stmt1->bindParam(':sigla_nova', $nova_sigla);
                $stmt1->bindParam(':nome', $nome);
                $stmt1->bindParam(':sigla', $sigla);
                $stmt1->bindParam(':caracteristica', $tipo);
                $stmt1->execute();

                if($tipo == 'residencia'){
                    $sql = "UPDATE P3_RESIDENCIA SET NOMECON = :nomecon_novo, SIGLACON = :siglacon_nova, NOMECOL = :nomecol, 
                        UNIDADECOL = :unidadecol, QTDBANHEIROS = :qtdbanheiros, QTDCAMAS = :qtdcamas  
                        WHERE NOMECON = :nomecon AND SIGLACON = :siglacon";
                        
                    $stmt2 = $pdo->prepare($sql);
                    $qtdbanheiros = Yii::$app->request->post('qtdbanheiros');
                    $qtdcamas = Yii::$app->request->post('qtdcamas');
                    $stmt2->bindParam(':qtdbanheiros', $qtdbanheiros);
                    $stmt2->bindParam(':qtdcamas', $qtdcamas);
                } else if($tipo == 'deposito'){
                    $sql = "UPDATE P3_DEPOSITO SET NOMECON = :nomecon_novo, SIGLACON = :siglacon_nova, NOMECOL = :nomecol, 
                    UNIDADECOL = :unidadecol, TIPOMATERIAL = :tipomaterial WHERE NOMECON = :nomecon AND SIGLACON = :siglacon";

                    $stmt2 = $pdo->prepare($sql);
                    $tipomaterial = Yii::$app->request->post('tipomaterial');
                    $stmt2->bindParam(':tipomaterial', $tipomaterial);
                } else if($tipo == 'laboratorio'){
                    $sql = "UPDATE P3_LABORATORIO SET NOMECON = :nomecon_novo, SIGLACON = :siglacon_nova, NOMECOL = :nomecol, 
                    UNIDADECOL = :unidadecol, FINALIDADE = :finalidade WHERE NOMECON = :nomecon AND SIGLACON = :siglacon";

                    $stmt2 = $pdo->prepare($sql);
                    $finalidade = Yii::$app->request->post('finalidade');
                    $stmt2->bindParam(':finalidade', $finalidade);
                }

                $stmt2->bindParam(':nomecon_novo', $novo_nome);
                $stmt2->bindParam(':siglacon_nova', $nova_sigla);
                $stmt2->bindParam(':nomecon', $nome);
                $stmt2->bindParam(':siglacon', $sigla);
                $stmt2->bindParam(':nomecol', $nomecol);
                $stmt2->bindParam(':unidadecol', $unidadecol);
                $stmt2->execute();

                $pdo->commit();
                Yii::$app->session->setFlash('success', 'Contêiner atualizado com sucesso!');
                return $this->redirect(['index']);
            }

        } catch (PDOException $e) {
            $pdo->rollBack();
            Yii::$app->session->setFlash('error', 'Erro ao atualizar contâiner: ' . $e->getMessage());
            return $this->redirect(['index']);
        }

        try {
            $sql = "SELECT UNIDADE, NOME FROM P3_COLONIA";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            $colonias = $stmt->fetchAll(PDO::FETCH_ASSOC);

        } catch (PDOException $e) {
            Yii::$app->session->setFlash('error', 'Erro ao buscar Colônias: ' . $e->getMessage());
            return $this->redirect(['index']);
        }

        return $this->render('update', [
            'data' => $data,
            'colonias' => $colonias,
            'tipo' => $tipo,
        ]);
    }

    /**
     * Deletes an existing Avatar model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $CODIGO Codigo
     * @return \yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($nome, $sigla, $tipo)
    {
        $dsn = 'oci:dbname=//localhost:1521/orcl';  
        $username = 'C##MARCOS';
        $password = 'admin';
        $pdo = new PDO($dsn, $username, $password);

        try {
            $sql = "DELETE FROM P3_CONTAINERCONTROLE WHERE NOME = :nome AND SIGLA = :sigla";
            $stmt2 = $pdo->prepare($sql);

            $stmt2->bindParam(':nome', $nome);
            $stmt2->bindParam(':sigla', $sigla);
            $stmt2->execute();

            Yii::$app->session->setFlash('success', 'Contâiner excluido com sucesso!');
            return $this->redirect(['index']);
        } catch (PDOException $e) {
            $pdo->rollBack();
            Yii::$app->session->setFlash('error', 'Erro ao excluir contâiner: ' . $e->getMessage());
            return $this->redirect(['index']);
        }
    }
}
