-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2020 at 03:06 PM
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
(1, '5f02cb4fdb076', 'America', '955236558america.jpg', '2020-07-06 01:27:19', '2020-07-06 01:27:19'),
(2, '5f02cbf924759', 'Italy', '1570748395Italy.jpg', '2020-07-06 01:30:09', '2020-07-06 01:30:09'),
(3, '5f02ccb18123d', 'Indonesia', '445385135Indonesia.jpg', '2020-07-06 01:33:13', '2020-07-06 01:33:13'),
(4, '5f02cccd621dc', 'Maldives', '165884597Maldives.jpg', '2020-07-06 01:33:41', '2020-07-06 01:33:41'),
(5, '5f02cdab3beff', 'Nepal', '348083151Nepal.jpg', '2020-07-06 01:37:23', '2020-07-06 01:37:23'),
(6, '5f02ce2e857eb', 'Brazil', '1496764719Brazil.jpg', '2020-07-06 01:39:34', '2020-07-06 01:39:34'),
(7, '5f02ceb90bd5a', 'Pakistan', '292014153pakistan.jpg', '2020-07-06 01:41:53', '2020-07-06 01:41:53'),
(9, '5f02ea0061d37', 'Afganistan', '308724014afgan.jpg', '2020-07-06 03:38:16', '2020-07-08 06:34:23'),
(10, '5f02f1ab69705', 'India', '1874892381India.jpg', '2020-07-06 04:10:59', '2020-07-06 04:10:59'),
(11, '5f02f21cec83f', 'Fiji Island', '1422672158Fiji-islands.jpg', '2020-07-06 04:12:52', '2020-07-08 06:31:10'),
(12, '5f02f248ebc2d', 'United Kingdom', '1875703176uk.jpg', '2020-07-06 04:13:36', '2020-07-08 06:33:04'),
(13, '5f0330a9ddcfe', 'Australia ', '691486136Sydney-Harbour-Bridge.jpg', '2020-07-06 08:39:45', '2020-07-06 08:59:45'),
(14, '5f033a1915e4b', 'California ', '1161236366california.jpg', '2020-07-06 09:20:01', '2020-07-08 06:35:34'),
(15, '5f033aa656ea6', 'Zimbabwe ', '1574643557zimbabwe.jpg', '2020-07-06 09:22:22', '2020-07-08 06:35:42'),
(17, '5f03fa0b3f393', 'Namibiya ', '1854838198namibiya.jpg', '2020-07-06 22:58:59', '2020-07-08 06:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `place_id` int(11) NOT NULL,
  `place_uid` varchar(20) NOT NULL,
  `place_name` varchar(100) NOT NULL,
  `des_name` varchar(100) NOT NULL,
  `place_image` varchar(255) NOT NULL,
  `review_value` varchar(2) NOT NULL DEFAULT '4',
  `place_charge` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`place_id`, `place_uid`, `place_name`, `des_name`, `place_image`, `review_value`, `place_charge`, `created_at`, `updated_at`) VALUES
(1, '5f055f066ff65', 'City Palace', 'India', '216205892City-Palace.jpg', '4', '250 Rs.', '2020-07-08 05:52:06', '2020-07-08 12:32:13'),
(2, '5f05708557713', 'Taj Mahal', 'India', '593096477India.jpg', '5', '800 Rs.', '2020-07-08 07:06:45', '2020-07-08 07:06:45'),
(3, '5f0572f736caa', 'Hawamahal', 'India', '56144147hawamahal.jpg', '4', '700 Rs.', '2020-07-08 07:17:11', '2020-07-08 07:33:16'),
(4, '5f0573442391a', 'Ponds Of Brazil', 'Brazil', '48245868Brazil.jpg', '5', '1000 $', '2020-07-08 07:18:28', '2020-07-08 07:32:53'),
(5, '5f05767a9c030', 'Tower of London', 'United Kingdom', '1030035140Tower-of-London.jpg', '5', '1200 $', '2020-07-08 07:32:10', '2020-07-08 07:32:10'),
(8, '5f05a4b3269fa', 'Agra Fort', 'India', '1041450997Agra-Fort.jpg', '4', '1001 Rs.', '2020-07-08 10:49:23', '2020-07-08 12:30:21'),
(10, '5f05bae555dcd', 'Minaret of Jam', 'Afganistan', '119431701Minaret-of-Jam.jpg', '4', '130 Rs.', '2020-07-08 12:24:05', '2020-07-08 12:24:05'),
(11, '5f05bb4229368', 'Buddha of Bamyan', 'Afganistan', '560477897Buddha-of-Bamyan.jpg', '4', '235 Rs.', '2020-07-08 12:25:38', '2020-07-08 12:32:56'),
(12, '5f05bba7864b7', 'Band-e-Amir National Park', 'Afganistan', '130957448Band-e-Amir-National-Park.jpg', '5', '200 Rs.', '2020-07-08 12:27:19', '2020-07-08 12:27:19'),
(13, '5f05bc1e4255c', 'Amber Palace', 'India', '822692713Amber-Palace.jpg', '4', '177 Rs.', '2020-07-08 12:29:18', '2020-07-08 12:29:18'),
(14, '5f05bdba248c9', 'Ranthambore National Park', 'India', '1684313834Ranthambore-National-Park.jpg', '4', '180 Rs.', '2020-07-08 12:36:10', '2020-07-08 12:36:10'),
(15, '5f05bee7f1ab5', 'Buckingham Palace', 'United Kingdom', '1291140802Buckingham-Palace.jpg', '4', '800 $', '2020-07-08 12:41:11', '2020-07-08 12:41:11'),
(16, '5f05bf1e76768', 'Big Ben', 'United Kingdom', '936499890Big-Ben.jpg', '4', '199 $', '2020-07-08 12:42:06', '2020-07-08 12:42:06'),
(17, '5f05bf67457fe', 'The British Museum', 'United Kingdom', '774464056British-Museum.jpg', '5', '999 $', '2020-07-08 12:43:19', '2020-07-08 12:43:19'),
(18, '5f05bfb43eeb6', 'lastminute.com London Eye', 'United Kingdom', '253597969London-Eye.jpg', '5', '800 $', '2020-07-08 12:44:36', '2020-07-08 12:44:36'),
(19, '5f05c01971c4b', 'Lemonade cafe', 'Nepal', '600881197Lemonade-cafe.jpg', '4', '500 Rs.', '2020-07-08 12:46:17', '2020-07-08 12:46:17'),
(20, '5f05c06a5c638', 'Pashupatinath Temple', 'Nepal', '1973808993Pashupatinath-Temple.jpg', '5', '455 Rs.', '2020-07-08 12:47:38', '2020-07-08 12:47:38'),
(21, '5f05c0fa72a41', 'Sydney Opera House', 'Australia', '740809284Sydney-Opera-House.jpg', '5', '100 $', '2020-07-08 12:50:02', '2020-07-08 12:50:02'),
(22, '5f05c13f99b91', 'Uluru', 'Australia', '1678677146Uluru.jpg', '4', '199 $', '2020-07-08 12:51:11', '2020-07-08 12:51:11'),
(23, '5f05c1ab4e43d', 'Disneyland Park', 'California', '1891735683Disneyland-Park.jpg', '4', '299 $', '2020-07-08 12:52:59', '2020-07-08 12:52:59'),
(24, '5f05c23f516cd', 'Faisal Mosque', 'Pakistan', '2806724Faisal-Mosque.jpg', '5', '122 Rs.', '2020-07-08 12:55:27', '2020-07-08 12:55:27'),
(25, '5f05c2ad8074f', 'MalÃ© Atoll', 'Maldives', '958050702MalÃ© Atoll.jpg', '4', '120 Rs.', '2020-07-08 12:57:17', '2020-07-08 12:57:17'),
(26, '5f05c309a958b', 'Sugarloaf Mountain', 'Brazil', '1737155943Sugarloaf-Mountain.jpg', '5', '700 $', '2020-07-08 12:58:49', '2020-07-08 12:58:49'),
(27, '5f05c3611787c', 'Tanah Lot', 'Indonesia', '2045364863Tanah-Lot.jpg', '3', '10 $', '2020-07-08 13:00:17', '2020-07-08 13:00:17'),
(28, '5f05c3c711dda', 'Mana Pools National Park', 'Zimbabwe', '1539922073Mana-Pools-National-Park.jpg', '4', '120 $', '2020-07-08 13:01:59', '2020-07-08 13:01:59'),
(29, '5f05c402d85c4', 'Devils Pool Victoria Falls', 'Zimbabwe', '2080591667Devils-Pool-Victoria-Falls.jpg', '5', '300 $', '2020-07-08 13:02:58', '2020-07-08 13:02:58'),
(30, '5f05c455e7184', 'Yellowstone National Park', 'America', '1511254263Yellowstone-National-Park.jpg', '5', '900 $', '2020-07-08 13:04:21', '2020-07-08 13:04:21');

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
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`place_id`);

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
  MODIFY `des_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
