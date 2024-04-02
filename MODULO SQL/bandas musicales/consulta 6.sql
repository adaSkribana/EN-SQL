-- Selecciona el año del disco de la tabla bandas_discos
-- Agrupa los resultados por año del disco y filtra los años en los que el número de bandas que sacaron un disco es igual al total de bandas
-- Ordena los resultados por año del disco
SELECT anio_disco
FROM bandas_discos
GROUP BY anio_disco
HAVING COUNT(DISTINCT nombre_banda) = (SELECT COUNT(*) FROM bandas);
