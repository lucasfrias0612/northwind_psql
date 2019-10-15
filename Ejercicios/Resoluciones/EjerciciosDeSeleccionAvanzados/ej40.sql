select o.order_id as "Orden", o.order_date as "Fecha de la Orden",
(select round(sum(od.quantity * od.unit_price)::numeric,2) from order_details as od where od.order_id=o.order_id) as "Total en Soles"
from orders as o
