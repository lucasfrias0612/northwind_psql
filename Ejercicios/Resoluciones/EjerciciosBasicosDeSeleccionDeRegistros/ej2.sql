--Opción 1 rápidaselect * from customers where lower(company_name) like ('a%','b%','c%','d%') order by address
select * from orders order by order_date desc
-- Opción 2 bien explícita
select order_date as "Fecha de la Orden", order_id as "ID de la Orden", customer_id as "ID del Cliente", employee_id as "ID del Empleado", required_date as "Fecha Requerida", shipped_date as "Fecha de Envío", ship_via as "Enviar a través de", freight as "Carga", ship_name as "Nombre de Envío", ship_address as "Dirección de Envío", ship_city as "Ciudad de Envío", ship_region as "Región de Envío", ship_postal_code as "Código postal de Envío", ship_country as "País de Envío"
from orders order by order_date desc
