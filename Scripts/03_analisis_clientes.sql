with ganancias_por_cliente as (
select 
"Customer Name",
SUM("Profit") as "Ganancias por cliente"
from sample
group by "Customer Name" 
), 
Porcentaje_acumulado as (
select
"Customer Name" ,
"Ganancias por cliente" ,
SUM("Ganancias por cliente" ) over(order by "Ganancias por cliente" desc)/
SUM("Ganancias por cliente" ) over() as "porcentaje_acumulado"
from ganancias_por_cliente 
)
select 
"Customer Name" ,
round(cast("Ganancias por cliente" as numeric), 2) as "utilidad",
round(cast("porcentaje_acumulado" *100 as numeric),2) as "Porcentaje_total"
from Porcentaje_acumulado 
where porcentaje_acumulado <= 0.80
order by "Ganancias por cliente" desc;