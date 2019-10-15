begin transaction;
insert into territories (territory_id, territory_description, region_id)
  values ('0001', 'Buenos Aires', (SELECT region_id FROM region WHERE lower(region_description) = 'eastern'));
insert into territories (territory_id, territory_description, region_id)
  values ('0002', 'Córdoba', (SELECT region_id FROM region WHERE lower(region_description) = 'eastern'));
commit;
