-- Selecciona el nombre de la banda de la tabla bandas
-- Realiza un LEFT JOIN con la tabla bandas_discos usando la columna nombre_banda para contar los discos registrados por banda
-- Agrupa los resultados por el nombre de la banda y cuenta el número de discos registrados para cada banda
SELECT b.nombre, COUNT(bd.nombre_disco) AS numero_discos
FROM bandas b
LEFT JOIN bandas_discos bd ON b.nombre = bd.nombre_banda
GROUP BY b.nombre;
