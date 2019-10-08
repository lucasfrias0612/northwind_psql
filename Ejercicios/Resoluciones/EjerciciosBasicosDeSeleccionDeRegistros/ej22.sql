-- No encontré forma de duplicar repetidos en el último registro (o sea el equivalente a with ties en PostgreSQL)
select * from products order by units_on_order desc limit 15
