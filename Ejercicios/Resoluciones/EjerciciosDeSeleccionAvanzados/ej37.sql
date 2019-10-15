select c.company_name as "Compañía del Cliente", c.contact_name as "Nombre del Contacto", o.order_id as "Código de Orden", o.order_date as "Fecha de Orden",
p.product_id as "Código de Producto", od.quantity as "Cantidad pedida del Producto", p.product_name as "Nombre del Producto",
s.company_name as "Compañía del Proveedor"
from customers as c join orders as o on c.customer_id=o.customer_id join order_details as od on o.order_id=od.order_id
join products as p on od.product_id=p.product_id join suppliers as s on p.supplier_id=s.supplier_id
where lower(s.company_name) like any (array['a%','b%','c%','d%','e%','f%','g%']) and od.quantity between 18 and 190
