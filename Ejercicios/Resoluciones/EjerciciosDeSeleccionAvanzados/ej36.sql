select c.company_name as "Compañía del Cliente", o.order_id as "Código de Orden", o.order_date as "Fecha de Orden",
p.product_id as "Código de Producto", od.quantity as "Cantidad pedida del Producto", p.product_name as "Nombre del Producto",
s.company_name as "Compañia del Proveedor", s.city as "Ciudad del Proveedor"
from customers as c inner join orders as o on c.customer_id=o.customer_id inner join order_details as od on o.order_id=od.order_id
inner join products as p on od.product_id=p.product_id inner join suppliers as s on p.supplier_id=s.supplier_id
