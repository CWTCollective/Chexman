-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2021 a las 19:49:12
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
  `Timestamp` date NOT NULL,
  `Action` int(11) NOT NULL,
  `data` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `logs`
--

INSERT INTO `logs` (`id_log`, `id_user`, `Timestamp`, `Action`, `data`) VALUES
(1, 10, '2021-12-15', 1, ''),
(2, 20, '2021-12-15', 1, ''),
(9, 10, '2021-12-15', 1, ''),
(10, 10, '2021-12-15', 3, 'SELECT id_Tickets, id_User , Ticket_Type, Create_Date, Expense_Date, Amount\r\n    FROM  tickets\r\n    WHERE id_User=10'),
(11, 10, '2021-12-15', 1, ''),
(12, 10, '2021-12-15', 1, ''),
(13, 10, '2021-12-15', 1, ''),
(14, 10, '2021-12-15', 1, ''),
(15, 10, '2021-12-15', 1, ''),
(16, 10, '2021-12-15', 1, ''),
(17, 10, '2021-12-15', 3, 'INSERT INTO users (Name, NIE , Password) VALUES (\'test9\', \'090909\', \'test9\')'),
(18, 10, '2021-12-15', 1, ''),
(19, 10, '2021-12-15', 1, ''),
(20, 10, '2021-12-15', 1, ''),
(21, 10, '2021-12-15', 1, ''),
(22, 10, '2021-12-15', 3, 'INSERT INTO users (Name, NIE , Password) \r\n    VALUES (test13, 131313, cwtc)'),
(23, 10, '2021-12-15', 1, ''),
(24, 10, '2021-12-15', 1, ''),
(25, 10, '2021-12-15', 3, 'INSERT INTO users (Name, NIE , Password) \r\n    VALUES (test13, asfasf, cwtc)'),
(26, 10, '2021-12-15', 1, ''),
(27, 15, '2021-12-15', 1, ''),
(28, 15, '2021-12-15', 3, 'INSERT INTO users (Name, NIE , Password) \r\n    VALUES (test16, 161616, test16)'),
(29, 15, '2021-12-15', 1, ''),
(30, 32, '2021-12-15', 1, ''),
(31, 32, '2021-12-15', 3, 'INSERT INTO tickets (id_User , Ticket_Type, Create_Date, Expense_Date, Amount) \r\n    VALUES (32, B, 2021-12-15, 2021-12-03, 56.2)'),
(32, 15, '2021-12-15', 1, ''),
(33, 15, '2021-12-15', 3, 'INSERT INTO tickets (id_User , Ticket_Type, Create_Date, Expense_Date, Amount) \r\n    VALUES (15, L, 2021-12-15, 2021-12-04, 56)'),
(34, 15, '2021-12-15', 1, ''),
(35, 15, '2021-12-15', 3, 'INSERT INTO tickets (id_User , Ticket_Type, Create_Date, Expense_Date, Amount) \r\n    VALUES (15, TT, 2021-12-15, 2021-12-04, 103.45)'),
(36, 15, '2021-12-15', 1, ''),
(37, 15, '2021-12-15', 3, 'SELECT id_Tickets, id_User , Ticket_Type, Create_Date, Expense_Date, Amount\r\n    FROM  tickets\r\n    WHERE id_User=15'),
(38, 15, '2021-12-15', 1, ''),
(39, 15, '2021-12-15', 3, 'SELECT id_Tickets, id_User , Ticket_Type, Create_Date, Expense_Date, Amount\r\n    FROM  tickets\r\n    WHERE id_User=15'),
(40, 15, '2021-12-15', 1, ''),
(41, 15, '2021-12-15', 3, 'INSERT INTO tickets (id_User , Ticket_Type, Create_Date, Expense_Date, Amount) \r\n    VALUES (15, L, 2021-12-15, 2021-12-03, 10)'),
(42, 15, '2021-12-15', 1, ''),
(43, 15, '2021-12-15', 3, 'SELECT id_Tickets, id_User , Ticket_Type, Create_Date, Expense_Date, Amount\r\n    FROM  tickets\r\n    WHERE id_User=15'),
(44, 15, '2021-12-15', 1, ''),
(45, 10, '2021-12-15', 1, ''),
(46, 10, '2021-12-15', 1, ''),
(47, 10, '2021-12-15', 3, 'INSERT INTO users (Name, NIE , Password) \r\n    VALUES (test16, 1616, test16)'),
(48, 10, '2021-12-15', 3, 'INSERT INTO tickets (id_User , Ticket_Type, Create_Date, Expense_Date, Amount) \r\n    VALUES (10, TB, 2021-12-15, 2021-12-03, 65)'),
(49, 10, '2021-12-15', 3, 'SELECT id_Tickets, id_User , Ticket_Type, Create_Date, Expense_Date, Amount\r\n    FROM  tickets\r\n    WHERE id_User=10'),
(50, 10, '2021-12-15', 3, 'SELECT id_Tickets, id_User , Ticket_Type, Create_Date, Expense_Date, Amount\r\n    FROM  tickets\r\n    WHERE id_User=10'),
(51, 10, '2021-12-15', 1, ''),
(52, 10, '2021-12-15', 1, ''),
(53, 10, '2021-12-15', 1, ''),
(54, 10, '2021-12-15', 1, ''),
(55, 10, '2021-12-15', 1, ''),
(56, 15, '2021-12-15', 1, ''),
(57, 1, '2021-12-15', 1, ''),
(58, 1, '2021-12-15', 1, ''),
(59, 1, '2021-12-15', 1, ''),
(60, 1, '2021-12-15', 1, ''),
(61, 1, '2021-12-15', 3, 'INSERT INTO users (Login, NIE , Password, Role) \r\n    VALUES (test1, 01010101, test1, 0)'),
(62, 1, '2021-12-15', 3, 'INSERT INTO tickets (id_User , Ticket_Type, Create_Date, Expense_Date, Amount) \r\n    VALUES (1, TM, 2021-12-15, 2021-12-07, 18)'),
(63, 1, '2021-12-15', 3, 'SELECT id_Tickets, id_User , Ticket_Type, Create_Date, Expense_Date, Amount\r\n    FROM  tickets\r\n    WHERE id_User=1'),
(64, 1, '2021-12-15', 1, ''),
(65, 1, '2021-12-15', 3, 'INSERT INTO users (Login, NIE , Password, Role) \r\n    VALUES (test2, 020202, test2, 0)'),
(66, 1, '2021-12-15', 1, ''),
(67, 1, '2021-12-15', 1, ''),
(68, 1, '2021-12-15', 1, ''),
(69, 1, '2021-12-15', 1, ''),
(70, 1, '2021-12-15', 1, ''),
(71, 1, '2021-12-15', 1, ''),
(72, 34, '2021-12-15', 1, ''),
(73, 34, '2021-12-15', 1, ''),
(74, 34, '2021-12-15', 3, 'INSERT INTO users (Login, NIE , Password, Role) \r\n    VALUES (test5, 05050, test5, 1)');

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
(20, 10, 'TT', 0, '2021-12-15', '2021-12-03', '88.7'),
(21, 10, 'TT', 0, '2021-12-15', '2021-12-03', '88.7'),
(22, 10, 'L', 0, '2021-12-15', '2021-12-03', '30'),
(23, 10, 'L', 0, '2021-12-15', '2021-12-06', '30'),
(24, 20, 'B', 0, '2021-12-15', '2021-12-06', '5.8'),
(25, 20, 'L', 0, '2021-12-15', '2021-12-06', '12'),
(26, 20, 'TM', 0, '2021-12-15', '2021-12-06', '4.3'),
(27, 32, 'B', 0, '2021-12-15', '2021-12-03', '56.2'),
(28, 15, 'L', 0, '2021-12-15', '2021-12-04', '56'),
(29, 15, 'TT', 0, '2021-12-15', '2021-12-04', '103.45'),
(30, 15, 'L', 0, '2021-12-15', '2021-12-03', '10'),
(31, 10, 'TB', 0, '2021-12-15', '2021-12-03', '65'),
(32, 1, 'TM', 0, '2021-12-15', '2021-12-07', '18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id_user` int(2) NOT NULL,
  `NIE` varchar(9) NOT NULL DEFAULT 'Unique',
  `Name` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Telephone` int(9) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Role` int(11) NOT NULL,
  `Login` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `NIE`, `Name`, `LastName`, `Address`, `Telephone`, `Email`, `Role`, `Login`, `Password`) VALUES
(1, '11111111A', 'Maria', 'Sanchez', 'Calle Mayor 10', 911111111, 'Mari@gmail.com', 0, 'Maria', 'Maria'),
(2, '22222222B', 'Juan', 'Perez', 'Calle Tulipan 24', 912222222, 'Jojo@hotmail.es', 0, 'Juan', 'Juan'),
(3, '333333333', 'Diego', 'Fernandez', 'Calle Clavel 11', 913333333, 'Digma@gmail.com', 0, 'login1', 'login1'),
(4, '11144444A', 'Sofia', 'Valdez', 'Plaza del Oso 2', 914444444, 'sof@outlook.com', 0, 'login3', 'login3'),
(5, '22255555F', 'David', 'Galvez', 'Avda.Madrid 45', 915555555, 'davi@gmail.com', 0, 'login4', 'login4'),
(34, '01010101', NULL, '', '', 0, '', 1, 'test1', 'test1'),
(35, '020202', NULL, '', '', 0, '', 0, 'test2', 'test2'),
(36, '05050', NULL, '', '', 0, '', 1, 'test5', 'test5');

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
  ADD PRIMARY KEY (`id_log`);

--
-- Indices de la tabla `status_type`
--
ALTER TABLE `status_type`
  ADD PRIMARY KEY (`id_Status_Type`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id_Tickets`);

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
-- AUTO_INCREMENT de la tabla `logs`
--
ALTER TABLE `logs`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `status_type`
--
ALTER TABLE `status_type`
  MODIFY `id_Status_Type` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id_Tickets` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
