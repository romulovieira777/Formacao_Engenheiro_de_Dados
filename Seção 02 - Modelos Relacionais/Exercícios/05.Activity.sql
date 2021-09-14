-- Proposed Activities

/* 

Activity 05
Products with greater discounts
Fields: Product, seller, total discounts
Grouped: By Products

*/

SELECT
	p.produto
  , vo.nome
  , SUM(iv.desconto) 		AS "Total Discount"
FROM
	relacional.vendedores 	AS vo
INNER JOIN
	relacional.vendas 		AS va
ON
	vo.idvendedor = va.idvendedor
INNER JOIN
	relacional.itensvenda 	AS iv
ON
	va.idvenda = iv.idvenda
INNER JOIN
	relacional.produtos 	AS p
ON
	iv.idproduto = p.idproduto
GROUP BY
	p.produto
  , vo.nome
ORDER BY
	"Total Discount" DESC;