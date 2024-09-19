-- Inserção na tabela p3_Empresa
INSERT INTO p3_Empresa (Registro) VALUES ('ABC123E');
INSERT INTO p3_Empresa (Registro) VALUES ('XYZ456P');
INSERT INTO p3_Empresa (Registro) VALUES ('DEF789M');
INSERT INTO p3_Empresa (Registro) VALUES ('GHI012N');
INSERT INTO p3_Empresa (Registro) VALUES ('JKL345B');
INSERT INTO p3_Empresa (Registro) VALUES ('MNO678C');
INSERT INTO p3_Empresa (Registro) VALUES ('PQR901D');
INSERT INTO p3_Empresa (Registro) VALUES ('STU234F');
INSERT INTO p3_Empresa (Registro) VALUES ('VWX567H');
INSERT INTO p3_Empresa (Registro) VALUES ('YZA890I');

-- Inserções para a tabela p3_Regiao
INSERT INTO p3_Regiao (Nome) VALUES ('Vale da Serenidade');
INSERT INTO p3_Regiao (Nome) VALUES ('Vale da Neblina');
INSERT INTO p3_Regiao (Nome) VALUES ('Vale dos Thanators');
INSERT INTO p3_Regiao (Nome) VALUES ('Vale do Silêncio');
INSERT INTO p3_Regiao (Nome) VALUES ('Vale dos Ventos');
INSERT INTO p3_Regiao (Nome) VALUES ('Vale da Harmonia');
INSERT INTO p3_Regiao (Nome) VALUES ('Vale do Crepúsculo');
INSERT INTO p3_Regiao (Nome) VALUES ('Vale do Sol');
INSERT INTO p3_Regiao (Nome) VALUES ('Vale da Morte');
INSERT INTO p3_Regiao (Nome) VALUES ('Vale dos Espíritos');
INSERT INTO p3_Regiao (Nome) VALUES ('Planície de Fogo');
INSERT INTO p3_Regiao (Nome) VALUES ('Planície do Crepúsculo');
INSERT INTO p3_Regiao (Nome) VALUES ('Planície da Luz');
INSERT INTO p3_Regiao (Nome) VALUES ('Planície Campo Largo');
INSERT INTO p3_Regiao (Nome) VALUES ('Planície das Marés');
INSERT INTO p3_Regiao (Nome) VALUES ('Planície da Serenidade');
INSERT INTO p3_Regiao (Nome) VALUES ('Planície dos Ecos');
INSERT INTO p3_Regiao (Nome) VALUES ('Planície dos Ventos');
INSERT INTO p3_Regiao (Nome) VALUES ('Planície Rubra');
INSERT INTO p3_Regiao (Nome) VALUES ('Planície da Paz');
INSERT INTO p3_Regiao (Nome) VALUES ('Montanha da Sabedoria');
INSERT INTO p3_Regiao (Nome) VALUES ('Montanha do Vento');
INSERT INTO p3_Regiao (Nome) VALUES ('Montanha Dourada');
INSERT INTO p3_Regiao (Nome) VALUES ('Montanha do Trovão');
INSERT INTO p3_Regiao (Nome) VALUES ('Montanha dos Dragões');
INSERT INTO p3_Regiao (Nome) VALUES ('Montanha do Crepúsculo');
INSERT INTO p3_Regiao (Nome) VALUES ('Montanha da Morte');
INSERT INTO p3_Regiao (Nome) VALUES ('Montanha das Almas');
INSERT INTO p3_Regiao (Nome) VALUES ('Montanha da Ascensão');
INSERT INTO p3_Regiao (Nome) VALUES ('Montanha do Fogo');

-- Inserções para a tabela p3_RegiaoControle
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Vale da Serenidade', 'Vale');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Vale da Neblina', 'Vale');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Vale dos Thanators', 'Vale');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Vale do Silêncio', 'Vale');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Vale dos Ventos', 'Vale');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Vale da Harmonia', 'Vale');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Vale do Crepúsculo', 'Vale');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Vale do Sol', 'Vale');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Vale da Morte', 'Vale');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Vale dos Espíritos', 'Vale');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Planície de Fogo', 'Planicie');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Planície do Crepúsculo', 'Planicie');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Planície da Luz', 'Planicie');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Planície Campo Largo', 'Planicie');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Planície das Marés', 'Planicie');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Planície da Serenidade', 'Planicie');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Planície dos Ecos', 'Planicie');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Planície dos Ventos', 'Planicie');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Planície Rubra', 'Planicie');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Planície da Paz', 'Planicie');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Montanha da Sabedoria', 'Montanha');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Montanha do Vento', 'Montanha');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Montanha Dourada', 'Montanha');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Montanha do Trovão', 'Montanha');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Montanha dos Dragões', 'Montanha');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Montanha do Crepúsculo', 'Montanha');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Montanha da Morte', 'Montanha');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Montanha das Almas', 'Montanha');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Montanha da Ascensão', 'Montanha');
INSERT INTO p3_RegiaoControle (Nome, Tipo) VALUES ('Montanha do Fogo', 'Montanha');

-- Inserções para a tabela p3_Jazida
INSERT INTO p3_Jazida (Latitude, Longitude, Base, Altura, QtdeRecursos, NomeRegiao)
VALUES (-12.34, 45.67, 1000, 500, 10000, 'Vale dos Thanators');

INSERT INTO p3_Jazida (Latitude, Longitude, Base, Altura, QtdeRecursos, NomeRegiao)
VALUES (-22.44, 55.77, 1200, 600, 8500, 'Montanha do Fogo');

INSERT INTO p3_Jazida (Latitude, Longitude, Base, Altura, QtdeRecursos, NomeRegiao)
VALUES (-32.54, 65.87, 900, 450, 7500, 'Planície Campo Largo');

INSERT INTO p3_Jazida (Latitude, Longitude, Base, Altura, QtdeRecursos, NomeRegiao)
VALUES (-42.64, 75.97, 1100, 550, 9200, 'Vale da Serenidade');

INSERT INTO p3_Jazida (Latitude, Longitude, Base, Altura, QtdeRecursos, NomeRegiao)
VALUES (-52.74, 85.07, 950, 475, 8000, 'Vale do Crepúsculo');

INSERT INTO p3_Jazida (Latitude, Longitude, Base, Altura, QtdeRecursos, NomeRegiao)
VALUES (-62.84, 95.17, 1050, 525, 9800, 'Montanha da Ascensão');

INSERT INTO p3_Jazida (Latitude, Longitude, Base, Altura, QtdeRecursos, NomeRegiao)
VALUES (-72.94, 105.27, 1150, 575, 8700, 'Montanha do Crepúsculo');

INSERT INTO p3_Jazida (Latitude, Longitude, Base, Altura, QtdeRecursos, NomeRegiao)
VALUES (-82.04, 115.37, 1300, 650, 9900, 'Planície da Serenidade');

INSERT INTO p3_Jazida (Latitude, Longitude, Base, Altura, QtdeRecursos, NomeRegiao)
VALUES (-92.14, 125.47, 1400, 700, 11000, 'Montanha da Morte');

INSERT INTO p3_Jazida (Latitude, Longitude, Base, Altura, QtdeRecursos, NomeRegiao)
VALUES (-102.24, 135.57, 1250, 625, 10500, 'Planície dos Ecos');

-- Inserção de dados para a tabela p3_Colonia
INSERT INTO p3_Colonia (Unidade, Nome, Apelido, EhPressurizado, RegistroEmpresa, Latitude, Longitude) 
VALUES (1, 'EXTRA01', 'Portal do Inferno', 'Y', 'ABC123E', -12.34, 45.67);

INSERT INTO p3_Colonia (Unidade, Nome, Apelido, EhPressurizado, RegistroEmpresa, Latitude, Longitude) 
VALUES (2, 'EXTRA02', 'Campo Seguro', 'Y', 'XYZ456P', -22.44, 55.77);

INSERT INTO p3_Colonia (Unidade, Nome, Apelido, EhPressurizado, RegistroEmpresa, Latitude, Longitude) 
VALUES (3, 'EXTRA03', 'Torre de Babel', 'Y', 'DEF789M', -32.54, 65.87);

INSERT INTO p3_Colonia (Unidade, Nome, Apelido, EhPressurizado, RegistroEmpresa, Latitude, Longitude) 
VALUES (4, 'EXTRA04', 'Refúgio Estelar', 'N', 'GHI012N', -42.64, 75.97);

INSERT INTO p3_Colonia (Unidade, Nome, Apelido, EhPressurizado, RegistroEmpresa, Latitude, Longitude) 
VALUES (5, 'EXTRA05', 'Sentinela dos Ventos', 'N', 'JKL345B', -52.74, 85.07);

-- Inserções para a tabela p3_Colonia
INSERT INTO p3_Colonia (Unidade, Nome, Apelido, EhPressurizado, RegistroEmpresa, Latitude, Longitude) 
VALUES (6, 'EXTRA06', 'Posto Solitário', 'N', 'MNO678C', -62.84, 95.17);

INSERT INTO p3_Colonia (Unidade, Nome, Apelido, EhPressurizado, RegistroEmpresa, Latitude, Longitude) 
VALUES (7, 'EXTRA07', 'Cúpula Verde', 'Y', 'PQR901D', -72.94, 105.27);

INSERT INTO p3_Colonia (Unidade, Nome, Apelido, EhPressurizado, RegistroEmpresa, Latitude, Longitude) 
VALUES (8, 'EXTRA08', 'Horizonte Longo', 'N', 'STU234F', -82.04, 115.37);

INSERT INTO p3_Colonia (Unidade, Nome, Apelido, EhPressurizado, RegistroEmpresa, Latitude, Longitude) 
VALUES (9, 'EXTRA09', 'Sentinela Lunar', 'Y', 'VWX567H', -92.14, 125.47);

INSERT INTO p3_Colonia (Unidade, Nome, Apelido, EhPressurizado, RegistroEmpresa, Latitude, Longitude) 
VALUES (10, 'EXTRA10', 'Refúgio dos Anciãos', 'N', 'YZA890I', -102.24, 135.57);

-- Inserções para a tabela p3_ContainerControle com base nas Residências
INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Residência Alpha', 'RESALP', 'residencia');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Residência Beta', 'RESBET', 'residencia');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Residência Delta', 'RESDEL', 'residencia');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Residência Gamma', 'RESGAM', 'residencia');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Residência Omega', 'RESOME', 'residencia');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Residência Central', 'RESCEN', 'residencia');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Residência Verde', 'RESVER', 'residencia');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Residência Laranja', 'RESLAR', 'residencia');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Residência Azul', 'RESAZU', 'residencia');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Residência Roxa', 'RESROX', 'residencia');

-- Inserções para a tabela p3_ContainerControle com base nos Depósitos
INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Depósito Mineração 1', 'DEPMINA', 'deposito');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Depósito Bélico 1', 'DEPBEA', 'deposito');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Depósito Veículos 1', 'DEPVEHA', 'deposito');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Depósito Mineração 2', 'DEPMINB', 'deposito');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Depósito Bélico 2', 'DEPBEB', 'deposito');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Depósito Veículos 2', 'DEPVEHB', 'deposito');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Depósito Mineração 3', 'DEPMINC', 'deposito');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Depósito Bélico 3', 'DEPBEC', 'deposito');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Depósito Veículos 3', 'DEPVEHC', 'deposito');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Depósito Mineração 4', 'DEPMIND', 'deposito');

-- Inserções para a tabela p3_ContainerControle com base nos Laboratórios
INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Laboratório Botânico', 'LABBOT', 'laboratorio');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Laboratório Genético', 'LABGEN', 'laboratorio');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Laboratório Biológico', 'LABBIO', 'laboratorio');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Laboratório Químico', 'LABQUI', 'laboratorio');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Laboratório Medicinal', 'LABMED', 'laboratorio');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Laboratório de Física', 'LABFIS', 'laboratorio');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Laboratório de Robótica', 'LABROB', 'laboratorio');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Laboratório de Zoologia', 'LABZOO', 'laboratorio');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Laboratório de Inteligência Artificial', 'LABIA', 'laboratorio');

INSERT INTO p3_ContainerControle (Nome, Sigla, Caracteristica) 
VALUES ('Laboratório de Energias Renováveis', 'LABENR', 'laboratorio');

-- Inserções para a tabela p3_Residencia
INSERT INTO p3_Residencia (QtdCamas, QtdBanheiros, NomeCon, SiglaCon, UnidadeCol, NomeCol)
VALUES (4, 2, 'Residência Alpha', 'RESALP', 1, 'EXTRA01');

INSERT INTO p3_Residencia (QtdCamas, QtdBanheiros, NomeCon, SiglaCon, UnidadeCol, NomeCol)
VALUES (6, 3, 'Residência Beta', 'RESBET', 2, 'EXTRA02');

INSERT INTO p3_Residencia (QtdCamas, QtdBanheiros, NomeCon, SiglaCon, UnidadeCol, NomeCol)
VALUES (5, 2, 'Residência Delta', 'RESDEL', 3, 'EXTRA03');

INSERT INTO p3_Residencia (QtdCamas, QtdBanheiros, NomeCon, SiglaCon, UnidadeCol, NomeCol)
VALUES (7, 4, 'Residência Gamma', 'RESGAM', 4, 'EXTRA04');

INSERT INTO p3_Residencia (QtdCamas, QtdBanheiros, NomeCon, SiglaCon, UnidadeCol, NomeCol)
VALUES (3, 1, 'Residência Omega', 'RESOME', 5, 'EXTRA05');

INSERT INTO p3_Residencia (QtdCamas, QtdBanheiros, NomeCon, SiglaCon, UnidadeCol, NomeCol)
VALUES (8, 5, 'Residência Central', 'RESCEN', 6, 'EXTRA06');

INSERT INTO p3_Residencia (QtdCamas, QtdBanheiros, NomeCon, SiglaCon, UnidadeCol, NomeCol)
VALUES (4, 2, 'Residência Verde', 'RESVER', 7, 'EXTRA07');

INSERT INTO p3_Residencia (QtdCamas, QtdBanheiros, NomeCon, SiglaCon, UnidadeCol, NomeCol)
VALUES (6, 3, 'Residência Laranja', 'RESLAR', 8, 'EXTRA08');

INSERT INTO p3_Residencia (QtdCamas, QtdBanheiros, NomeCon, SiglaCon, UnidadeCol, NomeCol)
VALUES (5, 2, 'Residência Azul', 'RESAZU', 9, 'EXTRA09');

INSERT INTO p3_Residencia (QtdCamas, QtdBanheiros, NomeCon, SiglaCon, UnidadeCol, NomeCol)
VALUES (7, 3, 'Residência Roxa', 'RESROX', 10, 'EXTRA10');

-- Inserções para a tabela p3_Deposito
INSERT INTO p3_Deposito (NomeCon, SiglaCon, TipoMaterial, UnidadeCol, NomeCol)
VALUES ('Depósito Mineração 1', 'DEPMINA', 'Mineração', 1, 'EXTRA01');

INSERT INTO p3_Deposito (NomeCon, SiglaCon, TipoMaterial, UnidadeCol, NomeCol)
VALUES ('Depósito Bélico 1', 'DEPBEA', 'Material bélico', 2, 'EXTRA02');

INSERT INTO p3_Deposito (NomeCon, SiglaCon, TipoMaterial, UnidadeCol, NomeCol)
VALUES ('Depósito Veículos 1', 'DEPVEHA', 'Veículos', 3, 'EXTRA03');

INSERT INTO p3_Deposito (NomeCon, SiglaCon, TipoMaterial, UnidadeCol, NomeCol)
VALUES ('Depósito Mineração 2', 'DEPMINB', 'Mineração', 4, 'EXTRA04');

INSERT INTO p3_Deposito (NomeCon, SiglaCon, TipoMaterial, UnidadeCol, NomeCol)
VALUES ('Depósito Bélico 2', 'DEPBEB', 'Material bélico', 5, 'EXTRA05');

INSERT INTO p3_Deposito (NomeCon, SiglaCon, TipoMaterial, UnidadeCol, NomeCol)
VALUES ('Depósito Veículos 2', 'DEPVEHB', 'Veículos', 6, 'EXTRA06');

INSERT INTO p3_Deposito (NomeCon, SiglaCon, TipoMaterial, UnidadeCol, NomeCol)
VALUES ('Depósito Mineração 3', 'DEPMINC', 'Mineração', 7, 'EXTRA07');

INSERT INTO p3_Deposito (NomeCon, SiglaCon, TipoMaterial, UnidadeCol, NomeCol)
VALUES ('Depósito Bélico 3', 'DEPBEC', 'Material bélico', 8, 'EXTRA08');

INSERT INTO p3_Deposito (NomeCon, SiglaCon, TipoMaterial, UnidadeCol, NomeCol)
VALUES ('Depósito Veículos 3', 'DEPVEHC', 'Veículos', 9, 'EXTRA09');

INSERT INTO p3_Deposito (NomeCon, SiglaCon, TipoMaterial, UnidadeCol, NomeCol)
VALUES ('Depósito Mineração 4', 'DEPMIND', 'Mineração', 10, 'EXTRA10');

-- Inserções para a tabela p3_Laboratorio
INSERT INTO p3_Laboratorio (NomeCon, SiglaCon, Finalidade, UnidadeCol, NomeCol)
VALUES ('Laboratório Botânico', 'LABBOT', 'Pesquisa de flora', 1, 'EXTRA01');

INSERT INTO p3_Laboratorio (NomeCon, SiglaCon, Finalidade, UnidadeCol, NomeCol)
VALUES ('Laboratório Genético', 'LABGEN', 'Pesquisa de genética dos Navi', 2, 'EXTRA02');

INSERT INTO p3_Laboratorio (NomeCon, SiglaCon, Finalidade, UnidadeCol, NomeCol)
VALUES ('Laboratório Biológico', 'LABBIO', 'Estudos biológicos', 3, 'EXTRA03');

INSERT INTO p3_Laboratorio (NomeCon, SiglaCon, Finalidade, UnidadeCol, NomeCol)
VALUES ('Laboratório Químico', 'LABQUI', 'Pesquisas químicas avançadas', 4, 'EXTRA04');

INSERT INTO p3_Laboratorio (NomeCon, SiglaCon, Finalidade, UnidadeCol, NomeCol)
VALUES ('Laboratório Medicinal', 'LABMED', 'Desenvolvimento de medicamentos', 5, 'EXTRA05');

INSERT INTO p3_Laboratorio (NomeCon, SiglaCon, Finalidade, UnidadeCol, NomeCol)
VALUES ('Laboratório de Física', 'LABFIS', 'Estudos de física aplicada', 6, 'EXTRA06');

INSERT INTO p3_Laboratorio (NomeCon, SiglaCon, Finalidade, UnidadeCol, NomeCol)
VALUES ('Laboratório de Robótica', 'LABROB', 'Pesquisa em robótica', 7, 'EXTRA07');

INSERT INTO p3_Laboratorio (NomeCon, SiglaCon, Finalidade, UnidadeCol, NomeCol)
VALUES ('Laboratório de Zoologia', 'LABZOO', 'Estudos da fauna de Pandora', 8, 'EXTRA08');

INSERT INTO p3_Laboratorio (NomeCon, SiglaCon, Finalidade, UnidadeCol, NomeCol)
VALUES ('Laboratório de Inteligência Artificial', 'LABIA', 'Pesquisa em IA avançada', 9, 'EXTRA09');

INSERT INTO p3_Laboratorio (NomeCon, SiglaCon, Finalidade, UnidadeCol, NomeCol)
VALUES ('Laboratório de Energias Renováveis', 'LABENR', 'Pesquisa de energias renováveis', 10, 'EXTRA10');


-- Inserções para a tabela Trabalhador
INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (1, 'Jake Sully', 'Explorador', 1, 'EXTRA01', 101);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (2, 'Grace Augustine', 'Botânica', 2, 'EXTRA02', 102);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (3, 'Norm Spellman', 'Antropólogo', 3, 'EXTRA03', 103);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (4, 'Trudy Chacón', 'Piloto', 4, 'EXTRA04', 104);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (5, 'Miles Quaritch', 'Militar', 5, 'EXTRA05', 105);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (6, 'Paz Socorro', 'Engenheira', 6, 'EXTRA06', 106);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (7, 'Max Patel', 'Médico', 7, 'EXTRA07', 107);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (8, 'Lyle Wainfleet', 'Soldado de Campo', 8, 'EXTRA08', 108);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (9, 'Sean Fike', 'Especialista em Logística', 9, 'EXTRA09', 109);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (10, 'Thomas Sully', 'Cientista', 10, 'EXTRA10', 110);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (11, 'Ryan Blue', 'Engenheiro de Mineração', 1, 'EXTRA01', 111);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (12, 'Carla White', 'Geóloga', 2, 'EXTRA02', 112);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (13, 'Ethan Green', 'Biólogo Marinho', 3, 'EXTRA03', 113);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (14, 'Sarah Red', 'Fisioterapeuta', 4, 'EXTRA04', 114);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (15, 'Jason Black', 'Físico', 5, 'EXTRA05', 115);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (16, 'Amanda Yellow', 'Química', 6, 'EXTRA06', 116);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (17, 'Nicholas Brown', 'Especialista em Explosivos', 7, 'EXTRA07', 117);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (18, 'Helena Violet', 'Geneticista', 8, 'EXTRA08', 118);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (19, 'Robert Indigo', 'Astrofísico', 9, 'EXTRA09', 119);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (20, 'Lisa Silver', 'Bióloga', 10, 'EXTRA10', 120);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (21, 'Paul Gold', 'Técnico de Manutenção', 1, 'EXTRA01', 121);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (22, 'Alex Gray', 'Piloto de Drones', 2, 'EXTRA02', 122);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (23, 'Megan White', 'Engenheira Elétrica', 3, 'EXTRA03', 123);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (24, 'Tom Brown', 'Biólogo', 4, 'EXTRA04', 124);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (25, 'Clara Blue', 'Físico', 5, 'EXTRA05', 125);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (26, 'Olivia Green', 'Cientista Ambiental', 6, 'EXTRA06', 126);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (27, 'Lucas Red', 'Antropólogo', 7, 'EXTRA07', 127);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (28, 'Emma Yellow', 'Geóloga', 8, 'EXTRA08', 128);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (29, 'Sophia Violet', 'Bióloga Molecular', 9, 'EXTRA09', 129);

INSERT INTO p3_Trabalhador (Codigo, Nome, Especializacao, UnidadeCol, NomeCol, CodigoHumano)
VALUES (30, 'Daniel Silver', 'Pesquisador', 10, 'EXTRA10', 130);

-- Inserções para a tabela Militar
INSERT INTO p3_MILITAR (CODIGO) VALUES (5);  -- Miles Quaritch
INSERT INTO p3_MILITAR (CODIGO) VALUES (8);  -- Lyle Wainfleet
INSERT INTO p3_MILITAR (CODIGO) VALUES (11); -- Ryan Blue
INSERT INTO p3_MILITAR (CODIGO) VALUES (12); -- Carla White
INSERT INTO p3_MILITAR (CODIGO) VALUES (15); -- Jason Black
INSERT INTO p3_MILITAR (CODIGO) VALUES (17); -- Nicholas Brown
INSERT INTO p3_MILITAR (CODIGO) VALUES (21); -- Paul Gold
INSERT INTO p3_MILITAR (CODIGO) VALUES (22); -- Alex Gray
INSERT INTO p3_MILITAR (CODIGO) VALUES (25); -- Clara Blue
INSERT INTO p3_MILITAR (CODIGO) VALUES (28); -- Emma Yellow

-- Inserções para a tabela Minerador
INSERT INTO p3_MINERADOR (CODIGO) VALUES (1);  -- Jake Sully
INSERT INTO p3_MINERADOR (CODIGO) VALUES (4);  -- Trudy Chacón
INSERT INTO p3_MINERADOR (CODIGO) VALUES (6);  -- Paz Socorro
INSERT INTO p3_MINERADOR (CODIGO) VALUES (9);  -- Sean Fike
INSERT INTO p3_MINERADOR (CODIGO) VALUES (14); -- Sarah Red
INSERT INTO p3_MINERADOR (CODIGO) VALUES (16); -- Amanda Yellow
INSERT INTO p3_MINERADOR (CODIGO) VALUES (18); -- Helena Violet
INSERT INTO p3_MINERADOR (CODIGO) VALUES (19); -- Robert Indigo
INSERT INTO p3_MINERADOR (CODIGO) VALUES (24); -- Tom Brown
INSERT INTO p3_MINERADOR (CODIGO) VALUES (27); -- Lucas Red

-- Inserções para a tabela Cientista
INSERT INTO p3_CIENTISTA (CODIGO) VALUES (2);  -- Grace Augustine
INSERT INTO p3_CIENTISTA (CODIGO) VALUES (3);  -- Norm Spellman
INSERT INTO p3_CIENTISTA (CODIGO) VALUES (7);  -- Max Patel
INSERT INTO p3_CIENTISTA (CODIGO) VALUES (10); -- Thomas Sully
INSERT INTO p3_CIENTISTA (CODIGO) VALUES (13); -- Ethan Green
INSERT INTO p3_CIENTISTA (CODIGO) VALUES (20); -- Lisa Silver
INSERT INTO p3_CIENTISTA (CODIGO) VALUES (23); -- Megan White
INSERT INTO p3_CIENTISTA (CODIGO) VALUES (26); -- Olivia Green
INSERT INTO p3_CIENTISTA (CODIGO) VALUES (29); -- Sophia Violet
INSERT INTO p3_CIENTISTA (CODIGO) VALUES (30); -- Daniel Silver

-- Inserções para a tabela TrabalhadorControle
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (1, 'Minerador');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (2, 'Cientista');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (3, 'Cientista');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (4, 'Minerador');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (5, 'Militar');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (6, 'Minerador');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (7, 'Cientista');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (8, 'Militar');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (9, 'Minerador');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (10, 'Cientista');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (11, 'Militar');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (12, 'Militar');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (13, 'Cientista');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (14, 'Minerador');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (15, 'Militar');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (16, 'Minerador');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (17, 'Militar');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (18, 'Minerador');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (19, 'Minerador');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (20, 'Cientista');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (21, 'Militar');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (22, 'Militar');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (23, 'Cientista');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (24, 'Minerador');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (25, 'Militar');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (26, 'Cientista');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (27, 'Minerador');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (28, 'Militar');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (29, 'Cientista');
INSERT INTO p3_TrabalhadorControle (Codigo, Profissao) VALUES (30, 'Cientista');

-- Inserções para a tabela Pesquisa
INSERT INTO p3_Pesquisa (Codigo, Nome, NomeCon, SiglaCon, CodigoCien)
VALUES (1, 'Pesquisa sobre Flora de Pandora', 'Laboratório Botânico', 'LABBOT', 2);

INSERT INTO p3_Pesquisa (Codigo, Nome, NomeCon, SiglaCon, CodigoCien)
VALUES (2, 'Estudo Genético dos Navi', 'Laboratório Genético', 'LABGEN', 3);

INSERT INTO p3_Pesquisa (Codigo, Nome, NomeCon, SiglaCon, CodigoCien)
VALUES (3, 'Pesquisa Biológica em Pandora', 'Laboratório Biológico', 'LABBIO', 7);

INSERT INTO p3_Pesquisa (Codigo, Nome, NomeCon, SiglaCon, CodigoCien)
VALUES (4, 'Pesquisa de Compostos Químicos', 'Laboratório Químico', 'LABQUI', 26);

INSERT INTO p3_Pesquisa (Codigo, Nome, NomeCon, SiglaCon, CodigoCien)
VALUES (5, 'Pesquisa Medicinal em Pandora', 'Laboratório Medicinal', 'LABMED', 20);

INSERT INTO p3_Pesquisa (Codigo, Nome, NomeCon, SiglaCon, CodigoCien)
VALUES (6, 'Estudo sobre Física em Pandora', 'Laboratório de Física', 'LABFIS', 13);

INSERT INTO p3_Pesquisa (Codigo, Nome, NomeCon, SiglaCon, CodigoCien)
VALUES (7, 'Pesquisa em Robótica Avançada', 'Laboratório de Robótica', 'LABROB', 30);

INSERT INTO p3_Pesquisa (Codigo, Nome, NomeCon, SiglaCon, CodigoCien)
VALUES (8, 'Estudo da Fauna de Pandora', 'Laboratório de Zoologia', 'LABZOO', 29);

INSERT INTO p3_Pesquisa (Codigo, Nome, NomeCon, SiglaCon, CodigoCien)
VALUES (9, 'Pesquisa em Inteligência Artificial', 'Laboratório de Inteligência Artificial', 'LABIA', 10);

INSERT INTO p3_Pesquisa (Codigo, Nome, NomeCon, SiglaCon, CodigoCien)
VALUES (10, 'Desenvolvimento de Energias Renováveis', 'Laboratório de Energias Renováveis', 'LABENR', 23);

-- Inserções para a tabela Equipamento
INSERT INTO p3_Equipamento (Codigo, Nome, Utilidade, QtdEnergia)
VALUES (1, 'Microscópio Óptico', 'Usado para análise de amostras biológicas', 15);

INSERT INTO p3_Equipamento (Codigo, Nome, Utilidade, QtdEnergia)
VALUES (2, 'Centrífuga de Alta Velocidade', 'Separa componentes em amostras biológicas', 50);

INSERT INTO p3_Equipamento (Codigo, Nome, Utilidade, QtdEnergia)
VALUES (3, 'Espectrômetro de Massa', 'Identifica a composição de substâncias químicas', 120);

INSERT INTO p3_Equipamento (Codigo, Nome, Utilidade, QtdEnergia)
VALUES (4, 'Gerador de Campo Elétrico', 'Cria campos elétricos para experimentos físicos', 200);

INSERT INTO p3_Equipamento (Codigo, Nome, Utilidade, QtdEnergia)
VALUES (5, 'Robô Assistente', 'Robô para ajudar em operações de pesquisa', 350);

INSERT INTO p3_Equipamento (Codigo, Nome, Utilidade, QtdEnergia)
VALUES (6, 'Sensor de Radiação', 'Monitora níveis de radiação em Pandora', 30);

INSERT INTO p3_Equipamento (Codigo, Nome, Utilidade, QtdEnergia)
VALUES (7, 'Drone de Exploração', 'Realiza mapeamento aéreo de áreas em Pandora', 500);

INSERT INTO p3_Equipamento (Codigo, Nome, Utilidade, QtdEnergia)
VALUES (8, 'Incubadora Biológica', 'Usada para incubar amostras biológicas', 80);

INSERT INTO p3_Equipamento (Codigo, Nome, Utilidade, QtdEnergia)
VALUES (9, 'Laser de Precisão', 'Corta materiais para experimentos com alta precisão', 400);

INSERT INTO p3_Equipamento (Codigo, Nome, Utilidade, QtdEnergia)
VALUES (10, 'Computador Quântico', 'Processa grandes quantidades de dados científicos', 1000);

-- Inserções para a tabela P_tem_E
INSERT INTO p3_P_tem_E (CodigoPes, CodigoEqui)
VALUES (1, 1); -- Pesquisa sobre Flora de Pandora usa Microscópio Óptico

INSERT INTO p3_P_tem_E (CodigoPes, CodigoEqui)
VALUES (2, 2); -- Estudo Genético dos Na'vi usa Centrífuga de Alta Velocidade

INSERT INTO p3_P_tem_E (CodigoPes, CodigoEqui)
VALUES (3, 3); -- Pesquisa Biológica usa Espectrômetro de Massa

INSERT INTO p3_P_tem_E (CodigoPes, CodigoEqui)
VALUES (4, 4); -- Pesquisa de Compostos Químicos usa Gerador de Campo Elétrico

INSERT INTO p3_P_tem_E (CodigoPes, CodigoEqui)
VALUES (5, 5); -- Pesquisa Medicinal usa Robô Assistente

INSERT INTO p3_P_tem_E (CodigoPes, CodigoEqui)
VALUES (6, 6); -- Estudo sobre Física usa Sensor de Radiação

INSERT INTO p3_P_tem_E (CodigoPes, CodigoEqui)
VALUES (7, 7); -- Pesquisa em Robótica Avançada usa Drone de Exploração

INSERT INTO p3_P_tem_E (CodigoPes, CodigoEqui)
VALUES (8, 8); -- Estudo da Fauna de Pandora usa Incubadora Biológica

INSERT INTO p3_P_tem_E (CodigoPes, CodigoEqui)
VALUES (9, 9); -- Pesquisa em Inteligência Artificial usa Laser de Precisão

INSERT INTO p3_P_tem_E (CodigoPes, CodigoEqui)
VALUES (10, 10); -- Desenvolvimento de Energias Renováveis usa Computador Quântico


-- Inserções para a tabela Humano
INSERT INTO p3_Humano (Codigo) VALUES (101);  -- Jake Sully
INSERT INTO p3_Humano (Codigo) VALUES (102);  -- Grace Augustine
INSERT INTO p3_Humano (Codigo) VALUES (103);  -- Norm Spellman
INSERT INTO p3_Humano (Codigo) VALUES (104);  -- Trudy Chacón
INSERT INTO p3_Humano (Codigo) VALUES (105);  -- Miles Quaritch
INSERT INTO p3_Humano (Codigo) VALUES (106);  -- Paz Socorro
INSERT INTO p3_Humano (Codigo) VALUES (107);  -- Max Patel
INSERT INTO p3_Humano (Codigo) VALUES (108);  -- Lyle Wainfleet
INSERT INTO p3_Humano (Codigo) VALUES (109);  -- Sean Fike
INSERT INTO p3_Humano (Codigo) VALUES (110);  -- Thomas Sully

-- Inserções para a tabela Arvore
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (11, 'Árvore dos Ventos', 150, 120, 'Planície Campo Largo');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (12, 'Árvore da Esperança', 250, 130, 'Vale dos Thanators');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (13, 'Árvore da Harmonia', 180, 140, 'Montanha Dourada');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (14, 'Árvore Celestial', 300, 200, 'Planície dos Ventos');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (15, 'Árvore da Vida', 400, 160, 'Vale dos Ventos');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (16, 'Árvore do Silêncio', 280, 190, 'Planície do Crepúsculo');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (17, 'Árvore da Eternidade', 500, 170, 'Montanha do Trovão');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (18, 'Árvore do Fogo', 120, 110, 'Vale da Serenidade');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (19, 'Árvore do Conhecimento', 350, 150, 'Montanha do Vento');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (20, 'Árvore dos Ecos', 450, 170, 'Planície das Marés');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (21, 'Árvore Azul', 100, 60, 'Planície Campo Largo');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (22, 'Árvore da Luz', 220, 130, 'Vale dos Thanators');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (23, 'Árvore do Equilíbrio', 310, 150, 'Montanha Dourada');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (24, 'Árvore da Noite', 270, 190, 'Planície dos Ventos');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (25, 'Árvore da Brisa', 130, 80, 'Vale dos Ventos');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (26, 'Árvore da Serenidade', 330, 170, 'Planície do Crepúsculo');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (27, 'Árvore da Tempestade', 260, 180, 'Montanha do Trovão');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (28, 'Árvore da Ascensão', 190, 140, 'Vale da Serenidade');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (29, 'Árvore dos Mistérios', 400, 160, 'Montanha do Vento');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (30, 'Árvore do Crepúsculo', 350, 150, 'Planície das Marés');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (31, 'Árvore Rubra', 170, 100, 'Planície Campo Largo');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (32, 'Árvore da Aurora', 320, 190, 'Vale dos Thanators');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (33, 'Árvore da Sabedoria', 250, 120, 'Montanha Dourada');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (34, 'Árvore das Estrelas', 450, 200, 'Planície dos Ventos');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (35, 'Árvore do Infinito', 300, 170, 'Vale dos Ventos');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (36, 'Árvore das Chamas', 180, 110, 'Planície do Crepúsculo');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (37, 'Árvore dos Espíritos', 500, 180, 'Montanha do Trovão');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (38, 'Árvore do Som', 290, 160, 'Vale da Serenidade');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (39, 'Árvore do Vento', 320, 180, 'Montanha do Vento');
INSERT INTO p3_Arvore (Codigo, Descricao, Idade, Altura, NomeRegiao)
VALUES (40, 'Árvore do Amanhecer', 370, 200, 'Planície das Marés');

-- Inserções para a tabela Ser com Codigo variando de 1 a 50
INSERT INTO p3_Ser (Codigo) VALUES (1);
INSERT INTO p3_Ser (Codigo) VALUES (2);
INSERT INTO p3_Ser (Codigo) VALUES (3);
INSERT INTO p3_Ser (Codigo) VALUES (4);
INSERT INTO p3_Ser (Codigo) VALUES (5);
INSERT INTO p3_Ser (Codigo) VALUES (6);
INSERT INTO p3_Ser (Codigo) VALUES (7);
INSERT INTO p3_Ser (Codigo) VALUES (8);
INSERT INTO p3_Ser (Codigo) VALUES (9);
INSERT INTO p3_Ser (Codigo) VALUES (10);
INSERT INTO p3_Ser (Codigo) VALUES (11);
INSERT INTO p3_Ser (Codigo) VALUES (12);
INSERT INTO p3_Ser (Codigo) VALUES (13);
INSERT INTO p3_Ser (Codigo) VALUES (14);
INSERT INTO p3_Ser (Codigo) VALUES (15);
INSERT INTO p3_Ser (Codigo) VALUES (16);
INSERT INTO p3_Ser (Codigo) VALUES (17);
INSERT INTO p3_Ser (Codigo) VALUES (18);
INSERT INTO p3_Ser (Codigo) VALUES (19);
INSERT INTO p3_Ser (Codigo) VALUES (20);
INSERT INTO p3_Ser (Codigo) VALUES (21);
INSERT INTO p3_Ser (Codigo) VALUES (22);
INSERT INTO p3_Ser (Codigo) VALUES (23);
INSERT INTO p3_Ser (Codigo) VALUES (24);
INSERT INTO p3_Ser (Codigo) VALUES (25);
INSERT INTO p3_Ser (Codigo) VALUES (26);
INSERT INTO p3_Ser (Codigo) VALUES (27);
INSERT INTO p3_Ser (Codigo) VALUES (28);
INSERT INTO p3_Ser (Codigo) VALUES (29);
INSERT INTO p3_Ser (Codigo) VALUES (30);
INSERT INTO p3_Ser (Codigo) VALUES (31);
INSERT INTO p3_Ser (Codigo) VALUES (32);
INSERT INTO p3_Ser (Codigo) VALUES (33);
INSERT INTO p3_Ser (Codigo) VALUES (34);
INSERT INTO p3_Ser (Codigo) VALUES (35);
INSERT INTO p3_Ser (Codigo) VALUES (36);
INSERT INTO p3_Ser (Codigo) VALUES (37);
INSERT INTO p3_Ser (Codigo) VALUES (38);
INSERT INTO p3_Ser (Codigo) VALUES (39);
INSERT INTO p3_Ser (Codigo) VALUES (40);
INSERT INTO p3_Ser (Codigo) VALUES (41);
INSERT INTO p3_Ser (Codigo) VALUES (42);
INSERT INTO p3_Ser (Codigo) VALUES (43);
INSERT INTO p3_Ser (Codigo) VALUES (44);
INSERT INTO p3_Ser (Codigo) VALUES (45);
INSERT INTO p3_Ser (Codigo) VALUES (46);
INSERT INTO p3_Ser (Codigo) VALUES (47);
INSERT INTO p3_Ser (Codigo) VALUES (48);
INSERT INTO p3_Ser (Codigo) VALUES (49);
INSERT INTO p3_Ser (Codigo) VALUES (50);


-- Inserções para a tabela Moradia
INSERT INTO p3_Moradia (CodigoArv, QtdMaxima)
VALUES (31, 50);
INSERT INTO p3_Moradia (CodigoArv, QtdMaxima)
VALUES (32, 40);
INSERT INTO p3_Moradia (CodigoArv, QtdMaxima)
VALUES (33, 60);
INSERT INTO p3_Moradia (CodigoArv, QtdMaxima)
VALUES (34, 55);
INSERT INTO p3_Moradia (CodigoArv, QtdMaxima)
VALUES (35, 70);
INSERT INTO p3_Moradia (CodigoArv, QtdMaxima)
VALUES (36, 65);
INSERT INTO p3_Moradia (CodigoArv, QtdMaxima)
VALUES (37, 80);
INSERT INTO p3_Moradia (CodigoArv, QtdMaxima)
VALUES (38, 45);
INSERT INTO p3_Moradia (CodigoArv, QtdMaxima)
VALUES (39, 50);
INSERT INTO p3_Moradia (CodigoArv, QtdMaxima)
VALUES (40, 75);

-- Inserções atualizadas para a tabela Navi com CodigoSer de 41 a 50
INSERT INTO p3_Navi (CodigoSer, Altura, TamCauda, Nome, LatitudeR, LongitudeR, CodigoArv)
VALUES (41, 3.1, 1.5, 'Jake Sully', -12.34, 45.67, 31);

INSERT INTO p3_Navi (CodigoSer, Altura, TamCauda, Nome, LatitudeR, LongitudeR, CodigoArv)
VALUES (42, 3.2, 1.6, 'Neytiri', -22.44, 55.77, 32);

INSERT INTO p3_Navi (CodigoSer, Altura, TamCauda, Nome, LatitudeR, LongitudeR, CodigoArv)
VALUES (43, 3.0, 1.4, 'Tsutey', -32.54, 65.87, 33);

INSERT INTO p3_Navi (CodigoSer, Altura, TamCauda, Nome, LatitudeR, LongitudeR, CodigoArv)
VALUES (44, 3.3, 1.7, 'Moat', -42.64, 75.97, 34);

INSERT INTO p3_Navi (CodigoSer, Altura, TamCauda, Nome, LatitudeR, LongitudeR, CodigoArv)
VALUES (45, 3.1, 1.5, 'Eytukan', -52.74, 85.07, 35);

INSERT INTO p3_Navi (CodigoSer, Altura, TamCauda, Nome, LatitudeR, LongitudeR, CodigoArv)
VALUES (46, 3.2, 1.6, 'Tuktirey', -62.84, 95.17, 36);

INSERT INTO p3_Navi (CodigoSer, Altura, TamCauda, Nome, LatitudeR, LongitudeR, CodigoArv)
VALUES (47, 3.4, 1.8, 'Ralu', -72.94, 105.27, 37);

INSERT INTO p3_Navi (CodigoSer, Altura, TamCauda, Nome, LatitudeR, LongitudeR, CodigoArv)
VALUES (48, 3.3, 1.7, 'Sylwanin', -82.04, 115.37, 38);

INSERT INTO p3_Navi (CodigoSer, Altura, TamCauda, Nome, LatitudeR, LongitudeR, CodigoArv)
VALUES (49, 3.2, 1.6, 'Kiri', -92.14, 125.47, 39);

INSERT INTO p3_Navi (CodigoSer, Altura, TamCauda, Nome, LatitudeR, LongitudeR, CodigoArv)
VALUES (50, 3.1, 1.5, 'Akwey', -102.24, 135.57, 40);

-- Inserções para a tabela Avatar
INSERT INTO p3_Avatar (Codigo, Nome, CodigoNavi, CodigoHumano)
VALUES (P3_AVATAR_SEQ.NEXTVAL, 'Avatar de Jake Sully', 41, 101);

INSERT INTO p3_Avatar (Codigo, Nome, CodigoNavi, CodigoHumano)
VALUES (P3_AVATAR_SEQ.NEXTVAL, 'Avatar de Grace Augustine', 42, 102);

INSERT INTO p3_Avatar (Codigo, Nome, CodigoNavi, CodigoHumano)
VALUES (P3_AVATAR_SEQ.NEXTVAL, 'Avatar de Norm Spellman', 43, 103);

INSERT INTO p3_Avatar (Codigo, Nome, CodigoNavi, CodigoHumano)
VALUES (P3_AVATAR_SEQ.NEXTVAL, 'Avatar de Trudy Chacón', 44, 104);

INSERT INTO p3_Avatar (Codigo, Nome, CodigoNavi, CodigoHumano)
VALUES (P3_AVATAR_SEQ.NEXTVAL, 'Avatar de Miles Quaritch', 45, 105);

INSERT INTO p3_Avatar (Codigo, Nome, CodigoNavi, CodigoHumano)
VALUES (P3_AVATAR_SEQ.NEXTVAL, 'Avatar de Paz Socorro', 46, 106);

INSERT INTO p3_Avatar (Codigo, Nome, CodigoNavi, CodigoHumano)
VALUES (P3_AVATAR_SEQ.NEXTVAL, 'Avatar de Max Patel', 47, 107);

INSERT INTO p3_Avatar (Codigo, Nome, CodigoNavi, CodigoHumano)
VALUES (P3_AVATAR_SEQ.NEXTVAL, 'Avatar de Lyle Wainfleet', 48, 108);

INSERT INTO p3_Avatar (Codigo, Nome, CodigoNavi, CodigoHumano)
VALUES (P3_AVATAR_SEQ.NEXTVAL, 'Avatar de Sean Fike', 49, 109);

INSERT INTO p3_Avatar (Codigo, Nome, CodigoNavi, CodigoHumano)
VALUES (P3_AVATAR_SEQ.NEXTVAL, 'Avatar de Thomas Sully', 50, 110);

-- Inserções para a tabela Resultado
INSERT INTO p3_Resultado (CodigoPes, CodigoAvatar)
VALUES (1, 1);  -- Pesquisa sobre Flora de Pandora usa Avatar de Jake Sully

INSERT INTO p3_Resultado (CodigoPes, CodigoAvatar)
VALUES (2, 2);  -- Estudo Genético dos Na'vi usa Avatar de Grace Augustine

INSERT INTO p3_Resultado (CodigoPes, CodigoAvatar)
VALUES (3, 3);  -- Pesquisa Biológica usa Avatar de Norm Spellman

INSERT INTO p3_Resultado (CodigoPes, CodigoAvatar)
VALUES (4, 4);  -- Pesquisa de Compostos Químicos usa Avatar de Trudy Chacón

INSERT INTO p3_Resultado (CodigoPes, CodigoAvatar)
VALUES (5, 5);  -- Pesquisa Medicinal usa Avatar de Miles Quaritch

INSERT INTO p3_Resultado (CodigoPes, CodigoAvatar)
VALUES (6, 6);  -- Estudo sobre Física usa Avatar de Paz Socorro

INSERT INTO p3_Resultado (CodigoPes, CodigoAvatar)
VALUES (7, 7);  -- Pesquisa em Robótica Avançada usa Avatar de Max Patel

INSERT INTO p3_Resultado (CodigoPes, CodigoAvatar)
VALUES (8, 8);  -- Estudo da Fauna de Pandora usa Avatar de Lyle Wainfleet

INSERT INTO p3_Resultado (CodigoPes, CodigoAvatar)
VALUES (9, 9);  -- Pesquisa em Inteligência Artificial usa Avatar de Sean Fike

INSERT INTO p3_Resultado (CodigoPes, CodigoAvatar)
VALUES (10, 10); -- Desenvolvimento de Energias Renováveis usa Avatar de Thomas Sully

-- Inserções para a tabela Maquinario
INSERT INTO p3_Maquinario (Codigo, Modelo, PesoOperacional, Potencia)
VALUES (1, 'E984A', 125, 512);

INSERT INTO p3_Maquinario (Codigo, Modelo, PesoOperacional, Potencia)
VALUES (2, 'T282B', 600, 1024);

INSERT INTO p3_Maquinario (Codigo, Modelo, PesoOperacional, Potencia)
VALUES (3, 'X220X', 150, 600);

INSERT INTO p3_Maquinario (Codigo, Modelo, PesoOperacional, Potencia)
VALUES (4, 'M700H', 80, 450);

INSERT INTO p3_Maquinario (Codigo, Modelo, PesoOperacional, Potencia)
VALUES (5, 'J550T', 200, 800);

INSERT INTO p3_Maquinario (Codigo, Modelo, PesoOperacional, Potencia)
VALUES (6, 'L300A', 300, 950);

INSERT INTO p3_Maquinario (Codigo, Modelo, PesoOperacional, Potencia)
VALUES (7, 'V400R', 450, 1100);

INSERT INTO p3_Maquinario (Codigo, Modelo, PesoOperacional, Potencia)
VALUES (8, 'P900X', 500, 1250);

INSERT INTO p3_Maquinario (Codigo, Modelo, PesoOperacional, Potencia)
VALUES (9, 'Q320Y', 275, 725);

INSERT INTO p3_Maquinario (Codigo, Modelo, PesoOperacional, Potencia)
VALUES (10, 'R1000G', 1000, 1500);

INSERT INTO p3_Maquinario (Codigo, Modelo, PesoOperacional, Potencia)
VALUES (11, 'Z750L', 750, 1350);

INSERT INTO p3_Maquinario (Codigo, Modelo, PesoOperacional, Potencia)
VALUES (12, 'F450C', 450, 1200);

INSERT INTO p3_Maquinario (Codigo, Modelo, PesoOperacional, Potencia)
VALUES (13, 'S300T', 300, 850);

INSERT INTO p3_Maquinario (Codigo, Modelo, PesoOperacional, Potencia)
VALUES (14, 'N600V', 600, 1150);

INSERT INTO p3_Maquinario (Codigo, Modelo, PesoOperacional, Potencia)
VALUES (15, 'K500B', 500, 1050);

INSERT INTO p3_Maquinario (Codigo, Modelo, PesoOperacional, Potencia)
VALUES (16, 'D220F', 220, 625);

INSERT INTO p3_Maquinario (Codigo, Modelo, PesoOperacional, Potencia)
VALUES (17, 'H350M', 350, 900);

INSERT INTO p3_Maquinario (Codigo, Modelo, PesoOperacional, Potencia)
VALUES (18, 'O780Q', 780, 1300);

INSERT INTO p3_Maquinario (Codigo, Modelo, PesoOperacional, Potencia)
VALUES (19, 'C550D', 550, 1100);

INSERT INTO p3_Maquinario (Codigo, Modelo, PesoOperacional, Potencia)
VALUES (20, 'G480E', 480, 1080);

-- Inserções para a tabela MaquinarioControle
INSERT INTO p3_MaquinarioControle (Codigo, Tipo) VALUES (1, 'Escavadeira');
INSERT INTO p3_MaquinarioControle (Codigo, Tipo) VALUES (2, 'Caminhão');
INSERT INTO p3_MaquinarioControle (Codigo, Tipo) VALUES (3, 'Escavadeira');
INSERT INTO p3_MaquinarioControle (Codigo, Tipo) VALUES (4, 'Caminhão');
INSERT INTO p3_MaquinarioControle (Codigo, Tipo) VALUES (5, 'Escavadeira');
INSERT INTO p3_MaquinarioControle (Codigo, Tipo) VALUES (6, 'Caminhão');
INSERT INTO p3_MaquinarioControle (Codigo, Tipo) VALUES (7, 'Escavadeira');
INSERT INTO p3_MaquinarioControle (Codigo, Tipo) VALUES (8, 'Caminhão');
INSERT INTO p3_MaquinarioControle (Codigo, Tipo) VALUES (9, 'Escavadeira');
INSERT INTO p3_MaquinarioControle (Codigo, Tipo) VALUES (10, 'Escavadeira');
INSERT INTO p3_MaquinarioControle (Codigo, Tipo) VALUES (11, 'Caminhão');
INSERT INTO p3_MaquinarioControle (Codigo, Tipo) VALUES (12, 'Escavadeira');
INSERT INTO p3_MaquinarioControle (Codigo, Tipo) VALUES (13, 'Caminhão');
INSERT INTO p3_MaquinarioControle (Codigo, Tipo) VALUES (14, 'Escavadeira');
INSERT INTO p3_MaquinarioControle (Codigo, Tipo) VALUES (15, 'Caminhão');
INSERT INTO p3_MaquinarioControle (Codigo, Tipo) VALUES (16, 'Escavadeira');
INSERT INTO p3_MaquinarioControle (Codigo, Tipo) VALUES (17, 'Caminhão');
INSERT INTO p3_MaquinarioControle (Codigo, Tipo) VALUES (18, 'Escavadeira');
INSERT INTO p3_MaquinarioControle (Codigo, Tipo) VALUES (19, 'Caminhão');
INSERT INTO p3_MaquinarioControle (Codigo, Tipo) VALUES (20, 'Escavadeira');

-- Inserções para a tabela Escavadeira
INSERT INTO p3_Escavadeira (Codigo, CapPa)
VALUES (1, 8.00);

INSERT INTO p3_Escavadeira (Codigo, CapPa)
VALUES (3, 7.50);

INSERT INTO p3_Escavadeira (Codigo, CapPa)
VALUES (5, 9.00);

INSERT INTO p3_Escavadeira (Codigo, CapPa)
VALUES (7, 8.50);

INSERT INTO p3_Escavadeira (Codigo, CapPa)
VALUES (9, 8.75);

INSERT INTO p3_Escavadeira (Codigo, CapPa)
VALUES (10, 9.25);

INSERT INTO p3_Escavadeira (Codigo, CapPa)
VALUES (12, 7.00);

INSERT INTO p3_Escavadeira (Codigo, CapPa)
VALUES (14, 6.50);

INSERT INTO p3_Escavadeira (Codigo, CapPa)
VALUES (16, 8.20);

INSERT INTO p3_Escavadeira (Codigo, CapPa)
VALUES (18, 7.80);

-- Inserções para a tabela Caminhao
INSERT INTO p3_Caminhao (Codigo, CapCa)
VALUES (2, 64.00);  -- Caminhão T282B

INSERT INTO p3_Caminhao (Codigo, CapCa)
VALUES (4, 58.00);  -- Caminhão M700H

INSERT INTO p3_Caminhao (Codigo, CapCa)
VALUES (6, 62.00);  -- Caminhão L300A

INSERT INTO p3_Caminhao (Codigo, CapCa)
VALUES (8, 65.00);  -- Caminhão P900X

INSERT INTO p3_Caminhao (Codigo, CapCa)
VALUES (11, 60.00);  -- Caminhão Z750L

INSERT INTO p3_Caminhao (Codigo, CapCa)
VALUES (13, 61.50);  -- Caminhão S300T

INSERT INTO p3_Caminhao (Codigo, CapCa)
VALUES (15, 63.00);  -- Caminhão K500B

INSERT INTO p3_Caminhao (Codigo, CapCa)
VALUES (17, 64.00);  -- Caminhão H350M

INSERT INTO p3_Caminhao (Codigo, CapCa)
VALUES (19, 62.50);  -- Caminhão C550D

INSERT INTO p3_Caminhao (Codigo, CapCa)
VALUES (20, 66.00);  -- Caminhão G480E



-- Inserções para a tabela Terapeutica
INSERT INTO p3_Terapeutica (CodigoArv, GeraSemente)
VALUES (11, 'Y');
INSERT INTO p3_Terapeutica (CodigoArv, GeraSemente)
VALUES (12, 'N');
INSERT INTO p3_Terapeutica (CodigoArv, GeraSemente)
VALUES (13, 'Y');
INSERT INTO p3_Terapeutica (CodigoArv, GeraSemente)
VALUES (14, 'N');
INSERT INTO p3_Terapeutica (CodigoArv, GeraSemente)
VALUES (15, 'Y');
INSERT INTO p3_Terapeutica (CodigoArv, GeraSemente)
VALUES (16, 'Y');
INSERT INTO p3_Terapeutica (CodigoArv, GeraSemente)
VALUES (17, 'N');
INSERT INTO p3_Terapeutica (CodigoArv, GeraSemente)
VALUES (18, 'Y');
INSERT INTO p3_Terapeutica (CodigoArv, GeraSemente)
VALUES (19, 'Y');
INSERT INTO p3_Terapeutica (CodigoArv, GeraSemente)
VALUES (20, 'N');

-- Inserções para a tabela Espiritual
INSERT INTO p3_Espiritual (CodigoArv, VozOuAlma)
VALUES (21, 'Voz');
INSERT INTO p3_Espiritual (CodigoArv, VozOuAlma)
VALUES (22, 'Alma');
INSERT INTO p3_Espiritual (CodigoArv, VozOuAlma)
VALUES (23, 'Voz');
INSERT INTO p3_Espiritual (CodigoArv, VozOuAlma)
VALUES (24, 'Alma');
INSERT INTO p3_Espiritual (CodigoArv, VozOuAlma)
VALUES (25, 'Voz');
INSERT INTO p3_Espiritual (CodigoArv, VozOuAlma)
VALUES (26, 'Voz');
INSERT INTO p3_Espiritual (CodigoArv, VozOuAlma)
VALUES (27, 'Alma');
INSERT INTO p3_Espiritual (CodigoArv, VozOuAlma)
VALUES (28, 'Voz');
INSERT INTO p3_Espiritual (CodigoArv, VozOuAlma)
VALUES (29, 'Voz');
INSERT INTO p3_Espiritual (CodigoArv, VozOuAlma)
VALUES (30, 'Alma');

-- Inserções para a tabela Vale
INSERT INTO p3_Vale (NomeRegiao, ProfMax, TemAgua) 
VALUES ('Vale da Serenidade', 200, 'Y');
INSERT INTO p3_Vale (NomeRegiao, ProfMax, TemAgua) 
VALUES ('Vale da Neblina', 300, 'N');
INSERT INTO p3_Vale (NomeRegiao, ProfMax, TemAgua) 
VALUES ('Vale dos Thanators', 250, 'Y');
INSERT INTO p3_Vale (NomeRegiao, ProfMax, TemAgua) 
VALUES ('Vale do Silêncio', 100, 'N');
INSERT INTO p3_Vale (NomeRegiao, ProfMax, TemAgua) 
VALUES ('Vale dos Ventos', 150, 'N');
INSERT INTO p3_Vale (NomeRegiao, ProfMax, TemAgua) 
VALUES ('Vale da Harmonia', 200, 'Y');
INSERT INTO p3_Vale (NomeRegiao, ProfMax, TemAgua) 
VALUES ('Vale do Crepúsculo', 180, 'N');
INSERT INTO p3_Vale (NomeRegiao, ProfMax, TemAgua) 
VALUES ('Vale do Sol', 220, 'Y');
INSERT INTO p3_Vale (NomeRegiao, ProfMax, TemAgua) 
VALUES ('Vale da Morte', 320, 'N');
INSERT INTO p3_Vale (NomeRegiao, ProfMax, TemAgua) 
VALUES ('Vale dos Espíritos', 400, 'Y');

-- Inserções para a tabela Planicie
INSERT INTO p3_Planicie (NomeRegiao, TemRio, TemLago, DescrFlora) 
VALUES ('Planície de Fogo', 'N', 'N', 'Vegetação seca e resistente');
INSERT INTO p3_Planicie (NomeRegiao, TemRio, TemLago, DescrFlora) 
VALUES ('Planície do Crepúsculo', 'Y', 'N', 'Vegetação densa com flores luminescentes');
INSERT INTO p3_Planicie (NomeRegiao, TemRio, TemLago, DescrFlora) 
VALUES ('Planície da Luz', 'N', 'Y', 'Vegetação aquática e flores altas');
INSERT INTO p3_Planicie (NomeRegiao, TemRio, TemLago, DescrFlora) 
VALUES ('Planície Campo Largo', 'Y', 'N', 'Campos abertos com arbustos pequenos');
INSERT INTO p3_Planicie (NomeRegiao, TemRio, TemLago, DescrFlora) 
VALUES ('Planície das Marés', 'Y', 'Y', 'Vegetação mista com plantas aquáticas e terrestres');
INSERT INTO p3_Planicie (NomeRegiao, TemRio, TemLago, DescrFlora) 
VALUES ('Planície da Serenidade', 'N', 'N', 'Árvores pequenas com folhagem densa');
INSERT INTO p3_Planicie (NomeRegiao, TemRio, TemLago, DescrFlora) 
VALUES ('Planície dos Ecos', 'Y', 'N', 'Vegetação seca com pequenos rios esporádicos');
INSERT INTO p3_Planicie (NomeRegiao, TemRio, TemLago, DescrFlora) 
VALUES ('Planície dos Ventos', 'N', 'N', 'Vegetação rasteira resistente ao vento');
INSERT INTO p3_Planicie (NomeRegiao, TemRio, TemLago, DescrFlora) 
VALUES ('Planície Rubra', 'N', 'Y', 'Flores vermelhas densas e árvores esparsas');
INSERT INTO p3_Planicie (NomeRegiao, TemRio, TemLago, DescrFlora) 
VALUES ('Planície da Paz', 'Y', 'N', 'Flores de todos os tipos e tamanhos');

-- Inserções para a tabela Montanha
INSERT INTO p3_Montanha (NomeRegiao, Altura, SeMov)
VALUES ('Montanha da Sabedoria', 3000, 'N');
INSERT INTO p3_Montanha (NomeRegiao, Altura, SeMov)
VALUES ('Montanha do Vento', 2500, 'Y');
INSERT INTO p3_Montanha (NomeRegiao, Altura, SeMov)
VALUES ('Montanha Dourada', 4000, 'N');
INSERT INTO p3_Montanha (NomeRegiao, Altura, SeMov)
VALUES ('Montanha do Trovão', 3200, 'Y');
INSERT INTO p3_Montanha (NomeRegiao, Altura, SeMov)
VALUES ('Montanha dos Dragões', 3500, 'N');
INSERT INTO p3_Montanha (NomeRegiao, Altura, SeMov)
VALUES ('Montanha do Crepúsculo', 2800, 'Y');
INSERT INTO p3_Montanha (NomeRegiao, Altura, SeMov)
VALUES ('Montanha da Morte', 4100, 'N');
INSERT INTO p3_Montanha (NomeRegiao, Altura, SeMov)
VALUES ('Montanha das Almas', 3300, 'N');
INSERT INTO p3_Montanha (NomeRegiao, Altura, SeMov)
VALUES ('Montanha da Ascensão', 2700, 'Y');
INSERT INTO p3_Montanha (NomeRegiao, Altura, SeMov)
VALUES ('Montanha do Fogo', 3900, 'N');

-- Inserções para a tabela Cla
INSERT INTO p3_Cla (Nome)
VALUES ('Omaticaya');

INSERT INTO p3_Cla (Nome)
VALUES ('Tawkami');

INSERT INTO p3_Cla (Nome)
VALUES ('Tipani');

INSERT INTO p3_Cla (Nome)
VALUES ('Metkayina');

INSERT INTO p3_Cla (Nome)
VALUES ('Anurai');

INSERT INTO p3_Cla (Nome)
VALUES ('Li’ona');

INSERT INTO p3_Cla (Nome)
VALUES ('Olangi');

INSERT INTO p3_Cla (Nome)
VALUES ('Toktor');

INSERT INTO p3_Cla (Nome)
VALUES ('Kelutral');

INSERT INTO p3_Cla (Nome)
VALUES ('Kekunan');

-- Inserções para a tabela Thanators
INSERT INTO p3_Thanators (ForcaMax, VelocidadeMax, CodigoSer, NomeRegiao)
VALUES (2000, 120, 1, 'Vale dos Thanators');

INSERT INTO p3_Thanators (ForcaMax, VelocidadeMax, CodigoSer, NomeRegiao)
VALUES (2100, 115, 2, 'Vale da Neblina');

INSERT INTO p3_Thanators (ForcaMax, VelocidadeMax, CodigoSer, NomeRegiao)
VALUES (2200, 130, 3, 'Vale da Morte');

INSERT INTO p3_Thanators (ForcaMax, VelocidadeMax, CodigoSer, NomeRegiao)
VALUES (2300, 140, 4, 'Vale do Silêncio');

INSERT INTO p3_Thanators (ForcaMax, VelocidadeMax, CodigoSer, NomeRegiao)
VALUES (2400, 110, 5, 'Vale dos Ventos');

INSERT INTO p3_Thanators (ForcaMax, VelocidadeMax, CodigoSer, NomeRegiao)
VALUES (2500, 135, 6, 'Vale da Harmonia');

INSERT INTO p3_Thanators (ForcaMax, VelocidadeMax, CodigoSer, NomeRegiao)
VALUES (2600, 145, 7, 'Vale do Sol');

INSERT INTO p3_Thanators (ForcaMax, VelocidadeMax, CodigoSer, NomeRegiao)
VALUES (2700, 150, 8, 'Vale dos Espíritos');

INSERT INTO p3_Thanators (ForcaMax, VelocidadeMax, CodigoSer, NomeRegiao)
VALUES (2800, 155, 9, 'Vale da Serenidade');

INSERT INTO p3_Thanators (ForcaMax, VelocidadeMax, CodigoSer, NomeRegiao)
VALUES (2900, 160, 10, 'Vale dos Thanators');

-- Inserções para a tabela Leonopteryx
INSERT INTO p3_Leonopteryx (NomeRegiao, Cores, TamanhoAsa, CodigoSer)
VALUES ('Vale dos Thanators', 'Vermelho,Amarelo', 24.5, 11);

INSERT INTO p3_Leonopteryx (NomeRegiao, Cores, TamanhoAsa, CodigoSer)
VALUES ('Vale da Neblina', 'Azul,Laranja', 23.0, 12);

INSERT INTO p3_Leonopteryx (NomeRegiao, Cores, TamanhoAsa, CodigoSer)
VALUES ('Vale da Morte', 'Verde,Roxo', 25.0, 13);

INSERT INTO p3_Leonopteryx (NomeRegiao, Cores, TamanhoAsa, CodigoSer)
VALUES ('Vale do Silêncio', 'Preto,Branco', 22.0, 14);

INSERT INTO p3_Leonopteryx (NomeRegiao, Cores, TamanhoAsa, CodigoSer)
VALUES ('Vale dos Ventos', 'Amarelo,Verde', 24.0, 15);

INSERT INTO p3_Leonopteryx (NomeRegiao, Cores, TamanhoAsa, CodigoSer)
VALUES ('Vale da Harmonia', 'Roxo,Laranja', 23.5, 16);

INSERT INTO p3_Leonopteryx (NomeRegiao, Cores, TamanhoAsa, CodigoSer)
VALUES ('Vale do Sol', 'Vermelho,Preto', 26.0, 17);

INSERT INTO p3_Leonopteryx (NomeRegiao, Cores, TamanhoAsa, CodigoSer)
VALUES ('Vale dos Espíritos', 'Azul,Branco', 22.5, 18);

INSERT INTO p3_Leonopteryx (NomeRegiao, Cores, TamanhoAsa, CodigoSer)
VALUES ('Vale da Serenidade', 'Verde,Azul', 25.0, 19);

INSERT INTO p3_Leonopteryx (NomeRegiao, Cores, TamanhoAsa, CodigoSer)
VALUES ('Vale dos Thanators', 'Preto,Vermelho', 26.5, 20);

-- Inserções para a tabela Banshee
INSERT INTO p3_Banshee (CodigoSer, AlturaMaxima, CorPredominante, NomeRegiao)
VALUES (21, 1000, 'Azul', 'Montanha da Sabedoria');

INSERT INTO p3_Banshee (CodigoSer, AlturaMaxima, CorPredominante, NomeRegiao)
VALUES (22, 950, 'Verde', 'Montanha do Vento');

INSERT INTO p3_Banshee (CodigoSer, AlturaMaxima, CorPredominante, NomeRegiao)
VALUES (23, 1050, 'Amarelo', 'Montanha Dourada');

INSERT INTO p3_Banshee (CodigoSer, AlturaMaxima, CorPredominante, NomeRegiao)
VALUES (24, 900, 'Vermelho', 'Montanha do Trovão');

INSERT INTO p3_Banshee (CodigoSer, AlturaMaxima, CorPredominante, NomeRegiao)
VALUES (25, 1100, 'Preto', 'Montanha dos Dragões');

INSERT INTO p3_Banshee (CodigoSer, AlturaMaxima, CorPredominante, NomeRegiao)
VALUES (26, 980, 'Roxo', 'Montanha do Crepúsculo');

INSERT INTO p3_Banshee (CodigoSer, AlturaMaxima, CorPredominante, NomeRegiao)
VALUES (27, 1200, 'Branco', 'Montanha da Morte');

INSERT INTO p3_Banshee (CodigoSer, AlturaMaxima, CorPredominante, NomeRegiao)
VALUES (28, 1150, 'Cinza', 'Montanha das Almas');

INSERT INTO p3_Banshee (CodigoSer, AlturaMaxima, CorPredominante, NomeRegiao)
VALUES (29, 950, 'Laranja', 'Montanha da Ascensão');

INSERT INTO p3_Banshee (CodigoSer, AlturaMaxima, CorPredominante, NomeRegiao)
VALUES (30, 1100, 'AzulMarinho', 'Montanha do Fogo');

-- Inserções para a tabela Direhorsers
INSERT INTO p3_Direhorsers (CodigoSer, TamPatas, TamAntena, NomeRegiao)
VALUES (31, 3.5, 1.2, 'Planície de Fogo');

INSERT INTO p3_Direhorsers (CodigoSer, TamPatas, TamAntena, NomeRegiao)
VALUES (32, 3.8, 1.3, 'Planície do Crepúsculo');

INSERT INTO p3_Direhorsers (CodigoSer, TamPatas, TamAntena, NomeRegiao)
VALUES (33, 4.0, 1.1, 'Planície da Luz');

INSERT INTO p3_Direhorsers (CodigoSer, TamPatas, TamAntena, NomeRegiao)
VALUES (34, 3.6, 1.4, 'Planície Campo Largo');

INSERT INTO p3_Direhorsers (CodigoSer, TamPatas, TamAntena, NomeRegiao)
VALUES (35, 3.9, 1.2, 'Planície das Marés');

INSERT INTO p3_Direhorsers (CodigoSer, TamPatas, TamAntena, NomeRegiao)
VALUES (36, 4.1, 1.3, 'Planície da Serenidade');

INSERT INTO p3_Direhorsers (CodigoSer, TamPatas, TamAntena, NomeRegiao)
VALUES (37, 4.0, 1.5, 'Planície dos Ecos');

INSERT INTO p3_Direhorsers (CodigoSer, TamPatas, TamAntena, NomeRegiao)
VALUES (38, 3.7, 1.4, 'Planície dos Ventos');

INSERT INTO p3_Direhorsers (CodigoSer, TamPatas, TamAntena, NomeRegiao)
VALUES (39, 3.5, 1.1, 'Planície Rubra');

INSERT INTO p3_Direhorsers (CodigoSer, TamPatas, TamAntena, NomeRegiao)
VALUES (40, 4.2, 1.6, 'Planície da Paz');

-- Inserções para a tabela Posicao
INSERT INTO p3_Posicao (Codigo, CodigoSer, NomeCla, Funcao)
VALUES (1, 41, 'Omaticaya', 'Chefe de Guerra');

INSERT INTO p3_Posicao (Codigo, CodigoSer, NomeCla, Funcao)
VALUES (2, 42, 'Omaticaya', 'Curandeiro');

INSERT INTO p3_Posicao (Codigo, CodigoSer, NomeCla, Funcao)
VALUES (3, 43, 'Omaticaya', 'Caçador');

INSERT INTO p3_Posicao (Codigo, CodigoSer, NomeCla, Funcao)
VALUES (4, 44, 'Tawkami', 'Líder Espiritual');

INSERT INTO p3_Posicao (Codigo, CodigoSer, NomeCla, Funcao)
VALUES (5, 45, 'Tawkami', 'Guerreiro');

INSERT INTO p3_Posicao (Codigo, CodigoSer, NomeCla, Funcao)
VALUES (6, 46, 'Tipani', 'Defensor');

INSERT INTO p3_Posicao (Codigo, CodigoSer, NomeCla, Funcao)
VALUES (7, 47, 'Metkayina', 'Navegador');

INSERT INTO p3_Posicao (Codigo, CodigoSer, NomeCla, Funcao)
VALUES (8, 48, 'Metkayina', 'Guardião do Mar');

INSERT INTO p3_Posicao (Codigo, CodigoSer, NomeCla, Funcao)
VALUES (9, 49, 'Anurai', 'Xamã');

INSERT INTO p3_Posicao (Codigo, CodigoSer, NomeCla, Funcao)
VALUES (10, 50, 'Anurai', 'Caçador de Bestas');

-- Inserções para a tabela RitoPassagem
INSERT INTO p3_RitoPassagem (Codigo, CodigoSerNavi, CodigoSerBanshee, CodigoPos)
VALUES ('RP001', 41, 21, 1);

INSERT INTO p3_RitoPassagem (Codigo, CodigoSerNavi, CodigoSerBanshee, CodigoPos)
VALUES ('RP002', 42, 22, 2);

INSERT INTO p3_RitoPassagem (Codigo, CodigoSerNavi, CodigoSerBanshee, CodigoPos)
VALUES ('RP003', 43, 23, 3);

INSERT INTO p3_RitoPassagem (Codigo, CodigoSerNavi, CodigoSerBanshee, CodigoPos)
VALUES ('RP004', 44, 24, 4);

INSERT INTO p3_RitoPassagem (Codigo, CodigoSerNavi, CodigoSerBanshee, CodigoPos)
VALUES ('RP005', 45, 25, 5);

INSERT INTO p3_RitoPassagem (Codigo, CodigoSerNavi, CodigoSerBanshee, CodigoPos)
VALUES ('RP006', 46, 26, 6);

INSERT INTO p3_RitoPassagem (Codigo, CodigoSerNavi, CodigoSerBanshee, CodigoPos)
VALUES ('RP007', 47, 27, 7);

INSERT INTO p3_RitoPassagem (Codigo, CodigoSerNavi, CodigoSerBanshee, CodigoPos)
VALUES ('RP008', 48, 28, 8);

INSERT INTO p3_RitoPassagem (Codigo, CodigoSerNavi, CodigoSerBanshee, CodigoPos)
VALUES ('RP009', 49, 29, 9);

INSERT INTO p3_RitoPassagem (Codigo, CodigoSerNavi, CodigoSerBanshee, CodigoPos)
VALUES ('RP010', 50, 30, 10);

-- Inserções para a tabela ConectaSer
INSERT INTO p3_ConectaSer (Ser1, Ser2, CodigoArv, Tipo)
VALUES (41, 42, 22, 'Comunicação');

INSERT INTO p3_ConectaSer (Ser1, Ser2, CodigoArv, Tipo)
VALUES (43, 44, 22, 'Reprodução');

INSERT INTO p3_ConectaSer (Ser1, Ser2, CodigoArv, Tipo)
VALUES (45, 46, 22, 'Domínio');

INSERT INTO p3_ConectaSer (Ser1, Ser2, CodigoArv, Tipo)
VALUES (47, 48, 22, 'Comunicação');

INSERT INTO p3_ConectaSer (Ser1, Ser2, CodigoArv, Tipo)
VALUES (49, 50, 22, 'Reprodução');

INSERT INTO p3_ConectaSer (Ser1, Ser2, CodigoArv, Tipo)
VALUES (41, 43, 22, 'Comunicação');

INSERT INTO p3_ConectaSer (Ser1, Ser2, CodigoArv, Tipo)
VALUES (42, 44, 22, 'Domínio');

INSERT INTO p3_ConectaSer (Ser1, Ser2, CodigoArv, Tipo)
VALUES (45, 47, 22, 'Reprodução');

INSERT INTO p3_ConectaSer (Ser1, Ser2, CodigoArv, Tipo)
VALUES (46, 48, 22, 'Domínio');

INSERT INTO p3_ConectaSer (Ser1, Ser2, CodigoArv, Tipo)
VALUES (49, 41, 22, 'Comunicação');

-- Inserções para a tabela J_Explora_M
INSERT INTO p3_J_Explora_M (Latitude, Longitude, CodigoM)
VALUES (-12.34, 45.67, 1);

INSERT INTO p3_J_Explora_M (Latitude, Longitude, CodigoM)
VALUES (-22.44, 55.77, 2);

INSERT INTO p3_J_Explora_M (Latitude, Longitude, CodigoM)
VALUES (-32.54, 65.87, 3);

INSERT INTO p3_J_Explora_M (Latitude, Longitude, CodigoM)
VALUES (-42.64, 75.97, 4);

INSERT INTO p3_J_Explora_M (Latitude, Longitude, CodigoM)
VALUES (-52.74, 85.07, 5);

INSERT INTO p3_J_Explora_M (Latitude, Longitude, CodigoM)
VALUES (-62.84, 95.17, 6);

INSERT INTO p3_J_Explora_M (Latitude, Longitude, CodigoM)
VALUES (-72.94, 105.27, 7);

INSERT INTO p3_J_Explora_M (Latitude, Longitude, CodigoM)
VALUES (-82.04, 115.37, 8);

INSERT INTO p3_J_Explora_M (Latitude, Longitude, CodigoM)
VALUES (-92.14, 125.47, 9);

INSERT INTO p3_J_Explora_M (Latitude, Longitude, CodigoM)
VALUES (-102.24, 135.57, 10);