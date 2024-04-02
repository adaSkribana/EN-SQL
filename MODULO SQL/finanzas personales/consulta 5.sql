SELECT 
(SUM(le_debo) - SUM(me_debe))/ sum(cuotas_pagar) 
as cuota_mensual FROM finanzas_personales;