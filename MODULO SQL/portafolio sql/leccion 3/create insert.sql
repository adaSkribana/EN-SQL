CREATE TABLE departamento(
	nombre VARCHAR(50) PRIMARY KEY,
	id_departamento SERIAL);
	
-- Insertar valores en la tabla departamento
INSERT INTO departamento (nombre) VALUES
('Administración'),
('Contabilidad'),
('Soporte Web');


CREATE TABLE empleados(
    id_empleado SERIAL PRIMARY KEY,
    emp_departamento VARCHAR(50),
    nombre VARCHAR(25),
    apellido VARCHAR(25),
    sueldo INTEGER,
    FOREIGN KEY (emp_departamento) REFERENCES departamento(nombre)
);

INSERT INTO empleados (emp_departamento, nombre, apellido, sueldo)
VALUES ('Administración', 'Mirella', 'Fuentes', 455000),
	   ('Administración', 'Gerardo', 'Solis', 400000),
	   ('Administración', 'Antonio', 'Gonzalez', 650000),
	   ('Contabilidad', 'Carla', 'Cifuentes', 625000),
	   ('Contabilidad', 'Estefania', 'Pocis', 479000),
	   ('Soporte Web', 'Alan', 'Martinez', 650000);