Scripts de Consulta

-- Querying customer table data
SELECT
	*
FROM
	relacional.clientes;


SELECT
	clientes
  , sexo
  , status
FROM
	relacional.clientes
WHERE
	status = 'Silver';


SELECT
	clientes
  , sexo
  , status
FROM
	relacional.clientes
WHERE
	status = 'Silver'
OR
	status = 'Platinum';


SELECT
	clientes
  , sexo
  , status
FROM
	relacional.clientes
WHERE
	status IN('Silver', 'Platinum');


SELECT
	clientes
  , sexo
  , status
FROM
	relacional.clientes
WHERE
	status NOT IN('Silver', 'Platinum');


SELECT
	clientes
  , sexo
  , status
FROM
	relacional.clientes
WHERE
	clientes LIKE '%Alb%';