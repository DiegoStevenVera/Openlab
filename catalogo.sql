-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-12-2017 a las 17:53:52
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `catalogo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigoProducto` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `precio` double(4,2) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigoProducto`, `nombre`, `precio`, `imagen`, `descripcion`) VALUES
(1, 'POLO SKULL HEART', 40.00, 'atuendo3.png', 'DISEÑO QUE REPRESENTA LA PASION EL CORAZON EL AMOR  EL ORGULLO Y LA ARROGANCIA QUE SE DEBE DEJAR DE LADO EL SOL COMO JUSTICIA  Y LOGRO.'),
(2, 'POLO WILD AND FREE', 40.00, 'atuendo4.png', 'EL DISEÑO REPRESENTA EL CORAJE (LEON)LA LIBERTAD (LAS ALAS) Y LA PASION POR LA VIDA (E CORAZON ) ASI COMO LAS DIFICULTADES Y RETOS QUE NOS IMPONE REPRESENTADAS EN LAS ESPINAS'),
(3, 'POLO MACHINE BEAR', 40.00, 'atuendo1.png', 'DISEÑO QUE REPRESENTA LA SABIDURIA QUE ADQUIRIMOS DURANTE LA VIDA LA IRRACIONALIDAD IGUALDAD EN EL CRANEO EL ESCUDO LA LUCHA QUE DEBEMOS TENER Y LOS LAURELES EL EXITO EN NUESTROS ESFUERZOS.'),
(4, 'POLO SKULL WINGS', 40.00, 'atuendo2.png', 'DISEÑO QUE REPRESENTA LA LIBERTAD EN LAS ALAS LO SALVAJE EN EL BUITRE LA IGUALDAD EN EL CRANEO LA REBELDIA QUE UNO DEBE TENER EN LA VIDA.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigoProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `codigoProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
