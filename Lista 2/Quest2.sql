--Utilizando uma CTE, calcule a média de valor de compra por usuário e liste os usuários cuja média de compra seja superior a 500.
WITH media_usuarios_compra_500_CTE AS (
	SELECT
		cod_usuario,
		AVG(valor_compra) AS media_compra_500
	FROM vendas
	GROUP BY cod_usuario
	HAVING AVG(valor_compra) > 500
)
SELECT
	cod_usuario,
	media_compra_500
FROM media_usuarios_compra_500_CTE
GROUP BY media_compra_500, cod_usuario
ORDER BY media_compra_500 DESC;