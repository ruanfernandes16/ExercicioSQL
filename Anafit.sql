-- Criando o banco de dados
CREATE DATABASE anafit;
 
--Criando primeira tabela
CREATE TABLE cliente(
cpf BIGINT PRIMARY KEY,
primeironome VARCHAR(50) NOT NULL,
sobrenome VARCHAR(50) NOT NULL,
datanasc DATE NOT NULL,
peso DECIMAL(5,2),
altura FLOAT,
whatsapp VARCHAR(15) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
rua VARCHAR(100) NOT NULL,
numero INT(6) NOT NULL,
complemento VARCHAR(100),
cep VARCHAR(8) NOT NULL
);
 
--Inserindo dados na tabela de clientes
INSERT INTO cliente(cpf, primeironome, sobrenome, datanasc, peso, altura, whatsapp, email, rua, numero, complemento, cep)
VALUES(12345678910, "Ana Claudia", "Cunha", "2014-09-17", 63.50, 1.73, "+5511989898988", "ana.cscunha1@senacsp.edu.br", "Rua Dr Antônio Bento", 393, "" , "04750000");
 
--Crie a tabela treino
CREATE TABLE treino(
diadasemana DATE NOT NULL,
horario TIME NOT NULL,
tipo VARCHAR(50) NOT NULL
);
 
--Inserindo dois dados ao mesmo tempo na tabela de treino
INSERT INTO treino(diadasemana, horario, tipo)
VALUES("2025-03-12", "08:00:00", "Musculação"),
("2025-03-13", "18:00:00", "Corrida");
 
-- criando novos registro
INSERT INTO cliente(cpf, primeironome, sobrenome, datanasc, peso, altura, whatsapp, email, rua, numero, complemento, cep)
VALUES
(12345678911, "João", "Silva", "1990-05-15", 72.30, 1.80, "+5511998765432", "joao.silva@email.com", "Rua das Flores", 120, "Apt 301", "01234000"),
(12345678912, "Maria", "Oliveira", "1985-10-22", 58.00, 1.65, "+5511987654321", "maria.oliveira@email.com", "Avenida Paulista", 1000, "Bloco B", "01310000"),
(12345678913, "Carlos", "Pereira", "1995-07-30", 85.50, 1.90, "+5511987432123", "carlos.pereira@email.com", "Rua dos Três Corações", 350, "", "01453000"),
(12345678914, "Beatriz", "Santos", "2000-02-10", 50.70, 1.70, "+5511976543210", "beatriz.santos@email.com", "Rua da Paz", 555, "Sala 502", "02540000"),
(12345678915, "Lucas", "Costa", "1992-11-05", 77.40, 1.78, "+5511998764321", "lucas.costa@email.com", "Praça da Liberdade", 300, "", "03120000");
 
--alterar registros de uma linha
UPDATE treino
SET diadasemana = "2025-03-14"
WHERE tipo = "Musculação" AND diadasemana = "2025-03-12";
 
--alterar registro em duas linhas ao mesmo tempo
UPDATE treino
SET horario = "15:00:00"
WHERE horario IN ("08:00:00", "18:00:00");
 
--alterando dois registros diferentes na tabela
UPDATE cliente
SET peso = 66.50, datanasc = "2000-09-17"
WHERE cpf = 12345678910;
 
--Read - Selecionando todos os dados da tabela
SELECT * FROM treino;
 
--Selecionando apenas uma coluna e mostrando os dados dela
SELECT tipo FROM treino;
 
--Selecionando duas colunas ao mesmo tempo
SELECT diadasemana, horario FROM treino;
 
--Deletando um dado/registro específico na tabela
DELETE FROM treino WHERE tipo = "Corrida";
 
--Deletando TODOS os registros da tabela
DELETE FROM treino;
 
--DELETAR UMA TABELA
DROP TABLE treino;
 
DROP TABLE cliente;
 
--DELETANDO UM BANCO DE DADOS
DROP DATABASE anafit;