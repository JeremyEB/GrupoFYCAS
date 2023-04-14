-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-04-2023 a las 05:55:29
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
-- Base de datos: `bbdd_inventario`
--
CREATE DATABASE IF NOT EXISTS `bbdd_inventario` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bbdd_inventario`;

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
(25, 'Can add facturas', 7, 'add_facturas'),
(26, 'Can change facturas', 7, 'change_facturas'),
(27, 'Can delete facturas', 7, 'delete_facturas'),
(28, 'Can view facturas', 7, 'view_facturas'),
(29, 'Can add usuario', 8, 'add_usuario'),
(30, 'Can change usuario', 8, 'change_usuario'),
(31, 'Can delete usuario', 8, 'delete_usuario'),
(32, 'Can view usuario', 8, 'view_usuario'),
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
-- Estructura de tabla para la tabla `backendapi_facturas`
--

CREATE TABLE `backendapi_facturas` (
  `ID_Facturas` int(11) NOT NULL,
  `Monto_Solicitado` decimal(10,2) NOT NULL,
  `Tasa` decimal(10,2) NOT NULL,
  `Cuotas` decimal(10,2) NOT NULL,
  `Cuotas_Mensuales` decimal(10,2) NOT NULL,
  `Monto_Pagar` decimal(10,2) NOT NULL,
  `Capital` decimal(10,2) NOT NULL,
  `Interes` decimal(10,2) NOT NULL,
  `Fecha` date NOT NULL,
  `Nombre_Apellido` varchar(150) NOT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Cedula` varchar(20) DEFAULT NULL,
  `Usuario_ID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `backendapi_facturas`
--

INSERT INTO `backendapi_facturas` (`ID_Facturas`, `Monto_Solicitado`, `Tasa`, `Cuotas`, `Cuotas_Mensuales`, `Monto_Pagar`, `Capital`, `Interes`, `Fecha`, `Nombre_Apellido`, `Telefono`, `Cedula`, `Usuario_ID_id`) VALUES
(1, '20000.00', '20.00', '20.00', '20000.00', '20000.00', '1000.00', '18000.00', '2023-03-04', 'Jeremy Encarnacion Basilio', '829-722-3118', '402-2970588-0', 1),
(2, '80000.00', '8.00', '20.00', '12800.00', '32000.00', '4000.00', '8800.00', '2023-03-24', 'Erimer Castillo Encarnacion', '829-915-0930', '000-0000000-0', 2),
(3, '800.00', '8.00', '20.00', '128.00', '320.00', '40.00', '88.00', '2023-03-12', 'Jeremy Encarnacion Basilio', '829-722-3118', '402-2970588-0', 1),
(4, '800.00', '8.00', '20.00', '128.00', '325.00', '40.00', '88.00', '2023-03-05', 'Jeremy Encarnacion Basilio', '829-722-3118', '402-2970588-0', 1),
(5, '1600.00', '16.00', '2.00', '102400.00', '12800.00', '800.00', '101600.00', '2023-03-11', 'Erimer Castillo Encarnacion', '829-915-0930', '000-0000000-0', 2),
(6, '80000.00', '8.00', '30.00', '12800.00', '32000.00', '4098.00', '8800.00', '2023-03-17', 'Junior Carmona', '809-000-0000', '111-1111111-1', 3),
(7, '10000.00', '10.00', '10.00', '10000.00', '10000.00', '1000.00', '9000.00', '2023-03-07', 'Ericka Castillo Encarnacion', '829-633--4911', '222-2222222-2', 4),
(8, '20000.00', '1.50', '10.00', '450.00', '1500.00', '2000.00', '350.00', '2023-03-10', 'Hector Lavoe', '809-222-2222', '402-2970588-2', 5),
(9, '5000.00', '1.50', '10.00', '112.50', '754.00', '500.00', '357.00', '2023-03-29', 'Mon Laferte', '809-590-3080', '402-2980566-0', 6),
(10, '25.00', '1.00', '5.00', '1.00', '5.00', '5.00', '4.00', '2023-03-29', 'Mon Laferte', '809-590-3080', '402-2980566-0', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `backendapi_historialfacturas`
--

CREATE TABLE `backendapi_historialfacturas` (
  `ID_HistorialFactura` int(11) NOT NULL,
  `Monto_Solicitado` decimal(10,2) NOT NULL,
  `Tasa` decimal(10,2) NOT NULL,
  `Cuotas` decimal(10,2) NOT NULL,
  `Cuotas_Mensuales` decimal(10,2) NOT NULL,
  `Monto_Pagar` decimal(10,2) NOT NULL,
  `Capital` decimal(10,2) NOT NULL,
  `Interes` decimal(10,2) NOT NULL,
  `Fecha` date NOT NULL,
  `Nombre_Apellido` varchar(150) NOT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Cedula` varchar(20) DEFAULT NULL,
  `Factura_ID_id` int(11) NOT NULL,
  `Usuario_ID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `backendapi_historialfacturas`
--

INSERT INTO `backendapi_historialfacturas` (`ID_HistorialFactura`, `Monto_Solicitado`, `Tasa`, `Cuotas`, `Cuotas_Mensuales`, `Monto_Pagar`, `Capital`, `Interes`, `Fecha`, `Nombre_Apellido`, `Telefono`, `Cedula`, `Factura_ID_id`, `Usuario_ID_id`) VALUES
(1, '20000.00', '20.00', '20.00', '20000.00', '20000.00', '1000.00', '1900.00', '2023-03-04', 'Jeremy Encarnacion Basilio', '829-722-3118', '402-2970588-0', 1, 1),
(2, '80000.00', '8.00', '20.00', '12800.00', '32000.00', '4100.00', '8800.00', '2023-03-24', 'Erimer Castillo Encarnacion', '829-915-0930', '000-0000000-0', 2, 2),
(3, '80000.00', '8.00', '20.00', '12800.00', '32000.00', '4000.00', '8800.00', '2023-03-24', 'Erimer Castillo Encarnacion', '829-915-0930', '000-0000000-0', 2, 2),
(4, '80000.00', '8.00', '20.00', '12800.00', '32000.00', '4100.00', '8800.00', '2023-03-24', 'Erimer Castillo Encarnacion', '829-915-0930', '000-0000000-0', 2, 2),
(5, '80000.00', '8.00', '20.00', '12800.00', '32000.00', '4000.00', '8800.00', '2023-03-24', 'Erimer Castillo Encarnacion', '829-915-0930', '000-0000000-0', 2, 2),
(6, '20000.00', '20.00', '20.00', '20000.00', '20000.00', '1000.00', '18000.00', '2023-03-04', 'Jeremy Encarnacion Basilio', '829-722-3118', '402-2970588-0', 1, 1),
(7, '80000.00', '8.00', '30.00', '12800.00', '32000.00', '4000.00', '8800.00', '2023-03-10', 'Junior Carmona', '809-000-0000', '111-1111111-1', 6, 3),
(8, '80000.00', '8.00', '30.00', '12800.00', '32000.00', '4098.00', '8800.00', '2023-03-17', 'Junior Carmona', '809-000-0000', '111-1111111-1', 6, 3),
(9, '80000.00', '8.00', '30.00', '12800.00', '32000.00', '4098.00', '8800.00', '2023-03-17', 'Junior Carmona', '809-000-0000', '111-1111111-1', 6, 3),
(10, '800.00', '8.00', '20.00', '128.00', '325.00', '40.00', '88.00', '2023-03-05', 'Jeremy Encarnacion Basilio', '829-722-3118', '402-2970588-0', 4, 1),
(11, '20000.00', '1.50', '10.00', '450.00', '1500.00', '2000.00', '350.00', '2023-03-10', 'Hector Lavoe', '809-222-2222', '402-2970588-2', 8, 5),
(12, '5000.00', '1.50', '10.00', '112.50', '754.00', '500.00', '357.00', '2023-03-29', 'Mon Laferte', '809-590-3080', '402-2980566-0', 9, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `backendapi_usuario`
--

CREATE TABLE `backendapi_usuario` (
  `ID_USUARIO` int(11) NOT NULL,
  `Nombre_Apellido` varchar(150) NOT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Cedula` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `backendapi_usuario`
--

INSERT INTO `backendapi_usuario` (`ID_USUARIO`, `Nombre_Apellido`, `Telefono`, `Cedula`) VALUES
(1, 'Jeremy Encarnacion Basilio', '829-722-3118', '402-2970588-0'),
(2, 'Erimer Castillo Encarnacion', '829-915-0930', '000-0000000-0'),
(3, 'Junior Carmona', '809-000-0000', '111-1111111-1'),
(4, 'Ericka Castillo Encarnacion', '829-633--4911', '222-2222222-2'),
(5, 'Hector Lavoe', '809-222-2222', '402-2970588-2'),
(6, 'Mon Laferte', '809-590-3080', '402-2980566-0');

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
(7, 'BackendAPI', 'facturas'),
(9, 'BackendAPI', 'historialfacturas'),
(8, 'BackendAPI', 'usuario'),
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
(1, 'BackendAPI', '0001_initial', '2023-03-05 02:34:38.171127'),
(2, 'contenttypes', '0001_initial', '2023-03-05 02:34:39.677300'),
(3, 'auth', '0001_initial', '2023-03-05 02:34:53.492004'),
(4, 'admin', '0001_initial', '2023-03-05 02:34:55.836701'),
(5, 'admin', '0002_logentry_remove_auto_add', '2023-03-05 02:34:55.919701'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-05 02:34:56.014701'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-03-05 02:34:56.775876'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-03-05 02:34:58.319955'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-03-05 02:34:58.509170'),
(10, 'auth', '0004_alter_user_username_opts', '2023-03-05 02:34:58.602170'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-03-05 02:34:59.331175'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-03-05 02:34:59.387169'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-03-05 02:34:59.496169'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-03-05 02:34:59.804220'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-03-05 02:35:00.408526'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-03-05 02:35:00.641517'),
(17, 'auth', '0011_update_proxy_permissions', '2023-03-05 02:35:00.700443'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-03-05 02:35:00.911443'),
(19, 'sessions', '0001_initial', '2023-03-05 02:35:01.513864');

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
-- Indices de la tabla `backendapi_facturas`
--
ALTER TABLE `backendapi_facturas`
  ADD PRIMARY KEY (`ID_Facturas`),
  ADD KEY `BackendAPI_facturas_Usuario_ID_id_611ad4e9_fk_BackendAP` (`Usuario_ID_id`);

--
-- Indices de la tabla `backendapi_historialfacturas`
--
ALTER TABLE `backendapi_historialfacturas`
  ADD PRIMARY KEY (`ID_HistorialFactura`),
  ADD KEY `BackendAPI_historial_Factura_ID_id_30bf3886_fk_BackendAP` (`Factura_ID_id`),
  ADD KEY `BackendAPI_historial_Usuario_ID_id_c8afca00_fk_BackendAP` (`Usuario_ID_id`);

--
-- Indices de la tabla `backendapi_usuario`
--
ALTER TABLE `backendapi_usuario`
  ADD PRIMARY KEY (`ID_USUARIO`);

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
-- AUTO_INCREMENT de la tabla `backendapi_facturas`
--
ALTER TABLE `backendapi_facturas`
  MODIFY `ID_Facturas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `backendapi_historialfacturas`
--
ALTER TABLE `backendapi_historialfacturas`
  MODIFY `ID_HistorialFactura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `backendapi_usuario`
--
ALTER TABLE `backendapi_usuario`
  MODIFY `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  ADD CONSTRAINT `BackendAPI_facturas_Usuario_ID_id_611ad4e9_fk_BackendAP` FOREIGN KEY (`Usuario_ID_id`) REFERENCES `backendapi_usuario` (`ID_USUARIO`);

--
-- Filtros para la tabla `backendapi_historialfacturas`
--
ALTER TABLE `backendapi_historialfacturas`
  ADD CONSTRAINT `BackendAPI_historial_Factura_ID_id_30bf3886_fk_BackendAP` FOREIGN KEY (`Factura_ID_id`) REFERENCES `backendapi_facturas` (`ID_Facturas`),
  ADD CONSTRAINT `BackendAPI_historial_Usuario_ID_id_c8afca00_fk_BackendAP` FOREIGN KEY (`Usuario_ID_id`) REFERENCES `backendapi_usuario` (`ID_USUARIO`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Base de datos: `empleados`
--
CREATE DATABASE IF NOT EXISTS `empleados` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `empleados`;

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
(25, 'Can add employee', 7, 'add_employee'),
(26, 'Can change employee', 7, 'change_employee'),
(27, 'Can delete employee', 7, 'delete_employee'),
(28, 'Can view employee', 7, 'view_employee');

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

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$e1lVSY2Lt8C9ntG2gRPZck$+S1gttg8p4kqHzgRG57MOeimlZKfvAvXRgExZUgr1lE=', '2023-01-23 14:19:54.445439', 1, 'jeremyeb', '', '', 'jeremyeb002@gmail.com', 1, 1, '2023-01-23 14:18:27.725901');

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

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-01-23 14:30:15.046188', '1', 'Employee object (1)', 1, '[{\"added\": {}}]', 7, 1);

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
(5, 'contenttypes', 'contenttype'),
(7, 'EmpleadosAPI', 'employee'),
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
(1, 'EmpleadosAPI', '0001_initial', '2023-01-23 14:15:07.962779'),
(2, 'contenttypes', '0001_initial', '2023-01-23 14:15:09.273179'),
(3, 'auth', '0001_initial', '2023-01-23 14:15:31.890355'),
(4, 'admin', '0001_initial', '2023-01-23 14:15:42.688737'),
(5, 'admin', '0002_logentry_remove_auto_add', '2023-01-23 14:15:43.406874'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-23 14:15:44.251393'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-01-23 14:15:46.175989'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-01-23 14:15:48.537686'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-01-23 14:15:48.924470'),
(10, 'auth', '0004_alter_user_username_opts', '2023-01-23 14:15:49.023069'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-01-23 14:15:50.980017'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-01-23 14:15:51.071138'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-01-23 14:15:51.430429'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-01-23 14:15:52.873932'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-01-23 14:15:53.139246'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-01-23 14:15:53.399038'),
(17, 'auth', '0011_update_proxy_permissions', '2023-01-23 14:15:53.509276'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-01-23 14:15:53.998410'),
(19, 'sessions', '0001_initial', '2023-01-23 14:15:55.527133');

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
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('n14v3w0hlviyke3xilhhl8h67veqwcua', '.eJxVjEEOgjAQRe_StWkY2ynUpXvOQGaYqUUNTSisjHdXEha6_e-9_zIDbWsetqrLMIm5GDCn341pfOi8A7nTfCt2LPO6TGx3xR602r6IPq-H-3eQqeZvHUBJOg8ueIxdcw7gpQ2OETlFioCEybFK9LHx7DAFhSitsiCERGzeH8J7N7A:1pJxfu:AjCGaM6vJnTdeCKetWOKiwL2ZCEk0yByz0Ws9Q3lC5I', '2023-02-06 14:19:54.480023');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleadosapi_employee`
--

CREATE TABLE `empleadosapi_employee` (
  `ID_EMPLEADO` int(11) NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  `APELLIDOS` varchar(60) NOT NULL,
  `UBICACION` varchar(60) NOT NULL,
  `PUESTO` varchar(30) NOT NULL,
  `NUMERO_TELEFONO` varchar(20) NOT NULL,
  `EXTENSION` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleadosapi_employee`
--

INSERT INTO `empleadosapi_employee` (`ID_EMPLEADO`, `NOMBRE`, `APELLIDOS`, `UBICACION`, `PUESTO`, `NUMERO_TELEFONO`, `EXTENSION`) VALUES
(1, 'Brayan', 'Carrera Mañon', 'Plaza Lama, Churchill Esq. 27 de Febrero', 'Programador', '000-000-0000', '44-80'),
(3, 'Jeremy', 'Encarnacion Basilio', 'Plaza Lama, Churchill Esq.27 de Febrero', 'Desarrollador', '111-111-1111', '45-81'),
(4, 'Bernardo', 'Valdez', 'Plaza Lama, Churchill Esq.27 de Febrero', 'Project Manager', '111-111-1111', '45-81');

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
-- Indices de la tabla `empleadosapi_employee`
--
ALTER TABLE `empleadosapi_employee`
  ADD PRIMARY KEY (`ID_EMPLEADO`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `empleadosapi_employee`
--
ALTER TABLE `empleadosapi_employee`
  MODIFY `ID_EMPLEADO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Base de datos: `fatz_ajax2`
--
CREATE DATABASE IF NOT EXISTS `fatz_ajax2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fatz_ajax2`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `task`
--

INSERT INTO `task` (`id`, `name`, `description`) VALUES
(1, 'Escribir', 'Tienes que escribir un articulo'),
(2, 'Crear un sitio web', 'Crear sitio web con WordPress');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);
--
-- Base de datos: `grupofycas`
--
CREATE DATABASE IF NOT EXISTS `grupofycas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `grupofycas`;

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
(8, 'Heriz Castillo', '829-905-0930', '4022970588-3');

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
(6, '10000.00', '1.80', '10.00', '5850.00', '3250.00', '2600.00', '2023-05-25', 'Heriz Castillo', '829-905-0930', '4022970588-3', 8, '0.00', '3800.00');

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
(29, '10000.00', '1.80', '10.00', '5850.00', '3250.00', '2600.00', '3800.00', '2023-05-25', 'Heriz Castillo', '829-905-0930', '4022970588-3', 8, 6, '0.00');

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
  MODIFY `ID_CLIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `backendapi_facturas`
--
ALTER TABLE `backendapi_facturas`
  MODIFY `ID_FACTURAS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `backendapi_historialfacturas`
--
ALTER TABLE `backendapi_historialfacturas`
  MODIFY `ID_HISTORIALFACTURA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
--
-- Base de datos: `inventario`
--
CREATE DATABASE IF NOT EXISTS `inventario` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inventario`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apisistemainventario_cliente`
--

CREATE TABLE `apisistemainventario_cliente` (
  `ID_CLIENTE` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDOS` varchar(50) NOT NULL,
  `TELEFONO` varchar(15) NOT NULL,
  `CEDULA` varchar(20) NOT NULL,
  `FECHA` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `apisistemainventario_cliente`
--

INSERT INTO `apisistemainventario_cliente` (`ID_CLIENTE`, `NOMBRE`, `APELLIDOS`, `TELEFONO`, `CEDULA`, `FECHA`) VALUES
(1, 'Jeremy', 'Encarnacion Basilio', '829-722-3118', '000-000000-0', '2023-02-04'),
(2, 'Juan Luis', 'Guerra', '829-000-0000', '111-111111-1', '2023-02-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apisistemainventario_factura`
--

CREATE TABLE `apisistemainventario_factura` (
  `ID_FACTURA` int(11) NOT NULL,
  `MONTO_SOLICITADO` decimal(10,2) NOT NULL,
  `TASA` decimal(10,2) NOT NULL,
  `CUOTAS` decimal(10,2) NOT NULL,
  `MONTO_PAGAR` decimal(10,2) NOT NULL,
  `CAPITAL` decimal(10,2) NOT NULL,
  `INTERES` decimal(10,2) NOT NULL,
  `FECHA` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add cliente', 7, 'add_cliente'),
(26, 'Can change cliente', 7, 'change_cliente'),
(27, 'Can delete cliente', 7, 'delete_cliente'),
(28, 'Can view cliente', 7, 'view_cliente'),
(29, 'Can add factura', 8, 'add_factura'),
(30, 'Can change factura', 8, 'change_factura'),
(31, 'Can delete factura', 8, 'delete_factura'),
(32, 'Can view factura', 8, 'view_factura');

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
(7, 'ApiSistemaInventario', 'cliente'),
(8, 'ApiSistemaInventario', 'factura'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
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
(1, 'ApiSistemaInventario', '0001_initial', '2023-01-29 18:33:17.043622'),
(2, 'contenttypes', '0001_initial', '2023-01-29 18:33:17.559248'),
(3, 'auth', '0001_initial', '2023-01-29 18:33:26.967731'),
(4, 'admin', '0001_initial', '2023-01-29 18:33:30.107491'),
(5, 'admin', '0002_logentry_remove_auto_add', '2023-01-29 18:33:30.169993'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-29 18:33:30.451240'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-01-29 18:33:31.169997'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-01-29 18:33:32.232491'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-01-29 18:33:32.357498'),
(10, 'auth', '0004_alter_user_username_opts', '2023-01-29 18:33:32.404398'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-01-29 18:33:34.020346'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-01-29 18:33:34.067141'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-01-29 18:33:34.114017'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-01-29 18:33:34.239018'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-01-29 18:33:34.379642'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-01-29 18:33:34.489086'),
(17, 'auth', '0011_update_proxy_permissions', '2023-01-29 18:33:34.535973'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-01-29 18:33:34.645336'),
(19, 'sessions', '0001_initial', '2023-01-29 18:33:35.520347');

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
-- Indices de la tabla `apisistemainventario_cliente`
--
ALTER TABLE `apisistemainventario_cliente`
  ADD PRIMARY KEY (`ID_CLIENTE`);

--
-- Indices de la tabla `apisistemainventario_factura`
--
ALTER TABLE `apisistemainventario_factura`
  ADD PRIMARY KEY (`ID_FACTURA`);

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
-- AUTO_INCREMENT de la tabla `apisistemainventario_cliente`
--
ALTER TABLE `apisistemainventario_cliente`
  MODIFY `ID_CLIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `apisistemainventario_factura`
--
ALTER TABLE `apisistemainventario_factura`
  MODIFY `ID_FACTURA` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"grupofycas\",\"table\":\"backendapi_facturas\"},{\"db\":\"grupofycas\",\"table\":\"backendapi_historialfacturas\"},{\"db\":\"grupofycas\",\"table\":\"backendapi_clientes\"},{\"db\":\"bbdd_inventario\",\"table\":\"backendapi_historialfacturas\"},{\"db\":\"bbdd_inventario\",\"table\":\"backendapi_facturas\"},{\"db\":\"bbdd_inventario\",\"table\":\"backendapi_usuario\"},{\"db\":\"bbdd_inventario\",\"table\":\"auth_user\"},{\"db\":\"prueba2\",\"table\":\"pruebaapi_prueba\"},{\"db\":\"prueba2\",\"table\":\"prueba\"},{\"db\":\"inventario\",\"table\":\"apisistemainventario_cliente\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-04-12 04:12:29', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":300,\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `proyectofinal`
--
CREATE DATABASE IF NOT EXISTS `proyectofinal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `proyectofinal`;
--
-- Base de datos: `prueba`
--
CREATE DATABASE IF NOT EXISTS `prueba` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `prueba`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `ID_PERSONA` int(11) NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  `APELLIDO` varchar(30) DEFAULT NULL,
  `CEDULA` varchar(13) DEFAULT NULL,
  `TELEFONO` varchar(30) DEFAULT NULL,
  `FECHA_NACIMIENTO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`ID_PERSONA`, `NOMBRE`, `APELLIDO`, `CEDULA`, `TELEFONO`, `FECHA_NACIMIENTO`) VALUES
(1, 'Jeremy', 'Encarnacion', '402-2970588-0', '829-722-3118', '2002-04-16'),
(2, 'Erimer', 'Castillo', '225-0000000-0', '829-915-0930', '1990-09-30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`ID_PERSONA`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `ID_PERSONA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Base de datos: `prueba2`
--
CREATE DATABASE IF NOT EXISTS `prueba2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `prueba2`;

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
(25, 'Can add prueba', 7, 'add_prueba'),
(26, 'Can change prueba', 7, 'change_prueba'),
(27, 'Can delete prueba', 7, 'delete_prueba'),
(28, 'Can view prueba', 7, 'view_prueba');

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
(5, 'contenttypes', 'contenttype'),
(7, 'PruebaAPI', 'prueba'),
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
(1, 'PruebaAPI', '0001_initial', '2023-02-12 22:21:52.454684'),
(2, 'contenttypes', '0001_initial', '2023-02-12 22:21:53.709787'),
(3, 'auth', '0001_initial', '2023-02-12 22:22:02.975720'),
(4, 'admin', '0001_initial', '2023-02-12 22:22:05.781198'),
(5, 'admin', '0002_logentry_remove_auto_add', '2023-02-12 22:22:05.820792'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-12 22:22:05.867666'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-02-12 22:22:06.812770'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-02-12 22:22:07.609404'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-02-12 22:22:07.750030'),
(10, 'auth', '0004_alter_user_username_opts', '2023-02-12 22:22:07.796962'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-02-12 22:22:09.185833'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-02-12 22:22:09.201461'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-02-12 22:22:09.232710'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-02-12 22:22:09.411426'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-02-12 22:22:09.505175'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-02-12 22:22:09.677050'),
(17, 'auth', '0011_update_proxy_permissions', '2023-02-12 22:22:09.708300'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-02-12 22:22:09.817674'),
(19, 'sessions', '0001_initial', '2023-02-12 22:22:10.313860');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prueba`
--

CREATE TABLE `prueba` (
  `NOMBRE` varchar(50) DEFAULT NULL,
  `APELLIDO` varchar(50) DEFAULT NULL,
  `EDAD` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `prueba`
--

INSERT INTO `prueba` (`NOMBRE`, `APELLIDO`, `EDAD`) VALUES
('Jeremy', 'Encarnacion', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pruebaapi_prueba`
--

CREATE TABLE `pruebaapi_prueba` (
  `id` bigint(20) NOT NULL,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `APELLIDOS` varchar(50) DEFAULT NULL,
  `EDAD` int(11) DEFAULT NULL
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
-- Indices de la tabla `pruebaapi_prueba`
--
ALTER TABLE `pruebaapi_prueba`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `pruebaapi_prueba`
--
ALTER TABLE `pruebaapi_prueba`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
