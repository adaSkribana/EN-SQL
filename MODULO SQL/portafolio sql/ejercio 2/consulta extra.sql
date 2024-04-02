-- Seleccionamos los campos 'nombre' y 'categoria' de la tabla 'productos'.
-- Utilizamos la función de agregación MAX para obtener el precio máximo de todos los productos.
-- Luego, filtramos los productos donde el precio sea igual al precio máximo encontrado.
SELECT nombre, categoria, precio
FROM productos
WHERE precio = (SELECT MAX(precio) FROM productos);
