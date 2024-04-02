ALTER TABLE productos
ADD COLUMN cantidad INTEGER DEFAULT 1;
--tuve que hacer esta modificación ^

--encuentra el  numero total de productos en la tabla
SELECT SUM(cantidad) AS cantidad_total_productos
FROM productos;
