CREATE TABLE clase_ciencias(
	clase_cienciaid INT,
	nombre VARCHAR,
	avance INT
);
--Recuerda usar comillas simples para datos tipo string en SQL
INSERT INTO clase_ciencias VALUES (1, 'Popeye', 33);
INSERT INTO clase_ciencias VALUES (2, 'Olive', 54);
INSERT INTO clase_ciencias VALUES (3, 'Brutus', 98);
	
SELECT * FROM clase_ciencias;