-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-04-2023 a las 05:36:44
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
-- Base de datos: `grupofycas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add clientes', 7, 'add_clientes'),
(26, 'Can change clientes', 7, 'change_clientes'),
(27, 'Can delete clientes', 7, 'delete_clientes'),
(28, 'Can view clientes', 7, 'view_clientes'),
(29, 'Can add facturas', 8, 'add_facturas'),
(30, 'Can change facturas', 8, 'change_facturas'),
(31, 'Can delete facturas', 8, 'delete_facturas'),
(32, 'Can view facturas', 8, 'view_facturas'),
(33, 'Can add historial facturas', 9, 'add_historialfacturas'),
(34, 'Can change historial facturas', 9, 'change_historialfacturas'),
(35, 'Can delete historial facturas', 9, 'delete_historialfacturas'),
(36, 'Can view historial facturas', 9, 'view_historialfacturas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `backendapi_clientes`
--

CREATE TABLE `backendapi_clientes` (
  `ID_CLIENTE` int(11) NOT NULL,
  `NOMBRE_APELLIDO` varchar(150) NOT NULL,
  `TELEFONO` varchar(15) NOT NULL,
  `CEDULA` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `backendapi_clientes`
--

INSERT INTO `backendapi_clientes` (`ID_CLIENTE`, `NOMBRE_APELLIDO`, `TELEFONO`, `CEDULA`) VALUES
(4, 'Jeremy Encarnacion Basilio', '829-722-3118', '402-2970588-0'),
(5, 'Erimer Castillo', '829-915-0930', '0000000000000'),
(6, 'Ericka Castillo Encarnacion', '829-633-4911', '4022970588-1'),
(7, 'Mercedes Encarnacion', '809-568-4788', '4022970588-2'),
(8, 'Heriz Castillo', '829-905-0930', '4022970588-3'),
(9, 'Leonel Fernandez', '809-000-1111', '402-1111111-1'),
(10, 'Luis Abinader', '809-000-1111', '402-10'),
(11, 'Jordi Wild', '809-000-2222', '402-09'),
(12, 'Victor Abdiel', '809-000-3333', '402-08'),
(13, 'Killua Zoldyck', '809-000-3333', '402-0000000-0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `backendapi_facturas`
--

CREATE TABLE `backendapi_facturas` (
  `ID_FACTURAS` int(11) NOT NULL,
  `MONTO_SOLICITADO` decimal(10,2) NOT NULL,
  `TASA` decimal(5,2) NOT NULL,
  `CUOTAS` decimal(5,2) NOT NULL,
  `CUOTAS_MENSUALES` decimal(10,2) NOT NULL,
  `CAPITAL` decimal(10,2) NOT NULL,
  `INTERES` decimal(10,2) NOT NULL,
  `FECHA` date NOT NULL,
  `NOMBRE_APELLIDO` varchar(150) NOT NULL,
  `TELEFONO` varchar(15) NOT NULL,
  `CEDULA` varchar(20) NOT NULL,
  `CLIENTE_ID_id` int(11) NOT NULL,
  `PAGO_NUEVO` decimal(10,2) DEFAULT NULL,
  `PAGO_REALIZADO` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `backendapi_facturas`
--

INSERT INTO `backendapi_facturas` (`ID_FACTURAS`, `MONTO_SOLICITADO`, `TASA`, `CUOTAS`, `CUOTAS_MENSUALES`, `CAPITAL`, `INTERES`, `FECHA`, `NOMBRE_APELLIDO`, `TELEFONO`, `CEDULA`, `CLIENTE_ID_id`, `PAGO_NUEVO`, `PAGO_REALIZADO`) VALUES
(3, '25000.00', '1.50', '10.00', '3750.00', '2500.00', '1250.00', '2023-04-30', 'Jeremy Encarnacion Basilio', '829-722-3118', '402-2970588-0', 4, '0.00', '0.00'),
(4, '1000.00', '1.20', '10.00', '3600.00', '3000.00', '600.00', '2023-05-25', 'Ericka Castillo Encarnacion', '829-633-4911', '4022970588-1', 6, '0.00', '0.00'),
(5, '50000.00', '2.00', '20.00', '10000.00', '5000.00', '5000.00', '2023-04-28', 'Mercedes Encarnacion', '809-568-4788', '4022970588-2', 7, '0.00', '5000.00'),
(6, '10000.00', '1.80', '10.00', '5850.00', '3250.00', '2600.00', '2023-05-25', 'Heriz Castillo', '829-905-0930', '4022970588-3', 8, '0.00', '3800.00'),
(11, '142012.00', '1.48', '22.00', '8880.00', '5873.00', '3000.00', '2023-04-14', 'Leonel Fernandez', '809-000-1111', '402-1111111-1', 9, '10000.00', '0.00'),
(12, '93450.00', '1.48', '14.00', '9879.00', '6900.00', '3000.00', '2023-04-18', 'Luis Abinader', '809-000-1111', '402-10', 10, '0.00', '9900.00'),
(13, '23208.00', '1.50', '5.00', '6962.00', '4403.00', '2500.00', '2023-04-19', 'Jordi Wild', '809-000-2222', '402-09', 11, '0.00', '6903.00'),
(14, '14180.00', '1.50', '1.00', '21270.00', '12539.00', '7500.00', '2023-04-19', 'Victor Abdiel', '809-000-3333', '402-08', 12, '0.00', '20039.00'),
(15, '129250.00', '1.48', '20.00', '9564.50', '2000.00', '3000.00', '2023-04-19', 'Killua Zoldyck', '809-000-3333', '402-0000000-0', 13, '0.00', '5000.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `backendapi_historialfacturas`
--

CREATE TABLE `backendapi_historialfacturas` (
  `ID_HISTORIALFACTURA` int(11) NOT NULL,
  `MONTO_SOLICITADO` decimal(10,2) NOT NULL,
  `TASA` decimal(5,2) NOT NULL,
  `CUOTAS` decimal(5,2) NOT NULL,
  `CUOTAS_MENSUALES` decimal(10,2) NOT NULL,
  `CAPITAL` decimal(10,2) NOT NULL,
  `INTERES` decimal(10,2) NOT NULL,
  `PAGO_REALIZADO` decimal(10,2) DEFAULT NULL,
  `FECHA` date NOT NULL,
  `NOMBRE_APELLIDO` varchar(150) NOT NULL,
  `TELEFONO` varchar(15) NOT NULL,
  `CEDULA` varchar(20) NOT NULL,
  `CLIENTE_ID_id` int(11) NOT NULL,
  `FACTURA_ID_id` int(11) NOT NULL,
  `PAGO_NUEVO` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `backendapi_historialfacturas`
--

INSERT INTO `backendapi_historialfacturas` (`ID_HISTORIALFACTURA`, `MONTO_SOLICITADO`, `TASA`, `CUOTAS`, `CUOTAS_MENSUALES`, `CAPITAL`, `INTERES`, `PAGO_REALIZADO`, `FECHA`, `NOMBRE_APELLIDO`, `TELEFONO`, `CEDULA`, `CLIENTE_ID_id`, `FACTURA_ID_id`, `PAGO_NUEVO`) VALUES
(1, '25000.00', '1.50', '10.00', '3750.00', '2500.00', '1250.00', NULL, '0000-00-00', 'Jeremy Encarnacion Basilio', '829-722-3118', '402-2970588-0', 4, 3, NULL),
(2, '20000.00', '1.50', '10.00', '3750.00', '2500.00', '1250.00', NULL, '2023-04-30', 'Jeremy Encarnacion Basilio', '829-722-3118', '402-2970588-0', 4, 3, NULL),
(3, '15000.00', '1.50', '10.00', '3750.00', '2500.00', '1250.00', '10000.00', '2023-04-30', 'Jeremy Encarnacion Basilio', '829-722-3118', '402-2970588-0', 4, 3, '0.00'),
(4, '5000.00', '1.50', '10.00', '3750.00', '2500.00', '1250.00', '20000.00', '2023-04-30', 'Jeremy Encarnacion Basilio', '829-722-3118', '402-2970588-0', 4, 3, '0.00'),
(5, '26400.00', '1.20', '10.00', '3600.00', '3000.00', '600.00', '3600.00', '2023-05-25', 'Ericka Castillo Encarnacion', '829-633-4911', '4022970588-1', 6, 4, '0.00'),
(6, '22800.00', '1.20', '10.00', '3600.00', '3000.00', '600.00', '7200.00', '2023-05-25', 'Ericka Castillo Encarnacion', '829-633-4911', '4022970588-1', 4, 4, '0.00'),
(7, '19200.00', '1.20', '10.00', '3600.00', '3000.00', '600.00', '10800.00', '2023-05-25', 'Ericka Castillo Encarnacion', '829-633-4911', '4022970588-1', 6, 4, '0.00'),
(8, '15600.00', '1.20', '10.00', '3600.00', '3000.00', '600.00', '14400.00', '2023-05-25', 'Ericka Castillo Encarnacion', '829-633-4911', '4022970588-1', 6, 4, '0.00'),
(9, '12000.00', '1.20', '10.00', '3600.00', '3000.00', '600.00', '3600.00', '2023-05-25', 'Ericka Castillo Encarnacion', '829-633-4911', '4022970588-1', 6, 4, '0.00'),
(10, '8400.00', '1.20', '10.00', '3600.00', '3000.00', '600.00', '7200.00', '2023-05-25', 'Ericka Castillo Encarnacion', '829-633-4911', '4022970588-1', 6, 4, '0.00'),
(11, '4800.00', '1.20', '10.00', '3600.00', '3000.00', '600.00', '10800.00', '2023-05-25', 'Ericka Castillo Encarnacion', '829-633-4911', '4022970588-1', 6, 4, '0.00'),
(12, '1200.00', '1.20', '10.00', '3600.00', '3000.00', '600.00', '3600.00', '2023-05-25', 'Ericka Castillo Encarnacion', '829-633-4911', '4022970588-1', 6, 4, '0.00'),
(13, '95000.00', '2.00', '20.00', '10000.00', '5000.00', '5000.00', '5000.00', '2023-04-28', 'Mercedes Encarnacion', '809-568-4788', '4022970588-2', 7, 5, '0.00'),
(14, '90000.00', '2.00', '20.00', '10000.00', '5000.00', '5000.00', '10000.00', '2023-04-28', 'Mercedes Encarnacion', '809-568-4788', '4022970588-2', 7, 5, '0.00'),
(15, '1200.00', '1.20', '10.00', '3600.00', '3000.00', '600.00', '0.00', '2023-05-25', 'Ericka Castillo Encarnacion', '829-633-4911', '4022970588-1', 6, 4, '0.00'),
(16, '100000.00', '2.00', '20.00', '10000.00', '5000.00', '5000.00', '15000.00', '2023-04-28', 'Mercedes Encarnacion', '809-568-4788', '4022970588-2', 7, 5, '0.00'),
(17, '85000.00', '2.00', '20.00', '10000.00', '5000.00', '5000.00', '15000.00', '2023-04-28', 'Mercedes Encarnacion', '809-568-4788', '4022970588-2', 7, 5, '0.00'),
(18, '80000.00', '2.00', '20.00', '10000.00', '5000.00', '5000.00', '20000.00', '2023-04-28', 'Mercedes Encarnacion', '809-568-4788', '4022970588-2', 7, 5, '0.00'),
(19, '75000.00', '2.00', '20.00', '10000.00', '5000.00', '5000.00', '5000.00', '2023-04-28', 'Mercedes Encarnacion', '809-568-4788', '4022970588-2', 7, 5, '0.00'),
(20, '70000.00', '2.00', '20.00', '10000.00', '5000.00', '5000.00', '5000.00', '2023-04-28', 'Mercedes Encarnacion', '809-568-4788', '4022970588-2', 7, 5, '0.00'),
(21, '65000.00', '2.00', '20.00', '10000.00', '5000.00', '5000.00', '10000.00', '2023-04-28', 'Mercedes Encarnacion', '809-568-4788', '4022970588-2', 7, 5, '0.00'),
(22, '60000.00', '2.00', '20.00', '10000.00', '5000.00', '5000.00', '15000.00', '2023-04-28', 'Mercedes Encarnacion', '809-568-4788', '4022970588-2', 7, 5, '0.00'),
(23, '55000.00', '2.00', '20.00', '10000.00', '5000.00', '5000.00', '5000.00', '2023-04-28', 'Mercedes Encarnacion', '809-568-4788', '4022970588-2', 7, 5, '0.00'),
(24, '50000.00', '2.00', '20.00', '10000.00', '5000.00', '5000.00', '5000.00', '2023-04-28', 'Mercedes Encarnacion', '809-568-4788', '4022970588-2', 7, 5, '0.00'),
(25, '26650.00', '1.80', '10.00', '5850.00', '3250.00', '2600.00', '5850.00', '2023-05-25', 'Heriz Castillo', '829-905-0930', '4022970588-3', 8, 6, '0.00'),
(26, '21650.00', '1.80', '10.00', '5850.00', '3250.00', '2600.00', '5000.00', '2023-05-25', 'Heriz Castillo', '829-905-0930', '4022970588-3', 8, 6, '0.00'),
(27, '19650.00', '1.80', '10.00', '5850.00', '3250.00', '2600.00', '2000.00', '2023-05-25', 'Heriz Castillo', '829-905-0930', '4022970588-3', 8, 6, '0.00'),
(28, '13800.00', '1.80', '10.00', '5850.00', '3250.00', '2600.00', '5850.00', '2023-05-25', 'Heriz Castillo', '829-905-0930', '4022970588-3', 8, 6, '0.00'),
(29, '10000.00', '1.80', '10.00', '5850.00', '3250.00', '2600.00', '3800.00', '2023-05-25', 'Heriz Castillo', '829-905-0930', '4022970588-3', 8, 6, '0.00'),
(36, '143750.00', '1.48', '24.00', '8865.00', '6250.00', '3000.00', '9250.00', '2023-04-14', 'Leonel Fernandez', '809-000-1111', '402-1111111-1', 9, 11, '0.00'),
(37, '137885.00', '1.48', '23.00', '8872.60', '5865.00', '3000.00', '8865.00', '2023-04-14', 'Leonel Fernandez', '809-000-1111', '402-1111111-1', 9, 11, '0.00'),
(38, '132012.00', '1.48', '22.00', '8880.00', '5873.00', '3000.00', '8873.00', '2023-04-14', 'Leonel Fernandez', '809-000-1111', '402-1111111-1', 9, 11, '0.00'),
(39, '132012.00', '1.48', '22.00', '8880.00', '5873.00', '3000.00', '0.00', '2023-04-14', 'Leonel Fernandez', '809-000-1111', '402-1111111-1', 9, 11, '10000.00'),
(40, '142012.00', '1.48', '22.00', '8880.00', '5873.00', '3000.00', '0.00', '2023-04-14', 'Leonel Fernandez', '809-000-1111', '402-1111111-1', 9, 11, '10000.00'),
(41, '142012.00', '1.48', '22.00', '8880.00', '5873.00', '3000.00', '0.00', '2023-04-14', 'Leonel Fernandez', '809-000-1111', '402-1111111-1', 9, 11, '10000.00'),
(42, '142012.00', '1.48', '22.00', '8880.00', '5873.00', '3000.00', '0.00', '2023-04-14', 'Leonel Fernandez', '809-000-1111', '402-1111111-1', 9, 11, '10000.00'),
(43, '142012.00', '1.48', '22.00', '8880.00', '5873.00', '3000.00', '0.00', '2023-04-14', 'Leonel Fernandez', '809-000-1111', '402-1111111-1', 9, 11, '10000.00'),
(44, '142012.00', '1.48', '22.00', '8880.00', '5873.00', '3000.00', '0.00', '2023-04-14', 'Leonel Fernandez', '809-000-1111', '402-1111111-1', 9, 11, '10000.00'),
(45, '143750.00', '1.48', '23.00', '9250.00', '6250.00', '3000.00', '9250.00', '2023-04-18', 'Luis Abinader', '809-000-1111', '402-10', 10, 12, '0.00'),
(46, '137500.00', '1.48', '22.00', '9250.00', '6250.00', '3000.00', '9250.00', '2023-04-18', 'Luis Abinader', '809-000-1111', '402-10', 10, 12, '0.00'),
(47, '132500.00', '1.48', '21.00', '9338.00', '5000.00', '3000.00', '8000.00', '2023-04-18', 'Luis Abinader', '809-000-1111', '402-10', 10, 12, '0.00'),
(48, '137500.00', '1.48', '21.00', '9338.00', '5000.00', '3000.00', '8000.00', '2023-04-18', 'Luis Abinader', '809-000-1111', '402-10', 10, 12, '5000.00'),
(49, '131162.00', '1.48', '20.00', '9706.00', '6338.00', '3000.00', '9338.00', '2023-04-18', 'Luis Abinader', '809-000-1111', '402-10', 10, 12, '5000.00'),
(50, '124456.00', '1.48', '19.00', '9695.00', '6706.00', '3000.00', '9706.00', '2023-04-18', 'Luis Abinader', '809-000-1111', '402-10', 10, 12, '0.00'),
(51, '125456.00', '1.48', '19.00', '9695.00', '6706.00', '3000.00', '0.00', '2023-04-18', 'Luis Abinader', '809-000-1111', '402-10', 10, 12, '0.00'),
(52, '118761.00', '1.48', '18.00', '9765.00', '6695.00', '3000.00', '9695.00', '2023-04-18', 'Luis Abinader', '809-000-1111', '402-10', 10, 12, '0.00'),
(53, '119761.00', '1.48', '18.00', '9765.00', '6695.00', '3000.00', '9695.00', '2023-04-18', 'Luis Abinader', '809-000-1111', '402-10', 10, 12, '1000.00'),
(54, '112996.00', '1.48', '17.00', '983700.00', '6765.00', '3000.00', '9765.00', '2023-04-18', 'Luis Abinader', '809-000-1111', '402-10', 10, 12, '1000.00'),
(55, '106159.00', '1.48', '16.00', '9819.00', '6837.00', '3000.00', '9837.00', '2023-04-18', 'Luis Abinader', '809-000-1111', '402-10', 10, 12, '0.00'),
(56, '107159.00', '1.48', '16.00', '9819.00', '6837.00', '3000.00', '9837.00', '2023-04-18', 'Luis Abinader', '809-000-1111', '402-10', 10, 12, '1000.00'),
(57, '100340.00', '1.48', '15.00', '9900.00', '6819.00', '3000.00', '9819.00', '2023-04-18', 'Luis Abinader', '809-000-1111', '402-10', 10, 12, '0.00'),
(58, '45000.00', '1.50', '10.00', '6750.00', '5000.00', '2500.00', '7500.00', '2023-04-19', 'Jordi Wild', '809-000-2222', '402-09', 11, 13, '0.00'),
(59, '40750.00', '1.50', '9.00', '6791.00', '4250.00', '2500.00', '6750.00', '2023-04-19', 'Jordi Wild', '809-000-2222', '402-09', 11, 13, '0.00'),
(60, '36459.00', '1.50', '8.00', '6836.00', '4291.00', '2500.00', '6791.00', '2023-04-19', 'Jordi Wild', '809-000-2222', '402-09', 11, 13, '0.00'),
(61, '31959.00', '1.50', '7.00', '6848.00', '4500.00', '2500.00', '7000.00', '2023-04-19', 'Jordi Wild', '809-000-2222', '402-09', 11, 13, '0.00'),
(62, '27611.00', '1.50', '6.00', '6903.00', '4348.00', '2500.00', '6848.00', '2023-04-19', 'Jordi Wild', '809-000-2222', '402-09', 11, 13, '0.00'),
(63, '27611.00', '1.50', '5.00', '6903.00', '4348.00', '2500.00', '6903.00', '2023-04-19', 'Jordi Wild', '809-000-2222', '402-09', 11, 13, '0.00'),
(64, '23208.00', '1.50', '5.00', '6962.00', '4403.00', '2500.00', '6903.00', '2023-04-19', 'Jordi Wild', '809-000-2222', '402-09', 11, 13, '0.00'),
(65, '60000.00', '1.50', '5.00', '18000.00', '15000.00', '7500.00', '22500.00', '2023-04-19', 'Victor Abdiel', '809-000-3333', '402-08', 12, 14, '0.00'),
(66, '49500.00', '1.50', '4.00', '18562.50', '10500.00', '7500.00', '18000.00', '2023-04-19', 'Victor Abdiel', '809-000-3333', '402-08', 12, 14, '0.00'),
(67, '38438.00', '1.50', '3.00', '19219.00', '11062.00', '7500.00', '18562.00', '2023-04-19', 'Victor Abdiel', '809-000-3333', '402-08', 12, 14, '0.00'),
(68, '26719.00', '1.50', '2.00', '20039.25', '11719.00', '7500.00', '19219.00', '2023-04-19', 'Victor Abdiel', '809-000-3333', '402-08', 12, 14, '0.00'),
(69, '14180.00', '1.50', '1.00', '21270.00', '12539.00', '7500.00', '20039.00', '2023-04-19', 'Victor Abdiel', '809-000-3333', '402-08', 12, 14, '0.00'),
(70, '100350.00', '1.48', '15.00', '9900.00', '6819.00', '3000.00', '0.00', '2023-04-18', 'Luis Abinader', '809-000-1111', '402-10', 10, 12, '10.00'),
(71, '93450.00', '1.48', '14.00', '9879.00', '6900.00', '3000.00', '9900.00', '2023-04-18', 'Luis Abinader', '809-000-1111', '402-10', 10, 12, '0.00'),
(72, '143750.00', '1.48', '23.00', '9250.00', '6250.00', '3000.00', '9250.00', '2023-04-19', 'Killua Zoldyck', '809-000-3333', '402-0000000-0', 13, 15, '0.00'),
(73, '137500.00', '1.48', '22.00', '9250.00', '6250.00', '3000.00', '9250.00', '2023-04-19', 'Killua Zoldyck', '809-000-3333', '402-0000000-0', 13, 15, '0.00'),
(74, '131250.00', '1.48', '21.00', '9250.00', '6250.00', '3000.00', '9250.00', '2023-04-19', 'Killua Zoldyck', '809-000-3333', '402-0000000-0', 13, 15, '0.00'),
(75, '129250.00', '1.48', '20.00', '9564.50', '2000.00', '3000.00', '5000.00', '2023-04-19', 'Killua Zoldyck', '809-000-3333', '402-0000000-0', 13, 15, '0.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'BackendAPI', 'clientes'),
(8, 'BackendAPI', 'facturas'),
(9, 'BackendAPI', 'historialfacturas'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'BackendAPI', '0001_initial', '2023-04-04 12:47:42.839792'),
(2, 'contenttypes', '0001_initial', '2023-04-04 12:47:44.227780'),
(3, 'auth', '0001_initial', '2023-04-04 12:47:55.890849'),
(4, 'admin', '0001_initial', '2023-04-04 12:47:59.874983'),
(5, 'admin', '0002_logentry_remove_auto_add', '2023-04-04 12:47:59.924978'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-04 12:48:00.004979'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-04-04 12:48:00.969952'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-04-04 12:48:02.130107'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-04-04 12:48:02.282128'),
(10, 'auth', '0004_alter_user_username_opts', '2023-04-04 12:48:02.312142'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-04-04 12:48:02.812021'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-04-04 12:48:02.847000'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-04-04 12:48:03.022306'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-04-04 12:48:03.389412'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-04-04 12:48:03.478924'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-04-04 12:48:03.568989'),
(17, 'auth', '0011_update_proxy_permissions', '2023-04-04 12:48:03.639001'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-04-04 12:48:03.748989'),
(19, 'sessions', '0001_initial', '2023-04-04 12:48:04.610203'),
(20, 'BackendAPI', '0002_facturas_pago_nuevo_facturas_pago_realizado_and_more', '2023-04-09 18:54:21.682199'),
(21, 'BackendAPI', '0003_alter_facturas_capital_alter_facturas_cuotas_and_more', '2023-04-09 19:24:16.026455');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `backendapi_clientes`
--
ALTER TABLE `backendapi_clientes`
  ADD PRIMARY KEY (`ID_CLIENTE`);

--
-- Indices de la tabla `backendapi_facturas`
--
ALTER TABLE `backendapi_facturas`
  ADD PRIMARY KEY (`ID_FACTURAS`),
  ADD KEY `BackendAPI_facturas_CLIENTE_ID_id_1fd43b97_fk_BackendAP` (`CLIENTE_ID_id`);

--
-- Indices de la tabla `backendapi_historialfacturas`
--
ALTER TABLE `backendapi_historialfacturas`
  ADD PRIMARY KEY (`ID_HISTORIALFACTURA`),
  ADD KEY `BackendAPI_historial_CLIENTE_ID_id_940d8020_fk_BackendAP` (`CLIENTE_ID_id`),
  ADD KEY `BackendAPI_historial_FACTURA_ID_id_ea8ebe54_fk_BackendAP` (`FACTURA_ID_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `backendapi_clientes`
--
ALTER TABLE `backendapi_clientes`
  MODIFY `ID_CLIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `backendapi_facturas`
--
ALTER TABLE `backendapi_facturas`
  MODIFY `ID_FACTURAS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `backendapi_historialfacturas`
--
ALTER TABLE `backendapi_historialfacturas`
  MODIFY `ID_HISTORIALFACTURA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `backendapi_facturas`
--
ALTER TABLE `backendapi_facturas`
  ADD CONSTRAINT `BackendAPI_facturas_CLIENTE_ID_id_1fd43b97_fk_BackendAP` FOREIGN KEY (`CLIENTE_ID_id`) REFERENCES `backendapi_clientes` (`ID_CLIENTE`);

--
-- Filtros para la tabla `backendapi_historialfacturas`
--
ALTER TABLE `backendapi_historialfacturas`
  ADD CONSTRAINT `BackendAPI_historial_CLIENTE_ID_id_940d8020_fk_BackendAP` FOREIGN KEY (`CLIENTE_ID_id`) REFERENCES `backendapi_clientes` (`ID_CLIENTE`),
  ADD CONSTRAINT `BackendAPI_historial_FACTURA_ID_id_ea8ebe54_fk_BackendAP` FOREIGN KEY (`FACTURA_ID_id`) REFERENCES `backendapi_facturas` (`ID_FACTURAS`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
