begin transaction;
delete from order_details where product_id in (select od.product_id from order_details as od inner join products as p on od.product_id=p.product_id
where p.discontinued=1);
delete from products as p where p.discontinued=1;
commit;
