INSERT INTO Dimensional.DimensaoTempo(data, dia, mes, ano, diasemana, trimestre)
SELECT datum AS Data,
       EXTRACT(DAY FROM datum) AS Dia,
       EXTRACT(MONTH FROM datum) AS Mes,
       EXTRACT(year FROM datum) AS Ano,
       EXTRACT(dow FROM datum) AS DiaSemana,
	   EXTRACT(quarter FROM datum) AS Trimestre
FROM (SELECT '1970-01-01'::DATE+ SEQUENCE.DAY AS datum
      FROM GENERATE_SERIES (0,29219) AS SEQUENCE (DAY)
      GROUP BY SEQUENCE.DAY) DQ
ORDER BY 1;

select * from dimensional.dimensaotempo ;
