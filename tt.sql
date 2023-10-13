-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-10-2023 a las 03:55:06
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tt`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-01-24 16:21:18', '12-10-2023 04:30:41 PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(10, 'Deporte', '', '2023-10-12 21:34:36', NULL),
(11, 'Accesorios', '', '2023-10-12 21:34:44', NULL),
(12, 'Marcas', '', '2023-10-12 21:34:46', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(34, 5, '36', 1, '2023-06-06 21:56:54', 'Efectivo', 'Entregado'),
(35, 5, '34', 2, '2023-06-06 21:57:34', 'Tarjeta de Crédito/Debito', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(6, 34, 'Entregado', 'Entregado!', '2023-06-07 06:23:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(34, 7, 18, 'Jersey FC Barcelona', 'NIke', 1000, 1000, '<p style=\"margin-bottom: 0px; box-sizing: inherit; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.75; font-family: &quot;Helvetica Now Text&quot;, Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(17, 17, 17);\">Como otros jerseys de nuestra colección Stadium, este combina detalles del diseño tipo réplica con tecnología absorbente de sudor para darte un look listo para el partido inspirado en tu equipo favorito. Este producto está fabricado al 100% con fibras de poliéster reciclado.</p><ul class=\"description-preview__features pt8-sm pb6-sm ncss-list-ul\" style=\"padding-top: 32px; padding-bottom: 24px; margin-bottom: 0px; margin-left: 0px; box-sizing: inherit; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: &quot;Helvetica Now Text&quot;, Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; list-style: none; color: rgb(17, 17, 17);\"><li class=\"description-preview__color-description ncss-li\" style=\"font: inherit; box-sizing: inherit; margin: 0px 0px 4px 16px; padding: 0px; border: 0px; vertical-align: baseline; list-style-type: disc;\">Color que se muestra: Obsidiana/Sésamo</li><li class=\"description-preview__style-color ncss-li\" style=\"font: inherit; box-sizing: inherit; margin: 0px 0px 0px 16px; padding: 0px; border: 0px; vertical-align: baseline; list-style-type: disc;\">Estilo: DM1840-452</li></ul>', 'jersey.jpg', 'jersey.jpg', 'jersey.jpg', 0, 'En Stock', '2023-06-05 05:19:53', NULL),
(35, 7, 18, 'Jersey CF Real Madrid', 'Adidas', 1000, 1000, '<p style=\"box-sizing: inherit; margin-bottom: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.75; font-family: &quot;Helvetica Now Text&quot;, Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(17, 17, 17);\">Como otros jerseys de nuestra colección Stadium, este combina detalles del diseño tipo réplica con tecnología absorbente de sudor para darte un look listo para el partido inspirado en tu equipo favorito. Este producto está fabricado al 100% con fibras de poliéster reciclado.</p><ul class=\"description-preview__features pt8-sm pb6-sm ncss-list-ul\" style=\"box-sizing: inherit; margin-bottom: 0px; margin-left: 0px; padding-top: 32px; padding-bottom: 24px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: &quot;Helvetica Now Text&quot;, Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; list-style: none; color: rgb(17, 17, 17);\"><li class=\"description-preview__color-description ncss-li\" style=\"box-sizing: inherit; margin: 0px 0px 4px 16px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; list-style-type: disc;\">Color que se muestra: Obsidiana/Sésamo</li><li class=\"description-preview__style-color ncss-li\" style=\"box-sizing: inherit; margin: 0px 0px 0px 16px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; list-style-type: disc;\">Estilo: DM1840-452</li></ul>', 'camiseta-adidas-real-madrid-cf-primera-equipacion-2022-2023-white-0.jpg', 'camiseta-adidas-real-madrid-cf-primera-equipacion-2022-2023-white-0.jpg', 'camiseta-adidas-real-madrid-cf-primera-equipacion-2022-2023-white-0.jpg', 0, 'En Stock', '2023-06-05 05:21:39', NULL),
(36, 8, 19, 'Kyrie Irving 7 Zapatillas de baloncesto', 'Nike', 700, 700, '<span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Adecuado para multitud: Adultos, Jóvenes\r\nSi hay una caja de zapatos: No\r\nEstilo: Parte superior alta\r\nTamaño: 39-45\r\nMaterial: Lienzo\r\nCaracterísticas: Cómodo y transpirable</span><br>', '0232c24321b1aa3a43bfcc7600cd43e2.jfif', '0232c24321b1aa3a43bfcc7600cd43e2.jfif', '0232c24321b1aa3a43bfcc7600cd43e2.jfif', 0, 'En Stock', '2023-06-05 05:23:53', NULL),
(37, 8, 19, 'Calzado Adidas Hombre Deportivo In Verde', 'Adidas', 900, 900, '<span style=\"color: rgb(114, 114, 115); font-family: Poppins, -apple-system, BlinkMacSystemFont, &quot;avenir next&quot;, avenir, &quot;helvetica neue&quot;, helvetica, ubuntu, noto, &quot;segoe ui&quot;, arial, sans-serif; font-size: 16px;\">El calzado deportivo de fútbol sala para hombre Adidas cuenta con una parte superior sintética duradera con costuras para un mayor control del balón. Su suela de goma tiene estrías, ofreciendo una gran tracción y movilidad. El modelo cuenta con las clásicas tres rayas de Adidas en los laterales, además de los micro agujeros en la parte trasera, aportando más transpirabilidad a los pies.</span><br>', 'Calzado-Adidas-Hombre-Deportivo-In-Verde.webp', 'Calzado-Adidas-Hombre-Deportivo-In-Verde.webp', 'Calzado-Adidas-Hombre-Deportivo-In-Verde.webp', 0, 'En Stock', '2023-06-05 05:24:59', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provider`
--

CREATE TABLE `provider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `rfc` varchar(13) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `provider`
--

INSERT INTO `provider` (`id`, `name`, `email`, `rfc`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(0, 'Cofli', 'cofli@gmail.com', 'SDKJDKWEJK234', 'c893bad68927b457dbed39460e6afd62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-30 20:05:13', NULL),
(0, 'Nestle', 'nestle@gmail.com', 'DSKLWLE23adlk', 'c893bad68927b457dbed39460e6afd62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-30 20:05:32', NULL),
(0, 'cofli1', 'cofli2@gmail.com', 'SDKJDKWEJK234', 'c893bad68927b457dbed39460e6afd62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-30 20:06:59', NULL),
(0, 'Steren', 'fgh456.7854@gmail.com', 'EST980909NU5', '951928cc29366a0ab48453062f0b57f6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-31 19:50:20', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(18, 7, 'Jersey', '2023-06-05 05:13:43', NULL),
(19, 8, 'Deportivo', '2023-06-05 05:22:23', NULL),
(20, 9, 'Deportes', '2023-06-05 05:22:42', NULL),
(21, 10, 'Basquetbol', '2023-10-12 21:39:12', NULL),
(22, 10, 'Motociclismo', '2023-10-12 21:39:47', NULL),
(23, 10, 'Futbol', '2023-10-12 21:39:55', NULL),
(24, 11, 'Futbol', '2023-10-12 21:40:03', NULL),
(25, 11, 'Basquetbol', '2023-10-12 21:40:08', NULL),
(26, 11, 'Motocross', '2023-10-12 21:40:15', NULL),
(27, 12, 'Nike', '2023-10-12 21:40:19', NULL),
(28, 12, 'Adidas', '2023-10-12 21:40:24', NULL),
(29, 12, 'Puma', '2023-10-12 21:40:27', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(82, 'axelnc1iv7@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-06 01:15:08', NULL, 1),
(83, 'axelnc1iv7@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-06 21:56:31', NULL, 1),
(84, 'axelnc1iv7@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-06 23:16:36', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `f_nac` date DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `apellidos`, `email`, `contactno`, `f_nac`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(5, 'Axel Najera', NULL, 'axelnc1iv7@gmail.com', 5527481554, NULL, '96487dc2702206a02ef22c78fc367bd9', NULL, NULL, NULL, NULL, 'Línea 2', 'Hidalgo', NULL, NULL, '2023-04-19 23:12:48', NULL),
(22, 'Isaac Alejandro', 'Barron', 'isuu@juan.com', 5517707896, '2021-06-18', 'b59c67bf196a4758191e42f76670ceba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-19 23:12:48', NULL),
(23, 'Pablo', 'Trujillo Mendoza', 'olbap010324@gmail.com', 5522426233, '2001-03-24', '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-19 23:12:48', NULL),
(24, 'Pablo', 'Trujillo Mendoza', 'olbap010324@gmail.com', 5522426233, '2001-03-24', '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-19 23:12:48', NULL),
(25, 'Miguel Angel', 'Garcia Ledezma', 'garcia@gmail.com', 5610889548, '1999-05-13', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-19 23:12:48', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
