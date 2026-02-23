with GananciasPorRegion as (
	select "Region" , "Sub-Category" , sum("Profit" ) as "Ganancia", SUM("Sales" ) as "Total_ventas"
from sample  
group by "Region", "Sub-Category" 
),
RankingPorRegion as (
	select "Region", "Sub-Category", "Ganancia",
	DENSE_RANK() OVER (PARTITION BY "Region" ORDER BY "Ganancia" DESC) as "posicion"
	from GananciasPorRegion 
)
select "Region", "posicion", "Sub-Category", ROUND(CAST("Ganancia" AS NUMERIC), 2) AS "utilidad"
from RankingPorRegion
where "posicion" <= 5
order by "Region", "posicion" ;