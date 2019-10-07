--Opción 1 rápida
select * from products where product_name like 'P%' and unit_price between 10 and 120
-- Opción 2 bien explícita
select product_id as "ID del Producto", product_name as "Nombre del Producto", unit_price as "Precio Unitario", supplier_id as "ID del Proveedor", category_id as "ID de la Categoría", quantity_per_unit as "Cantidad por Unidad", units_in_stock as "Unidades en Stock", units_on_order as "Unidades en Orden", reorder_level as "Reordenar Nivel", discontinued as "Discontinuado"
from products where (product_name like 'P%' or product_name like 'p%') and unit_price between 10 and 120
