-- Selecciona el nombre del disco y el año del disco de la tabla bandas_discos
-- Realiza un JOIN con la tabla bandas usando la columna nombre_banda para obtener el país de la banda
-- Filtra las bandas inglesas que terminan en "s"
-- Ordena los resultados por año del disco de manera descendente y toma solo el primer resultado
SELECT bd.nombre_disco, bd.anio_disco
FROM bandas_discos bd
JOIN bandas b ON bd.nombre_banda = b.nombre
WHERE b.pais = 'UK' AND b.nombre LIKE '%s' 
ORDER BY bd.anio_disco DESC
LIMIT 1;
