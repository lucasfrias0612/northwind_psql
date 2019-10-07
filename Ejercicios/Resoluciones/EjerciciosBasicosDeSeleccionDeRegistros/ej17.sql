--Opción 1 rápida
select * from orders where (employee_id = 2 or employee_id = 3 or employee_id = 4 or employee_id = 5)
and lower(customer_id) similar to 'a%|b%|c%|d%|e%|f%|g%' and date_part('day', order_date) = 31 and date_part('month', order_date) = 7
-- Opción 2 bien explícita
select order_date as "Fecha de la Orden", order_id as "ID de la Orden", customer_id as "ID del Cliente", employee_id as "ID del Empleado", required_date as "Fecha Requerida", shipped_date as "Fecha de Envío", ship_via as "Enviar a través de", freight as "Carga", ship_name as "Nombre de Envío", ship_address as "Dirección de Envío", ship_city as "Ciudad de Envío", ship_region as "Región de Envío", ship_postal_code as "Código postal de Envío", ship_country as "País de Envío"
from orders where employee_id in (2,3,4,5) and lower(customer_id) like any (array['a%','b%','c%','d%','e%','f%','g%'])
and extract('day' from order_date) = 31 and extract('month' from order_date) = 7
