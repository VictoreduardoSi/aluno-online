--Calcule a média de valor de compra por produto na categoria 'Roupas' e liste os produtos com valores acima dessa média.
SELECT
	nome_produto,
	valor_produto,
	AVG(valor_produto)
FROM produtos
WHERE categoria_produto = 'Casa e bem-estar' AND valor_produto > (
	SELECT AVG(valor_produto)
	FROM produtos
	WHERE categoria_produto = 'Casa e bem-estar'
)
GROUP BY categoria_produto, nome_produto, valor_produto;