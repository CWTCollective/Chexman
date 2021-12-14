-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2021 a las 18:21:02
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

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

DROP TABLE IF EXISTS `issue`;
CREATE TABLE `issue` (
  `id_Issue` int(2) NOT NULL,
  `id_Ticket` int(2) NOT NULL,
  `id_Issue_Type` int(2) NOT NULL,
  `id_Status_Type` int(2) NOT NULL,
  `Create_Date_Issue` int(10) NOT NULL,
  `Closed_Date_Issue` int(10) NOT NULL,
  `Summary` varchar(50) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `issue_type`
--

DROP TABLE IF EXISTS `issue_type`;
CREATE TABLE `issue_type` (
  `id_Issue_Type` int(2) NOT NULL,
  `Issue_Type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id_log` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `Timestamp_in` date NOT NULL,
  `Timestamp_out` date NOT NULL,
  `Accion` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_type`
--

DROP TABLE IF EXISTS `status_type`;
CREATE TABLE `status_type` (
  `id_Status_Type` int(2) NOT NULL,
  `Status_Type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets` (
  `id_Tickets` int(2) NOT NULL,
  `id_User` int(2) NOT NULL,
  `Ticket_Type` varchar(30) NOT NULL,
  `id_Issue` int(2) NOT NULL,
  `Create_Date` date NOT NULL DEFAULT current_timestamp(),
  `Expense_Date` date NOT NULL DEFAULT current_timestamp(),
  `Amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tickets`
--

INSERT INTO `tickets` (`id_Tickets`, `id_User`, `Ticket_Type`, `id_Issue`, `Create_Date`, `Expense_Date`, `Amount`) VALUES
(1, 10, '', 0, '2021-12-14', '2021-12-15', '5.5'),
(2, 11, 'TT', 0, '2021-12-14', '2021-11-29', '10.97'),
(3, 10, 'TT', 0, '2021-12-14', '2021-12-16', '60.7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets_state`
--

DROP TABLE IF EXISTS `tickets_state`;
CREATE TABLE `tickets_state` (
  `id_Ticket_State` int(2) NOT NULL,
  `Ticket_State` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets_type`
--

DROP TABLE IF EXISTS `tickets_type`;
CREATE TABLE `tickets_type` (
  `id_Ticket_Type` int(2) NOT NULL,
  `Ticket_Type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id_user` int(2) NOT NULL,
  `NIE` varchar(9) NOT NULL DEFAULT 'Unique',
  `Name` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Telephone` int(9) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Roll` varchar(25) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `NIE`, `Name`, `LastName`, `Address`, `Telephone`, `Email`, `Roll`, `Password`) VALUES
(1, '11111111A', 'Maria', 'Sanchez', 'Calle Mayor 10', 911111111, 'Mari@gmail.com', 'empleado', 'mari'),
(2, '22222222B', 'Juan', 'Perez', 'Calle Tulipan 24', 912222222, 'Jojo@hotmail.es', 'empleado', 'Jojo'),
(3, '333333333', 'Diego', 'Fernandez', 'Calle Clavel 11', 913333333, 'Digma@gmail.com', 'empleado', 'digo'),
(4, '11144444A', 'Sofia', 'Valdez', 'Plaza del Oso 2', 914444444, 'sof@outlook.com', 'RRHH', 'Sole'),
(5, '22255555F', 'David', 'Galvez', 'Avda.Madrid 45', 915555555, 'davi@gmail.com', 'tecnico', 'bravo'),
(6, 'Unique', 'testname', '', '', 0, '', '', 'testpassword'),
(10, '01234567', 'cwtc', '', '', 0, '', '', 'cwtc'),
(11, '010101010', 'Efi', '', '', 0, '', '', 'Efi'),
(12, '020202020', 'Mari', '', '', 0, '', '', 'Maria'),
(13, '030303', 'test3', '', '', 0, '', '', 'test3'),
(14, '040404', 'test4', '', '', 0, '', '', 'test4'),
(15, '', '', '', '', 0, '', '', ''),
(16, '050505', 'test5', '', '', 0, '', '', 'test5'),
(19, '060606', 'test6', '', '', 0, '', '', 'test6');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`id_Issue`),
  ADD UNIQUE KEY `Foreign key` (`id_Ticket`,`id_Issue_Type`,`id_Status_Type`);

--
-- Indices de la tabla `issue_type`
--
ALTER TABLE `issue_type`
  ADD PRIMARY KEY (`id_Issue_Type`);

--
-- Indices de la tabla `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id_log`),
  ADD UNIQUE KEY `Foreign key` (`id_user`);

--
-- Indices de la tabla `status_type`
--
ALTER TABLE `status_type`
  ADD PRIMARY KEY (`id_Status_Type`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id_Tickets`),
  ADD UNIQUE KEY `Foreign key` (`id_User`,`Ticket_Type`,`id_Issue`);

--
-- Indices de la tabla `tickets_state`
--
ALTER TABLE `tickets_state`
  ADD PRIMARY KEY (`id_Ticket_State`);

--
-- Indices de la tabla `tickets_type`
--
ALTER TABLE `tickets_type`
  ADD PRIMARY KEY (`id_Ticket_Type`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `DNI/NIE` (`NIE`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `issue`
--
ALTER TABLE `issue`
  MODIFY `id_Issue` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `issue_type`
--
ALTER TABLE `issue_type`
  MODIFY `id_Issue_Type` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `status_type`
--
ALTER TABLE `status_type`
  MODIFY `id_Status_Type` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id_Tickets` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tickets_state`
--
ALTER TABLE `tickets_state`
  MODIFY `id_Ticket_State` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tickets_type`
--
ALTER TABLE `tickets_type`
  MODIFY `id_Ticket_Type` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
