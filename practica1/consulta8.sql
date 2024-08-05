SELECT TOP 5 resultado.continents, COUNT(*) AS total
FROM (
SELECT a.id, a.continents, v.flightstatus FROM viaje v
INNER JOIN airport a
ON a.id = v.airport_id
) AS resultado
WHERE resultado.flightstatus != 'Cancelled'
GROUP BY
resultado.continents ORDER BY total DESC;
