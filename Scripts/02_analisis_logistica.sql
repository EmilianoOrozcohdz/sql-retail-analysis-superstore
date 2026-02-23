select 
"Ship Mode" , 
"Region" , 
extract(day from AVG(age("Ship Date" , "Order Date"))) as "promedio_dias_envio"
from sample
group by "Ship Mode", "Region" 
order by promedio_dias_envio desc limit 5;


