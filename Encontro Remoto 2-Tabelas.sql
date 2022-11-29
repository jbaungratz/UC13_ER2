USE hr;

--select simples
SELECT * FROM locations;
SELECT * FROM DEPARTMENTS;
SELECT * FROM jobs;
SELECT * FROM countries;

SELECT * FROM DEPARTMENTS;


-- selecionando colunas
SELECT DEPARTMENT_ID, DEPARTMENT_NAME FROM departments;

SELECT * FROM EMPLOYEES;
--pegar apenas o Fist_Name, email, job_id


SELECT FIRST_NAME, EMAIL, JOB_ID FROM EMPLOYEES;

-- APELIDANDO OS CAMPOS
SELECT FIRST_NAME AS "NOME", EMAIL AS "E-MAIL", JOB_ID "CODIGO DO CARGO" FROM EMPLOYEES;


SELECT d.DEPARTMENT_ID AS "ID DO DEPTO", d.DEPARTMENT_NAME AS "NOME DO DEPTO", d.LOCATION_ID, d.MANAGER_ID FROM DEPARTMENTS d;

--CRIAR UM NOVO BANCO DE DADOS

CREATE DATABASE BET7FST4;

USE BET7FST4;

-- CRIAÇÃO DE TABELAS
CREATE TABLE cadastro
(
nome VARCHAR(30),
sobrenome VARCHAR(30),
salario MONEY,
endereco VARCHAR(30),
dt_cadastro DATE
);

--insert sem informar quais são os campos(precisa passar os valores na ordem que foram criados os campos)
INSERT INTO cadastro VALUES ('JOSÉ','BAUNGRATZ',1000,'SALVADOR CANELLAS 193', SYSDATETIME());

SELECT * FROM cadastro;

--insert informando os campos (precisa passar os valores de acordo com a ordem que os campos foram informados)
INSERT INTO cadastro VALUES ('CARLOS','CAMARA',2000,'ABROTÉA 200',SYSDATETIME());

INSERT INTO cadastro (salario, nome, sobrenome, endereco, dt_cadastro) VALUES (2000,'CARLOS','CAMARA','VITÓRIA 300',SYSDATETIME());

SELECT * FROM cadastro;  

INSERT INTO cadastro VALUES ('MIGUEL','CARMIN',4000,'PIAUI 100',SYSDATETIME());
INSERT INTO cadastro VALUES ('CAMILA','PACHECO',8000,'SAO JORGE 84',SYSDATETIME());
INSERT INTO cadastro VALUES ('MARINA','AUGUSTO',1400,'NOVA TATUAPÉ 100',SYSDATETIME());
INSERT INTO cadastro VALUES ('ROBERTO','EDUARDO',800,'JURUBATUBA 505',SYSDATETIME());
INSERT INTO cadastro VALUES ('EDUARDO','GOMES',1000,'ESTRELA 14',SYSDATETIME());
INSERT INTO cadastro VALUES ('MARIO','TEMER',3500,'MOREIRA 10',SYSDATETIME());
INSERT INTO cadastro VALUES ('MARCELO','JURACY',7350,'SANTA ELVIRA 400',SYSDATETIME());

SELECT * FROM cadastro;

SELECT NOME, SOBRENOME FROM cadastro;

--retornar todos os registros da tabela cadastro, referente aos funcionários Marina e Eduardo
SELECT NOME, SOBRENOME FROM cadastro WHERE nome IN ('MARINA','EDUARDO');

SELECT * FROM cadastro WHERE nome = 'Marina' OR nome = 'Eduardo';

--retornar todos os registros da tabela com um calculo de quanto os funcionários
--ganham em um ano de trabalho. Criar o apelido "anual"

SELECT salario * 12 AS "ANUAL" FROM cadastro;

--selecionar as colunas nome e sobrenome da tabela cadastro e simular um aumento no
--salario de 10%, colocando um apelido na coluna com o nome de "AUMENTO"

SELECT nome, sobrenome, salario * 1.10 AS "Aumento" FROM cadastro;
SELECT nome, sobrenome, salario + ((salario * 10)/100) AS "Aumento" FROM cadastro;


--Selecionar todos os funcionários que ganham entre 4000 e 5000.
SELECT * FROM cadastro WHERE salario >= 4000 and salario <= 5000;
SELECT * FROM cadastro WHERE salario between 4000 and 5000;


--Selecionar todos os funcionários que ganham salario maior e igual a 4000.

SELECT * FROM cadastro WHERE salario >= 4000;

--selecionar todos os funcionários que possuem a letra "a" no nome.
SELECT * FROM cadastro WHERE nome like '%a%';

--selecionar todos os funcionários que comecem com a letra "M" no nome.
SELECT * FROM cadastro WHERE nome like 'M%';

--Alterar o salário do funcionário Marcelo para 2000
UPDATE cadastro SET salario = 4000 WHERE nome = 'Marcelo';

SELECT * FROM cadastro;


--Delete
SELECT * FROM cadastro;
DELETE FROM cadastro WHERE nome = 'CARLOS';
DELETE FROM cadastro;

--Drop

DROP TABLE cadastro;
DROP database BET7FST4;






