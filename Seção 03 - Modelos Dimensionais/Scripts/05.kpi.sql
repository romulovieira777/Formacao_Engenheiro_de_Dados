--CRIAMOS UMA TABELA PARA KPI
select 
     dimensional.dimensaotempo.mes as Mes,
      sum( dimensional.fatovendas.valortotal) as Realizado
       INTO dimensional.KPI
  from ( dimensional.fatovendas 
   inner join dimensional.dimensaotempo
       on (dimensional.dimensaotempo.chavetempo = dimensional.fatovendas.chavetempo))
group by dimensional.dimensaotempo.mes
order by dimensional.dimensaotempo.mes;


--ADICIONA UMA COLUNA META
ALTER TABLE dimensional.KPI ADD COLUMN Meta numeric;

--ADICIONAMOS METAS POR MES
UPDATE dimensional.KPI SET Meta = 220000   where Mes =1;
UPDATE dimensional.KPI SET Meta = 220000   where Mes =2;
UPDATE dimensional.KPI SET Meta = 230000   where Mes =3;
UPDATE dimensional.KPI SET Meta = 235000   where Mes =4;
UPDATE dimensional.KPI SET Meta = 240000   where Mes =5;
UPDATE dimensional.KPI SET Meta = 250000   where Mes =6;
UPDATE dimensional.KPI SET Meta = 255000   where Mes =7;
UPDATE dimensional.KPI SET Meta = 260000   where Mes =8;
UPDATE dimensional.KPI SET Meta = 262500   where Mes =9;
UPDATE dimensional.KPI SET Meta = 265000   where Mes =10;
UPDATE dimensional.KPI SET Meta = 267000   where Mes =11;
UPDATE dimensional.KPI SET Meta = 270000   where Mes =12;
