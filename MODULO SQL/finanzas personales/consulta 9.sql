WITH Cuotas_Actuales AS (
    SELECT 
        nombre, 
        le_debo AS deuda_actual, 
        cuotas_pagar AS cuotas_pendientes,
        CASE 
            WHEN cuotas_pagar > 0 THEN le_debo / cuotas_pagar
            ELSE 0
        END AS nuevo_valor_cuota_actual
    FROM finanzas_personales
    WHERE cuotas_pagar > 0
)
SELECT 
    *,
    (SELECT SUM(nuevo_valor_cuota_actual) FROM Cuotas_Actuales) AS suma_total_nuevo_valor_cuota_actual
FROM Cuotas_Actuales;


