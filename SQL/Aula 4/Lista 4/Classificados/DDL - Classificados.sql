go
use master
drop database db_classificados
go
create database db_classificados
go
use db_classificados
go
create table Usuario
(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	CPF_CNPJ CHAR(11) NOT NULL,
	Tipo VARCHAR(20),
	Regiao VARCHAR(50),
	Contato VARCHAR(20)
)
go
create table Anuncio
(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	Classificacao VARCHAR(50) NOT NULL,
	Descricao VARCHAR(50) NOT NULL,
	Regiao VARCHAR(50) NOT NULL,
	Contato VARCHAR(20),
	FK_Id_usuario INT NOT NULL,
	FOREIGN KEY (FK_Id_usuario) REFERENCES Usuario (Id)
)