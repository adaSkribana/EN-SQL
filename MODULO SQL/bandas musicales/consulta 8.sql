-- Selecciona el nombre de la banda y el nombre del disco de la tabla bandas_discos
-- Realiza un JOIN con la tabla bandas usando la columna nombre_banda para filtrar las bandas que tienen discos con más de una palabra
SELECT b.nombre AS nombre_banda, bd.nombre_disco
FROM bandas b
JOIN bandas_discos bd ON b.nombre = bd.nombre_banda
WHERE bd.nombre_disco LIKE '% %';
