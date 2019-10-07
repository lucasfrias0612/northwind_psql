--Opción 1 rápida
select * from orders where employee_id = 3
and (date_part('month', order_date) = 12 or date_part('month', order_date) = 11 or date_part('month', order_date) = 10
or date_part('month', order_date) = 9 or date_part('month', order_date) = 8)
-- Opción 2 bien explícita
select order_date as "Fecha de la Orden", order_id as "ID de la Orden", customer_id as "ID del Cliente", employee_id as "ID del Empleado", required_date as "Fecha Requerida", shipped_date as "Fecha de Envío", ship_via as "Enviar a través de", freight as "Carga", ship_name as "Nombre de Envío", ship_address as "Dirección de Envío", ship_city as "Ciudad de Envío", ship_region as "Región de Envío", ship_postal_code as "Código postal de Envío", ship_country as "País de Envío"
from orders where employee_id = 3 and extract('month' from order_date) in (8,9,10,11,12)
