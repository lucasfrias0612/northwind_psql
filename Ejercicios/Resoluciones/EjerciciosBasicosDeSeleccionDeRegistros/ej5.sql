--Opción 1 rápida
select * from customers where upper(country) like 'USA' or upper(country) like 'FRANCIA' or upper(country) like 'UK'
-- Opción 2 bien explícita
select country as "País", customer_id as "ID del Cliente", company_name as "Nombre de la Compañía", contact_name as "Nombre del Contacto", contact_title as "Título del Contacto", address as "Dirección", city as "Ciudad", region as "Región", postal_code as "Código Postal", phone as "Teléfono", fax as "Fax"
from customers where lower(country) in ('usa', 'francia', 'uk')
