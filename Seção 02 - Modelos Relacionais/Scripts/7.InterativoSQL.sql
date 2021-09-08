--CONSULTA PADRÃO
select * from relacional.clientes;
--ATRIBUTOS ESPECIFICIOS E CLAUSULA WHERE
select clientes, sexo, status from relacional.clientes
where status = 'Silver';
--USO DE "OR"
select clientes, sexo, status from relacional.clientes
where status = 'Silver' OR status = 'Platinum';
--USO DE "IN"
select clientes, sexo, status from relacional.clientes
where status IN('Silver','Platinum');
--USO DE NOT
select clientes, sexo, status from relacional.clientes
where status NOT IN('Silver','Platinum');
--USO DE LIKE
select clientes, sexo, status from relacional.clientes
where cliente like '%Alb%';
--OPERADORES DE COMPARAÇÃO
select * from relacional.vendas
where total > 6000;
--BETWEEN
select * from relacional.vendas
where total between 6000 and 8000;
--AGREGAÇÃO
select count(*) from relacional.vendas;
--AGREGAÇÃO COM WHERE
select count(*) from relacional.vendas
where total > 6000;
--AGRUPANDO
select idvendedor, count(idvendedor) from relacional.vendas
group by idvendedor;
--DISTINCT
select distinct status from relacional.clientes;
--INSERT
INSERT INTO relacional.clientes(
	idcliente, cliente, estado, sexo, status)
	VALUES (251, 'Fernando Amaral', 'RS', 'M', 'Silver');
--UPDATE
UPDATE relacional.clientes
	SET estado='MS', status='Platinum'
	WHERE idcliente = 251;
--DELETE
DELETE FROM relacional.clientes
	WHERE idcliente = 251;
--CONTROLE DE TRANSAÇÕES    
--INICIA TRANSAÇÃO
BEGIN;
INSERT INTO relacional.clientes(
	idcliente, cliente, estado, sexo, status)
	VALUES (251, 'Fernando Amaral', 'RS', 'M', 'Silver');
--VERIFICAMOS QUE O REGISTRO ENCONTRA-SE NO BD
SELECT * FROM relacional.clientes WHERE idcliente = 251;
ROLLBACK;
--COMMIT
--VERIFICAMOS QUE O REGISTRO NÃO SE ENCONTRA MAIS NO BD
SELECT * FROM relacional.clientes WHERE idcliente = 251;
--INNER JOINS
--TEMOS 10 VENDEDORES
select COUNT(*) from relacional.vendedores  ;
--TEMOS 400 VENDAS
select COUNT(*) from relacional.vendas ;
--INNER JOIN DEVE RETORNAR 400, POIS TODA VENDA TEM UM VENDEDOR
select count(*) from relacional.vendas as vendas
inner join relacional.vendedores as vendedores  on(vendas.idvendedor = vendedores.idvendedor );
--LEFT JOIN DEVE RETORNAR 400, POIS TODA VENDA TEM VENDEDOR
select count(*)  from relacional.vendas as vendas
left join relacional.vendedores as vendedores  on(vendas.idvendedor = vendedores.idvendedor );
--insere novo vendedores
INSERT INTO Relacional.vendedores(nome) VALUES ('Fernando Amaral');
--RIGHT JOIN DEVE RETORNAR 401 POIS TEMOS 1 VENDEDORES SEM VENDAS
select count(*)  from relacional.vendas as vendas
right join relacional.vendedores as vendedores  on(vendas.idvendedor = vendedores.idvendedor );
--ESTE SCRIPT PARA VER OS 1 ULTIMOS REGISTROS
select *  from relacional.vendas as vendas
right join relacional.vendedores as vendedores  on(vendas.idvendedor = vendedores.idvendedor ) order by idvenda desc limit 1;














