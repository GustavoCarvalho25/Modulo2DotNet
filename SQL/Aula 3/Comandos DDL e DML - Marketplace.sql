go
use master
go
drop database db_Marketplace
go
Create database db_Marketplace
go
use db_Marketplace
go
CREATE TABLE Usuarios(
	Id iNT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Senha VARCHAR(50) NOT NULL,
	Endereco VARCHAR(100) NULL

)
go
CREATE TABLE Categorias(
	Id iNT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(50)

)
go
CREATE TABLE Produtos(
	Id iNT PRIMARY KEY IDENTITY NOT NULL,
	NomeProduto VARCHAR(50) NOT NULL,
	Descricao VARCHAR(50) NOT NULL,
	Preco FLOAT NULL,
	FK_Criador INT NOT NULL,
	FK_Categoria INT NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES Usuarios (Id),
	FOREIGN KEY (FK_Categoria) REFERENCES Categorias (Id)

)
go
CREATE TABLE Compras(
	FK_Comprador INT NOT NULL,
	FK_Produto INT NOT NULL,
	FOREIGN KEY (FK_Comprador) REFERENCES Usuarios (Id),
	FOREIGN KEY (FK_Produto) REFERENCES Produtos (Id)

)