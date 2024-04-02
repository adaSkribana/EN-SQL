-- Selecciona el nombre de la banda de la tabla bandas
-- Realiza un JOIN con la tabla bandas_discos usando la columna nombre_banda para filtrar las bandas que tienen discos
-- Filtra las bandas alemanas con al menos una letra "K" en su nombre y con discos publicados en 1999 o superior
SELECT b.nombre
FROM bandas b
JOIN bandas_discos bd ON b.nombre = bd.nombre_banda
WHERE b.pais = 'Alemania' AND b.nombre LIKE '%K%' AND bd.anio_disco >= 1999;
