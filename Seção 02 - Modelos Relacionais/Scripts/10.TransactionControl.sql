-- Transaction Control

BEGIN;

INSERT INTO relacional.clientes
(
	idcliente
  , cliente
  , estado
  , sexo
  , status
)
VALUES
(
	251
  , 'Fernando Amaral'
  , 'RS'
  , 'M'
  , 'Silver'
);


SELECT
	*
FROM
	relacional.clientes
WHERE
	idcliente = 251;


ROLLBACK;