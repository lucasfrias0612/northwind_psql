select p.product_name as "Producto",
(select count(distinct od.order_id) from order_details as od where od.product_id=p.product_id) as "Ordenes en las que aparece"
from products as p
