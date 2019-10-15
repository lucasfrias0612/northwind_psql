-- En este ejercicio me pareció lo mas práctico utilizar actualización en cascada para lo cual se tuvo que modificar el comportamiento de la llave fóranea en la tabla de órdenes
alter table orders
  drop constraint fk_orders_customers;
alter table orders
  add constraint fk_orders_customers
  foreign key (customer_id)
  references customers(customer_id)
  on update cascade;

update customers set customer_id='UNCFI' where customer_id='ALFKI'
