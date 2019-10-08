select c.contact_name as "Cliente", s.contact_name as "Proveedor", concat(e.first_name,' ',e.last_name) as "Empleado", p.product_name as "Producto"
from order_details as od inner join orders as o on o.order_id=od.order_id inner join products as p on p.product_id=od.product_id
inner join suppliers as s on p.supplier_id=s.supplier_id inner join employees as e on o.employee_id=e.employee_id
inner join customers as c on c.customer_id=o.customer_id where o.order_id=10250
