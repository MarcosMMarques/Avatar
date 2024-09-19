<?php

namespace app\controllers;

use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\data\ArrayDataProvider;
use PDO;
use Yii;

/**
 * AvatarController implements the CRUD actions for Avatar model.
 */
class ConsultaController extends Controller
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

            $stmt = $pdo->prepare("SELECT
                -- Dados da colônia
                c.Unidade AS Colonia_Unidade,
                c.Nome AS Colonia_Nome,
                c.Apelido AS Colonia_Apelido,
                c.EhPressurizado AS Colonia_Pressurizada,
                c.Latitude AS Colonia_Latitude,
                c.Longitude AS Colonia_Longitude,

                -- Dados da empresa associada
                e.Registro AS Empresa_Registro,

                -- Dados dos trabalhadores confinados
                t.CODIGO AS Trabalhador_Codigo,
                t.Nome AS Trabalhador_Nome,
                t.ESPECIALIZACAO AS Trabalhador_Especializacao,

                -- Dados dos containers associados
                cc.Nome AS Container_Nome,
                cc.Sigla AS Container_Sigla,
                cc.Caracteristica AS Container_Caracteristica,

                -- Detalhes sobre os equipamentos usados em pesquisas
                eq.Codigo AS Equipamento_Codigo,
                eq.Nome AS Equipamento_Nome,
                eq.Utilidade AS Equipamento_Utilidade,
                eq.QtdEnergia AS Equipamento_Energia,

                -- Detalhes sobre jazida
                j.Latitude AS Jazida_Latitude,
                j.Longitude AS Jazida_Longitude,
                j.QtdeRecursos AS Jazida_Recursos,

                -- Detalhes sobre os maquinários utilizados
                m.Codigo AS Maquinario_Codigo,
                m.Modelo AS Maquinario_Modelo,
                m.PesoOperacional AS Maquinario_Peso,
                m.Potencia AS Maquinario_Potencia

                FROM
                   p3_Colonia c
                   LEFT JOIN p3_Empresa e ON c.RegistroEmpresa = e.Registro -- Colônia associada a empresa
                   LEFT JOIN P3_TRABALHADOR t ON t.UNIDADECOL = c.UNIDADE AND t.NOMECOL = c.NOME  -- Trabalhadores confinados na colônia
                   LEFT JOIN p3_ContainerControle cc ON cc.Nome IN (
                       SELECT NomeCon FROM p3_Residencia WHERE UnidadeCol = c.Unidade
                       UNION
                       SELECT NomeCon FROM p3_Deposito WHERE UnidadeCol = c.Unidade
                       UNION
                       SELECT NomeCon FROM p3_Laboratorio WHERE UnidadeCol = c.Unidade
                   ) -- Containers associados às colônias

                   -- Equipamentos usados nas pesquisas associadas às colônias
                   LEFT JOIN p3_Pesquisa p ON p.NomeCon = cc.Nome AND p.SiglaCon = cc.Sigla
                   LEFT JOIN p3_P_tem_E pe ON pe.CodigoPes = p.Codigo
                   LEFT JOIN p3_Equipamento eq ON eq.Codigo = pe.CodigoEqui

                   -- Detalhes sobre jazidas e maquinários utilizados
                   LEFT JOIN p3_J_Explora_M jm ON c.Latitude = jm.Latitude AND c.Longitude = jm.Longitude
                   LEFT JOIN p3_Jazida j ON jm.Latitude = j.Latitude AND jm.Longitude = j.Longitude
                   LEFT JOIN p3_Maquinario m ON m.Codigo = jm.CodigoM
            ");
            $stmt->execute();

            $consulta = $stmt->fetchAll(PDO::FETCH_ASSOC);

            $dataProvider = new ArrayDataProvider([
                "allModels" => $consulta,
                "sort" => [
                    "attributes" => ["Colonia_Unidade"],
                    "defaultOrder" => [
                        "Colonia_Unidade" => SORT_ASC,
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
}
