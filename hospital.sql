-- Criando o banco de dados
CREATE DATABASE hospital;

-- Criando a primeira tabela 

CREATE TABLE criança (

    nome VARCHAR(50) NOT NULL,
    peso DECIMAL (4,2),
    altura FLOAT,
    datanasc DATE NOT NULL,
    id BIGINT(5) PRIMARY KEY
);

-- Criando a segunda tabela 

CREATE TABLE médico (

    id BIGINT(5) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    especialidade VARCHAR(50) NOT NULL,
    crm INT(6) NOT NULL
);

-- Criando a terceira tabela

CREATE TABLE nascimento (

    id BIGINT(5) PRIMARY KEY,
    medico VARCHAR(50) NOT NULL,
    idcriança INT(5) UNIQUE NOT NULL, 
    idmãe INT(5) UNIQUE NOT NULL
);

-- Criando a quarta tabela

CREATE TABLE mãe (

    datanasc DATE NOT NULL,
    id BIGINT(5) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(50) NOT NULL,
    telefone VARCHAR(15) NOT NULL
);

-- Inserindo os dados na tabela de médicos

INSERT INTO medico (id, nome, especialidade, crm)
VALUES(11245, "Juliana Alves Alburquerque", "Obstreticia", 123584),
(11246, "Pedro da Silva Santos", "Nutrologia Pediatrica", 658985),
(11546, "Vinicius Lima de Oliveira", "Neonatologia", 458755),
(11468, "Bruna Paez Chavez", "Obstreticia", 246585);

-- DELETANDO UM REGISTRO ESPECIFICO

DELETE FROM médico WHERE especialidade = "Neonatologia";

-- DELETANDO TODOS OS DADOS 

DELETE FROM médico;

 -- APAGANDO AS OUTRAS TABELAS

 DROP TABLE  criança;

 DROP TABLE nascimento;

 DROP TABLE mãe;

 DROP TABLE médico; 

-- APAGANDO O BANCO DE DADOS

DROP DATABASE hospital;

