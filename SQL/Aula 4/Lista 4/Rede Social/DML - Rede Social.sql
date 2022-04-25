USE db_RedeSocial

INSERT INTO Usuarios
VALUES
('Gustavo', 'gustavo@email.com', 'gustavo123'),
('Mateus', 'mateus@email.com', 'mateus123')

INSERT INTO Categoria
VALUES
('Motos'),
('Games')

INSERT INTO Grupos
VALUES
('Divulgacao', 1),
('Vavazin', 2)

INSERT INTO Postagens
VALUES
('Foto minha', 'Vivendo a vida S2', 1, 1, 1),
('Valorant Highlights', 'Saadhak me da uma popada', 2, 2, 2)

SELECT * FROM Usuarios
WHERE Nome like '%Gu%'
