select s.country as "País", count(s.supplier_id) as "Cantidad de Proveedores"
from suppliers as s
where lower(s.contact_name) like any (array['e%','f%','g%','h%','i%','j%','k%','l%','m%','n%','ñ%','o%','p%'])
group by country having count(s.supplier_id) > 2
