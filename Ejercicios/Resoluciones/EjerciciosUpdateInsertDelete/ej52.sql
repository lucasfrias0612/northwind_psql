begin transaction;
insert into products (product_id, product_name, supplier_id, category_id, discontinued)
	values(100, 'Café Cabrales', 1, (select category_id from categories where description like '%coffee%'), 0);
commit;
