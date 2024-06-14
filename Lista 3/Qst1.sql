--Criar uma view que apresente o nome do produto, a quantidade vendida e o valor total da venda para cada venda realizada.
CREATE VIEW vw_usuarios_valor_vendas AS (
	SELECT
		pr.nome_produto,
		SUM(ve.quantidade) AS soma_quantidade,
		SUM(ve.valor_compra) AS soma_compra
	FROM produtos pr
	JOIN vendas ve ON pr.cod_produto = ve.cod_produto
	GROUP BY nome_produto
	ORDER BY soma_compra DESC
)