--Opción 1 rápida
select * from products
where discontinued = 1 and unit_price >= 39 and unit_price <=190 and units_in_stock > 0
and (supplier_id = 1 or supplier_id = 3 or supplier_id = 7 or supplier_id = 8 or supplier_id = 9)
order by supplier_id, unit_price asc
-- Opción 2 bien explícita
select product_id as "ID del Producto", product_name as "Nombre del Producto", unit_price as "Precio Unitario", supplier_id as "ID del Proveedor", category_id as "ID de la Categoría", quantity_per_unit as "Cantidad por Unidad", units_in_stock as "Unidades en Stock", units_on_order as "Unidades en Orden", reorder_level as "Reordenar Nivel", discontinued as "Discontinuado"
from products
where discontinued = 1 and unit_price between 39 and 190 and units_in_stock > 0 and supplier_id in (1,3,7,8,9)
order by supplier_id, unit_price asc
