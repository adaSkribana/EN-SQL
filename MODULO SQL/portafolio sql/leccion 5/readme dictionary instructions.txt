Este archivo proporciona una descripción detallada de la estructura de las tablas para la leccion 5.

1. Crear Tablas:

- Autor: 
  - Instrucción para crear la tabla:
    CREATE TABLE Autor (
      ID_autor SERIAL PRIMARY KEY,
      nombre VARCHAR(50) NOT NULL,
      apellido VARCHAR(50),
      nacionalidad VARCHAR(50)
    );

  - Descripción:
    La tabla "Autor" almacena información sobre los autores de los libros. 
    - ID_autor: Identificador único autoincremental para cada autor.
    - nombre: Nombre del autor (cadena de caracteres de hasta 50 caracteres).
    - apellido: Apellido del autor (cadena de caracteres de hasta 50 caracteres).
    - nacionalidad: Nacionalidad del autor (cadena de caracteres de hasta 50 caracteres).

- Lector:
  - Instrucción para crear la tabla:
    CREATE TABLE Lector (
      ID_lector INT PRIMARY KEY,
      nombre VARCHAR(50) NOT NULL,
      apellido VARCHAR(50) NOT NULL,
      rut VARCHAR(50) NOT NULL,
      telefono INT,
      direccion VARCHAR(50)
    );

  - Descripción:
    La tabla "Lector" almacena información sobre los lectores que realizan préstamos de libros.
    - ID_lector: Identificador único para cada lector.
    - nombre: Nombre del lector (cadena de caracteres de hasta 50 caracteres).
    - apellido: Apellido del lector (cadena de caracteres de hasta 50 caracteres).
    - rut: RUT del lector (cadena de caracteres de hasta 50 caracteres).
    - telefono: Número de teléfono del lector (entero).
    - direccion: Dirección del lector (cadena de caracteres de hasta 50 caracteres).

- Libro:
  - Instrucción para crear la tabla:
    CREATE TABLE Libro (
      ID_libro INT PRIMARY KEY,
      nombre VARCHAR(50),
      edicion VARCHAR(50),
      stock INT,
      ID_autor INT,
      FOREIGN KEY (ID_autor) REFERENCES Autor(ID_autor)
    );

  - Descripción:
    La tabla "Libro" almacena información sobre los libros disponibles en la biblioteca.
    - ID_libro: Identificador único para cada libro.
    - nombre: Nombre del libro (cadena de caracteres de hasta 50 caracteres).
    - edicion: Edición del libro (cadena de caracteres de hasta 50 caracteres).
    - stock: Cantidad de ejemplares disponibles del libro (entero).
    - ID_autor: Identificador del autor del libro (clave externa que referencia a la tabla "Autor").

- Prestamo:
  - Instrucción para crear la tabla:
    CREATE TABLE Prestamo (
      ID_libro INT,
      f_prestamo DATE,
      f_devolucion DATE,
      ID_lector INT,
      FOREIGN KEY (ID_libro) REFERENCES Libro(ID_libro),
      FOREIGN KEY (ID_lector) REFERENCES Lector(ID_lector)
    );

  - Descripción:
    La tabla "Prestamo" almacena información sobre los préstamos de libros realizados por los lectores.
    - ID_libro: Identificador del libro prestado (clave externa que referencia a la tabla "Libro").
    - f_prestamo: Fecha de préstamo del libro.
    - f_devolucion: Fecha de devolución del libro.
    - ID_lector: Identificador del lector que realiza el préstamo (clave externa que referencia a la tabla "Lector").

