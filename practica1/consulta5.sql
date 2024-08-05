SELECT TOP 5 resultado.countryname, COUNT(*) AS total
FROM (
SELECT a.id, a.countryname, v.flightstatus FROM viaje v
INNER JOIN airport a
ON a.id = v.airport_id
) AS resultado
GROUP BY
resultado.countryname ORDER BY total DESC;