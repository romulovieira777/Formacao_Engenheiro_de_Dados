CREATE OR REPLACE VIEW
	locperiodo AS
SELECT
	veic.modelo 						AS Modelo
  , EXTRACT(MONTH FROM loc.datalocacao) AS Mes
  , EXTRACT(YEAR FROM loc.datalocacao) 	AS Ano
  , COUNT(*) AS Total
FROM
	locacao AS loc
INNER JOIN
	veiculos AS veic
ON
	loc.idveiculo = veic.idveiculo
GROUP BY
	veic.modelo
  , EXTRACT(MONTH FROM loc.datalocacao)
  , EXTRACT(YEAR FROM loc.datalocacao)
ORDER BY
	Total DESC;



CREATE OR REPLACE VIEW
	locdespachante AS
SELECT
	desp.nome 							AS Nome
  , veic.modelo 						AS Modelo
  , EXTRACT(MONTH FROM loc.datalocacao) AS Mes
  , EXTRACT(YEAR FROM loc.datalocacao) 	AS Ano
  , COUNT(*) AS Total
FROM
	locacao AS loc
INNER JOIN
	veiculos AS veic
ON
	loc.idveiculo = veic.idveiculo
INNER JOIN
	despachantes AS desp
ON
	loc.iddespachante = desp.iddespachante
GROUP BY
	desp.nome
  , veic.modelo
  , EXTRACT(MONTH FROM loc.datalocacao)
  , EXTRACT(YEAR FROM loc.datalocacao)
ORDER BY
	Total DESC;


CREATE OR REPLACE VIEW
	locfaturamento AS
SELECT
	EXTRACT(MONTH FROM loc.datalocacao) AS Mes
  , EXTRACT(YEAR FROM loc.datalocacao) 	AS Ano
  , SUM(loc.total) AS Total
FROM
	locacao AS loc
GROUP BY
	EXTRACT(MONTH FROM loc.datalocacao)
  , EXTRACT(YEAR FROM loc.datalocacao)
ORDER BY
	Mes
  , Ano DESC;


CREATE OR REPLACE VIEW
	locclientes AS
SELECT
	cli.nome 							AS Nome
  , EXTRACT(MONTH FROM loc.datalocacao) AS Mes
  , EXTRACT(YEAR FROM loc.datalocacao) 	AS Ano
  , COUNT(*) AS Total
FROM
	locacao AS loc
INNER JOIN
	clientes AS cli
ON
	cli.idcliente = loc.idcliente
GROUP BY
	cli.nome
  , EXTRACT(MONTH FROM loc.datalocacao)
  , EXTRACT(YEAR FROM loc.datalocacao)
ORDER BY
	cli.nome DESC;