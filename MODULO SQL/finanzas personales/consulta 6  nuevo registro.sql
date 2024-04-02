
INSERT INTO finanzas_personales (nombre, me_debe, cuotas_cobrar, le_debo, cuotas_pagar)
VALUES ('amorcito', 0, 0, 50.000, 1);
SELECT * FROM finanzas_personales;

UPDATE finanzas_personales
SET le_debo = 50000
WHERE nombre = 'amorcito';
SELECT * FROM finanzas_personales;

