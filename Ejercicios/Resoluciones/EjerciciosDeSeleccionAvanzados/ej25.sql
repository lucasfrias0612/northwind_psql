select cat.category_name as "Categoría", count(p.product_id) as "Cantidad de Productos"
from products as p inner join categories as cat on p.category_id=cat.category_id group by cat.category_id
having count(p.product_id) >= 5
