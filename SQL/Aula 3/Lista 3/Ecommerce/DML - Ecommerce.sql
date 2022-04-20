use db_Ecommerce
use master

INSERT INTO Cliente VALUES
	('11122254699', 'Gustavo Lindo', 'Rua das capixabas', 'Gustavinho123', 'senha'),
	('11634039266', 'Julio Conceição', 'Rua dos pessegos', 'Juju123', 'senha'),
	('17652687809', 'Rodrigo Rodrigo', 'Rua das amelias', 'RoRo123', 'senha123')

INSERT INTO Estoque VALUES
	('Doritos 500g', 8.90),
	('Shampoo Dove 700ml', 11.90),
	('Ração Cachorro 5KG', 50)

INSERT INTO Pedido VALUES
	(1, 58.90, 'Avenida Tiradentes'),
	(1, 11.90, 'Avenida Tiradentes'),
	(2, 70.80, 'Avenida Brasil')

INSERT INTO Detalhe_Pedido VALUES
	(1, 3, 1),
	(1, 1, 1),
	(2, 2, 1),
	(3, 1, 1),
	(3, 2, 1),
	(3, 3, 1)

select * from Cliente where Endereco like '%am%'
select * from Estoque where Descricao like '%a%'
