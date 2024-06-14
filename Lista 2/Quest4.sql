--Utilize uma CTE para calcular o total de vendas por estado e, em seguida, liste os estados com o maior total de vendas
WITH consulta_por_estado_CTE AS (
	SELECT
		us.estado,
		ve.quantidade
	FROM usuarios us
	JOIN vendas ve
	ON us.cod_usuario = ve.cod_usuario
)
SELECT 
	estado,
	SUM(quantidade) AS total_vendas
FROM consulta_por_estado_CTE
GROUP BY estado
ORDER BY total_vendas DESC;