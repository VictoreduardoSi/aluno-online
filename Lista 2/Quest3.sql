--Crie uma subconsulta para obter a quantidade total de vendas para cada produto e, em seguida, liste os produtos que tiveram mais de 50 vendas.
SELECT
    pr.nome_produto,
    ve.total_vendas
FROM produtos pr
JOIN (
    SELECT
        cod_produto,
        SUM(quantidade) AS total_vendas
    FROM vendas ve
    GROUP BY cod_produto
    HAVING SUM(quantidade) > 50
) ve ON pr.cod_produto = ve.cod_produto;