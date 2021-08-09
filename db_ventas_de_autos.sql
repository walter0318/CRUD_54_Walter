-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-08-2021 a las 22:32:28
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_ventas_de_autos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_autos`
--

CREATE TABLE `tbl_autos` (
  `ID_AUTO` int(11) NOT NULL,
  `MODELO` varchar(50) NOT NULL,
  `COLOR` varchar(50) NOT NULL,
  `AÑO` int(60) NOT NULL,
  `ID_CLIENTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_autos`
--

INSERT INTO `tbl_autos` (`ID_AUTO`, `MODELO`, `COLOR`, `AÑO`, `ID_CLIENTE`) VALUES
(1, 'VERSA SEDÁN', 'PLATEADO', 2014, 1),
(2, 'GASHQAI', 'AZUL', 2015, 2),
(3, 'PATROL', 'PLATEADO', 2015, 3),
(4, 'ARTEON', 'AZUL', 2021, 4),
(5, 'URVAN', 'BLANCO', 2016, 5),
(6, 'ECOSPORT', 'DORADO', 2019, 4),
(7, 'FRONTIER', 'ROJO', 2017, 3),
(8, 'GALAXI', 'AZUL', 2020, 2),
(9, 'ACURIS', 'ROJO VINO', 2021, 4),
(10, 'JUKE', 'AMARILLO', 2021, 7),
(11, 'LEAF', 'BLANCO', 2019, 6),
(14, 'Navara', 'Naranja', 2021, 1),
(15, 'Navara', 'Naranja', 2021, 1),
(16, 'Navara', 'Rojo', 2021, 2),
(17, 'Navara', 'Gris', 2021, 2),
(18, 'Navara', 'Gris', 2021, 2),
(19, 'Galaxi', 'Naranja', 2021, 4),
(20, 'GALAXI', 'Naranja', 2021, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clientes`
--

CREATE TABLE `tbl_clientes` (
  `ID_CLIENTE` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDO` varchar(50) NOT NULL,
  `N DE IDENTIDAD` varchar(100) NOT NULL,
  `RTN` varchar(100) NOT NULL,
  `TELEFONO` varchar(50) NOT NULL,
  `ID_DIRECCION` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_clientes`
--

INSERT INTO `tbl_clientes` (`ID_CLIENTE`, `NOMBRE`, `APELLIDO`, `N DE IDENTIDAD`, `RTN`, `TELEFONO`, `ID_DIRECCION`) VALUES
(1, 'WALTER', 'CRUZ', '0307-1980-00133', '03071980001338', '32658795', 2),
(2, 'CARLOS', 'FERNANDEZ', '0309-2021-00117', '030720210001198', '32897548', 2),
(3, 'JOSE', 'IZAGUIRRE', '0307-1997-00125', '03071997001256', '32458725', 10),
(4, 'CARLOS ', 'PERDOMO', '0307-2000-01235', '03072000012359', '98567841', 5),
(5, 'KEVIN', 'SORTO', '0307-1999-00255', '03071999002551', '35412511', 2),
(6, 'BENITO', 'GALEAS', '0307-1998-00332', '03071998003324', '96782545', 9),
(7, 'PEDRO ', 'SORTO', '0305-1993-00426', '0351993004265', '99568745', 6),
(8, 'CARLOS', 'PORTILLO', '0307-1989-01237', '03071989012374', '98564572', 8),
(9, 'MICHELLE', 'BENITES', '0307-1989-02413', '03071989024135', '98217568', 5),
(10, 'BRYAN', 'CRUZ', '0307-1999-03649', '03071999036497', '97546821', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_direcciones`
--

CREATE TABLE `tbl_direcciones` (
  `ID_DIRECCION` int(11) NOT NULL,
  `DIRECCION` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_direcciones`
--

INSERT INTO `tbl_direcciones` (`ID_DIRECCION`, `DIRECCION`) VALUES
(1, 'BARRIO ARRIBA'),
(2, 'BARRIO EL CENTRO'),
(3, 'BARRIO ABAJO'),
(4, 'BARRIO BRISAS DE ALTAMIRA'),
(5, 'BARRIO SANTA LUCÍA'),
(6, 'BARRIO SAN RAMÓN'),
(7, 'COLONIA ESCOTO'),
(8, 'COLONIA EL SAUCE'),
(9, 'COLONIA SAN MIGUEL 1'),
(10, 'COLONIA SAN MIGUEL 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_facturas`
--

CREATE TABLE `tbl_facturas` (
  `ID_FACTURA` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `ID_DIRECCION` int(11) NOT NULL,
  `ARTICULOS` varchar(200) NOT NULL,
  `PRECIO UNITARIO` varchar(50) NOT NULL,
  `ISV` varchar(50) NOT NULL,
  `TOTAL` varchar(50) NOT NULL,
  `ID_CLIENTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_facturas`
--

INSERT INTO `tbl_facturas` (`ID_FACTURA`, `FECHA`, `ID_DIRECCION`, `ARTICULOS`, `PRECIO UNITARIO`, `ISV`, `TOTAL`, `ID_CLIENTE`) VALUES
(1, '2021-05-04', 2, 'NISSAN, VERSA', 'L.  142,000.00', '15%', 'L. 163,300.00', 1),
(2, '2021-05-21', 2, 'NISSAN QASHQAI', 'L. 385,000.00', '15%', 'L. 442,750.00', 2),
(3, '2021-05-08', 10, 'NISSAN PATROL', 'L. 310,000.00', '15%', 'L. 356,500.00', 3),
(4, '2021-05-02', 5, 'NISSAN FRONTIER', 'L. 610,000.00', '15%', 'L. 701,000.00', 4),
(5, '2021-05-16', 2, 'NISSAN URVAN', 'L. 290,000.00', '15%', 'L. 33,500.00', 5),
(6, '2021-05-20', 9, 'NISSAN, KICKS', '', '15%', '', 2),
(7, '2021-05-29', 6, 'NISSAN, FRONTIER', '', '15%', '', 7),
(8, '2021-05-28', 8, 'FORD, GALAXI', '', '15%', '', 6),
(9, '2021-05-30', 5, 'TOYOTA, ACURIS', '', '15%', '', 4),
(10, '2021-05-31', 6, 'NISSAN, JUKE', '', '15%', '', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_modelos`
--

CREATE TABLE `tbl_modelos` (
  `ID_MODELO` int(11) NOT NULL,
  `MODELO` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_modelos`
--

INSERT INTO `tbl_modelos` (`ID_MODELO`, `MODELO`) VALUES
(1, 'NISSAN NAVARA'),
(2, 'NISSAN GALAXI'),
(3, 'NISSAN VERSA SEDAN'),
(4, 'NISSNAN JUKE'),
(5, 'NISSAN LEAF'),
(6, 'NISSAN MICRA'),
(7, 'NISSAN X-TRAIL'),
(8, 'NISSAN QASHQAI'),
(9, 'NISSAN ACURIS'),
(10, 'NISSAN GT-R'),
(11, 'NISSAN 370Z'),
(12, 'NISSAN ALTIMA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_registros`
--

CREATE TABLE `tbl_registros` (
  `ID_REGISTRO` int(11) NOT NULL,
  `CORREO` varchar(100) NOT NULL,
  `CLAVE` varchar(50) NOT NULL,
  `AÑOS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_registros`
--

INSERT INTO `tbl_registros` (`ID_REGISTRO`, `CORREO`, `CLAVE`, `AÑOS`) VALUES
(1, 'waltercruz@gmail.com', 'everest', 18),
(2, 'carlosfer@gmail.com', '12398/7', 50),
(3, 'joseizaguirre64gmail.com', '87d446/d4', 24),
(4, 'torresperdomo@gmail.com', 'perdomo1547', 21),
(5, 'kevinsorto64gmail.com', 'sortokevin17', 22),
(6, 'galeasbenito15@gmail.com', 'beniti1578', 23),
(7, 'pedrosorto45@gmail.com', '123879F45', 28),
(8, 'carlosportillo@gmail.com', 'portillo1236', 32),
(9, 'michellebenites15@gmail.com', 'benites/265', 32),
(10, 'bryancruz45@gmail.com', 'cruz4527', 22),
(11, 'Walter@gmail.com', 'chirinos', 18),
(12, 'Waltercruz@gmail.com', 'chirinos22', 25);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_autos`
--
ALTER TABLE `tbl_autos`
  ADD PRIMARY KEY (`ID_AUTO`),
  ADD KEY `FK_CLIENTES_AUTOS` (`ID_CLIENTE`);

--
-- Indices de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD PRIMARY KEY (`ID_CLIENTE`),
  ADD KEY `FK_DIRECCIONES_CLIENTES` (`ID_DIRECCION`);

--
-- Indices de la tabla `tbl_direcciones`
--
ALTER TABLE `tbl_direcciones`
  ADD PRIMARY KEY (`ID_DIRECCION`);

--
-- Indices de la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  ADD PRIMARY KEY (`ID_FACTURA`),
  ADD KEY `FK_DIRECCIONES_FACTURAS` (`ID_DIRECCION`),
  ADD KEY `FK_CLIENTES_DIRECCIONES` (`ID_CLIENTE`);

--
-- Indices de la tabla `tbl_modelos`
--
ALTER TABLE `tbl_modelos`
  ADD PRIMARY KEY (`ID_MODELO`);

--
-- Indices de la tabla `tbl_registros`
--
ALTER TABLE `tbl_registros`
  ADD PRIMARY KEY (`ID_REGISTRO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_autos`
--
ALTER TABLE `tbl_autos`
  MODIFY `ID_AUTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  MODIFY `ID_CLIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_direcciones`
--
ALTER TABLE `tbl_direcciones`
  MODIFY `ID_DIRECCION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  MODIFY `ID_FACTURA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_modelos`
--
ALTER TABLE `tbl_modelos`
  MODIFY `ID_MODELO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tbl_registros`
--
ALTER TABLE `tbl_registros`
  MODIFY `ID_REGISTRO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_autos`
--
ALTER TABLE `tbl_autos`
  ADD CONSTRAINT `FK_CLIENTES_AUTOS` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `tbl_clientes` (`ID_CLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD CONSTRAINT `FK_DIRECCIONES_CLIENTES` FOREIGN KEY (`ID_DIRECCION`) REFERENCES `tbl_direcciones` (`ID_DIRECCION`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  ADD CONSTRAINT `FK_CLIENTES_FACTURAS` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `tbl_clientes` (`ID_CLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DIRECCIONES_FACTURAS` FOREIGN KEY (`ID_DIRECCION`) REFERENCES `tbl_direcciones` (`ID_DIRECCION`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
