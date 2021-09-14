-- Joins

SELECT
	COUNT(*)
FROM
	relacional.vendedores;


SELECT
	COUNT(*)
FROM
	relacional.vendas;


SELECT
	COUNT(*)
FROM
	relacional.vendas AS vendas
INNER JOIN
	relacional.vendedores AS vendedores
ON
	(vendas.idvendedor = vendedores.idvendedor);


SELECT
	COUNT(*)
FROM
	relacional.vendas AS vendas
LEFT JOIN
	relacional.vendedores AS vendedores
ON
	(vendas.idvendedor = vendedores.idvendedor);


INSERT INTO relacional.vendedores
(
	nome
)
VALUES
(
	'Fernando Amaral'
);


SELECT
	*
FROM
	relacional.vendas AS vendas
RIGHT JOIN
	relacional.vendedores AS vendedores
ON
	(vendas.idvendedor = vendedores.idvendedor)
ORDER BY
	idvenda DESC LIMIT 1;