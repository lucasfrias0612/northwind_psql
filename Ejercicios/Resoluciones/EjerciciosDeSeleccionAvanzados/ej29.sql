select cat.category_name as "Categoría", count (product_id) as "Cantidad Total de Productos"
from products as p inner join categories as cat on p.category_id=cat.category_id group by cat.category_id
