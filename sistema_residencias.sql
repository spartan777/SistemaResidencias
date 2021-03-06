-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2016 a las 06:27:24
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `sistema_residencias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE IF NOT EXISTS `alumnos` (
  `numero_control` varchar(15) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `carrera` varchar(15) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `seguridad_social` varchar(10) NOT NULL,
  `especifique` varchar(30) NOT NULL,
  `numero_social` varchar(15) NOT NULL,
  PRIMARY KEY (`numero_control`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`numero_control`, `nombre`, `apellido_paterno`, `apellido_materno`, `carrera`, `domicilio`, `email`, `ciudad`, `telefono`, `seguridad_social`, `especifique`, `numero_social`) VALUES
('114q0254', 'sa', 'sa', 'Sa', 'contador', 'das', 'das@dsa.cd', 'sd', 'fsd', 'ISSTE', '0', 'fd'),
('115q0254', 'das', 'dsa', 'das', 'sistemas', 'ds', 'as@fd.co', 'fds', 'fds', 'ISSTE', '0', 'fds'),
('115q0255', 'das', 'dsa', 'dsa', 'sistemas', 'asd', 'da@d.c', 'das', 'dsa', 'ISSTE', '0', 'das'),
('dsa', '115q0254', 'lk', 'l', 'contador', 'das', 'dsa@sds.gfg', 'das', 'fds', 'ISSTE', '0', 'dfs'),
('fs', '115q0254', 'dssak', 'os', 'informatica', 'fds', 'as@d.fd', 'd', 'fd', 'ISSTE', '0', 'fd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dictamen`
--

CREATE TABLE IF NOT EXISTS `dictamen` (
  `id_dictamen` int(11) NOT NULL AUTO_INCREMENT,
  `clave_acceso` varchar(15) NOT NULL,
  `nombre_archivo` varchar(50) NOT NULL,
  `hora_fecha` timestamp NOT NULL,
  PRIMARY KEY (`id_dictamen`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `dictamen`
--

INSERT INTO `dictamen` (`id_dictamen`, `clave_acceso`, `nombre_archivo`, `hora_fecha`) VALUES
(9, 'jefe125', 'Dictamen_sistemas.docx', '2016-11-02 04:49:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `no_control` varchar(15) NOT NULL,
  `nombre_empresa` varchar(50) NOT NULL,
  `giro_ramo_sector` varchar(12) NOT NULL,
  `RFC` varchar(15) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `colonia` varchar(30) NOT NULL,
  `codigo_postal` int(5) NOT NULL,
  `fax` varchar(10) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `mision_empresa` text NOT NULL,
  `nombre_titular` varchar(50) NOT NULL,
  `puesto_titular` varchar(30) NOT NULL,
  `asesor_externo` varchar(50) NOT NULL,
  `puesto_asesor` varchar(30) NOT NULL,
  `nombre_acuerdo_trabajo` varchar(50) NOT NULL,
  `puesto_acuerdo_trabajo` varchar(30) NOT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `no_control`, `nombre_empresa`, `giro_ramo_sector`, `RFC`, `domicilio`, `colonia`, `codigo_postal`, `fax`, `ciudad`, `telefono`, `mision_empresa`, `nombre_titular`, `puesto_titular`, `asesor_externo`, `puesto_asesor`, `nombre_acuerdo_trabajo`, `puesto_acuerdo_trabajo`) VALUES
(1, '115q0254', 'imss', 'Público', '3221', 'adsdasdas', 'dasdas', 13243, 'vxcvxcvcxv', 'asgfgfd', 'bvcbv', 'xvckfshjjflkzhc', 'kdshugghda', 'dasdas', 'zxczxc', 'czxczx', 'cczx', 'cxzczxcxz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefe_carrera`
--

CREATE TABLE IF NOT EXISTS `jefe_carrera` (
  `clave_acceso` varchar(15) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `carrera` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  PRIMARY KEY (`clave_acceso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `jefe_carrera`
--

INSERT INTO `jefe_carrera` (`clave_acceso`, `nombre`, `apellido_paterno`, `apellido_materno`, `carrera`, `email`, `telefono`) VALUES
('jefe125', 'Javier', 'Castro', 'Lagunes', 'sistemas', 'fsidh@das.co', '36994');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE IF NOT EXISTS `proyecto` (
  `id_proyecto` varchar(25) NOT NULL,
  `no_control` varchar(10) NOT NULL,
  `lugar` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `jefe_division` varchar(50) NOT NULL,
  `nombre_proyecto` varchar(50) NOT NULL,
  `opcion_proyecto` varchar(20) NOT NULL,
  `periodo` varchar(25) NOT NULL,
  `numero_residentes` int(2) NOT NULL,
  PRIMARY KEY (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`id_proyecto`, `no_control`, `lugar`, `fecha`, `jefe_division`, `nombre_proyecto`, `opcion_proyecto`, `periodo`, `numero_residentes`) VALUES
('', '115q0254', 'Cosamaloapan', '0000-00-00', 'Eleuteria', 'Sistema Residencias', 'Banco de Proyec', 'Agosto - Diciembre', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `no_control` varchar(20) NOT NULL,
  `pass_usuario` varchar(50) NOT NULL,
  `tipo_usuario` varchar(15) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `no_control`, `pass_usuario`, `tipo_usuario`) VALUES
(2, '115q0253', '21232f297a57a5a743894a0e4a801fc3', 'Alumno'),
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin'),
(4, '115q0254', '21232f297a57a5a743894a0e4a801fc3', 'Alumno'),
(5, 'jefe125', '21232f297a57a5a743894a0e4a801fc3', 'Jefe'),
(6, 'fs', '21232f297a57a5a743894a0e4a801fc3', 'Alumno'),
(7, 'dsa', '523af537946b79c4f8369ed39ba78605', 'Alumno'),
(8, '114q0254', '21232f297a57a5a743894a0e4a801fc3', 'Alumno'),
(9, '115q0255', 'c12e01f2a13ff5587e1e9e4aedb8242d', 'Alumno');
