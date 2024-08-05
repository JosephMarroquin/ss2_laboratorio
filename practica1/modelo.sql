-- Crear la tabla airport
CREATE TABLE airport (
    id                  INT IDENTITY(1,1) NOT NULL,
    airportname        VARCHAR(100) NOT NULL,
    airportcountrycode VARCHAR(100) NOT NULL,
    countryname        VARCHAR(100) NOT NULL,
    airportcontinent   VARCHAR(100) NOT NULL,
    continents         VARCHAR(100) NOT NULL,
    CONSTRAINT airport_pk PRIMARY KEY (id)
);

-- Crear la tabla passenger
CREATE TABLE passenger (
    id          INT IDENTITY(1,1) NOT NULL,
    passengerid VARCHAR(100) NOT NULL,
    firstname   VARCHAR(100) NOT NULL,
    lastname    VARCHAR(100) NOT NULL,
    gender      VARCHAR(100) NOT NULL,
    age         INT NOT NULL,
    nationality VARCHAR(100) NOT NULL,
    CONSTRAINT passenger_pk PRIMARY KEY (id),
);

-- Crear la tabla viaje
CREATE TABLE viaje (
    id                  INT IDENTITY(1,1) NOT NULL,
    departuredate       DATE NOT NULL,
    arrivalairport      VARCHAR(100) NOT NULL,
    pilotname           VARCHAR(100) NOT NULL,
    flightstatus        VARCHAR(100) NOT NULL,
    airport_id          INT NOT NULL,
    pasajero_id         INT NOT NULL,
    CONSTRAINT viaje_pk PRIMARY KEY (id),
    CONSTRAINT viaje_airport_fk FOREIGN KEY (airport_id) REFERENCES airport (id)
);


-- Crear tabla temporal para almacenar los datos
CREATE TABLE temporal (
    passengerid VARCHAR(100),
    firstname   VARCHAR(100),
    lastname    VARCHAR(100),
    gender      VARCHAR(100),
    age         INT ,
    nationality VARCHAR(100),
    airportname        VARCHAR(100),
    airportcountrycode VARCHAR(100),
    countryname        VARCHAR(100),
    airportcontinent   VARCHAR(100),
    continents         VARCHAR(100),
    departuredate       DATE ,
    arrivalairport      VARCHAR(100),
    pilotname           VARCHAR(100),
    flightstatus        VARCHAR(100)
);