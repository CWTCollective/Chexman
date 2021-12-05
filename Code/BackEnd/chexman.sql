-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2021 a las 13:56:32
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chexman`
--
CREATE DATABASE IF NOT EXISTS `chexman` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `chexman`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `issue`
--

CREATE TABLE IF NOT EXISTS `issue` (
  `id_Issue` int(2) NOT NULL AUTO_INCREMENT,
  `id_Ticket` int(2) NOT NULL,
  `id_Issue_Type` int(2) NOT NULL,
  `id_Status_Type` int(2) NOT NULL,
  `Create_Date_Issue` int(10) NOT NULL,
  `Closed_Date_Issue` int(10) NOT NULL,
  `Summary` varchar(50) NOT NULL,
  `Description` varchar(50) NOT NULL,
  PRIMARY KEY (`id_Issue`),
  UNIQUE KEY `Foreign key` (`id_Ticket`,`id_Issue_Type`,`id_Status_Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `issue`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `issue_type`
--

CREATE TABLE IF NOT EXISTS `issue_type` (
  `id_Issue_Type` int(2) NOT NULL AUTO_INCREMENT,
  `Issue_Type` varchar(25) NOT NULL,
  PRIMARY KEY (`id_Issue_Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `issue_type`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id_log` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `Timestamp_in` date NOT NULL,
  `Timestamp_out` date NOT NULL,
  `Accion` varchar(25) NOT NULL,
  PRIMARY KEY (`id_log`),
  UNIQUE KEY `Foreign key` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `logs`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_type`
--

CREATE TABLE IF NOT EXISTS `status_type` (
  `id_Status_Type` int(2) NOT NULL AUTO_INCREMENT,
  `Status_Type` varchar(25) NOT NULL,
  PRIMARY KEY (`id_Status_Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `status_type`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `id_Tickets` int(2) NOT NULL AUTO_INCREMENT,
  `id_User` int(2) NOT NULL,
  `id_Ticket_Type` int(2) NOT NULL,
  `id_Issue` int(2) NOT NULL,
  `Create_Date` date NOT NULL DEFAULT current_timestamp(),
  `Expense_Date` date NOT NULL DEFAULT current_timestamp(),
  `Amount` varchar(20) NOT NULL,
  PRIMARY KEY (`id_Tickets`),
  UNIQUE KEY `Foreign key` (`id_User`,`id_Ticket_Type`,`id_Issue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `tickets`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets_state`
--

CREATE TABLE IF NOT EXISTS `tickets_state` (
  `id_Ticket_State` int(2) NOT NULL AUTO_INCREMENT,
  `Ticket_State` varchar(25) NOT NULL,
  PRIMARY KEY (`id_Ticket_State`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `tickets_state`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets_type`
--

CREATE TABLE IF NOT EXISTS `tickets_type` (
  `id_Ticket_Type` int(2) NOT NULL AUTO_INCREMENT,
  `Ticket_Type` varchar(25) NOT NULL,
  PRIMARY KEY (`id_Ticket_Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `tickets_type`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(2) NOT NULL AUTO_INCREMENT,
  `DNI/NIE` varchar(9) NOT NULL DEFAULT 'Unique',
  `Name` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Telephone` int(9) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Roll` varchar(25) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `DNI/NIE` (`DNI/NIE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `users`:
--

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `DNI/NIE`, `Name`, `LastName`, `Address`, `Telephone`, `Email`, `Roll`, `Password`) VALUES
(1, '11111111A', 'Maria', 'Sanchez', 'Calle Mayor 10', 911111111, 'Mari@gmail.com', 'empleado', 'mari'),
(2, '22222222B', 'Juan', 'Perez', 'Calle Tulipan 24', 912222222, 'Jojo@hotmail.es', 'empleado', 'Jojo'),
(3, '333333333', 'Diego', 'Fernandez', 'Calle Clavel 11', 913333333, 'Digma@gmail.com', 'empleado', 'digo'),
(4, '11144444A', 'Sofia', 'Valdez', 'Plaza del Oso 2', 914444444, 'sof@outlook.com', 'RRHH', 'Sole'),
(5, '22255555F', 'David', 'Galvez', 'Avda.Madrid 45', 915555555, 'davi@gmail.com', 'tecnico', 'bravo');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
