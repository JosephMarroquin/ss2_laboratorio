SELECT 
    flightstatus,
    COUNT(*) AS total
FROM 
    viaje
GROUP BY 
    flightstatus;