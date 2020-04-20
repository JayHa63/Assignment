-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 02, 2020 at 03:18 PM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Fuel58`
--

-- --------------------------------------------------------

--
-- Table structure for table `fuel`
--

CREATE TABLE IF NOT EXISTS `fuel` (
  `fuel_id` bigint(20) unsigned NOT NULL,
  `fuel_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fuel_price` decimal(15,4) DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fuel`
--

INSERT INTO `fuel` (`fuel_id`, `fuel_name`, `fuel_price`, `location`) VALUES
(4, 'Mid-Grade 901', '2.0930', 'Texas'),
(5, 'Premium 93', '2.3750', 'Texas'),
(6, 'Diesel', '2.3100', 'Texas'),
(7, 'Diesel1111', '2.3100', 'Texas'),
(8, 'test1', '11.0000', 'VN'),
(9, 'YYYY', '152.0000', 'Cali'),
(10, 'YYYY', '152.0000', 'CA');

-- --------------------------------------------------------

--
-- Table structure for table `fuelquote`
--

CREATE TABLE IF NOT EXISTS `fuelquote` (
  `quoteid` bigint(20) unsigned NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `fuel_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fuel_id` int(11) DEFAULT NULL,
  `gallonrequest` decimal(15,4) DEFAULT NULL,
  `suggestprice` decimal(15,4) DEFAULT NULL,
  `totalAmountDue` decimal(15,4) DEFAULT NULL,
  `deliverydate` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fuelquote`
--

INSERT INTO `fuelquote` (`quoteid`, `userid`, `fuel_name`, `fuel_id`, `gallonrequest`, `suggestprice`, `totalAmountDue`, `deliverydate`) VALUES
(12, 2, 'testful1', 0, '213.0000', '2132.0000', '123.0000', '2020-04-01'),
(13, 4, NULL, 4, '89.0000', '96.0000', '456.0000', '2020-04-01'),
(14, 4, NULL, 6, '11111.0000', '1111.0000', '1111111.0000', '2020-04-08'),
(15, 4, NULL, 5, '25.0000', '56.0000', '5555.0000', '2020-04-14');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(20) DEFAULT NULL,
  `zipcode` int(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `firstname`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `level`, `address`, `city`, `state`, `zipcode`) VALUES
(1, 'Admin', '', '', 'admin@gmail.com', NULL, '$2y$10$XY4CgTuehiqMCDtRSCU.UOge1QEp9muVd8w4q1zjtRUqlMMj7nYFu', 'bz6E1DXxLxre4155MlcqZzkUs5pK2MfN0TKNk4Gll4KFptsiItGNMjaeKJax', '2020-03-24 18:54:44', '2020-03-24 18:54:44', 0, '', '', 0, 0),
(2, 'phong', '', '', 'phong1@gmail.com', NULL, '$2y$10$gJ2syCpAlymvTf9KODh9Z.iTRkiRSlUx2/3mI9lczdNKqUfKaArPy', NULL, '2020-03-27 18:20:33', '2020-03-27 18:48:18', 1, '1111', '', 0, 0),
(3, 'phong22222', NULL, '', 'phong2@gmail.com', NULL, '$2y$10$gWgMQrEIG4wPtog0PzMIe.xrbAksIhkX2nBJJYUQUhQ38xG1HwUve', NULL, '2020-03-27 18:56:19', '2020-03-27 19:02:47', 1, 'SG', '1111111', 0, NULL),
(4, 'phong10', 'ln1', 'fn1', 'phong10@gmail.com', NULL, '$2y$10$9YmYjQhF.5fJb4bsynneDuB078l4zPtxJnO1nKNkBW0xZBlms0n0K', NULL, '2020-03-30 17:18:45', '2020-03-30 17:19:19', 1, 'ad1', 'ct1', 10, 8111),
(5, 'Quang', NULL, '', 'quang@gmail.com', NULL, '$2y$10$eWeHeWvl90BrQ1mReDWejeUgERJ9oUr/HsLwiwc9S.mgNvpIm4SDa', NULL, '2020-04-02 00:22:26', '2020-04-02 00:22:26', 1, NULL, NULL, 0, NULL),
(6, 'Lorenza Steuber DVM', NULL, '', 'mlehner@example.net', '2020-04-02 18:10:27', '$2y$04$th3omw1r8Fw.LMVjHfDh/uylbc0dckkAyFR1hPpXQAdSq6nBehYKG', 'kcgxGzlYer', '2020-04-02 18:10:27', '2020-04-02 18:10:27', 1, NULL, NULL, 0, NULL),
(7, 'Keith Schaefer', NULL, '', 'mossie.hoeger@example.com', '2020-04-02 18:16:10', '$2y$04$79l8J99HWyJQIGqggXLHwu8k2oGFFdilVjNA2ZOta3Al7..93ESau', '02nkGrgzGV', '2020-04-02 18:16:10', '2020-04-02 18:16:10', 1, NULL, NULL, 0, NULL),
(8, 'Dr. Harvey Schinner', NULL, '', 'fabian52@example.net', '2020-04-02 18:18:41', '$2y$04$r3ZyLYhkULHlnAWSnEoyHez/zi8b1y1486KJHSvzwDzYABR5VRTdu', '5hTMbzPaPD', '2020-04-02 18:18:41', '2020-04-02 18:18:41', 1, NULL, NULL, 0, NULL),
(9, 'Maurine Conroy I', NULL, '', 'ewell36@example.net', '2020-04-02 18:18:41', '$2y$04$9Jx4QqA4nNgl611bwYzTxuZbSnj7B/sohD8qcjc3ALlrzThLGCpDm', '4ieId8Qim4', '2020-04-02 18:18:41', '2020-04-02 18:18:41', 1, NULL, NULL, 0, NULL),
(10, 'JMac', NULL, '', 'jmac@example.com', NULL, '$2y$04$0MPwa7alA8p.Z9wxyH/cteevEqkgKSRPTuhIHRvMlwAdLU52lHzAy', NULL, '2020-04-02 18:48:52', '2020-04-02 18:48:52', 1, NULL, NULL, 0, NULL),
(11, 'JMac1', NULL, '', 'jmac1@example.com', NULL, '$2y$04$opwth9MUwWxt4WZj0P.oluwlzpOuGJ6KlNL.4JPUlGIaGuNO8t/ha', NULL, '2020-04-02 18:51:18', '2020-04-02 18:51:18', 1, NULL, NULL, 0, NULL),
(12, 'JMac1585835529', NULL, '', 'jmac1585835529@example.com', NULL, '$2y$04$GPd4JiG7vyVNn40N108Z8ulnhXnPp/BzlrEYKTxzqPKYWkNWPU8XO', NULL, '2020-04-02 18:52:09', '2020-04-02 18:52:09', 1, NULL, NULL, 0, NULL),
(13, 'Mr. Rashad Abernathy', NULL, '', 'owiegand@example.net', '2020-04-02 19:46:09', '$2y$04$LVQ6YCM2jO8/IQ2GNfR/p.PLoQAn9q/lFWTkBX1G01zf0lbZf3H7W', 'IEMzR0sNp2', '2020-04-02 19:46:09', '2020-04-02 19:46:09', 1, NULL, NULL, NULL, NULL),
(14, 'Tia Ebert', NULL, '', 'deckow.jerrell@example.com', '2020-04-02 19:46:09', '$2y$04$N74uE5fjfoUg4.WLLjk2gOR8aX5YDu9YSrNlnSro2hdPXpg.VCUTu', 'mENX0hfWAx', '2020-04-02 19:46:09', '2020-04-02 19:46:09', 1, NULL, NULL, NULL, NULL),
(15, 'JMac11585839088', NULL, '', 'jmac1585839088@example.com', NULL, '$2y$04$k0SYAsSFzYv4mB4Fsq58Z.6Up6SZ9C3s84/ZXLJNxN.bsRobDkmK6', NULL, '2020-04-02 19:51:28', '2020-04-02 19:51:28', 1, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fuel`
--
ALTER TABLE `fuel`
  ADD PRIMARY KEY (`fuel_id`);

--
-- Indexes for table `fuelquote`
--
ALTER TABLE `fuelquote`
  ADD PRIMARY KEY (`quoteid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fuel`
--
ALTER TABLE `fuel`
  MODIFY `fuel_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `fuelquote`
--
ALTER TABLE `fuelquote`
  MODIFY `quoteid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
