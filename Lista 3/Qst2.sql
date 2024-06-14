--Criar uma view que apresente a cidade com o maior número de vendas em 2023, com a quantidade total de vendas e o valor total das vendas.
SELECT
	u.cidade,
	SUM(v.quantidade) AS total_vendas,
	SUM(v.valor_compra) AS total_valor
FROM usuarios u
JOIN vendas v ON u.cod_usuario = v.cod_usuario
GROUP BY u.cidade
ORDER BY total_vendas DESC;