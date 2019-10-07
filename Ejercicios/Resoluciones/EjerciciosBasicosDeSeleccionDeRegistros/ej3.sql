--Opción 1 rápida
select * from order_details order by quantity
-- Opción 2 bien explícita
select quantity as "Cantidad Pedida", product_id as "ID del Producto", unit_price as "Precio unitario", discount as "Descuento"
from order_details order by quantity asc
