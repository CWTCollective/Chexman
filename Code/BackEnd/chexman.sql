-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2021 a las 18:10:09
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

CREATE TABLE `logs` (
  `id_log` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `Timestamp_in` date NOT NULL,
  `Timestamp_out` date NOT NULL,
  `Accion` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` int(2) NOT NULL,
  `DNI/NIE` varchar(9) NOT NULL DEFAULT 'Unique',
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

INSERT INTO `users` (`id_user`, `DNI/NIE`, `Name`, `LastName`, `Address`, `Telephone`, `Email`, `Roll`, `Password`) VALUES
(1, '11111111A', 'Maria', 'Sanchez', 'Calle Mayor 10', 911111111, 'Mari@gmail.com', 'empleado', 'mari'),
(2, '22222222B', 'Juan', 'Perez', 'Calle Tulipan 24', 912222222, 'Jojo@hotmail.es', 'empleado', 'Jojo'),
(3, '333333333', 'Diego', 'Fernandez', 'Calle Clavel 11', 913333333, 'Digma@gmail.com', 'empleado', 'digo'),
(4, '11144444A', 'Sofia', 'Valdez', 'Plaza del Oso 2', 914444444, 'sof@outlook.com', 'RRHH', 'Sole'),
(5, '22255555F', 'David', 'Galvez', 'Avda.Madrid 45', 915555555, 'davi@gmail.com', 'tecnico', 'bravo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `DNI/NIE` (`DNI/NIE`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
