SELECT 
    (CAST(COUNT(CASE WHEN gender = 'Male' THEN 1 END) AS FLOAT) / COUNT(*)) * 100 AS Porcentaje_Hombres
FROM passenger;

SELECT 
    (CAST(COUNT(CASE WHEN gender = 'Female' THEN 1 END) AS FLOAT) / COUNT(*)) * 100 AS Porcentaje_Mujeres
FROM passenger;