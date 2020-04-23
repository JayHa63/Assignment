-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 23, 2020 at 08:01 PM
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
CREATE DATABASE IF NOT EXISTS `Fuel58` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `Fuel58`;

-- --------------------------------------------------------

--
-- Table structure for table `fuel`
--

DROP TABLE IF EXISTS `fuel`;
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

DROP TABLE IF EXISTS `fuelquote`;
CREATE TABLE IF NOT EXISTS `fuelquote` (
  `quoteid` bigint(20) unsigned NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `fuel_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fuel_id` int(11) DEFAULT NULL,
  `gallonrequest` decimal(15,4) DEFAULT NULL,
  `suggestprice` decimal(15,4) DEFAULT NULL,
  `totalAmountDue` decimal(15,4) DEFAULT NULL,
  `deliverydate` date DEFAULT NULL,
  `streetname` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fuelquote`
--

INSERT INTO `fuelquote` (`quoteid`, `userid`, `fuel_name`, `fuel_id`, `gallonrequest`, `suggestprice`, `totalAmountDue`, `deliverydate`, `streetname`, `city`, `state`, `zipcode`) VALUES
(13, 4, NULL, 4, '89.0000', '96.0000', '456.0000', '2020-04-01', NULL, NULL, NULL, NULL),
(14, 4, NULL, 6, '11111.0000', '1111.0000', '1111111.0000', '2020-04-08', NULL, NULL, NULL, NULL),
(15, 4, NULL, 5, '25.0000', '56.0000', '5555.0000', '2020-04-14', NULL, NULL, NULL, NULL),
(23, 2, NULL, 4, '7.0000', '2.0930', '14.6510', '2020-04-06', NULL, NULL, NULL, NULL),
(24, 1, NULL, 5, '25.0000', '2.3750', '59.3750', '2020-04-21', NULL, NULL, NULL, NULL),
(25, 2, NULL, 6, '45.0000', '2.3100', '103.9500', '2020-04-07', NULL, NULL, NULL, NULL),
(26, 2, NULL, 5, '48.0000', '2.3750', '114.0000', '2020-04-21', NULL, NULL, NULL, NULL),
(27, 2, NULL, 4, '25.0000', '2.0930', '52.3250', '2020-04-14', NULL, NULL, NULL, NULL),
(28, 2, NULL, 8, '111.0000', '11.0000', '1221.0000', '2222-11-01', 'fafadf', NULL, NULL, NULL),
(29, 2, NULL, 4, '500.0000', '2.0930', '1046.5000', '2020-04-19', 'qwe', 'houston', 'texas', '77025'),
(30, 2, NULL, 4, '31123.0000', '1.7850', '55554.5550', '1111-01-01', '123123', '123123', 'Idaho', '231231321'),
(31, 2, NULL, 5, '42432.0000', '1.7900', '75953.2800', '1111-11-11', '123123', '12323', 'Alabama', '123123'),
(32, 2, NULL, 6, '1111.0000', '1.7500', '1944.2500', '1111-01-01', '1111', '111', 'Texas', '11111'),
(33, 2, NULL, 5, '234234.0000', '1.7500', '409909.5000', '1111-11-11', '123123', '123123', 'Texas', '1231'),
(34, 2, NULL, 5, '1000.0000', '1.7500', '1750.0000', '2020-04-08', '123 Highland', 'Houston', 'Texas', '70022'),
(35, 2, NULL, 4, '500.0000', '1.7700', '885.0000', '2020-04-30', '123 Highland', 'Houston', 'Texas', '70022');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
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
  `state` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` int(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `firstname`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `level`, `address`, `city`, `state`, `zipcode`) VALUES
(1, 'Admin', '11111', '1111111', 'admin@gmail.com', NULL, '$2y$10$XY4CgTuehiqMCDtRSCU.UOge1QEp9muVd8w4q1zjtRUqlMMj7nYFu', 'YRCMN61gf6zkpgHVEmPwHqhBu1K1wh8muStMG5UmP5sV8wtFrO6ZX98wL8xh', '2020-03-24 18:54:44', '2020-04-23 18:50:50', 0, '111, 11111', '111', '1', 1),
(2, 'phong', 'phong', 'phong', 'phong1@gmail.com', NULL, '$2y$10$gJ2syCpAlymvTf9KODh9Z.iTRkiRSlUx2/3mI9lczdNKqUfKaArPy', NULL, '2020-03-27 18:20:33', '2020-04-24 00:50:27', 1, '123 Highland', 'Houston', 'Texas', 70022),
(3, 'phong22222', NULL, '', 'phong2@gmail.com', NULL, '$2y$10$gWgMQrEIG4wPtog0PzMIe.xrbAksIhkX2nBJJYUQUhQ38xG1HwUve', NULL, '2020-03-27 18:56:19', '2020-03-27 19:02:47', 1, 'SG', '1111111', '0', NULL),
(4, 'phong10', 'ln1', 'fn1', 'phong10@gmail.com', NULL, '$2y$10$9YmYjQhF.5fJb4bsynneDuB078l4zPtxJnO1nKNkBW0xZBlms0n0K', NULL, '2020-03-30 17:18:45', '2020-03-30 17:19:19', 1, 'ad1', 'ct1', '10', 8111),
(5, 'Quang', NULL, '', 'quang@gmail.com', NULL, '$2y$10$eWeHeWvl90BrQ1mReDWejeUgERJ9oUr/HsLwiwc9S.mgNvpIm4SDa', NULL, '2020-04-02 00:22:26', '2020-04-02 00:22:26', 1, NULL, NULL, '0', NULL),
(6, 'Lorenza Steuber DVM', NULL, '', 'mlehner@example.net', '2020-04-02 18:10:27', '$2y$04$th3omw1r8Fw.LMVjHfDh/uylbc0dckkAyFR1hPpXQAdSq6nBehYKG', 'kcgxGzlYer', '2020-04-02 18:10:27', '2020-04-02 18:10:27', 1, NULL, NULL, '0', NULL),
(7, 'Keith Schaefer', NULL, '', 'mossie.hoeger@example.com', '2020-04-02 18:16:10', '$2y$04$79l8J99HWyJQIGqggXLHwu8k2oGFFdilVjNA2ZOta3Al7..93ESau', '02nkGrgzGV', '2020-04-02 18:16:10', '2020-04-02 18:16:10', 1, NULL, NULL, '0', NULL),
(8, 'Dr. Harvey Schinner', NULL, '', 'fabian52@example.net', '2020-04-02 18:18:41', '$2y$04$r3ZyLYhkULHlnAWSnEoyHez/zi8b1y1486KJHSvzwDzYABR5VRTdu', '5hTMbzPaPD', '2020-04-02 18:18:41', '2020-04-02 18:18:41', 1, NULL, NULL, '0', NULL),
(9, 'Maurine Conroy I', NULL, '', 'ewell36@example.net', '2020-04-02 18:18:41', '$2y$04$9Jx4QqA4nNgl611bwYzTxuZbSnj7B/sohD8qcjc3ALlrzThLGCpDm', '4ieId8Qim4', '2020-04-02 18:18:41', '2020-04-02 18:18:41', 1, NULL, NULL, '0', NULL),
(10, 'JMac', NULL, '', 'jmac@example.com', NULL, '$2y$04$0MPwa7alA8p.Z9wxyH/cteevEqkgKSRPTuhIHRvMlwAdLU52lHzAy', NULL, '2020-04-02 18:48:52', '2020-04-02 18:48:52', 1, NULL, NULL, '0', NULL),
(11, 'JMac1', NULL, '', 'jmac1@example.com', NULL, '$2y$04$opwth9MUwWxt4WZj0P.oluwlzpOuGJ6KlNL.4JPUlGIaGuNO8t/ha', NULL, '2020-04-02 18:51:18', '2020-04-02 18:51:18', 1, NULL, NULL, '0', NULL),
(12, 'JMac1585835529', NULL, '', 'jmac1585835529@example.com', NULL, '$2y$04$GPd4JiG7vyVNn40N108Z8ulnhXnPp/BzlrEYKTxzqPKYWkNWPU8XO', NULL, '2020-04-02 18:52:09', '2020-04-02 18:52:09', 1, NULL, NULL, '0', NULL),
(13, 'Mr. Rashad Abernathy', NULL, '', 'owiegand@example.net', '2020-04-02 19:46:09', '$2y$04$LVQ6YCM2jO8/IQ2GNfR/p.PLoQAn9q/lFWTkBX1G01zf0lbZf3H7W', 'IEMzR0sNp2', '2020-04-02 19:46:09', '2020-04-02 19:46:09', 1, NULL, NULL, NULL, NULL),
(14, 'Tia Ebert', NULL, '', 'deckow.jerrell@example.com', '2020-04-02 19:46:09', '$2y$04$N74uE5fjfoUg4.WLLjk2gOR8aX5YDu9YSrNlnSro2hdPXpg.VCUTu', 'mENX0hfWAx', '2020-04-02 19:46:09', '2020-04-02 19:46:09', 1, NULL, NULL, NULL, NULL),
(15, 'JMac11585839088', NULL, '', 'jmac1585839088@example.com', NULL, '$2y$04$k0SYAsSFzYv4mB4Fsq58Z.6Up6SZ9C3s84/ZXLJNxN.bsRobDkmK6', NULL, '2020-04-02 19:51:28', '2020-04-02 19:51:28', 1, NULL, NULL, NULL, NULL),
(16, 'JMac11585841834', NULL, '', 'jmac1585841834@example.com', NULL, '$2y$04$WYbn88a0fZ5pESMyroxIweyO97Dzrv6dSKAgcife3GNtW2/qTtL8m', NULL, '2020-04-02 20:37:14', '2020-04-02 20:37:14', 1, NULL, NULL, NULL, NULL),
(17, 'Rolando Yost I', NULL, '', 'romaguera.rylan@example.com', '2020-04-02 20:37:19', '$2y$04$q53AGI0Iu6UIomXawrKl0eVhCMwfiq.caP4CUWOaz6I6djSpFhwRG', '5n59fRJCPf', '2020-04-02 20:37:19', '2020-04-02 20:37:19', 1, NULL, NULL, NULL, NULL),
(18, 'Camilla Bartoletti', NULL, '', 'casper.ida@example.net', '2020-04-02 20:37:19', '$2y$04$.PHOCDBTAO5VKV6kWRssCuAPLOE.WalTTe14u9DXYjh2btum.qWyG', 'DDwDIYr4dG', '2020-04-02 20:37:19', '2020-04-02 20:37:19', 1, NULL, NULL, NULL, NULL),
(19, 'Mervin O''Reilly', NULL, '', 'kay.kassulke@example.org', '2020-04-03 04:53:04', '$2y$04$gvEd6s1n7wbpkNzsqiPYb.BfXqoYTx.ISbz/IhOGPhrPDWSOvmTl6', 'ygZXA46NCp', '2020-04-03 04:53:04', '2020-04-03 04:53:04', 1, NULL, NULL, NULL, NULL),
(20, 'Cyril Hamill', NULL, '', 'vmertz@example.com', '2020-04-03 04:53:05', '$2y$04$myPlcwYjaQWIXYKJ41C3Iu6ls2UIwtT4g281zK8UYrWTDz8fj2Uj.', '0Kcvb4eb9S', '2020-04-03 04:53:05', '2020-04-03 04:53:05', 1, NULL, NULL, NULL, NULL),
(21, 'JMac11585871595', NULL, '', 'jmac1585871595@example.com', NULL, '$2y$04$pYzZiYV2qtY5ymaUVXkry.O1ttAo4YOvj7UaKzS4Cb0rygFTRRtd.', NULL, '2020-04-03 04:53:15', '2020-04-03 04:53:15', 1, NULL, NULL, NULL, NULL);

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
  MODIFY `quoteid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
