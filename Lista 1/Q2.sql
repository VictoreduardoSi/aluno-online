--Calcule o total de vendas (valor_compra) para cada usuário e ordene os resultados em ordem decrescente de valor total.
SELECT 
	cod_usuario,
	valor_compra
FROM vendas
ORDER BY valor_compra DESC;