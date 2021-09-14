-- Proposed Activities

/* Activity 01

Purchases from a specific customer
Fields: Customer Name, Product, Quantity, Total Value, Sales Date
Filters: Customer code

*/

SELECT
	c.cliente
  , p.produto
  , iv.quantidade
  , iv.valortotal
  , v.data
FROM
	relacional.clientes 	AS c
INNER JOIN
	relacional.vendas 		AS v
ON
	(c.idcliente = v.idcliente)
INNER JOIN
	relacional.itensvenda 	AS iv
ON
	(v.idvenda = iv.idvenda)
INNER JOIN
	relacional.produtos		AS p
ON
	(iv.idproduto = p.idproduto)
WHERE
	C.idcliente = 25
ORDER BY
	V.data;