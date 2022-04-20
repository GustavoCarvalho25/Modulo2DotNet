go
use master
go
drop database db_Ecommerce
go
create database db_Ecommerce
go
use db_Ecommerce
go
CREATE TABLE Cliente(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	CPF CHAR(11) NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Endereco VARCHAR(50) NULL,
	Login_User VARCHAR(30) NOT NULL,
	Senha_User VARCHAR(30) NOT NULL
)
go
CREATE TABLE Estoque(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(50) NOT NULL,
	Preco FLOAT NOT NULL
)
go
CREATE TABLE Pedido(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	FK_Id_Cliente INT NOT NULL,
	Valor FLOAT NOT NULL,
	Endereco VARCHAR(50) NULL,
	FOREIGN KEY (FK_Id_Cliente ) REFERENCES Cliente (Id)
)
go
CREATE TABLE Detalhe_Pedido(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	FK_Id_Pedido INT NOT NULL,
	FK_Id_Produto INT NOT NULL,
	Quantidade INT NOT NULL,
	FOREIGN KEY (FK_Id_Pedido ) REFERENCES Pedido (Id),
	FOREIGN KEY (FK_Id_Produto ) REFERENCES Estoque (Id)
)