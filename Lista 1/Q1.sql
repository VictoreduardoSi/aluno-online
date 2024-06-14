--Escreva uma consulta para listar todos os produtos na categoria 'Eletrônicos' com seus respectivos valores.
SELECT
	categoria_produto,
	nome_produto,
	valor_produto
FROM produtos
WHERE categoria_produto = 'Eletronicos';