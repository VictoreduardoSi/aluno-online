--Obtenha uma lista de usuários que fizeram compras com cartão de crédito ('forma_pagamento' é igual a 'Cartão de Crédito').
SELECT
	ve.cod_usuario,
	ve.forma_pagamento,
	pr.nome_produto
FROM vendas ve
JOIN produtos pr
ON ve.cod_produto  = pr.cod_produto
WHERE forma_pagamento = 'cartao_credito'
ORDER BY cod_usuario ASC; 