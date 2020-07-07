-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2020 at 08:24 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin@123', '2020-07-04 11:02:14', '2020-07-04 11:04:30'),
(2, 'saurabh', 'saurabh@gmail.com', '12345678', '2020-07-04 11:03:16', '2020-07-04 11:04:35');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `des_id` int(11) NOT NULL,
  `des_uid` varchar(20) NOT NULL,
  `des_name` varchar(100) NOT NULL,
  `des_image` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`des_id`, `des_uid`, `des_name`, `des_image`, `created_at`, `updated_at`) VALUES
(1, '5f02cb4fdb076', 'America', '955236558america.jpg', '2020-07-06 06:57:19', '2020-07-06 06:57:19'),
(2, '5f02cbf924759', 'Italy', '1570748395Italy.jpg', '2020-07-06 07:00:09', '2020-07-06 07:00:09'),
(3, '5f02ccb18123d', 'Indonesia', '445385135Indonesia.jpg', '2020-07-06 07:03:13', '2020-07-06 07:03:13'),
(4, '5f02cccd621dc', 'Maldives', '165884597Maldives.jpg', '2020-07-06 07:03:41', '2020-07-06 07:03:41'),
(5, '5f02cdab3beff', 'Nepal', '348083151Nepal.jpg', '2020-07-06 07:07:23', '2020-07-06 07:07:23'),
(6, '5f02ce2e857eb', 'Brazil', '1496764719Brazil.jpg', '2020-07-06 07:09:34', '2020-07-06 07:09:34'),
(7, '5f02ceb90bd5a', 'Pakistan', '292014153pakistan.jpg', '2020-07-06 07:11:53', '2020-07-06 07:11:53'),
(8, '5f02e9debc5bc', 'Nepal south', '1483628272Indonesia.jpg', '2020-07-06 09:07:42', '2020-07-06 09:30:58'),
(9, '5f02ea0061d37', 'Afgan ', '30041780Nepal.jpg', '2020-07-06 09:08:16', '2020-07-06 09:28:16'),
(10, '5f02f1ab69705', 'India', '1874892381India.jpg', '2020-07-06 09:40:59', '2020-07-06 09:40:59'),
(11, '5f02f21cec83f', 'frizy', '909156161gallery-banner.jpg', '2020-07-06 09:42:52', '2020-07-06 09:42:52'),
(12, '5f02f248ebc2d', 'UK', '2028292331news3.jpg', '2020-07-06 09:43:36', '2020-07-06 09:43:36'),
(13, '5f0330a9ddcfe', 'Australia ', '691486136Sydney-Harbour-Bridge.jpg', '2020-07-06 14:09:45', '2020-07-06 14:29:45'),
(14, '5f033a1915e4b', 'California', '21340321261.jpg', '2020-07-06 14:50:01', '2020-07-06 14:50:01'),
(15, '5f033aa656ea6', 'Zibambe', '250370058our-teacher.jpg', '2020-07-06 14:52:22', '2020-07-06 14:52:22'),
(16, '5f033afb39189', 'test', '2071206404about-us-banner.jpg', '2020-07-06 14:53:47', '2020-07-06 14:53:47'),
(17, '5f03fa0b3f393', 'Namibiya', '1182796454bg-box-provide1.png', '2020-07-07 04:28:59', '2020-07-07 04:28:59'),
(18, '5f040226b87f7', 'California 1', '140231607bg-box-provide1.png', '2020-07-07 05:03:34', '2020-07-07 05:03:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`des_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `des_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
