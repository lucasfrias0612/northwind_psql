select country as "País", city as "Ciudad", count (customer_id) as "Cantidad de Clientes"
from customers group by country, city
