-- Creando la tabla manualmente
begin transaction;
create table proveedores_aux (product_id int primary key not null, product_name character(100));
insert into proveedores_aux (product_id, product_name)
select p.product_id, p.product_name
from products as p left join order_details as od on p.product_id=od.product_id where od.order_id is null;
commit;

-- Creando la tabla con select into
select p.product_id, p.product_name, p.supplier_id, p.category_id, p.quantity_per_unit, p.unit_price, p.units_in_stock, p.units_on_order, p.reorder_level, p.discontinued
into proveedores_aux2
from products as p left join order_details as od on p.product_id=od.product_id where od.order_id is null;
