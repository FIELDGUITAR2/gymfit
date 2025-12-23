-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 23, 2025 at 07:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gymfit`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `qr` varchar(100) NOT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nombre`, `apellido`, `correo`, `telefono`, `clave`, `qr`, `foto`) VALUES
(1, 'Carlos', 'Ramirez', 'c.ramirez@gymfit.com', '3001112233', '12345', 'qr001', NULL),
(2, 'Laura', 'Martinez', 'l.martinez@gymfit.com', '3002223344', '12345', 'qr002', NULL),
(3, 'samir', 'gonzalez', 'js@ce.com', '3044113724', '827ccb0eea8a706c4c34a16891f84e7b', 'jajas', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asistencia`
--

CREATE TABLE `asistencia` (
  `id_usuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `asistio` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `asistencia`
--

INSERT INTO `asistencia` (`id_usuario`, `fecha`, `asistio`) VALUES
(1, '2025-02-01', 1),
(1, '2025-02-02', 0),
(2, '2025-02-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `colaborador`
--

CREATE TABLE `colaborador` (
  `id_colaborador` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `n_identificacion` int(11) NOT NULL,
  `id_tipo_id` int(11) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `id_estado_colaborador` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `salario` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colaborador`
--

INSERT INTO `colaborador` (`id_colaborador`, `nombre`, `apellido`, `n_identificacion`, `id_tipo_id`, `correo`, `clave`, `telefono`, `direccion`, `id_estado_colaborador`, `foto`, `salario`) VALUES
(1, 'Juan', 'Lopez', 123456, 1, 'juan.lopez@gymfit.com', 'abc123', '3111111111', 'Calle 1 #10-20', 1, NULL, 0.00),
(2, 'Maria', 'Gomez', 789012, 1, 'maria.gomez@gymfit.com', 'abc123', '3222222222', 'Calle 2 #20-30', 2, NULL, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `ejercicio`
--

CREATE TABLE `ejercicio` (
  `id_ejercicio` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_maquina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ejercicio`
--

INSERT INTO `ejercicio` (`id_ejercicio`, `nombre`, `id_maquina`) VALUES
(1, 'Cardio Caminadora', 1),
(2, 'Cardio Bicicleta', 2),
(3, 'Press con mancuernas', 3),
(4, 'Elíptica avanzada', 4);

-- --------------------------------------------------------

--
-- Table structure for table `estado_colaborador`
--

CREATE TABLE `estado_colaborador` (
  `id_estado_colaborador` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `estado_colaborador`
--

INSERT INTO `estado_colaborador` (`id_estado_colaborador`, `nombre`) VALUES
(1, 'Activo'),
(2, 'Suspendido'),
(3, 'Retirado');

-- --------------------------------------------------------

--
-- Table structure for table `estado_factura`
--

CREATE TABLE `estado_factura` (
  `id_estado_factura` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `estado_factura`
--

INSERT INTO `estado_factura` (`id_estado_factura`, `nombre`) VALUES
(1, 'Pagada'),
(2, 'Pendiente'),
(3, 'Vencida');

-- --------------------------------------------------------

--
-- Table structure for table `estado_usuario`
--

CREATE TABLE `estado_usuario` (
  `id_estado_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `estado_usuario`
--

INSERT INTO `estado_usuario` (`id_estado_usuario`, `nombre`) VALUES
(1, 'Activo'),
(2, 'Inactivo'),
(3, 'Mora');

-- --------------------------------------------------------

--
-- Table structure for table `factura`
--

CREATE TABLE `factura` (
  `id_factura` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `id_plan` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_estado_factura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `factura`
--

INSERT INTO `factura` (`id_factura`, `id_usuario`, `total`, `id_plan`, `fecha`, `id_estado_factura`) VALUES
(1, 1, 85000.00, 1, '2025-01-10', 1),
(2, 2, 220000.00, 2, '2025-01-15', 2),
(3, 3, 300000.00, 3, '2025-01-20', 3);

-- --------------------------------------------------------

--
-- Table structure for table `maquina`
--

CREATE TABLE `maquina` (
  `id_maquina` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maquina`
--

INSERT INTO `maquina` (`id_maquina`, `nombre`) VALUES
(1, 'Caminadora'),
(2, 'Bicicleta'),
(3, 'Mancuernas'),
(4, 'Elíptica');

-- --------------------------------------------------------

--
-- Table structure for table `nivel`
--

CREATE TABLE `nivel` (
  `id_nivel` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nivel`
--

INSERT INTO `nivel` (`id_nivel`, `nombre`) VALUES
(1, 'Principiante'),
(2, 'Intermedio'),
(3, 'Avanzado');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id_plan` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `duracion` varchar(100) DEFAULT NULL,
  `id_nivel` int(11) NOT NULL,
  `frecuencia_semanal` varchar(150) DEFAULT NULL,
  `calorias_objetivo` int(11) DEFAULT NULL,
  `fecha_creacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id_plan`, `id_tipo`, `nombre`, `descripcion`, `duracion`, `id_nivel`, `frecuencia_semanal`, `calorias_objetivo`, `fecha_creacion`) VALUES
(1, 1, 'Plan Básico', 'Acceso ilimitado', '1 mes', 1, '3 veces por semana', 2000, '2024-01-10'),
(2, 2, 'Plan Intermedio', 'Acceso + clases grupales', '3 meses', 2, '4 veces por semana', 2500, '2024-01-15'),
(3, 3, 'Plan Pro', 'Acceso + entrenador personal', '12 meses', 3, '5 veces por semana', 3000, '2024-02-01');

-- --------------------------------------------------------

--
-- Table structure for table `rutina`
--

CREATE TABLE `rutina` (
  `id_rutina` int(11) NOT NULL,
  `objetivo` varchar(150) NOT NULL,
  `duracion_semanas` int(11) NOT NULL,
  `id_nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rutina`
--

INSERT INTO `rutina` (`id_rutina`, `objetivo`, `duracion_semanas`, `id_nivel`) VALUES
(1, 'Bajar de peso', 6, 1),
(2, 'Aumentar masa muscular', 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rutina_ejercicio`
--

CREATE TABLE `rutina_ejercicio` (
  `id_rutina` int(11) NOT NULL,
  `id_ejercicio` int(11) NOT NULL,
  `repeticiones` int(11) NOT NULL,
  `veces` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rutina_ejercicio`
--

INSERT INTO `rutina_ejercicio` (`id_rutina`, `id_ejercicio`, `repeticiones`, `veces`) VALUES
(1, 1, 10, 3),
(1, 2, 15, 2),
(2, 3, 12, 4),
(2, 4, 20, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tipo_id`
--

CREATE TABLE `tipo_id` (
  `id_tipo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tipo_id`
--

INSERT INTO `tipo_id` (`id_tipo`, `nombre`) VALUES
(1, 'Cédula'),
(2, 'Tarjeta Identidad'),
(3, 'Pasaporte');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_plan`
--

CREATE TABLE `tipo_plan` (
  `id_tipo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tipo_plan`
--

INSERT INTO `tipo_plan` (`id_tipo`, `nombre`) VALUES
(1, 'Mensual'),
(2, 'Trimestral'),
(3, 'Anual');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `qr` varchar(100) DEFAULT NULL,
  `id_estado_usuario` int(11) NOT NULL,
  `meses_mora` int(11) NOT NULL,
  `deuda` decimal(10,2) NOT NULL,
  `n_id` varchar(100) NOT NULL,
  `id_tipo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido`, `correo`, `clave`, `telefono`, `foto`, `qr`, `id_estado_usuario`, `meses_mora`, `deuda`, `n_id`, `id_tipo_id`) VALUES
(1, 'Pedro', 'Sanchez', 'pedro.sanchez@gmail.com', 'pass123', '3214445566', 'foto1.jpg', 'qr100', 1, 0, 0.00, '123', 1),
(2, 'Ana', 'Diaz', 'ana.diaz@gmail.com', 'pass123', '3215556677', 'foto2.jpg', 'qr101', 3, 2, 150000.00, '456', 1),
(3, 'Sofia', 'Castro', 'sofia.castro@gmail.com', 'pass123', '3216667788', 'foto3.jpg', 'qr102', 2, 0, 0.00, '789', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`id_usuario`,`fecha`);

--
-- Indexes for table `colaborador`
--
ALTER TABLE `colaborador`
  ADD PRIMARY KEY (`id_colaborador`),
  ADD UNIQUE KEY `n_identificacion` (`n_identificacion`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD KEY `id_tipo_id` (`id_tipo_id`),
  ADD KEY `id_estado_colaborador` (`id_estado_colaborador`);

--
-- Indexes for table `ejercicio`
--
ALTER TABLE `ejercicio`
  ADD PRIMARY KEY (`id_ejercicio`),
  ADD KEY `id_maquina` (`id_maquina`);

--
-- Indexes for table `estado_colaborador`
--
ALTER TABLE `estado_colaborador`
  ADD PRIMARY KEY (`id_estado_colaborador`);

--
-- Indexes for table `estado_factura`
--
ALTER TABLE `estado_factura`
  ADD PRIMARY KEY (`id_estado_factura`);

--
-- Indexes for table `estado_usuario`
--
ALTER TABLE `estado_usuario`
  ADD PRIMARY KEY (`id_estado_usuario`);

--
-- Indexes for table `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_plan` (`id_plan`),
  ADD KEY `id_estado_factura` (`id_estado_factura`);

--
-- Indexes for table `maquina`
--
ALTER TABLE `maquina`
  ADD PRIMARY KEY (`id_maquina`);

--
-- Indexes for table `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`id_nivel`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id_plan`),
  ADD KEY `id_tipo` (`id_tipo`),
  ADD KEY `id_nivel` (`id_nivel`);

--
-- Indexes for table `rutina`
--
ALTER TABLE `rutina`
  ADD PRIMARY KEY (`id_rutina`),
  ADD KEY `id_nivel` (`id_nivel`);

--
-- Indexes for table `rutina_ejercicio`
--
ALTER TABLE `rutina_ejercicio`
  ADD PRIMARY KEY (`id_rutina`,`id_ejercicio`,`repeticiones`,`veces`),
  ADD KEY `id_ejercicio` (`id_ejercicio`);

--
-- Indexes for table `tipo_id`
--
ALTER TABLE `tipo_id`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indexes for table `tipo_plan`
--
ALTER TABLE `tipo_plan`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `id_estado_usuario` (`id_estado_usuario`),
  ADD KEY `id_tipo_id` (`id_tipo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `colaborador`
--
ALTER TABLE `colaborador`
  MODIFY `id_colaborador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ejercicio`
--
ALTER TABLE `ejercicio`
  MODIFY `id_ejercicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `estado_colaborador`
--
ALTER TABLE `estado_colaborador`
  MODIFY `id_estado_colaborador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `estado_factura`
--
ALTER TABLE `estado_factura`
  MODIFY `id_estado_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `estado_usuario`
--
ALTER TABLE `estado_usuario`
  MODIFY `id_estado_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `factura`
--
ALTER TABLE `factura`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `maquina`
--
ALTER TABLE `maquina`
  MODIFY `id_maquina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nivel`
--
ALTER TABLE `nivel`
  MODIFY `id_nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id_plan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rutina`
--
ALTER TABLE `rutina`
  MODIFY `id_rutina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tipo_id`
--
ALTER TABLE `tipo_id`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tipo_plan`
--
ALTER TABLE `tipo_plan`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `colaborador`
--
ALTER TABLE `colaborador`
  ADD CONSTRAINT `colaborador_ibfk_1` FOREIGN KEY (`id_tipo_id`) REFERENCES `tipo_id` (`id_tipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `colaborador_ibfk_2` FOREIGN KEY (`id_estado_colaborador`) REFERENCES `estado_colaborador` (`id_estado_colaborador`);

--
-- Constraints for table `ejercicio`
--
ALTER TABLE `ejercicio`
  ADD CONSTRAINT `ejercicio_ibfk_1` FOREIGN KEY (`id_maquina`) REFERENCES `maquina` (`id_maquina`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`id_plan`) REFERENCES `plan` (`id_plan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_ibfk_3` FOREIGN KEY (`id_estado_factura`) REFERENCES `estado_factura` (`id_estado_factura`);

--
-- Constraints for table `plan`
--
ALTER TABLE `plan`
  ADD CONSTRAINT `plan_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_plan` (`id_tipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `plan_ibfk_2` FOREIGN KEY (`id_nivel`) REFERENCES `nivel` (`id_nivel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rutina`
--
ALTER TABLE `rutina`
  ADD CONSTRAINT `rutina_ibfk_1` FOREIGN KEY (`id_nivel`) REFERENCES `nivel` (`id_nivel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rutina_ejercicio`
--
ALTER TABLE `rutina_ejercicio`
  ADD CONSTRAINT `rutina_ejercicio_ibfk_1` FOREIGN KEY (`id_rutina`) REFERENCES `rutina` (`id_rutina`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rutina_ejercicio_ibfk_2` FOREIGN KEY (`id_ejercicio`) REFERENCES `ejercicio` (`id_ejercicio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_estado_usuario`) REFERENCES `estado_usuario` (`id_estado_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_tipo_id`) REFERENCES `tipo_id` (`id_tipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
