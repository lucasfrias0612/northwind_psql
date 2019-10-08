select date_part('year', o.order_date) as "Año",  date_part('month', o.order_date) as "Mes Num",
to_char(to_timestamp (date_part('month', o.order_date)::text, 'MM'), 'TMmon') as "Mes",
count(o.order_id) as "Total de Órdenes"
from orders as o group by date_part('year', o.order_date), date_part('month', o.order_date)
