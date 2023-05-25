-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 07:29 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ice_station`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `sno` int(11) NOT NULL,
  `original_name` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date & time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`sno`, `original_name`, `product_name`, `quantity`, `price`, `date & time`) VALUES
(1, 'Softy', 'chocolate', 1, 20, '2022-12-24 08:51:51'),
(2, 'Milk Shake', 'Badam', 2, 100, '2022-12-24 08:51:54'),
(3, 'Thick Shake', 'Rose', 3, 180, '2022-12-24 08:51:57'),
(4, 'Ice Cream Soda', 'Pineapple', 4, 300, '2022-12-24 08:52:00'),
(5, 'Sundae', 'Rose', 5, 150, '2022-12-24 08:52:03'),
(6, 'Softy', 'chocolate', 1, 20, '2022-12-24 08:55:59'),
(7, 'Softy', 'vanilla', 2, 40, '2022-12-24 08:56:02'),
(8, 'Softy', 'Rainbow', 3, 75, '2022-12-24 08:56:05'),
(9, 'Thick Shake', 'Rose', 0, 0, '2022-12-24 10:07:55'),
(10, 'Sundae', 'Rose', 0, 0, '2022-12-24 10:07:58'),
(11, 'Sundae', 'Chocolate', 0, 0, '2022-12-24 10:08:02'),
(12, 'Thick Shake', 'Rose', 1, 60, '2022-12-24 10:08:06'),
(13, 'Sundae', 'Rose', 1, 30, '2022-12-24 10:08:09'),
(14, 'Sundae', 'Chocolate', 1, 30, '2022-12-24 10:08:12'),
(15, 'Sundae', 'Lychee', 0, 0, '2022-12-24 10:11:21'),
(16, 'Others', 'water Bottle', 1, 40, '2022-12-24 10:12:50'),
(17, 'Others', 'Cold Coffe', 1, 50, '2022-12-24 10:12:53'),
(18, 'Softy', 'vanilla', 1, 20, '2022-12-24 10:12:56'),
(19, 'Thick Shake', 'Lychee', 2, 120, '2022-12-25 10:58:37'),
(20, 'Thick Shake', 'Rose', 3, 180, '2022-12-25 10:58:40'),
(21, 'Thick Shake', 'Chocolate', 3, 180, '2022-12-25 10:58:43'),
(22, 'Thick Shake', 'Rose', 1, 60, '2022-12-25 11:00:50'),
(23, 'Thick Shake', 'Lychee', 1, 60, '2022-12-25 11:00:53'),
(24, 'Thick Shake', 'Rose', 1, 60, '2022-12-25 11:04:36'),
(25, 'Thick Shake', 'Lychee', 1, 60, '2022-12-25 11:04:38'),
(26, 'Thick Shake', 'Chocolate', 1, 60, '2022-12-25 11:04:41'),
(27, 'Softy', 'vanilla', 1, 20, '2022-12-25 11:07:09'),
(28, 'Softy', 'chocolate', 2, 40, '2022-12-25 11:07:12'),
(29, 'Softy', 'vanilla', 1, 20, '2022-12-25 11:07:31'),
(30, 'Softy', 'vanilla', 1, 20, '2022-12-25 11:08:34'),
(31, 'Softy', 'vanilla', 2, 40, '2022-12-25 11:08:37'),
(32, 'Softy', 'vanilla', 1, 20, '2022-12-25 11:08:37'),
(33, 'Softy', 'vanilla', 3, 60, '2022-12-25 11:08:40'),
(34, 'Softy', 'vanilla', 2, 40, '2022-12-25 11:08:40'),
(35, 'Softy', 'vanilla', 3, 60, '2022-12-25 11:08:43'),
(36, 'Thick Shake', 'Rose', 1, 60, '2022-12-25 11:18:20'),
(37, 'Thick Shake', 'Lychee', 2, 120, '2022-12-25 11:18:23'),
(38, 'Thick Shake', 'Rose', 0, 0, '2022-12-25 11:22:23'),
(39, 'Thick Shake', 'Lychee', 0, 0, '2022-12-25 11:22:26'),
(40, 'Thick Shake', 'Rose', 2, 120, '2022-12-25 11:23:43'),
(41, 'Thick Shake', 'Rose', 2, 120, '2022-12-25 13:12:31'),
(42, 'Thick Shake', 'Sitafal', 2, 200, '2022-12-25 13:12:34'),
(43, 'Ice Cream Soda', 'Pineapple', 1, 75, '2022-12-25 13:12:36'),
(44, 'Ice Cream Soda', 'Blackcurrant', 1, 75, '2022-12-25 13:12:39'),
(45, 'Juice', 'Apple', 1, 60, '2022-12-25 13:12:42'),
(46, 'Sundae', 'vanilla', 1, 25, '2022-12-25 13:13:44'),
(47, 'Milk Shake', 'Badam', 1, 50, '2022-12-25 13:13:47'),
(48, 'Milk Shake', 'Mango', 1, 50, '2022-12-25 13:13:54'),
(49, 'Mocktail', 'Blue Lagoon', 2, 150, '2022-12-25 13:13:56'),
(50, 'Mocktail', 'Green Mint', 2, 150, '2022-12-25 13:13:59'),
(51, 'Juice', 'Orange', 1, 50, '2022-12-25 13:16:45'),
(52, 'Juice', 'Mosambi', 1, 50, '2022-12-25 13:16:48'),
(53, 'Thick Shake', 'Rose', 3, 180, '2022-12-25 13:32:54'),
(54, 'Thick Shake', 'Lychee', 3, 180, '2022-12-25 13:32:57'),
(55, 'Thick Shake', 'Rose', 1, 60, '2022-12-25 13:33:50'),
(56, 'Thick Shake', 'Lychee', 1, 60, '2022-12-25 13:33:54'),
(57, 'Thick Shake', 'Rose', 2, 120, '2022-12-30 19:40:18'),
(58, 'Thick Shake', 'Rose', 1, 60, '2023-01-06 13:26:49'),
(59, 'Thick Shake', 'Choco mint', 2, 120, '2023-01-06 13:26:53'),
(60, 'Thick Shake', 'StrawBerry', 1, 60, '2023-01-06 13:26:56'),
(61, 'Softy', 'chocolate', 6, 120, '2023-01-06 13:48:44'),
(62, 'Softy', 'vanilla', 1, 20, '2023-01-06 13:48:47'),
(63, 'Softy', 'vanilla', 4, 80, '2023-01-06 13:48:55'),
(64, 'Others', 'ColdDrinks', 1, 40, '2023-01-10 18:18:11'),
(65, 'Thick Shake', 'Rose', 1, 60, '2023-01-23 04:32:02'),
(66, 'Thick Shake', 'Rose', 1, 60, '2023-01-23 04:32:23'),
(67, 'Thick Shake', 'Rose', 2, 120, '2023-02-09 05:33:44'),
(68, 'Thick Shake', 'Rose', 2, 120, '2023-02-09 05:34:00'),
(69, 'Thick Shake', 'Rose', 2, 120, '2023-02-09 05:34:01'),
(70, 'Thick Shake', 'Rose', 2, 120, '2023-02-09 05:34:01'),
(71, 'Thick Shake', 'Lychee', 1, 60, '2023-02-09 05:35:08'),
(72, 'Thick Shake', 'Rose', 2, 120, '2023-02-09 05:49:05'),
(73, 'Thick Shake', 'Lychee', 1, 60, '2023-02-22 06:15:28'),
(74, 'Thick Shake', 'BlueBerry', 1, 60, '2023-02-22 06:15:40'),
(75, 'Milk Shake', 'KesarPista', 2, 100, '2023-02-22 06:16:16'),
(76, 'Milk Shake', 'Rose', 2, 100, '2023-02-22 06:16:22'),
(77, 'Milk Shake', 'Banana', 1, 50, '2023-02-22 06:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `history_temp`
--

CREATE TABLE `history_temp` (
  `sno` int(11) NOT NULL,
  `original_name` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date & time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insert_data`
--

CREATE TABLE `insert_data` (
  `id` int(11) NOT NULL,
  `original_name` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(26, 'IceStation', 'icestation123'),
(27, 'ice station', 'icestation123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `history_temp`
--
ALTER TABLE `history_temp`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `insert_data`
--
ALTER TABLE `insert_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `history_temp`
--
ALTER TABLE `history_temp`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `insert_data`
--
ALTER TABLE `insert_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
