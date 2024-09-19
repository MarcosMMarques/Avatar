CREATE TABLE p3_Empresa (
    Registro VARCHAR2(7) PRIMARY KEY,
    CONSTRAINT p3_Empresa_chk_Registro CHECK (REGEXP_LIKE(Registro, '^[A-Za-z0-9]{7}$'))
);

CREATE TABLE p3_Colonia (
    Unidade INT CHECK (Unidade BETWEEN 0 AND 999),
    Nome VARCHAR2(7),
    Apelido VARCHAR2(50),
    EhPressurizado CHAR(1),
    RegistroEmpresa VARCHAR2(7) NOT NULL,
    Latitude NUMBER NOT NULL,
    Longitude NUMBER NOT NULL,
    PRIMARY KEY (Unidade, Nome),
    FOREIGN KEY (RegistroEmpresa) REFERENCES p3_Empresa(Registro),
    CONSTRAINT p3_Colonia_chk_Nome CHECK (REGEXP_LIKE(Nome, '^[A-Za-z0-9]{7}$')),
    CONSTRAINT p3_Colonia_chk_EhPressurizado CHECK (EhPressurizado IN ('Y', 'N')),
    CONSTRAINT p3_Colonia_chk_Unidade CHECK (REGEXP_LIKE(Unidade, '^\d{1,3}$'))
);

CREATE TABLE p3_ContainerControle (
    Nome VARCHAR2(100),
    Sigla VARCHAR2(10),
    Caracteristica VARCHAR2(255),
    PRIMARY KEY (Nome, Sigla),
    CONSTRAINT p3_ContainerControle_chk_Sigla CHECK (REGEXP_LIKE(Sigla, '^[A-Za-z]{1,10}$')),
    CONSTRAINT p3_ContainerControle_chk_Caracteristica CHECK (Caracteristica IN ('residencia', 'deposito', 'laboratorio'))
);

CREATE TABLE p3_Residencia (
    QtdCamas INT,
    QtdBanheiros INT,
    NomeCon VARCHAR2(100),
    SiglaCon VARCHAR2(10),
    UnidadeCol INT NOT NULL,
    NomeCol VARCHAR2(7) NOT NULL,
    PRIMARY KEY (NomeCon, SiglaCon),
    FOREIGN KEY (UnidadeCol, NomeCol) REFERENCES p3_Colonia(Unidade, Nome),
    FOREIGN KEY (NomeCon, SiglaCon) REFERENCES p3_ContainerControle(Nome, Sigla) ON DELETE CASCADE,
    CONSTRAINT p3_Residencia_chk_Sigla CHECK (REGEXP_LIKE(SiglaCon, '^[A-Za-z]{1,10}$'))
);

CREATE TABLE p3_Deposito (
    NomeCon VARCHAR2(100),
    SiglaCon VARCHAR2(10),
    TipoMaterial VARCHAR2(30),
    UnidadeCol INT NOT NULL,
    NomeCol VARCHAR2(7) NOT NULL,
    PRIMARY KEY (NomeCon, SiglaCon),
    FOREIGN KEY (UnidadeCol, NomeCol) REFERENCES p3_Colonia(Unidade, Nome),
    FOREIGN KEY (NomeCon, SiglaCon) REFERENCES p3_ContainerControle(Nome, Sigla) ON DELETE CASCADE,
    CONSTRAINT p3_Deposito_chk_Sigla CHECK (REGEXP_LIKE(SiglaCon, '^[A-Za-z]{1,10}$'))
);

CREATE TABLE p3_Laboratorio (
    NomeCon VARCHAR2(100),
    SiglaCon VARCHAR2(10),
    Finalidade VARCHAR2(150),
    UnidadeCol INT NOT NULL,
    NomeCol VARCHAR2(7) NOT NULL,
    PRIMARY KEY (NomeCon, SiglaCon),
    FOREIGN KEY (UnidadeCol, NomeCol) REFERENCES p3_Colonia(Unidade, Nome),
    FOREIGN KEY (NomeCon, SiglaCon) REFERENCES p3_ContainerControle(Nome, Sigla) ON DELETE CASCADE,
    CONSTRAINT p3_Laboratorio_chk_Sigla CHECK (REGEXP_LIKE(SiglaCon, '^[A-Za-z]{1,10}$'))
);

CREATE TABLE p3_Trabalhador (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR2(100),
    Especializacao VARCHAR2(50),
    UnidadeCol INT NOT NULL,
    NomeCol VARCHAR2(7) NOT NULL,
    CodigoHumano INT,
    FOREIGN KEY (UnidadeCol, NomeCol) REFERENCES p3_Colonia(Unidade, Nome),
    CONSTRAINT p3_Trabalhador_chk_Nome CHECK (REGEXP_LIKE(Nome, '^[a-zA-ZÀ-ÿ ]{1,100}$'))
);

CREATE TABLE p3_Militar (
    Codigo INT PRIMARY KEY,
    FOREIGN KEY (Codigo) REFERENCES p3_Trabalhador(Codigo) ON DELETE CASCADE
);

CREATE TABLE p3_Minerador (
    Codigo INT PRIMARY KEY,
    FOREIGN KEY (Codigo) REFERENCES p3_Trabalhador(Codigo) ON DELETE CASCADE
);

CREATE TABLE p3_Cientista (
    Codigo INT PRIMARY KEY,
    FOREIGN KEY (Codigo) REFERENCES p3_Trabalhador(Codigo) ON DELETE CASCADE
);

CREATE TABLE p3_Equipamento (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR2(50),
    Utilidade VARCHAR2(200),
    QtdEnergia NUMBER
);

CREATE TABLE p3_Pesquisa (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR2(100),
    NomeCon VARCHAR2(100),
    SiglaCon VARCHAR2(10),
    CodigoCien INT,
    FOREIGN KEY (CodigoCien) REFERENCES p3_Cientista(Codigo),
    FOREIGN KEY (NomeCon, SiglaCon) REFERENCES p3_Laboratorio(NomeCon, SiglaCon) ON DELETE CASCADE
);

CREATE TABLE p3_TrabalhadorControle (
    Codigo INT PRIMARY KEY,
    Profissao VARCHAR2(50),
    FOREIGN KEY (Codigo) REFERENCES p3_Trabalhador(Codigo) ON DELETE CASCADE
);

CREATE TABLE p3_P_tem_E (
    CodigoPes INT,
    CodigoEqui INT,
    PRIMARY KEY (CodigoPes, CodigoEqui),
    FOREIGN KEY (CodigoPes) REFERENCES p3_Pesquisa(Codigo),
    FOREIGN KEY (CodigoEqui) REFERENCES p3_Equipamento(Codigo)
);

CREATE TABLE p3_Humano (
    Codigo INT PRIMARY KEY
);

CREATE TABLE p3_Regiao (
    Nome VARCHAR2(100) PRIMARY KEY
);

CREATE TABLE p3_Arvore (
    Codigo INT PRIMARY KEY,
    Descricao VARCHAR2(100),
    Idade INT,
    Altura NUMBER,
    NomeRegiao VARCHAR2(100) NOT NULL,
    FOREIGN KEY (NomeRegiao) REFERENCES p3_Regiao(Nome),
    CONSTRAINT p3_Arvore_chk_Descricao CHECK (REGEXP_LIKE(Descricao, '^[a-zA-ZÀ-ÿ ]{1,100}$'))
);

CREATE TABLE p3_Jazida (
    Latitude NUMBER,
    Longitude NUMBER,
    Base NUMBER,
    Altura NUMBER,
    QtdeRecursos NUMBER,
    NomeRegiao VARCHAR2(100) NOT NULL,
    PRIMARY KEY (Latitude, Longitude),
    FOREIGN KEY (NomeRegiao) REFERENCES p3_Regiao(Nome)
);

ALTER TABLE p3_Colonia
    ADD CONSTRAINT FK_JAZIDA FOREIGN KEY (Latitude, Longitude) REFERENCES p3_Jazida(Latitude, Longitude);

CREATE TABLE p3_Ser (
    Codigo INT PRIMARY KEY
);

CREATE TABLE p3_Navi (
    CodigoSer INT PRIMARY KEY,
    Altura NUMBER,
    TamCauda NUMBER,
    Nome VARCHAR2(100),
    LatitudeR NUMBER NOT NULL,
    LongitudeR NUMBER NOT NULL,
    CodigoArv INT,
    FOREIGN KEY (CodigoArv) REFERENCES p3_Arvore(Codigo),
    FOREIGN KEY (CodigoSer) REFERENCES p3_Ser(Codigo) ON DELETE CASCADE,
    CONSTRAINT p3_Navi_chk_Nome CHECK (REGEXP_LIKE(Nome, '^[a-zA-ZÀ-ÿ ]{1,100}$'))
);

CREATE TABLE p3_Avatar (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR2(100),
    CodigoNavi INT NOT NULL,
    CodigoHumano INT NOT NULL,
    FOREIGN KEY (CodigoNavi) REFERENCES p3_Navi(CodigoSer),
    FOREIGN KEY (CodigoHumano) REFERENCES p3_Humano(Codigo),
    CONSTRAINT p3_Avatar_chk_Nome CHECK (REGEXP_LIKE(Nome, '^[a-zA-ZÀ-ÿ ]{1,100}$'))
);

CREATE SEQUENCE P3_AVATAR_SEQ START WITH 1 INCREMENT BY 1;

CREATE TABLE p3_Resultado (
    CodigoPes INT,
    CodigoAvatar INT,
    PRIMARY KEY (CodigoPes, CodigoAvatar),
    FOREIGN KEY (CodigoPes) REFERENCES p3_Pesquisa(Codigo),
    FOREIGN KEY (CodigoAvatar) REFERENCES p3_Avatar(Codigo)
);

CREATE TABLE p3_Maquinario (
    Codigo INT PRIMARY KEY,
    Modelo VARCHAR2(100),
    PesoOperacional NUMBER,
    Potencia NUMBER
);

CREATE TABLE p3_MaquinarioControle (
    Codigo INT PRIMARY KEY,
    Tipo VARCHAR2(100),
    FOREIGN KEY (Codigo) REFERENCES p3_Maquinario(Codigo) ON DELETE CASCADE
);

CREATE TABLE p3_Escavadeira (
    Codigo INT PRIMARY KEY,
    CapPa NUMBER,
    FOREIGN KEY (Codigo) REFERENCES p3_Maquinario(Codigo) ON DELETE CASCADE
);

CREATE TABLE p3_Terapeutica (
    CodigoArv INT PRIMARY KEY,
    GeraSemente CHAR(1),
    FOREIGN KEY (CodigoArv) REFERENCES p3_Arvore(Codigo) ON DELETE CASCADE,
    CONSTRAINT p3_Terapeutica_chk_GeraSemente CHECK (GeraSemente IN ('Y', 'N'))
);

CREATE TABLE p3_Caminhao (
    Codigo INT PRIMARY KEY,
    CapCa NUMBER,
    FOREIGN KEY (Codigo) REFERENCES p3_Maquinario(Codigo) ON DELETE CASCADE
);

CREATE TABLE p3_Espiritual (
    CodigoArv INT PRIMARY KEY,
    VozOuAlma VARCHAR2(10),
    FOREIGN KEY (CodigoArv) REFERENCES p3_Arvore(Codigo) ON DELETE CASCADE,
    CONSTRAINT p3_Espiritual_chk_VozOuAlma CHECK (VozOuAlma IN ('Voz', 'Alma'))
);

CREATE TABLE p3_Moradia (
    CodigoArv INT PRIMARY KEY,
    QtdMaxima INT,
    FOREIGN KEY (CodigoArv) REFERENCES p3_Arvore(Codigo) ON DELETE CASCADE
);

CREATE TABLE p3_RegiaoControle (
    Nome VARCHAR2(100) PRIMARY KEY,
    Tipo VARCHAR2(20),
    FOREIGN KEY (Nome) REFERENCES p3_Regiao(Nome) ON DELETE CASCADE
);

CREATE TABLE p3_Cla (
    Nome VARCHAR2(100) PRIMARY KEY
);

CREATE TABLE p3_Vale (
    NomeRegiao VARCHAR2(100),
    ProfMax NUMBER,
    TemAgua CHAR(1),
    PRIMARY KEY (NomeRegiao),
    FOREIGN KEY (NomeRegiao) REFERENCES p3_Regiao(Nome) ON DELETE CASCADE,
    CONSTRAINT p3_Vale_chk_TemAgua CHECK (TemAgua IN ('Y', 'N'))
);

CREATE TABLE p3_Planicie (
    NomeRegiao VARCHAR2(100),
    TemRio CHAR(1),
    TemLago CHAR(1),
    DescrFlora VARCHAR2(200),
    PRIMARY KEY (NomeRegiao),
    FOREIGN KEY (NomeRegiao) REFERENCES p3_Regiao(Nome) ON DELETE CASCADE,
    CONSTRAINT p3_Planicie_chk_TemRio CHECK (TemRio IN ('Y', 'N')),
    CONSTRAINT p3_Planicie_chk_TemLago CHECK (TemLago IN ('Y', 'N'))
);

CREATE TABLE p3_Montanha (
    NomeRegiao VARCHAR2(100),
    Altura NUMBER,
    SeMov CHAR(1),
    PRIMARY KEY (NomeRegiao),
    FOREIGN KEY (NomeRegiao) REFERENCES p3_Regiao(Nome)  ON DELETE CASCADE,
    CONSTRAINT p3_Montanha_chk_SeMov CHECK (SeMov IN ('Y', 'N'))
);

CREATE TABLE p3_Thanators (
    ForcaMax NUMBER,
    VelocidadeMax NUMBER,
    CodigoSer INT PRIMARY KEY,
    NomeRegiao VARCHAR2(100) NOT NULL,
    FOREIGN KEY (NomeRegiao) REFERENCES p3_Vale(NomeRegiao),
    FOREIGN KEY (CodigoSer) REFERENCES p3_Ser(Codigo) ON DELETE CASCADE
);

CREATE TABLE p3_Leonopteryx (
    NomeRegiao VARCHAR2(100) NOT NULL,
    Cores VARCHAR2(40),
    TamanhoAsa NUMBER,
    CodigoSer INT PRIMARY KEY,
    FOREIGN KEY (NomeRegiao) REFERENCES p3_Vale(NomeRegiao),
    FOREIGN KEY (CodigoSer) REFERENCES p3_Ser(Codigo) ON DELETE CASCADE
);

CREATE TABLE p3_Banshee (
    CodigoSer INT PRIMARY KEY,
    AlturaMaxima NUMBER,
    CorPredominante VARCHAR2(20),
    NomeRegiao VARCHAR2(100) NOT NULL,
    FOREIGN KEY (NomeRegiao) REFERENCES p3_Montanha(NomeRegiao),
    FOREIGN KEY (CodigoSer) REFERENCES p3_Ser(Codigo) ON DELETE CASCADE,
    CONSTRAINT p3_Banshee_chk_CorPredominante CHECK (REGEXP_LIKE(CorPredominante, '^[A-Za-z]{1,20}$'))
);

CREATE TABLE p3_Posicao (
    Codigo INT PRIMARY KEY,
    CodigoSer INT,
    NomeCla VARCHAR2(100),
    Funcao VARCHAR2(100),
    FOREIGN KEY (CodigoSer) REFERENCES p3_Ser(Codigo),
    FOREIGN KEY (NomeCla) REFERENCES p3_Cla(Nome)
);

CREATE TABLE p3_RitoPassagem (
    Codigo VARCHAR2(30),
    CodigoSerNavi INT,
    CodigoSerBanshee INT,
    CodigoPos INT,
    PRIMARY KEY (Codigo),
    FOREIGN KEY (CodigoSerNavi) REFERENCES p3_Navi(CodigoSer),
    FOREIGN KEY (CodigoSerBanshee) REFERENCES p3_Banshee(CodigoSer),
    FOREIGN KEY (CodigoPos) REFERENCES p3_Posicao(Codigo)
);

CREATE TABLE p3_ConectaSer (
    Ser1 INT,
    Ser2 INT,
    CodigoArv INT NOT NULL,
    Tipo VARCHAR2(30),
    PRIMARY KEY (Ser1, Ser2),
    FOREIGN KEY (CodigoArv) REFERENCES p3_Arvore(Codigo),
    FOREIGN KEY (Ser1) REFERENCES p3_Ser(Codigo) ON DELETE CASCADE,
    FOREIGN KEY (Ser2) REFERENCES p3_Ser(Codigo) ON DELETE CASCADE
);

CREATE TABLE p3_J_Explora_M (
    Latitude NUMBER,
    Longitude NUMBER,
    CodigoM INT,
    PRIMARY KEY (Latitude, Longitude, CodigoM),
    FOREIGN KEY (CodigoM) REFERENCES p3_Maquinario(Codigo),
    FOREIGN KEY (Latitude, Longitude) REFERENCES p3_Jazida(Latitude, Longitude)
);

CREATE TABLE p3_Direhorsers (
    CodigoSer INT PRIMARY KEY,
    TamPatas NUMBER,
    TamAntena NUMBER,
    NomeRegiao VARCHAR2(100) NOT NULL,
    FOREIGN KEY (NomeRegiao) REFERENCES p3_Planicie(NomeRegiao),
    FOREIGN KEY (CodigoSer) REFERENCES p3_Ser(Codigo) ON DELETE CASCADE
);