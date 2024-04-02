-- Con una subconsulta, calcula la suma total de la columna valor_cuota_actual.
WITH Cuotas_Actuales AS (
    SELECT 
        nombre, 
        le_debo AS deuda_actual, 
        cuotas_pagar AS cuotas_pendientes,
        CASE 
            WHEN cuotas_pagar > 0 THEN le_debo / cuotas_pagar
            ELSE 0
        END AS valor_cuota_actual
    FROM finanzas_personales
    WHERE le_debo > 0 AND cuotas_pagar > 0
)
-- Utiliza la subconsulta para calcular la suma total de la columna valor_cuota_actual.
SELECT 
    *,
    (SELECT SUM(valor_cuota_actual) FROM Cuotas_Actuales) AS suma_valor_cuota_actual
FROM Cuotas_Actuales;

