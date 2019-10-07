--Opción 1 rápida
select * from employees where reports_to is null
-- Opción 2 bien explícita
select employee_id as "ID de Empleado", last_name as "Apellido", first_name as "Nombre", title as "Título", title_of_courtesy as "Título de Cortesía", birth_date as "Fecha de Nacimiento", hire_date as "Fecha de Contratación", address as "Dirección", city as "Ciudad", region as "Región", postal_code as "Código Postal", country as "País", home_phone as "Teléfono de Línea", extension as "Extensión", photo as "Photo", notes as "Notas", reports_to as "Roporta a", photo_path as "Ruta a la Foto"
from employees where reports_to is null
