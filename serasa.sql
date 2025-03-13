-- Criação do banco de dados Serasa
CREATE DATABASE Serasa;

-- Seleciona o banco de dados Serasa
USE Serasa;

-- Criação da tabela empregado
CREATE TABLE empregado (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(100),
    Salario DECIMAL(10, 2),
    DEPTO INT
);

-- Inserção dos registros na tabela empregado
INSERT INTO empregado (Codigo, Nome, DEPTO, Salario)
VALUES
(43500, 'Ana da Silva', 9411, 5200.00),
(43501, 'Vitoria Beatriz', 9411, 3400.00),
(43502, 'Pedro José', 9412, 2600.00),
(43503, 'Amary Manoel', 9412, 8400.00),
(43504, 'Carlos Silva', 9412, 5600.00),
(43505, 'Vitorio Cardoso', 9413, 2300.00),
(43506, 'Carlos Ives Souza', 9413, 3380.00),
(43507, 'Victor Silva', 9413, 4500.00),
(43508, 'Saulo Monteiro', 9413, 6800.00);

-- Alteração do departamento de todos para 9414
UPDATE empregado SET DEPTO = 9414;

-- Alteração do departamento dos três primeiros registros para 9415
UPDATE empregado SET DEPTO = 9415 WHERE Codigo IN (43500, 43501, 43502);

-- Alteração do departamento de cada um para o valor original novamente
UPDATE empregado SET DEPTO = 9411 WHERE Codigo = 43500;
UPDATE empregado SET DEPTO = 9412 WHERE Codigo = 43501;
UPDATE empregado SET DEPTO = 9413 WHERE Codigo = 43502;
UPDATE empregado SET DEPTO = 9414 WHERE Codigo = 43503;
UPDATE empregado SET DEPTO = 9415 WHERE Codigo = 43504;

-- Select para todos os dados do Banco de Dados
SELECT * FROM empregado;

-- Select da coluna nome onde o salário for igual a R$ 6800,00
SELECT Nome FROM empregado WHERE Salario = 6800.00;

-- Select da coluna Codigo e nome onde o salário for igual a R$ 5200,00
SELECT Codigo, Nome FROM empregado WHERE Salario = 5200.00;

-- Select da coluna DEPTO onde o salário for maior que R$ 3000,00 e menor que R$ 5.500,00
SELECT DEPTO FROM empregado WHERE Salario > 3000.00 AND Salario < 5500.00;

-- Select da coluna Codigo e DEPTO onde o salário estiver entre R$ 2600,00 e R$ 3380,00
SELECT Codigo, DEPTO FROM empregado WHERE Salario BETWEEN 2600.00 AND 3380.00;

-- Select da coluna nome onde o DEPTO for 9411 AND 9412
SELECT Nome FROM empregado WHERE DEPTO IN (9411, 9412);

-- Select de DEPTO, Salario e Nome onde o Código for 43500 OR 43502
SELECT DEPTO, Salario, Nome FROM empregado WHERE Codigo IN (43500, 43502);

-- Select SUM de todos os salários da tabela
SELECT SUM(Salario) AS TotalSalarios FROM empregado;

