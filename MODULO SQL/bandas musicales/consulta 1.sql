-- Selecciona el nombre del disco y el año del disco de la tabla bandas_discos
-- Realiza un JOIN con la tabla bandas usando la columna nombre_banda para obtener el país de la banda
-- Filtra las bandas que no son alemanas y que tienen discos publicados desde el 2000 en adelante
SELECT bd.nombre_disco, bd.anio_disco
FROM bandas_discos bd
JOIN bandas b ON bd.nombre_banda = b.nombre
WHERE b.pais != 'Alemania' AND bd.anio_disco >= 2000;
