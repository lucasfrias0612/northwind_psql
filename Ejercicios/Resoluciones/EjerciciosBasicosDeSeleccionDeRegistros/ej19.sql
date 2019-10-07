--Opción 1 rápida
select * from order_details where quantity >= 10 and quantity <= 250
-- Opción 2 bien explícita
select order_id as "ID de la Orden", product_id as "ID del Producto", unit_price as "Precio Unitario", quantity as "Cantidad", discount as "Descuento"
from order_details where quantity between 10 and 250
