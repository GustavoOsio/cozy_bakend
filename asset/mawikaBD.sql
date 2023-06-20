-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 14-01-2023 a las 14:05:38
-- Versión del servidor: 10.5.18-MariaDB-cll-lve
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mawikaco_bd_QA`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendamiento`
--

CREATE TABLE `agendamiento` (
  `ID_AGENDAMIENTO` int(11) NOT NULL,
  `ORDEN_SERVICIO_REGISTRO_ID` int(11) DEFAULT NULL,
  `ID_EMPLEADO` int(11) DEFAULT NULL,
  `TIPO` varchar(45) DEFAULT NULL,
  `COMENTARIO` varchar(60) DEFAULT NULL,
  `FECHA_PROGRAMADA` date DEFAULT NULL,
  `HORA_PROGRAMADA` varchar(50) DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime DEFAULT current_timestamp(),
  `USUARIO_SESION_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivo`
--

CREATE TABLE `archivo` (
  `ID_ARCHIVO` int(11) NOT NULL,
  `CONCEPTO` varchar(100) NOT NULL,
  `RUTA` varchar(100) NOT NULL,
  `TIPO` varchar(200) NOT NULL,
  `PESO` int(11) NOT NULL,
  `FECHA_CREACION` datetime NOT NULL DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime NOT NULL DEFAULT current_timestamp(),
  `USUARIO_SESION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario`
--

CREATE TABLE `calendario` (
  `ID_CALENDARIO` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `ESTADO` varchar(45) DEFAULT NULL,
  `FECHA_CREACION` varchar(45) DEFAULT 'CURRENT_TIMESTAMP',
  `FECHA_EDICION` varchar(45) DEFAULT 'CURRENT_TIMESTAMP',
  `COMENTARIO` varchar(255) DEFAULT NULL,
  `USUARIO_SESION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito_compra`
--

CREATE TABLE `carrito_compra` (
  `ID_CARRITO` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `FECHA_PROGRAMADA` varchar(45) NOT NULL,
  `HORA_PROGRAMADA` varchar(45) NOT NULL,
  `TIPO_PROGRAMACION` varchar(45) NOT NULL,
  `COMENTARIO` varchar(100) NOT NULL,
  `ARCHIVO_ID_FOTO` int(11) DEFAULT NULL,
  `ARCHIVO_ID_AUDIO` int(11) DEFAULT NULL,
  `ESTADO` varchar(45) DEFAULT NULL,
  `SUB_TOTAL` int(11) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `DESCUENTO` int(11) DEFAULT NULL,
  `RECARGO` int(11) DEFAULT NULL,
  `EVIDENCIA_SERVICIO` int(11) DEFAULT NULL,
  `REFERENCIA_PAGO` varchar(100) DEFAULT NULL,
  `URL_PAGAR` varchar(200) DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime DEFAULT current_timestamp(),
  `USUARIO_SESION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `archivo_id` int(11) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `fecha_edicion` datetime(6) DEFAULT NULL,
  `usuario_sesion_id` int(11) DEFAULT NULL,
  `base64` longtext DEFAULT NULL,
  `orden` int(255) NOT NULL,
  `modo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_bot`
--

CREATE TABLE `chat_bot` (
  `ID_CHAT_BOT` int(11) NOT NULL,
  `PREGUNTAS` varchar(45) DEFAULT NULL,
  `RESPUESTAS` longtext DEFAULT NULL,
  `OTRAS` varchar(100) DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime DEFAULT current_timestamp(),
  `ID_USUARIO_SESION` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigos_sms`
--

CREATE TABLE `codigos_sms` (
  `id_parametro` int(11) NOT NULL,
  `concepto` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `fecha_edicion` datetime(6) DEFAULT NULL,
  `tipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conversacion_chatbot`
--

CREATE TABLE `conversacion_chatbot` (
  `ID_CONVERSACION` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `PREGUNTA` varchar(100) DEFAULT NULL,
  `RESPUESTA` longtext DEFAULT NULL,
  `FECHA_CREACION` varchar(45) DEFAULT 'CURRENT_TIMESTAMP',
  `FECHA_EDICION` varchar(45) DEFAULT 'CURRENT_TIMESTAMP',
  `USUARIO_SESION_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_generales`
--

CREATE TABLE `datos_generales` (
  `ID_DATOS` int(11) NOT NULL,
  `NOMBRE` varchar(45) DEFAULT NULL,
  `ORGANIZACION` varchar(45) DEFAULT NULL,
  `CATEGORIA` varchar(45) DEFAULT NULL,
  `NIT` varchar(45) DEFAULT NULL,
  `ADMIN_DIAN` varchar(45) DEFAULT NULL,
  `DIRECCION` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_json`
--

CREATE TABLE `datos_json` (
  `id_dato_json` int(11) NOT NULL,
  `action` varchar(45) DEFAULT NULL,
  `api_version` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dato_personal`
--

CREATE TABLE `dato_personal` (
  `id_dato_personal` int(11) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `cedula` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `fecha_edicion` datetime(6) DEFAULT NULL,
  `fecha_nacimiento` datetime(6) DEFAULT NULL,
  `id_archivo` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `usuario_sesion_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devolucion`
--

CREATE TABLE `devolucion` (
  `ID_DEVOLUCION` int(11) NOT NULL,
  `ORDEN_SERVICIO_ID` int(11) NOT NULL,
  `CAUSA` varchar(25) NOT NULL,
  `DESCRIPCION` varchar(25) NOT NULL,
  `COMENTARIO` varchar(55) DEFAULT NULL,
  `ESTADO` varchar(10) NOT NULL,
  `FECHA_CREACION` datetime NOT NULL DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime NOT NULL DEFAULT current_timestamp(),
  `USUARIO_SESION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `id_direccion` int(11) NOT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  `dato_personal_id` int(11) DEFAULT NULL,
  `departamento` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  `estado` varchar(45) DEFAULT 'Secundaria',
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `fecha_edicion` datetime(6) DEFAULT NULL,
  `usuario_sesion_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `area` varchar(255) DEFAULT NULL,
  `arl` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `contrato` varchar(50) DEFAULT NULL,
  `dato_personal_id` int(11) DEFAULT NULL,
  `eps` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `fecha_edicion` datetime(6) DEFAULT NULL,
  `fecha_ingreso` datetime(6) DEFAULT NULL,
  `profesion` varchar(255) DEFAULT NULL,
  `sueldo` varchar(250) DEFAULT NULL,
  `turno` varchar(255) DEFAULT NULL,
  `usuario_sesion_id` int(11) DEFAULT NULL,
  `zona` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_empresa`
--

CREATE TABLE `empleado_empresa` (
  `ID_EMPLEADO_EMPRESA` int(11) NOT NULL,
  `COMENTARIO` varchar(100) DEFAULT NULL,
  `ESTADO` varchar(45) DEFAULT NULL,
  `ID_EMPRESA` int(11) DEFAULT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `ID_DATO_PERSONAL` int(11) DEFAULT NULL,
  `FECHA_CREACION` date DEFAULT NULL,
  `FECHA_EDICION` date DEFAULT NULL,
  `USUARIO_SESION_ID` int(11) DEFAULT NULL,
  `CARGO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id_empresa` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `cedula_representante_legal` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `fecha_edicion` datetime(6) DEFAULT NULL,
  `nit` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `nombre_representante_legal` varchar(255) DEFAULT NULL,
  `sigla` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `usuario_sesion_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE `encuesta` (
  `ID_ENCUESTA` int(11) NOT NULL,
  `CODIGO` varchar(15) NOT NULL,
  `VIGENCIA` date NOT NULL,
  `NOMBRE` varchar(25) NOT NULL,
  `FECHA_CREACION` datetime NOT NULL DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime NOT NULL DEFAULT current_timestamp(),
  `USUARIO_SESION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta_pregunta`
--

CREATE TABLE `encuesta_pregunta` (
  `ID_ENCUESTA_PREGUNTA` int(11) NOT NULL,
  `ENCUESTA_ID` int(11) NOT NULL,
  `CONCEPTO` varchar(25) NOT NULL,
  `PREGUNTA` varchar(100) NOT NULL,
  `REPUESTA` varchar(40) DEFAULT NULL,
  `FECHA_CREACION` datetime NOT NULL DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime NOT NULL DEFAULT current_timestamp(),
  `USUARIO_SESION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta_repuesta`
--

CREATE TABLE `encuesta_repuesta` (
  `ID_ENCUESTA_REPUESTA` int(11) NOT NULL,
  `USUARIO_ID` int(11) NOT NULL,
  `ID_EMPLEADO` int(11) DEFAULT NULL,
  `ID_ORDEN_REGISTRO` int(11) DEFAULT NULL,
  `ENCUESTA_PREGUNTA_ID` int(11) NOT NULL,
  `REPUESTA` varchar(45) NOT NULL,
  `COMENTARIO` varchar(45) NOT NULL,
  `FECHA_CREACION` datetime NOT NULL DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime NOT NULL DEFAULT current_timestamp(),
  `USUARIO_SESION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad_categoria_empleado`
--

CREATE TABLE `especialidad_categoria_empleado` (
  `ID_ESPECIALIDAD_CATEGORIA_EMPLEADO` int(11) NOT NULL,
  `ID_CATEGORIA` int(11) NOT NULL,
  `ID_EMPLEADO` int(11) NOT NULL,
  `FECHA_CREACION` datetime DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime DEFAULT current_timestamp(),
  `USUARIO_SESION_ID` int(11) NOT NULL,
  `COMENTARIO` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `ID_ESTADO` int(11) NOT NULL,
  `TIPO` varchar(25) NOT NULL,
  `COMENTARIO` varchar(55) DEFAULT NULL,
  `FECHA_CREACION` datetime NOT NULL DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime NOT NULL DEFAULT current_timestamp(),
  `USUARIO_SESION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estructura_tabla`
--

CREATE TABLE `estructura_tabla` (
  `ID_ESTRUCTURA_TABLA` int(11) NOT NULL,
  `NOMBRE_TABLA` varchar(30) NOT NULL,
  `DESCRIPCION_TABLA` varchar(100) NOT NULL,
  `COMENTARIO` varchar(255) DEFAULT NULL,
  `FECHA_CREACION` datetime NOT NULL DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evidencia_servicio`
--

CREATE TABLE `evidencia_servicio` (
  `ID_EVIDENCIA_SERVICIO` int(11) NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `FOTO_UNO` varchar(100) DEFAULT NULL,
  `FOTO_DOS` varchar(100) DEFAULT NULL,
  `FOTO_TRES` varchar(100) DEFAULT NULL,
  `AUDIO_UNO` longtext DEFAULT NULL,
  `AUDIO_DOS` longtext DEFAULT NULL,
  `AUDIO_TRES` longtext DEFAULT NULL,
  `ESTADO` varchar(45) DEFAULT NULL,
  `CONSECUTIVO` int(11) DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime DEFAULT current_timestamp(),
  `USUARIO_SESION_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favorito`
--

CREATE TABLE `favorito` (
  `ID_FAVORITO` int(11) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `FECHA_CREACION` datetime NOT NULL DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime NOT NULL DEFAULT current_timestamp(),
  `USUARIO_SESION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `ID_HORARIO` int(11) NOT NULL,
  `HORA` time NOT NULL,
  `TIPO` varchar(45) NOT NULL,
  `CUPOS` varchar(45) DEFAULT NULL,
  `ESTADO` varchar(45) DEFAULT NULL,
  `USUARIO_SESION_ID` int(11) DEFAULT NULL,
  `FECHA_CREACION` datetime NOT NULL DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manejo_excepcion`
--

CREATE TABLE `manejo_excepcion` (
  `ID_MANEJO_EXCEPCION` int(11) NOT NULL,
  `TIPO` varchar(25) DEFAULT NULL,
  `CODIGO` varchar(15) DEFAULT NULL,
  `CLASE` varchar(55) DEFAULT NULL,
  `COMENTARIO` varchar(45) DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `ID_MENSAJE` int(11) NOT NULL,
  `USUARIO_ID_ENVIA` int(11) DEFAULT NULL,
  `ID_ORDEN_REGISTRO` int(11) DEFAULT NULL,
  `VISTO` int(11) DEFAULT NULL,
  `TIPO` varchar(25) DEFAULT NULL,
  `MENSAJE` varchar(155) NOT NULL,
  `USUARIO_ID_RECIBE` int(11) NOT NULL,
  `FECHA_CREACION` datetime NOT NULL DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime NOT NULL DEFAULT current_timestamp(),
  `USUARIO_SESION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion`
--

CREATE TABLE `notificacion` (
  `ID_NOTIFICACION` int(11) NOT NULL,
  `FECHA` varchar(50) NOT NULL,
  `HORA` varchar(50) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `TIPO` varchar(25) NOT NULL,
  `NOTIFICACION` varchar(100) NOT NULL,
  `ORDEN_SERVICIO_ID` int(11) DEFAULT NULL,
  `ESTADO` varchar(10) NOT NULL,
  `FECHA_CREACION` datetime NOT NULL DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime NOT NULL DEFAULT current_timestamp(),
  `USUARIO_SESION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_servicio`
--

CREATE TABLE `orden_servicio` (
  `ID_ORDEN_SERVICIO` int(11) NOT NULL,
  `CONSECUTIVO` varchar(25) NOT NULL,
  `DIRECCION` varchar(55) NOT NULL,
  `COMENTARIO` varchar(45) DEFAULT NULL,
  `ESTADO_ID` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `EMPRESA_PAGO` varchar(45) DEFAULT NULL,
  `REFERENCIA_PAGO` varchar(100) DEFAULT NULL,
  `FECHA_CREACION` datetime NOT NULL DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime NOT NULL DEFAULT current_timestamp(),
  `USUARIO_SESION_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_servicio_evidencia`
--

CREATE TABLE `orden_servicio_evidencia` (
  `ID_ORDEN_SERVICIO_EVIDENCIA` int(11) NOT NULL,
  `ORDEN_SERVICIO_REGISTRO_ID` int(11) NOT NULL,
  `TIPO` varchar(15) NOT NULL,
  `CONCEPTO` varchar(25) NOT NULL,
  `ARCHIVO_ID` int(11) NOT NULL,
  `COMENTARIO` varchar(45) DEFAULT NULL,
  `FECHA_CREACION` datetime NOT NULL DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime NOT NULL DEFAULT current_timestamp(),
  `USUARIO_SESION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_servicio_registro`
--

CREATE TABLE `orden_servicio_registro` (
  `ID_ORDEN_REGISTRO` int(11) NOT NULL,
  `ORDEN_SERVICIO_ID` int(11) DEFAULT NULL,
  `PRODUCTO_ID` int(11) DEFAULT NULL,
  `FECHA_INICIO` date DEFAULT NULL,
  `HORA_INICIO` varchar(50) DEFAULT NULL,
  `FECHA_FIN` date DEFAULT NULL,
  `HORA_FIN` varchar(50) DEFAULT NULL,
  `CANTIDAD` decimal(10,2) DEFAULT NULL,
  `VALOR_BRUTO` decimal(20,2) DEFAULT NULL,
  `VALOR_DESCONTADO` decimal(20,2) DEFAULT NULL,
  `VALOR_NETO` decimal(20,2) DEFAULT NULL,
  `PORCENTAJE_ADMINISTRACION` decimal(10,2) DEFAULT NULL,
  `PORCENTAJE_IMPREVISTO` decimal(10,2) DEFAULT NULL,
  `PORCENTAJE_UTILIDAD` decimal(10,2) DEFAULT NULL,
  `PORCENTAJE_IVA` decimal(10,2) DEFAULT NULL,
  `PORCENTAJE_ICO` decimal(10,2) DEFAULT NULL,
  `COMENTARIO` varchar(55) DEFAULT NULL,
  `ESTADO` varchar(20) DEFAULT NULL,
  `CODIGO` int(11) DEFAULT NULL,
  `ID_CARRITO` int(11) DEFAULT NULL,
  `ADICIONAL_PRODUCTO` varchar(100) DEFAULT NULL,
  `CANTIDAD_ADICIONAL` int(11) DEFAULT NULL,
  `VALOR_UNITARIO` int(11) DEFAULT NULL,
  `FECHA_CREACION` datetime DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime DEFAULT current_timestamp(),
  `USUARIO_SESION_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `ID_PAGO` int(11) NOT NULL,
  `CONSECUTIVO` varchar(25) NOT NULL,
  `ORDEN_SERVICIO_ID` int(11) NOT NULL,
  `FORMA_PAGO` varchar(45) NOT NULL,
  `VALOR` decimal(20,2) NOT NULL,
  `COMENTARIO` varchar(155) DEFAULT NULL,
  `ESTADO` varchar(45) NOT NULL,
  `CODIGO_SEGURIDAD` varchar(50) DEFAULT NULL,
  `FECHA_CREACION` datetime NOT NULL DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime NOT NULL DEFAULT current_timestamp(),
  `USUARIO_SESION_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago_anular`
--

CREATE TABLE `pago_anular` (
  `ID_PAGO_ANULAR` int(11) NOT NULL,
  `PAGO_ID` int(11) NOT NULL,
  `FECHA` varchar(45) NOT NULL,
  `MOTIVO` varchar(45) NOT NULL,
  `COMENTARIO` varchar(155) DEFAULT NULL,
  `FECHA_CREACION` datetime NOT NULL DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime NOT NULL DEFAULT current_timestamp(),
  `USUARIO_SESION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametro`
--

CREATE TABLE `parametro` (
  `id_parametro` int(11) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `concepto` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `fecha_edicion` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `id_archivo` int(11) DEFAULT NULL,
  `categoria_sub_id` int(11) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  `especificacion` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `fecha_edicion` datetime(6) DEFAULT NULL,
  `porcentaje_administracion` float DEFAULT NULL,
  `porcentaje_ico` float DEFAULT NULL,
  `porcentaje_imprevisto` float DEFAULT NULL,
  `porcentaje_iva` float DEFAULT NULL,
  `porcentaje_utilidad` float DEFAULT NULL,
  `unidad_medida` varchar(255) DEFAULT NULL,
  `usuario_sesion_id` int(11) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  `duracion` int(11) DEFAULT NULL,
  `termino_condicion` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programacion_servicio`
--

CREATE TABLE `programacion_servicio` (
  `ID_PROGRAMACION_SERVICIO` int(11) NOT NULL,
  `TIPO` varchar(15) NOT NULL,
  `CONCURRENCIA` varchar(25) NOT NULL,
  `COMENTARIO` varchar(45) DEFAULT NULL,
  `CANTIDAD_DIAS` int(11) NOT NULL,
  `PRODUCTO_ID_PROGAMADO` int(11) NOT NULL,
  `PRODUCTO_ID_BASE` int(11) NOT NULL,
  `FECHA_CREACION` datetime NOT NULL DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime NOT NULL DEFAULT current_timestamp(),
  `USUARIO_SESION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_categoria`
--

CREATE TABLE `sub_categoria` (
  `id_categoria_sub` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `id_archivo` int(11) DEFAULT NULL,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `fecha_edicion` datetime(6) DEFAULT NULL,
  `usuario_sesion_id` int(11) DEFAULT NULL,
  `modo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_USUARIO` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `CLAVE` varchar(155) NOT NULL,
  `TOKEN` varchar(155) NOT NULL,
  `ESTADO` varchar(10) NOT NULL,
  `INTENTO` int(11) DEFAULT NULL,
  `FECHA_CREACION` datetime NOT NULL DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime NOT NULL DEFAULT current_timestamp(),
  `ID_USUARIO_TIPO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_clave`
--

CREATE TABLE `usuario_clave` (
  `ID_USUARIO_CLAVE` int(11) NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `USUARIO` varchar(255) DEFAULT NULL,
  `CLAVE` varchar(255) DEFAULT NULL,
  `FECHA_CREACION` date DEFAULT NULL,
  `FECHA_EDICION` date DEFAULT NULL,
  `USUARIO_SESION_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_sesion`
--

CREATE TABLE `usuario_sesion` (
  `ID_USUARIO_SESION` int(11) NOT NULL,
  `USUARIO_ID` int(11) NOT NULL,
  `FECHA_CREACION` datetime NOT NULL DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime NOT NULL DEFAULT current_timestamp(),
  `IP_CONEXION` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_tipo`
--

CREATE TABLE `usuario_tipo` (
  `ID_USUARIO_TIPO` int(11) NOT NULL,
  `TIPO` varchar(10) NOT NULL,
  `DESCRIPCION` varchar(45) DEFAULT NULL,
  `FECHA_CREACION` datetime NOT NULL DEFAULT current_timestamp(),
  `FECHA_EDICION` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agendamiento`
--
ALTER TABLE `agendamiento`
  ADD PRIMARY KEY (`ID_AGENDAMIENTO`),
  ADD KEY `fk_AGENDAMIENTO_ID_EMPLEADO1_idx` (`ID_EMPLEADO`);

--
-- Indices de la tabla `archivo`
--
ALTER TABLE `archivo`
  ADD PRIMARY KEY (`ID_ARCHIVO`);

--
-- Indices de la tabla `calendario`
--
ALTER TABLE `calendario`
  ADD PRIMARY KEY (`ID_CALENDARIO`);

--
-- Indices de la tabla `carrito_compra`
--
ALTER TABLE `carrito_compra`
  ADD PRIMARY KEY (`ID_CARRITO`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`),
  ADD UNIQUE KEY `UK_gqotsute2hs9urwkx0rxtrbb3` (`codigo`),
  ADD UNIQUE KEY `UK_35t4wyxqrevf09uwx9e9p6o75` (`nombre`);

--
-- Indices de la tabla `chat_bot`
--
ALTER TABLE `chat_bot`
  ADD PRIMARY KEY (`ID_CHAT_BOT`);

--
-- Indices de la tabla `codigos_sms`
--
ALTER TABLE `codigos_sms`
  ADD PRIMARY KEY (`id_parametro`);

--
-- Indices de la tabla `conversacion_chatbot`
--
ALTER TABLE `conversacion_chatbot`
  ADD PRIMARY KEY (`ID_CONVERSACION`);

--
-- Indices de la tabla `datos_generales`
--
ALTER TABLE `datos_generales`
  ADD PRIMARY KEY (`ID_DATOS`);

--
-- Indices de la tabla `datos_json`
--
ALTER TABLE `datos_json`
  ADD PRIMARY KEY (`id_dato_json`);

--
-- Indices de la tabla `dato_personal`
--
ALTER TABLE `dato_personal`
  ADD PRIMARY KEY (`id_dato_personal`),
  ADD UNIQUE KEY `UK_cehr261knamqb1xla916twaw4` (`cedula`),
  ADD UNIQUE KEY `UK_5pxtnxq3qln072pndhh280st8` (`celular`),
  ADD UNIQUE KEY `UK_bgm2cab7kfhradpjficnkfhc6` (`correo`);

--
-- Indices de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD PRIMARY KEY (`ID_DEVOLUCION`),
  ADD KEY `fk_devoluciones_ordenServicio1_idx` (`ORDEN_SERVICIO_ID`),
  ADD KEY `fk_DEVOLUCION_USUARIO_SESION1_idx` (`USUARIO_SESION_ID`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`id_direccion`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD UNIQUE KEY `UK_s7etdgt27ptsmowd1skn67du0` (`contrato`);

--
-- Indices de la tabla `empleado_empresa`
--
ALTER TABLE `empleado_empresa`
  ADD PRIMARY KEY (`ID_EMPLEADO_EMPRESA`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`),
  ADD UNIQUE KEY `UK_a344uhvvn5iuti0u46a2e8no9` (`nit`),
  ADD UNIQUE KEY `UK_eoagp0ea8px4m4pb1nhf205da` (`sigla`);

--
-- Indices de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  ADD PRIMARY KEY (`ID_ENCUESTA`);

--
-- Indices de la tabla `encuesta_pregunta`
--
ALTER TABLE `encuesta_pregunta`
  ADD PRIMARY KEY (`ID_ENCUESTA_PREGUNTA`);

--
-- Indices de la tabla `encuesta_repuesta`
--
ALTER TABLE `encuesta_repuesta`
  ADD PRIMARY KEY (`ID_ENCUESTA_REPUESTA`),
  ADD KEY `fk_ENCUESTA_REPUESTA_ENCUESTA_PREGUNTA1_idx` (`ENCUESTA_PREGUNTA_ID`),
  ADD KEY `fk_ENCUESTA_REPUESTA_USUARIO1_idx` (`USUARIO_ID`),
  ADD KEY `fk_ENCUESTA_REPUESTA_USUARIO_SESION1_idx` (`USUARIO_SESION_ID`);

--
-- Indices de la tabla `especialidad_categoria_empleado`
--
ALTER TABLE `especialidad_categoria_empleado`
  ADD PRIMARY KEY (`ID_ESPECIALIDAD_CATEGORIA_EMPLEADO`),
  ADD KEY `fk_ESPECIALIDAD_CATEGORIA_EMPLEADO_ID_CATEGORIA1_idx` (`ID_CATEGORIA`),
  ADD KEY `fk_ESPECIALIDAD_CATEGORIA_EMPLEADO_ID_EMPLEADO1_idx` (`ID_EMPLEADO`),
  ADD KEY `fk_ESPECIALIDAD_CATEGORIA_EMPLEADO_USUARIO_SESION_ID_idx` (`USUARIO_SESION_ID`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`ID_ESTADO`),
  ADD UNIQUE KEY `TIPO_UNIQUE` (`TIPO`);

--
-- Indices de la tabla `estructura_tabla`
--
ALTER TABLE `estructura_tabla`
  ADD PRIMARY KEY (`ID_ESTRUCTURA_TABLA`),
  ADD UNIQUE KEY `NOMBRE_TABLA_UNIQUE` (`NOMBRE_TABLA`);

--
-- Indices de la tabla `evidencia_servicio`
--
ALTER TABLE `evidencia_servicio`
  ADD PRIMARY KEY (`ID_EVIDENCIA_SERVICIO`);

--
-- Indices de la tabla `favorito`
--
ALTER TABLE `favorito`
  ADD PRIMARY KEY (`ID_FAVORITO`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`ID_HORARIO`);

--
-- Indices de la tabla `manejo_excepcion`
--
ALTER TABLE `manejo_excepcion`
  ADD PRIMARY KEY (`ID_MANEJO_EXCEPCION`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`ID_MENSAJE`);

--
-- Indices de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD PRIMARY KEY (`ID_NOTIFICACION`);

--
-- Indices de la tabla `orden_servicio`
--
ALTER TABLE `orden_servicio`
  ADD PRIMARY KEY (`ID_ORDEN_SERVICIO`),
  ADD KEY `fk_USUARIO_ID_USUARIO_idx` (`ID_USUARIO`);

--
-- Indices de la tabla `orden_servicio_evidencia`
--
ALTER TABLE `orden_servicio_evidencia`
  ADD PRIMARY KEY (`ID_ORDEN_SERVICIO_EVIDENCIA`),
  ADD KEY `fk_ORDEN_SERVICIO_EVIDENCIA_ORDEN_SERVICIO_REGISTRO1_idx` (`ORDEN_SERVICIO_REGISTRO_ID`),
  ADD KEY `fk_ORDEN_SERVICIO_EVIDENCIA_ARCHIVO1_idx` (`ARCHIVO_ID`),
  ADD KEY `fk_ORDEN_SERVICIO_EVIDENCIA_USUARIO_SESION1_idx` (`USUARIO_SESION_ID`);

--
-- Indices de la tabla `orden_servicio_registro`
--
ALTER TABLE `orden_servicio_registro`
  ADD PRIMARY KEY (`ID_ORDEN_REGISTRO`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`ID_PAGO`);

--
-- Indices de la tabla `pago_anular`
--
ALTER TABLE `pago_anular`
  ADD PRIMARY KEY (`ID_PAGO_ANULAR`);

--
-- Indices de la tabla `parametro`
--
ALTER TABLE `parametro`
  ADD PRIMARY KEY (`id_parametro`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `programacion_servicio`
--
ALTER TABLE `programacion_servicio`
  ADD PRIMARY KEY (`ID_PROGRAMACION_SERVICIO`),
  ADD KEY `fk_PROGRAMACION_SERVICIO_PRODUCTO1_idx` (`PRODUCTO_ID_BASE`),
  ADD KEY `fk_PROGRAMACION_SERVICIO_PRODUCTO2_idx` (`PRODUCTO_ID_PROGAMADO`),
  ADD KEY `fk_PROGRAMACION_SERVICIO_USUARIO_SESION1_idx` (`USUARIO_SESION_ID`);

--
-- Indices de la tabla `sub_categoria`
--
ALTER TABLE `sub_categoria`
  ADD PRIMARY KEY (`id_categoria_sub`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_USUARIO`),
  ADD UNIQUE KEY `NOMBRE_UNIQUE` (`NOMBRE`),
  ADD UNIQUE KEY `UK_cto7dkti4t38iq8r4cqesbd8k` (`NOMBRE`),
  ADD KEY `fk_USUARIO_USUARIO_TIPO1_idx` (`ID_USUARIO_TIPO`);

--
-- Indices de la tabla `usuario_clave`
--
ALTER TABLE `usuario_clave`
  ADD PRIMARY KEY (`ID_USUARIO_CLAVE`);

--
-- Indices de la tabla `usuario_sesion`
--
ALTER TABLE `usuario_sesion`
  ADD PRIMARY KEY (`ID_USUARIO_SESION`),
  ADD KEY `fk_login_usuario1_idx` (`USUARIO_ID`);

--
-- Indices de la tabla `usuario_tipo`
--
ALTER TABLE `usuario_tipo`
  ADD PRIMARY KEY (`ID_USUARIO_TIPO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agendamiento`
--
ALTER TABLE `agendamiento`
  MODIFY `ID_AGENDAMIENTO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `archivo`
--
ALTER TABLE `archivo`
  MODIFY `ID_ARCHIVO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `calendario`
--
ALTER TABLE `calendario`
  MODIFY `ID_CALENDARIO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carrito_compra`
--
ALTER TABLE `carrito_compra`
  MODIFY `ID_CARRITO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `chat_bot`
--
ALTER TABLE `chat_bot`
  MODIFY `ID_CHAT_BOT` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `codigos_sms`
--
ALTER TABLE `codigos_sms`
  MODIFY `id_parametro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `conversacion_chatbot`
--
ALTER TABLE `conversacion_chatbot`
  MODIFY `ID_CONVERSACION` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datos_generales`
--
ALTER TABLE `datos_generales`
  MODIFY `ID_DATOS` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datos_json`
--
ALTER TABLE `datos_json`
  MODIFY `id_dato_json` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dato_personal`
--
ALTER TABLE `dato_personal`
  MODIFY `id_dato_personal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `id_direccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleado_empresa`
--
ALTER TABLE `empleado_empresa`
  MODIFY `ID_EMPLEADO_EMPRESA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  MODIFY `ID_ENCUESTA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `encuesta_pregunta`
--
ALTER TABLE `encuesta_pregunta`
  MODIFY `ID_ENCUESTA_PREGUNTA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `encuesta_repuesta`
--
ALTER TABLE `encuesta_repuesta`
  MODIFY `ID_ENCUESTA_REPUESTA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `especialidad_categoria_empleado`
--
ALTER TABLE `especialidad_categoria_empleado`
  MODIFY `ID_ESPECIALIDAD_CATEGORIA_EMPLEADO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `ID_ESTADO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estructura_tabla`
--
ALTER TABLE `estructura_tabla`
  MODIFY `ID_ESTRUCTURA_TABLA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evidencia_servicio`
--
ALTER TABLE `evidencia_servicio`
  MODIFY `ID_EVIDENCIA_SERVICIO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `favorito`
--
ALTER TABLE `favorito`
  MODIFY `ID_FAVORITO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `ID_HORARIO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `ID_MENSAJE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  MODIFY `ID_NOTIFICACION` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `orden_servicio`
--
ALTER TABLE `orden_servicio`
  MODIFY `ID_ORDEN_SERVICIO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `orden_servicio_evidencia`
--
ALTER TABLE `orden_servicio_evidencia`
  MODIFY `ID_ORDEN_SERVICIO_EVIDENCIA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `orden_servicio_registro`
--
ALTER TABLE `orden_servicio_registro`
  MODIFY `ID_ORDEN_REGISTRO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `ID_PAGO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pago_anular`
--
ALTER TABLE `pago_anular`
  MODIFY `ID_PAGO_ANULAR` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `parametro`
--
ALTER TABLE `parametro`
  MODIFY `id_parametro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `programacion_servicio`
--
ALTER TABLE `programacion_servicio`
  MODIFY `ID_PROGRAMACION_SERVICIO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sub_categoria`
--
ALTER TABLE `sub_categoria`
  MODIFY `id_categoria_sub` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario_clave`
--
ALTER TABLE `usuario_clave`
  MODIFY `ID_USUARIO_CLAVE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario_sesion`
--
ALTER TABLE `usuario_sesion`
  MODIFY `ID_USUARIO_SESION` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario_tipo`
--
ALTER TABLE `usuario_tipo`
  MODIFY `ID_USUARIO_TIPO` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agendamiento`
--
ALTER TABLE `agendamiento`
  ADD CONSTRAINT `fk_AGENDAMIENTO_ID_EMPLEADO1` FOREIGN KEY (`ID_EMPLEADO`) REFERENCES `empleado` (`id_empleado`);

--
-- Filtros para la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD CONSTRAINT `fk_DEVOLUCION_USUARIO_SESION1` FOREIGN KEY (`USUARIO_SESION_ID`) REFERENCES `usuario_sesion` (`USUARIO_ID`),
  ADD CONSTRAINT `fk_devoluciones_ordenServicio1` FOREIGN KEY (`ORDEN_SERVICIO_ID`) REFERENCES `orden_servicio` (`ID_ORDEN_SERVICIO`);

--
-- Filtros para la tabla `encuesta_repuesta`
--
ALTER TABLE `encuesta_repuesta`
  ADD CONSTRAINT `fk_ENCUESTA_REPUESTA_ENCUESTA_PREGUNTA1` FOREIGN KEY (`ENCUESTA_PREGUNTA_ID`) REFERENCES `encuesta_pregunta` (`ID_ENCUESTA_PREGUNTA`),
  ADD CONSTRAINT `fk_ENCUESTA_REPUESTA_USUARIO1` FOREIGN KEY (`USUARIO_ID`) REFERENCES `usuario` (`ID_USUARIO`),
  ADD CONSTRAINT `fk_ENCUESTA_REPUESTA_USUARIO_SESION1` FOREIGN KEY (`USUARIO_SESION_ID`) REFERENCES `usuario_sesion` (`ID_USUARIO_SESION`);

--
-- Filtros para la tabla `especialidad_categoria_empleado`
--
ALTER TABLE `especialidad_categoria_empleado`
  ADD CONSTRAINT `fk_ESPECIALIDAD_CATEGORIA_EMPLEADO_ID_CATEGORIA1` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `fk_ESPECIALIDAD_CATEGORIA_EMPLEADO_ID_EMPLEADO1` FOREIGN KEY (`ID_EMPLEADO`) REFERENCES `empleado` (`id_empleado`),
  ADD CONSTRAINT `fk_ESPECIALIDAD_CATEGORIA_EMPLEADO_USUARIO_SESION_ID` FOREIGN KEY (`USUARIO_SESION_ID`) REFERENCES `usuario_sesion` (`ID_USUARIO_SESION`);

--
-- Filtros para la tabla `orden_servicio_evidencia`
--
ALTER TABLE `orden_servicio_evidencia`
  ADD CONSTRAINT `fk_ORDEN_SERVICIO_EVIDENCIA_ARCHIVO1` FOREIGN KEY (`ARCHIVO_ID`) REFERENCES `archivo` (`ID_ARCHIVO`),
  ADD CONSTRAINT `fk_ORDEN_SERVICIO_EVIDENCIA_ORDEN_SERVICIO_REGISTRO1` FOREIGN KEY (`ORDEN_SERVICIO_REGISTRO_ID`) REFERENCES `orden_servicio_registro` (`ID_ORDEN_REGISTRO`),
  ADD CONSTRAINT `fk_ORDEN_SERVICIO_EVIDENCIA_USUARIO_SESION1` FOREIGN KEY (`USUARIO_SESION_ID`) REFERENCES `usuario_sesion` (`USUARIO_ID`);

--
-- Filtros para la tabla `programacion_servicio`
--
ALTER TABLE `programacion_servicio`
  ADD CONSTRAINT `fk_PROGRAMACION_SERVICIO_PRODUCTO1` FOREIGN KEY (`PRODUCTO_ID_BASE`) REFERENCES `producto` (`ID_PRODUCTO`),
  ADD CONSTRAINT `fk_PROGRAMACION_SERVICIO_PRODUCTO2` FOREIGN KEY (`PRODUCTO_ID_PROGAMADO`) REFERENCES `producto` (`ID_PRODUCTO`),
  ADD CONSTRAINT `fk_PROGRAMACION_SERVICIO_USUARIO_SESION1` FOREIGN KEY (`USUARIO_SESION_ID`) REFERENCES `usuario_sesion` (`USUARIO_ID`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_USUARIO_USUARIO_TIPO1` FOREIGN KEY (`ID_USUARIO_TIPO`) REFERENCES `usuario_tipo` (`ID_USUARIO_TIPO`);

--
-- Filtros para la tabla `usuario_sesion`
--
ALTER TABLE `usuario_sesion`
  ADD CONSTRAINT `fk_login_usuario1` FOREIGN KEY (`USUARIO_ID`) REFERENCES `usuario` (`ID_USUARIO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
