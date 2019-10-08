select cat.category_name, min(p.unit_price), max(p.unit_price)
from products as p inner join categories as cat on p.category_id=cat.category_id group by cat.category_id
