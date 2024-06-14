--Escreva uma subconsulta para encontrar os usuários que compraram produtos na categoria 'Eletrônicos'.
SELECT
	us.cod_usuario,
	pr.nome_produto,
	pr.categoria_produto
FROM usuarios us
JOIN vendas ve
ON us.cod_usuario = ve.cod_usuario
JOIN produtos pr
ON ve.cod_produto = pr.cod_produto
WHERE pr.categoria_produto = 'Eletronicos'
GROUP BY us.cod_usuario, pr.nome_produto, pr.categoria_produto;