-- Proposed Activities

/* 

Activity 04
Total sales in period
Fields: Product, total sales
Grouped: By Product
Filter: Month and Year

*/

SELECT 
	p.produto
  , SUM(v.total)			AS "Total Sales"
FROM 
	relacional.vendas 		AS v
INNER JOIN 
	relacional.itensvenda 	AS iv
ON 
	v.idvenda = iv.idvenda
INNER JOIN
	relacional.produtos 	AS p 
ON
	iv.idproduto = p.idproduto
WHERE
	v. data = '2016-02-14'	
GROUP BY
	p.produto
ORDER BY
	"Total Sales" DESC;