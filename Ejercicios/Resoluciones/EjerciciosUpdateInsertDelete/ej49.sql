begin transaction;
delete from order_details where order_id=10255;
delete from orders where order_id=10255;
commit;
