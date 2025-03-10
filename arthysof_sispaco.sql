-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-12-2024 a las 21:24:21
-- Versión del servidor: 10.6.18-MariaDB-cll-lve
-- Versión de PHP: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `arthysof_sispaco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acc_estrategica`
--

CREATE TABLE `acc_estrategica` (
  `idaccestr` int(11) NOT NULL,
  `accionestr` varchar(200) NOT NULL,
  `codigoaei` varchar(10) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `obj_estrategico_idobjestr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `acc_estrategica`
--

INSERT INTO `acc_estrategica` (`idaccestr`, `accionestr`, `codigoaei`, `status`, `obj_estrategico_idobjestr`) VALUES
(1, 'Programas curriculares actualizados e implementados en beneficio de los estudiantes', 'AEI.01.01', '1', 1),
(2, 'Programa de fortalecimiento de las competencias y evaluacion continua de docentes UNAJ', 'AEI.01.02', '1', 1),
(3, 'Servicios y programas de bienestar optimizados para los estudiantes universitarios', 'AEI.01.03', '1', 1),
(4, 'Programa de mantenimiento de infraestructura y equipamiento adecuados para la comunidad universitaria', 'AEI.01.04', '1', 1),
(5, 'Lineas de investigacion actualizadas para la comunidad academica cientifica', 'AEI.02.01', '1', 2),
(6, 'Fondos concursables para la investigacion implementados en la comunidad universitaria', 'AEI.02.02', '1', 2),
(9, 'Programa de investigacion formativa implementados para estudiantes de la Unaj', 'AEI.02.03', '1', 2),
(10, 'Programa de emprendimientos formativa implementados para estudiantes de la Unaj', 'AEI.02.04', '1', 2),
(11, 'Programa de responsabilidad social fortalecidos para una adecuada vinculacion con la sociedad', 'AEI.03.01', '1', 3),
(12, 'Programa de extension cultual y proyeccion socual de manera permanente para la sociedad', 'AEI.03.02', '1', 3),
(13, 'Programa de gestion ambiental implementado en la comunidad universitaria', 'AEI.03.03', '1', 3),
(14, 'Licenciamiento institucional permanente para la universidad', 'AEI.04.01', '1', 4),
(15, 'Instrumentos de gestion optimizados para la UNAJ', 'AEI.04.02', '1', 4),
(16, 'Programa permanente de fortalecimiento de capacidades dirigidos al personal Admin UNAJ', 'AEI.04.03', '1', 4),
(17, 'Autonomia universitaria promovida e implementada por la UNAJ', 'AEI.04.04', '1', 4),
(18, 'Sistema de Gestion de Calidad implementado en la UNAJ', 'AEI.04.05', '1', 4),
(19, 'Proceso de autoevaluacion implementados con fines de acreditacion', 'AEI.04.06', '1', 4),
(20, 'Gobierno Digital implementado para la comnidad universitaria', 'AEI.04.07', '1', 4),
(21, 'Programa de estimacion de riesgo de desastres implementados en la UNAJ', 'AEI.05.01', '1', 5),
(22, 'Plan de contingencia en gestion interna de riesgos de desastres implementados en la UNAJ', 'AEI.05.02', '1', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `idcodigo_act` int(11) NOT NULL,
  `nombre_act` varchar(500) NOT NULL,
  `programa_pre` varchar(45) NOT NULL,
  `codigo_pp` int(11) NOT NULL,
  `desc_act_ope` varchar(45) NOT NULL,
  `desc_cua_met` varchar(45) NOT NULL,
  `responsable` varchar(45) NOT NULL,
  `registropoi_idregistro` int(11) NOT NULL,
  `programa_pre_idprograma_pre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`idcodigo_act`, `nombre_act`, `programa_pre`, `codigo_pp`, `desc_act_ope`, `desc_cua_met`, `responsable`, `registropoi_idregistro`, `programa_pre_idprograma_pre`) VALUES
(3, 'Capacitacion Por Medio Año', 'Cumplimiento de metas de la UNAJ', 9003, 'resolucion N 143', 'totalidad docentes', 'esp.Planificador', 30, 3),
(4, 'Capacitacion Por Fin De Año', '', 0, 'bajo el cumplimiento rcco 60', 'totalidad de estudiantes', 'esp.Planificador', 30, 3),
(5, 'Dia De La Madre', 'Cumplimiento de metas de la UNAJ', 9003, 'dia de la madre', 'docentes femeninas', 'esp.Planificador', 31, 3),
(6, 'Capacitacion En BRAZIL Para Docentes', 'Cumplimiento de metas de la UNAJ', 9003, 'Docentes vayan al extrangero', '90%', 'esp.Planificador', 32, 3),
(7, 'II Feria Cientifica', 'Cumplimiento de metas de la UNAJ', 9003, 'expociciones', 'completa', 'esp.Planificador', 32, 3),
(8, 'Capacitacion Por Veintiocho', 'Cumplimiento de metas de la UNAJ', 9003, 'asdasd', 'cddd', 'esp.Planificador', 32, 3),
(9, 'INCONVENIENTES', 'Cumplimiento de metas de la UNAJ', 9003, '123423', '1222', 'esp.Planificador', 43, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centro_costo`
--

CREATE TABLE `centro_costo` (
  `idcentrocosto` int(11) NOT NULL,
  `nomcentrocosto` varchar(100) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `centro_costo`
--

INSERT INTO `centro_costo` (`idcentrocosto`, `nomcentrocosto`, `status`) VALUES
(1, 'UNIVERSIDAD NACIONAL DE JULIACA', 1),
(2, 'RECTORADO', 1),
(3, 'VICERECTORADO ACADEMICO', 1),
(4, 'VICERECTORADO DE INVESTIGACION', 1),
(5, 'ADMINISTRACION', 1),
(6, 'PLANIFICACION', 1),
(7, 'RRHH', 1),
(8, 'PRESUPUESTO', 1),
(9, 'CONTABILIDAD', 1),
(10, 'ABASTECIMIENTOS', 1),
(11, 'FACULTAD DE GEE', 1),
(12, 'FACULTAD DE CI', 1),
(13, 'FACULTAD DE CB', 1),
(14, 'DEPARTAMENTO GESTION', 1),
(15, 'DEPARTAMENTO DE CIENCIAS BASICA', 1),
(16, 'DEPARTAMENTO DE INGENIERIAS', 1),
(17, 'DEPARTAMENTO DE BASICAS', 1),
(18, 'ESCUELA PROFESIONAL DE ECONOMIA', 1),
(19, 'ESCUELA PROFESIONAL DE GESTION Y EE', 1),
(20, 'ESCUELA PROFESIONAL DE ADMINISTRACION', 1),
(21, 'ESCUELA PROFESIONAL DE SOFTWARE Y S', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuadro_necesidades`
--

CREATE TABLE `cuadro_necesidades` (
  `idNecesidad` int(11) NOT NULL,
  `requerimiento` varchar(25) NOT NULL,
  `espe_gas_cod` varchar(15) NOT NULL,
  `espe_gas_nombre` varchar(100) NOT NULL,
  `unidad_med` varchar(10) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `costo_unitario` float NOT NULL,
  `gastoMES` varchar(10) NOT NULL,
  `actividad_codActividad` int(11) NOT NULL,
  `insumos_idrequerimientos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `cuadro_necesidades`
--

INSERT INTO `cuadro_necesidades` (`idNecesidad`, `requerimiento`, `espe_gas_cod`, `espe_gas_nombre`, `unidad_med`, `cantidad`, `costo_unitario`, `gastoMES`, `actividad_codActividad`, `insumos_idrequerimientos`) VALUES
(1, 'Almuerzo', '2.1.15.12', 'PERSONAL CONTRATADO', 'UNIDAD', 880, 5, 'AGOSTO', 3, 2),
(2, 'Pasajes', '2.1.15.12', 'Pasajes', 'Soles', 200, 100, 'Julio', 6, 1),
(3, 'Pasajes', '2.1.15.12', 'Almuerzo', 'Soles', 200, 100, 'Julio', 6, 1),
(4, 'Pasajes', '2.1.15.12', 'PERSONAL CONTRATADO', 'soles', 10, 7000, 'Enero', 3, 2),
(5, 'Pasajes', '2.1.15.22', 'PERSONAL NOMBRADO', 'soles', 10, 7000, 'Enero', 3, 1),
(6, 'admin', '2.1.15.12', 'PERSONAL CONTRATADO', 'soles', 10, 7000, 'Enero', 5, 2),
(7, 'Copas', '2.1.15.12', 'PERSONAL CONTRATADO', 'soles', 10, 7000, 'Enero', 3, 2),
(8, 'medallas', '2.1.15.12', 'PERSONAL CONTRATADO', 'soles', 10, 7000, 'Enero', 3, 2),
(9, 'Almuerzo', '2.1.15.12', 'PERSONAL CONTRATADO', 'UNIDAD', 880, 5, 'AGOSTO', 3, 2),
(10, 'Almuerzo', '2.1.15.12', 'PERSONAL NOMBRADO', 'UNIDAD', 880, 5, 'AGOSTO', 3, 2),
(11, 'Pasajes', '2.1.15.12', 'PERSONAL NOMBRADO', 'soles', 10, 7000, 'Enero', 3, 3),
(12, 'Almuerzo', '2.1.15.12', 'PERSONAL TOTAL', 'UNIDAD', 880, 5, 'AGOSTO', 3, 1),
(13, 'Pasajes', '2.1.15.12', 'PERSONAL TOTAL', 'soles', 10, 7000, 'Enero', 3, 3),
(14, 'Almuerzo', '2.1.15.12', 'PERSONAL ADMINISTRATIVO', 'UNIDAD', 880, 5, 'AGOSTO', 3, 2),
(15, 'Pasajes', '2.1.15.12', 'BONIFICACIÓN ESPECIAL A FAVOR DEL DOCENTE INV', 'soles', 10, 7000, 'agosto', 5, 3),
(16, 'Almuerzo', '2.1.15.12', 'PERSONAL ADMINISTRATIVO', 'UNIDAD', 880, 5, 'AGOSTO', 5, 2),
(17, 'Pasajes', '2.1.15.12', 'PERSONAL CONTRATADO', 'soles', 10, 7000, 'Enero', 5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

CREATE TABLE `detalle_temp` (
  `iddetalle_temp` int(11) NOT NULL,
  `Precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `token` varchar(45) NOT NULL,
  `insumos_CodInsumo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicadoraei`
--

CREATE TABLE `indicadoraei` (
  `idindicadoraei` int(11) NOT NULL,
  `nombreaei` varchar(120) NOT NULL,
  `acc_estrategica_idaccestr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `indicadoraei`
--

INSERT INTO `indicadoraei` (`idindicadoraei`, `nombreaei`, `acc_estrategica_idaccestr`) VALUES
(1, 'Porcentaje de diseños curriculares', 1),
(2, 'porcentaje de docentes capacitados por escuela profesional', 2),
(3, 'Porcentaje de estudiantes satisfechos con los servicios del bienestar universitario', 3),
(4, 'procentaje de locales de enseñanza que brindan las condiciones adecuadas para la enseñanza', 4),
(5, 'Porcentaje de estudiantes de CETPRO con formacion tecnica integral', 9),
(6, 'Numero de publicaciones en el marco de las lineas de investigacion', 5),
(7, 'Porcentaje de docnetes que logran acceder a fondos concursables de investigacion de la UNAJ', 6),
(8, 'Numero de planes de negocios emprendidos en la UNAJ', 10),
(9, 'Numero de actividades de responsavilidad social', 11),
(10, 'Numero de proyectos de extension cultural y proyeccion social', 12),
(11, 'Porcentaje del programa de gestion ambiental implementado', 13),
(12, 'Porcentaje de cumplimiento de indicadores de mantenimiento de condiciones basicas de calidad', 14),
(13, 'Porcentaje de instrumentos normativos y administrativos', 15),
(14, 'Porcentaje del personal administrativo capacitado', 16),
(15, 'porcentaje del personal suficiente para desarrollo de actividades', 17),
(16, 'Numero de auditorias semestrales realidas', 18),
(17, 'Numero de informes de autoevaluacion', 19),
(18, 'Porcentaje de programa de gobierno digital implementado', 20),
(19, 'Numero de planes de estimacion de niveles de riesgo implementados', 21),
(20, 'Porcentaje de actividades de contingencia desarrolladas', 22),
(22, 'Porcentaje de personal docente suficiente para el pleno cumplimiento de resolucion ministerial', 17),
(23, 'Numero de nuevos programas de estudio pregrado', 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicadoroei`
--

CREATE TABLE `indicadoroei` (
  `idindicadoroei` int(11) NOT NULL,
  `nombreoei` varchar(100) NOT NULL,
  `obj_estrategico_idobjestr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `indicadoroei`
--

INSERT INTO `indicadoroei` (`idindicadoroei`, `nombreoei`, `obj_estrategico_idobjestr`) VALUES
(1, 'Porcentaje de egresados insertados en el mercado laboral a un año de su egreso', 1),
(2, 'Numero de publicaciones de investigaciones en revistas indexadas de alto nivel', 2),
(3, 'Numero de revistas de la UNAJ indexadas en base SciELO Perú', 2),
(4, 'Porcentaje de mienbros de la comunidad universitaria que participan en actividades de extension y pr', 3),
(5, 'Porcentaje de cumplimiento de las condiciones Basicas de Calidad del modelo de licenciamiento vigent', 4),
(6, 'Porcentaje del programa de gestion de riesgos implementado', 5),
(7, 'Porcentaje de 3 a 16 anios que accede a la educacion basica', 6),
(8, 'Numero de instituciones de educacion no universitaria no acreditadas', 6),
(9, 'indice de desempenio institucional de la gestion ', 6),
(10, 'indice de desempenio institucional de la gestion ', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos`
--

CREATE TABLE `insumos` (
  `idrequerimientos` int(11) NOT NULL,
  `requerimiento` varchar(45) DEFAULT NULL,
  `espe_identificador` varchar(15) NOT NULL,
  `espe_nombre` varchar(45) NOT NULL,
  `unid_medida` varchar(45) DEFAULT NULL,
  `costo_uni` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `insumos`
--

INSERT INTO `insumos` (`idrequerimientos`, `requerimiento`, `espe_identificador`, `espe_nombre`, `unid_medida`, `costo_uni`) VALUES
(1, NULL, '2.1.15.11', 'PERSONAL NOMBRADO', NULL, NULL),
(2, NULL, '2.1.15.12', 'PERSONAL CONTRATADO', NULL, NULL),
(3, NULL, '2.1.15.21', 'BONIFICACIÓN ESPECIAL A FAVOR DEL DOCENTE INV', NULL, NULL),
(4, NULL, '2.1.15.22', 'OTRAS RETRIBUCIONES Y COMPLEMENTOS', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos2`
--

CREATE TABLE `insumos2` (
  `CodInsumo` int(11) NOT NULL,
  `CatProducto` varchar(30) NOT NULL,
  `DesProducto` varchar(500) NOT NULL,
  `UnidadMed` varchar(50) NOT NULL,
  `costoUnitario` varchar(10) NOT NULL,
  `EspGasto` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `idmodulo` bigint(20) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Ficha_POI', 'productos de ceplan', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Caterogías', 'Caterogías Productos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obj_estrategico`
--

CREATE TABLE `obj_estrategico` (
  `idobjestr` int(11) NOT NULL,
  `nomobjestr` varchar(200) NOT NULL,
  `codoe` varchar(10) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `obj_estrategico`
--

INSERT INTO `obj_estrategico` (`idobjestr`, `nomobjestr`, `codoe`, `status`) VALUES
(1, 'Mejorar los niveles de logro de aprendizaje en los (as) estudiantes de educacion basica , tecnico productivo y no universitaria', 'OEI.01', 1),
(2, 'Promover la investigacion cientifica y tecnologica en la comunidad universitaria', 'OEI.02', 1),
(3, 'Fortalecer las actividades de extencion cultural y de proyeccion social para la comunidad universitaria', 'OEI.03', 1),
(4, 'Fortalecer la gestion institucional', 'OEI.04', 1),
(5, 'Implementar la gestion de riesgos de desastres', 'OEI.05', 1),
(6, 'Null', 'Null', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `idpermiso` bigint(20) NOT NULL,
  `rolid` bigint(20) NOT NULL,
  `moduloid` bigint(20) NOT NULL,
  `r` int(11) NOT NULL DEFAULT 0,
  `w` int(11) NOT NULL DEFAULT 0,
  `u` int(11) NOT NULL DEFAULT 0,
  `d` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(410, 7, 1, 1, 1, 1, 1),
(411, 7, 2, 0, 0, 0, 0),
(412, 7, 3, 0, 0, 0, 0),
(413, 7, 4, 1, 1, 1, 1),
(414, 7, 5, 0, 0, 0, 0),
(415, 7, 6, 1, 1, 1, 1),
(434, 1, 1, 1, 1, 1, 1),
(435, 1, 2, 1, 1, 1, 1),
(436, 1, 3, 1, 1, 1, 1),
(437, 1, 4, 1, 1, 1, 1),
(438, 1, 5, 1, 1, 1, 1),
(439, 1, 6, 1, 1, 1, 1),
(440, 14, 1, 1, 1, 1, 0),
(441, 14, 2, 1, 1, 1, 0),
(442, 14, 3, 1, 1, 1, 0),
(443, 14, 4, 1, 1, 1, 0),
(444, 14, 5, 1, 1, 1, 0),
(445, 14, 6, 1, 1, 1, 0),
(446, 13, 1, 1, 1, 1, 0),
(447, 13, 2, 1, 1, 1, 0),
(448, 13, 3, 1, 1, 1, 0),
(449, 13, 4, 1, 1, 1, 0),
(450, 13, 5, 1, 1, 1, 0),
(451, 13, 6, 1, 1, 1, 0),
(452, 12, 1, 1, 1, 1, 0),
(453, 12, 2, 1, 1, 1, 0),
(454, 12, 3, 1, 1, 1, 0),
(455, 12, 4, 1, 1, 1, 0),
(456, 12, 5, 1, 1, 1, 0),
(457, 12, 6, 1, 1, 1, 0),
(464, 4, 1, 1, 1, 1, 0),
(465, 4, 2, 1, 1, 1, 0),
(466, 4, 3, 1, 1, 1, 0),
(467, 4, 4, 1, 1, 1, 0),
(468, 4, 5, 1, 1, 1, 0),
(469, 4, 6, 1, 1, 1, 0),
(476, 3, 1, 1, 0, 1, 0),
(477, 3, 2, 1, 0, 1, 0),
(478, 3, 3, 1, 0, 1, 1),
(479, 3, 4, 1, 0, 1, 1),
(480, 3, 5, 1, 0, 1, 1),
(481, 3, 6, 1, 0, 1, 1),
(500, 9, 1, 1, 0, 1, 0),
(501, 9, 2, 1, 0, 1, 0),
(502, 9, 3, 1, 0, 1, 0),
(503, 9, 4, 1, 0, 1, 0),
(504, 9, 5, 1, 0, 1, 0),
(505, 9, 6, 1, 0, 1, 0),
(506, 15, 1, 1, 1, 1, 1),
(507, 15, 2, 1, 1, 1, 1),
(508, 15, 3, 1, 1, 1, 1),
(509, 15, 4, 1, 1, 1, 1),
(510, 15, 5, 1, 1, 1, 1),
(511, 15, 6, 1, 1, 1, 1),
(518, 2, 1, 1, 1, 1, 1),
(519, 2, 2, 1, 1, 1, 1),
(520, 2, 3, 1, 1, 1, 1),
(521, 2, 4, 1, 1, 1, 1),
(522, 2, 5, 1, 1, 1, 1),
(523, 2, 6, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` bigint(20) NOT NULL,
  `identificacion` varchar(30) NOT NULL,
  `nombres` varchar(80) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `password` varchar(75) NOT NULL,
  `nit` varchar(20) DEFAULT NULL,
  `nombrefiscal` varchar(80) DEFAULT NULL,
  `direccionfiscal` varchar(100) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `rolid` bigint(20) DEFAULT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1,
  `area` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`, `area`) VALUES
(1, '71052981', 'Joel Santos', 'Gomez Alanoca', 9857452871, 'ioelgomez2019@gmail.com', 'dad236ad4e24c1562e777109f7989790175ff96de62851ee2bef4b89f0ddce6d', '24252622', 'Joel sga', 'peru lima', '6fe79536251a088b1192-39d9900fc93af59581a9-ed40da79ce8723c5ca49-a800314fd283e3176be9', 1, '2020-08-13 00:51:44', 1, 'DGI'),
(2, '46548454', 'Alan', 'Arenales', 45687954, 'alan@info.com', 'dc4e32154482eff8c1a2061374a0fc2ca40fbf9b893197e949c79be535b06b23', 'CF', 'Alan', 'Ciudad', '', 7, '2020-10-11 01:30:23', 1, ''),
(3, '46545678', 'Marta', 'Cardona', 78548578, 'marta@info.com', '959b633150ca56bdbe8eefb0b510d720ec00714fc3f6160832dd2ae0c0a0611b', 'CF', 'Marta', 'peru', '', 7, '2020-10-11 01:43:30', 1, ''),
(4, '54789656458', 'Joel Eduardo', 'Cabrera', 54124528, 'joel@joel.com', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'CF', 'Joel Eduardo', 'peru', '', 7, '2020-10-11 01:44:30', 1, ''),
(5, '56874657', 'IOEL', 'IGOMEZ IALANOCA', 98776543, 'gomez@gmail.com', 'dad236ad4e24c1562e777109f7989790175ff96de62851ee2bef4b89f0ddce6d', 'CF', 'Pablo', 'peru', '', 7, '2020-10-11 01:59:45', 1, ''),
(13, '99999999', 'Enrique', 'Parillo Sosa', 970022188, 'eparillo@gmail.com', '6df7eaa5daca3ddcd13f3bdab784a44d173ce06d8f307e53130727a8d798c4eb', '', '', '', '', 9, '2024-05-13 23:36:42', 1, ''),
(14, '71047823', 'Abraham', 'Contrer Varga', 98776543, 'abraham@unaj.edu.pe', 'dad236ad4e24c1562e777109f7989790175ff96de62851ee2bef4b89f0ddce6d', '', '', '', '', 13, '2024-05-29 20:23:56', 1, ''),
(15, '563564562', 'Edelfre', 'Flores Flores', 987676565, 'edelfre@unaj.edu.pe', 'dad236ad4e24c1562e777109f7989790175ff96de62851ee2bef4b89f0ddce6d', '', '', '', '', 15, '2024-05-29 20:25:32', 1, ''),
(16, '11111111', 'Prueba', 'Para Pruebas', 999999999, 'prueba123@gmail.com', '0d9d09e157f7c29a43c02e57f081915d6fe2f10da1710672086f8ad73bb95cb2', '', '', '', '', 2, '2024-05-29 20:27:52', 1, ''),
(17, '87878787', 'Ramiro', 'Eudes', 978767557, 'eudes@gmail.com', '83b4a177c910174aa4cf485f1055b005d7b70f9bb3b024ebee8a951ebfc83f0a', NULL, NULL, NULL, NULL, 14, '2024-11-29 22:01:51', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa_pre`
--

CREATE TABLE `programa_pre` (
  `idprograma_pre` int(11) NOT NULL,
  `nombre_pp` varchar(45) NOT NULL,
  `cod_pp` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `programa_pre`
--

INSERT INTO `programa_pre` (`idprograma_pre`, `nombre_pp`, `cod_pp`) VALUES
(3, 'Cumplimiento de metas de la UNAJ', '9003');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registropoi`
--

CREATE TABLE `registropoi` (
  `idregistro` int(11) NOT NULL,
  `centrocosto` varchar(100) NOT NULL,
  `objestrinst` varchar(200) NOT NULL,
  `codigooe` varchar(10) NOT NULL,
  `indicadoroe` varchar(150) NOT NULL,
  `unidmedidaoe` varchar(50) NOT NULL,
  `metaoe` int(11) NOT NULL,
  `accestrinst` varchar(200) NOT NULL,
  `codigoae` varchar(15) NOT NULL,
  `indicadorae` varchar(150) NOT NULL,
  `unidmedidaae` varchar(50) NOT NULL,
  `metaae` int(11) NOT NULL,
  `persona_idpersona` bigint(20) NOT NULL,
  `centro_costo_idcentrocosto` int(11) NOT NULL,
  `obj_estrategico_idobjestr` int(11) NOT NULL,
  `acc_estrategica_idaccestr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `registropoi`
--

INSERT INTO `registropoi` (`idregistro`, `centrocosto`, `objestrinst`, `codigooe`, `indicadoroe`, `unidmedidaoe`, `metaoe`, `accestrinst`, `codigoae`, `indicadorae`, `unidmedidaae`, `metaae`, `persona_idpersona`, `centro_costo_idcentrocosto`, `obj_estrategico_idobjestr`, `acc_estrategica_idaccestr`) VALUES
(30, 'ESCUELA PROFESIONAL DE GESTION Y EE', 'Mejorar los niveles de logro de aprendizaje en los (as) estudiantes de educacion basica , tecnico productivo y no universitaria', 'OEI.01', 'Porcentaje de egresados insertados en el mercado laboral a un año de su egreso', 'Alumnos', 100, 'Programa de fortalecimiento de las competencias y evaluacion continua de docentes UNAJ', 'AEI.01.02', 'porcentaje de docentes capacitados por escuela profesional', 'servidor publico 4', 100, 1, 19, 1, 2),
(31, 'UNIVERSIDAD NACIONAL DE JULIACA', 'Fortalecer las actividades de extencion cultural y de proyeccion social para la comunidad universitaria', 'OEI.03', 'Porcentaje de mienbros de la comunidad universitaria que participan en actividades de extension y pr', 'Alumnos', 70, 'Programa de extension cultual y proyeccion socual de manera permanente para la sociedad', 'AEI.03.02', 'Numero de proyectos de extension cultural y proyeccion social', 'servidor publico', 70, 1, 1, 3, 12),
(32, 'UNIVERSIDAD NACIONAL DE JULIACA', 'Promover la investigacion cientifica y tecnologica en la comunidad universitaria', 'OEI.02', 'Numero de publicaciones de investigaciones en revistas indexadas de alto nivel', 'Alumnos', 100, 'Fondos concursables para la investigacion implementados en la comunidad universitaria', 'AEI.02.02', 'Porcentaje de docnetes que logran acceder a fondos concursables de investigacion de la UNAJ', 'servidor publico', 100, 1, 1, 2, 6),
(33, 'UNIVERSIDAD NACIONAL DE JULIACA', 'Fortalecer las actividades de extencion cultural y de proyeccion social para la comunidad universitaria', 'OEI.03', 'Porcentaje de mienbros de la comunidad universitaria que participan en actividades de extension y pr', 'Alumnos', 2, 'Programa de extension cultual y proyeccion socual de manera permanente para la sociedad', 'AEI.03.02', 'Numero de proyectos de extension cultural y proyeccion social', 'servidor publico', 3, 1, 1, 3, 12),
(34, 'UNIVERSIDAD NACIONAL DE JULIACA', 'Promover la investigacion cientifica y tecnologica en la comunidad universitaria', 'OEI.02', 'Numero de revistas de la UNAJ indexadas en base SciELO Perú', 'Alumnos', 22, 'Programa de investigacion formativa implementados para estudiantes de la Unaj', 'AEI.02.03', 'Porcentaje de estudiantes de CETPRO con formacion tecnica integral', 'Porcetaje de servidor publicod', 32, 1, 1, 2, 9),
(35, 'CONTABILIDAD', 'Mejorar los niveles de logro de aprendizaje en los (as) estudiantes de educacion basica , tecnico productivo y no universitaria', 'OEI.01', 'Porcentaje de egresados insertados en el mercado laboral a un año de su egreso', 'Alumnos', 2, 'Programa de fortalecimiento de las competencias y evaluacion continua de docentes UNAJ', 'AEI.01.02', 'porcentaje de docentes capacitados por escuela profesional', 'servidor publico', 9, 1, 9, 1, 2),
(36, 'ESCUELA PROFESIONAL DE ECONOMIA', 'Promover la investigacion cientifica y tecnologica en la comunidad universitaria', 'OEI.02', 'Numero de publicaciones de investigaciones en revistas indexadas de alto nivel', 'Alumnos', 100, 'Programa de investigacion formativa implementados para estudiantes de la Unaj', 'AEI.02.03', 'Porcentaje de estudiantes de CETPRO con formacion tecnica integral', 'Porcetaje de servidor publicod', 100, 1, 18, 2, 9),
(37, 'ESCUELA PROFESIONAL DE SOFTWARE Y S', 'Promover la investigacion cientifica y tecnologica en la comunidad universitaria', 'OEI.02', 'Numero de revistas de la UNAJ indexadas en base SciELO Perú', 'Alumnos', 50, 'Programa de emprendimientos formativa implementados para estudiantes de la Unaj', 'AEI.02.04', 'Numero de planes de negocios emprendidos en la UNAJ', 'servidor publico', 34, 1, 21, 2, 10),
(38, 'ESCUELA PROFESIONAL DE ADMINISTRACION', 'Mejorar los niveles de logro de aprendizaje en los (as) estudiantes de educacion basica , tecnico productivo y no universitaria', 'OEI.01', 'Porcentaje de egresados insertados en el mercado laboral a un año de su egreso', 'Alumnos', 50, 'Servicios y programas de bienestar optimizados para los estudiantes universitarios', 'AEI.01.03', 'Porcentaje de estudiantes satisfechos con los servicios del bienestar universitario', 'Alumnos', 45, 1, 20, 1, 3),
(39, 'UNIVERSIDAD NACIONAL DE JULIACA', 'Promover la investigacion cientifica y tecnologica en la comunidad universitaria', 'OEI.02', 'Numero de revistas de la UNAJ indexadas en base SciELO Perú', 'Alumnos', 88, 'Fondos concursables para la investigacion implementados en la comunidad universitaria', 'AEI.02.02', 'Porcentaje de docnetes que logran acceder a fondos concursables de investigacion de la UNAJ', 'servidor publico', 34, 1, 1, 2, 6),
(40, 'ABASTECIMIENTOS', 'Promover la investigacion cientifica y tecnologica en la comunidad universitaria', 'OEI.02', 'Numero de publicaciones de investigaciones en revistas indexadas de alto nivel', 'Alumnos', 100, 'Programa de emprendimientos formativa implementados para estudiantes de la Unaj', 'AEI.02.04', 'Numero de planes de negocios emprendidos en la UNAJ', 'servidor publico', 22, 1, 10, 2, 10),
(41, 'RRHH', 'Promover la investigacion cientifica y tecnologica en la comunidad universitaria', 'OEI.02', 'Numero de publicaciones de investigaciones en revistas indexadas de alto nivel', 'Alumnos', 187, 'Fondos concursables para la investigacion implementados en la comunidad universitaria', 'AEI.02.02', 'Porcentaje de docnetes que logran acceder a fondos concursables de investigacion de la UNAJ', 'servidor publico', 243, 1, 7, 2, 6),
(42, 'PLANIFICACION', 'Fortalecer las actividades de extencion cultural y de proyeccion social para la comunidad universitaria', 'OEI.03', 'Porcentaje de mienbros de la comunidad universitaria que participan en actividades de extension y pr', 'Alumnos', 90, 'Programa de gestion ambiental implementado en la comunidad universitaria', 'AEI.03.03', 'Porcentaje del programa de gestion ambiental implementado', 'indice de desempeño', 3, 1, 6, 3, 13),
(43, 'PRESUPUESTO', 'Promover la investigacion cientifica y tecnologica en la comunidad universitaria', 'OEI.02', 'Numero de publicaciones de investigaciones en revistas indexadas de alto nivel', 'Alumnos', 4, 'Fondos concursables para la investigacion implementados en la comunidad universitaria', 'AEI.02.02', 'Porcentaje de docnetes que logran acceder a fondos concursables de investigacion de la UNAJ', 'servidor publico', 3, 1, 8, 2, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` bigint(20) NOT NULL,
  `nombrerol` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 1),
(2, 'Supervisor', 'Supervisor', 1),
(3, 'Secretaria', 'Secretaria de las areas', 1),
(4, 'Servicio al cliente', 'Servicio al cliente sistema', 1),
(5, 'Bodega', 'Bodega', 0),
(6, 'Resporteria', 'Resporteria Sistema', 0),
(7, 'Usuario', 'Usuarios', 0),
(8, 'Ejemplo rol', 'Ejemplo rol sitema', 0),
(9, 'Coordinador', 'Coordinador', 1),
(10, 'Consulta Ventas', 'Consulta Ventas', 0),
(11, '', '', 0),
(12, 'Decano', 'Decano de facultad', 1),
(13, 'Director de Escuela', 'director de escuela', 1),
(14, 'Docente', 'Docente', 1),
(15, 'Rector', 'Rectorado', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medidaaei`
--

CREATE TABLE `unidad_medidaaei` (
  `idunidad_medidaaei` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `indicadoraei_idindicadoraei` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `unidad_medidaaei`
--

INSERT INTO `unidad_medidaaei` (`idunidad_medidaaei`, `nombre`, `indicadoraei_idindicadoraei`) VALUES
(1, 'servidor publico', 1),
(2, 'indice de desempeño', 4),
(5, 'servidor publico', 2),
(6, 'Porcetaje de servidor publicod', 5),
(7, 'Servidor Publico', 6),
(17, 'Alumnos', 3),
(18, 'servidor publico', 7),
(19, 'servidor publico', 8),
(20, 'servidor publico', 9),
(21, 'servidor publico', 10),
(22, 'indice de desempeño', 11),
(23, 'indice de desempeño', 12),
(24, 'indice de desempeño', 13),
(25, 'indice de desempeño', 14),
(26, 'indice de desempeño', 15),
(27, 'servidor publico', 16),
(28, 'servidor publico', 17),
(29, 'servidor publico', 18),
(30, 'servidor publico', 19),
(31, 'indice de desempeño', 20),
(32, 'indice de desempeño', 22),
(33, 'indice de desempeño', 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medidaoei`
--

CREATE TABLE `unidad_medidaoei` (
  `idunidad_medidaoei` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `indicadoroei_idindicadoroei` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `unidad_medidaoei`
--

INSERT INTO `unidad_medidaoei` (`idunidad_medidaoei`, `nombre`, `indicadoroei_idindicadoroei`) VALUES
(1, 'Alumnos', 2),
(2, 'Alumnos', 3),
(3, 'Alumnos', 1),
(9, 'Accion', 8),
(11, 'Alumnos', 7),
(13, 'Alumnos', 5),
(14, 'Alumnos', 9),
(15, 'Alumnos', 10),
(16, 'Alumnos', 4),
(17, 'Alumnos', 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acc_estrategica`
--
ALTER TABLE `acc_estrategica`
  ADD PRIMARY KEY (`idaccestr`) USING BTREE,
  ADD KEY `fk_acc_estrategica_obj_estrategico1_idx` (`obj_estrategico_idobjestr`) USING BTREE;

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`idcodigo_act`) USING BTREE,
  ADD KEY `fk_actividad_registropoi1_idx` (`registropoi_idregistro`) USING BTREE,
  ADD KEY `fk_actividad_programa_pre1_idx` (`programa_pre_idprograma_pre`) USING BTREE;

--
-- Indices de la tabla `centro_costo`
--
ALTER TABLE `centro_costo`
  ADD PRIMARY KEY (`idcentrocosto`) USING BTREE,
  ADD UNIQUE KEY `NomCentroCosto` (`nomcentrocosto`) USING BTREE;

--
-- Indices de la tabla `cuadro_necesidades`
--
ALTER TABLE `cuadro_necesidades`
  ADD PRIMARY KEY (`idNecesidad`) USING BTREE,
  ADD KEY `fk_cuadro_necesidades_actividad1_idx` (`actividad_codActividad`) USING BTREE,
  ADD KEY `fk_cuadro_necesidades_insumos1_idx` (`insumos_idrequerimientos`) USING BTREE;

--
-- Indices de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD PRIMARY KEY (`iddetalle_temp`) USING BTREE,
  ADD KEY `fk_detalle_temp_insumos1_idx` (`insumos_CodInsumo`) USING BTREE;

--
-- Indices de la tabla `indicadoraei`
--
ALTER TABLE `indicadoraei`
  ADD PRIMARY KEY (`idindicadoraei`) USING BTREE,
  ADD KEY `fk_indicadoraei_acc_estrategica1_idx` (`acc_estrategica_idaccestr`) USING BTREE;

--
-- Indices de la tabla `indicadoroei`
--
ALTER TABLE `indicadoroei`
  ADD PRIMARY KEY (`idindicadoroei`) USING BTREE,
  ADD KEY `fk_indicadoroei_obj_estrategico1_idx` (`obj_estrategico_idobjestr`) USING BTREE;

--
-- Indices de la tabla `insumos`
--
ALTER TABLE `insumos`
  ADD PRIMARY KEY (`idrequerimientos`) USING BTREE;

--
-- Indices de la tabla `insumos2`
--
ALTER TABLE `insumos2`
  ADD PRIMARY KEY (`CodInsumo`) USING BTREE,
  ADD UNIQUE KEY `EspGasto` (`EspGasto`) USING BTREE;

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`idmodulo`) USING BTREE;

--
-- Indices de la tabla `obj_estrategico`
--
ALTER TABLE `obj_estrategico`
  ADD PRIMARY KEY (`idobjestr`) USING BTREE;

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`idpermiso`) USING BTREE,
  ADD KEY `rolid` (`rolid`) USING BTREE,
  ADD KEY `moduloid` (`moduloid`) USING BTREE;

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`) USING BTREE,
  ADD KEY `rolid` (`rolid`) USING BTREE;

--
-- Indices de la tabla `programa_pre`
--
ALTER TABLE `programa_pre`
  ADD PRIMARY KEY (`idprograma_pre`) USING BTREE;

--
-- Indices de la tabla `registropoi`
--
ALTER TABLE `registropoi`
  ADD PRIMARY KEY (`idregistro`) USING BTREE,
  ADD KEY `fk_registropoi_persona1_idx` (`persona_idpersona`) USING BTREE,
  ADD KEY `fk_registropoi_centro_costo1_idx` (`centro_costo_idcentrocosto`) USING BTREE,
  ADD KEY `fk_registropoi_obj_estrategico1_idx` (`obj_estrategico_idobjestr`) USING BTREE,
  ADD KEY `fk_registropoi_acc_estrategica1_idx` (`acc_estrategica_idaccestr`) USING BTREE;

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`) USING BTREE;

--
-- Indices de la tabla `unidad_medidaaei`
--
ALTER TABLE `unidad_medidaaei`
  ADD PRIMARY KEY (`idunidad_medidaaei`) USING BTREE,
  ADD UNIQUE KEY `indicadoraei_idindicadoraei_UNIQUE` (`indicadoraei_idindicadoraei`) USING BTREE,
  ADD KEY `fk_unidad_medidaaei_indicadoraei1_idx` (`indicadoraei_idindicadoraei`) USING BTREE;

--
-- Indices de la tabla `unidad_medidaoei`
--
ALTER TABLE `unidad_medidaoei`
  ADD PRIMARY KEY (`idunidad_medidaoei`) USING BTREE,
  ADD UNIQUE KEY `indicadoroei_idindicadoroei_UNIQUE` (`indicadoroei_idindicadoroei`) USING BTREE,
  ADD KEY `fk_unidad_medidaoei_indicadoroei1_idx` (`indicadoroei_idindicadoroei`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acc_estrategica`
--
ALTER TABLE `acc_estrategica`
  MODIFY `idaccestr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `idcodigo_act` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cuadro_necesidades`
--
ALTER TABLE `cuadro_necesidades`
  MODIFY `idNecesidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  MODIFY `iddetalle_temp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `indicadoraei`
--
ALTER TABLE `indicadoraei`
  MODIFY `idindicadoraei` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `indicadoroei`
--
ALTER TABLE `indicadoroei`
  MODIFY `idindicadoroei` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `insumos`
--
ALTER TABLE `insumos`
  MODIFY `idrequerimientos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `insumos2`
--
ALTER TABLE `insumos2`
  MODIFY `CodInsumo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `idmodulo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `obj_estrategico`
--
ALTER TABLE `obj_estrategico`
  MODIFY `idobjestr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `idpermiso` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=524;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `programa_pre`
--
ALTER TABLE `programa_pre`
  MODIFY `idprograma_pre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `registropoi`
--
ALTER TABLE `registropoi`
  MODIFY `idregistro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `unidad_medidaaei`
--
ALTER TABLE `unidad_medidaaei`
  MODIFY `idunidad_medidaaei` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `unidad_medidaoei`
--
ALTER TABLE `unidad_medidaoei`
  MODIFY `idunidad_medidaoei` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acc_estrategica`
--
ALTER TABLE `acc_estrategica`
  ADD CONSTRAINT `fk_acc_estrategica_obj_estrategico1` FOREIGN KEY (`obj_estrategico_idobjestr`) REFERENCES `obj_estrategico` (`idobjestr`);

--
-- Filtros para la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD CONSTRAINT `fk_actividad_programa_pre1` FOREIGN KEY (`programa_pre_idprograma_pre`) REFERENCES `programa_pre` (`idprograma_pre`),
  ADD CONSTRAINT `fk_actividad_registropoi1` FOREIGN KEY (`registropoi_idregistro`) REFERENCES `registropoi` (`idregistro`);

--
-- Filtros para la tabla `cuadro_necesidades`
--
ALTER TABLE `cuadro_necesidades`
  ADD CONSTRAINT `fk_cuadro_necesidades_actividad1` FOREIGN KEY (`actividad_codActividad`) REFERENCES `actividad` (`idcodigo_act`),
  ADD CONSTRAINT `fk_cuadro_necesidades_insumos1` FOREIGN KEY (`insumos_idrequerimientos`) REFERENCES `insumos` (`idrequerimientos`);

--
-- Filtros para la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD CONSTRAINT `fk_detalle_temp_insumos1` FOREIGN KEY (`insumos_CodInsumo`) REFERENCES `insumos2` (`CodInsumo`);

--
-- Filtros para la tabla `indicadoraei`
--
ALTER TABLE `indicadoraei`
  ADD CONSTRAINT `fk_indicadoraei_acc_estrategica1` FOREIGN KEY (`acc_estrategica_idaccestr`) REFERENCES `acc_estrategica` (`idaccestr`);

--
-- Filtros para la tabla `indicadoroei`
--
ALTER TABLE `indicadoroei`
  ADD CONSTRAINT `fk_indicadoroei_obj_estrategico1` FOREIGN KEY (`obj_estrategico_idobjestr`) REFERENCES `obj_estrategico` (`idobjestr`);

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `registropoi`
--
ALTER TABLE `registropoi`
  ADD CONSTRAINT `fk_registropoi_acc_estrategica1` FOREIGN KEY (`acc_estrategica_idaccestr`) REFERENCES `acc_estrategica` (`idaccestr`),
  ADD CONSTRAINT `fk_registropoi_centro_costo1` FOREIGN KEY (`centro_costo_idcentrocosto`) REFERENCES `centro_costo` (`idcentrocosto`),
  ADD CONSTRAINT `fk_registropoi_obj_estrategico1` FOREIGN KEY (`obj_estrategico_idobjestr`) REFERENCES `obj_estrategico` (`idobjestr`),
  ADD CONSTRAINT `fk_registropoi_persona1` FOREIGN KEY (`persona_idpersona`) REFERENCES `persona` (`idpersona`);

--
-- Filtros para la tabla `unidad_medidaaei`
--
ALTER TABLE `unidad_medidaaei`
  ADD CONSTRAINT `fk_unidad_medidaaei_indicadoraei1` FOREIGN KEY (`indicadoraei_idindicadoraei`) REFERENCES `indicadoraei` (`idindicadoraei`);

--
-- Filtros para la tabla `unidad_medidaoei`
--
ALTER TABLE `unidad_medidaoei`
  ADD CONSTRAINT `fk_unidad_medidaoei_indicadoroei1` FOREIGN KEY (`indicadoroei_idindicadoroei`) REFERENCES `indicadoroei` (`idindicadoroei`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
