-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 31-05-2020 a las 15:40:22
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `USAirlineFlights2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Flights`
--

CREATE TABLE `Flights` (
  `flightID` int(11) NOT NULL,
  `colYear` smallint(6) DEFAULT NULL,
  `colMonth` smallint(6) DEFAULT NULL,
  `DayOfMonths` smallint(6) DEFAULT NULL,
  `DayOfWeek` smallint(6) DEFAULT NULL,
  `DepTime` smallint(6) DEFAULT NULL,
  `CRSDepTime` smallint(6) DEFAULT NULL,
  `ArrTime` smallint(6) DEFAULT NULL,
  `CRSArrTime` smallint(6) DEFAULT NULL,
  `UniqueCarrier` varchar(32) DEFAULT NULL,
  `FlightNum` varchar(32) DEFAULT NULL,
  `TailNum` varchar(32) DEFAULT NULL,
  `ActualElapsedTime` smallint(6) DEFAULT NULL,
  `CRSElapsedTime` smallint(6) DEFAULT NULL,
  `AirTime` smallint(6) DEFAULT NULL,
  `ArrDelay` smallint(6) DEFAULT NULL,
  `DepDelay` smallint(6) DEFAULT NULL,
  `Origin` varchar(32) DEFAULT NULL,
  `Dest` varchar(32) DEFAULT NULL,
  `Distance` smallint(6) DEFAULT NULL,
  `TaxiIn` smallint(6) DEFAULT NULL,
  `TaxiOut` smallint(6) DEFAULT NULL,
  `Cancelled` tinyint(1) DEFAULT NULL,
  `CancellationCode` varchar(32) DEFAULT NULL,
  `Diverted` tinyint(1) DEFAULT NULL,
  `CarrierDelay` smallint(6) NOT NULL,
  `WeatherDelay` smallint(6) NOT NULL,
  `NASDelay` smallint(6) NOT NULL,
  `SecurityDelay` smallint(6) NOT NULL,
  `LateAircraftDelay` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Flights`
--

INSERT INTO `Flights` (`total`) VALUES
(4758);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Flights`
--
ALTER TABLE `Flights`
  ADD PRIMARY KEY (`flightID`),
  ADD KEY `Dest` (`Dest`),
  ADD KEY `Origin` (`Origin`),
  ADD KEY `UniqueCarrier` (`UniqueCarrier`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Flights`
--
ALTER TABLE `Flights`
  MODIFY `flightID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4759;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Flights`
--
ALTER TABLE `Flights`
  ADD CONSTRAINT `flights_ibfk_1` FOREIGN KEY (`Dest`) REFERENCES `USAirports` (`IATA`),
  ADD CONSTRAINT `flights_ibfk_2` FOREIGN KEY (`Origin`) REFERENCES `USAirports` (`IATA`),
  ADD CONSTRAINT `flights_ibfk_3` FOREIGN KEY (`UniqueCarrier`) REFERENCES `Carriers` (`CarrierCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
