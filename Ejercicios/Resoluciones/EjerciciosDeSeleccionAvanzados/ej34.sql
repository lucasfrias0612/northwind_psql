select date_part('year', o.order_date) as "Año",  date_part('month', o.order_date) as "Mes", c.contact_name as "Cliente", count(o.order_id) as "Total de Órdenes"
from orders as o inner join customers as c on o.customer_id=c.customer_id group by date_part('year', o.order_date), date_part('month', o.order_date), c.customer_id
