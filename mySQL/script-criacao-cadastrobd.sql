-- Criar o banco de dados
CREATE DATABASE cadastrobd;

-- Selecionar o banco de dados
USE cadastrobd;

-- Criar a tabela 'usuarios'
CREATE TABLE usuarios (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    acesso INT NOT NULL
);

-- Visualizar todos os dados da tabela 'usuarios'
SELECT * FROM usuarios;

-- Excluir o banco de dados (cuidado!)
-- DROP DATABASE cadastrobd;
