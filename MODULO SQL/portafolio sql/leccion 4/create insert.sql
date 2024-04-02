CREATE TABLE ciudades(
	id_localidad INT PRIMARY KEY,
	nombre VARCHAR(50) );
INSERT INTO ciudades(id_localidad, nombre) VALUES 
	(01, 'Antogagasta'),
	(02, 'Chiloé'),
	(03, 'Santiago'),
	(04, 'Magallanes');
select * from ciudades

CREATE TABLE clientes(
	id_cliente INT PRIMARY KEY,
	nombre VARCHAR(50),
	apellido VARCHAR(50),
	id_ciudad INT,
	FOREIGN KEY (id_ciudad) REFERENCES ciudades(id_localidad)
);


-- Generar 25 registros de clientes
INSERT INTO clientes (id_cliente, nombre, apellido, id_ciudad)
VALUES
(1, 'Juan', 'González', 1),
(2, 'María', 'Martínez', 2),
(3, 'José', 'Rodríguez', 3),
(4, 'Ana', 'López', 4),
(5, 'Carlos', 'Pérez', 1),
(6, 'Laura', 'Gómez', 2),
(7, 'David', 'Sánchez', 3),
(8, 'Sofía', 'Díaz', 4),
(9, 'Alejandro', 'Fernández', 1),
(10, 'Paula', 'Ruiz', 2),
(11, 'Daniel', 'Hernández', 3),
(12, 'Elena', 'Torres', 4),
(13, 'Miguel', 'Jiménez', 1),
(14, 'Lucía', 'Vázquez', 2),
(15, 'Pedro', 'Moreno', 3),
(16, 'Carmen', 'Santos', 4),
(17, 'Javier', 'Castro', 1),
(18, 'Patricia', 'Ortega', 2),
(19, 'Rosa', 'Flores', 3),
(20, 'Alberto', 'Molina', 4),
(21, 'Eva', 'Navarro', 1),
(22, 'Manuel', 'Benítez', 2),
(23, 'Cristina', 'Vidal', 3),
(24, 'Jorge', 'Ramos', 4),
(25, 'Isabel', 'Iglesias', 1);









