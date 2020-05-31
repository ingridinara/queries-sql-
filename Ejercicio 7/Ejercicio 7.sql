-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 31-05-2020 a las 21:52:29
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
-- Estructura de tabla para la tabla `c`
--
-- Error leyendo la estructura de la tabla USAirlineFlights2.c: #1146 - Tabla 'usairlineflights2.c' no existe

--
-- Volcado de datos para la tabla `c`
--

INSERT INTO `c` (`UniqueCarrier`, `AvgArrDelay`) VALUES
('TZ', '38.5714'),
('F9', '32.8571'),
('B6', '20.3611'),
('PI', '17.7273'),
('9E', '16.4000'),
('YV', '13.2727'),
('EV', '13.0725'),
('OH', '12.9310'),
('FL', '12.0435');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
