-- Tener en cuenta la importancia de la aclaración en la condición ya que aquí solo actulizo aquellos que tienen en el campo
-- country extactamente la expresión 'UK'
update suppliers set country='AR' where country = 'UK'
