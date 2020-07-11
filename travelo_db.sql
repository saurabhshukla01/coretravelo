-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2020 at 06:23 PM
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
(1, 'admin', 'admin@gmail.com', 'admin@123', '2020-07-04 11:02:14', '2020-07-09 06:53:45'),
(2, 'saurabh', 'saurabh@gmail.com', '12345678', '2020-07-04 11:03:16', '2020-07-09 04:38:25');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `blog_uid` varchar(20) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_desc` text NOT NULL,
  `blog_image` varchar(255) NOT NULL,
  `blog_date` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`blog_id`, `blog_uid`, `category_name`, `blog_title`, `blog_desc`, `blog_image`, `blog_date`, `created_at`, `updated_at`) VALUES
(1, '5f09575fc051e', 'Technolozy', 'Your Restaurant Blog and Social Media', 'Make sure you have a plan for pushing out your content across multiple social media platforms. Twitter, Pinterest, Facebook, Tumblr, Google+, Instagram, and YouTube can all be beneficial.', '1864942000vegitable-desc.jpg', '15 Jan , 2020', '2020-07-11 00:38:31', '2020-07-11 16:21:59'),
(2, '5f0959184a435', 'Zym', 'Event Announcements Title', 'Announce it on the blog. People see your website as a source of the real information. Share all the information people need. Entice them to come by sharing the benefits with them: Come and enjoy great music this Saturday!', '271947431Restaurant-Blog-Events.png', '15 July , 2020', '2020-07-11 00:45:52', '2020-07-11 16:21:23'),
(3, '5f0959c2b4044', 'Zym', 'Health Is good for every Peoples', 'Here are over 60 health and wellness topics you can create in an hour. These are actual blog post ideas, not lame-o headlines. Plus, I included my strategy on how to prevent this from becoming an every-week kind of thing. #PreventionIsTheBestMedicine', '1913082141healty-girl.jpg', '22 feb , 2020', '2020-07-11 00:48:42', '2020-07-11 16:21:14'),
(4, '5f09612f5384c', 'Zym', 'Restaurant food supply chain services', 'If you are at an office or shared network, you can ask the network administrator to run a scan across the network looking for misconfigured or infected devices.', '862261044master-safe.png', '15 March , 2020', '2020-07-11 01:20:23', '2020-07-11 10:38:39'),
(5, '5f09683869602', 'Zym', 'Evidence in Motion (Medical/Professional)', 'Why you should be following: Evidence in Motion (EIM) is an organization dedicated to changing the way people think about practitioners and continuing education. Their insightful posts (which often emphasize the therapy world) always seek to inspire and educate readers about what it really means to be part of the medical field. From quality data analyses to discussions on effective treatments, EIM is an important educational resource for anyone looking to enter the medical profession.', '793677522heath3.jpg', '31 March , 2020', '2020-07-11 01:50:24', '2020-07-11 10:38:39'),
(6, '5f0968b416e14', 'Zym', 'Cancerwise Blog (Cancer Awareness/Health)', 'Why you should be following: The Cancerwise blog is sponsored by the University of Texas MD Anderson Cancer Center and is authored by survivors and their families. Some posts highlight survivor stories while others offer insight into treatment options to those who are affected by cancer. Each story is poignant, genuine, and at times, heartwarming. If you or someone you know could use a little hope during treatment, this is where youâ€™ll find it.', '1546651243health2.jpg', '15 July , 2020', '2020-07-11 01:52:28', '2020-07-11 16:21:31'),
(7, '5f096f67a6322', 'Technolozy', 'These are actual blog post ideas, not lame-o headlines', 'Commit to a schedule and stick with it. Even if itâ€™s not every week or not the same length & format every week.\r\nHere are over 60 health and wellness topics you can create in an hour. These are actual blog post ideas, not lame-o headlines. Plus, I included my strategy on how to prevent this from becoming an every-week kind of thing. #PreventionIsTheBestMedicine', '444451906health3.jpg', '12 Nov , 2019', '2020-07-11 02:21:03', '2020-07-11 16:21:48'),
(8, '5f096fc7af1f5', 'Technolozy', 'Google inks pact for new 35-storey office', 'These are actual blog post ideas, not lame-o headlines. These are actual blog post ideas, not lame-o headlines. These are actual blog post ideas, not lame-o headlines.These are actual blog post ideas, not lame-o headlines.These are actual blog post ideas, not lame-o headlines.', '1907318798modern-technolgy.png', '15 Jan , 2020', '2020-07-11 02:22:39', '2020-07-11 16:16:59'),
(9, '5f09728d8626d', 'Technolozy', 'Utilize images frequently', 'You may be wondering how many images to use in your blog posts. The short answer: as many as you need.\r\n\r\nBut for most of you, that isnâ€™t very helpful. If youâ€™re looking for a specific amount, the general consensus is one image per 150 words.\r\n\r\nThe number of images you use varies post to post. Like I mentioned before, every image needs to add something to the post. It shouldnâ€™t just be there for decoration.\r\n\r\nUtilize as many images as possible. Just donâ€™t go overboard, or else your blog post will end up looking like an Instagram feed.', '1307070720product1.jpg', '30 April , 2020', '2020-07-11 02:34:29', '2020-07-11 16:15:10'),
(10, '5f09746e04674', 'Technolozy', 'Tutorials and How-to Guides', 'Tutorials and How-to guides are probably the simplest type of blog post you can work on. They are easy because they involve you talking about things you are already familiar with such as your product or service.\r\n\r\nThe most important thing when it comes to how-to guides is to break down your tutorial into the smallest steps and into the simplest terms. Donâ€™t assume your readers know what theyâ€™re doing â€” this is a tutorial, remember?\r\n\r\nThink about your recent work, and you can probably find some great ideas for you to write a tutorial on. Our co-founder built the largest WordPress resource, WPBeginner, by following this exact same principle.', '1893812286total1.png', '25 May , 2020', '2020-07-11 02:42:30', '2020-07-11 16:13:43'),
(11, '5f09755b55885', 'Zym', 'Why Your Gym Needs A Fitness Blog', 'With all of the fitness resources, blogs, and articles circling the web, most of them arenâ€™t created by gyms themselves. Creating content for your gymâ€™s blog will get more traffic to your site and more members through your door.\r\n\r\nThere are countless health and fitness blogs, resources, articles, and videos circling the web created by anyone from a stay-at-home mom to the highest-level fitness experts. So, why donâ€™t we see gyms pushing similar content to their audiences? Perhaps gyms donâ€™t engage in inbound marketing because they donâ€™t want to take the time to create engaging content. Often when attempting to write a fitness blog, the following thoughts run through their minds: â€œWhat should I write about? Can I even write? I bet everyone already knows everything about fitness from all the other sources out there. I donâ€™t have anything original to contribute. If this isnâ€™t awesome, people arenâ€™t going to take me seriously or are going to know how little I actually know. Maybe Iâ€™ll just go do something else that is more important for now.â€', '280117061gym2.jpg', 'April 16 , 2018', '2020-07-11 02:46:27', '2020-07-11 02:46:27'),
(12, '5f097598e2dca', 'Zym', 'How Does Blogging Benefit You doing Zym', 'Blogging isnâ€™t easy and it takes some practice, so why should gyms focus more of their marketing efforts in this area? The answer is to tear down fears and barriers to entry for people who are not natural gym goers or who donâ€™t feel comfortable at the gym. The whole concept of a gym is to acquire as many new members and keep existing ones as possible, and creating a blog that makes potential new members feel more comfortable with your brand, location, and culture is so critical, and a health and fitness blog is the perfect way to communicate that message.', '122450429zym.jpg', 'May 19 , 2019', '2020-07-11 02:47:28', '2020-07-11 02:47:28');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_uid` varchar(20) NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_uid`, `category_name`, `created_at`, `updated_at`) VALUES
(1, '5f085d8453702', 'Restaurant food\r\n\r\n', '2020-07-10 12:24:52', '2020-07-11 07:10:32'),
(2, '5f085dde806ec', 'Travel news\r\n\r\n', '2020-07-10 12:24:52', '2020-07-10 12:24:52'),
(3, '5f085e275e123', 'Modern technology\r\n\r\n', '2020-07-10 12:27:06', '2020-07-10 12:27:06'),
(4, '5f085e8f98e37', 'Product\r\n\r\n', '2020-07-10 12:27:06', '2020-07-10 12:27:06'),
(5, '5f085ea057cdf', 'Inspiration\r\n\r\n', '2020-07-10 12:28:38', '2020-07-10 12:28:38'),
(6, '5f085ededdb1e', 'Health Care\r\n\r\n', '2020-07-10 12:28:38', '2020-07-10 12:28:38'),
(7, '5f086b1ce80bb', 'Technolozy', '2020-07-10 13:20:28', '2020-07-10 13:20:28'),
(11, '5f0975062cc31', 'Zym', '2020-07-11 08:15:02', '2020-07-11 08:15:02');

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
  `travel_type` varchar(100) NOT NULL DEFAULT '',
  `review_value` varchar(2) NOT NULL DEFAULT '4',
  `place_charge` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`place_id`, `place_uid`, `place_name`, `des_name`, `place_image`, `travel_type`, `review_value`, `place_charge`, `created_at`, `updated_at`) VALUES
(1, '5f055f066ff65', 'City Palace', 'India', '216205892City-Palace.jpg', 'Advance Travel Tour', '4', '$ 85', '2020-07-08 05:52:06', '2020-07-10 08:42:39'),
(2, '5f05708557713', 'Taj Mahal', 'India', '593096477India.jpg', 'Advance Travel Tour', '5', '$ 85', '2020-07-08 07:06:45', '2020-07-10 08:42:39'),
(3, '5f0572f736caa', 'Hawamahal', 'India', '56144147hawamahal.jpg', 'Advance Travel Tour', '4', '$ 85', '2020-07-08 07:17:11', '2020-07-10 08:42:39'),
(4, '5f0573442391a', 'Ponds Of Brazil', 'Brazil', '48245868Brazil.jpg', 'Advance Travel Tour', '5', '$ 85', '2020-07-08 07:18:28', '2020-07-10 08:42:39'),
(5, '5f05767a9c030', 'Tower of London', 'United Kingdom', '1030035140Tower-of-London.jpg', 'Advance Travel Tour', '4', '$ 85', '2020-07-08 07:32:10', '2020-07-10 08:42:39'),
(8, '5f05a4b3269fa', 'Agra Fort', 'India', '1041450997Agra-Fort.jpg', 'Advance Travel Tour', '4', '$ 85', '2020-07-08 10:49:23', '2020-07-10 08:42:39'),
(10, '5f05bae555dcd', 'Minaret of Jam', 'Afganistan', '119431701Minaret-of-Jam.jpg', 'Advance Travel Tour', '4', '$ 95', '2020-07-08 12:24:05', '2020-07-10 08:43:15'),
(11, '5f05bb4229368', 'Buddha of Bamyan', 'Afganistan', '560477897Buddha-of-Bamyan.jpg', 'Advance Travel Tour', '4', '$ 95', '2020-07-08 12:25:38', '2020-07-10 08:43:15'),
(12, '5f05bba7864b7', 'Band-e-Amir National Park', 'Afganistan', '130957448Band-e-Amir-National-Park.jpg', 'Advance Travel Tour', '5', '$ 95', '2020-07-08 12:27:19', '2020-07-10 08:43:15'),
(13, '5f05bc1e4255c', 'Amber Palace', 'India', '822692713Amber-Palace.jpg', 'Advance Travel Tour', '4', '$ 95', '2020-07-08 12:29:18', '2020-07-10 08:43:15'),
(14, '5f05bdba248c9', 'Ranthambore National Park', 'India', '1684313834Ranthambore-National-Park.jpg', 'Advance Travel Tour', '4', '$ 95', '2020-07-08 12:36:10', '2020-07-10 08:43:15'),
(15, '5f05bee7f1ab5', 'Buckingham Palace', 'United Kingdom', '1291140802Buckingham-Palace.jpg', 'Advance Travel Tour', '4', '$ 95', '2020-07-08 12:41:11', '2020-07-10 08:43:15'),
(16, '5f05bf1e76768', 'Big Ben', 'United Kingdom', '936499890Big-Ben.jpg', 'Advance Travel Tour', '4', '$ 95', '2020-07-08 12:42:06', '2020-07-10 08:43:15'),
(17, '5f05bf67457fe', 'The British Museum', 'United Kingdom', '774464056British-Museum.jpg', 'Advance Travel Tour', '4', '$ 105', '2020-07-08 12:43:19', '2020-07-10 08:43:40'),
(18, '5f05bfb43eeb6', 'lastminute.com London Eye', 'United Kingdom', '253597969London-Eye.jpg', 'Advance Travel Tour', '3', '$ 105', '2020-07-08 12:44:36', '2020-07-10 08:43:40'),
(19, '5f05c01971c4b', 'Lemonade cafe', 'Nepal', '600881197Lemonade-cafe.jpg', 'Simple Travel Tour', '4', '$ 105', '2020-07-08 12:46:17', '2020-07-10 08:43:40'),
(20, '5f05c06a5c638', 'Pashupatinath Temple', 'Nepal', '1973808993Pashupatinath-Temple.jpg', 'Advance Travel Tour', '4', '$ 105', '2020-07-08 12:47:38', '2020-07-10 08:43:40'),
(21, '5f05c0fa72a41', 'Sydney Opera House', 'America', '740809284Sydney-Opera-House.jpg', 'Advance Travel Tour', '3', '$ 105', '2020-07-08 12:50:02', '2020-07-10 08:43:40'),
(22, '5f05c13f99b91', 'Uluru', 'Australia', '1678677146Uluru.jpg', 'Advance Travel Tour', '4', '$ 105', '2020-07-08 12:51:11', '2020-07-10 08:43:40'),
(23, '5f05c1ab4e43d', 'Disneyland Park', 'California', '1891735683Disneyland-Park.jpg', 'Advance Travel Tour', '4', '$ 105', '2020-07-08 12:52:59', '2020-07-10 08:43:40'),
(24, '5f05c23f516cd', 'Faisal Mosque', 'Pakistan', '2806724Faisal-Mosque.jpg', 'Advance Travel Tour', '4', '$ 105', '2020-07-08 12:55:27', '2020-07-10 08:43:40'),
(25, '5f05c2ad8074f', 'MalÃ© Atoll', 'Maldives', '958050702MalÃ© Atoll.jpg', 'Advance Travel Tour', '4', '$ 100', '2020-07-08 12:57:17', '2020-07-10 08:45:09'),
(26, '5f05c309a958b', 'Sugarloaf Mountain', 'Brazil', '1737155943Sugarloaf-Mountain.jpg', 'Advance Travel Tour', '2', '$ 30', '2020-07-08 12:58:49', '2020-07-10 08:45:35'),
(27, '5f05c3611787c', 'Tanah Lot', 'Indonesia', '2045364863Tanah-Lot.jpg', 'Advance Travel Tour', '3', '$ 170', '2020-07-08 13:00:17', '2020-07-10 08:44:26'),
(28, '5f05c3c711dda', 'Mana Pools National Park', 'Zimbabwe ', '1539922073Mana-Pools-National-Park.jpg', 'Advance Travel Tour', '2', '$ 25', '2020-07-08 13:01:59', '2020-07-10 08:45:42'),
(29, '5f05c402d85c4', 'Devils Pool Victoria Falls', 'America', '2080591667Devils-Pool-Victoria-Falls.jpg', 'Advance Travel Tour', '3', '$ 170', '2020-07-08 13:02:58', '2020-07-10 08:44:26'),
(30, '5f05c455e7184', 'Yellowstone National Park', 'America', '1511254263Yellowstone-National-Park.jpg', 'Simple Travel Tour', '4', '$ 170', '2020-07-08 13:04:21', '2020-07-10 08:44:26'),
(31, '5f071c65c4a6d', 'Darling Harbour', 'Australia', '815328598Darling-Harbour.jpg', 'Advance Travel Tour', '4', '$ 100', '2020-07-09 13:32:21', '2020-07-10 08:44:50'),
(32, '5f071cc784daf', 'Etosha National Park', 'Namibiya', '618635857Etosha-National-Park.jpg', 'Advance Travel Tour', '4', '$ 100', '2020-07-09 13:33:59', '2020-07-10 08:44:50'),
(33, '5f071d2dc6b59', 'Garden of the Sleeping Giant', 'Fiji Island', '1534951592Garden-of-the-Sleeping-Giant.jpg', 'Advance Travel Tour', '5', '$ 100', '2020-07-09 13:35:41', '2020-07-10 08:44:50'),
(34, '5f071d7867ed2', 'Mamanuca Islands', 'Fiji Island', '230718984Mamanuca-Islands.jpg', 'Advance Travel Tour', '4', '$ 100', '2020-07-09 13:36:56', '2020-07-10 08:44:50'),
(35, '5f0805aee0761', 'MaCula Travel Place', 'America', '1504700971gallery-banner.jpg', 'Premium Travel Tour', '3', '$ 100', '2020-07-10 06:07:42', '2020-07-10 08:44:50'),
(36, '5f080632b2d95', 'Sugarloaf Mountain Places In North America', 'America', '953249000Sugarloaf-Mountain.jpg', 'Simple Travel Tour', '5', '$ 200', '2020-07-10 06:09:54', '2020-07-10 09:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `trip_id` int(11) NOT NULL,
  `trip_uid` varchar(20) NOT NULL,
  `trip_name` varchar(255) NOT NULL,
  `travel_type` varchar(255) NOT NULL,
  `trip_price` varchar(10) NOT NULL,
  `trip_desc` text NOT NULL,
  `trip_image` varchar(255) NOT NULL,
  `trip_date` varchar(100) NOT NULL DEFAULT 'Jan 29 , 2020',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`trip_id`, `trip_uid`, `trip_name`, `travel_type`, `trip_price`, `trip_desc`, `trip_image`, `trip_date`, `created_at`, `updated_at`) VALUES
(1, '5f05d3a77a09c', 'Tour Of Places', 'Advance Travel Tour', '$ 85', 'American The Beautiful', '1431063100american-beauty.jpg', 'Jan 29 , 2020', '2020-07-08 14:09:43', '2020-07-10 08:39:13'),
(2, '5f05d45deece4', 'Tour Of Places', 'Advance Travel Tour', '$ 85', 'Enjoying The Ride', '1778766351Manali_jan.jpg', 'Jan 29 , 2020', '2020-07-08 14:12:45', '2020-07-10 08:39:13'),
(3, '5f05d73725447', 'Tour Of Places', 'Advance Travel Tour', '$ 85', 'Taj Mahal Travelling at 2020 with frends', '1351447371India.jpg', 'May 20 , 2020', '2020-07-08 14:24:55', '2020-07-10 08:39:13'),
(5, '5f05d929db0a7', 'Tour Of Places', 'Advance Travel Tour', '$ 85', 'Agra Fort Travelling at 2019 with frends', '1367913596Agra-Fort.jpg', 'July 01 , 2019', '2020-07-08 14:33:13', '2020-07-10 08:39:13'),
(6, '5f05e0e792c2a', 'Tour Of Places', 'Advance Travel Tour', '$ 85', 'Devils Pool Victoria Falls at 2018 with frends tour In Zimbabe', '1166611149Devils-Pool-Victoria-Falls.jpg', 'Jan 02 , 2018 ', '2020-07-08 15:06:15', '2020-07-10 08:39:13'),
(7, '5f05e12477e84', 'Tour Of Places', 'Advance Travel Tour', '$ 85', 'Afgan Tour Self tour with family 2017', '909004924afgan.jpg', 'Apr 01 , 2017', '2020-07-08 15:07:16', '2020-07-10 08:39:13'),
(8, '5f05e164befa2', 'Tour Of Places', 'Advance Travel Tour', '$ 85', 'Ulruru In Austraila at 2016', '85791738Uluru.jpg', 'June 24 ,  2020', '2020-07-08 15:08:20', '2020-07-10 08:39:13'),
(9, '5f05e178515d6', 'Tour Of Places', 'Advance Travel Tour', '$ 85', 'Agra Fort', '651056189Agra-Fort.jpg', 'July 22 , 2015', '2020-07-08 15:08:40', '2020-07-10 08:39:13'),
(10, '5f05e1c584d91', 'Tour Of Places', 'Advance Travel Tour', '$ 100', 'Afgan Marquee', '656483296afgan.jpg', 'Oct 31 , 2019', '2020-07-08 15:09:57', '2020-07-10 06:53:19'),
(12, '5f05e3262184e', 'Tour Of Places', 'Advance Travel Tour', '$ 105', 'Babari marquee with friends at 2014', '28660937afgan.jpg', 'July 8, 2014', '2020-07-08 15:15:50', '2020-07-10 08:39:43'),
(13, '5f05e36bb333a', 'Tour Of Places', 'Advance Travel Tour', '$ 105', 'Amber Palace With frends at 2019', '849727622Amber-Palace.jpg', 'July 8, 2020', '2020-07-08 15:16:59', '2020-07-10 08:39:43'),
(14, '5f05e3c2bc035', 'Tour Of Places', 'Advance Travel Tour', '$ 105', 'American Port', '1599581294america.jpg', 'July 7, 2020', '2020-07-08 15:18:26', '2020-07-10 08:39:43'),
(15, '5f05e4ba967d8', 'Tour Of Places', 'Advance Travel Tour', '$ 105', 'Big ban Fort at 2018', '1107423089Big-Ben.jpg', 'March 8, 2020', '2020-07-08 15:22:34', '2020-07-10 08:39:43'),
(16, '5f05e4e8a4ed0', 'Tour Of Places', 'Advance Travel Tour', '$ 105', 'Brazil port', '1535327031Brazil.jpg', 'Oct 22 , 2018', '2020-07-08 15:23:20', '2020-07-10 08:39:43'),
(17, '5f06bfd74b24b', 'Tour Of Places', 'Advance Travel Tour', '$ 100', 'We set off on a journey and our goal is to have a ton of adventures.', '117164230american-trips.jpg', 'Aug 20 , 2019', '2020-07-09 06:57:27', '2020-07-10 06:53:19'),
(18, '5f06c003b7756', 'Tour Of Places', 'Advance Travel Tour', '$ 50', 'We set off on a journey 21th Aug to 28th Aug.', '314158764Faisal-Mosque.jpg', 'July 7, 2020', '2020-07-09 06:58:11', '2020-07-10 08:40:19'),
(20, '5f07d4c45e273', 'Tour Of Places', 'Advance Travel Tour', '$ 50', 'Lemonade Cafe in Nepal at 2020', '1635243070Lemonade-cafe.jpg', 'June 28 , 2020', '2020-07-10 02:39:00', '2020-07-10 08:40:19'),
(21, '5f07d7e26ae54', 'Tour Of Places', 'Advance Travel Tour', '$ 50', 'Tribhuma Place Temple', '366291018Nepal.jpg', 'July 7, 2020', '2020-07-10 02:52:18', '2020-07-10 08:40:19'),
(22, '5f07e891292b7', 'Tour Of Places', 'Simple Travel Tour', '$ 50', 'Italy Ponds Trip with family at 2020', '1487220069Italy.jpg', 'June 24 ,  2020', '2020-07-10 04:03:29', '2020-07-10 08:40:19'),
(23, '5f07e8dd22724', 'Tour Of Places', 'Advance Travel Tour', '$ 50', 'American Pool at 2020', '1574988430america.jpg', 'Aug 19 , 2020', '2020-07-10 04:04:45', '2020-07-10 08:40:19'),
(24, '5f07e9319b2ce', 'Tour Of Places', 'Simple Travel Tour', '$ 50', 'Maldives see at 2018', '2111205231Maldives.jpg', 'Aug 20 , 2019', '2020-07-10 04:06:09', '2020-07-10 08:40:19'),
(25, '5f07ea1989a62', 'Tour Of Places', 'Advance Travel Tour', '$ 100', 'Tower of london Trip at 2019', '1755465696Tower-of-London.jpg', 'July 7 , 2019', '2020-07-10 04:10:01', '2020-07-10 06:53:19'),
(27, '5f07f0d371735', 'Tour Of Places', 'Advance Travel Tour', '$ 170', 'kullu manali with air Ticket', '506270863kullu-manali.jpg', 'Aug 20 , 2020', '2020-07-10 04:38:43', '2020-07-10 08:40:43'),
(28, '5f07f1676191b', 'Tour Of Places', 'Advance Travel Tour', '$ 170', 'Sarthak Resort, Manali - Volvo', '525600490manali-snowfall.jpg', 'July 10 , 2020', '2020-07-10 04:41:11', '2020-07-10 08:40:43'),
(31, '5f082173740af', 'Travelo In India Content Places More popular ', 'Premium Travel Tour', '$ 170', 'Text of travelo Text Data Under maintaince', '1481559141event-banner.jpg', 'June 24 ,  2020', '2020-07-10 08:06:11', '2020-07-10 08:40:43'),
(32, '5f0821ff9b1f5', 'Tour Of Places In India', 'Premium Travel Tour', '$ 170', 'Text of Travel', '1117667105slider.jpg', 'May 20 , 2020', '2020-07-10 08:08:31', '2020-07-10 08:40:43'),
(33, '5f0824267bf71', 'Trip Origin and Meaning', 'Simple Travel Tour', '$ 170', 'Trip Origin and Meaning Text Data Travel', '1872023310news-banner.jpg', 'July 31, 2020', '2020-07-10 08:17:42', '2020-07-10 08:40:43');

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
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

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
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`trip_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `des_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `trip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
