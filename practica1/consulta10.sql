SELECT 
    FORMAT(departuredate, 'MM-yyyy') AS departuredate,
    COUNT(*) AS total_vuelos
FROM 
    viaje
GROUP BY 
    FORMAT(departuredate, 'MM-yyyy')