CREATE DATABASE db_Ecommerce2

-- INSERTS

INSERT INTO tb_Usuarios

SELECT tb_Usuarios.Nome AS Nome, AVG(tb_Produtos.Preco) AS Media
FROM tb_Usuarios
INNER JOIN tb_Pedidos ON Id_Usuarios = FK_Id_Usuarios
INNER JOIN tb_Produtos ON Id_Produtos = FK_Id_Produtos
GROUP BY tb_Usuarios.Nome HAVING (AVG(tb_Produtos.Preco) BETWEEN 2000 and 3000)
