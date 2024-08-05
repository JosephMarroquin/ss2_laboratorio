-- Insertar tabla airport
INSERT INTO airport (airportname, airportcountrycode, countryname, airportcontinent, continents)
SELECT DISTINCT t.airportname, t.airportcountrycode, t.countryname, t.airportcontinent, t.continents
FROM temporal t
WHERE
    t.airportname IS NOT NULL
    AND t.airportcountrycode IS NOT NULL
    AND t.countryname IS NOT NULL
    AND t.airportcontinent IS NOT NULL
    AND t.continents IS NOT NULL
    ;


-- Insertar tabla passenger
--98619
--MZwjgO
INSERT INTO passenger (passengerid, firstname, lastname, gender, age, nationality)
SELECT DISTINCT t.passengerid, t.firstname, t.lastname, t.gender, t.age, t.nationality
FROM temporal t
;


-- Insertar tabla viaje
INSERT INTO viaje (departuredate, arrivalairport, pilotname, flightstatus, airport_id, pasajero_id)
SELECT datos_airport.departuredate, datos_airport.arrivalairport, datos_airport.pilotname, datos_airport.flightstatus, datos_airport.airport_id, datos_pasajero.id_pasajero
FROM (
SELECT p.id as id_pasajero, t.departuredate, t.arrivalairport, t.pilotname, t.flightstatus
FROM passenger p
INNER JOIN temporal t 
	ON p.passengerid	= t.passengerid
	AND p.firstname = t.firstname
	AND p.lastname = t.lastname
	AND p.gender = t.gender
	AND p.age = t.age
	AND p.nationality = t.nationality
) AS datos_pasajero
INNER JOIN (
SELECT t.departuredate, t.arrivalairport, t.pilotname, t.flightstatus, a.id as airport_id
FROM airport a
INNER JOIN temporal t 
ON a.airportname = t.airportname
	AND a.airportcountrycode = t.airportcountrycode
	AND a.countryname = t.countryname
	AND a.airportcontinent = t.airportcontinent
	AND a.continents = t.continents
WHERE
	t.departuredate IS NOT NULL
    AND t.arrivalairport IS NOT NULL
    AND t.pilotname IS NOT NULL
    AND t.flightstatus IS NOT NULL
) AS datos_airport
ON datos_pasajero.departuredate = datos_airport.departuredate
AND datos_pasajero.arrivalairport = datos_airport.arrivalairport
AND datos_pasajero.pilotname = datos_airport.pilotname
AND datos_pasajero.flightstatus = datos_airport.flightstatus
