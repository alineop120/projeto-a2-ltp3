-- Criar um banco de dados (bd)
create database cadastrobd;

-- Utilizar o bd
use cadastrobd;

-- Criar table do bd
create table usuarios (
	id int not null auto_increment primary key,
    nome varchar(255),
    email varchar(255),
    senha varchar(255),
    acesso int
);

-- Excluir um bd
-- DROP database cadastrobd;