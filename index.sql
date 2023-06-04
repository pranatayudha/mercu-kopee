-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2020 at 08:11 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_cashier` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `bills` (`id`, `id_order`, `id_cashier`, `id_customer`, `total_price`, `created_at`, `updated_at`) VALUES
(3, 12, 2, 2, 61000, '2020-06-19 09:13:03', '2020-06-19 09:13:03'),
(4, 13, 2, 5, 89000, '2020-06-19 14:22:46', '2020-06-19 14:22:46'),
(5, 14, 2, 2, 99000, '2020-06-19 14:22:50', '2020-06-19 14:22:50');


CREATE TABLE `cashiers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` char(12) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `phone_no` char(12) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `customers` (`id`, `first_name`, `last_name`, `phone_no`, `created_at`, `updated_at`) VALUES
(2, 'Muhammad', 'Rasyid', '085100096913', '2020-06-11 16:28:49', '2020-06-11 16:28:49'),
(5, 'Achmad', 'Nurfaizi', '087884354649', '2020-06-19 14:21:03', '2020-06-19 14:21:03'),
(6, 'Fachri', 'Ghiffary', '082226068782', '2020-06-19 16:32:02', '2020-06-19 16:32:02');

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `item_name` text NOT NULL,
  `picture_name` text NOT NULL,
  `type` enum('COFFEE','NON_COFFEE','LIGHT_MEALS','MAIN_COURSE') NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `items` (`id`, `item_name`, `picture_name`, `type`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Espresso', '0569387591cd491b582c4d512ebb7d73.jpg', 'COFFEE', 15000, '2020-06-14 11:48:23', '2020-06-14 11:48:23'),
(2, 'Americano', '539d5816ebc011a3e5a78a4a6561585b.jpg', 'COFFEE', 22000, '2020-06-14 12:05:03', '2020-06-14 12:05:03'),
(3, 'Piccolo Latte', 'cabeadcf6d5b4c5be94f66ef60495751.jpg', 'COFFEE', 25000, '2020-06-14 12:06:09', '2020-06-14 12:06:09'),
(4, 'Cappuccino', 'd795d802a2f86ecaefa67097d0d7df5f.jpg', 'COFFEE', 28000, '2020-06-14 12:06:37', '2020-06-14 12:06:37'),
(5, 'Caffe Latte', '75650c7365d1954c0a349e9b9d42bf5a.jpg', 'COFFEE', 28000, '2020-06-14 12:06:55', '2020-06-14 12:06:55'),
(6, 'Caramel Latte', '18792d9c56220ea20fae4d833f5a5f23.jpg', 'COFFEE', 33000, '2020-06-14 12:07:36', '2020-06-14 12:07:36'),
(7, 'Mocha Latte', '621511b1381e4b37238257bb72173a6c.jpg', 'COFFEE', 33000, '2020-06-14 12:08:34', '2020-06-14 12:08:34'),
(8, 'Hazelnut Latte', '7e09c2c3b408ff4e9ba64bb45e94afae.jpg', 'COFFEE', 33000, '2020-06-14 12:08:54', '2020-06-14 12:08:54'),
(9, 'Avocado Latte', '8a9e01047d4b646abbd715bdab2c3f2b.jpg', 'COFFEE', 33000, '2020-06-14 12:09:11', '2020-06-14 12:09:11'),
(10, 'Vanilla Latte', 'bee856bc5c0789290e2c0f168e5600f7.jpg', 'COFFEE', 33000, '2020-06-14 12:09:38', '2020-06-14 12:09:38'),
(11, 'White Choco Latte', '94e458a13d91c4fc25826494067a354d.jpg', 'COFFEE', 33000, '2020-06-14 12:09:58', '2020-06-14 12:09:58'),
(12, 'Kahlua Latte', 'f9e69a22ec2c1483d15f12c6f4b9800e.jpg', 'COFFEE', 33000, '2020-06-14 12:10:30', '2020-06-14 12:10:30'),
(13, 'Choco Taro', 'dfffb319bf5c2c7f54e16b52735e18e5.jpg', 'NON_COFFEE', 40000, '2020-06-14 17:12:53', '2020-06-14 17:12:53'),
(14, 'Tea', '7db1deadb801f813a4774b8a8f78ee40.jpg', 'NON_COFFEE', 10000, '2020-06-14 17:13:44', '2020-06-14 17:13:44'),
(15, 'Tisane/Herbal Tea', '5c0299b85f5f94dfee3cdf994b5ce8c0.jpg', 'NON_COFFEE', 27000, '2020-06-14 17:14:04', '2020-06-14 17:14:04'),
(16, 'Thai Tea', '76a064ada9338fafe946e95d583cac40.jpg', 'NON_COFFEE', 38000, '2020-06-14 17:15:06', '2020-06-14 17:15:06'),
(17, 'Lychee Tea', '57b23346648678272deb7b9281199978.jpg', 'NON_COFFEE', 27000, '2020-06-14 17:15:29', '2020-06-14 17:15:29'),
(18, 'Lychee Tea', 'b4d6c95e4262b6fcea6fbd6952c1b314.jpg', 'NON_COFFEE', 27000, '2020-06-14 17:15:29', '2020-06-14 17:15:29'),
(19, 'Lemon Tea', 'bfd6251eae6d5994073b202f87a1f21b.jpg', 'NON_COFFEE', 27000, '2020-06-14 17:15:47', '2020-06-14 17:15:47'),
(20, 'Peach Tea', 'bfe18c190cf60573b6ceeb38713b0c88.jpg', 'NON_COFFEE', 27000, '2020-06-14 17:16:02', '2020-06-14 17:16:02'),
(21, 'Blueberry Tea', '474c71c07c00a9d96cabc2cb2f974eeb.jpg', 'NON_COFFEE', 27000, '2020-06-14 17:16:18', '2020-06-14 17:16:18'),
(22, 'Grenadine Tea', '064dcf106c7cb39894b2a01e8f96346a.jpg', 'NON_COFFEE', 27000, '2020-06-14 17:16:32', '2020-06-14 17:16:32'),
(23, 'Raspberry Tea', '8ec5508f3288c1b157f2577fc5185fcd.jpg', 'NON_COFFEE', 27000, '2020-06-14 17:16:45', '2020-06-14 17:16:45'),
(24, 'Mineral Water', '4dc156dec28304807400844f2f29b651.jpg', 'NON_COFFEE', 6000, '2020-06-14 17:16:58', '2020-06-14 17:16:58'),
(25, 'Extra Ice', 'faa13584eb830b4396607bab5362f238.jpg', 'NON_COFFEE', 2000, '2020-06-14 17:17:14', '2020-06-14 17:17:14'),
(26, 'Waffle Original', '2a25f7cb35d3d0027bab3622e5fc9c40.jpg', 'LIGHT_MEALS', 22000, '2020-06-14 17:28:43', '2020-06-14 17:28:43'),
(27, 'Zuppa Soup', '9e80d94022fc4a926e1ad08c8dfaa7a3.jpg', 'LIGHT_MEALS', 45000, '2020-06-14 17:29:00', '2020-06-14 17:29:00'),
(28, 'Singkong Goreng', '3e40f74f2ae696e317122840d8e606c2.jpg', 'LIGHT_MEALS', 22000, '2020-06-14 17:29:20', '2020-06-14 17:29:20'),
(29, 'French Fries', 'd6c94126ae30e47120106e15c2c79870.jpg', 'LIGHT_MEALS', 25000, '2020-06-14 17:29:34', '2020-06-14 17:29:34'),
(30, 'Calamari', 'd2f1f7d400db1d6a01c7365ac2ecd472.jpg', 'LIGHT_MEALS', 30000, '2020-06-14 17:29:51', '2020-06-14 17:29:51'),
(31, 'Lumpia', 'c1a8b3e3aaaeb732e08fccba338585df.jpg', 'LIGHT_MEALS', 23000, '2020-06-14 17:30:08', '2020-06-14 17:30:08'),
(32, 'Sosis Solo', 'f939d176dd2a4acf6b48d5d8954a9d78.jpg', 'LIGHT_MEALS', 23000, '2020-06-14 17:30:21', '2020-06-14 17:30:21'),
(33, 'Chicken Quesadilla', '56dc1aefe47207b33ebb897e6cc315f7.jpg', 'LIGHT_MEALS', 45000, '2020-06-14 17:30:36', '2020-06-14 17:30:36'),
(34, 'Platter Vegetarian', '5b66345ac2b31d10550eef0fe832fa2d.jpg', 'LIGHT_MEALS', 45000, '2020-06-14 17:30:49', '2020-06-14 17:30:49'),
(35, 'Pisang Goreng', '34a1f1bc056e9169fce38e5d8ac28bea.jpeg', 'LIGHT_MEALS', 24000, '2020-06-14 17:31:03', '2020-06-14 17:31:03'),
(36, 'Roti Bakar', '396af7a0e40d5d059d807b935090dafa.jpg', 'LIGHT_MEALS', 20000, '2020-06-14 17:31:18', '2020-06-14 17:31:18'),
(37, 'Roti Bakar Srikaya + Keju', '1a25d8dfe60dcea41637012d6b856e1a.jpg', 'LIGHT_MEALS', 25000, '2020-06-14 17:32:19', '2020-06-14 17:32:19'),
(38, 'Nasi Goreng Omelette', '27412bffde21d534a006633cbda2787e.jpg', 'MAIN_COURSE', 40000, '2020-06-14 17:47:09', '2020-06-14 17:47:09'),
(39, 'Nasi Goreng Buntut', '45aabed45049553dcb4182b928345ab5.jpg', 'MAIN_COURSE', 50000, '2020-06-14 17:48:59', '2020-06-14 17:48:59'),
(40, 'Nasi Goreng Rendang', 'ada83494940e1d03827011bbf8e01b9a.jpg', 'MAIN_COURSE', 50000, '2020-06-14 17:49:20', '2020-06-14 17:49:20'),
(41, 'Sop Buntut', '51240ead64553878ae8c3ad9cbc84d10.jpg', 'MAIN_COURSE', 86000, '2020-06-14 17:49:44', '2020-06-14 17:49:44'),
(42, 'Sop Buntut Bakar BBQ', 'f36fed890ac1eb66305aa1921c67a592.jpg', 'MAIN_COURSE', 90000, '2020-06-14 17:50:02', '2020-06-14 17:50:02'),
(43, 'Sop Buntut Bakar Blackpepper', 'dbfcb1a5fa44017504d43051c98de857.jpg', 'MAIN_COURSE', 90000, '2020-06-14 17:50:23', '2020-06-14 17:50:23'),
(44, 'Iga Bakar BBQ', 'dfadf14657bd8afc8f7aaee70a707642.jpg', 'MAIN_COURSE', 75000, '2020-06-14 17:50:38', '2020-06-14 17:50:38'),
(45, 'Iga Bakar Blackpepper', '4868f98272271a41c7db7330fb40b6d1.jpg', 'MAIN_COURSE', 75000, '2020-06-14 17:50:55', '2020-06-14 17:50:55'),
(46, 'Soto Betawi', '9dc55fadb0230460a0abcc0b08f4fe2f.jpg', 'MAIN_COURSE', 50000, '2020-06-14 17:51:12', '2020-06-14 17:51:12'),
(47, 'Fish N\' Chips', 'd9b7ccb8fb6d2be636ee7b6ebbe6a9ff.jpg', 'MAIN_COURSE', 45000, '2020-06-14 17:51:25', '2020-06-14 17:51:25'),
(48, 'Chicken Cordon Bleu', 'cfd70a84269be6c89ef44f0f53b0f762.jpg', 'MAIN_COURSE', 55000, '2020-06-14 17:52:01', '2020-06-14 17:52:01'),
(49, 'Chicken / Dori Butter Rice', '382a960b6a78328fa8f6fca5b2c4d8c7.jpg', 'MAIN_COURSE', 48000, '2020-06-14 17:52:21', '2020-06-14 17:52:21'),
(50, 'Greek Beef Penne', 'ae543f00c30c2e681be6d0547df90831.jpg', 'MAIN_COURSE', 42000, '2020-06-14 17:52:37', '2020-06-14 17:52:37'),
(51, 'Macaroni Schotel', 'c4812fd5a5b6012531fc108d16057529.jpg', 'MAIN_COURSE', 35000, '2020-06-14 17:52:59', '2020-06-14 17:52:59'),
(52, 'Fettuccine Tuna Chilli', '2484765ed14347cd55ae361a90e15f04.jpg', 'MAIN_COURSE', 45000, '2020-06-14 17:53:15', '2020-06-14 17:53:15'),
(53, 'Spaghetti Bolognese', 'd6baf4ab8d18285a9eeca3443ce18b89.jpg', 'MAIN_COURSE', 45000, '2020-06-14 17:53:32', '2020-06-14 17:53:32'),
(54, 'Spaghetti Aglio Olio', '7fb29b61444c25fe255421fa3d19b032.jpg', 'MAIN_COURSE', 45000, '2020-06-14 17:53:47', '2020-06-14 17:53:47'),
(55, 'Spaghetti Carbonara', '83c873b0ca49b02908b654d1529337c1.jpg', 'MAIN_COURSE', 45000, '2020-06-14 17:54:03', '2020-06-14 17:54:03'),
(56, 'Lasagna', 'a43519b14b53ea6b7d0a9adcdc10b92d.jpg', 'MAIN_COURSE', 60000, '2020-06-14 17:54:17', '2020-06-14 17:54:17'),
(57, 'Linguine Creamy Mushroom', '1107ea6d8b6b979501b66ac341b40ff1.jpg', 'MAIN_COURSE', 55000, '2020-06-14 17:54:31', '2020-06-14 17:54:31'),
(58, 'Cheese Crepes', '0b607606d2586bfa9aedc65e3a9a9262.jpg', 'LIGHT_MEALS', 25000, '2020-06-14 18:00:16', '2020-06-14 18:00:16'),
(59, 'Nutella Crepes', '65f8bac34bf801c5f80a786a330f32a3.jpg', 'LIGHT_MEALS', 25000, '2020-06-14 18:00:36', '2020-06-14 18:00:36'),
(60, 'Waffle With Nutella', '91bc0654e76f64db7d79555a1064ccde.jpg', 'LIGHT_MEALS', 27000, '2020-06-14 18:00:53', '2020-06-14 18:00:53'),
(61, 'Waffle With Ice Cream', '87bcbc4cbf608e38fc0b443ccb10c83c.jpg', 'LIGHT_MEALS', 25000, '2020-06-14 18:01:08', '2020-06-14 18:01:08'),
(62, 'Waffle Oreo', '552fdabe1501f3450bc3ffdec94b5a72.jpg', 'LIGHT_MEALS', 25000, '2020-06-14 18:01:21', '2020-06-14 18:01:21'),
(63, 'Hot Chocolate', '924ff92f8fb70f0da46dad5376494c89.jpg', 'NON_COFFEE', 30000, '2020-06-14 18:05:21', '2020-06-14 18:05:21'),
(64, 'Chocolate Hazelnut', '6af8cc832b507aaecebde5502a6fe13b.jpg', 'NON_COFFEE', 40000, '2020-06-14 18:06:01', '2020-06-14 18:06:01'),
(65, 'Choco Rum', 'c8dd9e42512e8be44eade200c2f54717.jpg', 'NON_COFFEE', 40000, '2020-06-14 18:06:16', '2020-06-14 18:06:16');

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `orders` (`id`, `id_customer`, `total_price`, `created_at`, `updated_at`) VALUES
(12, 2, 61000, '2020-06-19 09:11:25', '2020-06-19 09:11:25'),
(13, 5, 89000, '2020-06-19 14:21:13', '2020-06-19 14:21:13'),
(14, 2, 99000, '2020-06-19 14:22:21', '2020-06-19 14:22:21');

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `quantity` int(4) NOT NULL,
  `status` enum('NOT_PAID','ALREADY_PAID','CANCEL_ORDER') NOT NULL DEFAULT 'NOT_PAID'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `order_details` (`id`, `id_item`, `quantity`, `status`) VALUES
(12, 5, 1, 'ALREADY_PAID'),
(12, 9, 1, 'ALREADY_PAID'),
(13, 4, 2, 'ALREADY_PAID'),
(13, 10, 1, 'ALREADY_PAID'),
(14, 9, 1, 'ALREADY_PAID'),
(14, 10, 1, 'ALREADY_PAID'),
(14, 6, 1, 'ALREADY_PAID');

ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bill_id_cashier` (`id_cashier`),
  ADD KEY `fk_bill_id_customer` (`id_customer`),
  ADD KEY `fk_bill_id_order` (`id_order`);

ALTER TABLE `cashiers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_id_customer` (`id_customer`);

ALTER TABLE `order_details`
  ADD KEY `fk_od_id_customer` (`id`),
  ADD KEY `fk_od_id_item` (`id_item`);

ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `cashiers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `owners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `bills`
  ADD CONSTRAINT `fk_bill_id_cashier` FOREIGN KEY (`id_cashier`) REFERENCES `cashiers` (`id`),
  ADD CONSTRAINT `fk_bill_id_customer` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `fk_bill_id_order` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`);

ALTER TABLE `orders`
  ADD CONSTRAINT `fk_order_id_customer` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id`);

ALTER TABLE `order_details`
  ADD CONSTRAINT `fk_od_id_customer` FOREIGN KEY (`id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_od_id_item` FOREIGN KEY (`id_item`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;