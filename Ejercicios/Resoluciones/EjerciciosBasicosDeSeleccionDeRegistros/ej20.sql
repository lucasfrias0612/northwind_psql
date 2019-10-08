select order_id as "ID de Orden", quantity as "Cantidad", unit_price as "Precio Unitario", round ((unit_price * quantity)::numeric, 2) AS "Monto Total"
from order_details where unit_price * quantity between 10 and 300
