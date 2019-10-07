--Opción 1 rápida
select * from customers where fax is null and upper(country) like 'USA'
-- Opción 2 bien explícita
select contact_name as "Nombre del Contacto", customer_id as "ID del Cliente", company_name as "Nombre de la Compañía", contact_title as "Título del Contacto", address as "Dirección", city as "Ciudad", region as "Región", postal_code as "Código Postal", country as "País", phone as "Teléfono", fax as "Fax"
from customers where fax is null and lower(country) = 'usa'
