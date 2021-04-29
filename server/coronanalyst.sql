-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2021 a las 02:06:51
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `coronanalyst`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `idCuenta` int(11) NOT NULL,
  `idTipo_De_Cuenta` int(11) NOT NULL,
  `Usuario` varchar(45) NOT NULL,
  `Contraseña` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`idCuenta`, `idTipo_De_Cuenta`, `Usuario`, `Contraseña`) VALUES
(1, 3, 'adm', '$2b$10$jvZWD7TqKJs.kg3j1V7GKulqRjJDMnRTZhYQjPiOdHBcOzukGQroi'),
(2, 2, 'cli', '$2b$10$0tbc23ZIQiW.akxQT264w.hGbfd9PHRtbtJ8/WznXrbq9mJTkeeO6'),
(3, 1, 'us', '$2b$10$b66Zdfo7pgc8dJDCzyejt.IbY/YYZ60J0byMRaE6UdLVy2WQwk2fK'),
(92, 1, 'jesus', '$2b$10$9OMzul3s9jjz7gQl4hzu8uPACpO2DPbttZyUxLaIoQP32yNAOlyQi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_personales`
--

CREATE TABLE `datos_personales` (
  `idDatos_Personales` int(11) NOT NULL,
  `idCuenta` int(11) NOT NULL,
  `Genero` varchar(45) NOT NULL,
  `Edad` varchar(45) NOT NULL,
  `Estado_Civil` varchar(45) NOT NULL,
  `Nivel_estudios` varchar(45) NOT NULL,
  `Ocupacion` varchar(45) NOT NULL,
  `Ingreso_mensual` varchar(45) NOT NULL,
  `Localidad` varchar(45) NOT NULL,
  `IP` varchar(45) DEFAULT NULL,
  `Dispositivo` varchar(45) DEFAULT NULL,
  `SO` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE `opciones` (
  `idOpciones` int(11) NOT NULL,
  `idPreguntas` int(11) NOT NULL,
  `Opcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`idOpciones`, `idPreguntas`, `Opcion`) VALUES
(101, 1, 'M�s de 10 veces al mes'),
(102, 1, '6 a 10 veces al mes'),
(103, 1, '1 a 5 veces al mes.'),
(104, 1, '1 vez cada varios meses'),
(105, 1, 'No realizaba compras en l�nea'),
(201, 2, 'Mercado Libre'),
(202, 2, 'Amazon'),
(203, 2, 'Facebook Marketplace'),
(204, 2, 'Alibaba / Aliexpress'),
(205, 2, 'eBay'),
(206, 2, 'E-shop propia de cada marca (Nike, Supreme, Walmart, Liverpool, etc.)'),
(207, 2, 'Otros'),
(208, 2, 'No realizaba compras en l��nea'),
(301, 3, 'Tarjeta de cr�dito'),
(302, 3, 'Tarjeta de d�bito'),
(303, 3, 'Paypal'),
(304, 3, 'Mercado Pago'),
(305, 3, 'Efectivo'),
(306, 3, 'Transferencia electr�nica'),
(307, 3, 'Dep�sito en tiendas de conveniencia (Oxxo, 7Eleven, etc.)'),
(308, 3, 'Otro'),
(309, 3, 'No realizaba compras en l�nea'),
(401, 4, 'Ropa'),
(402, 4, 'Comida a domicilio (Rappi, UberEats, etc.)'),
(403, 4, 'Super a domicilio (víveres)'),
(404, 4, 'Muebles y/o electrodomésticos'),
(405, 4, 'Coleccionables'),
(406, 4, 'Libros (f��sicos o electr�nicos)'),
(407, 4, 'Computadoras y/o electr�nicos'),
(408, 4, 'Herramientas y ferreter�a'),
(409, 4, 'Entretenimiento (m�sica, tv, videojuegos, juguetes, etc.)'),
(410, 4, 'Programas o aplicaciones'),
(411, 4, 'Reservaciones y boletos'),
(412, 4, 'Artículos de higiene'),
(413, 4, 'Artí­culos deportivos'),
(414, 4, 'No realizaba compras en l�nea'),
(415, 4, 'Otros'),
(501, 5, '7 horas o m�s al d��a'),
(502, 5, '6 a 2 horas al d�a'),
(503, 5, '6 a 2 horas a la semana'),
(504, 5, 'Menos de dos horas a la semana'),
(601, 6, 'M�s de 10 veces por mes'),
(602, 6, '10 a 6 veces al mes'),
(603, 6, '5 a 1 vez al mes'),
(604, 6, '1 vez cada varios meses'),
(605, 6, 'No realizo compras en l��nea'),
(701, 7, 'Mercado Libre'),
(702, 7, 'Amazon'),
(703, 7, 'Facebook Marketplace'),
(704, 7, 'Alibaba / Aliexpress'),
(705, 7, 'eBay'),
(706, 7, 'E-shop propia de cada marca (Nike, Supreme, Walmart, Liverpool, etc.)'),
(707, 7, 'Otros'),
(708, 7, 'No realizo compras en l�nea'),
(801, 8, 'Tarjeta de cr�dito'),
(802, 8, 'Tarjeta de d�bito'),
(803, 8, 'Paypal'),
(804, 8, 'Mercado Pago'),
(805, 8, 'Efectivo'),
(806, 8, 'Transferencia Electr�nica'),
(807, 8, 'Dep�sito en tiendas de conveniencia (Oxxo, 7Eleven, etc.)'),
(808, 8, 'Otro'),
(809, 8, 'No realizo compras en l�nea'),
(901, 9, 'Ropa'),
(902, 9, 'Comida a domicilio (Rappi, UberEats, etc.)'),
(903, 9, 'Super a domicilio (v�veres)'),
(904, 9, 'Muebles y/o electrodomésticos'),
(905, 9, 'Coleccionables'),
(906, 9, 'Libros (f��sicos o electr�nicos)'),
(907, 9, 'Computadoras y/o electr�nicos'),
(908, 9, 'Herramientas y ferreter��a'),
(909, 9, 'Entretenimiento (m�sica, tv, videojuegos, juguetes, etc.)'),
(910, 9, 'Programas o aplicaciones'),
(911, 9, 'Reservaciones y boletos'),
(912, 9, 'Artículos de higiene'),
(913, 9, 'Artículos deportivos'),
(914, 9, 'No realizaba compras en l�nea'),
(915, 9, 'Otros'),
(1001, 10, '7 horas o m�s al d�a'),
(1002, 10, '6 a 2 horas al d��a'),
(1003, 10, '6 a 2 horas a la semana'),
(1004, 10, 'Menos de 2 horas a la semana'),
(1101, 11, 'Menos de 1,000'),
(1102, 11, '1,000 - 2,500'),
(1103, 11, '2,500 - 5,000'),
(1104, 11, '5,000 - 7,500'),
(1105, 11, '7,500 - 10,000'),
(1106, 11, 'M�s de 10,000'),
(1201, 12, 'F�sico'),
(1202, 12, 'L�nea'),
(1301, 13, 'S�'),
(1302, 13, 'No'),
(1401, 14, 'Diabetes'),
(1402, 14, 'Hipertensi�n'),
(1403, 14, 'Obesidad'),
(1404, 14, 'Asma'),
(1405, 14, 'Condiciones cardiacas'),
(1406, 14, 'Inmunodeficiencia'),
(1407, 14, 'Hepatitis'),
(1408, 14, 'Otros no listados'),
(1409, 14, 'Ninguna'),
(1501, 15, 'Ansiedad'),
(1502, 15, 'Estr�s'),
(1503, 15, 'Depresi�n'),
(1504, 15, 'D�ficit de atenci�n'),
(1505, 15, 'Baja de rendimiento laboral/acad�mico'),
(1506, 15, 'Baja autoestima'),
(1507, 15, 'Otros no enlistados'),
(1508, 15, 'No me he sentido afectado'),
(1601, 16, 'Aument�'),
(1602, 16, 'Permaneci� igual que antes'),
(1603, 16, 'Disminuy�');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `idPreguntas` int(11) NOT NULL,
  `Pregunta` varchar(140) NOT NULL,
  `Tipo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`idPreguntas`, `Pregunta`, `Tipo`) VALUES
(1, '�Qu� tan seguido compraba en l�nea?', 'Radio'),
(2, '�Qu� plataformas utilizaba para realizar compras en l��nea?', 'Checkbox'),
(3, '�Qu� m�todos de pago utilizaba m�s para realizar sus compras en l�nea?', 'Checkbox'),
(4, '�De cu�les de las siguientes categor��as realizaba compras?', 'Checkbox'),
(5, '�Cu�nto tiempo estima que se encontraba usando la computadora para actividades diarias?', 'Radio'),
(6, '�Qu� tan seguido compra en l�nea ahora?', 'Radio'),
(7, '�Qu� plataformas utiliza para realizar compras en l��nea?', 'Checkbox'),
(8, '�Qu� m�todo de pago utiliza usted para sus compras en internet?', 'Checkbox'),
(9, '�De cu�les de las siguientes categor�as ha realizado compras?', 'Checkbox'),
(10, '�Cu�nto tiempo estima que usa la computadora para actividades diarias? ', 'Radio'),
(11, '�En promedio cu+anto dinero estima que gasta en compras en l��nea al mes?', 'Radio'),
(12, '�Actualmente compras m�s seguido en f��sico o en l�nea?', 'Radio'),
(13, '�Desde que empez� la pandemia, ha presentado s��ntomas relacionados al COVID-19?', 'Radio'),
(14, '�Usted sufre de alguna de las siguientes condiciones m�dicas?', 'Checkbox'),
(15, '�A causa de la pandemia usted se ha sentido relacionado con algunas de las siguientes situaciones?', 'Checkbox'),
(16, 'Durante la pandemia, �c�mo ha cambiado su actividad f�sica?', 'Radio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `idRespuestas` int(11) NOT NULL,
  `fkCuenta` int(11) NOT NULL,
  `fkPreguntas` int(11) NOT NULL,
  `fkOpciones` int(11) NOT NULL,
  `Respuesta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_cuenta`
--

CREATE TABLE `tipo_de_cuenta` (
  `idTipo_De_Cuenta` int(11) NOT NULL,
  `Tipo_Cuenta` varchar(45) NOT NULL,
  `Crear_Cuenta` tinyint(4) NOT NULL,
  `Iniciar_Sesion` tinyint(4) NOT NULL,
  `Contestar_Encuesta` tinyint(4) NOT NULL,
  `Ver_Datos` tinyint(4) NOT NULL,
  `Descargar_Datos` tinyint(4) NOT NULL,
  `Ver_Datos_Cliente` tinyint(4) NOT NULL,
  `Descargar_Datos_Cliente` tinyint(4) NOT NULL,
  `Administrar_Cuentas` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_de_cuenta`
--

INSERT INTO `tipo_de_cuenta` (`idTipo_De_Cuenta`, `Tipo_Cuenta`, `Crear_Cuenta`, `Iniciar_Sesion`, `Contestar_Encuesta`, `Ver_Datos`, `Descargar_Datos`, `Ver_Datos_Cliente`, `Descargar_Datos_Cliente`, `Administrar_Cuentas`) VALUES
(1, 'user', 0, 1, 1, 1, 1, 0, 0, 0),
(2, 'client', 0, 1, 0, 1, 1, 1, 1, 0),
(3, 'admin', 1, 1, 0, 1, 1, 1, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`idCuenta`),
  ADD KEY `fk_idTipo_De_Cuenta_idx` (`idTipo_De_Cuenta`);

--
-- Indices de la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  ADD PRIMARY KEY (`idDatos_Personales`),
  ADD KEY `fk_idCuenta_idx` (`idCuenta`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD PRIMARY KEY (`idOpciones`),
  ADD KEY `fk_idPreguntas_idx` (`idPreguntas`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`idPreguntas`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`idRespuestas`),
  ADD KEY `fk_idCuenta_idx` (`fkCuenta`),
  ADD KEY `fk_idPregunta_idx` (`fkPreguntas`),
  ADD KEY `fk_idOpciones_idx` (`fkOpciones`);

--
-- Indices de la tabla `tipo_de_cuenta`
--
ALTER TABLE `tipo_de_cuenta`
  ADD PRIMARY KEY (`idTipo_De_Cuenta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  MODIFY `idCuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  MODIFY `idDatos_Personales` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
  MODIFY `idOpciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1604;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `idPreguntas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `idRespuestas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_de_cuenta`
--
ALTER TABLE `tipo_de_cuenta`
  MODIFY `idTipo_De_Cuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD CONSTRAINT `fk_idTipo_De_Cuenta` FOREIGN KEY (`idTipo_De_Cuenta`) REFERENCES `tipo_de_cuenta` (`idTipo_De_Cuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  ADD CONSTRAINT `fk_idCuenta` FOREIGN KEY (`idCuenta`) REFERENCES `cuenta` (`idCuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD CONSTRAINT `fk_idPreguntas` FOREIGN KEY (`idPreguntas`) REFERENCES `preguntas` (`idPreguntas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD CONSTRAINT `fkCuenta` FOREIGN KEY (`fkCuenta`) REFERENCES `cuenta` (`idCuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkOpciones` FOREIGN KEY (`fkOpciones`) REFERENCES `opciones` (`idOpciones`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkPregunta` FOREIGN KEY (`fkPreguntas`) REFERENCES `preguntas` (`idPreguntas`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;