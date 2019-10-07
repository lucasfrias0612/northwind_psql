--Opción 1 rápida
select * from orders where (employee_id = 2 or employee_id = 5 or employee_id = 7) and date_part('year', order_date) = 1996
-- Opción 2 bien explícita
select order_date as "Fecha de la Orden", employee_id as "ID del Empleado", order_id as "ID de la Orden", customer_id as "ID del Cliente", required_date as "Fecha Requerida", shipped_date as "Fecha de Envío", ship_via as "Enviar a través de", freight as "Carga", ship_name as "Nombre de Envío", ship_address as "Dirección de Envío", ship_city as "Ciudad de Envío", ship_region as "Región de Envío", ship_postal_code as "Código postal de Envío", ship_country as "País de Envío"
from orders where employee_id in(2,5,7) and extract('year' from order_date) = 1996
