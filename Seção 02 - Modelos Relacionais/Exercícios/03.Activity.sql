-- Proposed Activities

/* Activity 03
List of the 5 worst sellers
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
	"Total Sales" ASC LIMIT 5;