SELECT resultado.countryname, COUNT(*) AS total
FROM (
SELECT a.id, a.countryname FROM viaje v
INNER JOIN airport a
ON a.id = v.airport_id
) AS resultado
GROUP BY
resultado.countryname;