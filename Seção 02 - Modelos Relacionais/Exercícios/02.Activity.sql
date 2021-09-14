-- Proposed Activities

/* Activity 02
Top 5 Sellers List
Fields: Seller Name, Total Sales
Grouped: By Sellers
Sorted: By Total Sales
*/

SELECT 
	v.nome
  , SUM(vd.total) 			AS "Total Sales" 
FROM 
	relacional.vendedores 	AS v
INNER JOIN 
	relacional.vendas 		AS vd 
ON 
	vd.idvendedor = v.idvendedor 
GROUP BY
	v.nome
ORDER BY
	"Total Sales" DESC LIMIT 5;