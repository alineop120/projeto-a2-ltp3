-- Criar o banco de dados
CREATE DATABASE cadastrosbd;

-- Selecionar o banco de dados
USE cadastrosbd;

-- Criar a tabela 'usuarios'
CREATE TABLE usuarios (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    acesso INT NOT NULL
);

INSERT INTO `cadastrosbd`.`usuarios` (`id`, `nome`, `email`, `senha`, `acesso`) VALUES ('1', 'Helio', 'helio@gmail.com', 'h', '1');

INSERT INTO `cadastrosbd`.`usuarios` (`id`, `nome`, `email`, `senha`, `acesso`) VALUES ('2', 'Claudio', 'claudio@gmail.com', 'g', '2');

-- Visualizar todos os dados da tabela 'usuarios'
SELECT * FROM cadastrosbd.usuarios;

-- Excluir o banco de dados (cuidado!)
-- DROP DATABASE cadastrosbd;
