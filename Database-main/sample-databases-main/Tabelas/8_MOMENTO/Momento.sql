use momento;
/*## Nível 1: Conhecendo a Empresa

### Seu Primeiro Dia na Momento

**1.1** Você acabou de ser contratado pela Momento! Vamos começar incluindo você no sistema.
R: INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) VALUES (215,'Felipe','Alejandro','felipe.aosousa@momento.org.','AmendoaePistache123','96422-8015','2026-10-27','9','4000.00','100','6');
215	Felipe	Alejandro	felipe.aosousa@momento.org	AmendoaePistache123	96422-8015	2026-10-27	9	4000.00	100	6

**1.2** Agora que você faz parte da equipe, quantos funcionários temos ao total na empresa?
R: SELECT COUNT(*) FROM funcionarios;
50 
**1.3** Quantos funcionários trabalham especificamente no Departamento de Tecnologia?
R;SELECT COUNT(*) FROM funcionarios WHERE departamento_id = 6;
9

**1.4** Liste todos os departamentos que existem na empresa. Quantos são?
R:SELECT departamento_nome FROM departamentos;
Administração
Marketing
Suprimentos
Recursos Humanos
Transportes
Tecnologia
Relações Públicas
Vendas
Executivo
Finanças
Contabilidade
Biotecnologia
Tecnologias Avançadas
SELECT COUNT(*) FROM departamentos;
13 

**1.5** Quantos escritórios a Momento possui? Em quais países?
R:
SELECT COUNT(*) from escritorios;
9
SELECT escritorios.escritorio_nome, paises.pais_nome
FROM escritorios
JOIN paises ON escritorios.pais_id = paises.pais_id;
Wayne Offices	United States of America
Stark Tower	United States of America
Sala Winter	United States of America
Arkham Base	Canada
House of Mystery escritorios	United Kingdom
Shuri's Palace	Wakanda
Umbrella Corp	United Kingdom
Archies Mad House	Germany
Baxter Building	United Kingdom
*/

select * from funcionarios;

-- 1.1 --
-- 1.1 --
INSERT INTO funcionarios (funcionario_id, primeiro_nome, sobrenome, email, telefone, data_contratacao, cargo_id, salario, gerente_id, departamento_id) VALUES ( 222, 'Felipe', 'Alejandro', 'felipe.aosousa@momento.org', '96422-8015', '2026-10-27', 9, 4000.00, 100, 6);
UPDATE funcionarios from 

-- 1.2 -- 
SELECT COUNT(*) 
FROM funcionarios;

-- 1.3 --
SELECT COUNT(*) FROM funcionarios WHERE departamento_id = 6;

-- 1.4 -- 
SELECT departamento_nome FROM departamentos;
SELECT COUNT(*) FROM departamentos; 

-- 1.5 --
SELECT COUNT(*) from escritorios;
SELECT escritorios.escritorio_nome, paises.pais_nome
FROM escritorios
JOIN paises ON escritorios.pais_id = paises.pais_id;


/*## Nível 2: Análise Financeira Básica

O CFO precisa de relatórios urgentes sobre os custos da empresa.

**2.1** Quantos funcionários trabalham no Departamento de Vendas?
R: SELECT COUNT(*) FROM funcionarios WHERE departamento_id = 8;
5

**2.2** Qual é o custo total com salários do Departamento de Vendas?
R: SELECT SUM(salario) FROM funcionarios WHERE departamento_id = 8;
51500.00

**2.3** Qual é a média salarial da empresa, excluindo os cargos de CEO, CMO e CFO?
R: SELECT AVG(salario) FROM funcionarios WHERE cargo_id NOT IN ('4', '7','10');
9241.064043

**2.4** Qual é a média salarial do Departamento de Tecnologia?
R: SELECT AVG(salario) FROM funcionarios WHERE departamento_id = 6;
6477.777778

**2.5** Qual departamento possui a maior média salarial?
R: SELECT departamento_id, AVG(salario) AS media_maior FROM funcionarios GROUP BY departamento_id ORDER BY AVG(salario) DESC LIMIT 1;
13	21657.500000

**2.6** Qual departamento possui o menor número de funcionários?
R: SELECT departamento_id, COUNT(*) AS menor_número FROM funcionarios GROUP BY departamento_id ORDER BY COUNT(*) ASC LIMIT 1;
1	1
*/

-- 2.1 --
SELECT COUNT(*) FROM funcionarios WHERE departamento_id = 8;

-- 2.2 --
SELECT SUM(salario) FROM funcionarios WHERE departamento_id = 8;

-- 2.3 --
SELECT AVG(salario) FROM funcionarios WHERE cargo_id NOT IN ('4', '7','10');

-- 2.4 --
SELECT AVG(salario) FROM funcionarios WHERE departamento_id = 6;

-- 2.5 --
SELECT departamento_id, AVG(salario) AS media_maior FROM funcionarios GROUP BY departamento_id ORDER BY AVG(salario) DESC LIMIT 1;

-- 2.6 --
SELECT departamento_id, COUNT(*) AS menor_número FROM 
funcionarios GROUP BY departamento_id ORDER BY COUNT(*) ASC LIMIT 1;

/*## Nível 3: Recursos Humanos

O RH está fazendo uma análise demográfica da empresa.

**3.1** Quantos funcionários da empresa Momento possuem cônjuges?
R: SELECT COUNT(DISTINCT funcionario_id) AS funcionarios_cônjuge FROM dependentes WHERE relacionamento = 'Cônjuge';
4

**3.2** Quantos funcionários possuem filhos registrados?
R: SELECT count(DISTINCT funcionario_id) AS funcionarios_filhos FROM dependentes where relacionamento LIKE 'filh%';
30

**3.3** Qual funcionário foi contratado há mais tempo na empresa?
R: SELECT CONCAT(primeiro_nome, ' ', sobrenome) AS nome_completo, data_contratacao FROM funcionarios ORDER BY data_contratacao ASC LIMIT 1;
Madeleine Prior	1987-06-17

**3.4** Qual funcionário foi contratado há menos tempo na empresa?
R: SELECT CONCAT(primeiro_nome, ' ', sobrenome) AS nome_completo, data_contratacao FROM funcionarios ORDER BY data_contratacao DESC LIMIT 1;
Felipe Alejandro	2026-10-27

**3.5** Liste os 5 funcionários com mais tempo de casa, ordenados pela data de contratação.
R: SELECT CONCAT(primeiro_nome, ' ', sobrenome) AS nome_completo, data_contratacao FROM funcionarios ORDER BY data_contratacao ASC LIMIT 5;
Madeleine Prior	1987-06-17
Jennifer Whalen	1987-09-17
Neena Kochhar	1989-09-21
Alexander Hunold	1990-01-03
Bruce Ernst	1991-05-21

**3.6** Quantos funcionários foram contratados na década de 1990 (entre 1990-1999)?
R: SELECT COUNT(data_contratacao) FROM funcionarios WHERE data_contratacao BETWEEN '1990-01-01' AND '1999-12-31';
28

**3.7** Como a média salarial da Momento evoluiu ao longo dos anos? Agrupe por ano de contratação e calcule a média salarial.
R: SELECT YEAR(data_contratacao) AS ano_contratacao, ROUND(AVG(salario), 2) AS media_salarial FROM funcionarios GROUP BY YEAR(data_contratacao) ORDER BY ano_contratacao ASC;
*/

-- 3.1 --
SELECT COUNT(DISTINCT funcionario_id) AS funcionarios_cônjuge FROM dependentes WHERE relacionamento = 'Cônjuge';

-- 3.2 --
SELECT count(DISTINCT funcionario_id) AS funcionarios_filhos FROM dependentes WHERE relacionamento LIKE 'filh%';

-- 3.3 --
SELECT 
    CONCAT(primeiro_nome, ' ', sobrenome) AS nome_completo, data_contratacao FROM funcionarios ORDER BY data_contratacao ASC
LIMIT 1;

-- 3.4 --
SELECT CONCAT(primeiro_nome,' ', sobrenome) AS nome_completo, data_contratacao FROM funcionarios ORDER BY data_contratacao DESC
LIMIT 1;

-- 3.5 --
SELECT
    CONCAT(primeiro_nome, ' ', sobrenome) AS nome_completo, data_contratacao FROM funcionarios ORDER BY data_contratacao ASC
LIMIT 5;

-- 3.6 --
SELECT COUNT(data_contratacao) FROM funcionarios WHERE data_contratacao 
BETWEEN '1990-01-01' AND '1999-12-31';

-- 3.7 --
SELECT 
    YEAR(data_contratacao) AS ano_contratacao,
    ROUND(AVG(salario), 2) AS media_salarial
FROM funcionarios
GROUP BY YEAR(data_contratacao)
ORDER BY ano_contratacao ASC;
/*
Nível 4: Operações e Escritórios
4.1 Qual é o custo total de suprimentos em cada escritório? Ordene do mais caro ao mais barato.

4.2 Qual escritório possui a maior quantidade de diferentes tipos de suprimentos?

4.3 Qual é o suprimento mais caro (considerando preço unitário) em toda a empresa?

4.4 Calcule o valor total do inventário de suprimentos da empresa 
(quantidade × preço unitário de todos os itens em todos os escritórios).
*/

-- 4.1 Qual é o custo total de suprimentos em cada escritório? Ordene do mais caro ao mais barato. --

SELECT 
    escritorio_id,     
    SUM(custo_unitario) AS custo_total
FROM suprimentos
GROUP BY escritorio_id
ORDER BY custo_total DESC;