CREATE DATABASE bd_sisvenJL;
use bd_sisvenJL;

CREATE TABLE `detalleventa` (
  `iddetalleventa` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidadproducto` int(11) NOT NULL,
  `precioventa` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `detalleventa` (`iddetalleventa`, `idventa`, `idproducto`, `cantidadproducto`, `precioventa`) VALUES
(1, 1, 1, 1, 80),
(2, 1, 2, 1, 70),
(3, 2, 1, 1, 80),
(4, 2, 2, 1, 70),
(5, 3, 4, 1, 50),
(6, 3, 1, 1, 80),
(7, 4, 4, 1, 50),
(8, 4, 1, 1, 80),
(9, 4, 2, 5, 70),
(10, 5, 4, 1, 50),
(11, 5, 1, 1, 80),
(12, 5, 2, 5, 70),
(13, 5, 1, 1, 80),
(14, 6, 4, 1, 50),
(15, 6, 1, 1, 80),
(16, 6, 2, 5, 70),
(17, 6, 1, 1, 80),
(18, 6, 1, 1, 80),
(19, 7, 4, 1, 50),
(20, 7, 1, 1, 80),
(21, 7, 2, 5, 70),
(22, 7, 1, 1, 80),
(23, 7, 1, 1, 80),
(24, 8, 4, 1, 50),
(25, 8, 1, 1, 80),
(26, 8, 2, 5, 70),
(27, 8, 1, 1, 80),
(28, 8, 1, 1, 80),
(29, 9, 4, 1, 50),
(30, 9, 1, 1, 80),
(31, 9, 2, 5, 70),
(32, 9, 1, 1, 80),
(33, 9, 1, 1, 80),
(34, 9, 3, 20, 130),
(35, 10, 4, 1, 50),
(36, 10, 1, 1, 80),
(37, 10, 2, 5, 70),
(38, 10, 1, 1, 80),
(39, 10, 1, 1, 80),
(40, 10, 3, 20, 130),
(41, 10, 3, 4, 130),
(42, 11, 6, 5, 120),
(43, 12, 6, 5, 120),
(44, 12, 2, 1, 70),
(45, 12, 6, 1, 120),
(46, 13, 6, 5, 120),
(47, 13, 2, 1, 70),
(48, 13, 6, 1, 120),
(49, 13, 6, 1, 120),
(50, 14, 2, 1, 70),
(51, 15, 6, 1, 120),
(52, 16, 1, 1, 80),
(53, 16, 6, 1, 120),
(54, 17, 1, 3, 80),
(55, 17, 6, 1, 120),
(56, 17, 2, 1, 70),
(57, 18, 1, 3, 80),
(58, 18, 6, 1, 120),
(59, 18, 2, 1, 70),
(60, 19, 1, 4, 80),
(61, 19, 2, 1, 70),
(62, 20, 1, 5, 80),
(63, 20, 6, 15, 120),
(64, 21, 1, 5, 80),
(65, 21, 6, 15, 120);

CREATE TABLE `productos` (
  `id` int(10) NOT NULL,
  `nombreproducto` varchar(200) COLLATE utf8_general_ci NOT NULL,  
  `descripcionproducto` varchar(500) COLLATE utf8_general_ci NOT NULL,
  `unidad` varchar(10) COLLATE utf8_general_ci NOT NULL,
  `precio` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `productos` (`id`, `nombreproducto`, `descripcionproducto`, `unidad`, `precio`) VALUES
(1, 'Zapatilla deportiva para varon', 'zapatilla deportiva para varon tipo Nike', 'PAR', 80),
(2, 'Zapatilla deportiva juvenil', 'Zapatilla deportiva juvenil tipo Nike', 'PAR', 70),
(3, 'Deportivo Rompeviento para varon','Deportivo rompeviento para varon material:paño humedo', 'Conjunto', 130),
(4, 'Zapatilla deportiva para niño', 'Zapatilla deportiva para niño modelo Ale-fer', 'Par', 50),
(5, 'Zapatilla deportiva para niño', 'Zapatilla deportiva para niño modelo Ale-fer', 'Par', 50),
(6, 'Deportivo Rompeviento para damas','Deportivo rompeviento para dama mterial:paño humedo', 'Conjunto', 120),
(7, 'Deportivo Rompeviento para damas','Deportivo rompeviento para dama mterial:paño humedo', 'Conjunto', 120),
(8, 'Deportivo Rompeviento para damas','Deportivo rompeviento para dama mterial:paño humedo', 'Conjunto', 120);

CREATE TABLE `usuarios` (
  `id` int(10) NOT NULL,
  `ci` int(10) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_general_ci NOT NULL,
  `correo` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_general_ci NOT NULL,
  `Rol` enum('Empleado','Cliente') COLLATE utf8_general_ci NOT NULL,
  `estado` enum('Activo','Inactivo') COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `usuarios` (`id`, `ci`, `nombre`, `correo`, `password`, `Rol`, `estado`) VALUES
(1, 9252839, 'Jhaneth Castillo Chirinos', 'Castillo99@mail.com', '12345', 'Cliente', 'Activo'),
(2, 8264286, 'Jose Luis Chalco', 'jlch88@mail.com', '112233', 'Empleado', 'Activo'),
(10, 16233101, 'Jhosep Chalco Castillo', 'Jchc@mail.com', '0000', 'Cliente', 'Inactivo');

CREATE TABLE `ventas` (
  `idventa` int(11) NOT NULL,
  `numerofactura` varchar(20) COLLATE utf8_general_ci NOT NULL,
  `idclienteventa` int(11) NOT NULL,
  `idempleadoventa` int(11) NOT NULL,
  `fechaventa` date NOT NULL,
  `totalventa` double NOT NULL,
  `estado` varchar(20) COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `ventas` (`idventa`, `numerofactura`, `idclienteventa`, `idempleadoventa`, `fechaventa`, `totalventa`, `estado`) VALUES
(1, '34', 2, 2, '2020-10-01', 342342, 'A'),
(2, '0', 1, 1, '2020-10-21', 102000, '1'),
(3, '35', 1, 1, '2020-10-21', 64213, '1'),
(4, '36', 2, 1, '2020-10-21', 414213, '1'),
(5, '37', 1, 1, '2020-10-21', 446213, '1'),
(6, '38', 1, 1, '2020-10-21', 478213, '1'),
(7, '38', 1, 1, '2020-10-21', 478213, '1'),
(8, '39', 1, 1, '2020-10-21', 478213, '1'),
(9, '40', 1, 1, '2020-10-21', 211678213, '1'),
(10, '41', 2, 1, '2020-10-21', 253918213, '1'),
(11, '42', 7, 1, '2020-10-21', 1150000, '1'),
(12, '42', 1, 1, '2020-10-21', 1450000, '1'),
(13, '43', 2, 1, '2020-10-21', 1680000, '1'),
(14, '44', 1, 1, '2020-10-21', 70, '1'),
(15, '45', 1, 1, '2020-10-21', 120, '1'),
(16, '46', 7, 1, '2020-10-21', 262000, '1'),
(17, '47', 2, 1, '2020-10-21', 396000, '1'),
(18, '47', 2, 1, '2020-10-21', 396000, '1'),
(19, '48', 9, 1, '2020-10-21', 198000, '1'),
(20, '49', 10, 1, '2020-10-21', 3610000, '1'),
(21, '49', 10, 1, '2020-10-21', 7220000, '1');

ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`iddetalleventa`),
  ADD KEY `venta detalle venta` (`idventa`),
  ADD KEY `detalle producto` (`idproducto`);

ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idventa`);

ALTER TABLE `detalleventa`
  MODIFY `iddetalleventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;


ALTER TABLE `productos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `usuarios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `ventas`
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

ALTER TABLE `detalleventa`
  ADD CONSTRAINT `detalle producto` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `venta detalle venta` FOREIGN KEY (`idventa`) REFERENCES `ventas` (`idventa`);
COMMIT;