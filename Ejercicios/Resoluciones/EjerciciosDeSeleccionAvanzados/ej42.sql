select * from products as p where p.unit_price > (select avg(unit_price) from products)
