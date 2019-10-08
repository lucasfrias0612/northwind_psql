select date_part('year', o.order_date) as "Año", concat(e.first_name,' ', e.last_name) as "Empleado", count(o.order_id) as "Total de Órdenes"
from orders as o inner join employees as e on o.employee_id=e.employee_id group by date_part('year', o.order_date), e.employee_id
