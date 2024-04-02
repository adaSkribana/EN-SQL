--relaciones y sus significados del presente diagrama ERD:

/*
Relación entre Autor y Libro:
La tabla Libro tiene una columna ID_autor que actúa como clave externa y se relaciona con la columna ID_autor en la tabla Autor.
Esto indica que cada libro está asociado con un autor específico.

Significado de la Relación Autor y Libro:
La relación entre Autor y Libro es de "Uno a Muchos" (1:N). Esto significa que un autor puede tener muchos libros asociados, pero cada libro está asociado con solo un autor.
En un diagrama ERD, verías una línea que va desde la tabla Autor hacia la tabla Libro, indicando la relación. En el extremo de la tabla Autor, la línea tendría un símbolo de "círculo" o "rombo", y en el extremo de la tabla Libro, la línea tendría una terminación regular.

Relación entre Lector y Prestamo:
La tabla Prestamo tiene una columna ID_lector que actúa como clave externa y se relaciona con la columna ID_lector en la tabla Lector.
Esto indica que cada préstamo está asociado con un lector específico.

Significado de la Relación Lector y Prestamo:
La relación entre Lector y Prestamo es de "Uno a Muchos" (1:N). Esto significa que un lector puede realizar muchos préstamos, pero cada préstamo está asociado con solo un lector.
En un diagrama ERD, verías una línea que va desde la tabla Lector hacia la tabla Prestamo, indicando la relación. En el extremo de la tabla Lector, la línea tendría un símbolo de "círculo" o "rombo", y en el extremo de la tabla Prestamo, la línea tendría una terminación regular.

*/