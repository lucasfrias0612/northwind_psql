select s.company_name, min(p.unit_price), max(p.unit_price)
from products as p inner join suppliers as s on p.supplier_id=s.supplier_id group by s.supplier_id
