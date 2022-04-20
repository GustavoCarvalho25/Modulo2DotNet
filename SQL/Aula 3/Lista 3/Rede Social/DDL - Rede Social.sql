go
use master
drop database db_RedeSocial
go
Create database db_RedeSocial
go
use db_RedeSocial
go
USE db_RedeSocial
go
create table Usuarios 
(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Senha VARCHAR(100) NOT NULL
)
go
CREATE TABLE Categoria 
(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(100) NOT NULL
)
go
CREATE TABLE Grupos
(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Fk_Id_Categoria INT NOT NULL,
	FOREIGN KEY (Fk_Id_Categoria) REFERENCES Categoria (Id)
)
go
CREATE TABLE Postagens
(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	Titulo VARCHAR(50) NOT NULL,
	Descricao VARCHAR(50) NOT NULL,
	Fk_Id_Usuarios INT NULL,
	Fk_Id_Categoria INT NOT NULL, 
	Fk_id_Grupos INT NOT NULL,
	FOREIGN KEY (Fk_Id_Usuarios) REFERENCES Usuarios (Id),
	FOREIGN KEY (Fk_Id_Grupos) REFERENCES Grupos (Id),
	FOREIGN KEY (Fk_Id_Categoria) REFERENCES Categoria (Id)
)