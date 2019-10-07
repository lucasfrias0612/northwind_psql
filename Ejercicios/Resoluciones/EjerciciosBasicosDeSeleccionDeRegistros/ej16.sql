--Opción 1 rápida
select * from products
where (category_id = 3 or category_id = 5 or category_id = 8)
order by units_in_stock limit 9
-- Opción 2 bien explícita
select product_id as "ID del Producto", product_name as "Nombre del Producto", unit_price as "Precio Unitario", supplier_id as "ID del Proveedor", category_id as "ID de la Categoría", quantity_per_unit as "Cantidad por Unidad", units_in_stock as "Unidades en Stock", units_on_order as "Unidades en Orden", reorder_level as "Reordenar Nivel", discontinued as "Discontinuado"
from products where category_id in (3,5,8) order by units_in_stock limit 9
