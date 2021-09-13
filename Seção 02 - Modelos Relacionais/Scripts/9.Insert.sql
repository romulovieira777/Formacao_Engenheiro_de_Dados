-- Inserting data into the customers table
INSERT INTO relacional.clientes
(
	idvendedor
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


-- Updating data in the customer table
UPDATE 
	relacional.clientes
SET
	estado = 'MS'
  , status = 'Platinum'
WHERE
	idcliente = 251;


-- Deleting data from the customer table
DELETE FROM
	relacional.clientes
WHERE
	idcliente = 251;