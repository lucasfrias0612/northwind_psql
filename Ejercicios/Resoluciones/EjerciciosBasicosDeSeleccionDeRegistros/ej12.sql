--Opción 1 rápida
select * from customers where lower(company_name) similar to 'b%|c%|d%|e%|f%|g%' and upper(country) like 'UK' order by company_name
-- Opción 2 bien explícita
select company_name as "Nombre de la Compañía", customer_id as "ID del Cliente", contact_name as "Nombre del Contacto", contact_title as "Título del Contacto", address as "Dirección", city as "Ciudad", region as "Región", postal_code as "Código Postal", country as "País", phone as "Teléfono", fax as "Fax"
from customers where lower(company_name) like any (array['b%','c%','d%','e%','f%','g%']) and lower(country) = 'uk' order by company_name
