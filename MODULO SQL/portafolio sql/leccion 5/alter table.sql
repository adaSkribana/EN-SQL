
ALTER TABLE Prestamo
ADD COLUMN ID_prestamo SERIAL PRIMARY KEY;

UPDATE Libro
SET stock = stock + 1
WHERE ID_libro = (
    SELECT ID_libro
    FROM Prestamo
    WHERE ID_prestamo = 3