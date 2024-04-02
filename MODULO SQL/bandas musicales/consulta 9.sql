-- Selecciona el nombre de la banda de la tabla bandas
-- Realiza un JOIN con la tabla bandas_discos usando la columna nombre_banda para contar los discos con más de una palabra registrados por banda
-- Filtra las bandas que tienen discos con más de una palabra y cuenta el número de discos registrados para cada banda
SELECT b.nombre AS nombre_banda, COUNT(bd.nombre_disco) AS cantidad_discos
FROM bandas b
JOIN bandas_discos bd ON b.nombre = bd.nombre_banda
WHERE bd.nombre_disco LIKE '% %'
GROUP BY b.nombre;
