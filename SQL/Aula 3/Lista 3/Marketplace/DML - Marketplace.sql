use db_Marketplace

INSERT INTO Usuarios VALUES
	('Yasmin', 'yasming@email.com', '123456', 'Rua abacaxi, 181 - SP'),
	('Mateus', 'mateusg@email.com', '123456', 'Rua morango, 292 - RJ'),
	('Gustavo', 'gustavog@email.com', '123456', 'Rua cereja, 303 - SP')

INSERT INTO Categorias VALUES
	('Alimenticios'),
	('Higiene')

INSERT INTO Produtos VALUES
	('Banana', 'Fruta', 2.75, 3, 1),
	('Batata chips', 'Salgadinho de batata', 5.75, 3, 1),
	('Pasta de dente', 'Pasta para higiene bucal', 4.75, 2, 2)

INSERT INTO Compras VALUES
	(1, 3),
	(2, 1),
	(2, 2),
	(2, 2)


select * from Usuarios WHERE Endereco LIKE '%Rua ab%'

SELECT * FROM Produtos WHERE Preco BETWEEN 5 AND 15

UPDATE Usuarios
	SET Nome = 'Gustavo Carvalho' WHERE Id = 3

SELECT Usuarios.Nome, SUM(Produtos.Preco) AS Total FROM Usuarios
	INNER JOIN Compras ON Usuarios.Id = Compras.FK_Comprador
	INNER JOIN Produtos ON Produtos.Id = Compras.FK_Produto
GROUP BY Usuarios.Nome