-- No entendí bien el enunciado, por las dudas dejo dos querys, me riento mas a la segunda
--1
select c.category_name as "Categoría", p.product_name as "Producto", count(p.product_id) as "Cantidad de Productos en Categoría"
from products as p inner join categories as c on p.category_id=c.category_id
group by p.product_id, c.category_id having c.category_id in (3,5,8) order by c.category_name

--2
select c.category_name as "Categoría", (select count(p.product_id) as "Total de Productos en Categoría"
from products as p where p.category_id=c.category_id), p.product_name as "Producto"
from products as p inner join categories as c on p.category_id=c.category_id
group by p.product_name, c.category_id having c.category_id in (3,5,8) order by c.category_name
