/*Para identificar las relaciones fuertes y débiles entre las tablas, debemos analizar cómo se relacionan entre sí y si alguna de ellas depende completamente de otra para existir.

Relaciones Fuertes:
En este contexto, la tabla "Libro" tiene una relación fuerte con la tabla "Autor". Esto se debe a que un libro debe tener un autor asociado (mediante la clave externa ID_autor) para ser registrado en la tabla "Libro". Por lo tanto, la existencia de un registro en la tabla "Libro" depende completamente de la existencia de un autor en la tabla "Autor". Esta relación se refuerza aún más porque la clave primaria de "Autor" (ID_autor) se utiliza como clave externa en "Libro".
De manera similar, la tabla "Prestamo" tiene una relación fuerte tanto con la tabla "Libro" como con la tabla "Lector". Un préstamo solo puede existir si hay un libro disponible para ser prestado (clave externa ID_libro que referencia la tabla "Libro") y si hay un lector que realice el préstamo (clave externa ID_lector que referencia la tabla "Lector").

Relaciones Débiles:
En este caso, no hay tablas que sean inherentemente débiles en relación con otras en el modelo dado. Todas las tablas tienen relaciones fuertes con al menos una tabla principal y no dependen de otras tablas para existir.
La normalización de datos se refiere al proceso de organizar los datos en una base de datos de manera eficiente y sin redundancia. En este caso, las tablas ya están en una forma normalizada, ya que cumplen con las formas normales hasta cierto grado:

Primera Forma Normal (1NF): Todas las tablas tienen campos atómicos (sin valores múltiples o repetidos en una sola celda).
Segunda Forma Normal (2NF): No hay dependencias parciales en las tablas (todos los campos no clave dependen completamente de la clave principal).
Tercera Forma Normal (3NF): No hay dependencias transitivas en las tablas (los campos no clave no dependen de otros campos no clave).

En cuanto a la desnormalización de datos:
podría ser útil en situaciones donde se requiera un acceso más rápido a los datos o se necesite optimizar consultas específicas. Por ejemplo, si se necesitara generar informes frecuentes sobre los préstamos de libros y los datos estuvieran distribuidos en varias tablas normalizadas, podría considerarse la desnormalización para simplificar las consultas y mejorar el rendimiento. Sin embargo, esto debe hacerse con precaución y considerando los posibles impactos en la integridad de los datos y el mantenimiento del sistema.
*/