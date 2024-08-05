SELECT TOP 5 resultado.age, COUNT(*) AS Total_Hombres
FROM(
SELECT v.id, v.pasajero_id, p.age, p.gender
FROM viaje v
INNER JOIN passenger p
ON p.id = v.pasajero_id
) AS resultado
WHERE resultado.gender = 'Male'
GROUP BY resultado.age
ORDER BY Total_Hombres DESC;

SELECT TOP 5 resultado.age, COUNT(*) AS Total_Mujeres
FROM(
SELECT v.id, v.pasajero_id, p.age, p.gender
FROM viaje v
INNER JOIN passenger p
ON p.id = v.pasajero_id
) AS resultado
WHERE resultado.gender = 'Female'
GROUP BY resultado.age
ORDER BY Total_Mujeres DESC;
