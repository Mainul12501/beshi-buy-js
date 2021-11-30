-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2021 at 06:02 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beshi_buy`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `category_id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 11, 'Walton', './admin/brand_images/1612258100.webp', 1, '2020-06-15 04:43:32', '2021-02-02 14:28:20'),
(2, 4, 'Pran', './admin/brand_images/1612258126.webp', 1, '2020-06-15 04:45:49', '2021-02-02 14:28:46'),
(3, 9, 'Arong', './admin/brand_images/1612258147.webp', 1, '2020-06-15 05:07:22', '2021-02-02 14:29:07'),
(4, 10, 'Appex', './admin/brand_images/1612258163.webp', 1, '2020-06-15 05:11:44', '2021-02-02 14:29:23'),
(5, 10, 'Yellow', './admin/brand_images/1612258179.webp', 1, '2020-06-15 05:11:57', '2021-02-02 14:29:39'),
(6, 10, 'Cates Eye', './admin/brand_images/1612258194.webp', 1, '2020-06-15 05:12:08', '2021-02-02 14:29:54'),
(7, 9, 'Anjons', './admin/brand_images/1612258212.webp', 1, '2020-06-15 05:12:20', '2021-02-02 14:30:12'),
(8, 9, 'Kay Kraft', './admin/brand_images/1612282232.webp', 1, '2020-06-15 05:35:40', '2021-02-02 21:10:32'),
(9, 10, 'Infinity', './admin/brand_images/1612257873.webp', 1, '2020-06-15 05:36:18', '2021-02-02 14:24:33'),
(10, 10, 'Addidas', './admin/brand_images/1612257891.webp', 1, '2020-06-15 05:36:32', '2021-02-02 14:24:51'),
(11, 5, 'Bata', './admin/brand_images/1612257907.webp', 1, '2020-06-15 05:36:45', '2021-02-02 14:25:07'),
(12, 10, 'Nike', './admin/brand_images/1612257926.webp', 1, '2020-06-15 05:37:04', '2021-02-02 14:25:26'),
(13, 10, 'Puma', './admin/brand_images/1612257946.webp', 1, '2020-06-15 05:37:23', '2021-02-02 14:25:46'),
(14, 2, 'Hatil', './admin/brand_images/1612257972.webp', 1, '2020-06-15 05:37:38', '2021-02-02 14:26:12'),
(15, 2, 'Otobi', './admin/brand_images/1612257993.webp', 1, '2020-06-15 05:37:57', '2021-02-02 14:26:33'),
(16, 2, 'Partex Furniture', './admin/brand_images/1612258017.webp', 1, '2020-06-15 05:38:17', '2021-02-02 14:26:57'),
(17, 2, 'Akter Furniture', './admin/brand_images/1612258062.webp', 0, '2020-06-15 05:38:33', '2021-02-02 14:27:42'),
(18, 2, 'Navan Furniture', './admin/brand_images/1612258084.webp', 0, '2020-06-15 05:38:52', '2021-02-02 14:28:04'),
(19, 2, 'Brothers Furniture', './admin/brand_images/1612257599.webp', 0, '2020-06-15 05:39:06', '2021-02-02 14:19:59'),
(20, 10, 'Rolex', './admin/brand_images/1612257623.webp', 1, '2020-06-15 05:39:21', '2021-02-02 14:20:23'),
(21, 10, 'Rado', './admin/brand_images/1612257647.webp', 1, '2020-06-15 05:39:35', '2021-02-02 14:20:47'),
(22, 11, 'Omega', './admin/brand_images/1612257666.webp', 1, '2020-06-15 05:39:52', '2021-02-02 14:21:06'),
(23, 10, 'Logines', './admin/brand_images/1612257691.webp', 0, '2020-06-15 05:40:07', '2021-02-02 14:21:31'),
(24, 7, 'Amin Jewllers', './admin/brand_images/1612257716.webp', 0, '2020-06-15 05:40:21', '2021-02-02 14:22:04'),
(25, 7, 'Apan Jewellers', './admin/brand_images/1612257741.webp', 1, '2020-06-15 05:40:35', '2021-02-02 14:22:21'),
(26, 7, 'Gitanjali Jewellers', './admin/brand_images/1612257771.webp', 0, '2020-06-15 05:41:07', '2021-02-02 14:22:51'),
(27, 7, 'Senco Jewellers', './admin/brand_images/1612257794.webp', 0, '2020-06-15 05:41:22', '2021-02-02 14:23:14'),
(28, 7, 'Royal Diamond', './admin/brand_images/1612257837.webp', 0, '2020-06-15 05:41:45', '2021-02-02 14:23:57'),
(29, 7, 'Diamond Garden', './admin/brand_images/1612257348.webp', 1, '2020-06-15 05:41:59', '2021-02-02 14:15:48'),
(30, 7, 'Gold World Diamond', './admin/brand_images/1612257369.webp', 1, '2020-06-15 05:42:14', '2021-02-02 14:16:09'),
(31, 11, 'LG', './admin/brand_images/1612257388.webp', 1, '2020-06-15 05:42:29', '2021-02-02 14:16:28'),
(32, 11, 'Singer', './admin/brand_images/1612257408.webp', 1, '2020-06-15 05:42:44', '2021-02-02 14:16:48'),
(33, 11, 'Toshiba', './admin/brand_images/1612257443.webp', 1, '2020-06-15 05:42:58', '2021-02-02 14:17:23'),
(34, 11, 'Sharp', './admin/brand_images/1612257464.webp', 1, '2020-06-15 05:43:10', '2021-02-02 14:17:44'),
(35, 11, 'Canon', './admin/brand_images/1612257485.webp', 1, '2020-06-15 05:43:24', '2021-02-02 14:18:05'),
(36, 11, 'Panasonic', './admin/brand_images/1612257504.webp', 1, '2020-06-15 05:43:38', '2021-02-02 14:18:24'),
(37, 11, 'Hitachi', './admin/brand_images/1612257522.webp', 1, '2020-06-15 05:43:55', '2021-02-02 14:18:42'),
(38, 11, 'Philips', './admin/brand_images/1612257543.webp', 1, '2020-06-15 05:44:12', '2021-02-02 14:19:03'),
(39, 11, 'Transtec', './admin/brand_images/1612257114.webp', 1, '2020-06-15 05:44:29', '2021-02-02 14:11:54'),
(40, 11, 'Sony', './admin/brand_images/1612257139.webp', 1, '2020-06-15 05:44:47', '2021-02-02 14:12:19'),
(41, 8, 'Samsung', './admin/brand_images/1612257161.webp', 1, '2020-06-15 05:45:04', '2021-02-02 14:12:41'),
(42, 8, 'Apple', './admin/brand_images/1612257180.webp', 1, '2020-06-15 05:45:20', '2021-02-02 14:13:00'),
(43, 8, 'Oppo', './admin/brand_images/1612257201.webp', 1, '2020-06-15 05:45:41', '2021-02-02 14:13:21'),
(44, 8, 'Nokia', './admin/brand_images/1612257223.webp', 1, '2020-06-15 05:45:57', '2021-02-02 14:13:43'),
(45, 8, 'Huwaei', './admin/brand_images/1612257252.webp', 1, '2020-06-15 05:46:11', '2021-02-02 14:14:12'),
(46, 3, 'HP', './admin/brand_images/1612257276.webp', 1, '2020-06-15 05:46:24', '2021-02-02 14:14:36'),
(47, 3, 'Dell', './admin/brand_images/1612257297.webp', 1, '2020-06-15 05:46:41', '2021-02-02 14:14:57'),
(48, 3, 'Asus', './admin/brand_images/1612257325.webp', 1, '2020-06-15 05:47:07', '2021-02-02 14:15:25'),
(49, 3, 'Lenovo', './admin/brand_images/1612257076.webp', 1, '2020-06-15 05:47:22', '2021-02-02 14:11:16'),
(50, 3, 'Acer', './admin/brand_images/1612284635.webp', 1, '2020-06-15 05:47:42', '2021-02-02 21:50:35'),
(51, 3, 'Epson', './admin/brand_images/1612257056.webp', 1, '2020-06-15 05:48:02', '2021-02-02 14:10:56'),
(52, 5, 'Hasbro', './admin/brand_images/1612257011.webp', 1, '2020-06-15 05:48:22', '2021-02-02 14:10:11'),
(53, 5, 'Lego', './admin/brand_images/1612256990.webp', 1, '2020-06-15 05:48:36', '2021-02-02 14:09:50'),
(54, 5, 'Tomica', './admin/brand_images/1612256964.webp', 1, '2020-06-15 05:48:53', '2021-02-02 14:09:24'),
(55, 4, 'Monno Ceramics', './admin/brand_images/1612256935.webp', 1, '2020-06-15 05:49:06', '2021-02-02 14:08:55'),
(56, 4, 'Shahine Pukur Ceramics', './admin/brand_images/1612256894.webp', 1, '2020-06-15 05:49:21', '2021-02-02 14:08:14'),
(57, 1, 'RAK Ceramics', './admin/brand_images/1612256863.webp', 1, '2020-06-15 05:49:44', '2021-02-05 09:08:34'),
(60, 10, 'SPL', './admin/brand_images/1615182434.jpg', 1, '2021-03-08 10:47:14', '2021-03-08 10:47:14'),
(61, 2, 'Fashion Park', './admin/brand_images/1615182464.jpg', 1, '2021-03-08 10:47:44', '2021-03-08 10:47:44'),
(62, 10, 'Safi Trading', './admin/brand_images/1625932351.jpg', 1, '2021-07-10 09:52:32', '2021-07-10 09:52:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kitchen & Dinning', 'zmdi zmdi-cutlery', 'Kitchen & Dinning Category Description', './admin/category_images/2020-06-12_kitchen_&_dinning.jpg', 1, '2020-06-11 23:01:09', '2020-07-24 02:45:22'),
(2, 'Home Decor', 'fas fa-bed', 'Home Decor Category Decription', './admin/category_images/2020-06-12_home_decor.jpg', 0, '2020-06-11 23:04:48', '2020-06-14 05:44:29'),
(3, 'Computer & Accessories', 'zmdi zmdi-devices', 'Computer Category Description', './admin/category_images/1612947437.webp', 1, '2020-06-11 23:12:20', '2021-02-10 13:57:17'),
(4, 'Household', 'zmdi zmdi-washing-machine', 'Household Category Description', './admin/category_images/1612947378.webp', 1, '2020-06-11 23:22:21', '2021-02-10 13:56:18'),
(5, 'Kids Item', 'fa fa-child', 'Kids Fashion Category Description', './admin/category_images/1612947364.webp', 1, '2020-06-11 23:30:34', '2021-02-10 13:56:04'),
(6, 'Food', 'fas fa-hamburger', 'Food Category Description', './admin/category_images/2020-06-12_food.jpg', 0, '2020-06-11 23:37:37', '2020-07-24 06:52:48'),
(7, 'Cosmetic & Jewelry', 'fas fa-gem', 'Cosmetic & Jewelry Category Description', './admin/category_images/2020-06-12_cosmetic_&_jewelry.jpg', 0, '2020-06-11 23:54:53', '2021-04-07 00:14:55'),
(8, 'Mobile & Accessories', 'zmdi zmdi-smartphone-setup', 'Mobile & Accessories Category Description', './admin/category_images/1612947103.webp', 1, '2020-06-11 23:59:45', '2021-02-10 13:51:43'),
(9, 'Women Fashion', 'fa fa-female', NULL, './admin/category_images/2020-06-12_women_fashion.jpg', 1, '2020-06-12 00:12:15', '2020-09-04 06:59:38'),
(10, 'Mens Fashion', 'fa fa-male', 'Mens Fashion  Category Description', './admin/category_images/1612203130.webp', 1, '2020-06-12 00:14:11', '2021-02-01 23:12:35'),
(11, 'Electronics', 'fa fa-tv', 'Electronics Category Description', './admin/category_images/2020-06-12_electronics.jpg', 1, '2020-06-12 00:17:28', '2021-06-12 01:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Off White', 'Off White Color Description', 1, '2020-06-15 21:25:58', '2020-06-15 21:25:58'),
(2, 'Cream', 'Cream Color Description', 1, '2020-06-15 21:26:15', '2020-06-15 21:26:15'),
(3, 'Multicolor', 'Multicolor Color Description', 1, '2020-06-15 21:26:49', '2020-06-15 21:26:49'),
(4, 'Brown', 'Brown Color Description', 1, '2020-06-15 21:27:06', '2020-06-15 21:27:06'),
(5, 'Cofee', 'Cofee Color Description', 1, '2020-06-15 21:27:22', '2020-06-15 21:27:22'),
(6, 'Salmon', 'Salmon Color Description', 1, '2020-06-15 21:27:39', '2020-06-15 21:27:39'),
(7, 'Lime', 'Lime Color Description', 1, '2020-06-15 21:28:00', '2020-06-15 21:28:00'),
(8, 'Olive', 'Olive Color Description', 1, '2020-06-15 21:28:27', '2020-06-15 21:28:27'),
(9, 'Cyan', 'Cyan Color Description', 1, '2020-06-15 21:28:44', '2020-06-15 21:28:44'),
(10, 'Parrot', 'Parrot Color Description', 1, '2020-06-15 21:28:57', '2020-06-15 21:28:57'),
(11, 'Purple', 'Purple Color Description', 1, '2020-06-15 21:29:16', '2020-06-15 21:29:16'),
(12, 'Silver', 'Silver Color Description', 1, '2020-06-15 21:29:30', '2020-06-15 21:29:30'),
(13, 'Green', 'Green Color Description', 1, '2020-06-15 21:29:45', '2020-06-15 21:29:45'),
(14, 'Pink', 'Pink Color Description', 1, '2020-06-15 21:29:56', '2020-06-15 21:29:56'),
(15, 'Ass', 'Ass Color Description', 1, '2020-06-15 21:30:11', '2020-06-15 21:30:11'),
(16, 'Diamond', 'Diamond Color Description', 1, '2020-06-15 21:30:26', '2020-06-15 21:30:26'),
(17, 'Golden', 'Golden Color Description', 1, '2020-06-15 21:30:41', '2020-06-15 21:30:41'),
(18, 'Chocklet', 'Chocklet Color Description', 1, '2020-06-15 21:31:00', '2020-06-15 21:31:00'),
(19, 'Maroon', 'Maroon Color Description', 1, '2020-06-15 21:31:17', '2020-06-15 21:31:17'),
(20, 'Wood', 'Wood Color Description', 1, '2020-06-15 21:31:31', '2020-06-15 21:31:31'),
(21, 'Metalic', 'Metalic Color Description', 1, '2020-06-15 21:31:49', '2020-06-15 21:31:49'),
(22, 'Grey', 'Grey Color Description', 1, '2020-06-15 21:32:03', '2020-06-15 21:32:03'),
(23, 'Lemon', 'Lemon Color Description', 1, '2020-06-15 21:32:16', '2020-06-15 21:32:16'),
(24, 'Navy Blue', 'Navy Blue Color Description', 1, '2020-06-15 21:32:46', '2020-06-15 21:32:46'),
(25, 'Navy', 'Navy Color Description', 1, '2020-06-15 21:33:03', '2020-06-15 21:33:03'),
(26, 'Orange', 'Orange Color Description', 1, '2020-06-15 21:33:30', '2020-06-15 21:33:30'),
(27, 'Sky', 'Sky Color Description', 1, '2020-06-15 21:33:52', '2020-06-15 21:33:52'),
(28, 'Black', 'Black Color Description', 1, '2020-06-15 21:34:09', '2020-06-15 21:34:09'),
(29, 'Yellow', 'Yellow Color Description', 1, '2020-06-15 21:34:22', '2020-06-15 21:34:22'),
(30, 'Blue', 'Blue Color Description', 1, '2020-06-15 21:34:35', '2020-06-15 21:34:35'),
(31, 'white', 'White Color Description', 1, '2020-06-15 21:34:51', '2020-06-15 21:34:51'),
(32, 'Sliver', 'Sliver Color Description', 1, '2020-06-15 21:35:08', '2020-06-15 21:35:08'),
(33, 'Red', 'Red Color Description', 1, '2020-06-15 21:35:32', '2020-06-15 21:35:32'),
(34, 'Purple', 'Purple Color Description', 1, '2020-06-15 21:35:50', '2020-06-15 21:35:50'),
(35, 'Benson', 'Benson Color Description', 1, '2020-06-15 21:37:30', '2020-06-15 21:37:30'),
(36, 'Magenta', 'Magenta Color Description', 1, '2020-06-15 21:40:11', '2020-06-15 21:40:11'),
(37, 'Dark Ash', 'Dark Ash Color Description', 1, '2020-06-15 21:41:08', '2020-06-15 21:41:08'),
(38, 'Light Blue', 'Light Blue Color  Description', 1, '2020-06-15 21:42:28', '2020-06-15 21:42:28'),
(39, 'Light Green', 'Light Green Color Description', 1, '2020-06-15 21:43:06', '2020-06-15 21:43:06'),
(40, 'Deep Green', 'Deep Green Color Description', 1, '2020-06-15 21:43:28', '2020-06-15 21:43:28'),
(41, 'Transparent', 'Transparent  Color Description', 1, '2020-06-19 08:16:29', '2020-06-19 08:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `mobile`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Eric Jones', 'eric@talkwithwebvisitor.com', '416-385-3200', 'My name’s Eric and I just found your site relaxshopbd.com.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE http://www.talkwithwebvisitors.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=relaxshopbd.com', 0, '2020-10-03 09:14:26', '2020-10-03 09:14:26'),
(2, 'Darrel Jefferis', 'jefferis.darrel@gmail.com', '0692-6069014', 'Hey Guys,\r\n\r\nYou won\'t believe what I managed to secure for you...\r\n \r\nAs most online marketers (myself included) you’re probably paying each month or each year ridiculously high fees for online hosting that’s sub-par, slow and keeps crashing.\r\n\r\nFACT: hosting is one of the biggest expenses for online marketers, and\r\nexpensive fees are the #1 reason why many give up quickly or never even start.\r\n\r\n-> This here puts an end to it!\r\n-> https://bloggybro.com/recommends/profithost/cf\r\n\r\nWHAT? Enterprise-level hosting  for a one-time fee?\r\n\r\nYES – cloud hosting for life with just one small payment, that still gives you 100% uptime, blazingly fast loading times, SUPERIOR service and the best possible support Internet Marketers wish for…\r\n\r\nProfitHost is the next step in cloud hosting. A revolution like no other that enables you to enjoy:\r\n\r\n[+] Faster loading websites than ever before\r\n[+] 100% uptime with free SSL encryption built-in\r\n[+] Unlimited sites, email accounts & more\r\n[+] Next-Generation Control Panel\r\n[+] Free one-click Wordpress installer\r\n[+] 24/7 support from marketing gurus\r\n\r\n… and here’s the kicker: you get all of this, for LIFE, with\r\njust ONE time low fee today:\r\n\r\n-> Get started now (available ONLY during early bird!)\r\n-> https://bloggybro.com/recommends/profithost/cf\r\n\r\nThere\'s not really much I can say about this other than - GET IT! I\'m sure you can see the huge value in it.\r\n \r\nIt\'s the same package huge corporations are offering and charging you hundreds of dollars a year.\r\n \r\nExcept this one is better in every way:\r\n \r\n[+] unlimited bandwidth\r\n[+] 24/7 premium support\r\n[+] faster loading websites\r\n \r\nLet’s not kid ourselves: you know you’re getting this. It’s what’s called in the industry as a “complete no-brainer”.\r\n\r\nSo why not get it now while the early bird is live?\r\n\r\nYou’d be virtually stealing it – it’s that affordable!\r\n\r\nIn fact, wait till you see the price – you get lifetime hosting for LESS than what you previously used to pay for one month of service!\r\n\r\n-> Click here now to claim yours!\r\n-> https://bloggybro.com/recommends/profithost/cf\r\n\r\nTo your success,\r\nHelpperIt Team\r\n(HelpperIt Marketer)', 0, '2020-10-14 23:40:23', '2020-10-14 23:40:23'),
(3, 'Anita Kenny', 'anita.kenny@hotmail.com', '0356 5526380', 'Hi,\r\n\r\nI’ve just tried this software, and I can tell this has changed the way I make money online.\r\n=>> https://seoclerkspro.com/recommends/buzzpress/cf\r\n\r\nIn fact, it makes me hate Internet Marketing.\r\n\r\nHere’s why:\r\n\r\nBefore this, I could spend countless hours in front of my computer just to generate more leads, increasing the conversion rates, or just trying to generate more visitors to my sites.\r\n\r\nOn the weekend, I could spend more than 12 hours working on my sites.\r\n\r\n…And I absolutely love it!\r\n\r\nAll the struggle and sleepless nights have made me fall in love with Internet Marketing from the start. I’m obsessed with it.\r\nThat’s until I gave Buzzpress a try.\r\n\r\nWhen this software launched a few days ago, I decided to give it a try and see if it really works for me.\r\n\r\nAnyway, making money with this software is as easy as this:\r\n\r\n1.   I spent 15 minutes to decide the niche\r\n2.   Another 15 minutes to set up a fresh website\r\n3.   And a few minutes to set up an automation system, which is designed to generate traffic on autopilot\r\n\r\nAfter that, I just need to wait.\r\n\r\nTo my surprise, this morning I just got a sales notification from one affiliate product I’m promoting on my website.\r\n\r\nCrazy, right?\r\n\r\nI know it’s not that instantly, but considering the fact I spend no more than an hour to make the sale, it completely blew my mind.\r\n“So how does it make you hate Internet Marketing?” you might ask.\r\n=>> https://seoclerkspro.com/recommends/buzzpress/cf\r\n\r\nWell, as I mentioned earlier, I love Internet Marketing because of all the struggles and the sleepless night I spent just for making $100.\r\n\r\nThis software completely eliminates that.\r\n\r\nThat’s how it made me hate Internet Marketing.\r\n\r\nIf you’re interested to buy this software, just remember: This is NOT for everyone.\r\n\r\nIf you love all the struggle and the countless hours you spend on your computer, then this is absolutely not for you.\r\n\r\nBut if you want an easier way, less time working and more time enjoying the profit, then this is probably the one you’ve been waiting for.\r\n\r\n…And here’s the link to get the software: https://seoclerkspro.com/recommends/buzzpress/cf\r\n\r\nAll the best,\r\nSeoClerksPro Team\r\n[SeoClerksPro Marketer\'s Pvt]', 0, '2020-10-15 03:00:57', '2020-10-15 03:00:57'),
(4, 'Jessie Kinser', 'information@relaxshopbd.com', NULL, 'ATT: relaxshopbd.com / Relax Shop - Home INTERNET SITE SERVICES\r\nThis notice ENDS ON: Oct 18, 2020\r\n\r\n\r\nWe have not obtained a payment from you.\r\nWe  have actually tried to call you however were unable to contact you.\r\n\r\n\r\nKindly Browse Through: https://bit.ly/3dG02bJ .\r\n\r\nFor information and to process a discretionary settlement for services.\r\n\r\n\r\n\r\n10182020071458.', 0, '2020-10-18 15:15:00', '2020-10-18 15:15:00'),
(5, 'Sherman Pfaff', 'sherman.pfaff@outlook.com', '06-67396104', 'Hey Guys,\r\n\r\nIMAGINE … Passive Income From OTHER PEOPLE’S Content Served Up By Google & YouTube\r\n \r\nThat’s right – a virtually unlimited, untapped 24/7 traffic stream that maximizes your profit with zero work for you.\r\n \r\n Check it out right here\r\n =>> https://earningradar.com/recommends/yt-evolution/cf\r\n \r\n AND it’s all\r\n\r\n100% Newbie Friendly\r\n100% Done for you\r\nand 200% money back guarantee if it doesn’t work for you (it will)\r\n \r\nHow?\r\nSimple: A Plugin converts ANY YouTube videos into DFY monetized niche blogs that search engines love for multiple hands-free income streams.\r\n\r\n Get started right here\r\n =>> https://earningradar.com/recommends/yt-evolution/cf\r\n \r\nSTEP 1\r\nActivate your website\r\n\r\nSTEP 2\r\nPick videos\r\n\r\nSTEP 3\r\nMonetize your site\r\n\r\nANYONE Can Do This ... Great Ahh..\r\n\r\nEffortlessly Monetize Any YouTube Video\r\nMade By You OR By Others Through Your Website!\r\n\r\nGet full details here!\r\n=>> https://earningradar.com/recommends/yt-evolution/cf\r\n \r\n Hurry and join today! One-time fee available for limited time only!\r\n \r\nTo your success,\r\nEarningRadar Team\r\n(EarningRadar Marketer\'s Pvt)', 0, '2020-10-19 12:46:33', '2020-10-19 12:46:33'),
(6, 'Michel Frazier', 'frazier.michel@gmail.com', '03592 24 92 79', 'Hey Guys,\r\n\r\nIMAGINE … Passive Income From OTHER PEOPLE’S Content Served Up By Google & YouTube\r\n \r\nThat’s right – a virtually unlimited, untapped 24/7 traffic stream that maximizes your profit with zero work for you.\r\n \r\n Check it out right here\r\n =>> https://earningradar.com/recommends/yt-evolution/cf\r\n \r\n AND it’s all\r\n\r\n100% Newbie Friendly\r\n100% Done for you\r\nand 200% money back guarantee if it doesn’t work for you (it will)\r\n \r\nHow?\r\nSimple: A Plugin converts ANY YouTube videos into DFY monetized niche blogs that search engines love for multiple hands-free income streams.\r\n\r\n Get started right here\r\n =>> https://earningradar.com/recommends/yt-evolution/cf\r\n \r\nSTEP 1\r\nActivate your website\r\n\r\nSTEP 2\r\nPick videos\r\n\r\nSTEP 3\r\nMonetize your site\r\n\r\nANYONE Can Do This ... Great Ahh..\r\n\r\nEffortlessly Monetize Any YouTube Video\r\nMade By You OR By Others Through Your Website!\r\n\r\nGet full details here!\r\n=>> https://earningradar.com/recommends/yt-evolution/cf\r\n \r\n Hurry and join today! One-time fee available for limited time only!\r\n \r\nTo your success,\r\nEarningRadar Team\r\n(EarningRadar Marketer\'s Pvt)', 0, '2020-10-21 02:32:20', '2020-10-21 02:32:20'),
(7, 'Omer Fraser', 'omer.fraser@gmail.com', '021 391 26 89', 'Hey Guys,\r\n\r\nWant to CLONE an affiliate site that is making commissions RIGHT NOW?\r\n\r\nWell you need this \"website cloning\" app - which creates an instant \"mirror image\" of one of the top money-making sites out there:\r\n\r\nClick here - CLONE Proven Affiliate Sites...\r\n\r\n==> https://seoclerkspro.com/recommends/affiliate-cloner/cf\r\n\r\nSee, one vital moneymaking skill is: building profitable websites.\r\n\r\nI\'m talking about websites that make commissions, build your list and get traffic.\r\n\r\nBut that isn\'t easy - unless you\'re some big guru:\r\n\r\n• You need to hire a fancy designer - typically $200 to $2,000.. per site\r\n\r\n• You need to create content - either do it yourself or pay $10-100 per article\r\n\r\n• You need to get traffic - ideally free buyer traffic\r\n\r\nAnd THEN you need to worry about domain names, hosting, wordpress, etc. \r\n\r\nSounds tricky, right?\r\n\r\nBut what if there is a solution...\r\n\r\nSomething that does EVERYTHING for you?\r\n\r\nWell, today, THERE IS!\r\n\r\nPresenting Affiliate Cloner\r\n\r\n==> https://seoclerkspro.com/recommends/affiliate-cloner/cf\r\n\r\nThis new cloud-based software lets you CLONE this proven, profitable affiliate site so you can...\r\n\r\n• Build an instant affiliate website, generating commissions with ClickBank, WarriorPlus & JVZoo\r\n\r\n• Generate free traffic from Facebook, Twitter, Instagram, Youtube, TikTok and Pinterest\r\n\r\n• Build your list while also making daily commissions\r\n\r\nThere\'s NO writing, hosting, domains or content to worry about.\r\n\r\nAnd in case you\'re wondering...\r\n\r\n\"But how PROFITABLE is this?\"\r\n\r\nWell, here\'s the answer: it CLONES the exact campaigns of an elite super affiliate!\r\n\r\nHere\'s the PROOF:\r\n\r\n==> https://seoclerkspro.com/recommends/affiliate-cloner/cf\r\n\r\n\r\nTo your success,\r\nSeoclerkspro Team\r\n(Seoclerkspro Marketer, Pvt)\r\n\r\n\r\nP.S. There\'s ONE CATCH: the price increases IN THE NEXT HOUR. And then every hour after that!\r\n\r\nSo click here to setup your instant affiliate website:\r\n==> https://seoclerkspro.com/recommends/affiliate-cloner/cf', 0, '2020-10-22 10:44:53', '2020-10-22 10:44:53'),
(8, 'Dotty Messner', 'dotty.messner@gmail.com', '09871 73 29 05', 'Hey Guys,\r\n\r\nDo you want to make money like a super affiliate?\r\n\r\nLike you stole his website, cloned his affiliate programs, and jacked his commissions?\r\n\r\nClick here to see how this works\r\n\r\n(and yes, it\'s 100% legal)\r\n\r\n==> https://seoclerkspro.com/recommends/affiliate-cloner/cf\r\n\r\nOK, so..\r\n\r\nIf you want to build a profitable affiliate business, you’ll need to start from scratch.\r\n\r\nAnd for most marketers, that isn’t easy.\r\n\r\nYou’ll need to study the market, and find the most profitable offers on sites like ClickBank, WarriorPlus and JVZoo.\r\n\r\nYou’ll need to hire a developer to create software tools that you can give away as bonuses.\r\n\r\nYou’ll need to write some amazing copy to sell your offers, and drive people to your buy links…\r\n\r\nAnd then, when all this is done, you still need to build your website...\r\n\r\nAnd that involves buying a domain name, hosting, web design, and of course writing content from scratch… \r\n\r\nNow imagine having to do that for dozens of campaigns!\r\n\r\nAnd only then do you start to get traffic - and build a list.\r\n\r\nUgh!\r\n\r\nIs it any wonder that, in 2020, 99% of affiliates are struggling...\r\n\r\nBut, imagine if I could just give you a special link…\r\n\r\nSo that MY affiliate link became YOUR affiliate link…\r\n\r\nMy affiliate campaigns became your affiliate campaigns…\r\n\r\nMy $10,000 bonuses became your $10,000 bonuses…\r\n\r\nAnd my website became your website.\r\n\r\nSo you could clone my entire affiliate business… in 1 click.\r\n\r\nSounds incredible, right?\r\n\r\nSo, let me show you how it works...\r\n\r\n==> https://seoclerkspro.com/recommends/affiliate-cloner/cf\r\n\r\nP.S. This really is a NEW way  to “copy and paste” your way to daily commissions.\r\n\r\nBy automating ALL of your affiliate marketing, so that you can finally profit…\r\n\r\nEven if you have no list, no website and no time to run a profitable online business.\r\n\r\nBut you\'ll need to join RIGHT NOW.\r\n\r\nAs the price is going up (permanently) in the next few minutes.\r\n\r\nSo hit this link for all the juicy info, and enjoy ;)\r\n\r\n==> https://seoclerkspro.com/recommends/affiliate-cloner/cf\r\n\r\n\r\n\r\n\r\nTo your success,\r\nSeoclerkspro Team\r\n(Seoclerkspro Marketer, Pvt)\r\n\r\n\r\nBut do it RIGHT NOW, as the price increases in the next minutes (and every hour after that)', 0, '2020-10-24 12:09:06', '2020-10-24 12:09:06'),
(9, 'Jefferey Michaels', 'michaels.jefferey@outlook.com', NULL, 'Hey Guys,\r\n\r\nWant to “copy and paste” your way... to daily commissions...\r\n\r\nBy automating ALL of your affiliate marketing.. In 1 click?\r\n\r\nThen you need to CLONE these affiliate websites...\r\n\r\n==> https://seoclerkspro.com/recommends/affiliate-cloner/cf\r\n\r\nAnd YES, this works, even if...\r\n\r\nYou have no list, no website and no time to run a profitable online business!\r\n\r\nSee, 2020 has been a profitable year for this guy “Chris”.\r\n\r\nChris has made money with over 300 different affiliate programs.\r\n\r\nAnd, as the year comes to an end, he wondered:\r\n\r\n“Would it be possible to give everyone the ability to bank life-changing commissions…\r\n\r\nBy simply copying and cloning what he’s doing…\r\n\r\nBUT without having to invest the time and money that he invests daily?”\r\n\r\nWell, today I can finally say, it IS possible. In fact, it’s here!\r\n\r\n==> https://seoclerkspro.com/recommends/affiliate-cloner/cf\r\n\r\nPresenting: Affiliate Cloner.\r\n\r\nThis new, one-stop software gives you an instant turnkey website…\r\n\r\nPacked with affiliate programs, reviews and bonuses… for all of the most profitable affiliate promotions, built right into one website. YOUR website.\r\n\r\nThat’s right… ALL of these done-for-you affiliate campaigns, each based on evergreen top converting offers, are preloaded right into YOUR website.\r\n\r\nYou get to keep 100% of the commissions…\r\n\r\nWhile doing 0% of the work.\r\n\r\nAnd that’s what makes this so unique...\r\n\r\nIt’s only because Chris is an elite marketer, that he\'s been able to select the best affiliate programs.\r\n\r\nIt’s only because he’s been building software for 12 years, that he\'s able to create these 10 software giveaways.\r\n\r\nIt’s only because he\'s a world-class copywriter, that he can hand you these done-for-you campaigns.\r\n\r\nIt’s only because he invested thousands building this website, that he can just let you clone it..\r\n\r\nAnd, quite frankly, it’s only because he\'s feeling generous…\r\n\r\nThat he\'s giving you all of this on a silver platter - ALL preloaded into ONE website. Your website.\r\n\r\nBut his generosity CAN\'T LAST.\r\n\r\nIn fact the price is about to go up in the next hour (and again, every hour after that):\r\n\r\n==> https://seoclerkspro.com/recommends/affiliate-cloner/cf\r\n\r\nNow, you already know: these sites are VERY profitable.\r\n\r\nYou also know... they\'re done for you\r\n\r\nAnd, they let you build your list and social presence, whilst also making commissions!\r\n\r\nBut... have you seen how beautiful these sites look too?\r\n\r\nWith professionally written reviews, stunning graphics, and a call to action for all of these moneymaking affiliate programs.\r\n\r\nAll bundled into your very own authority review site, with all the bells and whistles…\r\n\r\nIncluding 100% free hosting of your site on premium servers.\r\n\r\nYou can even add your autoresponder code to build your list, while you monetize at the same time.\r\n\r\nAnd yes… you can also promote all of your social media sites - letting you build your social presence on the side, too!\r\n\r\nBut you need to join NOW, before the price increases:\r\n\r\n==> https://seoclerkspro.com/recommends/affiliate-cloner/cf\r\n\r\n\r\n\r\nTo your success,\r\nSeoClerksPro Team\r\n(SeoClerksPro International Marketer\'s)\r\n\r\n\r\nP.S. It’s the easiest way to become a super affiliate in 2021 - by leveraging all of the hard work Chris did, every day of 2020.\r\n\r\nClick here to see how it works...\r\n\r\n==> https://seoclerkspro.com/recommends/affiliate-cloner/cf', 0, '2020-10-25 10:51:06', '2020-10-25 10:51:06'),
(10, 'Eric Jones', 'ericjonesonline@outlook.com', '555-555-1212', 'Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at beshibuy.com.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=beshibuy.com', 0, '2020-11-21 09:32:43', '2020-11-21 09:32:43'),
(11, 'Eric Jones', 'ericjonesonline@outlook.com', '555-555-1212', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found beshibuy.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=beshibuy.com', 0, '2020-12-25 12:51:26', '2020-12-25 12:51:26'),
(12, 'Eric Jones', 'ericjonesonline@outlook.com', '555-555-1212', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found beshibuy.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://www.talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-01-05 04:42:40', '2021-01-05 04:42:40'),
(13, 'Eric Jones', 'ericjonesonline@outlook.com', '555-555-1212', 'My name’s Eric and I just found your site beshibuy.com.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE http://www.talkwithcustomer.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-01-09 07:44:02', '2021-01-09 07:44:02'),
(14, 'Eric Jones', 'ericjonesonline@outlook.com', '555-555-1212', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found beshibuy.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-01-17 05:31:34', '2021-01-17 05:31:34'),
(15, 'Jacob Prado', 'jacob@stardatagroup.com', 'NA', 'It is with sad regret to inform you StarDataGroup.com is shutting down.\r\nIt has been a tough year all round and we decided to go out with a bang!\r\n\r\nAny group of databases listed below is $49 or $149 for all 16 databases in this one time offer.\r\nYou can purchase it at www.StarDataGroup.com and view samples.\r\n\r\n- LinkedIn Database\r\n 43,535,433 LinkedIn Records\r\n\r\n- USA B2B Companies Database\r\n 28,147,835 Companies\r\n\r\n- Forex\r\n Forex South Africa 113,550 Forex Traders\r\n Forex Australia 135,696 Forex Traders\r\n Forex UK 779,674 Forex Traders\r\n\r\n- UK Companies Database\r\n 521,303 Companies\r\n\r\n- German Databases\r\n German Companies Database: 2,209,191 Companies\r\n German Executives Database: 985,048 Executives\r\n\r\n- Australian Companies Database\r\n 1,806,596 Companies\r\n\r\n- UAE Companies Database\r\n 950,652 Companies\r\n\r\n- Affiliate Marketers Database\r\n 494,909 records\r\n\r\n- South African Databases\r\n B2B Companies Database: 1,462,227 Companies\r\n Directors Database: 758,834 Directors\r\n Healthcare Database: 376,599 Medical Professionals\r\n Wholesalers Database: 106,932 Wholesalers\r\n Real Estate Agent Database: 257,980 Estate Agents\r\n Forex South Africa: 113,550 Forex Traders\r\n\r\nVisit www.stardatagroup.com or contact us with any queries.\r\n\r\nKind Regards,\r\nStarDataGroup.com', 0, '2021-01-18 21:35:55', '2021-01-18 21:35:55'),
(16, 'Eric Jones', 'ericjonesonline@outlook.com', '555-555-1212', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found beshibuy.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://www.talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-01-20 08:54:25', '2021-01-20 08:54:25'),
(17, 'Eric Jones', 'ericjonesonline@outlook.com', '555-555-1212', 'My name’s Eric and I just found your site beshibuy.com.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE http://www.talkwithcustomer.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-01-26 00:24:26', '2021-01-26 00:24:26'),
(18, 'Sophie', 'info@beshibuy.com', '(02) 6172 3960', 'You Won\'t Want To Miss This!  50 pcs medical surgical masks only $1.99 and N95 Mask $1.79 each.  \r\n\r\nSpecial Offer for the next 48 Hours ONLY!  Get yours here: pharmacyusa.online\r\n\r\nTo your success,\r\n\r\nContact Us', 0, '2021-02-01 13:34:35', '2021-02-01 13:34:35'),
(19, 'Marjorie Borchgrevink', 'marjorie@sendbulkmails.com', 'NA', 'Use SendBulkMails.com to run email campaigns from your own private dashboard.\r\n\r\nCold emails are allowed and won\'t get you blocked :)\r\n\r\nStarter Package 50% off sale\r\n- 1Mil emails / mo @ $99 USD\r\n- Dedicated IP and Domain Included\r\n- Detailed statistical reports (delivery, bounce, clicks etc.)\r\n- Quick and easy setup with extended support at no extra cost.\r\n- Cancel anytime!\r\n\r\nRegards,\r\nwww.SendBulkMails.com', 0, '2021-02-02 07:22:13', '2021-02-02 07:22:13'),
(20, 'Vicente Sapp', 'vicente@stardatagroup.com', 'NA', 'It is with sad regret to inform you StarDataGroup.com is shutting down.\r\n\r\nFire sale till the 7th of Feb.\r\n\r\nAny group of databases listed below is $49 or $149 for all 16 databases in this one time offer.\r\nYou can purchase it at www.StarDataGroup.com and view samples.\r\n\r\n- LinkedIn Database\r\n 43,535,433 LinkedIn Records\r\n\r\n- USA B2B Companies Database\r\n 28,147,835 Companies\r\n\r\n- Forex\r\n Forex South Africa 113,550 Forex Traders\r\n Forex Australia 135,696 Forex Traders\r\n Forex UK 779,674 Forex Traders\r\n\r\n- UK Companies Database\r\n 521,303 Companies\r\n\r\n- German Databases\r\n German Companies Database: 2,209,191 Companies\r\n German Executives Database: 985,048 Executives\r\n\r\n- Australian Companies Database\r\n 1,806,596 Companies\r\n\r\n- UAE Companies Database\r\n 950,652 Companies\r\n\r\n- Affiliate Marketers Database\r\n 494,909 records\r\n\r\n- South African Databases\r\n B2B Companies Database: 1,462,227 Companies\r\n Directors Database: 758,834 Directors\r\n Healthcare Database: 376,599 Medical Professionals\r\n Wholesalers Database: 106,932 Wholesalers\r\n Real Estate Agent Database: 257,980 Estate Agents\r\n Forex South Africa: 113,550 Forex Traders\r\n\r\nVisit www.stardatagroup.com or contact us with any queries.\r\n\r\nKind Regards,\r\nStarDataGroup.com', 0, '2021-02-03 21:24:20', '2021-02-03 21:24:20'),
(21, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, my name is Eric and I’m betting you’d like your website beshibuy.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at beshibuy.com.\r\n\r\nTalk With Web Visitor – CLICK HERE https://talkwithwebvisitors.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-02-06 07:40:55', '2021-02-06 07:40:55'),
(22, 'Joellen', 'info@beshibuy.com', '042-8564641', 'You Won\'t Want To Miss This!  50 pcs medical surgical masks only $1.99 and N95 Mask $1.79 each.  \r\n\r\nOnly 10 orders left!  Get yours here: pharmacyusa.online\r\n\r\nThe Best,\r\n\r\nContact Us', 0, '2021-02-14 12:11:24', '2021-02-14 12:11:24'),
(23, 'Jacklyn Higgs', 'jacklyn@sendbulkmails.com', 'NA', 'Use SendBulkMails.com to run email campaigns from your own private dashboard.\r\n\r\nCold emails are allowed and won\'t get you blocked :)\r\n\r\n- 1Mil emails / mo @ $99 USD\r\n- Dedicated IP and Domain Included\r\n- Detailed statistical reports (delivery, bounce, clicks etc.)\r\n- Quick and easy setup with extended support at no extra cost.\r\n- Cancel anytime!\r\n\r\nRegards,\r\nwww.SendBulkMails.com', 0, '2021-02-16 07:47:52', '2021-02-16 07:47:52'),
(24, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, my name is Eric and I’m betting you’d like your website beshibuy.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at beshibuy.com.\r\n\r\nTalk With Web Visitor – CLICK HERE http://talkwithcustomer.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-02-17 04:51:12', '2021-02-17 04:51:12'),
(25, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found beshibuy.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://talkwithcustomer.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-02-20 23:08:11', '2021-02-20 23:08:11'),
(26, 'Chana Caban', 'chana@stardatagroup.com', 'NA', 'Do you need more clients? \r\n\r\nWe have amazing databases starting at $9.99 until the end of the Month!\r\n\r\nVisit us at StarDataGroup.com', 0, '2021-02-24 00:09:39', '2021-02-24 00:09:39'),
(27, 'Jed', 'info@beshibuy.com', NULL, 'You Won\'t Want To Miss This!  \r\n\r\nBuy N95 Mask only $1.69 each and get 10 pcs of medical surgical masks for FREE.  \r\n\r\nLimited Time Offer! + Fast Shipping!  Get yours here: pharmacyusa.online\r\n\r\nMany Thanks,\r\n\r\nContact Us', 0, '2021-02-24 20:08:14', '2021-02-24 20:08:14'),
(28, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, my name is Eric and I’m betting you’d like your website beshibuy.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at beshibuy.com.\r\n\r\nTalk With Web Visitor – CLICK HERE https://talkwithwebvisitors.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-02-26 05:12:23', '2021-02-26 05:12:23');
INSERT INTO `contacts` (`id`, `name`, `email`, `mobile`, `description`, `status`, `created_at`, `updated_at`) VALUES
(29, 'SendBulkMails.com', 'sterling@sendbulkmails.com', 'NA', 'SendBulkMails.com allows you to reach out to clients via cold email marketing.\r\n\r\n- 1Mil emails starter package\r\n- Dedicated IP and Domain Included\r\n\r\n- Detailed statistical reports (delivery, bounce, clicks etc.)\r\n\r\n- Quick and easy setup with extended support at no extra cost.\r\n\r\n- Cancel anytime!\r\n\r\nSendBulkMails.com', 0, '2021-02-26 06:49:41', '2021-02-26 06:49:41'),
(30, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with beshibuy.com definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out beshibuy.com.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-02-27 22:24:02', '2021-02-27 22:24:02'),
(31, 'Michelle Lindsay', 'turnkey1@protonmail.com', '000-000-0000', 'Hi,\r\n\r\nI thought you may be interested.\r\n \r\nWe supply beautifully designed, best niche turnkey dropship stores.\r\nWe are the designers this is all we do. You keep all of the profit. \r\n\r\nFree hosting permanently, domain and social media marketing plan included.\r\nJust a one time fee for the available dropshipping website of your choice and everything above.\r\n\r\nIf this sounds of interest please see our available sites at https://dropshippingincome.com\r\n\r\nThank you for your time and hope to see you there.\r\n\r\nBest,\r\nMichelle L.\r\nDSI', 0, '2021-03-02 21:49:35', '2021-03-02 21:49:35'),
(32, 'Michell', 'hello@beshibuy.com', '02688 10 16 91', 'Hello \r\n \r\nBuy all styles of Ray-Ban Sunglasses only 19.99 dollars.  If interested, please visit our site: framesoutlet.online\r\n \r\nBest regards, \r\n \r\nbeshibuy.com', 0, '2021-03-03 14:40:39', '2021-03-03 14:40:39'),
(33, 'Constance', 'info@beshibuy.com', '(02) 4040 5995', 'Hi\r\n\r\nBuy face mask to protect your loved ones from the deadly CoronaVirus.  We wholesale N95 Masks and Surgical Masks for both adult and kids.  The prices begin at $0.19 each.  If interested, please visit our site: pharmacyoutlets.online\r\n\r\nBest,\r\n\r\nContact Us', 0, '2021-03-06 19:33:09', '2021-03-06 19:33:09'),
(34, 'Willy', 'willy@beshibuy.com', '519-436-3321', 'The #1 Best Dog Bed Of 2021\r\nGet yours now, we\'re currently having a sale & Free Shipping\r\nShop now: dogloverclub.store\r\n\r\nContact Us', 0, '2021-03-08 21:20:50', '2021-03-08 21:20:50'),
(35, 'Trinidad', 'trinidad@beshibuy.com', '60 325 30 47', 'Hey there \r\n\r\nThe complete selection of all Ray-Ban sunglasses styles available online and only 19.99 dollars. \r\n\r\nInsanely special offer for the next 24 hours only! Get yours here: sunglassusa.online\r\n\r\nYou Won\'t Want To Miss This!\r\n\r\nSincerely, \r\n\r\nTrinidad\r\nContact Us', 0, '2021-03-09 07:06:55', '2021-03-09 07:06:55'),
(36, 'Janis Mead', 'janis@sesforyou.com', 'NA', 'Hey, \r\n\r\nListen, business is tough right now for most people.  \r\n\r\nDoes this sound like your situation?\r\n\r\n-Not enough quality leads?\r\n-Not enough revenue?\r\n-Always looking for more business?\r\n-Working too hard?\r\n\r\nI have the solution to help make this a great year for your business.\r\n\r\nI will show you how to Drive Revenue, Sales and Commissions...during the day and more importantly while you sleep...\r\n \r\n==> https://sesforyou.com\r\n \r\nRegards,\r\nSesForYou.com', 0, '2021-03-09 12:52:53', '2021-03-09 12:52:53'),
(37, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - beshibuy.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across beshibuy.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-03-09 20:07:55', '2021-03-09 20:07:55'),
(38, 'Cecila Hart', 'hart.cecila32@gmail.com', '044 459 60 84', 'Looking for fresh buyers? Get lots of keyword targeted visitors delivered directly to your site. Increase your profits fast. You\'ll see results in as quick as 72 hours. For additional information Check out: https://bit.ly/buy-targeted-web-traffic', 0, '2021-03-15 17:43:26', '2021-03-15 17:43:26'),
(39, 'Frederick', 'frederick@beshibuy.com', '021 596 64 85', 'Morning \r\n\r\nBody Revolution - Medico Postura™ Body Posture Corrector\r\nImprove Your Posture INSTANTLY!\r\nGet it while it\'s still 60% OFF!\r\nFREE Worldwide Shipping!\r\n\r\nGet yours here: medicopostura.online\r\n\r\nRegards, \r\n\r\nFrederick\r\nContact Us', 0, '2021-03-15 18:58:13', '2021-03-15 18:58:13'),
(40, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, my name is Eric and I’m betting you’d like your website beshibuy.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at beshibuy.com.\r\n\r\nTalk With Web Visitor – CLICK HERE https://talkwithwebvisitors.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-03-15 19:36:48', '2021-03-15 19:36:48'),
(41, 'Paul', 'paul@beshibuy.com', '0315 1684351', 'Hello\r\n\r\nWorld\'s Best Neck Massager Get it Now 50% OFF + Free Shipping!\r\nWellness Enthusiasts! There has never been a better time to take care of your neck pain! \r\n\r\nOur clinical-grade TENS technology will ensure you have neck relief in as little as 20 minutes.\r\n\r\nGet Yours: hineck.online\r\n\r\nMany Thanks,\r\n\r\nPaul\r\nContact Us', 0, '2021-03-18 22:10:56', '2021-03-18 22:10:56'),
(42, 'Tim Morris', 'tim@fastworkingcapital.xyz', '202-991-6766', 'Hello,\r\nI hope you\'re having a great day and staying safe!\r\n\r\nAre you looking for working capital to further grow and expand your business?\r\n\r\nIf so, put the power of a direct lender to work for you.\r\n\r\nWe provide loans up to 500k without requiring good credit or collateral. This is because we base our funding decisions off your \r\ntotal bank deposits, and we approve over 95% of all businesses!\r\n\r\nPlus, we provide you a funding decision within 30 seconds without submitting a single document, and funding the very next day.\r\n\r\nVisit www.fastworkingcapital.xyz to see how much you qualify for! Applying does NOT affect your credit!\r\n\r\nAlso, please check out this video to see all the funding options we have available for you.  www.fastworkingcapital.xyz/video\r\n\r\nThanks again and we look forward to funding you soon. \r\n\r\n\r\nWarm Regards,\r\n\r\nTim Morris\r\nFast Working Capital\r\nwww.fastworkingcapital.xyz', 0, '2021-03-19 06:47:03', '2021-03-19 06:47:03'),
(43, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with beshibuy.com definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out beshibuy.com.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-03-19 10:07:54', '2021-03-19 10:07:54'),
(44, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hey, this is Eric and I ran across beshibuy.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-03-20 02:28:55', '2021-03-20 02:28:55'),
(45, 'Angeles Whittingham', 'angeles@bestlocaldata.com', 'NA', 'Hello,\r\n\r\nBestLocalData.com has a special package you get any group of databases for $49 or $249 for all 16 databases and unlimited emails for a year(Domain, IP, Dashboard included).\r\n\r\nYou can purchase it on BestLocalData.com and see samples if you are interested.', 0, '2021-03-24 23:45:33', '2021-03-24 23:45:33'),
(46, 'Haley Ackerman', 'w.ord.pr.ess.4.55.485+koutsuuj@gmail.com', '06-15799673', 'Hi,\r\n\r\nAre you currently operating Wordpress/Woocommerce or maybe do you actually plan to utilise it someday ? We offer around 2500 premium plugins along with themes to download : http://shortdb.xyz/mq38J\r\n\r\nRegards,\r\n\r\nHaley', 0, '2021-03-26 00:05:54', '2021-03-26 00:05:54'),
(47, 'Philomena', 'philomena@beshibuy.com', '(07) 5349 5999', 'Hey there\r\n\r\nWholesale Medical Surgical Masks for both adult and kids - Buy Now as Low as $0.19/mask\r\n\r\nShop now: pharmacyoutlets.online\r\n\r\nRegards,\r\n\r\nPhilomena\r\nContact Us', 0, '2021-03-27 00:51:09', '2021-03-27 00:51:09'),
(48, 'Ezekiel Ashton', 'ashton.ezekiel@hotmail.com', '06-98453906', 'Your All In One Solution For Creating All The Content You\'ll Ever Need.\r\n\r\nProprietary AI Turns YouTube Videos Into Traffic Getting Articles At The Press Of A Button!\r\n\r\nWe’ve Been Getting Free Autopilot Traffic From Google Without SEO Experience For Over 2 Years By Converting Others YouTube Videos Into Articles…\r\n\r\nhttps://warriorplus.com/o2/a/gmvfs/0', 0, '2021-03-28 00:38:18', '2021-03-28 00:38:18'),
(49, 'Geri', 'geri@beshibuy.com', '04.76.02.47.47', 'Hi there \r\n \r\nCAREDOGBEST™ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nClick here: caredogbest.online\r\n \r\nKind Regards, \r\n \r\nGeri\r\nContact Us', 0, '2021-03-28 12:18:35', '2021-03-28 12:18:35'),
(50, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found beshibuy.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://talkwithcustomer.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-03-28 22:53:13', '2021-03-28 22:53:13'),
(51, 'Cornell Power', 'cornell.power@outlook.com', '031 301 39 19', 'Need extra income?\r\n\r\nA fully hosted, done for you content + monetisation and a stunning design web based software that creates a fully automated done for you cryptocurrency affiliate site,\r\n\r\nVisit us: https://warriorplus.com/o2/a/f5s4y/0', 0, '2021-03-29 17:29:24', '2021-03-29 17:29:24'),
(52, 'Curtis', 'esters.curtis@gmail.com', '06-94252682', 'Hey there \r\n\r\nDefrost frozen foods in minutes safely and naturally with our THAW KING™. \r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: thawking.online\r\n\r\nThe Best, \r\n\r\nCurtis\r\nContact Us', 0, '2021-03-30 18:51:23', '2021-03-30 18:51:23'),
(53, 'Christopher Hernandez', 'christopher@directlenders.xyz', '202-991-6766', 'Hello,\r\n\r\nI hope you are doing well, and business is Great!\r\n\r\nHowever, if you need working capital to further grow and expand your business, we\r\nmay be a perfect fit for you and here’s why. \r\n\r\nOur loans are NOT based on your personal credit, and NO collateral is required.\r\n\r\nWe are a Direct Lender who can approve your loan today, and fund as early as Tomorrow.\r\n\r\nWe offer loans from 5k to 500k with flexible payments and great terms.\r\n\r\nJust click on the link to INSTANTLY see how much you qualify for www.directlenders.xyz  Applying does NOT affect your credit!\r\n\r\nAlso, please check out this video to see how our program works, and all the funding options we have available for you.  www.directlenders.xyz/video\r\n\r\n\r\n\r\nWarm Regards,\r\n\r\nChristopher Hernandez\r\nDirect Lenders\r\nwww.directlenders.xyz', 0, '2021-03-31 22:27:34', '2021-03-31 22:27:34'),
(54, 'Michale Bouchard', 'bouchard.michale@googlemail.com', '01.37.25.23.41', 'What is Link Bypass?\r\n\r\nLink Bypass allows you to easily bypass any sales page and generate a new buy link with no coding required and just a few clicks of your mouse.\r\n\r\nHow does Link Bypass work?\r\n\r\nStep #1 - Choose any sales page you want to bypass and link bypass with automatically create a custom payment link\r\n\r\nStep #2 - Add your new link to any landing page, sales page, or email with a few clicks of your mouse (Use your favorite page-building software or simply ‘copy and paste’)\r\n\r\nStep #3 - Boost conversions and make more money on affiliate promotions\r\n\r\nVisit us: https://warriorplus.com/o2/a/q8rmt/0', 0, '2021-04-01 00:30:57', '2021-04-01 00:30:57'),
(55, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found beshibuy.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://talkwithcustomer.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-04-01 02:20:29', '2021-04-01 02:20:29'),
(56, 'Fidel', 'villasenor.fidel@gmail.com', '(03) 5314 6135', 'Hello \r\n\r\nWear with intent, live with purpose. Fairly priced sunglasses with high quality UV400 lenses protection only $19.99 for the next 24 Hours ONLY.\r\n\r\nOrder here: kickshades.online\r\n\r\nTo your success, \r\n\r\nFidel\r\nContact Us', 0, '2021-04-01 11:51:33', '2021-04-01 11:51:33'),
(57, 'Linda Miller', 'noreply@noreply.com', '555-555-1212', 'How To Master Internet Lead Conversion?\r\n\r\nI spent the last 10+ years generating, calling and closing Internet leads. I will be sharing my decade long conversion code for you to copy during this new, free webinar!\r\nDuring the webinar, I will show you:\r\n\r\nEvery business needs to capture more leads, create more appointments, and close more deals.\r\n\r\nIf you commit to mastering the content in this session, you will earn more money immediately– not in six months or a year, but literally as soon as you put your new knowledge to work. I have used this method on 1,000\'s of Internet leads of all price points. \r\n\r\nIf you want Internet leads, I have the key to CONVERTING them. Hope you can make it... https://TalkWithWebTraffic.com/Webinar\r\n\r\nIf getting more Hot Phone Leads is a part of your business plan (and why wouldn\'t it be?), I\'ve got great news for you.\r\n\r\n1. 12 ways to generate seller leads\r\n2. How to get seller leads on the phone\r\n3. What to say on the phone so you get instant sales\r\n4. The Key to SMS Marketing\r\n5  Never Cold Call Again\r\n6. Better leads = Faster conversions\r\n7. The four keys to inside sales success\r\n8. The 10 steps to a perfect sales call with an Internet lead\r\n\r\nMore than 7,000 people have already registered. The last time I did a webinar with Top Producers, hundreds of people got locked out and could only watch the replay. Get your spot now and tune in early!\r\n\r\n==> Save my spot https://TalkWithWebTraffic.com/Webinar\r\n\r\nWe\'ve become obsessed with making sure our clients are converting the leads we generate for them. \r\n\r\nHow much are you getting back in commissions compared to how much are you spending on advertising? But what is even better than a great ROI is a quick ROI. During this live webinar I will show you how we can help you generate higher quality leads that are easier to convert, fast.\r\n\r\n==>  Register at https://TalkWithWebTraffic.com/Webinar\r\n\r\nYour #1 Fan, \r\nLinda Miller\r\nBe there or be square.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-04-04 21:47:47', '2021-04-04 21:47:47'),
(58, 'Linda Miller', 'lindamillerleads@gmail.com', '555-555-1212', 'How To Master Internet Lead Conversion?\r\n\r\nI spent the last 10+ years generating, calling and closing Internet leads. I will be sharing my decade long conversion code for you to copy during this new, free webinar!\r\nDuring the webinar, I will show you:\r\n\r\nEvery business needs to capture more leads, create more appointments, and close more deals.\r\n\r\nIf you commit to mastering the content in this session, you will earn more money immediately– not in six months or a year, but literally as soon as you put your new knowledge to work. I have used this method on 1,000\'s of Internet leads of all price points. \r\n\r\nIf you want Internet leads, I have the key to CONVERTING them. Hope you can make it... https://TalkWithWebTraffic.com/Webinar\r\n\r\nIf getting more Hot Phone Leads is a part of your business plan (and why wouldn\'t it be?), I\'ve got great news for you.\r\n\r\n1. 12 ways to generate seller leads\r\n2. How to get seller leads on the phone\r\n3. What to say on the phone so you get instant sales\r\n4. The Key to SMS Marketing\r\n5  Never Cold Call Again\r\n6. Better leads = Faster conversions\r\n7. The four keys to inside sales success\r\n8. The 10 steps to a perfect sales call with an Internet lead\r\n\r\nMore than 7,000 people have already registered. The last time I did a webinar with Top Producers, hundreds of people got locked out and could only watch the replay. Get your spot now and tune in early!\r\n\r\n==> Save my spot https://TalkWithWebTraffic.com/Webinar\r\n\r\nWe\'ve become obsessed with making sure our clients are converting the leads we generate for them. \r\n\r\nHow much are you getting back in commissions compared to how much are you spending on advertising? But what is even better than a great ROI is a quick ROI. During this live webinar I will show you how we can help you generate higher quality leads that are easier to convert, fast.\r\n\r\n==>  Register at https://TalkWithWebTraffic.com/Webinar\r\n\r\nYour #1 Fan, \r\nLinda Miller\r\nBe there or be square.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-04-06 12:24:07', '2021-04-06 12:24:07'),
(59, 'Linda Miller', 'lindamillerleads@gmail.com', '555-555-1212', 'How To Master Internet Lead Conversion?\r\n\r\nI spent the last 10+ years generating, calling and closing Internet leads. I will be sharing my decade long conversion code for you to copy during this new, free webinar!\r\nDuring the webinar, I will show you:\r\n\r\nEvery business needs to capture more leads, create more appointments, and close more deals.\r\n\r\nIf you commit to mastering the content in this session, you will earn more money immediately– not in six months or a year, but literally as soon as you put your new knowledge to work. I have used this method on 1,000\'s of Internet leads of all price points. \r\n\r\nIf you want Internet leads, I have the key to CONVERTING them. Hope you can make it... https://TalkWithWebTraffic.com/Webinar\r\n\r\nIf getting more Hot Phone Leads is a part of your business plan (and why wouldn\'t it be?), I\'ve got great news for you.\r\n\r\n1. 12 ways to generate seller leads\r\n2. How to get seller leads on the phone\r\n3. What to say on the phone so you get instant sales\r\n4. The Key to SMS Marketing\r\n5  Never Cold Call Again\r\n6. Better leads = Faster conversions\r\n7. The four keys to inside sales success\r\n8. The 10 steps to a perfect sales call with an Internet lead\r\n\r\nMore than 7,000 people have already registered. The last time I did a webinar with Top Producers, hundreds of people got locked out and could only watch the replay. Get your spot now and tune in early!\r\n\r\n==> Save my spot https://TalkWithWebTraffic.com/Webinar\r\n\r\nWe\'ve become obsessed with making sure our clients are converting the leads we generate for them. \r\n\r\nHow much are you getting back in commissions compared to how much are you spending on advertising? But what is even better than a great ROI is a quick ROI. During this live webinar I will show you how we can help you generate higher quality leads that are easier to convert, fast.\r\n\r\n==>  Register at https://TalkWithWebTraffic.com/Webinar\r\n\r\nYour #1 Fan, \r\nLinda Miller\r\nBe there or be square.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-04-06 23:46:04', '2021-04-06 23:46:04'),
(60, 'Bernard Purser', 'purser.bernard44@gmail.com', '01.41.67.37.30', 'Hey,\r\n\r\nIt was nice speaking to you the other day, this is the service I was telling you about that helped us boost our ROI almost 2000%\r\n\r\nIts a company called Lifemail.studio sorry it took so long to get back to you. They allow you to send any email doesn\'t matter what.\r\n\r\nWe dealt with a guy named Michael, he was friendly and got us setup really quickly.\r\n\r\nRegards,\r\nBernard', 0, '2021-04-08 00:42:23', '2021-04-08 00:42:23'),
(61, 'Maria Mault', 'maria.mault@gmail.com', '(02) 4032 8470', 'For Anyone Looking To Start, Scale and Grow A Digital Business In 2021\r\n\r\nNew Book Reveals How I Built A 7-Figure Online Business Using Nothing But Ethical Email Marketing To Drive Revenue, Sales and Commissions...\r\n\r\n$4.99 to access the secret email system.\r\n\r\nSesforyou.com!', 0, '2021-04-08 21:53:10', '2021-04-08 21:53:10'),
(62, 'Tanya', 'tanya@beshibuy.com', '78 656 17 17', 'Morning \r\n \r\nTrim your dog\'s nails safely from home.  Get it while it\'s still 50% OFF + FREE Shipping\r\n\r\nBuy here: pawsafer.shop\r\n \r\nKind Regards, \r\n \r\nTanya\r\nContact Us', 0, '2021-04-12 21:11:12', '2021-04-12 21:11:12'),
(63, 'Chang Mosley', 'chang@lifemailnow.com', '06-97079289', 'Hello,\r\n\r\nSend unlimited emails to unlimited lists with one click and no monthly fees!\r\n\r\n$99 once off!\r\n\r\nLifeMailNow.com', 0, '2021-04-13 21:13:27', '2021-04-13 21:13:27'),
(64, 'Jefferson', 'info@beshibuy.com', '0338 4776464', 'Hey there \r\n \r\nMeet your best Buds - True Wireless Earbuds with amazing sound, convenience, portability, & affordability!\r\n\r\nOrder yours now at 50% OFF with FREE Shipping: musicontrol.online\r\n \r\nSincerely, \r\n \r\nJefferson\r\nContact Us', 0, '2021-04-17 10:56:06', '2021-04-17 10:56:06'),
(65, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found beshibuy.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://talkwithcustomer.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-04-18 23:10:39', '2021-04-18 23:10:39'),
(66, 'Linda Freeman', 'lindagfreeman471@gmail.com', '000-000-1111', 'Hi,\r\n\r\nI thought you may be interested in our services. \r\n\r\nWould you like quality visitors coming to beshibuy.com from major online publications in your EXACT category?\r\nYou approve them before we start. These are visitors who are interested in your site. \r\n(not segmented by city or state)\r\n \r\nStarter campaigns of 5,000 - 250,000 packages available. \r\nSome sold out until June.\r\n\r\nThank you for your time and hope to see you on our site. \r\n\r\nKind regards,\r\nLinda\r\nhttps://traffic-stampede.com', 0, '2021-04-20 20:41:45', '2021-04-20 20:41:45'),
(67, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, Eric here with a quick thought about your website beshibuy.com...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-04-21 08:47:20', '2021-04-21 08:47:20'),
(68, 'Ash', '7 Earls Avenue', '888-938-8893', 'Hello,\r\n\r\nMy Name is Ash and I Run Tech Know Space https://techknowspace.com We are your Premium GO-TO Service Centre for All Logic Board & Mainboard Repair\r\n\r\nWhen other shops say \"it can\'t be fixed\" WE CAN HELP!\r\n\r\nALL iPHONE 8 & NEWER\r\nBACK GLASS REPAIR - 1 HOUR\r\n\r\nDevices We Repair\r\nAudio Devices Audio Device Repair\r\n\r\nBluetooth Speakers - Headphones - iPod Touch\r\nComputers All Computer Repair\r\n\r\nAll Brands & Models - Custom Built - PC & Mac\r\nGame Consoles Game Console Repair\r\n\r\nPS4 - XBox One - Nintendo Switch\r\nLaptops All Laptop Repair\r\n\r\nAll Brands & Models - Acer, Asus, Compaq, Dell, HP, Lenovo, Toshiba\r\nMacBooks All MacBook Repair\r\n\r\nAll Series & Models - Air, Classic, Pro\r\nPhones All Phone Repair\r\n\r\nAll Brands & Models - BlackBerry, Huawei, iPhone, LG, OnePlus, Samsung, Sony\r\nSmart Watches Apple Watch Repair\r\n\r\nApple Watch - Samsung Gear - Moto 360\r\nTablets All Tablet Repair\r\n\r\nAll Brands & Models - iPad, Lenovo Yoga, Microsoft Surface, Samsung Tab\r\n\r\nDrone Repair\r\n\r\nCall us and tell us your issues today!\r\n\r\nToll Free: (888) 938-8893\r\nhttps://techknowspace.com\r\n\r\nAsh Mansukhani\r\nash@techknowspace.com\r\n<img src=\"https://yt3.ggpht.com/ytc/AAUvwnhUhkYdWNeEvgk0Kb1HPFRGjLlXdAKaAXUhwNjC=s900-c-k-c0x00ffffff-no-rj\" alt=\"Ash Mansukhani\" width=\"500\" height=\"600\">', 0, '2021-04-22 06:21:22', '2021-04-22 06:21:22'),
(69, 'Lavern Borrego', 'borrego.lavern@gmail.com', '06-55596231', 'Estimado propietario del sitio web,\r\n\r\nno te preocupes, no estoy vendiendo nada :)\r\n\r\nEstoy trabajando en un sitio web con un tema similar, así que escaneé beshibuy.com también (para analizar la competencia).\r\n\r\nLamentablemente, estuvo fuera de línea durante algún tiempo. Además, acabo de darme cuenta de que está por detrás del 62% de los otros sitios en el mismo nicho....\r\n\r\nAsí que es un buen momento para reflexionar\r\n\r\nPor favor, envíeme un mensaje si tiene alguna pregunta o eche un vistazo a nuestra herramienta gratuita \r\nhttps://competitor-research.com/es\r\n\r\n\r\n\r\nSaludos cordiales,\r\nLavern Borrego\r\nEspecialista en SEO\r\n\r\n\r\n\r\n---\r\nOpt-out: https://competitor-research.com/opt-out.php?domain=beshibuy.com\r\nSpam report: https://competitor-research.com/spam.php?domain=beshibuy.com', 0, '2021-04-22 13:10:45', '2021-04-22 13:10:45'),
(70, 'Dotty', 'info@beshibuy.com', '06-16252562', 'Hey there\r\n\r\nOur Medical-Grade Toenail Clippers is the safest and especially recommended for those with troubles with winding nails, hard nails, two nails, nail cracks, deep nails, thickened nails etc..\r\n\r\nGet yours: thepodiatrist.online\r\n\r\nRegards,\r\n\r\nDotty\r\nContact Us', 0, '2021-04-24 17:21:08', '2021-04-24 17:21:08'),
(71, 'Linda Miller', 'lindamillerleads@gmail.com', '555-555-1212', 'Hi beshibuy.com Owner,\r\n\r\nDo you want to know the Secrets To Mastering Internet Lead Conversion?\r\n\r\nI spent the last 10+ years generating, calling and closing Internet leads. I will be sharing my decade long conversion code for you to copy during this new, free webinar!\r\nDuring the webinar, I will show you:\r\n\r\nEvery business needs to capture more leads, create more appointments, and close more deals.\r\n\r\nIf you commit to mastering the content in this session, you will earn more money immediately– not in six months or a year, but literally as soon as you put your new knowledge to work. I have used this method on 1,000\'s of Internet leads of all price points. \r\n\r\nIf you want Internet leads, I have the key to CONVERTING them. Hope you can make it... https://TalkWithWebTraffic.com/Webinar\r\n\r\nIf getting more Hot Phone Leads is a part of your business plan (and why wouldn\'t it be?), I\'ve got great news for you.\r\n\r\n1. 12 ways to generate seller leads\r\n2. How to get seller leads on the phone\r\n3. What to say on the phone so you get instant sales\r\n4. The Key to SMS Marketing\r\n5  Never Cold Call Again\r\n6. Better leads = Faster conversions\r\n7. The four keys to inside sales success\r\n8. The 10 steps to a perfect sales call with an Internet lead\r\n\r\nMore than 7,000 people have already registered. The last time I did a webinar with Top Producers, hundreds of people got locked out and could only watch the replay. Get your spot now and tune in early!\r\n\r\n==> Save my spot https://TalkWithWebTraffic.com/Webinar\r\n\r\nWe\'ve become obsessed with making sure our clients are converting the leads we generate for them. \r\n\r\nHow much are you getting back in commissions compared to how much are you spending on advertising? But what is even better than a great ROI is a quick ROI. During this live webinar I will show you how we can help you generate higher quality leads that are easier to convert, fast.\r\n\r\n==>  Register at https://TalkWithWebTraffic.com/Webinar\r\n\r\nYour #1 Fan, \r\nLinda Miller\r\nBe there or be square.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-04-25 11:18:28', '2021-04-25 11:18:28'),
(72, 'Anthony Lopez', 'anthony@directlendingsource.xyz', '202-991-6766', 'Hello,\r\n\r\nI hope you are doing well, and business is Great!\r\n\r\nHowever, if you need working capital to further grow and expand your business, we\r\nmay be a perfect fit for you and here’s why. \r\n\r\nOur loans are NOT based on your personal credit, and NO collateral is required.\r\n\r\nWe are a Direct Lender who can approve your loan today, and fund as early as Tomorrow.\r\n\r\nWe offer loans from 5k to 500k with flexible payments and great terms.\r\n\r\nJust click on the link to INSTANTLY see how much you qualify for www.directlendingsource.xyz  Applying does NOT affect your credit!\r\n\r\nAlso, please check out this video to see how our program works, and all the funding options we have available for you.  www.directlendingsource.xyz/video\r\n\r\n\r\n\r\nWarm Regards,\r\n\r\nAnthony Lopez\r\nDirect Lending Source\r\nwww.directlendingsource.xyz', 0, '2021-04-27 22:17:59', '2021-04-27 22:17:59'),
(73, 'Dario', 'info@beshibuy.com', '03.45.86.97.27', 'Hi there\r\n\r\nThe ultimate smashing machine! Grinding Coffee Beans, Nuts & Spices in seconds.\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nOrder here: aromaonline.store\r\n\r\nKind Regards,\r\n\r\nDario\r\nContact Us', 0, '2021-04-29 04:01:56', '2021-04-29 04:01:56'),
(74, 'Melvina Imes', 'melvina@bestlocaldata.com', '418-696-6749', 'Hey!\r\n\r\nBestLocalData has an amazing special. 16 databases for $99. \r\n\r\nLinkedIn(43million records) USA B2B (28 million companies), Australia, South Africa, UK, Germany and all of that included. \r\n\r\nInstant delivery! \r\n\r\nhttps://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=7S34LZQSKKQHG\r\n\r\nOr check out more on our website!\r\n\r\nRegards,\r\nMelvina', 0, '2021-04-29 14:53:55', '2021-04-29 14:53:55'),
(75, 'Alyssa Bourassa', 'alyssa.bourassa@yahoo.com', '06-15466336', 'Want to get more buyers for your site? We can deliver targeted traffic specifically for your specific type of business\r\n To get details For details visit: http://bit.ly/webtraffic-foryourniche', 0, '2021-04-30 08:30:25', '2021-04-30 08:30:25');
INSERT INTO `contacts` (`id`, `name`, `email`, `mobile`, `description`, `status`, `created_at`, `updated_at`) VALUES
(76, 'Lashonda Ray', 'lashonda.ray@yahoo.com', '0488 31 17 92', 'Looking for fresh buyers? Receive hundreds of people who are ready to buy sent directly to your website. Increase your profits quick. You\'ll see results in as little as 72 hours. To get details Have a look at: http://bit.ly/get-real-web-visitors', 0, '2021-05-02 04:10:10', '2021-05-02 04:10:10'),
(77, 'Linda Miller', 'lindamillerleads@gmail.com', '555-555-1212', 'Hi beshibuy.com Owner,\r\n\r\nDo you want to know the Secrets To Mastering Internet Lead Conversion?\r\n\r\nI spent the last 10+ years generating, calling and closing Internet leads. I will be sharing my decade long conversion code for you to copy during this new, free webinar!\r\nDuring the webinar, I will show you:\r\n\r\nEvery business needs to capture more leads, create more appointments, and close more deals.\r\n\r\nIf you commit to mastering the content in this session, you will earn more money immediately– not in six months or a year, but literally as soon as you put your new knowledge to work. I have used this method on 1,000\'s of Internet leads of all price points. \r\n\r\nIf you want Internet leads, I have the key to CONVERTING them. Hope you can make it... https://TalkWithWebTraffic.com/Webinar\r\n\r\nIf getting more Hot Phone Leads is a part of your business plan (and why wouldn\'t it be?), I\'ve got great news for you.\r\n\r\n1. 12 ways to generate seller leads\r\n2. How to get seller leads on the phone\r\n3. What to say on the phone so you get instant sales\r\n4. The Key to SMS Marketing\r\n5  Never Cold Call Again\r\n6. Better leads = Faster conversions\r\n7. The four keys to inside sales success\r\n8. The 10 steps to a perfect sales call with an Internet lead\r\n\r\nMore than 7,000 people have already registered. The last time I did a webinar with Top Producers, hundreds of people got locked out and could only watch the replay. Get your spot now and tune in early!\r\n\r\n==> Save my spot https://TalkWithWebTraffic.com/Webinar\r\n\r\nWe\'ve become obsessed with making sure our clients are converting the leads we generate for them. \r\n\r\nHow much are you getting back in commissions compared to how much are you spending on advertising? But what is even better than a great ROI is a quick ROI. During this live webinar I will show you how we can help you generate higher quality leads that are easier to convert, fast.\r\n\r\n==>  Register at https://TalkWithWebTraffic.com/Webinar\r\n\r\nYour #1 Fan, \r\nLinda Miller\r\nBe there or be square.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-05-03 09:33:08', '2021-05-03 09:33:08'),
(78, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found beshibuy.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://talkwithcustomer.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-05-05 01:15:58', '2021-05-05 01:15:58'),
(79, 'Linda Miller', 'lindamillerleads@gmail.com', '555-555-1212', 'Hi beshibuy.com Owner,\r\n\r\nDo you want to know the Secrets To Mastering Internet Lead Conversion?\r\n\r\nI spent the last 10+ years generating, calling and closing Internet leads. I will be sharing my decade long conversion code for you to copy during this new, free webinar!\r\nDuring the webinar, I will show you:\r\n\r\nEvery business needs to capture more leads, create more appointments, and close more deals.\r\n\r\nIf you commit to mastering the content in this session, you will earn more money immediately– not in six months or a year, but literally as soon as you put your new knowledge to work. I have used this method on 1,000\'s of Internet leads of all price points. \r\n\r\nIf you want Internet leads, I have the key to CONVERTING them. Hope you can make it... https://TalkWithWebTraffic.com/Webinar\r\n\r\nIf getting more Hot Phone Leads is a part of your business plan (and why wouldn\'t it be?), I\'ve got great news for you.\r\n\r\n1. 12 ways to generate seller leads\r\n2. How to get seller leads on the phone\r\n3. What to say on the phone so you get instant sales\r\n4. The Key to SMS Marketing\r\n5  Never Cold Call Again\r\n6. Better leads = Faster conversions\r\n7. The four keys to inside sales success\r\n8. The 10 steps to a perfect sales call with an Internet lead\r\n\r\nMore than 7,000 people have already registered. The last time I did a webinar with Top Producers, hundreds of people got locked out and could only watch the replay. Get your spot now and tune in early!\r\n\r\n==> Save my spot https://TalkWithWebTraffic.com/Webinar\r\n\r\nWe\'ve become obsessed with making sure our clients are converting the leads we generate for them. \r\n\r\nHow much are you getting back in commissions compared to how much are you spending on advertising? But what is even better than a great ROI is a quick ROI. During this live webinar I will show you how we can help you generate higher quality leads that are easier to convert, fast.\r\n\r\n==>  Register at https://TalkWithWebTraffic.com/Webinar\r\n\r\nYour #1 Fan, \r\nLinda Miller\r\nBe there or be square.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-05-05 05:52:19', '2021-05-05 05:52:19'),
(80, 'Shauna Tauchert', 'tauchert.shauna@gmail.com', '079 6640 4450', 'If you\'re looking to get some visitors to your site quick, we sell 3000 niche targeted visitors for just $39 if you\'re interested. Hassle free money back guarantee if you\'re not happy. Take a quick look at my site now: http://bit.ly/quick-web-traffic', 0, '2021-05-05 12:54:38', '2021-05-05 12:54:38'),
(81, 'Mazie Springfield', 'springfield.mazie@gmail.com', '0660 324 69 11', 'Hi there, I hope you’re doing well.\r\n\r\nI handle influencer relations for LeggingsHut. Great to meet you! \r\nI stumbled across your account and thought your content would be perfect for us.\r\nIf you feel we’d make a good fit, I’d love to invite you to our referral program. \r\n\r\nUse this link to visit, http://leggingscashteam.com \r\n\r\nSincerely, \r\nLeggings Cash Team Judy', 0, '2021-05-08 02:33:01', '2021-05-08 02:33:01'),
(82, 'Sophia', 'info@beshibuy.com', '53-15-75-83', 'Household Mold Remover Gel\r\n\r\nQuickly And Effortlessly Remove Stains And Mold From Crevices In Your Home!\r\n\r\nDesigned to tackle mold, bacteria, and fungus with gusto! Our formula cleans up the gunk!\r\nKeep Your Home Away From The Mold.\r\n\r\nPROMO BUY 2 FREE 1 FOR NEXT 24 HOURS ONLY!\r\n\r\nGet it now: homegadget.work\r\n\r\nBest, \r\n \r\nSophia\r\nContact Us', 0, '2021-05-08 06:51:07', '2021-05-08 06:51:07'),
(83, 'Errol Follansbee', 'follansbee.errol@googlemail.com', '078 6324 6678', 'Boost visitor volumes to your site fast. Get 3,000 visitors in any niche for less than $40. Traffic guaranteed or your money refunded: http://bit.ly/real-human-visitors', 0, '2021-05-08 14:19:02', '2021-05-08 14:19:02'),
(84, 'Jennie Denby', 'jennie@sendbulkmails.com', '0351 96 41 94', 'Hello from SendBulkMails.com,\r\n\r\nWe have a special limited offer for you to send unlimited emails.\r\n\r\nWe allow non-permission based emails and you won\'t ever get blocked.\r\n\r\nWe also buy your domain for you and give you a clean IP and setup your DNS records.\r\n\r\nCheck us out on SendBulkMails.com', 0, '2021-05-11 08:44:16', '2021-05-11 08:44:16'),
(85, 'Ivy Barclay', 'ivy@bestlocaldata.com', '02103 79 02 59', 'Hello from BestLocalData.com\r\n\r\nDue to the pandemic BestLocalData.com is shutting down on the 14th of May.\r\n\r\nWe have more than a 100 million records of Key Executives all over the world.\r\n\r\nWe hope that this Data will serve other companies to succeed in their marketing efforts.\r\n\r\nWe have reduced all the prices to next to nothing on our website BestLocalData.com\r\n\r\nWe wish you the best in your future endeavours.', 0, '2021-05-11 23:23:37', '2021-05-11 23:23:37'),
(86, 'Ariel Manzer', 'manzer.ariel@yahoo.com', '(02) 4077 0909', 'Buy web traffic and boost visitors and sales in just 24 hours! Traffic guaranteed or full refund: http://bit.ly/web-traffic-for-any-niche', 0, '2021-05-12 16:16:27', '2021-05-12 16:16:27'),
(87, 'Rochelle', 'info@beshibuy.com', '036737 47 03', 'Get The Worlds Greatest Magic Sand Free Beach Mat!\r\n\r\nWatch sand, dirt & dust disappear right before your eyes!\r\n\r\nAct Now And Receive A Special Discount For Our Magic Sand Free Beach Mat!\r\n\r\nGet Yours Here:  magicmat.shop\r\n\r\nBest regards, \r\n \r\nRochelle\r\nContact Us', 0, '2021-05-12 17:05:19', '2021-05-12 17:05:19'),
(88, 'Marcela Fikes', 'fikes.marcela44@gmail.com', '06-63931177', 'Buy qualified web traffic for your site. Keyword Targeted. Full refund if not happy.  http://bit.ly/boost-web-traffic-now', 0, '2021-05-15 18:40:28', '2021-05-15 18:40:28'),
(89, 'Brianne', 'info@beshibuy.com', '(07) 4002 3406', 'Hey \r\n \r\nBody Revolution - Medico Postura™ Body Posture Corrector\r\nImprove Your Posture INSTANTLY!\r\n\r\nGet it while it\'s still 60% OFF!  FREE Worldwide Shipping!\r\n\r\nGet yours here: medicopostura.online\r\n \r\nCheers, \r\n \r\nBrianne\r\nContact Us', 0, '2021-05-16 09:35:40', '2021-05-16 09:35:40'),
(90, 'Leonora Mackintosh', 'mackintosh.leonora@hotmail.com', '(03) 6247 1302', 'Do you advertise with Facebook or Google? Or any other social media? You\'re probably paying way too much for clicks. I can get you high quality, niche targeted visitors to your site for less than a penny per click! 24 hour turnaround. Money back if not satisfied. Here\'s my site: http://bit.ly/boost-web-traffic-now', 0, '2021-05-18 16:45:49', '2021-05-18 16:45:49'),
(91, 'Wayne Rasmussen', 'wayne@order-fulfillment.net', '720-423-5814', 'Hello from order-fulfillment.net,\r\n\r\nDoing your own product shipping or order fulfillment in house?\r\n\r\nTired of it? Visit us on www.order-fulfillment.net  \r\n\r\nWe can store, inventory, and manage your drop shipping / order fulfillment for you.  \r\n\r\nBased in the US for almost 2 decades - we ship around the world and will save you time and money.\r\n\r\nWho would be the best contact at your company to discuss?\r\n\r\nHere are some of the items we ship for clients:\r\n-Books, training manuals, guides\r\n-New member welcomes boxes and gifts\r\n-Product samples\r\n-Marketing materials\r\n-Medical program test kits\r\n-Follow up gifts to clients, leads, and prospects\r\n\r\nThank you!\r\nFulfillment Warehouse\r\nhttps://order-fulfillment.net', 0, '2021-05-19 00:02:09', '2021-05-19 00:02:09'),
(92, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, Eric here with a quick thought about your website beshibuy.com...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-05-19 05:47:14', '2021-05-19 05:47:14'),
(93, 'Randi', 'info@beshibuy.com', '0660 737 38 09', 'Hey\r\n\r\nBuy face mask to protect your loved ones from the deadly CoronaVirus.  We wholesale N95 Masks and Surgical Masks for both adult and kids.  The prices begin at $0.19 each.  If interested, please visit our site: pharmacyoutlets.online\r\n\r\nTo your success,\r\n\r\nRandi\r\nContact Us', 0, '2021-05-19 21:03:36', '2021-05-19 21:03:36'),
(94, 'Jamaal Pesina', 'jamaal@fbcourses.net', '04823 12 88 91', 'Are you looking for the best way to market your business?\r\n\r\nFbCourses.net has the answer..\r\n\r\nNot sure where to start, or what to do?\r\n\r\nWhy not learn from the best.  All of the best.\r\n\r\nWe are offering at never before seen prices all of the top courses for one insanely low price.\r\n\r\nIf you have been thinking of how to generate more leads, website traffic or sales today is the day.\r\n\r\nAll courses are available in full with immediate download on FbCourses.net\r\n\r\nNot sure which one you like, for the next 24 hours we are offering the entire suite of courses for the lowest amount you could possible imagine.\r\n\r\nCheck us out : FbCourses.net\r\n\r\nYou could be driving new income or starting the new side hustle today!', 0, '2021-05-20 05:41:09', '2021-05-20 05:41:09'),
(95, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found beshibuy.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://talkwithcustomer.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-05-20 05:51:06', '2021-05-20 05:51:06'),
(96, 'Christopher Hernandez', 'christopher@directlenders1.xyz', '202-991-6766', 'Hello,\r\n\r\nI hope life is treating you kind and business is AWESOME!\r\n\r\nI just have one quick question for you.\r\n\r\nWould you consider a Working Capital Loan for your Business if the price and terms were acceptable?\r\n\r\nIf so, we can provide you with a funding decision is less than 30 seconds \r\nwithout pulling your credit or submitting a single document. \r\n\r\nJust click on the link to INSTANTLY see how much you qualify for www.directlenders1.xyz\r\n\r\nAlso, please check out this video to see how our program works, and all the funding options we have available for you.  www.directlenders1.xyz/video\r\n\r\n\r\n\r\nWarm Regards,\r\n\r\nChristopher Hernandez\r\nDirect Lenders\r\nwww.directlenders1.xyz\r\n\r\n\r\n\r\n\r\nThis is an Advertisement.\r\nTo unsubscribe, click here www.directlenders1.xyz/unsubscribe,\r\n\r\nor write to:\r\n\r\nDirect Lenders\r\n9169 W State St #3242\r\nGarden City, ID 83714', 0, '2021-05-21 05:40:19', '2021-05-21 05:40:19'),
(97, 'Mollie Mulvany', 'mulvany.mollie47@gmail.com', '024 261 89 12', 'Stats show that people are spending too much on ads online. Some sites are paying as much as $50 per click! This happens because there are too many sites all advertising at the same places. For example, Google is one of the oldest online advertisers around and they have literally billions of websites advertising with them. This creates a level of ad saturation that can only be fixed with higher bids for clicks. You see, the more they charge for clicks the less ads they have to show and that\'s good for them. Now it\'s time to do what\'s good for you! We can generate niche targeted clicks for you using ads that appear on news websites like cnn.com for less than a penny each! Money back guarantee if you\'re not satisfied: http://bit.ly/boost-web-traffic-now', 0, '2021-05-22 13:09:25', '2021-05-22 13:09:25'),
(98, 'Terra', 'info@beshibuy.com', '60-63-54-69', 'Hi \r\n \r\nCAREDOGBEST™ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nClick here: caredogbest.online\r\n \r\nEnjoy, \r\n \r\nTerra\r\nContact Us', 0, '2021-05-23 01:54:54', '2021-05-23 01:54:54'),
(99, 'Jefferey Shapcott', 'jefferey.shapcott@gmail.com', '864-483-6413', 'Stats show that people are spending too much on ads online. Some sites are paying as much as $50 per click! This happens because there are too many sites all advertising at the same places. For example, Google is one of the oldest online advertisers around and they have literally billions of websites advertising with them. This creates a level of ad saturation that can only be fixed with higher bids for clicks. You see, the more they charge for clicks the less ads they have to show and that\'s good for them. Now it\'s time to do what\'s good for you! We can generate niche targeted clicks for you using ads that appear on news websites like cnn.com for less than a penny each! Money back guarantee if you\'re not satisfied: http://bit.ly/boost-web-traffic-now', 0, '2021-05-24 18:08:41', '2021-05-24 18:08:41'),
(100, 'Gerardo Witcher', 'gerardo@bestlocaldata.com', '206-443-5827', 'Hello,\r\n\r\nIt is with sad regret to inform you that BestLocalData.com is shutting down.\r\n\r\nWe have made all our databases for sale for a once-off price.\r\n\r\nVisit our website to get the best bargain of your life. BestLocalData.com\r\n\r\nRegards,\r\nGerardo', 0, '2021-05-24 20:51:25', '2021-05-24 20:51:25'),
(101, 'Roxana', 'info@beshibuy.com', '28-68-95-75', 'Good Morning\r\n\r\nBe Buzz Free! The Original Mosquito Trap.\r\n\r\n60% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping\r\n✔️LED Bionic Wave Technology\r\n✔️Eco-Friendly\r\n✔️15 Day Money-Back Guarantee\r\n\r\nShop Now: mosquitotrap.online\r\n\r\nThe Best,\r\n\r\nRoxana\r\nContact Us', 0, '2021-05-26 19:01:52', '2021-05-26 19:01:52'),
(102, 'Jenny Straub', 'straub.jenny48@googlemail.com', '02.54.17.48.93', 'Stats show that people are spending too much on ads online. Some sites are paying as much as $50 per click! This happens because there are too many sites all advertising at the same places. For example, Google is one of the oldest online advertisers around and they have literally billions of websites advertising with them. This creates a level of ad saturation that can only be fixed with higher bids for clicks. You see, the more they charge for clicks the less ads they have to show and that\'s good for them. Now it\'s time to do what\'s good for you! We can generate niche targeted clicks for you using ads that appear on news websites like cnn.com for less than a penny each! Money back guarantee if you\'re not satisfied: http://bit.ly/boost-web-traffic-now', 0, '2021-05-27 13:15:31', '2021-05-27 13:15:31'),
(103, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found beshibuy.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://talkwithcustomer.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-05-31 03:47:11', '2021-05-31 03:47:11'),
(104, 'Twyla', 'twyla@beshibuy.com', '06-85752442', 'Hello there \r\n \r\nProviding Premium sunglasses only $19.99 for the next 24 Hours ONLY.  60% OFF today with free worldwide shipping.\r\n\r\nGet Yours: trendshades.online\r\n \r\nTo your success, \r\n \r\nTwyla\r\nContact Us', 0, '2021-06-01 17:35:19', '2021-06-01 17:35:19'),
(105, 'Alysa Gambrel', 'alysa@bestlocaldata.com', '070 4093 6238', 'Hello,\r\n\r\nIt is with sad regret to inform you that BestLocalData.com is shutting down.\r\n\r\nWe have made all our databases for sale for a once-off price.\r\n\r\nVisit our website to get the best bargain of your life. BestLocalData.com\r\n\r\nRegards,\r\nAlysa', 0, '2021-06-02 02:49:35', '2021-06-02 02:49:35'),
(106, 'Gary Young', 'gary@bizcapitalloans1.xyz', '202-991-6766', 'Hello,\r\n\r\nI hope life is treating you kind and business is AWESOME!\r\n\r\nI just have one quick question for you.\r\n\r\nWould you consider a Working Capital Loan for your Business if the price and terms were acceptable?\r\n\r\nIf so, we can provide you with a funding decision is less than 30 seconds \r\nwithout pulling your credit or submitting a single document. \r\n\r\nJust click on the link to INSTANTLY see how much you qualify for www.bizcapitalloans1.xyz\r\n\r\nAlso, please check out this video to see how our program works, and all the funding options we have available for you.  www.bizcapitalloans1.xyz/video\r\n\r\n\r\n\r\nWarm Regards,\r\n\r\nGary Young\r\nBiz Capital Loans\r\nwww.bizcapitalloans1.xyz\r\n\r\n\r\n\r\n\r\nThis is an Advertisement.\r\nTo unsubscribe, click here www.bizcapitalloans1.xyz/unsubscribe,\r\n\r\nor write to:\r\n\r\nBiz Capital Loans\r\n9169 W State St #3242\r\nGarden City, ID 83714', 0, '2021-06-03 01:11:24', '2021-06-03 01:11:24'),
(107, 'Gabriele Crookes', 'gabriele@bestlocaldata.com', '(83) 4712-3681', 'Hello,\r\n\r\nIt is with sad regret to inform you that BestLocalData.com is shutting down.\r\n\r\nWe have made all our databases for sale for a once-off price.\r\n\r\nVisit our website to get the best bargain of your life. BestLocalData.com\r\n\r\nRegards,\r\nGabriele', 0, '2021-06-05 01:01:35', '2021-06-05 01:01:35'),
(108, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'My name’s Eric and I just found your site beshibuy.com.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE https://talkwithwebvisitors.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=beshibuy.com', 0, '2021-06-05 10:17:18', '2021-06-05 10:17:18'),
(109, 'Natasha Blakeley', 'blakeley.natasha@gmail.com', '(02) 6750 9370', 'Stats show that people are spending too much on ads online. Some sites are paying as much as $50 per click! This happens because there are too many sites all advertising at the same places. For example, Google is one of the oldest online advertisers around and they have literally billions of websites advertising with them. This creates a level of ad saturation that can only be fixed with higher bids for clicks. You see, the more they charge for clicks the less ads they have to show and that\'s good for them. Now it\'s time to do what\'s good for you! We can generate niche targeted clicks for you using ads that appear on news websites like cnn.com for less than a penny each! Money back guarantee if you\'re not satisfied: http://bit.ly/boost-web-traffic-now', 0, '2021-06-07 15:14:26', '2021-06-07 15:14:26'),
(110, 'Titus', 'info@beshibuy.com', '71-67-95-41', 'Good day \r\n\r\nThe complete selection of all Ray-Ban sunglasses styles available online and only 24.99 dollars. \r\n\r\nInsanely special offer for the next 24 hours only! Get yours here: lensoutlet.online\r\n\r\nYou Won\'t Want To Miss This!\r\n\r\nBest regards, \r\n\r\nTitus\r\nContact Us', 0, '2021-06-09 03:42:09', '2021-06-09 03:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `contact_images`
--

CREATE TABLE `contact_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `district_id`, `name`, `email`, `password`, `phone`, `city`, `address`, `gender`, `created_at`, `updated_at`) VALUES
(32, 18, 'mainul', 'mainul125011@gmail.com', NULL, '012344567890', NULL, 'qwe', NULL, '2020-12-15 00:35:44', '2020-12-15 00:35:44'),
(33, 18, 'Noor', 'nooruddin79@gmail.com', NULL, '01914576351', NULL, '330/4/ja\r\nEast nakhalpara\r\nTejgoan', NULL, '2020-12-22 06:05:39', '2020-12-22 06:05:39'),
(34, 50, 'Khairul', 'hgfdhfdj@gmail.com', NULL, '01911804945', 'chatmohar', 'shalikha, pabna', NULL, '2020-12-23 20:06:53', '2020-12-23 20:06:53'),
(35, 3, 'aa', 'null@null.null', NULL, '01234567890', 'aa', 'aa', NULL, '2020-12-26 23:23:40', '2020-12-26 23:23:40'),
(36, 24, 'Yardley Rowe', 'rezaulmba333@gmail.com', NULL, '01815395299', 'Veritatis eum labori', 'Aliquid nemo saepe s', NULL, '2021-01-13 23:47:13', '2021-01-13 23:47:13'),
(37, 18, 'Yardley Rowe', 'rezaulmba333@gmail.com', NULL, '01815395299', 'Veritatis eum labori', 'Aliquid nemo saepe s', NULL, '2021-01-13 23:50:23', '2021-01-13 23:50:23'),
(38, 18, 'Rezaul karim Karim', 'suuport@beshibuy.com', NULL, '01815395267', 'Dhaka', 'Cha-65/A, 2nd floor North Badda, Dhaka-1212 .', NULL, '2021-01-13 23:51:34', '2021-01-13 23:51:34'),
(39, 18, 'Yardley Rowe', 'rezaulmba333@gmail.com', NULL, '01815395299', NULL, 'Dhaka', NULL, '2021-01-13 23:54:33', '2021-01-13 23:54:33'),
(40, 18, 'test 1255213', 'sfkdh@kkd.cji', NULL, '01646688970', 'Chandpur', 'Maimuna Akter, Molla Villa, koroya', NULL, '2021-01-14 00:09:32', '2021-03-14 22:43:11'),
(41, NULL, 'mainul', 'mainul125011@gmail.com', NULL, '01646688970', 'Chandpur', 'Maimuna Akter, Molla Villa, koroya', NULL, '2021-01-14 00:13:46', '2021-01-14 00:13:46'),
(42, 18, 'mainul', 'mainul125011@gmail.com', NULL, '01646688970', 'Chandpur', 'Maimuna Akter, Molla Villa, koroya', NULL, '2021-01-14 00:14:07', '2021-01-14 00:14:07'),
(43, 18, 'Kevyn Gillespie', 'qejipu@mailinator.com', NULL, '01556557779', 'Ex quod sed enim rem', 'Numquam et maxime au', NULL, '2021-01-14 21:57:10', '2021-01-14 21:57:10'),
(44, 18, 'Rezaul karim Karim', 'rezaulmba333@gmail.com', NULL, '01556557779', 'Dhaka', 'Cha-65/A, 2nd floor North Badda, Dhaka-1212 .', NULL, '2021-01-14 21:59:11', '2021-01-14 21:59:11'),
(45, 19, 'Shiuly Akter', 'shiulyakter333@gmail.com', NULL, '01815396896', 'Sadar', 'Faridpur', NULL, '2021-01-15 19:59:51', '2021-01-15 19:59:51'),
(46, 18, 'Abdul Kuddus', 'rezaulmba333@gmail.com', NULL, '01815396899', 'Dhaka', 'Dhaka', NULL, '2021-01-15 20:06:48', '2021-01-15 20:06:48'),
(47, 18, 'Evangeline', 'rezaulmba333@gmail.com', NULL, '01616980988', 'Laborum omnis enim m', 'Dhaka', NULL, '2021-01-16 20:40:21', '2021-01-16 20:40:21'),
(48, 18, 'Mafuz Khan', 'rezaulmba333@gmail.com', NULL, '01915698789', 'Amet eius ullam tem', 'Rerum minus voluptas', NULL, '2021-01-17 00:00:16', '2021-01-17 00:00:16'),
(49, 18, 'Mithu Sarkar', 'mithunjut@gmail.com', NULL, '01617890900', 'Sadar', 'Dhaka', NULL, '2021-01-17 00:07:17', '2021-01-17 00:07:17'),
(50, 18, 'Mainul Islam', 'mainul125011@gmail.com', NULL, '01912345678', 'Vitae sapiente lauda', 'Nulla placeat dolor', NULL, '2021-01-17 00:14:52', '2021-01-17 00:14:52'),
(51, 18, 'Reed Romero', 'rezaulmba333@gmail.com', NULL, '01911234567', 'Autem exercitationem', 'Labore tempore omni', NULL, '2021-01-24 20:04:24', '2021-01-24 20:04:24'),
(52, 18, 'Brynn Sears', 'rezaulmba333@gmail.com', NULL, '01911234568', 'Omnis dolore dolor d', 'Vitae aut illo dolor', NULL, '2021-01-24 20:28:16', '2021-01-24 20:28:16'),
(53, 18, 'Brielle Meadows', 'rezaulmba333@gmail.com', NULL, '01712345789', 'Adipisci eaque omnis', 'Doloremque veniam u', NULL, '2021-01-25 14:43:19', '2021-01-25 14:43:19'),
(54, 18, 'Kamrul Hassan', 'kamrul384@gmail.com', NULL, '01981006366', 'Sadar', 'Dhaka', NULL, '2021-01-25 14:47:10', '2021-01-25 14:47:10'),
(55, 18, 'Mithun Sarker', 'mithunjut@gmail.com', NULL, '01734481992', 'Dhaka', 'House # 27/5, Road # 11\r\nKallyanpur, Mirpur', NULL, '2021-01-26 16:11:16', '2021-01-26 16:11:16'),
(56, 2, 'safdas', 'safdfas@asfsdaf.dsafjkfhsad', NULL, '01990014588', 'daadsfdas', 'dasfsafafdsaf', NULL, '2021-02-07 19:23:16', '2021-02-07 19:23:16'),
(57, 18, 'Munna Khan', 'munna@gmail.com', NULL, '01123045609', 'Deserunt consequatur', 'Nemo incidunt asper', NULL, '2021-03-14 15:02:34', '2021-03-14 15:02:34'),
(58, 18, 'test', 'test@test.test', NULL, '01646688970', 'Chandpur', 'Maimuna Akter, Molla Villa, koroya', NULL, '2021-03-14 22:35:11', '2021-03-14 22:35:11');

-- --------------------------------------------------------

--
-- Table structure for table `customer_complains`
--

CREATE TABLE `customer_complains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_complains`
--

INSERT INTO `customer_complains` (`id`, `name`, `email`, `mobile`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Kader Khan', 'admin@gmail.com', '351', 'nzu2gv', 'bnm,jhnjm,', 0, '2020-09-07 12:41:06', '2020-09-07 12:46:28'),
(5, 'Rezaul Karim', 'admin@gmail.com', '351', 'ELE-WAL-WAL-00116', 'mn', 0, '2020-09-07 13:08:17', '2020-09-07 13:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `customer_complain_images`
--

CREATE TABLE `customer_complain_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `complain_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_complain_images`
--

INSERT INTO `customer_complain_images` (`id`, `complain_id`, `image`, `created_at`, `updated_at`) VALUES
(1, '2', './admin/customer_complain_images/1599502360_1.jpg', '2020-09-07 12:12:40', '2020-09-07 12:12:40'),
(2, '2', './admin/customer_complain_images/1599502360_2.jpg', '2020-09-07 12:12:40', '2020-09-07 12:12:40'),
(3, '2', './admin/customer_complain_images/1599502360_3.jpg', '2020-09-07 12:12:41', '2020-09-07 12:12:41'),
(4, '3', './admin/customer_complain_images/1599502793_8.jpg', '2020-09-07 12:19:53', '2020-09-07 12:19:53');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` bigint(20) NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `delivery_charge` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `district_id`, `product_id`, `delivery_charge`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '150', NULL, NULL),
(2, 2, 2, '150', NULL, NULL),
(3, 3, 4, '150', NULL, NULL),
(4, 4, 5, '150', NULL, NULL),
(5, 5, 6, '150', NULL, NULL),
(6, 6, 7, '150', NULL, NULL),
(7, 7, 8, '150', NULL, NULL),
(8, 8, 9, '150', NULL, NULL),
(9, 9, 10, '150', NULL, NULL),
(10, 10, 11, '150', NULL, NULL),
(11, 11, 12, '70', NULL, '2021-06-30 05:36:18'),
(12, 12, 13, '150', NULL, NULL),
(13, 13, 14, '150', NULL, NULL),
(14, 14, 15, '150', NULL, NULL),
(15, 15, 16, '150', NULL, NULL),
(16, 16, 17, '150', NULL, NULL),
(17, 17, 18, '150', NULL, NULL),
(18, 18, 19, 'free', NULL, '2021-06-30 05:24:01'),
(19, 19, 20, '150', NULL, NULL),
(20, 20, 21, '100', NULL, NULL),
(21, 21, 22, '150', NULL, NULL),
(22, 22, 23, '150', NULL, NULL),
(23, 24, 25, '100', NULL, NULL),
(24, 25, 26, '100', NULL, NULL),
(25, 25, 26, '100', NULL, NULL),
(26, 26, 27, '100', NULL, NULL),
(27, 27, 28, '100', NULL, NULL),
(28, 28, 29, '150', NULL, NULL),
(29, 29, 30, '150', NULL, NULL),
(30, 30, 31, '150', NULL, NULL),
(31, 31, 32, '150', NULL, NULL),
(32, 32, 33, '150', NULL, NULL),
(33, 33, 34, '150', NULL, NULL),
(34, 34, 35, '150', NULL, NULL),
(35, 35, 36, '150', NULL, NULL),
(36, 36, 37, '150', NULL, NULL),
(37, 37, 38, '150', NULL, NULL),
(38, 38, 39, '150', NULL, NULL),
(39, 39, 40, '150', NULL, NULL),
(40, 40, 41, '150', NULL, NULL),
(41, 41, 42, '150', NULL, NULL),
(42, 42, 43, '150', NULL, NULL),
(43, 43, 44, '150', NULL, NULL),
(44, 44, 45, '150', NULL, NULL),
(45, 45, 46, '150', NULL, NULL),
(46, 46, 47, '150', NULL, NULL),
(47, 47, 48, '150', NULL, NULL),
(48, 48, 49, '150', NULL, NULL),
(49, 49, 50, '150', NULL, NULL),
(50, 50, 51, '150', NULL, NULL),
(51, 51, 52, '150', NULL, NULL),
(52, 52, 53, '150', NULL, NULL),
(53, 53, 54, '150', NULL, NULL),
(54, 54, 55, '150', NULL, NULL),
(55, 55, 56, '150', NULL, NULL),
(56, 56, 57, '150', NULL, NULL),
(57, 57, 58, '150', NULL, NULL),
(58, 58, 59, '150', NULL, NULL),
(59, 59, 60, '150', NULL, NULL),
(60, 60, 61, '150', NULL, NULL),
(61, 61, 62, '150', NULL, NULL),
(62, 62, 63, '150', NULL, NULL),
(63, 63, 64, '120', NULL, '2021-07-06 02:09:42'),
(64, 18, 65, '0', NULL, '2021-06-30 06:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_item_codes`
--

CREATE TABLE `delivery_item_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_details_id` int(11) NOT NULL,
  `product_delivery_id` int(11) NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_item_codes`
--

INSERT INTO `delivery_item_codes` (`id`, `order_id`, `order_details_id`, `product_delivery_id`, `item_code`, `created_at`, `updated_at`) VALUES
(2, 38, 19, 4, 'bmFSJm', '2020-12-15 01:31:09', '2020-12-15 01:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `coupon_name` varchar(191) DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `discount_cash` mediumint(8) DEFAULT NULL,
  `discount_percentage` mediumint(8) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `description` text DEFAULT NULL,
  `validity` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `product_id`, `coupon_name`, `coupon_code`, `discount_cash`, `discount_percentage`, `start_date`, `end_date`, `description`, `validity`, `status`, `created_at`, `updated_at`) VALUES
(3, 26, 'Harrison Mitchell', '2021', 0, 30, '2023-12-16 12:00:51', '2023-12-15 12:00:54', 'Adipisci occaecat ip', NULL, 0, '2021-07-17 00:40:22', '2021-07-17 00:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) UNSIGNED NOT NULL,
  `district_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `district_name`, `created_at`, `updated_at`) VALUES
(1, 'Barguna ', NULL, NULL),
(2, 'Barisal', NULL, NULL),
(3, 'Bhola ', NULL, NULL),
(4, 'Jhalokati', NULL, NULL),
(5, 'Patuakhali', NULL, NULL),
(6, 'Pirojpur', NULL, NULL),
(7, 'Bandarban', NULL, NULL),
(8, 'Brahmanbaria', NULL, NULL),
(9, 'Chandpur', NULL, NULL),
(10, 'Chattogram', NULL, NULL),
(11, 'Comilla', NULL, NULL),
(12, 'Cox\'s Bazar ', NULL, NULL),
(13, 'Feni ', NULL, NULL),
(14, 'Khagrachhari', NULL, NULL),
(15, 'Lakshmipur', NULL, NULL),
(16, 'Noakhali', NULL, NULL),
(17, 'Rangamati', NULL, NULL),
(18, 'Dhaka', NULL, NULL),
(19, 'Faridpur', NULL, NULL),
(20, 'Gazipur', NULL, NULL),
(21, 'Gopalganj', NULL, NULL),
(22, 'Kishoreganj', NULL, NULL),
(23, 'Madaripur', NULL, NULL),
(24, 'Manikganj', NULL, NULL),
(25, 'Munshiganj ', NULL, NULL),
(26, 'Narayanganj', NULL, NULL),
(27, 'Narsingdi', NULL, NULL),
(28, 'Rajbari', NULL, NULL),
(29, 'Shariatpur ', NULL, NULL),
(30, 'Tangail', NULL, NULL),
(31, 'Bagerhat', NULL, NULL),
(32, 'Chuadanga', NULL, NULL),
(33, 'Jessore', NULL, NULL),
(34, 'Jhenaidah ', NULL, NULL),
(35, 'Khulna', NULL, NULL),
(36, 'Kushtia', NULL, NULL),
(37, 'Magura', NULL, NULL),
(38, 'Meherpur', NULL, NULL),
(39, 'Narail ', NULL, NULL),
(40, 'Satkhira', NULL, NULL),
(41, 'Jamalpur', NULL, NULL),
(42, 'Mymensingh', NULL, NULL),
(43, 'Netrokona', NULL, NULL),
(44, 'Sherpur', NULL, NULL),
(45, 'Bogura', NULL, NULL),
(46, 'Joypurhat', NULL, NULL),
(47, 'Naogaon ', NULL, NULL),
(48, 'Natore ', NULL, NULL),
(49, 'Chapainawabganj ', NULL, NULL),
(50, 'Pabna', NULL, NULL),
(51, 'Rajshahi', NULL, NULL),
(52, 'Sirajganj ', NULL, NULL),
(53, 'Dinajpur', NULL, NULL),
(54, 'Gaibandha', NULL, NULL),
(55, 'Kurigram', NULL, NULL),
(56, 'Lalmonirhat', NULL, NULL),
(57, 'Nilphamari', NULL, NULL),
(58, 'Panchagarh', NULL, NULL),
(59, 'Rangpur', NULL, NULL),
(60, 'Thakurgaon', NULL, NULL),
(61, 'Habiganj', NULL, NULL),
(62, 'Moulvibazar', NULL, NULL),
(63, 'Sunamganj', NULL, NULL),
(64, 'Sylhet', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `paid_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `name`, `amount`, `cat_id`, `supplier_id`, `note`, `date`, `paid_by`, `created_at`, `updated_at`) VALUES
(3, 'd', 5445, 3, NULL, NULL, '2021-03-27', 'l;jk', '2021-03-26 23:19:30', '2021-03-26 23:19:30');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Net Bill', '2021-03-26 23:00:54', '2021-03-26 23:00:54');

-- --------------------------------------------------------

--
-- Table structure for table `expense_files`
--

CREATE TABLE `expense_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expense_id` bigint(20) NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_files`
--

INSERT INTO `expense_files` (`id`, `expense_id`, `file`, `created_at`, `updated_at`) VALUES
(3, 3, './admin/expense/151889245_806274393301637_6174376772517220019_n.png', '2021-03-26 23:19:31', '2021-03-26 23:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_layouts`
--

CREATE TABLE `front_layouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `serial` int(11) DEFAULT NULL,
  `layout_type` smallint(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `front_layouts`
--

INSERT INTO `front_layouts` (`id`, `category_id`, `serial`, `layout_type`, `created_at`, `updated_at`) VALUES
(2, 2, 8, 1, '2021-04-06 23:30:03', '2021-04-07 00:16:16'),
(4, 4, 5, 1, '2021-04-06 23:30:03', '2021-04-06 23:50:17'),
(5, 5, 4, 2, '2021-04-06 23:30:03', '2021-06-08 19:35:32'),
(6, 6, 10, 1, '2021-04-06 23:30:03', '2021-04-06 23:50:31'),
(7, 7, 11, 1, '2021-04-06 23:30:03', '2021-04-06 23:50:29'),
(8, 8, 6, 2, '2021-04-06 23:30:03', '2021-04-06 23:54:44'),
(9, 9, 1, 3, '2021-04-06 23:30:03', '2021-04-06 23:58:18'),
(10, 10, 2, 3, '2021-04-06 23:30:03', '2021-06-08 19:35:21'),
(11, 11, 3, 3, '2021-04-06 23:30:03', '2021-06-08 19:35:32'),
(14, 1, 12, 1, '2021-06-08 19:35:13', '2021-06-08 19:35:13'),
(15, 3, 13, 1, '2021-06-08 19:35:13', '2021-06-08 19:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `generate_qr_codes`
--

CREATE TABLE `generate_qr_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qr_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generate_qr_codes`
--

INSERT INTO `generate_qr_codes` (`id`, `code`, `qr_image`, `start`, `end`, `created_at`, `updated_at`) VALUES
(391, '0JgygW', './admin/qrImage/0JgygW.png', NULL, NULL, '2020-09-07 12:17:38', '2020-09-07 12:17:38'),
(392, 'bmFSJm', './admin/qrImage/bmFSJm.png', NULL, NULL, '2020-09-07 12:17:38', '2020-09-07 12:17:38'),
(393, 'D9n484', './admin/qrImage/D9n484.png', NULL, NULL, '2020-09-07 12:17:38', '2020-09-07 12:17:38'),
(394, '2Zs5bW', './admin/qrImage/2Zs5bW.png', NULL, NULL, '2020-09-07 12:17:39', '2020-09-07 12:17:39'),
(395, 'qsxhSr', './admin/qrImage/qsxhSr.png', NULL, NULL, '2020-09-07 12:17:39', '2020-09-07 12:17:39'),
(396, 'tBdQUZ', './admin/qrImage/tBdQUZ.png', NULL, NULL, '2020-09-07 12:17:39', '2020-09-07 12:17:39'),
(397, 'UgrEzc', './admin/qrImage/UgrEzc.png', NULL, NULL, '2020-09-07 12:17:39', '2020-09-07 12:17:39'),
(398, 'yWwOfW', './admin/qrImage/yWwOfW.png', NULL, NULL, '2020-09-07 12:17:39', '2020-09-07 12:17:39'),
(399, 'nzu2gv', './admin/qrImage/nzu2gv.png', NULL, NULL, '2020-09-07 12:17:39', '2020-09-07 12:17:39'),
(400, '70PSaV', './admin/qrImage/70PSaV.png', '391', '400', '2020-09-07 12:17:39', '2020-10-03 22:57:24');

-- --------------------------------------------------------

--
-- Table structure for table `manage_stocks`
--

CREATE TABLE `manage_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `voucher_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `damaged_qty` int(11) DEFAULT NULL,
  `purchase_price` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `sell_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_09_06_192400_create_site_error_massages_table', 1),
(2, '2020_09_06_192801_create_generate_qr_codes_table', 1),
(3, '2020_09_06_193144_create_product_q_rcodes_table', 1),
(4, '2020_09_06_193853_create_customer_complains_table', 1),
(5, '2020_09_06_194118_create_customer_complain_images_table', 1),
(6, '2020_09_06_194250_create_contacts_table', 1),
(7, '2020_09_06_194704_create_contact_images_table', 1),
(8, '2020_09_17_182049_create_product_reviews_table', 2),
(9, '2020_09_17_182127_create_product_sub_reviews_table', 2),
(10, '2014_10_12_000000_create_users_table', 3),
(11, '2014_10_12_100000_create_password_resets_table', 3),
(12, '2019_08_19_000000_create_failed_jobs_table', 3),
(13, '2020_06_10_175015_create_categories_table', 3),
(14, '2020_06_13_033318_create_sub_categories_table', 3),
(15, '2020_06_14_164857_create_sliders_table', 3),
(16, '2020_06_15_094901_create_brands_table', 3),
(17, '2020_06_15_153547_create_sizes_table', 3),
(18, '2020_06_16_025819_create_colors_table', 3),
(19, '2020_06_16_115452_create_suppliers_table', 3),
(20, '2020_06_17_061032_create_products_table', 3),
(21, '2020_06_17_064519_create_product_colors_table', 3),
(22, '2020_06_17_064626_create_product_sizes_table', 3),
(23, '2020_06_17_064706_create_sub_images_table', 3),
(24, '2020_07_06_120445_create_customers_table', 3),
(25, '2020_07_08_172708_create_shippings_table', 3),
(26, '2020_07_08_193923_create_payments_table', 3),
(27, '2020_07_09_114625_create_orders_table', 3),
(28, '2020_07_09_114643_create_order_details_table', 3),
(29, '2020_07_28_054804_create_deliveries_table', 3),
(30, '2020_09_20_175829_create_subscribers_table', 3),
(31, '2020_12_13_144245_create_product_deliveries_table', 3),
(32, '2020_12_13_161138_create_delivery_item_codes_table', 3),
(33, '2021_03_16_182058_create_manage_stocks_table', 3),
(34, '2021_03_24_151830_create_stock_details_table', 3),
(38, '2021_04_02_195702_create_stocks_table', 4),
(39, '2021_06_30_092550_create_purchases_table', 4),
(40, '2021_07_01_063635_create_purchase_details_table', 4),
(41, '2021_07_13_094933_create_purchases_table', 5),
(42, '2021_07_16_044023_create_product_discounts_table', 6),
(43, '2021_07_16_045758_create_product_discounts_table', 7),
(44, '2021_07_16_050044_create_discounts_table', 8),
(45, '2021_07_16_050857_create_discounts_table', 9),
(46, '2021_07_13_170352_create_product_discounts_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_total` double(10,2) DEFAULT NULL,
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `delivery_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `vendor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bkash_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bkash_txt_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rocket_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rocket_txt_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nagad_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nagad_txt_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` int(11) DEFAULT NULL,
  `ordered_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `retail_price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `shipping_id`, `order_total`, `order_status`, `delivery_status`, `vendor`, `bkash_phone`, `bkash_txt_id`, `rocket_phone`, `rocket_txt_id`, `nagad_phone`, `nagad_txt_id`, `paid_amount`, `ordered_from`, `retail_price`, `created_at`, `updated_at`) VALUES
(38, 32, 30, 45500.00, 'Complete', 'Pending', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'site', 45700, '2020-12-15 00:35:44', '2020-12-15 00:35:44'),
(39, 35, 33, 42427.00, 'Pending', 'Pending', 'nagad', NULL, NULL, NULL, NULL, '01234567890', '1bikm2348', NULL, NULL, NULL, '2020-12-26 23:25:56', '2020-12-26 23:25:56'),
(40, 39, 35, 4938.00, 'Pending', 'Pending', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-13 23:54:47', '2021-01-13 23:54:47'),
(41, 40, 36, 320.00, 'Pending', 'Pending', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-14 00:09:47', '2021-01-14 00:09:47'),
(42, 40, 36, 320.00, 'Pending', 'Pending', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-14 00:13:24', '2021-01-14 00:13:24'),
(43, 42, 38, 320.00, 'Pending', 'Pending', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-14 00:14:19', '2021-01-14 00:14:19'),
(44, 42, 38, 320.00, 'Pending', 'Pending', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-14 00:16:17', '2021-01-14 00:16:17'),
(45, 43, 39, 580.00, 'Pending', 'Pending', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-14 21:57:35', '2021-01-14 21:57:35'),
(46, 44, 40, 8400.00, 'Pending', 'Pending', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-14 21:59:23', '2021-01-14 21:59:23'),
(47, 45, 41, 32618.00, 'Pending', 'Pending', 'bkash', '01815396296', '8avbnbdsdd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-15 20:00:48', '2021-01-15 20:00:48'),
(48, 46, 42, 37690.00, 'Pending', 'Pending', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-15 20:06:58', '2021-01-15 20:06:58'),
(49, 47, 43, 1156.00, 'Pending', 'Pending', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-16 20:40:32', '2021-01-16 20:40:32'),
(50, 48, 44, 1034.00, 'Pending', 'Pending', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, 1034, NULL, NULL, '2021-01-17 00:00:49', '2021-07-24 23:02:32'),
(51, 49, 45, 53332.00, 'Complete', 'Complete', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, 53332, NULL, NULL, '2021-01-17 00:07:27', '2021-07-24 23:00:20'),
(52, 50, 46, 28740.00, 'Pending', 'Pending', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-17 00:15:06', '2021-01-17 00:15:06'),
(53, 51, 47, 68680.00, 'Complete', 'Complete', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, 68680, NULL, NULL, '2021-01-24 20:05:02', '2021-07-24 23:03:27'),
(54, 52, 48, 106094.00, 'Pending', 'Pending', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-24 20:28:53', '2021-01-24 20:28:53'),
(55, 53, 49, 142622.00, 'Pending', 'Pending', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-25 14:43:30', '2021-01-25 14:43:30'),
(56, 54, 50, 31080.00, 'Complete', 'Complete', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, 31080, NULL, NULL, '2021-01-25 14:47:19', '2021-01-28 00:09:03'),
(57, 55, 51, 426.00, 'Pending', 'Pending', 'bkash', '01734481992', '8Atcd53d2t', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-26 16:12:12', '2021-01-26 16:12:12'),
(58, 57, 53, 263410.00, 'Pending', 'Pending', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-14 15:03:01', '2021-03-14 15:03:01'),
(59, 58, 54, 21179.00, 'Pending', 'Pending', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-14 22:35:17', '2021-03-14 22:35:17');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sell_date` date DEFAULT NULL,
  `product_quantity` int(11) NOT NULL,
  `total_amount` double(10,2) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `discount` double(10,2) DEFAULT 0.00,
  `delivery_charge` double(10,2) DEFAULT 0.00,
  `sell_person` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_collect` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_size`, `product_color`, `sell_date`, `product_quantity`, `total_amount`, `supplier_id`, `discount`, `delivery_charge`, `sell_person`, `payment_collect`, `created_at`, `updated_at`) VALUES
(19, 38, 74, 'Sony Bravia 32 Inch Led Smart Tv', 'Standard', 'Silver', '2020-12-15', 1, 45500.00, 7, 300.00, 100.00, 'momin', 'reza', '2020-12-15 00:35:44', '2020-12-15 00:35:44'),
(20, 39, 81, 'Golden Wrrist Watch For Men', 'XL', NULL, NULL, 10, 4165.00, NULL, 0.00, 0.00, NULL, NULL, '2020-12-26 23:25:56', '2020-12-26 23:25:56'),
(21, 40, 49, 'New Collection Black Three Piece', 'L', NULL, NULL, 2, 2434.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-13 23:54:47', '2021-01-13 23:54:47'),
(22, 41, 24, 'Formal Shirts For Men', 'XL', NULL, NULL, 1, 250.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-14 00:09:47', '2021-01-14 00:09:47'),
(23, 43, 24, 'Formal Shirts For Men', 'XL', NULL, NULL, 1, 250.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-14 00:14:19', '2021-01-14 00:14:19'),
(24, 44, 24, 'Formal Shirts For Men', 'XL', NULL, NULL, 1, 250.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-14 00:16:17', '2021-01-14 00:16:17'),
(25, 45, 24, 'Formal Shirts For Men', 'L', NULL, NULL, 1, 250.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-14 21:57:35', '2021-01-14 21:57:35'),
(26, 45, 23, 'Formal Shirt', 'L', NULL, NULL, 1, 260.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-14 21:57:35', '2021-01-14 21:57:35'),
(27, 46, 81, 'Golden Wrrist Watch For Men', 'Standard', NULL, NULL, 2, 4165.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-14 21:59:23', '2021-01-14 21:59:23'),
(28, 47, 108, 'Exclusive Wodden Color Dinning Set', 'Family Size', NULL, NULL, 1, 31875.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-15 20:00:48', '2021-01-15 20:00:48'),
(29, 48, 109, 'Very Standard Wardrobes', 'Standard', NULL, NULL, 1, 37620.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-15 20:06:58', '2021-01-15 20:06:58'),
(30, 49, 23, 'Formal Shirt', 'L', NULL, NULL, 1, 260.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-16 20:40:32', '2021-01-16 20:40:32'),
(31, 49, 2, 'Hawkins Metal Stylish Blender', 'Family Size', NULL, NULL, 1, 826.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-16 20:40:32', '2021-01-16 20:40:32'),
(32, 50, 12, 'Head Phone', 'Small', NULL, NULL, 1, 558.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-17 00:00:49', '2021-01-17 00:00:49'),
(33, 50, 14, 'Wireless Mouse', 'Standard', NULL, NULL, 1, 406.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-17 00:00:49', '2021-01-17 00:00:49'),
(34, 51, 24, 'Formal Shirts For Men', 'L', NULL, NULL, 1, 250.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-17 00:07:27', '2021-01-17 00:07:27'),
(35, 51, 74, 'Sony Bravia 32 Inch Led Smart Tv', 'Family Size', NULL, NULL, 1, 53012.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-17 00:07:27', '2021-01-17 00:07:27'),
(36, 52, 24, 'Formal Shirts For Men', 'L', NULL, NULL, 1, 250.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-17 00:15:06', '2021-01-17 00:15:06'),
(37, 52, 96, 'Oppo A91', 'Standard', NULL, NULL, 1, 28420.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-17 00:15:06', '2021-01-17 00:15:06'),
(38, 53, 93, 'Apple iPhone SE (2020)', 'Standard', NULL, NULL, 1, 42735.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-24 20:05:02', '2021-01-24 20:05:02'),
(39, 53, 94, 'Huawei Nova 7 Pro 5G', 'Large', NULL, NULL, 1, 25875.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-24 20:05:02', '2021-01-24 20:05:02'),
(40, 54, 74, 'Sony Bravia 32 Inch Led Smart Tv', 'Family Size', NULL, NULL, 2, 53012.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-24 20:28:53', '2021-01-24 20:28:53'),
(41, 55, 74, 'Sony Bravia 32 Inch Led Smart Tv', 'Family Size', NULL, NULL, 1, 53012.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-25 14:43:30', '2021-01-25 14:43:30'),
(42, 55, 87, 'Samsung Split AC 1.5 Ton', 'Family Size', NULL, NULL, 1, 45650.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-25 14:43:30', '2021-01-25 14:43:30'),
(43, 55, 92, 'Sharp Exclusive freez', 'Family Size', NULL, NULL, 1, 43890.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-25 14:43:30', '2021-01-25 14:43:30'),
(44, 56, 72, 'Vision 49 Inch Led Smart tv', 'Family Size', NULL, NULL, 1, 30750.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-25 14:47:19', '2021-01-25 14:47:19'),
(45, 56, 23, 'Formal Shirt', 'L', NULL, NULL, 1, 260.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-25 14:47:19', '2021-01-25 14:47:19'),
(46, 57, 21, 'Casual Half Shirt', 'M', NULL, NULL, 2, 174.00, NULL, 0.00, 0.00, NULL, NULL, '2021-01-26 16:12:12', '2021-01-26 16:12:12'),
(47, 58, 92, 'Sharp Exclusive freez', 'Standard', NULL, NULL, 6, 43890.00, NULL, 0.00, 0.00, NULL, NULL, '2021-03-14 15:03:01', '2021-03-14 15:03:01'),
(48, 59, 111, 'New Chocolate Color TV Self', 'Standard', NULL, NULL, 1, 21109.00, NULL, 0.00, 0.00, NULL, NULL, '2021-03-14 22:35:17', '2021-03-14 22:35:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mainul125011@gmail.com', '$2y$10$8zjnzvVxXql5uOpERqhYZ.9BOZ0zeRuZMJopmVWMQfgzyzGZCbbW6', '2020-10-03 21:29:22');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_type`, `payment_status`, `created_at`, `updated_at`) VALUES
(12, 13, 'cash', 'Pending', '2020-11-13 23:36:32', '2020-11-13 23:36:32'),
(13, 14, 'cash', 'Pending', '2020-11-13 23:37:31', '2020-11-13 23:37:31'),
(14, 15, 'cash', 'Pending', '2020-11-13 23:39:13', '2020-11-13 23:39:13'),
(15, 16, 'cash', 'Pending', '2020-11-13 23:39:49', '2020-11-13 23:39:49'),
(16, 17, 'cash', 'Pending', '2020-11-13 23:41:33', '2020-11-13 23:41:33'),
(17, 18, 'cash', 'Pending', '2020-11-13 23:41:53', '2020-11-13 23:41:53'),
(18, 19, 'cash', 'Pending', '2020-11-14 08:47:21', '2020-11-14 08:47:21'),
(19, 20, 'cash', 'Pending', '2020-11-14 08:54:02', '2020-11-14 08:54:02'),
(20, 21, 'cash', 'Pending', '2020-11-14 08:59:12', '2020-11-14 08:59:12'),
(21, 22, 'bkash', 'Pending', '2020-11-14 09:10:35', '2020-11-14 09:10:35'),
(22, 23, 'cash', 'Pending', '2020-11-14 10:56:58', '2020-11-14 10:56:58'),
(23, 24, 'cash', 'Complete', '2020-11-14 11:04:09', '2020-12-05 22:59:48'),
(24, 30, 'cash', 'Pending', '2020-12-06 21:03:28', '2020-12-06 21:03:28'),
(25, 31, 'cash', 'Pending', '2020-12-06 21:32:09', '2020-12-06 21:32:09'),
(26, 34, 'cash', 'Pending', '2020-12-06 21:42:11', '2020-12-06 21:42:11'),
(27, 35, 'cash', 'Pending', '2020-12-06 21:50:53', '2020-12-06 21:50:53'),
(28, 36, 'bkash', 'Pending', '2020-12-06 21:54:33', '2020-12-06 21:54:33'),
(29, 37, 'cash', 'Complete', '2020-12-06 23:11:30', '2020-12-06 23:16:50'),
(30, 38, 'cash', 'Pending', '2020-12-15 00:35:44', '2020-12-15 00:35:44'),
(31, 39, 'nagad', 'Pending', '2020-12-26 23:25:56', '2020-12-26 23:25:56'),
(32, 40, 'cash', 'Pending', '2021-01-13 23:54:47', '2021-01-13 23:54:47'),
(33, 41, 'cash', 'Pending', '2021-01-14 00:09:47', '2021-01-14 00:09:47'),
(34, 42, 'cash', 'Pending', '2021-01-14 00:13:24', '2021-01-14 00:13:24'),
(35, 43, 'cash', 'Pending', '2021-01-14 00:14:19', '2021-01-14 00:14:19'),
(36, 44, 'cash', 'Pending', '2021-01-14 00:16:17', '2021-01-14 00:16:17'),
(37, 45, 'cash', 'Pending', '2021-01-14 21:57:35', '2021-01-14 21:57:35'),
(38, 46, 'cash', 'Pending', '2021-01-14 21:59:23', '2021-01-14 21:59:23'),
(39, 47, 'bkash', 'Pending', '2021-01-15 20:00:48', '2021-01-15 20:00:48'),
(40, 48, 'cash', 'Pending', '2021-01-15 20:06:58', '2021-01-15 20:06:58'),
(41, 49, 'cash', 'Pending', '2021-01-16 20:40:32', '2021-01-16 20:40:32'),
(42, 50, 'cash', 'Pending', '2021-01-17 00:00:49', '2021-01-17 00:00:49'),
(43, 51, 'cash', 'Complete', '2021-01-17 00:07:27', '2021-07-24 23:00:20'),
(44, 52, 'cash', 'Pending', '2021-01-17 00:15:06', '2021-01-17 00:15:06'),
(45, 53, 'cash', 'Complete', '2021-01-24 20:05:02', '2021-07-24 23:03:28'),
(46, 54, 'cash', 'Pending', '2021-01-24 20:28:53', '2021-01-24 20:28:53'),
(47, 55, 'cash', 'Pending', '2021-01-25 14:43:30', '2021-01-25 14:43:30'),
(48, 56, 'cash', 'Complete', '2021-01-25 14:47:19', '2021-01-28 00:09:03'),
(49, 57, 'bkash', 'Pending', '2021-01-26 16:12:12', '2021-01-26 16:12:12'),
(50, 58, 'cash', 'Pending', '2021-03-14 15:03:01', '2021-03-14 15:03:01'),
(51, 59, 'cash', 'Pending', '2021-03-14 22:35:17', '2021-03-14 22:35:17');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_imei` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sell_count` tinyint(4) DEFAULT NULL,
  `sell_qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `model`, `origin`, `serial_imei`, `weight`, `long_description`, `short_description`, `video_url`, `image`, `big_image`, `status`, `sell_count`, `sell_qty`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 1, 3, 'Microwave and Electric Ove', 'KIT-WAL-MIC-001', 'WMWO-X20MX', 'Bangladeshi', NULL, NULL, '<pre style=\"text-align:justify\">\r\n- Microwave cooking\r\n- Mechanical control\r\n- Multiple power level setting for adjusting microwave output power\r\n- Turntable &amp; trays for optimal results\r\n- Speedy and time defrost\r\n- Heat resistive tempered glass door\r\n- Non stick inner coating for easy cleaning\r\n- Cooking end signal</pre>', '', NULL, './admin/product_images/1592545448_microwave_and_electric_ove.jpg', '', 1, NULL, 0, '2020-06-18 23:25:49', '2020-08-17 02:02:45'),
(2, 1, 8, 41, 5, 'Hawkins Metal Stylish Blender', 'KIT-SAM-HAW-002', NULL, 'Bangladeshi', NULL, NULL, '<pre style=\"text-align:justify\">\r\nHAWKINS Blender Comes with 3 stainless steel jar Wet and Dry grinding specialist 750 Watt Made in CHAINA .\r\n\r\nHAWKINS Blender in BD Skip to the beginning of the images gallery Product Details: HAWKINS Blender: Need to buy a new blender?</pre>', '', NULL, './admin/product_images/1592547067_hawkins_metal_stylish_blender_3_in_1.jpg', '', 1, 2, 0, '2020-06-19 00:11:07', '2021-01-16 20:40:32'),
(4, 1, 7, 1, 3, 'Double Burner Gas Stove', 'KIT-WAL-DOU-003', NULL, 'Bangladeshi', NULL, NULL, '<pre>\r\n&bull; Applicable Gas: NG\r\n&bull; High-quality auto pulse ignition start\r\n&bull; Cabinet Type Gas Stove\r\n&bull; cast iron pan support\r\n&bull; metal knob\r\n&bull; Good ignition with 50,000 times using life</pre>', '', NULL, './admin/product_images/1592547548_double_burner_gas_stove.jpg', '', 1, NULL, 0, '2020-06-19 00:19:08', '2020-06-25 00:40:07'),
(5, 1, 6, 1, 3, 'Pressure Cooke', 'KIT-WAL-PRE-005', NULL, NULL, NULL, NULL, '<p style=\"text-align:justify\">- Multiple cooking function (fish, rice, chicken, meat,porridge,soup,hoof &amp; bean)<br />\r\n- Completely sealed cooking ensure &amp; maintain maximum nutrition<br />\r\n- Non-stick coating, non-telfon, easy to clean<br />\r\n- Ultra-thick cast aluminum heating plate with high thermal efficiency<br />\r\n- Elastic leaf spring device adopts the high-quality special material, guarantees steady and reliable pressure<br />\r\n- Multiple safety protections<br />\r\n- Enclosed with the meal spoon and measuring cup<br />\r\n- High grade stainless steel outer body<br />\r\n- Energy saving &amp; time saving&nbsp;<br />\r\n- Type of controlling: mechanical</p>', '', NULL, './admin/product_images/1611646428_pressure_cooke.png', './admin/product_big_images/1611646428_pressure_cooke.png', 1, 1, 0, '2020-06-19 00:29:10', '2021-01-26 12:33:48'),
(6, 1, 5, 1, 3, 'Rice Cooker ( Electric )', 'KIT-WAL-RIC-006', 'WRC-SGA280', 'Bangladeshi', NULL, NULL, '<p style=\"text-align:justify\">- Simple electronic operation with automatic keep-warm<br />\r\n- Seamless thicker outer body with aluminum food steamer<br />\r\n- Easy-to-clean<br />\r\n- Non-Stick double inner pot<br />\r\n- Transparent glass lid keeps ingredients moist<br />\r\n- Anti-bacterial warm mood<br />\r\n- Integrated with safety thermostat confirms better protection</p>', '', NULL, './admin/product_images/1592548381_rice_cooker_(_electric_).jpg', '', 1, NULL, 0, '2020-06-19 00:33:01', '2020-06-25 00:40:57'),
(7, 1, 4, 1, 5, 'Multi-functional Vegetable Chopper', 'KIT-WAL-MUL-007', NULL, 'Bangladeshi', NULL, NULL, '<ul>\r\n	<li style=\"text-align:justify\">100% Brand new multifunctional fruit vegetable chopper hand speedy chopper.</li>\r\n	<li style=\"text-align:justify\">Food grade PP thickening transparent plastic, non-toxic and odorless.</li>\r\n	<li style=\"text-align:justify\">Wear proof rope material, durable in us.</li>\r\n	<li style=\"text-align:justify\">402 stainless steel blade, super sharpness.</li>\r\n	<li style=\"text-align:justify\">Hand pull-out type design, use more convenient and safty.</li>\r\n</ul>\r\n\r\n<div id=\"gtx-trans\" style=\"left:17px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1592548803_multi-functional_vegetable_chopper.jpg', '', 1, NULL, 0, '2020-06-19 00:40:03', '2020-06-25 00:41:27'),
(8, 1, 3, 39, 3, 'Water Jug', 'KIT-TRA-WAT-008', NULL, 'Bangladeshi', NULL, NULL, '<ul>\r\n	<li style=\"text-align:justify\">Nice Design Glass Jug 2litre.</li>\r\n	<li style=\"text-align:justify\">Constructed of thick glass.</li>\r\n	<li style=\"text-align:justify\">Easy to clean.</li>\r\n	<li style=\"text-align:justify\">Very nice and crystal Glass.</li>\r\n	<li style=\"text-align:justify\">The absence of lead guarantees 100-percent recyclable products.</li>\r\n	<li style=\"text-align:justify\">Superior resistant to use and dishwasher safe guarantees long lasting product</li>\r\n	<li style=\"text-align:justify\">Textured glass allows for an immediate view of the beverage contained.</li>\r\n	<li style=\"text-align:justify\">Made by Bangladesh.</li>\r\n	<li style=\"text-align:justify\">An integrated strong handle.</li>\r\n	<li style=\"text-align:justify\">Wide mouth built-in pour spout makes it very simple to fill with ice or any favorite cut fruits.</li>\r\n</ul>\r\n\r\n<div id=\"gtx-trans\" style=\"left:11px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1592549119_water_jug.jpg', '', 1, NULL, 0, '2020-06-19 00:45:19', '2020-06-25 00:41:46'),
(9, 1, 2, 2, 3, 'Excellent Mug', 'KIT-PRA-EXC-009', NULL, 'Bangladeshi', NULL, NULL, '<ul>\r\n	<li style=\"text-align:justify\">Self stirring function</li>\r\n	<li style=\"text-align:justify\">No need to grab teaspoon to stir</li>\r\n	<li style=\"text-align:justify\">Simply press the button &amp; all the hard work is done for you</li>\r\n	<li style=\"text-align:justify\">Just pop 2 AAA batteries inside the base</li>\r\n</ul>', '', NULL, './admin/product_images/1592549456_excellent_mug.jpg', '', 1, NULL, 0, '2020-06-19 00:50:56', '2020-06-25 00:42:09'),
(10, 1, 1, 57, 3, 'Transparent Tea Cup Set', 'KIT-RAK-TRA-0010', NULL, 'Bangladeshi', NULL, NULL, '<ul>\r\n	<li style=\"text-align:justify\">Crystal Clear Tea Cup</li>\r\n	<li style=\"text-align:justify\">Transparent</li>\r\n	<li style=\"text-align:justify\">Capacity: 150mL</li>\r\n	<li style=\"text-align:justify\">Dishwasher safe</li>\r\n	<li style=\"text-align:justify\">Clear and durable glassware</li>\r\n</ul>', '', NULL, './admin/product_images/1592576158_transparent_tea_cup_set.jpg', '', 1, NULL, 0, '2020-06-19 08:15:59', '2020-06-25 00:42:34'),
(11, 3, 19, 41, 3, 'Bluetooth Speaker', 'COM-SAM-BLU-0011', NULL, 'Bangladeshi', NULL, NULL, '<ul>\r\n	<li>Brand: Havit</li>\r\n	<li>Model: M3</li>\r\n	<li>Net Weight (g): 302g</li>\r\n	<li>Dimensions: 145*68.5*54.5mm</li>\r\n	<li>Microphone: Yes</li>\r\n	<li>Connectivity: bluetooth, AUX</li>\r\n	<li>Bluetooth Version: V4.2</li>\r\n</ul>', '', NULL, './admin/product_images/1592628494_bluetooth_speaker.jpg', '', 1, NULL, 0, '2020-06-19 22:48:16', '2020-06-25 00:43:02'),
(12, 3, 18, 40, 3, 'Head Phone', 'COM-SON-HEA-0012', NULL, 'Bangladeshi', NULL, NULL, '<ul>\r\n	<li style=\"text-align:justify\">Type: Wireless Bluetooth Headphone</li>\r\n	<li style=\"text-align:justify\">You must get Charger Cable &amp; AudioCable(1 by 1 Cable) with Headphone</li>\r\n	<li style=\"text-align:justify\">Microphone included: Yes</li>\r\n	<li style=\"text-align:justify\">Noise Cancelling: Yes</li>\r\n	<li style=\"text-align:justify\">Model: P47 ( 4.2 + EDR )</li>\r\n	<li style=\"text-align:justify\">Connectivity: Wired and Wireless(Bluetooth)</li>\r\n	<li style=\"text-align:justify\">Talk time: 6 hours</li>\r\n</ul>', '', NULL, './admin/product_images/1592631970_head_phone.jpg', '', 1, 2, 1, '2020-06-19 22:56:30', '2021-07-24 23:02:32'),
(13, 3, 17, 41, 5, 'Black Pen Drive', 'COM-SAM-BLA-0013', 'CZ600', 'Bangladeshi', NULL, NULL, '<p style=\"text-align:justify\">Brand : Sandisk # Capacity : 128GB # Black Color, Faster than a speeding USB 2.0 drive, Retractable design,</p>\r\n\r\n<p style=\"text-align:justify\">No more hunting for that misplaced cap, The Cruzer Glide 3.0 USB flash drive features an easy-to-use retractable</p>\r\n\r\n<p style=\"text-align:justify\">connector so it slides out of harms way and doesnt need a cap,&nbsp;</p>', '', NULL, './admin/product_images/1592629303_black_pen_drive.jpg', '', 1, NULL, 0, '2020-06-19 23:01:43', '2020-06-25 00:44:28'),
(14, 3, 16, 46, 5, 'Wireless Mouse', 'COM-HP-WIR-0014', NULL, 'Bangladeshi', NULL, NULL, '<ul>\r\n	<li style=\"text-align:justify\">2.4 Ghz High-Speed Wireless Fashion Mouse</li>\r\n	<li style=\"text-align:justify\">Brand: HP</li>\r\n	<li style=\"text-align:justify\">Connectivity: Wireless</li>\r\n	<li style=\"text-align:justify\">Compatible with: PC &amp; Laptops</li>\r\n	<li style=\"text-align:justify\">Mouse Type: Optical Mouse.</li>\r\n</ul>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-20px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1592629488_wireless_mouse.jpg', '', 1, 2, 1, '2020-06-19 23:04:48', '2021-07-24 23:02:32'),
(15, 3, 15, 46, 3, 'Hp Color Printer', 'COM-HP-HP -0015', NULL, NULL, NULL, NULL, '<ul>\r\n	<li style=\"text-align:justify\">Model: HP DeskJet 2132</li>\r\n	<li style=\"text-align:justify\">Print Speed: 20 ppm (black)</li>\r\n	<li style=\"text-align:justify\">Paper Sizes: A4,B5,A6, DL envelope</li>\r\n	<li style=\"text-align:justify\">Connectivity: USB 2.0</li>\r\n</ul>', '', NULL, './admin/product_images/1612795854.jpg', './admin/product_big_images/1612795854.jpg', 1, NULL, 0, '2020-06-19 23:09:57', '2021-02-08 19:50:54'),
(16, 3, 14, 49, 3, 'Lenovo Laptop', 'COM-LEN-LEN-0016', NULL, 'Bangladeshi', NULL, NULL, '<ul>\r\n	<li style=\"text-align:justify\">-Processor Type Core i5 8th Generation 8265U-Processor Clock Speed 1.60-3.90GHz-CPU Cache 6MB-Ram : 4GB DDR4-Storage : 1TB HDD-Display Size (Inch) 15.6 FHD LED-Display Resolution : 1920x1080 (WxH) FHD-Display Port : HDMI-Optical Device : DVD RW-Operating System : Win-10 Home-Battery 3 Cell</li>\r\n</ul>', '', NULL, './admin/product_images/1592630157_lenovo_laptop.jpg', '', 1, NULL, 0, '2020-06-19 23:15:57', '2020-08-17 02:03:19'),
(17, 3, 12, 47, 5, 'Dell Laptop', 'COM-DEL-DEL-0017', 'Cori-7', 'Bangladeshi', NULL, NULL, '<ul>\r\n	<li>Basic Information</li>\r\n	<li>Processor : Intel Core i7-8550U Processor (1.80 GHz up to 4.00 GHz, 8M Cache)</li>\r\n	<li>Display : 14.0-inch HD (1366 x 768) Anti-Glare LED-Backlit Non-touch Display</li>\r\n	<li>Memory : 8GB DDR4 2666MHz</li>\r\n	<li>Storage : 1TB 5400 rpm 2.5&quot; SATA Hard Drive</li>\r\n	<li>Graphics : AMD Radeon 520 2GB GDDR5 Graphics</li>\r\n	<li>Operating System : Genuine Win 10</li>\r\n	<li>Battery : 3 Cell 42Whr</li>\r\n	<li>Audio : 2 tuned speakers with Waves MaxxAudio&reg; Pro</li>\r\n	<li>Input Devices</li>\r\n	<li>Keyboard : Standard keyboard</li>\r\n</ul>', '', NULL, './admin/product_images/1592630857_dell_laptop.jpg', '', 1, 1, 0, '2020-06-19 23:27:38', '2020-08-17 02:03:37'),
(18, 3, 11, 46, 3, 'Hp Laptop', 'COM-HP-HP -0018', 'Cori-7', 'Bangladeshi', NULL, NULL, '<ul>\r\n	<li style=\"text-align:justify\">Basic Information</li>\r\n	<li style=\"text-align:justify\">Processor : Intel Core i3-7020U Processor (3M Cache, 2.30 GHz, 2 Cores, 4 Threads)</li>\r\n	<li style=\"text-align:justify\">Display : 15.6&quot; diagonal LED-backlit HD SVA eDP anti-glare LED-backlit, 45% sRGB, 220 nits (1366 x 768)</li>\r\n	<li style=\"text-align:justify\">Memory : 4 GB DDR4 2400 Mhz Ram</li>\r\n	<li style=\"text-align:justify\">Storage : 1 TB SATA 5400 rpm</li>\r\n	<li style=\"text-align:justify\">Graphics : Intel HD Graphics 620</li>\r\n	<li style=\"text-align:justify\">Operating System : Free Dos</li>\r\n	<li style=\"text-align:justify\">Battery : 3-cell Li-ion</li>\r\n	<li style=\"text-align:justify\">Audio : Integrated dual-array microphone</li>\r\n	<li style=\"text-align:justify\">Integrated stereo speakers</li>\r\n</ul>', '', NULL, './admin/product_images/1592631066_hp_laptop.jpg', '', 1, 1, 0, '2020-06-19 23:31:06', '2020-08-17 02:03:53'),
(19, 3, 13, 50, 3, 'Acer Laptop', 'COM-ACE-ACE-0019', 'Cori-7', 'Bangladeshi', NULL, NULL, '<p style=\"text-align:justify\">Generation &ndash; 7th Gen<br />\r\nProcessor &ndash; Intel Core i5 7200U<br />\r\nProcessor Clock Speed &ndash; 2.50-3.10GHz<br />\r\nDisplay Size &ndash; 14&Prime;<br />\r\nRAM &ndash; 4GB<br />\r\nRAM Type &ndash; DDR4<br />\r\nHDD &ndash; 512GB SSD</p>', '', NULL, './admin/product_images/1592631680_acer_laptop.jpg', '', 1, 1, 0, '2020-06-19 23:41:22', '2020-08-17 02:04:34'),
(20, 10, 62, 5, 3, 'Indian Cotton Shirt', 'MEN-YEL-IND-0020', NULL, 'Indian', NULL, NULL, '<p style=\"text-align:justify\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />100% Cotton, Stylish Casual Indian New Collection Shirt</p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Shirt Code- SN-42</p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Product Type: Shirt</p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Gender: Men</p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Main Material: Cotton</p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;M- chest 38, length 28</p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;L- chest 40, length 30</p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;XL- chest 42 length 31</p>', '', NULL, './admin/product_images/1592677391_indian_cotton_shirt.jpg', '', 1, NULL, 0, '2020-06-20 12:23:11', '2020-06-25 00:26:49'),
(21, 10, 62, 6, 3, 'Casual Half Shirt', 'MEN-CAT-CAS-0021', NULL, 'Bangladeshi', NULL, NULL, '<ul>\r\n	<li style=\"text-align:justify\">Brand name: SaRa</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Color: BLACK MAROON CHECK, Same as picture</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Type: Casual shirt</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Style: Slim Fit</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">100% Authentic Product</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Material &amp; Care: Cotton</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Unique design</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Best Production quality</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">For an effortlessly trendy look</p>\r\n	</li>\r\n</ul>', '', NULL, './admin/product_images/1592678618_casual_half_shirt.jpg', '', 1, 2, 0, '2020-06-20 12:43:39', '2021-01-26 16:12:12'),
(22, 10, 62, 6, 3, 'Gents Full Sleeve Denim Shirt', 'MEN-CAT-GEN-0022', NULL, 'Bangladeshi', NULL, NULL, '<p>Gents Full Sleeve Denim Shirt</p>', '', NULL, './admin/product_images/1592678880_gents_full_sleeve_denim_shirt.jpg', '', 1, NULL, 0, '2020-06-20 12:48:00', '2020-06-25 00:26:01'),
(23, 10, 62, 5, 3, 'Formal Shirt', 'MEN-YEL-FOR-0023', NULL, 'Bangladeshi', NULL, NULL, '<p>Mens Full Sleeve Formal Shirt</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-79px; position:absolute; top:38px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1592679054_formal_shirt.jpg', '', 1, 3, 0, '2020-06-20 12:50:55', '2021-01-25 14:47:19'),
(24, 10, 62, 9, 3, 'Formal Shirts For Men', 'MEN-INF- FO-0024', NULL, NULL, NULL, NULL, '<p>New Stylish Long Sleeve Formal Shirts For Men</p>', '', NULL, './admin/product_images/1611645673_formal_shirts_for_men.jpg', './admin/product_big_images/1611645673_formal_shirts_for_men.jpg', 0, 7, 1, '2020-06-20 12:59:46', '2021-07-24 23:00:20'),
(25, 10, 61, 7, 3, 'New Special couple T shirt', 'MEN-ANJ-NEW-0025', NULL, 'Bangladeshi', NULL, NULL, '<p>New Special couple T shirt</p>', '', NULL, './admin/product_images/1592680266_new_special_couple_t_shirt.jpg', '', 1, NULL, 0, '2020-06-20 13:11:06', '2020-06-25 00:24:48'),
(26, 10, 61, 8, 3, 'King & Queen T-shirt', 'MEN-KAY-KIN-0026', NULL, 'Bangladeshi', NULL, NULL, '<p>New KINGs and QUEENs Special couple T shirt</p>', '', NULL, './admin/product_images/1592680435_king_&_queen_t-shirt.jpg', '', 1, NULL, 0, '2020-06-20 13:13:55', '2020-06-25 00:24:15'),
(27, 10, 61, 5, 3, 'Cotton Casual T-shirt for Men', 'MEN-YEL-COT-0027', NULL, NULL, NULL, NULL, '<p>Cotton Casual T-shirt for Men - Red</p>', '', NULL, './admin/product_images/1592680556_cotton_casual_t-shirt_for_men.png', '', 0, NULL, 0, '2020-06-20 13:15:56', '2021-01-26 12:28:27'),
(28, 10, 61, 9, 3, 'combo Slim fit Half sleeve t-shirt.', 'MEN-INF- CO-0028', NULL, 'Bangladeshi', NULL, NULL, '<p>Pack of 5 pc combo Slim fit Half sleeve t-shirt.</p>', '', NULL, './admin/product_images/1592680703_combo_slim_fit_half_sleeve_t-shirt..jpg', '', 1, NULL, 0, '2020-06-20 13:18:23', '2020-06-25 00:23:23'),
(29, 10, 61, 3, 3, 'Ash color T-shirt', 'MEN-ARO- AS-0029', NULL, 'Bangladeshi', NULL, NULL, '<p>Tshirt Men Ash color responsive &amp; Rubber Print Design</p>', '', NULL, './admin/product_images/1592680819_ash_color_t-shirt.png', '', 0, NULL, 0, '2020-06-20 13:20:19', '2021-01-26 12:27:29'),
(30, 10, 74, 9, 3, 'Mens Jacket', 'MEN-INF-MEN-0030', NULL, 'Bangladeshi', NULL, NULL, '<p>Royal Enfield Polyster Black Jacket for bike rider Air Motorcycle Riding Jacket</p>', '', NULL, './admin/product_images/1592681446_mens_jacket.jpg', '', 1, NULL, 0, '2020-06-20 13:30:47', '2020-06-25 00:22:19'),
(31, 10, 74, 6, 3, 'Men Solid Color Jaket', 'MEN-CAT-MEN-0031', NULL, NULL, NULL, NULL, '<p>Men Solid Color Zipper Jacket Windproof Baseball Jacket Sports Coat For New Year</p>', '', NULL, './admin/product_images/1613025132.jpg', './admin/product_big_images/1613025132.jpg', 1, 1, 0, '2020-06-20 13:32:52', '2021-02-11 11:32:12'),
(32, 10, 74, 6, 3, 'Navy Blue  Jacket', 'MEN-CAT-NAV-0032', NULL, NULL, NULL, NULL, '<p>Navy Blue Cotton Full Sleeve Jacket For Men</p>', '', NULL, './admin/product_images/1613025112.jpg', './admin/product_big_images/1613025112.jpg', 1, 5, 0, '2020-06-20 13:35:52', '2021-02-11 11:31:52'),
(33, 10, 74, 7, 3, 'Multicolor Jaket', 'MEN-ANJ-MUL-0033', NULL, NULL, NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p>Jackets For Men Outdoor Hiking Waterproof Windproof Snowboarding Warm Coat</p>', '', NULL, './admin/product_images/1613025076.jpg', './admin/product_big_images/1613025076.jpg', 1, 5, 0, '2020-06-20 13:38:18', '2021-02-11 11:31:16'),
(34, 10, 74, 6, 3, 'Pure Lather Jaket', 'MEN-CAT-PUR-0034', NULL, NULL, NULL, NULL, '<p>Lather Jacket For Men By 24 open</p>', '', NULL, './admin/product_images/1613025057.jpg', './admin/product_big_images/1613025057.jpg', 1, 3, 0, '2020-06-20 13:43:40', '2021-02-11 11:30:57'),
(35, 10, 73, 9, 3, 'Excellent Mens Hoddie', 'MEN-INF-EXC-0035', NULL, 'Bangladeshi', NULL, NULL, '<p>Excellent Mens Hoddie</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:2px; position:absolute; top:38px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1592682889_excellent_mens_hoddie.jpg', '', 1, NULL, 0, '2020-06-20 13:54:53', '2020-06-25 00:20:27'),
(36, 10, 73, 8, 3, 'Mens White Color hoddie', 'MEN-KAY-MEN-0036', NULL, 'Bangladeshi', NULL, NULL, '<p>Mens White Color hoddie</p>', '', NULL, './admin/product_images/1592682983_mens_white_color_hoddie.jpg', '', 1, NULL, 0, '2020-06-20 13:56:23', '2020-08-17 01:59:33'),
(37, 10, 73, 7, 3, 'Mens Blck Color Hoddie', 'MEN-ANJ-MEN-0037', NULL, 'Bangladeshi', NULL, NULL, '<p>Mens Blck Color Hoddie</p>', '', NULL, './admin/product_images/1592683070_mens_blck_color_hoddie.jpg', '', 1, NULL, 0, '2020-06-20 13:57:50', '2020-08-17 01:59:47'),
(38, 10, 73, 9, 3, 'Mens Ash Color Hoddie', 'MEN-INF-MEN-0038', NULL, 'Bangladeshi', NULL, NULL, '<p>Mens Ash Color Hoddie</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-60px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1592683185_mens_ash_color_hoddie.jpg', '', 1, NULL, 0, '2020-06-20 13:59:45', '2020-06-25 00:19:26'),
(39, 11, 73, 5, 3, 'Excllent Red Color Mens Hoddie', 'ELE-YEL-EXC-0039', NULL, 'Bangladeshi', NULL, NULL, '<p>Excllent Red Color Mens Hoddie</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-1px; position:absolute; top:38px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1592683293_excllent_red_color_mens_hoddie.jpg', '', 1, NULL, 0, '2020-06-20 14:01:33', '2020-06-25 00:19:05'),
(40, 10, 72, 3, 5, 'Stylish Men’s Cotton Punjabi', 'MEN-ARO-STY-0040', NULL, 'Bangladeshi', NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p>Stylish and Exclusive Cotton Special Men&rsquo;s Cotton Punjabi</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:15px; position:absolute; top:38px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1592683527_stylish_men’s_cotton_punjabi.jpg', '', 1, NULL, 0, '2020-06-20 14:05:27', '2020-08-17 02:00:24'),
(41, 10, 72, 7, 3, 'Special Men’s Cotton Punjabi', 'MEN-ANJ-SPE-0041', NULL, 'Bangladeshi', NULL, NULL, '<p>Special Men&rsquo;s Cotton Punjabi</p>', '', NULL, './admin/product_images/1592683705_special_men’s_cotton_punjabi.jpg', '', 1, NULL, 0, '2020-06-20 14:08:26', '2020-08-17 02:00:05'),
(42, 10, 72, 8, 3, 'Men’s Printed Cotton Punjabi', 'MEN-KAY-MEN-0042', NULL, 'Bangladeshi', NULL, NULL, '<p>Men&rsquo;s Printed Cotton Punjabi</p>', '', NULL, './admin/product_images/1592683816_men’s_printed_cotton_punjabi.jpg', '', 1, NULL, 0, '2020-06-20 14:10:17', '2020-06-25 00:17:51'),
(43, 10, 72, 6, 3, 'Maroon Semi Long Cotton Punjabi', 'MEN-CAT-MAR-0043', NULL, NULL, NULL, NULL, '<p>Maroon Semi Long Cotton Punjabi for Men</p>', '', NULL, './admin/product_images/1592683938_maroon_semi_long_cotton_punjabi.jpg', '', 1, 1, 0, '2020-06-20 14:12:18', '2020-08-17 02:00:40'),
(44, 10, 72, 5, 3, 'Special Men’s Printed Cotton Punjabi', 'MEN-YEL-SPE-0044', NULL, NULL, NULL, NULL, '<p>Special Shadhinota Dibosh Men&rsquo;s Printed Cotton Punjabi</p>', '', NULL, './admin/product_images/1592684074_special_men’s_printed_cotton_punjabi.jpg', '', 1, 1, 0, '2020-06-20 14:14:34', '2020-08-17 01:56:28'),
(45, 9, 53, 3, 4, 'Unstitched Yellow Three Piece', 'WOM-ARO-UNS-0045', NULL, NULL, NULL, NULL, '<p>Unstitched Yellow Georgette Three Piece For Women</p>', '', NULL, './admin/product_images/1613025992.jpg', './admin/product_big_images/1613025992.jpg', 1, NULL, 0, '2020-06-20 23:51:12', '2021-02-11 11:46:32'),
(46, 9, 53, 5, 3, 'Block PrintThree Piece', 'WOM-YEL-BLO-0046', NULL, NULL, NULL, NULL, '<p>Block Print Unstitched Three Piece For Women</p>', '', NULL, './admin/product_images/1613026014.jpg', './admin/product_big_images/1613026014.jpg', 1, 1, 0, '2020-06-20 23:54:14', '2021-02-11 11:46:54'),
(47, 9, 53, 5, 3, 'Exclusive  Salwar Kameez Three piece', 'WOM-YEL- EX-0047', NULL, NULL, NULL, NULL, '<p>Unstitched Red Georgette embroidery work Free Size Exclusive Designer Salwar Kameez Three piece For women</p>', '', NULL, './admin/product_images/1613026103.jpg', './admin/product_big_images/1613026104.jpg', 1, 3, 0, '2020-06-20 23:57:36', '2021-02-11 11:48:24'),
(48, 9, 53, 8, 3, 'White Stylish Three Piece', 'WOM-KAY- WH-0048', NULL, NULL, NULL, NULL, '<p>Unstitched White and Pink color Cotton Exclusive, Fashionable, Stylish and Comfortable, High Quality Block Printed Three Piece for Women</p>', '', NULL, './admin/product_images/1613026130.jpg', './admin/product_big_images/1613026130.jpg', 1, 1, 0, '2020-06-21 00:05:14', '2021-02-11 11:48:50'),
(49, 9, 53, 9, 3, 'New Collection Black Three Piece', 'WOM-INF-NEW-0049', NULL, NULL, NULL, NULL, '<p>New Collection Unstitched Black and Cream Georgette embroidery work Free Size Exclusive Designer Plazzo style Salwar Kameez Three Piece For women</p>', '', NULL, './admin/product_images/1613026156.jpg', './admin/product_big_images/1613026156.jpg', 1, 1, 0, '2020-06-21 00:09:18', '2021-02-23 13:58:05'),
(50, 9, 52, 3, 3, 'Yellow and Deep Orange Cotton Saree', 'WOM-ARO-YEL-0050', NULL, NULL, NULL, NULL, '<p>Yellow and Deep Orange Cotton Saree with Blouse Piece for Women</p>', '', NULL, './admin/product_images/1613026190.jpg', './admin/product_big_images/1613026190.jpg', 1, NULL, 0, '2020-06-21 00:30:16', '2021-02-11 11:49:50'),
(51, 9, 52, 8, 3, 'New Black  Stylish Saree', 'WOM-KAY- NE-0051', NULL, 'Bangladeshi', NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p>New Black Indian Stylish Georgette Saree for Women&nbsp;</p>', '', NULL, './admin/product_images/1592721175_new_black__stylish_saree.jpg', '', 1, NULL, 0, '2020-06-21 00:32:55', '2021-07-12 12:53:16'),
(52, 9, 52, 7, 3, 'Deep Green Indian Soft Georgette Saree', 'WOM-ANJ-DEE-0052', NULL, 'Bangladeshi', NULL, NULL, '<p>Deep Green Indian Soft Georgette Saree For Women</p>', '', NULL, './admin/product_images/1592721405_deep_green_indian_soft_georgette_saree.jpg', '', 1, 1, 0, '2020-06-21 00:36:45', '2020-08-17 01:58:35'),
(53, 9, 52, 9, 3, 'White Georgette Stylish Elegant Saree', 'WOM-INF-WHI-0053', NULL, 'Bangladeshi', NULL, NULL, '<p>White Georgette Stylish Elegant Saree For Women</p>', '', NULL, './admin/product_images/1592721586_white_georgette_stylish_elegant_saree.jpg', '', 1, NULL, 0, '2020-06-21 00:39:46', '2020-08-17 01:58:53'),
(54, 9, 52, 5, 3, 'Italian Soft Silk Saree', 'WOM-YEL- IT-0054', NULL, 'Bangladeshi', NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p>Italian Soft Silk Saree for Women- Rose Red</p>', '', NULL, './admin/product_images/1592721755_italian_soft_silk_saree.jpg', '', 1, NULL, 0, '2020-06-21 00:42:36', '2020-08-17 01:56:11'),
(55, 9, 51, 5, 3, 'Green Georgette Embroidery Salwar Kameez', 'WOM-YEL- GR-0055', NULL, 'Bangladeshi', NULL, NULL, '<p>Unstitched Dark Green Georgette Embroidery Salwar Kameez For Women</p>', '', NULL, './admin/product_images/1592722254_green_georgette_embroidery_salwar_kameez.jpg', '', 1, NULL, 0, '2020-06-21 00:50:55', '2020-08-17 01:55:56'),
(56, 9, 51, 3, 5, 'Yellow and Red  Salwar Kameez', 'WOM-ARO- YE-0056', NULL, NULL, NULL, NULL, '<p>Semi Stitched Yellow and Red Georgette Embroidered Salwar Kameez for Women</p>', '', NULL, './admin/product_images/1592722450_yellow_and_red__salwar_kameez.jpg', '', 1, NULL, 0, '2020-06-21 00:54:10', '2021-02-23 13:18:50'),
(57, 9, 51, 7, 3, 'Navy Blue Cotton Salwar Kameez', 'WOM-ANJ-NAV-0057', NULL, 'Bangladeshi', NULL, NULL, '<p>Unstitched Navy Blue Cotton Salwar Kameez</p>', '', NULL, './admin/product_images/1592722605_navy_blue_cotton_salwar_kameez.jpg', '', 1, NULL, 0, '2020-06-21 00:56:45', '2021-07-09 05:59:18'),
(58, 9, 51, 8, 3, 'Exclusive Balck  Salwar Kameez', 'WOM-KAY-EXC-0058', NULL, 'Bangladeshi', NULL, NULL, '<p>Unstiched Balck and Golden Georgette Salwar Kameez For Women</p>', '', NULL, './admin/product_images/1592722749_exclusive_balck__salwar_kameez.jpg', '', 1, NULL, 0, '2020-06-21 00:59:09', '2020-08-17 01:55:06'),
(59, 9, 51, 5, 3, 'Semi Stitched White Salwar Kameez', 'WOM-YEL-SEM-0059', NULL, NULL, NULL, NULL, '<p>Semi Stitched White and Light Salmon Georgette Embroidered Salwar Kameez For Women</p>', '', NULL, './admin/product_images/1592722898_semi_stitched_white_salwar_kameez.jpg', '', 1, NULL, 0, '2020-06-21 01:01:38', '2020-08-17 01:54:47'),
(60, 9, 50, 8, 3, 'Blue  New Indian Kurti', 'WOM-KAY-BLU-0060', NULL, 'Bangladeshi', NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p>Blue Georgette New Indian Kurti For Women</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-22px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1592723610_blue__new_indian_kurti.jpg', '', 1, NULL, 0, '2020-06-21 01:13:30', '2020-08-17 01:54:02'),
(61, 9, 50, 3, 3, 'Maroon Cotton New Indian Kurti', 'WOM-ARO-MAR-0061', NULL, 'Bangladeshi', NULL, NULL, '<p>Maroon Cotton New Indian Kurti For Women</p>', '', NULL, './admin/product_images/1592723763_maroon_cotton_new_indian_kurti.jpg', '', 1, NULL, 0, '2020-06-21 01:16:03', '2020-06-25 00:10:58'),
(62, 9, 50, 8, 3, 'Pink New Indian cotton kurti', 'WOM-KAY-PIN-0062', NULL, 'Bangladeshi', NULL, NULL, '<p>Pink New Indian cotton kurti 211 G</p>', '', NULL, './admin/product_images/1592723876_pink_new_indian_cotton_kurti.jpg', '', 1, NULL, 0, '2020-06-21 01:17:56', '2020-06-25 00:11:40'),
(63, 9, 50, 9, 3, 'Unstitched White Cotton Kurti Long Sleeve', 'WOM-INF-UNS-0063', NULL, 'Bangladeshi', NULL, NULL, '<p>Unstitched White Cotton Kurti Long Sleeve For Women</p>', '', NULL, './admin/product_images/1592724276_unstitched_white_cotton_kurti_long_sleeve.jpg', '', 1, NULL, 0, '2020-06-21 01:24:36', '2020-06-25 00:12:07'),
(64, 9, 50, 5, 3, 'Orange Georgette Casual Kurti For Women', 'WOM-YEL-ORA-0064', NULL, 'Bangladeshi', NULL, NULL, '<p>Orange Georgette Casual Kurti For Women</p>', '', NULL, './admin/product_images/1592724404_orange_georgette_casual_kurti_for_women.jpg', '', 1, NULL, 0, '2020-06-21 01:26:44', '2020-08-17 01:51:31'),
(65, 9, 49, 41, 5, 'Benyar Women  Ladies  Watch', 'WOM-SAM-BEN-0065', NULL, 'Bangladeshi', NULL, NULL, '<p>Benyar Women Watches Ladies Quartz Simple Style Leather Watch</p>', '', NULL, './admin/product_images/1592725121_benyar_women__ladies__watch.jpg', '', 1, NULL, 0, '2020-06-21 01:35:52', '2020-06-25 00:06:07'),
(66, 9, 49, 22, 3, 'Style Wrist Watch', 'WOM-OME-STY-0066', NULL, 'Bangladeshi', NULL, NULL, '<p>STYLE WRIST WATCH FOR MEN AND WOMEN</p>', '', NULL, './admin/product_images/1592725255_style_wrist_watch.jpg', '', 1, NULL, 0, '2020-06-21 01:40:55', '2020-08-17 01:51:44'),
(67, 9, 49, 22, 3, 'Fashion  Leather Women\'s Watch', 'WOM-OME-FAS-0067', NULL, 'Bangladeshi', NULL, NULL, '<p>Fashion Flower Stainless Steel Mesh Leather Women&#39;s Watches Leather</p>', '', NULL, './admin/product_images/1592726024_fashion__leather_women\'s_watch.jpg', '', 1, NULL, 0, '2020-06-21 01:53:44', '2020-08-17 01:52:01'),
(68, 9, 49, 20, 5, 'Stylish  Women watch', 'WOM-ROL-STY-0068', NULL, 'Bangladeshi', NULL, NULL, '<p>STYLE WRIST WATCH FOR MEN AND WOMEN</p>', '', NULL, './admin/product_images/1592726208_stylish__women_watch.jpg', '', 1, 1, 0, '2020-06-21 01:56:49', '2020-08-17 01:52:19'),
(69, 9, 49, 21, 3, 'Excellent Wrist Watch For Women', 'WOM-RAD-EXC-0069', NULL, 'Bangladeshi', NULL, NULL, '<p>STYLE WRIST WATCH FOR MEN AND WOMEN</p>', '', NULL, './admin/product_images/1592726357_excellent_wrist_watch_for_women.jpg', '', 1, 1, 0, '2020-06-21 01:59:17', '2020-07-24 03:16:16'),
(70, 11, 71, 1, 3, 'Wlton 43 Inch Smart Tv', 'ELE-WAL-WLT-0070', NULL, NULL, NULL, NULL, '<p>Walton WD4-TS43-KS220 (1.09m) Smart TV - 43 Inch - Black</p>', '', NULL, './admin/product_images/1613031338.jpg', './admin/product_big_images/1613031338.jpg', 1, NULL, 0, '2020-06-21 05:15:39', '2021-02-11 13:15:38'),
(71, 11, 71, 34, 3, 'Sharp 50 Inch Smart Tv', 'ELE-SHA-SHA-0071', NULL, NULL, NULL, NULL, '<p>Sharp 50&Prime; / 126cm Smart Full-HD LED TV 2T-C50BG1i</p>', '', NULL, './admin/product_images/1613031316.jpg', './admin/product_big_images/1613031316.jpg', 1, 4, 0, '2020-06-21 05:17:40', '2021-02-11 13:15:17'),
(72, 11, 71, 2, 3, 'Vision 49 Inch Led Smart tv', 'ELE-PRA-VIS-0072', NULL, NULL, NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p>VISION 49&rdquo; LED Smart 4K TV T01 Gery - Black</p>', '', NULL, './admin/product_images/1613031266.jpeg', './admin/product_big_images/1613031266.jpeg', 1, 2, 0, '2020-06-21 05:21:04', '2021-02-11 13:14:26'),
(73, 11, 71, 40, 3, 'Samsung 40 Inch  Smart LED TV', 'ELE-SON-SAM-0073', NULL, NULL, NULL, NULL, '<p>Samsung 40 INCH Full HD Smart LED TV</p>', '', NULL, './admin/product_images/1613031220.jpg', './admin/product_big_images/1613031220.jpg', 1, NULL, 0, '2020-06-21 05:24:54', '2021-02-11 13:13:40'),
(74, 11, 71, 40, 3, 'Sony Bravia 32 Inch Led Smart Tv', 'ELE-SON-SON-0074', NULL, NULL, NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SONY Bravia R302E 32&quot; HD Ready LED TV</p>\r\n\r\n<h1>&nbsp;</h1>', '', NULL, './admin/product_images/1613030669.jpg', './admin/product_big_images/1613030669.jpg', 1, 6, 1, '2020-06-21 05:29:40', '2021-07-24 23:00:20'),
(78, 11, 70, 41, 3, 'Excellent Smart Wrist Watch', 'ELE-SAM-EXC-0075', NULL, 'Bangladeshi', NULL, NULL, '<p>Excellent Smart Wrist Watch</p>', '', NULL, './admin/product_images/1592741397_excellent_smart_wrist_watch.jpg', '', 1, NULL, 0, '2020-06-21 06:09:58', '2020-06-24 23:58:03'),
(79, 11, 70, 22, 3, 'Smart Wrist watch For Men', 'ELE-OME-SMA-0079', NULL, 'Bangladeshi', NULL, NULL, '<p>Smart Wrist watch For Men</p>', '', NULL, './admin/product_images/1592741509_smart_wrist_watch_for_men.jpg', '', 1, NULL, 0, '2020-06-21 06:11:49', '2020-08-17 01:48:53'),
(80, 11, 70, 22, 3, 'Brown Wrist Watch For Men', 'ELE-OME-BRO-0080', 'Brown Wrist Watch For Men', 'Bangladeshi', NULL, NULL, '<p>Brown Wrist Watch For Men</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-66px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1592741638_brown_wrist_watch_for_men.jpg', '', 1, NULL, 0, '2020-06-21 06:13:59', '2020-08-17 01:49:09'),
(81, 11, 70, 41, 3, 'Golden Wrrist Watch For Men', 'ELE-SAM-GOL-0081', 'Golden Wrrist Watch For Men', 'Bangladeshi', NULL, NULL, '<p>Golden Wrrist Watch For Men</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-135px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1592741747_golden_wrrist_watch_for_men.jpg', '', 1, 3, 0, '2020-06-21 06:15:47', '2021-01-14 21:59:23'),
(82, 11, 70, 21, 3, 'Metalic Wrist watch For Men', 'ELE-RAD-MET-0082', NULL, NULL, NULL, NULL, '<p>CURREN 8364 Sport Men Watch Top Brand Luxury Blue Military Business Waterproof Male Clock Stainless Steel Quartz Man Wristwatch</p>', '', NULL, './admin/product_images/1592741904_metalic_wrist_watch_for_men.jpg', '', 1, 1, 0, '2020-06-21 06:18:25', '2020-08-17 01:50:23'),
(83, 11, 69, 1, 3, 'Walton Split AC', 'ELE-WAL-WAL-0083', NULL, 'Bangladeshi', NULL, NULL, '<p>Walton Split AC 1.5 ton</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-39px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1592742816_walton_split_ac.jpg', '', 1, NULL, 0, '2020-06-21 06:33:37', '2020-08-17 01:50:39'),
(84, 11, 69, 34, 3, 'Sharp 1.5 ton Split AC', 'ELE-SHA-SHA-0084', NULL, 'Bangladeshi', NULL, NULL, '<p>Sharp 1.5 ton Split AC</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:0px; position:absolute; top:38px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1592742909_sharp_1.5_ton_split_ac.jpg', '', 1, NULL, 0, '2020-06-21 06:35:09', '2020-08-17 01:50:08'),
(85, 11, 69, 1, 3, 'Walton Maroon Split AC 1 Ton', 'ELE-WAL-WAL-0085', NULL, 'Bangladeshi', NULL, NULL, '<p>Walton Maroon Split AC 1 Ton</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-68px; position:absolute; top:38px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1592742999_walton_maroon_split_ac_1_ton.jpg', '', 1, NULL, 0, '2020-06-21 06:36:39', '2020-08-17 01:50:55'),
(86, 11, 69, 33, 3, 'Toshiba White Color Split 1.5 Ton AC', 'ELE-TOS-TOS-0086', NULL, 'Bangladeshi', NULL, NULL, '<p>Toshiba White Color Split 1.5 Ton AC</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-15px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1592743091_toshiba_white_color_split_1.5_ton_ac.jpg', '', 1, NULL, 0, '2020-06-21 06:38:11', '2020-08-17 01:51:11'),
(87, 11, 69, 41, 3, 'Samsung Split AC 1.5 Ton', 'ELE-SAM-SAM-0087', NULL, 'Bangladeshi', NULL, NULL, '<p>Samsung Ash Color Split AC 1.5 Ton</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-66px; position:absolute; top:38px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1592743200_samsung_split_ac_1.5_ton.jpg', '', 1, 1, 0, '2020-06-21 06:40:00', '2021-01-25 14:43:30'),
(88, 11, 68, 1, 3, 'Walton Exclusive Freez', 'ELE-WAL-WAL-0088', NULL, 'Bangladeshi', NULL, NULL, '<p>Walton Exclusive Freez</p>', '', NULL, './admin/product_images/1592743675_walton_exclusive_freez.jpg', '', 1, NULL, 0, '2020-06-21 06:47:55', '2020-08-17 01:46:19'),
(89, 11, 68, 33, 3, 'Toshiba Chocklet Color freez', 'ELE-TOS-TOS-0089', NULL, 'Bangladeshi', NULL, NULL, '<p>Toshiba Chocklet Color freez</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-33px; position:absolute; top:38px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1592743773_toshiba_chocklet_color_freez.jpg', '', 1, NULL, 0, '2020-06-21 06:49:33', '2020-08-17 01:48:21'),
(90, 11, 68, 41, 3, 'Samsung Black color Freez', 'ELE-SAM-SAM-0090', NULL, 'Bangladeshi', NULL, NULL, '<p>Samsung Black color Freez</p>', '', NULL, './admin/product_images/1592743866_samsung_black_color_freez.jpg', '', 1, NULL, 0, '2020-06-21 06:51:07', '2020-06-24 23:53:02'),
(91, 11, 68, 31, 3, 'LG Exclusive Freez', 'ELE-LG-LG -0091', NULL, 'Bangladeshi', NULL, NULL, '<p>LG Exclusive Freez</p>', '', NULL, './admin/product_images/1592744032_lg_exclusive_freez.jpg', '', 1, NULL, 0, '2020-06-21 06:53:53', '2020-08-17 01:48:02'),
(92, 11, 68, 34, 3, 'Sharp Exclusive freez', 'ELE-SHA-SHA-0092', NULL, 'Bangladeshi', NULL, NULL, '<p>Sharp Hot Collection freez</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-11px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1592744144_sharp_exclusive_freez.jpg', '', 1, 2, 0, '2020-06-21 06:55:44', '2021-03-14 15:03:01'),
(93, 8, 45, 42, 3, 'Apple iPhone SE (2020)', 'MOB-APE-APP-0093', 'iPhone SE (2020), A2275, A2296, A2298', 'Made In China', NULL, NULL, '<p>Excellent Mobile</p>', '', NULL, './admin/product_images/1592801402_apple_iphone_se_(2020).jpg', '', 1, 2, 1, '2020-06-21 22:50:04', '2021-07-24 23:03:28'),
(94, 8, 44, 45, 3, 'Huawei Nova 7 Pro 5G', 'MOB-HUW-HUA-0094', 'Nova 7 Pro 5G', 'Made in Koriea', NULL, NULL, '<h1>Huawei Nova 7 Pro 5G</h1>', '', NULL, './admin/product_images/1592802584_huawei_nova_7_pro_5g.jpg', '', 1, 3, 1, '2020-06-21 23:09:47', '2021-07-24 23:03:28'),
(95, 8, 43, 41, 3, 'Samsung Galaxy M01', 'MOB-SAM-SAM-0095', 'Galaxy M01', 'Made in China', NULL, NULL, '<h1>Samsung Galaxy M01</h1>', '', NULL, './admin/product_images/1592802966_samsung_galaxy_m01.jpg', '', 1, 1, 0, '2020-06-21 23:16:06', '2020-08-17 01:46:56'),
(96, 8, 42, 43, 3, 'Oppo A91', 'MOB-OPP-OPP-0096', NULL, NULL, NULL, NULL, '<h1>Oppo A91</h1>', '', NULL, './admin/product_images/1613031759.jpg', './admin/product_big_images/1613031759.jpg', 1, 3, 0, '2020-06-21 23:19:22', '2021-02-11 13:22:39'),
(97, 8, 41, 41, 3, 'Bluetooth Headphones', 'MOB-SAM-BLU-0097', NULL, NULL, NULL, NULL, '<p>Beats Solo 3 Wireless Bluetooth Headphones -Multicolor</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:5px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1613031735.jpeg', './admin/product_big_images/1613031735.jpeg', 1, 1, 0, '2020-06-21 23:25:31', '2021-02-11 13:22:15'),
(98, 8, 40, 42, 3, 'iPhone  Orginal Zori Back Cover', 'MOB-APE-IPH-0098', NULL, NULL, NULL, NULL, '<p>iPhone xs Max Orginal Zori Back Cover Case</p>', '', NULL, './admin/product_images/1613031517.jpg', './admin/product_big_images/1613031517.jpg', 1, NULL, 0, '2020-06-21 23:30:41', '2021-02-11 13:18:37'),
(99, 5, 26, 3, 3, 'Stylish Kids Nice Dress', 'KID-ARO-STY-0099', NULL, NULL, NULL, NULL, '<p>Children Dresses 2020 Eid Collection Red And Blue Style Kids Girl Dress,Kids Girl Clothes New Collection</p>', '', NULL, './admin/product_images/1592807448_stylish_kids_nice_dress.jpg', '', 1, 1, 0, '2020-06-22 00:30:54', '2020-08-17 01:44:50'),
(100, 5, 27, 4, 4, 'Cute Kids Shoe', 'KID-APP-CUT-00100', NULL, 'Bangladeshi', NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p>Children Kid Baby Girls Solid Bowknot Student Single Soft Dance Princess&nbsp;</p>', '', NULL, './admin/product_images/1592807744_cute_kids_shoe.jpg', '', 1, NULL, 0, '2020-06-22 00:35:44', '2020-06-24 23:36:47'),
(101, 5, 28, 3, 3, 'Fashionable Kids Umbrella', 'KID-ARO-FAS-00101', NULL, 'Bangladeshi', NULL, NULL, '<p>Polyester Kids Umbrella</p>', '', NULL, './admin/product_images/1592808212_fashionable_kids_umbrella.jpg', '', 1, NULL, 0, '2020-06-22 00:43:33', '2020-06-24 23:36:25'),
(102, 5, 29, 4, 5, 'Micky MouseKids Cute Bag', 'KID-APP-MIC-00102', NULL, NULL, NULL, NULL, '<p>Mickey mouse velvet Minnie Shape School Backpacks for kids</p>', '', NULL, './admin/product_images/1613036223.jpg', './admin/product_big_images/1613036223.jpg', 1, NULL, 0, '2020-06-22 00:48:13', '2021-02-11 14:37:03'),
(103, 5, 30, 2, 3, 'Red Kids Nice Bicycle', 'KID-PRA-RED-00103', NULL, NULL, NULL, NULL, '<p>Duranta CB Glitter Bicycle -12 Green(847199)</p>', '', NULL, './admin/product_images/1613036151.jpg', './admin/product_big_images/1613036151.jpg', 1, NULL, 0, '2020-06-22 00:55:35', '2021-02-11 14:35:51'),
(104, 5, 31, 2, 3, 'Super Racing Kids Bike', 'KID-PRA-SUP-00104', NULL, NULL, NULL, NULL, '<p>CHAMPION Super Speed Racing Bike For Kids With Sound &amp; Music</p>', '', NULL, './admin/product_images/1613035884.jpg', './admin/product_big_images/1613035884.jpg', 1, 1, 0, '2020-06-22 00:59:28', '2021-02-11 14:31:25'),
(105, 4, 20, 8, 3, 'Nice Pink Color Window Screen', 'HOU-KAY-NIC-00105', NULL, 'Bangladeshi', NULL, NULL, '<p>100X200cm Voile Jacquard Window Screen Sheer Window Curtains Floral Drape</p>', '', NULL, './admin/product_images/1592812179_nice_pink_color_window_screen.jpg', '', 1, NULL, 0, '2020-06-22 01:49:42', '2020-08-17 01:45:27'),
(106, 4, 20, 3, 3, 'Excellent Red Window Screen', 'HOU-ARO-EXC-00106', NULL, 'Bangladeshi', NULL, NULL, '<p>Heart 2 Piece Polyester Window or Doorway Curtain Set - Red</p>', '', NULL, './admin/product_images/1592812442_excellent_red_window_screen.jpg', '', 1, NULL, 0, '2020-06-22 01:54:02', '2020-08-17 01:44:32'),
(107, 4, 21, 7, 3, 'Double Bedsheet With Pillow Cover', 'HOU-ANJ-DOU-00107', NULL, 'Bangladeshi', NULL, NULL, '<p>Cotton Fabric Multicolor Print 7.5 by 8.5 Feet Double King Size Bedsheet Set with Two Pillow Covers</p>', '', NULL, './admin/product_images/1592812747_double_bedsheet_with_pillow_cover.jpg', '', 1, NULL, 0, '2020-06-22 01:59:07', '2021-07-09 06:01:48'),
(108, 4, 22, 16, 3, 'Exclusive Wodden Color Dinning Set', 'HOU-PAR-EXC-00108', NULL, 'Bangladeshi', NULL, NULL, '<p>Smart Design wood Dinning set D-759</p>', '', NULL, './admin/product_images/1592813058_exclusive_wodden_color_dinning_set.jpg', '', 1, 2, 0, '2020-06-22 02:04:18', '2021-01-15 20:00:48'),
(109, 4, 23, 14, 3, 'Very nice Wardrobes', 'HOU-HAT-VER-00109', NULL, NULL, NULL, NULL, '<p>Standard Wardrobes-MWR050</p>', '', NULL, './admin/product_images/1613037778.jpg', './admin/product_big_images/1613037778.jpg', 1, 2, 0, '2020-06-22 02:08:25', '2021-02-23 13:20:08'),
(110, 4, 24, 8, 3, 'Pink Colored Flower Vase', 'HOU-KAY-PIN-00110', NULL, NULL, NULL, NULL, '<p>pink colored plastic flower vase with a flower pasted on the front side. Suitable for flowers you might have or will buy. Brings color and beauty to your room. Great for gifting purposes as well.</p>', '', NULL, './admin/product_images/1613037617.jpg', './admin/product_big_images/1613037617.jpg', 1, NULL, 0, '2020-06-22 02:13:23', '2021-02-11 15:00:17'),
(111, 4, 25, 18, 3, 'New Chocolate Color TV Self', 'HOU-NAV-BRA-00111', NULL, NULL, NULL, NULL, '<p>Brand New Chocolate Color TV Cabinet</p>', '', NULL, './admin/product_images/1613037554.jpg', './admin/product_big_images/1613037554.jpg', 1, 2, 0, '2020-06-22 02:17:01', '2021-03-14 22:35:17'),
(112, 11, 67, 1, 3, 'Excellent Walton Deep freez', 'ELE-WAL-EXC-00112', 'WCG-2E5-EHLC-XX', 'Bangladeshi', NULL, NULL, '<p>Excellent Walton Deep freez</p>', '', NULL, './admin/product_images/1592983491_excellent_walton_deep_freez.jpg', '', 0, NULL, 0, '2020-06-24 01:24:51', '2020-08-17 01:41:52'),
(113, 11, 67, 34, 3, 'Nice Yello Color Sharp Deep Freez', 'ELE-SHA-NIC-00113', NULL, NULL, NULL, NULL, '<p>Nice Yello Color Sharp Deep Freez</p>', '', NULL, './admin/product_images/1592984353_nice_yello_color_sharp_deep_freez.jpg', '', 1, NULL, 0, '2020-06-24 01:39:13', '2020-06-24 01:39:13'),
(114, 11, 67, 39, 3, 'Black Color Samsung Deep Freez', 'ELE-TRA-BLA-00114', 'WCG-3J0-RXLX-GX', 'Bangladeshi', NULL, NULL, '<p>Black Color Samsung Deep Freez</p>', '', NULL, './admin/product_images/1592984820_black_color_samsung_deep_freez.jpg', '', 1, NULL, 0, '2020-06-24 01:47:00', '2020-08-17 01:41:38'),
(115, 11, 67, 1, 3, 'Excellent Walton Deep Freez', 'ELE-WAL-EXC-00115', NULL, NULL, NULL, NULL, '<p>Excellent Walton Deep Freez</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-12px; position:absolute; top:38px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1592985059_excellent_walton_deep_freez.jpg', '', 1, NULL, 0, '2020-06-24 01:50:59', '2021-02-23 13:16:53'),
(116, 11, 67, 1, 3, 'Walton Very Nice Deep Freez', 'ELE-WAL-WAL-00116', 'WCG-2E5-EHLX-XX', 'Bangladeshi', NULL, NULL, '<p>Excellent Walton freez</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-68px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1592985227_walton_very_nice_deep_freez.jpg', '', 0, NULL, 0, '2020-06-24 01:53:48', '2020-08-17 01:40:44'),
(117, 10, 60, 6, 3, 'Blazer', 'MEN-CAT-BLA-00117', NULL, NULL, NULL, NULL, '<ul>\r\n	<li style=\"text-align: justify;\">Synthetic Casual Blazer For Men</li>\r\n	<li style=\"text-align: justify;\">Product Type: Blazer</li>\r\n	<li style=\"text-align: justify;\">Style: Casual</li>\r\n	<li style=\"text-align: justify;\">Color: As seen in the picture</li>\r\n	<li style=\"text-align: justify;\">Main Material: Synthetic and cotton</li>\r\n	<li style=\"text-align: justify;\">Gender: Men</li>\r\n</ul>', '', NULL, './admin/product_images/1597991882_blazer.jpg', '', 1, NULL, 0, '2020-08-21 00:38:04', '2020-08-21 00:38:04'),
(125, 10, 51, 43, 6, 'Mainul Islam', 'WOM-OPP-MAI-00118', NULL, NULL, NULL, NULL, '<p>vjhjgh</p>', '', NULL, './admin/product_images/1605205786_mainul_islam.jpg', './admin/product_big_images/1600372702_mainul_islam.jpg', 1, NULL, 0, '2020-09-17 13:58:24', '2021-02-23 13:17:58'),
(127, 10, 61, 8, 5, 'Full Sleeve T Shirt', 'MEN-KAY-FUL-00126', NULL, 'Bangladeshi', NULL, NULL, '<p><img alt=\"🔶\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t70/1/16/1f536.png\" />S- Length 26&quot;, Chest 36&quot;<br />\r\n<img alt=\"🔶\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t70/1/16/1f536.png\" />M- Length 27&quot;, Chest 38&quot;<br />\r\n<img alt=\"🔶\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t70/1/16/1f536.png\" />L- Length 28&quot;,Chest 40&quot;<br />\r\n<img alt=\"🔶\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t70/1/16/1f536.png\" />XL-Length 29&quot;,chest 42&quot;<br />\r\n<img alt=\"🔶\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t70/1/16/1f536.png\" />XXL-Length 30&quot;,chest 44&quot;</p>\r\n<gdiv></gdiv>', '', NULL, './admin/product_images/1605034437_full_sleeve_t_shirt.jpg', './admin/product_big_images/1605034437_full_sleeve_t_shirt.jpg', 0, NULL, 0, '2020-11-10 23:53:57', '2021-01-26 12:26:59'),
(128, 10, 61, 9, 5, 'Polo Full Sleeve T-Shirt', 'MEN-INF-POL-00128', NULL, 'Bangladeshi', NULL, NULL, '<p><img alt=\"🔶\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t70/1/16/1f536.png\" />XS-Chest36&quot; Length 25&quot;<br />\r\n<img alt=\"🔶\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t70/1/16/1f536.png\" />S- Chest 38&quot; Length 26<br />\r\n<img alt=\"🔶\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t70/1/16/1f536.png\" />M- Chest 40&quot; Length 27&quot;<br />\r\n<img alt=\"🔶\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t70/1/16/1f536.png\" />L- Chest42&quot; Length 28&quot;<br />\r\n<img alt=\"🔶\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t70/1/16/1f536.png\" />XL- Chest 44&quot; Length 29&quot;<br />\r\n<img alt=\"🔶\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t70/1/16/1f536.png\" />XXL-Chest 46&quot; Length 30&quot;<br />\r\n<img alt=\"🔶\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t70/1/16/1f536.png\" />3XL-Chest 50&quot; Length 30&quot;<br />\r\n<img alt=\"🔶\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t70/1/16/1f536.png\" />4XL- chest 54&quot; Length 30&quot;</p>\r\n<gdiv></gdiv>', '', NULL, './admin/product_images/1605034838_polo_full_sleeve_t-shirt.jpg', './admin/product_big_images/1605034838_polo_full_sleeve_t-shirt.jpg', 0, NULL, 0, '2020-11-11 00:00:38', '2021-01-26 12:26:52'),
(129, 10, 62, 3, 5, 'Celio Men\'s Shirt', 'MEN-ARO-CEL-00129', NULL, NULL, NULL, NULL, '<p>☑️ Premium Quality Full Sleeve Shirts☑️<br />\r\n☑️100% ORIGINAL☑️<br />\r\n☑️ Export shirt&#39;s☑️</p>\r\n\r\n<p><img alt=\"🔶\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t70/1/16/1f536.png\" />S- Chest 38&quot;<br />\r\n<img alt=\"🔶\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t70/1/16/1f536.png\" />M- Chest 40&quot;<br />\r\n<img alt=\"🔶\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t70/1/16/1f536.png\" />L- Chest42&quot;<br />\r\n<img alt=\"🔶\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t70/1/16/1f536.png\" />XL- Chest 44&quot;<br />\r\n<img alt=\"🔶\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t70/1/16/1f536.png\" />XXL-Chest 46&quot;</p>', '', NULL, './admin/product_images/1605065543_celio_men\'s_shirt.jpg', './admin/product_big_images/1605035206_celio_men\'s_shirt.jpg', 0, NULL, 0, '2020-11-11 00:06:46', '2021-02-05 09:51:55');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `model`, `origin`, `serial_imei`, `weight`, `long_description`, `short_description`, `video_url`, `image`, `big_image`, `status`, `sell_count`, `sell_qty`, `created_at`, `updated_at`) VALUES
(130, 10, 56, 4, 5, 'Nice Leather Wallet', 'BB - 5562601', NULL, NULL, NULL, NULL, '<p>Nice Leather Wallet</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-3px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1612501610.jpg', './admin/product_big_images/1612501610.jpg', 1, NULL, 0, '2021-02-05 10:01:47', '2021-02-23 13:14:18'),
(131, 10, 76, 60, 18, 'Stylish Mens Sneaker', 'BB - 7660466', NULL, NULL, NULL, NULL, '<p>সরাসরি চীন থেকে আমদানীকৃত সুপার প্রিমিয়াম কোয়ালিটির <img alt=\"👟\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t9d/1/16/1f45f.png\" style=\"height:16px; width:16px\" /> স্নিকার্স (জুতা)।</p>\r\n\r\n<p>স্টাইলে<img alt=\"👟\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t9d/1/16/1f45f.png\" style=\"height:16px; width:16px\" /><img alt=\"⛹️‍♂️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tb0/1/16/26f9_200d_2642.png\" style=\"height:16px; width:16px\" /><img alt=\"🚶‍♂️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t92/1/16/1f6b6_200d_2642.png\" style=\"height:16px; width:16px\" />থাকুন এক ধাপ <img alt=\"👟\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t9d/1/16/1f45f.png\" style=\"height:16px; width:16px\" />এগিয়ে।</p>\r\n\r\n<p>সাইজঃ ৪০, ৪১, ৪২, ৪৩, ৪৪ এবং ৪৫ = এ্যাপেক্স ও বাটা</p>\r\n\r\n<p>(এ্যাপেক্স ও বাটার সাইজ ও আমাদের পণ্যের সাইজ একই)</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-18px; position:absolute; top:38px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '', NULL, './admin/product_images/1615378495.webp', './admin/product_big_images/1615378495.webp', 1, NULL, 0, '2021-03-08 10:55:54', '2021-03-12 23:22:43'),
(132, 10, 77, 60, 18, 'Stylish Loffer', 'BB-7775771', NULL, 'China', NULL, NULL, '<p>2021 Best Mens Stylish Loffer</p>', '', NULL, './admin/product_images/1625918285.jpg', './admin/product_big_images/1625918285.jpg', 1, NULL, 0, '2021-07-10 05:58:06', '2021-07-10 06:27:41'),
(133, 10, 62, 62, 5, 'Polo Shirt', 'BB-6256459', NULL, 'China Fabrics', NULL, NULL, '<p>100 % China Soft Cotton Fabrics.</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:217px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 'Soft Cotton Fabrics.', NULL, './admin/product_images/1626292085.jpg', './admin/product_big_images/1626292085.jpg', 0, NULL, 0, '2021-07-10 10:03:57', '2021-07-14 13:48:08'),
(134, 10, 76, 60, 18, 'Mens Sneaker', 'BB-7663690', NULL, NULL, NULL, NULL, '<p>Nice Mens Stylish Sneaker.</p>', 'Nice Mens Sneaker', NULL, './admin/product_images/1626294266.jpg', './admin/product_big_images/1626294267.jpg', 1, NULL, 0, '2021-07-14 14:21:48', '2021-07-14 14:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `color_id`, `product_id`, `created_at`, `updated_at`) VALUES
(258, 33, 76, '2020-06-21 05:49:53', '2020-06-21 05:49:53'),
(259, 28, 76, '2020-06-21 05:49:53', '2020-06-21 05:49:53'),
(260, 4, 76, '2020-06-21 05:49:53', '2020-06-21 05:49:53'),
(261, 31, 75, '2020-06-21 05:53:58', '2020-06-21 05:53:58'),
(262, 28, 75, '2020-06-21 05:53:58', '2020-06-21 05:53:58'),
(263, 14, 75, '2020-06-21 05:53:58', '2020-06-21 05:53:58'),
(264, 28, 77, '2020-06-21 05:56:04', '2020-06-21 05:56:04'),
(265, 21, 77, '2020-06-21 05:56:04', '2020-06-21 05:56:04'),
(266, 12, 77, '2020-06-21 05:56:04', '2020-06-21 05:56:04'),
(381, 29, 113, '2020-06-24 01:39:14', '2020-06-24 01:39:14'),
(382, 25, 113, '2020-06-24 01:39:14', '2020-06-24 01:39:14'),
(383, 15, 113, '2020-06-24 01:39:14', '2020-06-24 01:39:14'),
(429, 33, 101, '2020-06-24 23:36:25', '2020-06-24 23:36:25'),
(430, 29, 101, '2020-06-24 23:36:25', '2020-06-24 23:36:25'),
(431, 14, 101, '2020-06-24 23:36:25', '2020-06-24 23:36:25'),
(432, 33, 100, '2020-06-24 23:36:47', '2020-06-24 23:36:47'),
(433, 29, 100, '2020-06-24 23:36:47', '2020-06-24 23:36:47'),
(434, 14, 100, '2020-06-24 23:36:47', '2020-06-24 23:36:47'),
(453, 31, 90, '2020-06-24 23:53:01', '2020-06-24 23:53:01'),
(454, 28, 90, '2020-06-24 23:53:01', '2020-06-24 23:53:01'),
(455, 25, 90, '2020-06-24 23:53:01', '2020-06-24 23:53:01'),
(477, 33, 78, '2020-06-24 23:58:03', '2020-06-24 23:58:03'),
(478, 31, 78, '2020-06-24 23:58:03', '2020-06-24 23:58:03'),
(479, 30, 78, '2020-06-24 23:58:03', '2020-06-24 23:58:03'),
(515, 33, 69, '2020-06-25 00:04:15', '2020-06-25 00:04:15'),
(516, 14, 69, '2020-06-25 00:04:15', '2020-06-25 00:04:15'),
(517, 13, 69, '2020-06-25 00:04:15', '2020-06-25 00:04:15'),
(527, 19, 65, '2020-06-25 00:06:06', '2020-06-25 00:06:06'),
(528, 14, 65, '2020-06-25 00:06:06', '2020-06-25 00:06:06'),
(529, 12, 65, '2020-06-25 00:06:07', '2020-06-25 00:06:07'),
(554, 33, 61, '2020-06-25 00:10:58', '2020-06-25 00:10:58'),
(555, 19, 61, '2020-06-25 00:10:58', '2020-06-25 00:10:58'),
(556, 13, 61, '2020-06-25 00:10:58', '2020-06-25 00:10:58'),
(557, 34, 62, '2020-06-25 00:11:40', '2020-06-25 00:11:40'),
(558, 33, 62, '2020-06-25 00:11:40', '2020-06-25 00:11:40'),
(559, 14, 62, '2020-06-25 00:11:40', '2020-06-25 00:11:40'),
(560, 31, 63, '2020-06-25 00:12:06', '2020-06-25 00:12:06'),
(561, 15, 63, '2020-06-25 00:12:07', '2020-06-25 00:12:07'),
(562, 14, 63, '2020-06-25 00:12:07', '2020-06-25 00:12:07'),
(596, 31, 42, '2020-06-25 00:17:51', '2020-06-25 00:17:51'),
(597, 29, 42, '2020-06-25 00:17:51', '2020-06-25 00:17:51'),
(598, 24, 42, '2020-06-25 00:17:51', '2020-06-25 00:17:51'),
(605, 33, 39, '2020-06-25 00:19:04', '2020-06-25 00:19:04'),
(606, 31, 39, '2020-06-25 00:19:04', '2020-06-25 00:19:04'),
(607, 15, 39, '2020-06-25 00:19:05', '2020-06-25 00:19:05'),
(608, 33, 38, '2020-06-25 00:19:26', '2020-06-25 00:19:26'),
(609, 25, 38, '2020-06-25 00:19:26', '2020-06-25 00:19:26'),
(610, 15, 38, '2020-06-25 00:19:26', '2020-06-25 00:19:26'),
(617, 33, 35, '2020-06-25 00:20:27', '2020-06-25 00:20:27'),
(618, 31, 35, '2020-06-25 00:20:27', '2020-06-25 00:20:27'),
(619, 25, 35, '2020-06-25 00:20:27', '2020-06-25 00:20:27'),
(632, 31, 30, '2020-06-25 00:22:19', '2020-06-25 00:22:19'),
(633, 25, 30, '2020-06-25 00:22:19', '2020-06-25 00:22:19'),
(634, 19, 30, '2020-06-25 00:22:19', '2020-06-25 00:22:19'),
(635, 31, 29, '2020-06-25 00:22:58', '2020-06-25 00:22:58'),
(636, 25, 29, '2020-06-25 00:22:58', '2020-06-25 00:22:58'),
(637, 15, 29, '2020-06-25 00:22:58', '2020-06-25 00:22:58'),
(638, 31, 28, '2020-06-25 00:23:22', '2020-06-25 00:23:22'),
(639, 28, 28, '2020-06-25 00:23:22', '2020-06-25 00:23:22'),
(640, 3, 28, '2020-06-25 00:23:22', '2020-06-25 00:23:22'),
(641, 31, 27, '2020-06-25 00:23:50', '2020-06-25 00:23:50'),
(642, 25, 27, '2020-06-25 00:23:50', '2020-06-25 00:23:50'),
(643, 19, 27, '2020-06-25 00:23:50', '2020-06-25 00:23:50'),
(644, 31, 26, '2020-06-25 00:24:15', '2020-06-25 00:24:15'),
(645, 24, 26, '2020-06-25 00:24:15', '2020-06-25 00:24:15'),
(646, 3, 26, '2020-06-25 00:24:15', '2020-06-25 00:24:15'),
(647, 31, 25, '2020-06-25 00:24:47', '2020-06-25 00:24:47'),
(648, 28, 25, '2020-06-25 00:24:47', '2020-06-25 00:24:47'),
(649, 24, 25, '2020-06-25 00:24:47', '2020-06-25 00:24:47'),
(653, 34, 23, '2020-06-25 00:25:38', '2020-06-25 00:25:38'),
(654, 31, 23, '2020-06-25 00:25:38', '2020-06-25 00:25:38'),
(655, 19, 23, '2020-06-25 00:25:38', '2020-06-25 00:25:38'),
(656, 31, 22, '2020-06-25 00:26:01', '2020-06-25 00:26:01'),
(657, 30, 22, '2020-06-25 00:26:01', '2020-06-25 00:26:01'),
(658, 27, 22, '2020-06-25 00:26:01', '2020-06-25 00:26:01'),
(659, 31, 21, '2020-06-25 00:26:25', '2020-06-25 00:26:25'),
(660, 19, 21, '2020-06-25 00:26:25', '2020-06-25 00:26:25'),
(661, 15, 21, '2020-06-25 00:26:25', '2020-06-25 00:26:25'),
(662, 38, 20, '2020-06-25 00:26:48', '2020-06-25 00:26:48'),
(663, 34, 20, '2020-06-25 00:26:48', '2020-06-25 00:26:48'),
(664, 15, 20, '2020-06-25 00:26:48', '2020-06-25 00:26:48'),
(680, 31, 14, '2020-06-25 00:39:39', '2020-06-25 00:39:39'),
(681, 30, 14, '2020-06-25 00:39:39', '2020-06-25 00:39:39'),
(682, 28, 14, '2020-06-25 00:39:39', '2020-06-25 00:39:39'),
(683, 32, 4, '2020-06-25 00:40:07', '2020-06-25 00:40:07'),
(684, 28, 4, '2020-06-25 00:40:07', '2020-06-25 00:40:07'),
(685, 19, 4, '2020-06-25 00:40:07', '2020-06-25 00:40:07'),
(689, 33, 6, '2020-06-25 00:40:57', '2020-06-25 00:40:57'),
(690, 25, 6, '2020-06-25 00:40:57', '2020-06-25 00:40:57'),
(691, 13, 6, '2020-06-25 00:40:57', '2020-06-25 00:40:57'),
(692, 32, 7, '2020-06-25 00:41:27', '2020-06-25 00:41:27'),
(693, 31, 7, '2020-06-25 00:41:27', '2020-06-25 00:41:27'),
(694, 13, 7, '2020-06-25 00:41:27', '2020-06-25 00:41:27'),
(695, 26, 8, '2020-06-25 00:41:46', '2020-06-25 00:41:46'),
(696, 19, 8, '2020-06-25 00:41:46', '2020-06-25 00:41:46'),
(697, 14, 8, '2020-06-25 00:41:46', '2020-06-25 00:41:46'),
(698, 29, 9, '2020-06-25 00:42:09', '2020-06-25 00:42:09'),
(699, 26, 9, '2020-06-25 00:42:09', '2020-06-25 00:42:09'),
(700, 14, 9, '2020-06-25 00:42:09', '2020-06-25 00:42:09'),
(701, 31, 10, '2020-06-25 00:42:34', '2020-06-25 00:42:34'),
(702, 28, 10, '2020-06-25 00:42:34', '2020-06-25 00:42:34'),
(703, 26, 10, '2020-06-25 00:42:34', '2020-06-25 00:42:34'),
(704, 33, 11, '2020-06-25 00:43:02', '2020-06-25 00:43:02'),
(705, 28, 11, '2020-06-25 00:43:02', '2020-06-25 00:43:02'),
(706, 12, 11, '2020-06-25 00:43:02', '2020-06-25 00:43:02'),
(707, 33, 12, '2020-06-25 00:44:06', '2020-06-25 00:44:06'),
(708, 28, 12, '2020-06-25 00:44:06', '2020-06-25 00:44:06'),
(709, 25, 12, '2020-06-25 00:44:06', '2020-06-25 00:44:06'),
(710, 33, 13, '2020-06-25 00:44:28', '2020-06-25 00:44:28'),
(711, 28, 13, '2020-06-25 00:44:28', '2020-06-25 00:44:28'),
(712, 19, 13, '2020-06-25 00:44:28', '2020-06-25 00:44:28'),
(713, 34, 2, '2020-06-25 00:44:55', '2020-06-25 00:44:55'),
(714, 19, 2, '2020-06-25 00:44:55', '2020-06-25 00:44:55'),
(715, 12, 2, '2020-06-25 00:44:55', '2020-06-25 00:44:55'),
(746, 33, 116, '2020-08-17 01:40:44', '2020-08-17 01:40:44'),
(747, 29, 116, '2020-08-17 01:40:44', '2020-08-17 01:40:44'),
(748, 24, 116, '2020-08-17 01:40:44', '2020-08-17 01:40:44'),
(752, 31, 114, '2020-08-17 01:41:38', '2020-08-17 01:41:38'),
(753, 28, 114, '2020-08-17 01:41:38', '2020-08-17 01:41:38'),
(754, 15, 114, '2020-08-17 01:41:38', '2020-08-17 01:41:38'),
(755, 33, 112, '2020-08-17 01:41:52', '2020-08-17 01:41:52'),
(756, 29, 112, '2020-08-17 01:41:52', '2020-08-17 01:41:52'),
(757, 24, 112, '2020-08-17 01:41:52', '2020-08-17 01:41:52'),
(767, 20, 108, '2020-08-17 01:42:46', '2020-08-17 01:42:46'),
(768, 19, 108, '2020-08-17 01:42:46', '2020-08-17 01:42:46'),
(769, 18, 108, '2020-08-17 01:42:46', '2020-08-17 01:42:46'),
(770, 30, 107, '2020-08-17 01:43:00', '2020-08-17 01:43:00'),
(771, 29, 107, '2020-08-17 01:43:00', '2020-08-17 01:43:00'),
(772, 14, 107, '2020-08-17 01:43:00', '2020-08-17 01:43:00'),
(773, 33, 106, '2020-08-17 01:44:32', '2020-08-17 01:44:32'),
(774, 27, 106, '2020-08-17 01:44:32', '2020-08-17 01:44:32'),
(775, 23, 106, '2020-08-17 01:44:32', '2020-08-17 01:44:32'),
(776, 33, 99, '2020-08-17 01:44:49', '2020-08-17 01:44:49'),
(777, 17, 99, '2020-08-17 01:44:50', '2020-08-17 01:44:50'),
(778, 14, 99, '2020-08-17 01:44:50', '2020-08-17 01:44:50'),
(782, 33, 105, '2020-08-17 01:45:26', '2020-08-17 01:45:26'),
(783, 27, 105, '2020-08-17 01:45:26', '2020-08-17 01:45:26'),
(784, 14, 105, '2020-08-17 01:45:26', '2020-08-17 01:45:26'),
(788, 37, 87, '2020-08-17 01:46:01', '2020-08-17 01:46:01'),
(789, 31, 87, '2020-08-17 01:46:02', '2020-08-17 01:46:02'),
(790, 30, 87, '2020-08-17 01:46:02', '2020-08-17 01:46:02'),
(791, 28, 88, '2020-08-17 01:46:19', '2020-08-17 01:46:19'),
(792, 15, 88, '2020-08-17 01:46:19', '2020-08-17 01:46:19'),
(793, 12, 88, '2020-08-17 01:46:19', '2020-08-17 01:46:19'),
(797, 33, 95, '2020-08-17 01:46:55', '2020-08-17 01:46:55'),
(798, 30, 95, '2020-08-17 01:46:55', '2020-08-17 01:46:55'),
(799, 28, 95, '2020-08-17 01:46:55', '2020-08-17 01:46:55'),
(800, 34, 94, '2020-08-17 01:47:10', '2020-08-17 01:47:10'),
(801, 30, 94, '2020-08-17 01:47:10', '2020-08-17 01:47:10'),
(802, 14, 94, '2020-08-17 01:47:10', '2020-08-17 01:47:10'),
(803, 34, 93, '2020-08-17 01:47:26', '2020-08-17 01:47:26'),
(804, 31, 93, '2020-08-17 01:47:26', '2020-08-17 01:47:26'),
(805, 28, 93, '2020-08-17 01:47:26', '2020-08-17 01:47:26'),
(806, 24, 92, '2020-08-17 01:47:44', '2020-08-17 01:47:44'),
(807, 15, 92, '2020-08-17 01:47:44', '2020-08-17 01:47:44'),
(808, 3, 92, '2020-08-17 01:47:45', '2020-08-17 01:47:45'),
(809, 33, 91, '2020-08-17 01:48:02', '2020-08-17 01:48:02'),
(810, 19, 91, '2020-08-17 01:48:02', '2020-08-17 01:48:02'),
(811, 12, 91, '2020-08-17 01:48:02', '2020-08-17 01:48:02'),
(812, 31, 89, '2020-08-17 01:48:20', '2020-08-17 01:48:20'),
(813, 19, 89, '2020-08-17 01:48:20', '2020-08-17 01:48:20'),
(814, 18, 89, '2020-08-17 01:48:21', '2020-08-17 01:48:21'),
(818, 33, 79, '2020-08-17 01:48:53', '2020-08-17 01:48:53'),
(819, 28, 79, '2020-08-17 01:48:53', '2020-08-17 01:48:53'),
(820, 12, 79, '2020-08-17 01:48:53', '2020-08-17 01:48:53'),
(821, 33, 80, '2020-08-17 01:49:09', '2020-08-17 01:49:09'),
(822, 28, 80, '2020-08-17 01:49:09', '2020-08-17 01:49:09'),
(823, 12, 80, '2020-08-17 01:49:09', '2020-08-17 01:49:09'),
(824, 33, 81, '2020-08-17 01:49:51', '2020-08-17 01:49:51'),
(825, 17, 81, '2020-08-17 01:49:51', '2020-08-17 01:49:51'),
(826, 12, 81, '2020-08-17 01:49:51', '2020-08-17 01:49:51'),
(827, 31, 84, '2020-08-17 01:50:08', '2020-08-17 01:50:08'),
(828, 28, 84, '2020-08-17 01:50:08', '2020-08-17 01:50:08'),
(829, 14, 84, '2020-08-17 01:50:08', '2020-08-17 01:50:08'),
(830, 33, 82, '2020-08-17 01:50:23', '2020-08-17 01:50:23'),
(831, 21, 82, '2020-08-17 01:50:23', '2020-08-17 01:50:23'),
(832, 12, 82, '2020-08-17 01:50:23', '2020-08-17 01:50:23'),
(833, 30, 83, '2020-08-17 01:50:39', '2020-08-17 01:50:39'),
(834, 25, 83, '2020-08-17 01:50:39', '2020-08-17 01:50:39'),
(835, 12, 83, '2020-08-17 01:50:39', '2020-08-17 01:50:39'),
(836, 31, 85, '2020-08-17 01:50:55', '2020-08-17 01:50:55'),
(837, 27, 85, '2020-08-17 01:50:55', '2020-08-17 01:50:55'),
(838, 19, 85, '2020-08-17 01:50:55', '2020-08-17 01:50:55'),
(839, 31, 86, '2020-08-17 01:51:11', '2020-08-17 01:51:11'),
(840, 15, 86, '2020-08-17 01:51:11', '2020-08-17 01:51:11'),
(841, 12, 86, '2020-08-17 01:51:11', '2020-08-17 01:51:11'),
(842, 34, 64, '2020-08-17 01:51:30', '2020-08-17 01:51:30'),
(843, 33, 64, '2020-08-17 01:51:30', '2020-08-17 01:51:30'),
(844, 26, 64, '2020-08-17 01:51:30', '2020-08-17 01:51:30'),
(845, 33, 66, '2020-08-17 01:51:44', '2020-08-17 01:51:44'),
(846, 14, 66, '2020-08-17 01:51:44', '2020-08-17 01:51:44'),
(847, 13, 66, '2020-08-17 01:51:44', '2020-08-17 01:51:44'),
(848, 29, 67, '2020-08-17 01:52:00', '2020-08-17 01:52:00'),
(849, 28, 67, '2020-08-17 01:52:01', '2020-08-17 01:52:01'),
(850, 12, 67, '2020-08-17 01:52:01', '2020-08-17 01:52:01'),
(851, 29, 68, '2020-08-17 01:52:18', '2020-08-17 01:52:18'),
(852, 28, 68, '2020-08-17 01:52:18', '2020-08-17 01:52:18'),
(853, 14, 68, '2020-08-17 01:52:18', '2020-08-17 01:52:18'),
(865, 33, 60, '2020-08-17 01:54:01', '2020-08-17 01:54:01'),
(866, 31, 60, '2020-08-17 01:54:01', '2020-08-17 01:54:01'),
(867, 30, 60, '2020-08-17 01:54:01', '2020-08-17 01:54:01'),
(868, 31, 59, '2020-08-17 01:54:47', '2020-08-17 01:54:47'),
(869, 28, 59, '2020-08-17 01:54:47', '2020-08-17 01:54:47'),
(870, 26, 59, '2020-08-17 01:54:47', '2020-08-17 01:54:47'),
(871, 33, 58, '2020-08-17 01:55:06', '2020-08-17 01:55:06'),
(872, 30, 58, '2020-08-17 01:55:06', '2020-08-17 01:55:06'),
(873, 28, 58, '2020-08-17 01:55:06', '2020-08-17 01:55:06'),
(874, 33, 57, '2020-08-17 01:55:21', '2020-08-17 01:55:21'),
(875, 26, 57, '2020-08-17 01:55:21', '2020-08-17 01:55:21'),
(876, 24, 57, '2020-08-17 01:55:21', '2020-08-17 01:55:21'),
(880, 28, 55, '2020-08-17 01:55:56', '2020-08-17 01:55:56'),
(881, 26, 55, '2020-08-17 01:55:56', '2020-08-17 01:55:56'),
(882, 13, 55, '2020-08-17 01:55:56', '2020-08-17 01:55:56'),
(883, 33, 54, '2020-08-17 01:56:11', '2020-08-17 01:56:11'),
(884, 28, 54, '2020-08-17 01:56:11', '2020-08-17 01:56:11'),
(885, 13, 54, '2020-08-17 01:56:11', '2020-08-17 01:56:11'),
(886, 33, 44, '2020-08-17 01:56:27', '2020-08-17 01:56:27'),
(887, 24, 44, '2020-08-17 01:56:27', '2020-08-17 01:56:27'),
(888, 15, 44, '2020-08-17 01:56:27', '2020-08-17 01:56:27'),
(907, 28, 51, '2020-08-17 01:58:16', '2020-08-17 01:58:16'),
(908, 26, 51, '2020-08-17 01:58:16', '2020-08-17 01:58:16'),
(909, 13, 51, '2020-08-17 01:58:17', '2020-08-17 01:58:17'),
(910, 33, 52, '2020-08-17 01:58:34', '2020-08-17 01:58:34'),
(911, 28, 52, '2020-08-17 01:58:34', '2020-08-17 01:58:34'),
(912, 13, 52, '2020-08-17 01:58:34', '2020-08-17 01:58:34'),
(913, 31, 53, '2020-08-17 01:58:52', '2020-08-17 01:58:52'),
(914, 29, 53, '2020-08-17 01:58:52', '2020-08-17 01:58:52'),
(915, 26, 53, '2020-08-17 01:58:53', '2020-08-17 01:58:53'),
(919, 33, 36, '2020-08-17 01:59:32', '2020-08-17 01:59:32'),
(920, 31, 36, '2020-08-17 01:59:32', '2020-08-17 01:59:32'),
(921, 28, 36, '2020-08-17 01:59:32', '2020-08-17 01:59:32'),
(922, 31, 37, '2020-08-17 01:59:47', '2020-08-17 01:59:47'),
(923, 28, 37, '2020-08-17 01:59:47', '2020-08-17 01:59:47'),
(924, 15, 37, '2020-08-17 01:59:47', '2020-08-17 01:59:47'),
(925, 31, 41, '2020-08-17 02:00:04', '2020-08-17 02:00:04'),
(926, 30, 41, '2020-08-17 02:00:05', '2020-08-17 02:00:05'),
(927, 28, 41, '2020-08-17 02:00:05', '2020-08-17 02:00:05'),
(928, 31, 40, '2020-08-17 02:00:23', '2020-08-17 02:00:23'),
(929, 28, 40, '2020-08-17 02:00:24', '2020-08-17 02:00:24'),
(930, 19, 40, '2020-08-17 02:00:24', '2020-08-17 02:00:24'),
(931, 33, 43, '2020-08-17 02:00:40', '2020-08-17 02:00:40'),
(932, 31, 43, '2020-08-17 02:00:40', '2020-08-17 02:00:40'),
(933, 8, 43, '2020-08-17 02:00:40', '2020-08-17 02:00:40'),
(946, 28, 1, '2020-08-17 02:02:44', '2020-08-17 02:02:44'),
(947, 15, 1, '2020-08-17 02:02:45', '2020-08-17 02:02:45'),
(948, 12, 1, '2020-08-17 02:02:45', '2020-08-17 02:02:45'),
(952, 28, 16, '2020-08-17 02:03:19', '2020-08-17 02:03:19'),
(953, 18, 16, '2020-08-17 02:03:19', '2020-08-17 02:03:19'),
(954, 12, 16, '2020-08-17 02:03:19', '2020-08-17 02:03:19'),
(955, 28, 17, '2020-08-17 02:03:37', '2020-08-17 02:03:37'),
(956, 15, 17, '2020-08-17 02:03:37', '2020-08-17 02:03:37'),
(957, 12, 17, '2020-08-17 02:03:37', '2020-08-17 02:03:37'),
(958, 31, 18, '2020-08-17 02:03:53', '2020-08-17 02:03:53'),
(959, 28, 18, '2020-08-17 02:03:53', '2020-08-17 02:03:53'),
(960, 12, 18, '2020-08-17 02:03:53', '2020-08-17 02:03:53'),
(961, 31, 19, '2020-08-17 02:04:33', '2020-08-17 02:04:33'),
(962, 28, 19, '2020-08-17 02:04:34', '2020-08-17 02:04:34'),
(963, 12, 19, '2020-08-17 02:04:34', '2020-08-17 02:04:34'),
(964, 25, 117, '2020-08-21 00:38:05', '2020-08-21 00:38:05'),
(965, 24, 117, '2020-08-21 00:38:05', '2020-08-21 00:38:05'),
(984, 28, 118, '2020-09-09 23:47:32', '2020-09-09 23:47:32'),
(985, 19, 118, '2020-09-09 23:47:32', '2020-09-09 23:47:32'),
(986, 15, 118, '2020-09-09 23:47:32', '2020-09-09 23:47:32'),
(987, 40, 119, '2020-09-09 23:55:38', '2020-09-09 23:55:38'),
(988, 39, 119, '2020-09-09 23:55:38', '2020-09-09 23:55:38'),
(989, 37, 119, '2020-09-09 23:55:39', '2020-09-09 23:55:39'),
(992, 40, 120, '2020-09-10 00:04:50', '2020-09-10 00:04:50'),
(993, 39, 120, '2020-09-10 00:04:50', '2020-09-10 00:04:50'),
(994, 40, 121, '2020-09-10 00:10:19', '2020-09-10 00:10:19'),
(995, 39, 121, '2020-09-10 00:10:19', '2020-09-10 00:10:19'),
(996, 40, 122, '2020-09-10 00:15:16', '2020-09-10 00:15:16'),
(997, 38, 122, '2020-09-10 00:15:16', '2020-09-10 00:15:16'),
(998, 40, 123, '2020-09-10 00:31:09', '2020-09-10 00:31:09'),
(999, 38, 123, '2020-09-10 00:31:09', '2020-09-10 00:31:09'),
(1000, 40, 124, '2020-09-10 01:05:30', '2020-09-10 01:05:30'),
(1002, 28, 126, '2020-09-20 11:13:18', '2020-09-20 11:13:18'),
(1003, 15, 126, '2020-09-20 11:13:18', '2020-09-20 11:13:18'),
(1004, 31, 127, '2020-11-10 23:53:57', '2020-11-10 23:53:57'),
(1005, 28, 127, '2020-11-10 23:53:57', '2020-11-10 23:53:57'),
(1006, 24, 128, '2020-11-11 00:00:38', '2020-11-11 00:00:38'),
(1013, 31, 24, '2021-01-26 12:21:13', '2021-01-26 12:21:13'),
(1014, 28, 24, '2021-01-26 12:21:13', '2021-01-26 12:21:13'),
(1015, 24, 24, '2021-01-26 12:21:13', '2021-01-26 12:21:13'),
(1016, 28, 5, '2021-01-26 12:33:48', '2021-01-26 12:33:48'),
(1017, 14, 5, '2021-01-26 12:33:48', '2021-01-26 12:33:48'),
(1018, 12, 5, '2021-01-26 12:33:48', '2021-01-26 12:33:48'),
(1019, 30, 129, '2021-02-05 09:51:55', '2021-02-05 09:51:55'),
(1022, 31, 15, '2021-02-08 19:50:54', '2021-02-08 19:50:54'),
(1023, 28, 15, '2021-02-08 19:50:54', '2021-02-08 19:50:54'),
(1024, 12, 15, '2021-02-08 19:50:54', '2021-02-08 19:50:54'),
(1028, 31, 34, '2021-02-11 11:30:57', '2021-02-11 11:30:57'),
(1029, 20, 34, '2021-02-11 11:30:57', '2021-02-11 11:30:57'),
(1030, 19, 34, '2021-02-11 11:30:57', '2021-02-11 11:30:57'),
(1031, 31, 33, '2021-02-11 11:31:16', '2021-02-11 11:31:16'),
(1032, 28, 33, '2021-02-11 11:31:16', '2021-02-11 11:31:16'),
(1033, 3, 33, '2021-02-11 11:31:16', '2021-02-11 11:31:16'),
(1034, 28, 32, '2021-02-11 11:31:52', '2021-02-11 11:31:52'),
(1035, 24, 32, '2021-02-11 11:31:52', '2021-02-11 11:31:52'),
(1036, 20, 32, '2021-02-11 11:31:52', '2021-02-11 11:31:52'),
(1037, 28, 31, '2021-02-11 11:32:12', '2021-02-11 11:32:12'),
(1038, 24, 31, '2021-02-11 11:32:12', '2021-02-11 11:32:12'),
(1039, 19, 31, '2021-02-11 11:32:12', '2021-02-11 11:32:12'),
(1040, 30, 45, '2021-02-11 11:46:32', '2021-02-11 11:46:32'),
(1041, 29, 45, '2021-02-11 11:46:32', '2021-02-11 11:46:32'),
(1042, 26, 45, '2021-02-11 11:46:32', '2021-02-11 11:46:32'),
(1043, 34, 46, '2021-02-11 11:46:54', '2021-02-11 11:46:54'),
(1044, 26, 46, '2021-02-11 11:46:54', '2021-02-11 11:46:54'),
(1045, 19, 46, '2021-02-11 11:46:54', '2021-02-11 11:46:54'),
(1046, 33, 47, '2021-02-11 11:48:24', '2021-02-11 11:48:24'),
(1047, 29, 47, '2021-02-11 11:48:24', '2021-02-11 11:48:24'),
(1048, 26, 47, '2021-02-11 11:48:24', '2021-02-11 11:48:24'),
(1049, 34, 48, '2021-02-11 11:48:50', '2021-02-11 11:48:50'),
(1050, 31, 48, '2021-02-11 11:48:50', '2021-02-11 11:48:50'),
(1051, 19, 48, '2021-02-11 11:48:50', '2021-02-11 11:48:50'),
(1055, 33, 50, '2021-02-11 11:49:50', '2021-02-11 11:49:50'),
(1056, 26, 50, '2021-02-11 11:49:50', '2021-02-11 11:49:50'),
(1057, 13, 50, '2021-02-11 11:49:50', '2021-02-11 11:49:50'),
(1064, 28, 73, '2021-02-11 13:13:40', '2021-02-11 13:13:40'),
(1065, 15, 73, '2021-02-11 13:13:40', '2021-02-11 13:13:40'),
(1066, 12, 73, '2021-02-11 13:13:40', '2021-02-11 13:13:40'),
(1067, 28, 72, '2021-02-11 13:14:26', '2021-02-11 13:14:26'),
(1068, 15, 72, '2021-02-11 13:14:26', '2021-02-11 13:14:26'),
(1069, 12, 72, '2021-02-11 13:14:26', '2021-02-11 13:14:26'),
(1073, 32, 71, '2021-02-11 13:15:17', '2021-02-11 13:15:17'),
(1074, 28, 71, '2021-02-11 13:15:17', '2021-02-11 13:15:17'),
(1075, 15, 71, '2021-02-11 13:15:17', '2021-02-11 13:15:17'),
(1076, 28, 70, '2021-02-11 13:15:38', '2021-02-11 13:15:38'),
(1077, 12, 70, '2021-02-11 13:15:38', '2021-02-11 13:15:38'),
(1078, 28, 98, '2021-02-11 13:18:37', '2021-02-11 13:18:37'),
(1079, 14, 98, '2021-02-11 13:18:37', '2021-02-11 13:18:37'),
(1080, 3, 98, '2021-02-11 13:18:37', '2021-02-11 13:18:37'),
(1081, 33, 97, '2021-02-11 13:22:15', '2021-02-11 13:22:15'),
(1082, 28, 97, '2021-02-11 13:22:15', '2021-02-11 13:22:15'),
(1083, 24, 97, '2021-02-11 13:22:15', '2021-02-11 13:22:15'),
(1084, 34, 96, '2021-02-11 13:22:39', '2021-02-11 13:22:39'),
(1085, 30, 96, '2021-02-11 13:22:39', '2021-02-11 13:22:39'),
(1086, 14, 96, '2021-02-11 13:22:39', '2021-02-11 13:22:39'),
(1087, 33, 104, '2021-02-11 14:31:25', '2021-02-11 14:31:25'),
(1088, 31, 104, '2021-02-11 14:31:25', '2021-02-11 14:31:25'),
(1089, 29, 104, '2021-02-11 14:31:25', '2021-02-11 14:31:25'),
(1090, 33, 103, '2021-02-11 14:35:51', '2021-02-11 14:35:51'),
(1091, 30, 103, '2021-02-11 14:35:51', '2021-02-11 14:35:51'),
(1092, 13, 103, '2021-02-11 14:35:51', '2021-02-11 14:35:51'),
(1093, 33, 102, '2021-02-11 14:37:03', '2021-02-11 14:37:03'),
(1094, 30, 102, '2021-02-11 14:37:03', '2021-02-11 14:37:03'),
(1095, 14, 102, '2021-02-11 14:37:03', '2021-02-11 14:37:03'),
(1099, 31, 110, '2021-02-11 15:00:17', '2021-02-11 15:00:17'),
(1100, 14, 110, '2021-02-11 15:00:17', '2021-02-11 15:00:17'),
(1101, 3, 110, '2021-02-11 15:00:17', '2021-02-11 15:00:17'),
(1105, 19, 130, '2021-02-23 13:14:18', '2021-02-23 13:14:18'),
(1106, 33, 115, '2021-02-23 13:16:53', '2021-02-23 13:16:53'),
(1107, 31, 115, '2021-02-23 13:16:53', '2021-02-23 13:16:53'),
(1108, 30, 115, '2021-02-23 13:16:53', '2021-02-23 13:16:53'),
(1109, 40, 125, '2021-02-23 13:17:58', '2021-02-23 13:17:58'),
(1110, 33, 56, '2021-02-23 13:18:50', '2021-02-23 13:18:50'),
(1111, 24, 56, '2021-02-23 13:18:50', '2021-02-23 13:18:50'),
(1112, 13, 56, '2021-02-23 13:18:50', '2021-02-23 13:18:50'),
(1113, 28, 74, '2021-02-23 13:19:32', '2021-02-23 13:19:32'),
(1114, 15, 74, '2021-02-23 13:19:32', '2021-02-23 13:19:32'),
(1115, 12, 74, '2021-02-23 13:19:32', '2021-02-23 13:19:32'),
(1116, 34, 109, '2021-02-23 13:20:08', '2021-02-23 13:20:08'),
(1117, 20, 109, '2021-02-23 13:20:08', '2021-02-23 13:20:08'),
(1118, 18, 109, '2021-02-23 13:20:08', '2021-02-23 13:20:08'),
(1119, 31, 49, '2021-02-23 13:58:05', '2021-02-23 13:58:05'),
(1120, 28, 49, '2021-02-23 13:58:05', '2021-02-23 13:58:05'),
(1121, 14, 49, '2021-02-23 13:58:05', '2021-02-23 13:58:05'),
(1122, 31, 111, '2021-02-23 13:58:50', '2021-02-23 13:58:50'),
(1123, 18, 111, '2021-02-23 13:58:50', '2021-02-23 13:58:50'),
(1124, 4, 111, '2021-02-23 13:58:50', '2021-02-23 13:58:50'),
(1128, 31, 131, '2021-03-10 17:14:55', '2021-03-10 17:14:55'),
(1129, 28, 131, '2021-03-10 17:14:55', '2021-03-10 17:14:55'),
(1130, 24, 131, '2021-03-10 17:14:55', '2021-03-10 17:14:55'),
(1131, 29, 132, '2021-07-10 05:58:07', '2021-07-10 05:58:07'),
(1132, 28, 132, '2021-07-10 05:58:07', '2021-07-10 05:58:07'),
(1133, 22, 132, '2021-07-10 05:58:07', '2021-07-10 05:58:07'),
(1155, 28, 133, '2021-07-14 13:48:07', '2021-07-14 13:48:07'),
(1156, 27, 133, '2021-07-14 13:48:07', '2021-07-14 13:48:07'),
(1157, 24, 133, '2021-07-14 13:48:07', '2021-07-14 13:48:07'),
(1161, 33, 134, '2021-07-14 14:24:30', '2021-07-14 14:24:30'),
(1162, 30, 134, '2021-07-14 14:24:30', '2021-07-14 14:24:30'),
(1163, 28, 134, '2021-07-14 14:24:30', '2021-07-14 14:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `product_deliveries`
--

CREATE TABLE `product_deliveries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_details_id` int(11) NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` smallint(6) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `delivery_vendor_id` int(11) DEFAULT NULL,
  `report` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_deliveries`
--

INSERT INTO `product_deliveries` (`id`, `order_id`, `order_details_id`, `customer_name`, `customer_email`, `customer_phone`, `customer_address`, `product_name`, `product_size`, `product_color`, `product_quantity`, `supplier_id`, `delivery_vendor_id`, `report`, `status`, `created_at`, `updated_at`) VALUES
(4, 38, 19, 'mainul', 'monu@monu.net', '012344567890', 'qwe', 'Sony Bravia 32 Inch Led Smart Tv', 'Standard', 'Silver', 1, 7, 1, 'Ok', 1, '2020-12-15 01:31:09', '2020-12-15 01:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_q_rcodes`
--

CREATE TABLE `product_q_rcodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_q_rcodes`
--

INSERT INTO `product_q_rcodes` (`id`, `category_id`, `sub_category_id`, `product_id`, `code`, `color_name`, `size_name`, `supplier_id`, `created_at`, `updated_at`) VALUES
(4, 11, 71, 74, '0JgygW', 'Silver', 'Standard', 7, '2020-12-15 00:47:31', '2020-12-15 00:47:31'),
(5, 11, 71, 74, 'bmFSJm', 'Silver', 'Standard', 7, '2020-12-15 00:47:31', '2020-12-15 00:47:31'),
(6, 11, 71, 74, 'D9n484', 'Silver', 'Standard', 7, '2020-12-15 00:47:31', '2020-12-15 00:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_reply` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `user_id`, `product_url`, `comment`, `has_reply`, `status`, `created_at`, `updated_at`) VALUES
(5, 23, 44, 'https://www.beshibuy.com/product/product-details/23/Formal-Shirt', 'well', 0, 0, '2020-12-07 00:05:37', '2020-12-07 00:05:37'),
(6, 23, 44, 'https://www.beshibuy.com/product/product-details/23/Formal-Shirt', 'Nice Jaket', 0, 0, '2020-12-07 00:05:51', '2020-12-07 00:08:10'),
(7, 23, 44, 'https://www.beshibuy.com/product/product-details/23/Formal-Shirt', 'Nice Jaket', 1, 1, '2020-12-07 00:07:52', '2020-12-07 00:09:17');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `size_id`, `product_id`, `created_at`, `updated_at`) VALUES
(237, 5, 76, '2020-06-21 05:49:53', '2020-06-21 05:49:53'),
(238, 4, 76, '2020-06-21 05:49:54', '2020-06-21 05:49:54'),
(239, 1, 76, '2020-06-21 05:49:54', '2020-06-21 05:49:54'),
(240, 5, 75, '2020-06-21 05:53:58', '2020-06-21 05:53:58'),
(241, 4, 75, '2020-06-21 05:53:58', '2020-06-21 05:53:58'),
(242, 1, 75, '2020-06-21 05:53:58', '2020-06-21 05:53:58'),
(243, 5, 77, '2020-06-21 05:56:04', '2020-06-21 05:56:04'),
(244, 4, 77, '2020-06-21 05:56:04', '2020-06-21 05:56:04'),
(245, 1, 77, '2020-06-21 05:56:04', '2020-06-21 05:56:04'),
(336, 24, 113, '2020-06-24 01:39:14', '2020-06-24 01:39:14'),
(337, 5, 113, '2020-06-24 01:39:14', '2020-06-24 01:39:14'),
(372, 14, 101, '2020-06-24 23:36:25', '2020-06-24 23:36:25'),
(373, 13, 101, '2020-06-24 23:36:25', '2020-06-24 23:36:25'),
(374, 12, 101, '2020-06-24 23:36:25', '2020-06-24 23:36:25'),
(375, 14, 100, '2020-06-24 23:36:47', '2020-06-24 23:36:47'),
(376, 13, 100, '2020-06-24 23:36:47', '2020-06-24 23:36:47'),
(377, 12, 100, '2020-06-24 23:36:47', '2020-06-24 23:36:47'),
(391, 24, 90, '2020-06-24 23:53:02', '2020-06-24 23:53:02'),
(392, 5, 90, '2020-06-24 23:53:02', '2020-06-24 23:53:02'),
(406, 5, 78, '2020-06-24 23:58:03', '2020-06-24 23:58:03'),
(407, 4, 78, '2020-06-24 23:58:03', '2020-06-24 23:58:03'),
(408, 1, 78, '2020-06-24 23:58:03', '2020-06-24 23:58:03'),
(438, 4, 69, '2020-06-25 00:04:16', '2020-06-25 00:04:16'),
(439, 2, 69, '2020-06-25 00:04:16', '2020-06-25 00:04:16'),
(440, 1, 69, '2020-06-25 00:04:16', '2020-06-25 00:04:16'),
(450, 5, 65, '2020-06-25 00:06:07', '2020-06-25 00:06:07'),
(451, 4, 65, '2020-06-25 00:06:07', '2020-06-25 00:06:07'),
(452, 2, 65, '2020-06-25 00:06:07', '2020-06-25 00:06:07'),
(477, 4, 61, '2020-06-25 00:10:58', '2020-06-25 00:10:58'),
(478, 2, 61, '2020-06-25 00:10:58', '2020-06-25 00:10:58'),
(479, 1, 61, '2020-06-25 00:10:58', '2020-06-25 00:10:58'),
(480, 4, 62, '2020-06-25 00:11:40', '2020-06-25 00:11:40'),
(481, 2, 62, '2020-06-25 00:11:40', '2020-06-25 00:11:40'),
(482, 1, 62, '2020-06-25 00:11:40', '2020-06-25 00:11:40'),
(483, 4, 63, '2020-06-25 00:12:07', '2020-06-25 00:12:07'),
(484, 2, 63, '2020-06-25 00:12:07', '2020-06-25 00:12:07'),
(485, 1, 63, '2020-06-25 00:12:07', '2020-06-25 00:12:07'),
(519, 4, 42, '2020-06-25 00:17:51', '2020-06-25 00:17:51'),
(520, 2, 42, '2020-06-25 00:17:51', '2020-06-25 00:17:51'),
(521, 1, 42, '2020-06-25 00:17:51', '2020-06-25 00:17:51'),
(528, 4, 39, '2020-06-25 00:19:05', '2020-06-25 00:19:05'),
(529, 2, 39, '2020-06-25 00:19:05', '2020-06-25 00:19:05'),
(530, 1, 39, '2020-06-25 00:19:05', '2020-06-25 00:19:05'),
(531, 4, 38, '2020-06-25 00:19:26', '2020-06-25 00:19:26'),
(532, 2, 38, '2020-06-25 00:19:26', '2020-06-25 00:19:26'),
(533, 1, 38, '2020-06-25 00:19:26', '2020-06-25 00:19:26'),
(540, 4, 35, '2020-06-25 00:20:27', '2020-06-25 00:20:27'),
(541, 2, 35, '2020-06-25 00:20:27', '2020-06-25 00:20:27'),
(542, 1, 35, '2020-06-25 00:20:27', '2020-06-25 00:20:27'),
(555, 5, 30, '2020-06-25 00:22:19', '2020-06-25 00:22:19'),
(556, 4, 30, '2020-06-25 00:22:19', '2020-06-25 00:22:19'),
(557, 2, 30, '2020-06-25 00:22:19', '2020-06-25 00:22:19'),
(558, 4, 29, '2020-06-25 00:22:59', '2020-06-25 00:22:59'),
(559, 2, 29, '2020-06-25 00:22:59', '2020-06-25 00:22:59'),
(560, 1, 29, '2020-06-25 00:22:59', '2020-06-25 00:22:59'),
(561, 4, 28, '2020-06-25 00:23:23', '2020-06-25 00:23:23'),
(562, 2, 28, '2020-06-25 00:23:23', '2020-06-25 00:23:23'),
(563, 1, 28, '2020-06-25 00:23:23', '2020-06-25 00:23:23'),
(564, 4, 27, '2020-06-25 00:23:51', '2020-06-25 00:23:51'),
(565, 2, 27, '2020-06-25 00:23:51', '2020-06-25 00:23:51'),
(566, 1, 27, '2020-06-25 00:23:51', '2020-06-25 00:23:51'),
(567, 4, 26, '2020-06-25 00:24:15', '2020-06-25 00:24:15'),
(568, 2, 26, '2020-06-25 00:24:15', '2020-06-25 00:24:15'),
(569, 1, 26, '2020-06-25 00:24:15', '2020-06-25 00:24:15'),
(570, 4, 25, '2020-06-25 00:24:47', '2020-06-25 00:24:47'),
(571, 2, 25, '2020-06-25 00:24:47', '2020-06-25 00:24:47'),
(572, 1, 25, '2020-06-25 00:24:48', '2020-06-25 00:24:48'),
(576, 4, 23, '2020-06-25 00:25:38', '2020-06-25 00:25:38'),
(577, 2, 23, '2020-06-25 00:25:38', '2020-06-25 00:25:38'),
(578, 1, 23, '2020-06-25 00:25:38', '2020-06-25 00:25:38'),
(579, 4, 22, '2020-06-25 00:26:01', '2020-06-25 00:26:01'),
(580, 2, 22, '2020-06-25 00:26:01', '2020-06-25 00:26:01'),
(581, 1, 22, '2020-06-25 00:26:01', '2020-06-25 00:26:01'),
(582, 23, 21, '2020-06-25 00:26:26', '2020-06-25 00:26:26'),
(583, 4, 21, '2020-06-25 00:26:26', '2020-06-25 00:26:26'),
(584, 2, 21, '2020-06-25 00:26:26', '2020-06-25 00:26:26'),
(585, 23, 20, '2020-06-25 00:26:48', '2020-06-25 00:26:48'),
(586, 4, 20, '2020-06-25 00:26:48', '2020-06-25 00:26:48'),
(587, 2, 20, '2020-06-25 00:26:48', '2020-06-25 00:26:48'),
(597, 5, 14, '2020-06-25 00:39:39', '2020-06-25 00:39:39'),
(598, 4, 14, '2020-06-25 00:39:39', '2020-06-25 00:39:39'),
(599, 3, 14, '2020-06-25 00:39:39', '2020-06-25 00:39:39'),
(600, 24, 4, '2020-06-25 00:40:07', '2020-06-25 00:40:07'),
(601, 5, 4, '2020-06-25 00:40:07', '2020-06-25 00:40:07'),
(605, 24, 6, '2020-06-25 00:40:57', '2020-06-25 00:40:57'),
(606, 7, 6, '2020-06-25 00:40:57', '2020-06-25 00:40:57'),
(607, 5, 6, '2020-06-25 00:40:57', '2020-06-25 00:40:57'),
(608, 24, 7, '2020-06-25 00:41:27', '2020-06-25 00:41:27'),
(609, 5, 7, '2020-06-25 00:41:27', '2020-06-25 00:41:27'),
(610, 24, 8, '2020-06-25 00:41:46', '2020-06-25 00:41:46'),
(611, 5, 8, '2020-06-25 00:41:46', '2020-06-25 00:41:46'),
(612, 24, 9, '2020-06-25 00:42:09', '2020-06-25 00:42:09'),
(613, 5, 9, '2020-06-25 00:42:09', '2020-06-25 00:42:09'),
(614, 24, 10, '2020-06-25 00:42:34', '2020-06-25 00:42:34'),
(615, 5, 10, '2020-06-25 00:42:34', '2020-06-25 00:42:34'),
(616, 5, 11, '2020-06-25 00:43:02', '2020-06-25 00:43:02'),
(617, 3, 11, '2020-06-25 00:43:02', '2020-06-25 00:43:02'),
(618, 2, 11, '2020-06-25 00:43:02', '2020-06-25 00:43:02'),
(619, 9, 12, '2020-06-25 00:44:06', '2020-06-25 00:44:06'),
(620, 8, 12, '2020-06-25 00:44:06', '2020-06-25 00:44:06'),
(621, 5, 12, '2020-06-25 00:44:06', '2020-06-25 00:44:06'),
(622, 7, 13, '2020-06-25 00:44:28', '2020-06-25 00:44:28'),
(623, 3, 13, '2020-06-25 00:44:28', '2020-06-25 00:44:28'),
(624, 2, 13, '2020-06-25 00:44:28', '2020-06-25 00:44:28'),
(625, 24, 2, '2020-06-25 00:44:56', '2020-06-25 00:44:56'),
(626, 5, 2, '2020-06-25 00:44:56', '2020-06-25 00:44:56'),
(647, 24, 116, '2020-08-17 01:40:44', '2020-08-17 01:40:44'),
(648, 5, 116, '2020-08-17 01:40:44', '2020-08-17 01:40:44'),
(651, 24, 114, '2020-08-17 01:41:38', '2020-08-17 01:41:38'),
(652, 5, 114, '2020-08-17 01:41:38', '2020-08-17 01:41:38'),
(653, 24, 112, '2020-08-17 01:41:52', '2020-08-17 01:41:52'),
(654, 5, 112, '2020-08-17 01:41:52', '2020-08-17 01:41:52'),
(661, 24, 108, '2020-08-17 01:42:47', '2020-08-17 01:42:47'),
(662, 5, 108, '2020-08-17 01:42:47', '2020-08-17 01:42:47'),
(663, 24, 107, '2020-08-17 01:43:01', '2020-08-17 01:43:01'),
(664, 5, 107, '2020-08-17 01:43:01', '2020-08-17 01:43:01'),
(665, 24, 106, '2020-08-17 01:44:32', '2020-08-17 01:44:32'),
(666, 5, 106, '2020-08-17 01:44:32', '2020-08-17 01:44:32'),
(667, 14, 99, '2020-08-17 01:44:50', '2020-08-17 01:44:50'),
(668, 13, 99, '2020-08-17 01:44:50', '2020-08-17 01:44:50'),
(669, 12, 99, '2020-08-17 01:44:50', '2020-08-17 01:44:50'),
(673, 24, 105, '2020-08-17 01:45:26', '2020-08-17 01:45:26'),
(674, 8, 105, '2020-08-17 01:45:27', '2020-08-17 01:45:27'),
(675, 5, 105, '2020-08-17 01:45:27', '2020-08-17 01:45:27'),
(679, 24, 87, '2020-08-17 01:46:02', '2020-08-17 01:46:02'),
(680, 5, 87, '2020-08-17 01:46:02', '2020-08-17 01:46:02'),
(681, 24, 88, '2020-08-17 01:46:19', '2020-08-17 01:46:19'),
(682, 5, 88, '2020-08-17 01:46:19', '2020-08-17 01:46:19'),
(685, 5, 95, '2020-08-17 01:46:56', '2020-08-17 01:46:56'),
(686, 2, 95, '2020-08-17 01:46:56', '2020-08-17 01:46:56'),
(687, 7, 94, '2020-08-17 01:47:10', '2020-08-17 01:47:10'),
(688, 5, 94, '2020-08-17 01:47:10', '2020-08-17 01:47:10'),
(689, 5, 93, '2020-08-17 01:47:27', '2020-08-17 01:47:27'),
(690, 24, 92, '2020-08-17 01:47:45', '2020-08-17 01:47:45'),
(691, 5, 92, '2020-08-17 01:47:45', '2020-08-17 01:47:45'),
(692, 24, 91, '2020-08-17 01:48:02', '2020-08-17 01:48:02'),
(693, 5, 91, '2020-08-17 01:48:02', '2020-08-17 01:48:02'),
(694, 24, 89, '2020-08-17 01:48:21', '2020-08-17 01:48:21'),
(695, 5, 89, '2020-08-17 01:48:21', '2020-08-17 01:48:21'),
(698, 23, 79, '2020-08-17 01:48:53', '2020-08-17 01:48:53'),
(699, 5, 79, '2020-08-17 01:48:53', '2020-08-17 01:48:53'),
(700, 4, 79, '2020-08-17 01:48:53', '2020-08-17 01:48:53'),
(701, 5, 80, '2020-08-17 01:49:09', '2020-08-17 01:49:09'),
(702, 4, 80, '2020-08-17 01:49:09', '2020-08-17 01:49:09'),
(703, 1, 80, '2020-08-17 01:49:09', '2020-08-17 01:49:09'),
(704, 5, 81, '2020-08-17 01:49:51', '2020-08-17 01:49:51'),
(705, 4, 81, '2020-08-17 01:49:51', '2020-08-17 01:49:51'),
(706, 1, 81, '2020-08-17 01:49:51', '2020-08-17 01:49:51'),
(707, 24, 84, '2020-08-17 01:50:08', '2020-08-17 01:50:08'),
(708, 5, 84, '2020-08-17 01:50:08', '2020-08-17 01:50:08'),
(709, 5, 82, '2020-08-17 01:50:23', '2020-08-17 01:50:23'),
(710, 4, 82, '2020-08-17 01:50:23', '2020-08-17 01:50:23'),
(711, 1, 82, '2020-08-17 01:50:23', '2020-08-17 01:50:23'),
(712, 24, 83, '2020-08-17 01:50:39', '2020-08-17 01:50:39'),
(713, 5, 83, '2020-08-17 01:50:39', '2020-08-17 01:50:39'),
(714, 4, 83, '2020-08-17 01:50:39', '2020-08-17 01:50:39'),
(715, 24, 85, '2020-08-17 01:50:55', '2020-08-17 01:50:55'),
(716, 5, 85, '2020-08-17 01:50:55', '2020-08-17 01:50:55'),
(717, 24, 86, '2020-08-17 01:51:11', '2020-08-17 01:51:11'),
(718, 5, 86, '2020-08-17 01:51:11', '2020-08-17 01:51:11'),
(719, 4, 64, '2020-08-17 01:51:30', '2020-08-17 01:51:30'),
(720, 2, 64, '2020-08-17 01:51:31', '2020-08-17 01:51:31'),
(721, 1, 64, '2020-08-17 01:51:31', '2020-08-17 01:51:31'),
(722, 5, 66, '2020-08-17 01:51:44', '2020-08-17 01:51:44'),
(723, 4, 66, '2020-08-17 01:51:44', '2020-08-17 01:51:44'),
(724, 1, 66, '2020-08-17 01:51:44', '2020-08-17 01:51:44'),
(725, 4, 67, '2020-08-17 01:52:01', '2020-08-17 01:52:01'),
(726, 2, 67, '2020-08-17 01:52:01', '2020-08-17 01:52:01'),
(727, 1, 67, '2020-08-17 01:52:01', '2020-08-17 01:52:01'),
(728, 4, 68, '2020-08-17 01:52:19', '2020-08-17 01:52:19'),
(729, 2, 68, '2020-08-17 01:52:19', '2020-08-17 01:52:19'),
(730, 1, 68, '2020-08-17 01:52:19', '2020-08-17 01:52:19'),
(739, 5, 60, '2020-08-17 01:54:01', '2020-08-17 01:54:01'),
(740, 4, 60, '2020-08-17 01:54:01', '2020-08-17 01:54:01'),
(741, 1, 60, '2020-08-17 01:54:01', '2020-08-17 01:54:01'),
(742, 5, 59, '2020-08-17 01:54:47', '2020-08-17 01:54:47'),
(743, 4, 59, '2020-08-17 01:54:47', '2020-08-17 01:54:47'),
(744, 1, 59, '2020-08-17 01:54:47', '2020-08-17 01:54:47'),
(745, 7, 58, '2020-08-17 01:55:06', '2020-08-17 01:55:06'),
(746, 5, 58, '2020-08-17 01:55:06', '2020-08-17 01:55:06'),
(747, 1, 58, '2020-08-17 01:55:06', '2020-08-17 01:55:06'),
(748, 8, 57, '2020-08-17 01:55:22', '2020-08-17 01:55:22'),
(749, 5, 57, '2020-08-17 01:55:22', '2020-08-17 01:55:22'),
(750, 1, 57, '2020-08-17 01:55:22', '2020-08-17 01:55:22'),
(754, 7, 55, '2020-08-17 01:55:56', '2020-08-17 01:55:56'),
(755, 5, 55, '2020-08-17 01:55:56', '2020-08-17 01:55:56'),
(756, 1, 55, '2020-08-17 01:55:56', '2020-08-17 01:55:56'),
(757, 5, 54, '2020-08-17 01:56:11', '2020-08-17 01:56:11'),
(758, 4, 54, '2020-08-17 01:56:11', '2020-08-17 01:56:11'),
(759, 1, 54, '2020-08-17 01:56:11', '2020-08-17 01:56:11'),
(760, 4, 44, '2020-08-17 01:56:28', '2020-08-17 01:56:28'),
(761, 2, 44, '2020-08-17 01:56:28', '2020-08-17 01:56:28'),
(762, 1, 44, '2020-08-17 01:56:28', '2020-08-17 01:56:28'),
(781, 4, 51, '2020-08-17 01:58:17', '2020-08-17 01:58:17'),
(782, 2, 51, '2020-08-17 01:58:17', '2020-08-17 01:58:17'),
(783, 1, 51, '2020-08-17 01:58:17', '2020-08-17 01:58:17'),
(784, 7, 52, '2020-08-17 01:58:35', '2020-08-17 01:58:35'),
(785, 5, 52, '2020-08-17 01:58:35', '2020-08-17 01:58:35'),
(786, 1, 52, '2020-08-17 01:58:35', '2020-08-17 01:58:35'),
(787, 8, 53, '2020-08-17 01:58:53', '2020-08-17 01:58:53'),
(788, 7, 53, '2020-08-17 01:58:53', '2020-08-17 01:58:53'),
(789, 5, 53, '2020-08-17 01:58:53', '2020-08-17 01:58:53'),
(793, 4, 36, '2020-08-17 01:59:32', '2020-08-17 01:59:32'),
(794, 2, 36, '2020-08-17 01:59:32', '2020-08-17 01:59:32'),
(795, 1, 36, '2020-08-17 01:59:32', '2020-08-17 01:59:32'),
(796, 4, 37, '2020-08-17 01:59:47', '2020-08-17 01:59:47'),
(797, 2, 37, '2020-08-17 01:59:47', '2020-08-17 01:59:47'),
(798, 1, 37, '2020-08-17 01:59:47', '2020-08-17 01:59:47'),
(799, 4, 41, '2020-08-17 02:00:05', '2020-08-17 02:00:05'),
(800, 2, 41, '2020-08-17 02:00:05', '2020-08-17 02:00:05'),
(801, 1, 41, '2020-08-17 02:00:05', '2020-08-17 02:00:05'),
(802, 4, 40, '2020-08-17 02:00:24', '2020-08-17 02:00:24'),
(803, 2, 40, '2020-08-17 02:00:24', '2020-08-17 02:00:24'),
(804, 1, 40, '2020-08-17 02:00:24', '2020-08-17 02:00:24'),
(805, 4, 43, '2020-08-17 02:00:40', '2020-08-17 02:00:40'),
(806, 2, 43, '2020-08-17 02:00:40', '2020-08-17 02:00:40'),
(807, 1, 43, '2020-08-17 02:00:40', '2020-08-17 02:00:40'),
(819, 24, 1, '2020-08-17 02:02:45', '2020-08-17 02:02:45'),
(820, 5, 1, '2020-08-17 02:02:45', '2020-08-17 02:02:45'),
(824, 20, 16, '2020-08-17 02:03:19', '2020-08-17 02:03:19'),
(825, 5, 16, '2020-08-17 02:03:19', '2020-08-17 02:03:19'),
(826, 19, 17, '2020-08-17 02:03:37', '2020-08-17 02:03:37'),
(827, 5, 17, '2020-08-17 02:03:37', '2020-08-17 02:03:37'),
(828, 20, 18, '2020-08-17 02:03:53', '2020-08-17 02:03:53'),
(829, 5, 18, '2020-08-17 02:03:53', '2020-08-17 02:03:53'),
(830, 19, 19, '2020-08-17 02:04:34', '2020-08-17 02:04:34'),
(831, 23, 117, '2020-08-21 00:38:05', '2020-08-21 00:38:05'),
(832, 4, 117, '2020-08-21 00:38:05', '2020-08-21 00:38:05'),
(833, 1, 117, '2020-08-21 00:38:05', '2020-08-21 00:38:05'),
(846, 24, 118, '2020-09-09 23:47:32', '2020-09-09 23:47:32'),
(847, 5, 118, '2020-09-09 23:47:33', '2020-09-09 23:47:33'),
(848, 24, 119, '2020-09-09 23:55:39', '2020-09-09 23:55:39'),
(849, 23, 119, '2020-09-09 23:55:39', '2020-09-09 23:55:39'),
(850, 21, 119, '2020-09-09 23:55:39', '2020-09-09 23:55:39'),
(853, 24, 120, '2020-09-10 00:04:50', '2020-09-10 00:04:50'),
(854, 5, 120, '2020-09-10 00:04:50', '2020-09-10 00:04:50'),
(855, 24, 121, '2020-09-10 00:10:19', '2020-09-10 00:10:19'),
(856, 5, 121, '2020-09-10 00:10:19', '2020-09-10 00:10:19'),
(857, 24, 122, '2020-09-10 00:15:16', '2020-09-10 00:15:16'),
(858, 5, 122, '2020-09-10 00:15:16', '2020-09-10 00:15:16'),
(859, 24, 123, '2020-09-10 00:31:09', '2020-09-10 00:31:09'),
(860, 5, 123, '2020-09-10 00:31:09', '2020-09-10 00:31:09'),
(861, 24, 124, '2020-09-10 01:05:30', '2020-09-10 01:05:30'),
(862, 22, 124, '2020-09-10 01:05:31', '2020-09-10 01:05:31'),
(864, 24, 126, '2020-09-20 11:13:18', '2020-09-20 11:13:18'),
(865, 23, 126, '2020-09-20 11:13:18', '2020-09-20 11:13:18'),
(866, 23, 127, '2020-11-10 23:53:57', '2020-11-10 23:53:57'),
(867, 4, 127, '2020-11-10 23:53:57', '2020-11-10 23:53:57'),
(868, 3, 127, '2020-11-10 23:53:57', '2020-11-10 23:53:57'),
(869, 2, 127, '2020-11-10 23:53:57', '2020-11-10 23:53:57'),
(870, 1, 127, '2020-11-10 23:53:57', '2020-11-10 23:53:57'),
(871, 23, 128, '2020-11-11 00:00:38', '2020-11-11 00:00:38'),
(872, 4, 128, '2020-11-11 00:00:38', '2020-11-11 00:00:38'),
(873, 3, 128, '2020-11-11 00:00:38', '2020-11-11 00:00:38'),
(874, 2, 128, '2020-11-11 00:00:38', '2020-11-11 00:00:38'),
(875, 1, 128, '2020-11-11 00:00:38', '2020-11-11 00:00:38'),
(890, 4, 24, '2021-01-26 12:21:13', '2021-01-26 12:21:13'),
(891, 2, 24, '2021-01-26 12:21:13', '2021-01-26 12:21:13'),
(892, 1, 24, '2021-01-26 12:21:13', '2021-01-26 12:21:13'),
(893, 24, 5, '2021-01-26 12:33:48', '2021-01-26 12:33:48'),
(894, 7, 5, '2021-01-26 12:33:48', '2021-01-26 12:33:48'),
(895, 5, 5, '2021-01-26 12:33:48', '2021-01-26 12:33:48'),
(896, 23, 129, '2021-02-05 09:51:55', '2021-02-05 09:51:55'),
(897, 4, 129, '2021-02-05 09:51:55', '2021-02-05 09:51:55'),
(898, 3, 129, '2021-02-05 09:51:55', '2021-02-05 09:51:55'),
(899, 2, 129, '2021-02-05 09:51:55', '2021-02-05 09:51:55'),
(900, 1, 129, '2021-02-05 09:51:55', '2021-02-05 09:51:55'),
(903, 5, 15, '2021-02-08 19:50:54', '2021-02-08 19:50:54'),
(904, 2, 15, '2021-02-08 19:50:54', '2021-02-08 19:50:54'),
(908, 4, 34, '2021-02-11 11:30:57', '2021-02-11 11:30:57'),
(909, 2, 34, '2021-02-11 11:30:57', '2021-02-11 11:30:57'),
(910, 1, 34, '2021-02-11 11:30:57', '2021-02-11 11:30:57'),
(911, 4, 33, '2021-02-11 11:31:16', '2021-02-11 11:31:16'),
(912, 2, 33, '2021-02-11 11:31:16', '2021-02-11 11:31:16'),
(913, 1, 33, '2021-02-11 11:31:16', '2021-02-11 11:31:16'),
(914, 4, 32, '2021-02-11 11:31:52', '2021-02-11 11:31:52'),
(915, 2, 32, '2021-02-11 11:31:52', '2021-02-11 11:31:52'),
(916, 1, 32, '2021-02-11 11:31:52', '2021-02-11 11:31:52'),
(917, 4, 31, '2021-02-11 11:32:12', '2021-02-11 11:32:12'),
(918, 2, 31, '2021-02-11 11:32:12', '2021-02-11 11:32:12'),
(919, 1, 31, '2021-02-11 11:32:12', '2021-02-11 11:32:12'),
(920, 4, 45, '2021-02-11 11:46:32', '2021-02-11 11:46:32'),
(921, 2, 45, '2021-02-11 11:46:32', '2021-02-11 11:46:32'),
(922, 1, 45, '2021-02-11 11:46:32', '2021-02-11 11:46:32'),
(923, 4, 46, '2021-02-11 11:46:54', '2021-02-11 11:46:54'),
(924, 2, 46, '2021-02-11 11:46:54', '2021-02-11 11:46:54'),
(925, 1, 46, '2021-02-11 11:46:54', '2021-02-11 11:46:54'),
(926, 4, 47, '2021-02-11 11:48:24', '2021-02-11 11:48:24'),
(927, 2, 47, '2021-02-11 11:48:24', '2021-02-11 11:48:24'),
(928, 1, 47, '2021-02-11 11:48:24', '2021-02-11 11:48:24'),
(929, 4, 48, '2021-02-11 11:48:50', '2021-02-11 11:48:50'),
(930, 2, 48, '2021-02-11 11:48:50', '2021-02-11 11:48:50'),
(931, 1, 48, '2021-02-11 11:48:50', '2021-02-11 11:48:50'),
(935, 5, 50, '2021-02-11 11:49:50', '2021-02-11 11:49:50'),
(936, 4, 50, '2021-02-11 11:49:50', '2021-02-11 11:49:50'),
(937, 1, 50, '2021-02-11 11:49:50', '2021-02-11 11:49:50'),
(942, 24, 73, '2021-02-11 13:13:40', '2021-02-11 13:13:40'),
(943, 5, 73, '2021-02-11 13:13:40', '2021-02-11 13:13:40'),
(944, 24, 72, '2021-02-11 13:14:26', '2021-02-11 13:14:26'),
(945, 5, 72, '2021-02-11 13:14:26', '2021-02-11 13:14:26'),
(948, 24, 71, '2021-02-11 13:15:17', '2021-02-11 13:15:17'),
(949, 5, 71, '2021-02-11 13:15:17', '2021-02-11 13:15:17'),
(950, 24, 70, '2021-02-11 13:15:38', '2021-02-11 13:15:38'),
(951, 5, 70, '2021-02-11 13:15:38', '2021-02-11 13:15:38'),
(952, 5, 98, '2021-02-11 13:18:37', '2021-02-11 13:18:37'),
(953, 2, 98, '2021-02-11 13:18:37', '2021-02-11 13:18:37'),
(954, 5, 97, '2021-02-11 13:22:15', '2021-02-11 13:22:15'),
(955, 2, 97, '2021-02-11 13:22:15', '2021-02-11 13:22:15'),
(956, 5, 96, '2021-02-11 13:22:39', '2021-02-11 13:22:39'),
(957, 2, 96, '2021-02-11 13:22:39', '2021-02-11 13:22:39'),
(958, 14, 104, '2021-02-11 14:31:25', '2021-02-11 14:31:25'),
(959, 13, 104, '2021-02-11 14:31:25', '2021-02-11 14:31:25'),
(960, 12, 104, '2021-02-11 14:31:25', '2021-02-11 14:31:25'),
(961, 14, 103, '2021-02-11 14:35:51', '2021-02-11 14:35:51'),
(962, 13, 103, '2021-02-11 14:35:51', '2021-02-11 14:35:51'),
(963, 12, 103, '2021-02-11 14:35:51', '2021-02-11 14:35:51'),
(964, 14, 102, '2021-02-11 14:37:03', '2021-02-11 14:37:03'),
(965, 13, 102, '2021-02-11 14:37:03', '2021-02-11 14:37:03'),
(966, 12, 102, '2021-02-11 14:37:03', '2021-02-11 14:37:03'),
(969, 24, 110, '2021-02-11 15:00:17', '2021-02-11 15:00:17'),
(970, 5, 110, '2021-02-11 15:00:17', '2021-02-11 15:00:17'),
(973, 5, 130, '2021-02-23 13:14:18', '2021-02-23 13:14:18'),
(974, 24, 115, '2021-02-23 13:16:53', '2021-02-23 13:16:53'),
(975, 5, 115, '2021-02-23 13:16:53', '2021-02-23 13:16:53'),
(976, 23, 125, '2021-02-23 13:17:58', '2021-02-23 13:17:58'),
(977, 5, 56, '2021-02-23 13:18:50', '2021-02-23 13:18:50'),
(978, 4, 56, '2021-02-23 13:18:50', '2021-02-23 13:18:50'),
(979, 1, 56, '2021-02-23 13:18:50', '2021-02-23 13:18:50'),
(980, 24, 74, '2021-02-23 13:19:32', '2021-02-23 13:19:32'),
(981, 5, 74, '2021-02-23 13:19:32', '2021-02-23 13:19:32'),
(982, 24, 109, '2021-02-23 13:20:08', '2021-02-23 13:20:08'),
(983, 5, 109, '2021-02-23 13:20:08', '2021-02-23 13:20:08'),
(984, 4, 49, '2021-02-23 13:58:05', '2021-02-23 13:58:05'),
(985, 2, 49, '2021-02-23 13:58:05', '2021-02-23 13:58:05'),
(986, 1, 49, '2021-02-23 13:58:05', '2021-02-23 13:58:05'),
(987, 24, 111, '2021-02-23 13:58:50', '2021-02-23 13:58:50'),
(988, 5, 111, '2021-02-23 13:58:50', '2021-02-23 13:58:50'),
(994, 29, 131, '2021-03-10 17:14:55', '2021-03-10 17:14:55'),
(995, 28, 131, '2021-03-10 17:14:55', '2021-03-10 17:14:55'),
(996, 27, 131, '2021-03-10 17:14:55', '2021-03-10 17:14:55'),
(997, 26, 131, '2021-03-10 17:14:55', '2021-03-10 17:14:55'),
(998, 25, 131, '2021-03-10 17:14:55', '2021-03-10 17:14:55'),
(999, 29, 132, '2021-07-10 05:58:07', '2021-07-10 05:58:07'),
(1000, 28, 132, '2021-07-10 05:58:07', '2021-07-10 05:58:07'),
(1001, 27, 132, '2021-07-10 05:58:07', '2021-07-10 05:58:07'),
(1037, 23, 133, '2021-07-14 13:48:08', '2021-07-14 13:48:08'),
(1038, 4, 133, '2021-07-14 13:48:08', '2021-07-14 13:48:08'),
(1039, 3, 133, '2021-07-14 13:48:08', '2021-07-14 13:48:08'),
(1040, 2, 133, '2021-07-14 13:48:08', '2021-07-14 13:48:08'),
(1041, 1, 133, '2021-07-14 13:48:08', '2021-07-14 13:48:08'),
(1045, 29, 134, '2021-07-14 14:24:31', '2021-07-14 14:24:31'),
(1046, 28, 134, '2021-07-14 14:24:31', '2021-07-14 14:24:31'),
(1047, 27, 134, '2021-07-14 14:24:31', '2021-07-14 14:24:31');

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_reviews`
--

CREATE TABLE `product_sub_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `sub_comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sub_reviews`
--

INSERT INTO `product_sub_reviews` (`id`, `product_id`, `user_id`, `comment_id`, `sub_comment`, `product_url`, `status`, `created_at`, `updated_at`) VALUES
(1, 33, 1, 2, 'hello', 'http://localhost:70/relax_shop/public/product/product-details/33/Multicolor-Jaket', 1, '2020-09-17 13:14:32', '2020-09-17 13:14:32'),
(2, 33, 1, 2, 'how r u?', 'http://localhost:70/relax_shop/public/product/product-details/33/Multicolor-Jaket', 1, '2020-09-17 13:14:57', '2020-09-17 13:14:57'),
(3, 33, 1, 2, 'jkshdJDJldk;KD;Ld', 'http://localhost:70/relax_shop/public/product/product-details/33/Multicolor-Jaket', 1, '2020-09-17 13:15:36', '2020-09-17 13:15:36'),
(4, 33, 6, 2, 'good', 'https://relaxshopbd.com/product/product-details/71/Sharp-50-Inch-Smart-Tv', 1, '2020-09-21 22:25:40', '2020-09-21 22:25:40'),
(5, 34, 6, 4, 'Thanks for Nice Cooments', 'https://relaxshopbd.com/product/product-details/34/Pure-Lather-Jaket', 1, '2020-09-22 10:04:38', '2020-09-22 10:04:38'),
(6, 33, 1, 1, 'bot bad', 'https://www.relaxshopbd.com/product/product-details/33/Multicolor-Jaket', 1, '2020-10-06 21:55:37', '2020-10-06 21:55:37'),
(7, 23, 44, 7, 'thanks', 'https://www.beshibuy.com/product/product-details/23/Formal-Shirt', 1, '2020-12-07 00:08:49', '2020-12-07 00:08:49'),
(8, 23, 44, 7, 'thanks', 'https://www.beshibuy.com/product/product-details/23/Formal-Shirt', 1, '2020-12-07 00:10:04', '2020-12-07 00:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voucher_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `vp_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `unit_price` int(11) NOT NULL,
  `total_qty` int(11) DEFAULT NULL,
  `addt_cost` int(11) DEFAULT NULL,
  `profit` int(11) DEFAULT NULL,
  `vat` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `regular_price` int(11) DEFAULT NULL,
  `sell_price` double(10,2) NOT NULL,
  `store_type` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `purchase_date`, `voucher_no`, `supplier_id`, `product_id`, `vp_code`, `unit_id`, `size_id`, `color_id`, `unit_price`, `total_qty`, `addt_cost`, `profit`, `vat`, `discount`, `commission`, `regular_price`, `sell_price`, `store_type`, `created_at`, `updated_at`) VALUES
(1, '03/7/2021', '1122', 5, 132, NULL, 18, 29, 29, 1450, NULL, 0, 0, 0, NULL, 10, NULL, 1450.00, 1, '2021-07-22 10:09:38', '2021-07-22 10:09:38'),
(2, '04/7/2021', '2211', 4, 133, NULL, 5, 4, 24, 350, 20, 1200, 35, 10, 5, NULL, 595, 574.00, 0, '2021-07-22 10:14:31', '2021-07-22 10:14:31'),
(3, '10/7/2021', '23456', 3, 133, NULL, 5, 4, 28, 260, 20, 300, 35, 15, 5, NULL, 413, 399.00, 0, '2021-07-23 08:27:05', '2021-07-23 08:27:05'),
(4, '23/7/2021', '123123', 1, 92, NULL, 3, 24, 24, 33500, 20, 3200, 25, 15, 10, NULL, 47124, 43758.00, 0, '2021-07-23 08:42:46', '2021-07-23 08:42:46'),
(5, '24/7/2021', '11122', 1, 74, NULL, 5, 5, 12, 26700, 20, 3200, 25, 15, 7, NULL, 37604, 35724.00, 0, '2021-07-24 10:04:31', '2021-07-24 10:04:31');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ship_district_id` int(11) DEFAULT NULL,
  `ship_name` varchar(191) NOT NULL,
  `ship_email` varchar(191) DEFAULT NULL,
  `ship_phone` varchar(191) NOT NULL,
  `others_phone` varchar(191) DEFAULT NULL,
  `ship_city` varchar(191) DEFAULT NULL,
  `ship_address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `customer_id`, `ship_district_id`, `ship_name`, `ship_email`, `ship_phone`, `others_phone`, `ship_city`, `ship_address`, `created_at`, `updated_at`) VALUES
(30, 32, 18, 'mainul', 'monu@monu.net', '012344567890', NULL, NULL, 'qwe', '2020-12-15 00:35:44', '2020-12-15 00:35:44'),
(31, 33, 18, 'Noor', 'nooruddin79@gmail.com', '01914576351', NULL, NULL, '330/4/ja\r\nEast nakhalpara\r\nTejgoan', '2020-12-22 06:05:40', '2020-12-22 06:05:40'),
(32, 34, 50, 'Khairul', 'hgfdhfdj@gmail.com', '01911804945', NULL, 'chatmohar', 'shalikha, pabna', '2020-12-23 20:06:55', '2020-12-23 20:06:55'),
(33, 35, 3, 'aa', 'null@null.null', '01234567890', NULL, 'aa', 'aa', '2020-12-26 23:23:41', '2020-12-26 23:23:41'),
(34, 36, 24, 'Yardley Rowe', 'rezaulmba333@gmail.com', '01815395299', NULL, 'Veritatis eum labori', 'Aliquid nemo saepe s', '2021-01-13 23:47:17', '2021-01-13 23:47:17'),
(35, 39, 18, 'Yardley Rowe', 'rezaulmba333@gmail.com', '01815395299', NULL, NULL, 'Dhaka', '2021-01-13 23:54:38', '2021-01-13 23:54:38'),
(36, 40, 18, 'mainul', 'mainul125011@gmail.com', '01646688970', NULL, 'Chandpur', 'Maimuna Akter, Molla Villa, koroya', '2021-01-14 00:09:36', '2021-01-14 00:09:36'),
(37, 41, NULL, 'mainul', 'mainul125011@gmail.com', '01646688970', NULL, 'Chandpur', 'Maimuna Akter, Molla Villa, koroya', '2021-01-14 00:13:51', '2021-01-14 00:13:51'),
(38, 42, 18, 'mainul', 'mainul125011@gmail.com', '01646688970', NULL, 'Chandpur', 'Maimuna Akter, Molla Villa, koroya', '2021-01-14 00:14:11', '2021-01-14 00:14:11'),
(39, 43, 18, 'Kevyn Gillespie', 'qejipu@mailinator.com', '01556557779', NULL, 'Ex quod sed enim rem', 'Numquam et maxime au', '2021-01-14 21:57:15', '2021-01-14 21:57:15'),
(40, 44, 18, 'Rezaul karim Karim', 'rezaulmba333@gmail.com', '01556557779', NULL, 'Dhaka', 'Cha-65/A, 2nd floor North Badda, Dhaka-1212 .', '2021-01-14 21:59:16', '2021-01-14 21:59:16'),
(41, 45, 19, 'Shiuly Akter', 'shiulyakter333@gmail.com', '01815396896', NULL, 'Sadar', 'Faridpur', '2021-01-15 19:59:56', '2021-01-15 19:59:56'),
(42, 46, 18, 'Abdul Kuddus', 'rezaulmba333@gmail.com', '01815396899', NULL, 'Dhaka', 'Dhaka', '2021-01-15 20:06:52', '2021-01-15 20:06:52'),
(43, 47, 18, 'Evangeline', 'rezaulmba333@gmail.com', '01616980988', NULL, 'Laborum omnis enim m', 'Dhaka', '2021-01-16 20:40:26', '2021-01-16 20:40:26'),
(44, 48, 18, 'Mafuz Khan', 'rezaulmba333@gmail.com', '01915698789', NULL, 'Amet eius ullam tem', 'Rerum minus voluptas', '2021-01-17 00:00:21', '2021-01-17 00:00:21'),
(45, 49, 18, 'Mithu Sarkar', 'mithunjut@gmail.com', '01617890900', NULL, 'Sadar', 'Dhaka', '2021-01-17 00:07:21', '2021-01-17 00:07:21'),
(46, 50, 18, 'Mainul Islam', 'mainul125011@gmail.com', '01912345678', NULL, 'Vitae sapiente lauda', 'Nulla placeat dolor', '2021-01-17 00:14:56', '2021-01-17 00:14:56'),
(47, 51, 18, 'Reed Romero', 'rezaulmba333@gmail.com', '01911234567', NULL, 'Autem exercitationem', 'Labore tempore omni', '2021-01-24 20:04:29', '2021-01-24 20:04:29'),
(48, 52, 18, 'Brynn Sears', 'rezaulmba333@gmail.com', '01911234568', NULL, 'Omnis dolore dolor d', 'Vitae aut illo dolor', '2021-01-24 20:28:16', '2021-01-24 20:28:16'),
(49, 53, 18, 'Brielle Meadows', 'rezaulmba333@gmail.com', '01712345789', NULL, 'Adipisci eaque omnis', 'Doloremque veniam u', '2021-01-25 14:43:19', '2021-01-25 14:43:19'),
(50, 54, 18, 'Kamrul Hassan', 'kamrul384@gmail.com', '01981006366', NULL, 'Sadar', 'Dhaka', '2021-01-25 14:47:10', '2021-01-25 14:47:10'),
(51, 55, 18, 'Mithun Sarker', 'mithunjut@gmail.com', '01734481992', NULL, 'Dhaka', 'House # 27/5, Road # 11\r\nKallyanpur, Mirpur', '2021-01-26 16:11:16', '2021-01-26 16:11:16'),
(52, 56, 2, 'safdas', 'safdfas@asfsdaf.dsafjkfhsad', '01990014588', NULL, 'daadsfdas', 'dasfsafafdsaf', '2021-02-07 19:23:16', '2021-02-07 19:23:16'),
(53, 57, 18, 'Munna Khan', 'munna@gmail.com', '01123045609', NULL, 'Deserunt consequatur', 'Nemo incidunt asper', '2021-03-14 15:02:34', '2021-03-14 15:02:34'),
(54, 58, 18, 'test', 'test@test.test', '01646688970', NULL, 'Chandpur', 'Maimuna Akter, Molla Villa, koroya', '2021-03-14 22:35:11', '2021-03-14 22:35:11');

-- --------------------------------------------------------

--
-- Table structure for table `site_error_massages`
--

CREATE TABLE `site_error_massages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pending_msg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_error_massages`
--

INSERT INTO `site_error_massages` (`id`, `pending_msg`, `status`, `created_at`, `updated_at`) VALUES
(2, 'This site is under maintenance. Some functions may not work properly during this time. We are really sorry for that. Thanks for staying with us.', 0, '2020-09-22 17:18:26', '2020-12-03 12:02:53'),
(3, 'This site is under development. Some functions may not work properly during this time. We are really sorry for that. Thanks for staying with us.', 0, '2020-11-30 20:14:54', '2021-02-10 16:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'XL', 'XL Size Description', 1, '2020-06-17 21:15:34', '2020-06-17 21:15:34'),
(2, 'M', 'Medium Size Description', 1, '2020-06-17 21:15:50', '2020-06-17 21:15:50'),
(3, 'S', 'Small Size Description', 1, '2020-06-17 21:16:04', '2020-06-17 21:16:04'),
(4, 'L', 'Large Size Description', 1, '2020-06-17 21:16:24', '2020-06-17 21:16:24'),
(5, 'Standard', 'Standard Size Description', 1, '2020-06-17 21:16:56', '2020-06-17 21:16:56'),
(6, 'Extra Large', 'Extra Size Description', 1, '2020-06-18 01:44:33', '2020-06-18 01:44:33'),
(7, 'Large', 'Large Size Description', 1, '2020-06-18 01:44:48', '2020-06-18 01:44:48'),
(8, 'Medium', 'Medium Size Description', 1, '2020-06-18 01:45:02', '2020-06-18 01:45:02'),
(9, 'Small', 'Small Size Description', 1, '2020-06-18 01:45:17', '2020-06-18 01:45:17'),
(10, '1 - Year', '1 Year Size Description', 1, '2020-06-18 01:45:46', '2020-06-18 01:45:46'),
(11, '2 - Year', '2 Year Size Description', 1, '2020-06-18 01:46:00', '2020-06-18 01:46:00'),
(12, '3 - Year', '3 Year Size Description', 1, '2020-06-18 01:46:16', '2020-06-18 01:46:16'),
(13, '4 - Year', '4 Year Size Description', 1, '2020-06-18 01:46:47', '2020-06-18 01:46:47'),
(14, '5 - Year', '5 Year Size Description', 1, '2020-06-18 01:47:00', '2020-06-18 01:47:00'),
(15, '0 - Year', '0 Year Size Description', 1, '2020-06-18 01:47:41', '2020-06-18 01:47:41'),
(16, 'Duel Core', 'Duel Core Size Description :', 1, '2020-06-18 01:48:02', '2020-06-18 01:48:02'),
(17, 'Core-i4', 'Core-i4 Size Description', 1, '2020-06-18 01:48:18', '2020-06-18 01:48:18'),
(18, 'Core-i5', 'Core-i5 Size Description', 1, '2020-06-18 01:48:35', '2020-06-18 01:48:35'),
(19, 'Core-i7', 'Core-i7 Size Description', 1, '2020-06-18 01:49:19', '2020-06-18 01:49:19'),
(20, 'Core-i8', 'Core-i8 Size Description', 1, '2020-06-18 01:49:37', '2020-06-18 01:49:37'),
(21, 'GB', 'GB Size Description', 1, '2020-06-18 01:49:56', '2020-06-18 01:49:56'),
(22, 'TB', 'TB Size Description', 1, '2020-06-18 01:50:15', '2020-06-18 01:50:15'),
(23, 'XXL', 'Extra Large Size Description', 1, '2020-06-18 01:50:58', '2020-06-18 01:50:58'),
(24, 'Family Size', 'Family Size Description', 1, '2020-06-18 23:18:13', '2020-06-18 23:18:13'),
(25, '40', NULL, 1, '2021-03-08 10:43:42', '2021-03-08 10:43:42'),
(26, '41', NULL, 1, '2021-03-08 10:43:50', '2021-03-08 10:43:50'),
(27, '42', NULL, 1, '2021-03-08 10:43:57', '2021-03-08 10:43:57'),
(28, '43', NULL, 1, '2021-03-08 10:44:03', '2021-03-08 10:44:03'),
(29, '44', NULL, 1, '2021-03-08 10:44:10', '2021-03-08 10:44:10'),
(30, '1 ton', NULL, 1, '2021-07-07 11:49:15', '2021-07-07 11:49:15'),
(31, '1.5 ton', NULL, 1, '2021-07-07 11:49:29', '2021-07-07 11:49:29'),
(32, '2 ton', NULL, 1, '2021-07-07 11:49:40', '2021-07-07 11:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `category_id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'Excellent Kids Winter Collection', 'Kids Winter Collection Slider Description', './admin/slider_images/1612203996.webp', 0, '2020-06-14 21:36:35', '2021-03-02 16:27:35'),
(2, 3, 'New Collection', 'Computer Accessories Slider Description', './admin/slider_images/1612203882.webp', 0, '2020-06-14 21:37:15', '2021-03-02 16:27:32'),
(3, 4, 'New Exclusive Household Collection', 'New Exclusive Household Collection', './admin/slider_images/1612203973.webp', 0, '2020-06-14 21:46:22', '2021-02-01 23:26:13'),
(4, 8, 'Hot Mobile & Accesories', 'Hot Mobile & Accesories  Description', './admin/slider_images/1612203856.webp', 0, '2020-06-14 22:58:02', '2021-02-01 23:24:16'),
(5, 9, 'Women Fashion Hot Collection', 'Women Fashion Hot Collection', './admin/slider_images/1614684288.jpg', 1, '2020-06-14 23:00:17', '2021-03-02 16:24:48'),
(6, 10, 'Hot Exclusive Men\'s Fashion Collection', 'Hot Exclusive Men\'s Fashion Collection', './admin/slider_images/1612204302.webp', 0, '2020-06-14 23:02:10', '2021-03-02 16:27:26'),
(8, 10, 'New Mens Hot Winter Collection', 'New Mens Fashion Hot Winter Collection', './admin/slider_images/1614664338.jpg', 1, '2021-01-05 20:29:02', '2021-03-02 10:52:19'),
(9, 10, 'Menz Fashion', 'Menz Fashion', './admin/slider_images/1623262876.webp', 1, '2021-01-13 11:19:39', '2021-06-10 01:21:16'),
(10, 7, 'Cosmetics Products', NULL, './admin/slider_images/1623262833.webp', 0, '2021-03-02 10:20:00', '2021-06-10 01:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `purchase_id`, `created_at`, `updated_at`) VALUES
(1, 2, '2021-07-22 10:14:32', '2021-07-22 10:14:32'),
(2, 3, '2021-07-23 08:27:06', '2021-07-23 08:27:06'),
(3, 4, '2021-07-23 08:42:46', '2021-07-23 08:42:46'),
(4, 5, '2021-07-24 10:04:31', '2021-07-24 10:04:31');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) NOT NULL,
  `email` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'rezaul@gmail.com', '2020-09-20 22:39:56', '2020-09-20 22:39:56'),
(2, 'kk@gmail.com', '2020-09-20 22:54:53', '2020-09-20 22:54:53'),
(3, 'rezaulmba333@gmail.com', '2020-09-21 23:35:50', '2020-09-21 23:35:50'),
(4, 'mi@gmail.com', '2020-09-23 22:18:50', '2020-09-23 22:18:50'),
(5, 'kamrul@gmail.com', '2020-09-23 22:24:49', '2020-09-23 22:24:49'),
(6, 'akrammunna4@gmail.com', '2020-10-09 00:40:26', '2020-10-09 00:40:26'),
(7, 'support@pacificgrass.co', '2020-11-10 12:34:25', '2020-11-10 12:34:25'),
(8, 'krishnasairohit@gmail.com', '2020-11-18 23:24:46', '2020-11-18 23:24:46'),
(9, 'gailqoh@aol.com', '2020-11-21 06:40:20', '2020-11-21 06:40:20'),
(10, 'gsanpedroh@gmail.com', '2020-11-27 19:38:39', '2020-11-27 19:38:39'),
(11, 'timjohnston4761@gmail.com', '2020-11-29 02:19:21', '2020-11-29 02:19:21'),
(12, 'oldie_cruiser76@yahoo.com', '2020-11-29 10:35:06', '2020-11-29 10:35:06'),
(13, 'thimler@gmail.com', '2020-12-09 04:19:00', '2020-12-09 04:19:00'),
(14, 'teresa@snapcm.com', '2020-12-12 06:56:15', '2020-12-12 06:56:15'),
(15, 'colinhetman@shaw.ca', '2020-12-28 03:22:43', '2020-12-28 03:22:43'),
(16, 'songhyunjin1014@gmail.com', '2020-12-31 15:07:06', '2020-12-31 15:07:06'),
(17, 'leannhilton@hotmail.com', '2021-01-02 10:49:04', '2021-01-02 10:49:04'),
(18, 'lipp_a@freenet.de', '2021-01-03 06:13:19', '2021-01-03 06:13:19'),
(19, 'natbby2018@gmail.com', '2021-01-04 13:30:05', '2021-01-04 13:30:05'),
(20, 'christina.diffley@advantech.nl', '2021-01-07 01:40:39', '2021-01-07 01:40:39'),
(21, 'prea25@aol.com', '2021-01-10 07:17:02', '2021-01-10 07:17:02'),
(22, 'tomvl@vligroup.com', '2021-01-13 05:07:08', '2021-01-13 05:07:08'),
(23, 'niksic.dino@gmail.com', '2021-01-13 20:44:49', '2021-01-13 20:44:49'),
(24, 'attyrs@aol.com', '2021-01-15 02:34:35', '2021-01-15 02:34:35'),
(25, 'jon@jdn-designs.co.uk', '2021-01-22 20:44:06', '2021-01-22 20:44:06'),
(26, 'lucasaiu@yahoo.com', '2021-02-04 17:49:58', '2021-02-04 17:49:58'),
(27, 'astonclough@hotmail.com', '2021-02-15 06:40:17', '2021-02-15 06:40:17'),
(28, 'mithu@beshibuy.com', '2021-02-16 15:14:09', '2021-02-16 15:14:09'),
(29, 'allisongayron@gmail.com', '2021-02-25 00:15:35', '2021-02-25 00:15:35'),
(30, 'tammywido@gmail.com', '2021-02-27 07:12:50', '2021-02-27 07:12:50'),
(31, 'dushan@spadier.com', '2021-03-01 21:02:43', '2021-03-01 21:02:43'),
(32, 'honeybmiffy@hotmail.co.uk', '2021-03-03 03:47:23', '2021-03-03 03:47:23'),
(33, 'jdlatta2828@yahoo.com', '2021-03-14 17:26:00', '2021-03-14 17:26:00'),
(34, 'caronachica@gmail.com', '2021-03-15 06:05:44', '2021-03-15 06:05:44'),
(35, 'bloomfieldkarl@hotmail.com', '2021-03-21 03:10:26', '2021-03-21 03:10:26'),
(36, 'sunnysidefarm20@yahoo.com', '2021-04-03 19:52:45', '2021-04-03 19:52:45'),
(37, 'amandababe77@yahoo.com', '2021-04-03 20:16:19', '2021-04-03 20:16:19'),
(38, 'millie.brice@aol.co.uk', '2021-04-04 21:26:25', '2021-04-04 21:26:25');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `sub_category_name`, `sub_category_description`, `sub_category_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tea Cup', 'Tea Cup Description', './admin/sub_category_images/1612281303.jpg', 1, '2020-06-12 22:55:22', '2021-02-02 20:55:03'),
(2, 1, 'Mug', 'Mug Description', './admin/sub_category_images/1612281329.jpg', 1, '2020-06-12 23:02:37', '2021-02-02 20:55:29'),
(3, 1, 'Jug', 'Jug Description', './admin/sub_category_images/1612281348.jpg', 0, '2020-06-12 23:03:10', '2021-02-02 20:55:48'),
(4, 1, 'Vegitable Chopper', 'Vegitable Chopper Description', './admin/sub_category_images/1612281037.jpg', 1, '2020-06-12 23:04:20', '2021-02-02 20:50:37'),
(5, 1, 'Rice Cooker', 'Rice Cooker Description', './admin/sub_category_images/1612281061.jpg', 1, '2020-06-12 23:04:51', '2021-02-02 20:51:01'),
(6, 1, 'Pressure Cooker', 'Pressure Cooker Description', './admin/sub_category_images/1612281086.jpeg', 1, '2020-06-12 23:05:17', '2021-02-02 20:51:26'),
(7, 1, 'Gas Stove', 'Gas Stove Description', './admin/sub_category_images/1612281106.jpeg', 1, '2020-06-12 23:05:43', '2021-02-02 20:51:46'),
(8, 1, 'Blender', 'Blender Description', './admin/sub_category_images/1612281139.jpg', 1, '2020-06-12 23:06:13', '2021-02-02 20:52:19'),
(9, 1, 'Oven', 'Oven Description', './admin/sub_category_images/1612281160.jpeg', 1, '2020-06-12 23:06:39', '2021-02-02 20:52:40'),
(11, 3, 'Hp Laptop', 'Hp Laptop Description', './admin/sub_category_images/1612281182.jpg', 1, '2020-06-13 09:07:19', '2021-02-02 20:53:02'),
(12, 3, 'Dell Laptop', 'Dell Laptop Description', './admin/sub_category_images/1612281261.jpeg', 1, '2020-06-13 09:08:03', '2021-02-02 20:54:21'),
(13, 3, 'Acer Laptop', 'Acer Laptop Description', './admin/sub_category_images/1612281230.jpg', 1, '2020-06-13 09:08:42', '2021-02-02 20:53:50'),
(14, 3, 'Lenovo Laptop', 'Lenovo Laptop Description', './admin/sub_category_images/1612281280.jpg', 1, '2020-06-13 09:09:19', '2021-02-02 20:54:40'),
(15, 3, 'Printer', 'Printer Description', './admin/sub_category_images/1612280748.jpg', 1, '2020-06-13 09:10:01', '2021-02-02 20:45:48'),
(16, 3, 'Mouse', 'Mouse Description', './admin/sub_category_images/1612280767.jpg', 1, '2020-06-13 09:10:29', '2021-02-02 20:46:07'),
(17, 3, 'Pen Drive', 'Pen Drive Description', './admin/sub_category_images/1612280788.jpg', 1, '2020-06-13 09:10:55', '2021-02-02 20:46:28'),
(18, 3, 'Head Phone', 'Head Phone Description', './admin/sub_category_images/1612280817.jpg', 1, '2020-06-13 09:11:20', '2021-02-02 20:46:57'),
(19, 3, 'Speaker', 'Speaker Description', './admin/sub_category_images/1612280838.jpg', 1, '2020-06-13 09:11:48', '2021-02-02 20:47:18'),
(20, 4, 'Window Screen', 'Window Screen Description', './admin/sub_category_images/1612280863.jpg', 1, '2020-06-13 10:44:28', '2021-02-02 20:47:43'),
(21, 4, 'Bed Sheet', 'Bed Sheet Description', './admin/sub_category_images/1612280924.jpg', 1, '2020-06-13 10:45:12', '2021-02-02 20:48:44'),
(22, 4, 'Dinning Table', 'Dinning Table Description', './admin/sub_category_images/1612280946.jpeg', 1, '2020-06-13 10:46:06', '2021-02-02 20:49:06'),
(23, 4, 'Wardrobe', 'Wardrobe Description', './admin/sub_category_images/1612280975.jpg', 1, '2020-06-13 10:46:40', '2021-02-02 20:49:35'),
(24, 4, 'Flower Vase', 'Flower Vase Description', './admin/sub_category_images/1612281011.jpg', 1, '2020-06-13 10:47:17', '2021-02-02 20:50:11'),
(25, 4, 'Tv Self', 'Tv Self Description', './admin/sub_category_images/1612280196.jpg', 1, '2020-06-13 10:47:51', '2021-02-02 20:36:36'),
(26, 5, 'Kids Cloth', 'Kids Cloth', './admin/sub_category_images/1612280214.jpg', 1, '2020-06-13 10:50:25', '2021-02-02 20:36:54'),
(27, 5, 'Kids Shoe', 'Shoe Description', './admin/sub_category_images/1612280235.jpg', 1, '2020-06-13 10:50:55', '2021-02-02 20:37:15'),
(28, 5, 'Kids Umbrella', 'Umbrella Description', './admin/sub_category_images/1612280264.jpg', 1, '2020-06-13 10:51:23', '2021-02-02 20:37:44'),
(29, 5, 'Kids Bag', 'Bag Description', './admin/sub_category_images/1612280307.jpg', 1, '2020-06-13 10:52:06', '2021-02-02 20:38:27'),
(30, 5, 'Kids Cycle', 'Cycle Description', './admin/sub_category_images/1612280341.jpg', 1, '2020-06-13 10:52:34', '2021-02-02 20:39:01'),
(31, 5, 'Kids Bike', 'Bike Description', './admin/sub_category_images/1612280362.jpg', 1, '2020-06-13 10:53:09', '2021-02-02 20:39:22'),
(32, 7, 'Shampoo', 'Shampoo Description', './admin/sub_category_images/1612280394.jpg', 1, '2020-06-13 11:04:42', '2021-02-02 20:39:54'),
(33, 7, 'Makeup Box', 'Makeup Box Description', './admin/sub_category_images/1612280436.jpg', 1, '2020-06-13 11:05:35', '2021-02-02 20:40:36'),
(34, 7, 'Nail Polish', 'Nail Polish Description', './admin/sub_category_images/1612280483.jpg', 1, '2020-06-13 11:06:19', '2021-02-02 20:41:23'),
(35, 7, 'Necklace', 'Necklace Description', './admin/sub_category_images/1612279713.jpg', 1, '2020-06-13 11:07:16', '2021-02-02 20:28:33'),
(36, 7, 'Bracelet', 'Bracelet Description', './admin/sub_category_images/1612279747.jpg', 1, '2020-06-13 11:07:59', '2021-02-02 20:29:07'),
(37, 7, 'Payel', 'Payel Description', './admin/sub_category_images/1612279766.jpg', 1, '2020-06-13 11:08:42', '2021-02-02 20:29:26'),
(38, 8, 'Battery', 'Mobile Battery Description', './admin/sub_category_images/1612279934.jpg', 1, '2020-06-14 06:18:05', '2021-02-02 20:32:14'),
(39, 8, 'Charger', 'Mobile Charger Description', './admin/sub_category_images/1612279906.jpeg', 1, '2020-06-14 06:19:46', '2021-02-02 20:31:46'),
(40, 8, 'Mobile Cover', 'Mobile Cover Description', './admin/sub_category_images/1612279969.jpg', 1, '2020-06-14 06:20:28', '2021-02-02 20:32:49'),
(41, 8, 'Mobile Head Phone', 'Mobile Head Phone Description', './admin/sub_category_images/1612280052.jpg', 1, '2020-06-14 06:21:00', '2021-02-02 20:34:12'),
(42, 8, 'Oppo', 'Oppo Mobile Description', './admin/sub_category_images/1612280079.jpg', 1, '2020-06-14 06:22:07', '2021-02-02 20:34:39'),
(43, 8, 'Samsung', 'Samsung Mobile Description', './admin/sub_category_images/1612280105.jpg', 1, '2020-06-14 06:22:39', '2021-02-02 20:35:05'),
(44, 8, 'Huwaei', 'Huwaei Mobile Description', './admin/sub_category_images/1612280146.jpg', 1, '2020-06-14 06:23:36', '2021-02-02 20:35:46'),
(45, 8, 'Apple', 'Appel Mobile Description', './admin/sub_category_images/1612278508.jpg', 1, '2020-06-14 06:24:09', '2021-02-02 20:08:28'),
(46, 9, 'Women Shoe', 'Women Shoe  Description', './admin/sub_category_images/1612278571.jpg', 1, '2020-06-14 06:26:22', '2021-02-02 20:09:31'),
(47, 9, 'Ladies Bag', 'Women Bag Description', './admin/sub_category_images/1612278600.jpg', 1, '2020-06-14 06:27:18', '2021-02-02 20:10:00'),
(48, 9, 'Lehenga', 'Women Lehenga  Description', './admin/sub_category_images/1612278629.jpg', 1, '2020-06-14 06:29:45', '2021-02-02 20:10:29'),
(49, 9, 'Women Watch', 'Women Watch Description', './admin/sub_category_images/1612278654.jpg', 1, '2020-06-14 06:30:57', '2021-02-02 20:10:54'),
(50, 9, 'Kurti', 'Women Kurti Description', './admin/sub_category_images/1612278679.jpg', 1, '2020-06-14 06:32:16', '2021-02-02 20:11:19'),
(51, 9, 'Salwar Kameez', 'Women Salwar Kameez Description', './admin/sub_category_images/1612278712.jpg', 1, '2020-06-14 06:33:41', '2021-02-02 20:11:52'),
(52, 9, 'Sharee', 'Women Sharee Description', './admin/sub_category_images/1612278742.jpg', 1, '2020-06-14 06:36:00', '2021-02-02 20:12:22'),
(53, 9, 'Three piece', 'Women Three Piece', './admin/sub_category_images/1612278772.jpg', 1, '2020-06-14 06:40:24', '2021-02-02 20:12:52'),
(54, 10, 'Wrist Watch', 'Mens Wrist Watch', './admin/sub_category_images/1612277897.jpg', 1, '2020-06-14 06:41:17', '2021-02-02 19:58:17'),
(55, 10, 'Belt', 'Mens Belt Description', './admin/sub_category_images/1612278133.jpeg', 1, '2020-06-14 06:42:20', '2021-02-02 20:02:13'),
(56, 10, 'Wallet', 'Mens Wallet  Description', './admin/sub_category_images/1612278153.jpg', 1, '2020-06-14 06:42:59', '2021-02-02 20:02:33'),
(57, 10, 'Kades', 'Mens Kades Description', './admin/sub_category_images/1612278182.jpg', 0, '2020-06-14 06:43:48', '2021-02-02 20:03:02'),
(58, 10, 'Mens Shoe', 'Mens Shoe Description', './admin/sub_category_images/1612278275.jpg', 0, '2020-06-14 06:44:17', '2021-02-02 20:04:35'),
(59, 10, 'Pants', 'Mens Jens Pants Description', './admin/sub_category_images/1612278300.jpg', 1, '2020-06-14 06:45:13', '2021-02-02 20:05:00'),
(60, 10, 'Blazer', 'Mens Blazer Description', './admin/sub_category_images/1612278330.jpg', 0, '2020-06-14 06:46:02', '2021-02-02 20:05:30'),
(61, 10, 'T-shirt', 'Mens T-shirt  Description', './admin/sub_category_images/1612278359.jpg', 1, '2020-06-14 06:46:49', '2021-02-02 20:05:59'),
(62, 10, 'Shirt', 'Mens Shirt Des Description', './admin/sub_category_images/1612278384.jpg', 1, '2020-06-14 06:49:39', '2021-02-02 20:06:24'),
(63, 11, 'Washing Machine', 'Washing Machine Description', './admin/sub_category_images/1612278407.jpg', 1, '2020-06-14 06:53:12', '2021-02-02 20:06:47'),
(64, 11, 'Fan', 'Fan  Description', './admin/sub_category_images/1612278472.jpg', 1, '2020-06-14 06:54:05', '2021-02-02 20:07:52'),
(65, 11, 'Iron', 'Iron Description', './admin/sub_category_images/1612278104.jpg', 1, '2020-06-14 06:54:37', '2021-02-02 20:01:44'),
(66, 11, 'Camera', 'Camera Description', './admin/sub_category_images/1612278012.jpg', 1, '2020-06-14 06:55:05', '2021-02-02 20:00:12'),
(67, 11, 'Deep Freez', 'Deep Freez Description', './admin/sub_category_images/1612277991.jpg', 1, '2020-06-14 06:55:36', '2021-02-02 19:59:51'),
(68, 11, 'Freez', 'Freez  Description', './admin/sub_category_images/1612277972.jpg', 1, '2020-06-14 06:56:33', '2021-02-02 19:59:32'),
(69, 11, 'AC', 'Air Conditoner Descriptio', './admin/sub_category_images/1612277951.jpg', 1, '2020-06-14 06:59:00', '2021-02-02 19:59:11'),
(70, 11, 'Watch', 'Watch Description', './admin/sub_category_images/1612277916.jpg', 1, '2020-06-14 06:59:54', '2021-02-02 19:58:36'),
(71, 11, 'TV', 'TV Description', './admin/sub_category_images/1612277696.jpg', 0, '2020-06-14 07:02:05', '2021-02-02 19:55:01'),
(72, 10, 'Panjabi', 'Panjabi  Description', './admin/sub_category_images/1612277803.jpg', 0, '2020-06-17 21:55:01', '2021-02-02 19:56:43'),
(73, 10, 'Hoddie', 'Mens Fashion Hoddie Description', './admin/sub_category_images/1612277660.jpg', 1, '2020-06-20 10:43:09', '2021-02-05 11:10:39'),
(74, 10, 'Jaket', 'Mens Fashion Jaket Description', './admin/sub_category_images/1612277640.jpg', 1, '2020-06-20 10:43:42', '2021-02-05 11:10:35'),
(76, 10, 'Sneaker', NULL, './admin/sub_category_images/1615182081.jpg', 1, '2021-03-08 10:41:21', '2021-03-08 10:41:21'),
(77, 10, 'Loffer', NULL, './admin/sub_category_images/1625918070.jpg', 1, '2021-07-10 05:54:35', '2021-07-10 05:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `sub_images`
--

CREATE TABLE `sub_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `sub_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_images`
--

INSERT INTO `sub_images` (`id`, `product_id`, `sub_image`, `created_at`, `updated_at`) VALUES
(1, 1, './admin/sub_images/1592544349_136.jpg', '2020-06-18 23:25:49', '2020-06-18 23:25:49'),
(2, 1, './admin/sub_images/1592544349_137.jpg', '2020-06-18 23:25:50', '2020-06-18 23:25:50'),
(3, 1, './admin/sub_images/1592544350_138.jpg', '2020-06-18 23:25:50', '2020-06-18 23:25:50'),
(4, 2, './admin/sub_images/1592547067_144.jpg', '2020-06-19 00:11:08', '2020-06-19 00:11:08'),
(5, 2, './admin/sub_images/1592547068_145.png', '2020-06-19 00:11:08', '2020-06-19 00:11:08'),
(6, 2, './admin/sub_images/1592547068_147.jpg', '2020-06-19 00:11:08', '2020-06-19 00:11:08'),
(10, 4, './admin/sub_images/1592547548_148.jpg', '2020-06-19 00:19:09', '2020-06-19 00:19:09'),
(11, 4, './admin/sub_images/1592547549_149.jpg', '2020-06-19 00:19:09', '2020-06-19 00:19:09'),
(12, 4, './admin/sub_images/1592547549_151.jpg', '2020-06-19 00:19:09', '2020-06-19 00:19:09'),
(16, 5, './admin/sub_images/1592548150_157.jpg', '2020-06-19 00:29:11', '2020-06-19 00:29:11'),
(17, 5, './admin/sub_images/1592548151_158.jpg', '2020-06-19 00:29:11', '2020-06-19 00:29:11'),
(18, 5, './admin/sub_images/1592548151_159.png', '2020-06-19 00:29:11', '2020-06-19 00:29:11'),
(19, 6, './admin/sub_images/1592548381_161.jpg', '2020-06-19 00:33:01', '2020-06-19 00:33:01'),
(20, 6, './admin/sub_images/1592548381_162.jpg', '2020-06-19 00:33:01', '2020-06-19 00:33:01'),
(21, 6, './admin/sub_images/1592548381_163.png', '2020-06-19 00:33:01', '2020-06-19 00:33:01'),
(22, 7, './admin/sub_images/1592548803_165.jpg', '2020-06-19 00:40:03', '2020-06-19 00:40:03'),
(23, 7, './admin/sub_images/1592548804_166.jpg', '2020-06-19 00:40:04', '2020-06-19 00:40:04'),
(24, 7, './admin/sub_images/1592548804_167.jpg', '2020-06-19 00:40:04', '2020-06-19 00:40:04'),
(25, 8, './admin/sub_images/1592549119_168.jpg', '2020-06-19 00:45:19', '2020-06-19 00:45:19'),
(26, 8, './admin/sub_images/1592549119_169.jpg', '2020-06-19 00:45:19', '2020-06-19 00:45:19'),
(27, 8, './admin/sub_images/1592549120_170.jpg', '2020-06-19 00:45:20', '2020-06-19 00:45:20'),
(28, 9, './admin/sub_images/1592549457_173.jpg', '2020-06-19 00:50:57', '2020-06-19 00:50:57'),
(29, 9, './admin/sub_images/1592549457_174.jpg', '2020-06-19 00:50:57', '2020-06-19 00:50:57'),
(30, 9, './admin/sub_images/1592549457_175.jpg', '2020-06-19 00:50:57', '2020-06-19 00:50:57'),
(31, 10, './admin/sub_images/1592576159_177.jpg', '2020-06-19 08:15:59', '2020-06-19 08:15:59'),
(32, 10, './admin/sub_images/1592576159_179.jpg', '2020-06-19 08:15:59', '2020-06-19 08:15:59'),
(33, 10, './admin/sub_images/1592576159_180.jpg', '2020-06-19 08:16:00', '2020-06-19 08:16:00'),
(34, 11, './admin/sub_images/1592628496_182.jpg', '2020-06-19 22:48:16', '2020-06-19 22:48:16'),
(35, 11, './admin/sub_images/1592628496_183.jpg', '2020-06-19 22:48:17', '2020-06-19 22:48:17'),
(36, 11, './admin/sub_images/1592628497_184.jpg', '2020-06-19 22:48:17', '2020-06-19 22:48:17'),
(37, 12, './admin/sub_images/1592628990_104.jpg', '2020-06-19 22:56:30', '2020-06-19 22:56:30'),
(38, 12, './admin/sub_images/1592628991_208.jpg', '2020-06-19 22:56:31', '2020-06-19 22:56:31'),
(39, 12, './admin/sub_images/1592628991_209.jpg', '2020-06-19 22:56:31', '2020-06-19 22:56:31'),
(40, 13, './admin/sub_images/1592629303_205.jpg', '2020-06-19 23:01:43', '2020-06-19 23:01:43'),
(41, 13, './admin/sub_images/1592629303_206.jpg', '2020-06-19 23:01:43', '2020-06-19 23:01:43'),
(42, 13, './admin/sub_images/1592629303_207.jpg', '2020-06-19 23:01:43', '2020-06-19 23:01:43'),
(43, 14, './admin/sub_images/1592629488_202.jpg', '2020-06-19 23:04:49', '2020-06-19 23:04:49'),
(44, 14, './admin/sub_images/1592629489_203.jpg', '2020-06-19 23:04:49', '2020-06-19 23:04:49'),
(45, 14, './admin/sub_images/1592629489_204.jpg', '2020-06-19 23:04:49', '2020-06-19 23:04:49'),
(49, 16, './admin/sub_images/1592630157_195.jpg', '2020-06-19 23:15:57', '2020-06-19 23:15:57'),
(50, 16, './admin/sub_images/1592630157_215.jpg', '2020-06-19 23:15:57', '2020-06-19 23:15:57'),
(51, 16, './admin/sub_images/1592630157_217.jpg', '2020-06-19 23:15:58', '2020-06-19 23:15:58'),
(52, 17, './admin/sub_images/1592630858_190.jpg', '2020-06-19 23:27:38', '2020-06-19 23:27:38'),
(53, 17, './admin/sub_images/1592630858_191.jpg', '2020-06-19 23:27:38', '2020-06-19 23:27:38'),
(54, 17, './admin/sub_images/1592630858_194.jpg', '2020-06-19 23:27:38', '2020-06-19 23:27:38'),
(55, 18, './admin/sub_images/1592631066_188.jpg', '2020-06-19 23:31:06', '2020-06-19 23:31:06'),
(56, 18, './admin/sub_images/1592631067_219.jpg', '2020-06-19 23:31:07', '2020-06-19 23:31:07'),
(57, 18, './admin/sub_images/1592631067_220.jpg', '2020-06-19 23:31:07', '2020-06-19 23:31:07'),
(58, 19, './admin/sub_images/1592631682_220.png', '2020-06-19 23:41:22', '2020-06-19 23:41:22'),
(59, 19, './admin/sub_images/1592631683_222.jpg', '2020-06-19 23:41:23', '2020-06-19 23:41:23'),
(60, 19, './admin/sub_images/1592631684_224.jpg', '2020-06-19 23:41:24', '2020-06-19 23:41:24'),
(61, 20, './admin/sub_images/1592677392_2.jpg', '2020-06-20 12:23:12', '2020-06-20 12:23:12'),
(62, 20, './admin/sub_images/1592677392_3.jpg', '2020-06-20 12:23:13', '2020-06-20 12:23:13'),
(63, 20, './admin/sub_images/1592677393_5.jpg', '2020-06-20 12:23:13', '2020-06-20 12:23:13'),
(64, 21, './admin/sub_images/1592678619_10.jpg', '2020-06-20 12:43:39', '2020-06-20 12:43:39'),
(65, 21, './admin/sub_images/1592678620_12.jpg', '2020-06-20 12:43:40', '2020-06-20 12:43:40'),
(66, 21, './admin/sub_images/1592678620_13.jpg', '2020-06-20 12:43:40', '2020-06-20 12:43:40'),
(67, 22, './admin/sub_images/1592678880_15.jpg', '2020-06-20 12:48:00', '2020-06-20 12:48:00'),
(68, 22, './admin/sub_images/1592678880_16.jpg', '2020-06-20 12:48:01', '2020-06-20 12:48:01'),
(69, 22, './admin/sub_images/1592678881_17.jpg', '2020-06-20 12:48:01', '2020-06-20 12:48:01'),
(70, 23, './admin/sub_images/1592679056_5.jpg', '2020-06-20 12:50:56', '2020-06-20 12:50:56'),
(71, 23, './admin/sub_images/1592679056_6.jpg', '2020-06-20 12:50:56', '2020-06-20 12:50:56'),
(72, 23, './admin/sub_images/1592679056_7.jpg', '2020-06-20 12:50:56', '2020-06-20 12:50:56'),
(73, 24, './admin/sub_images/1592679586_4.jpg', '2020-06-20 12:59:46', '2020-06-20 12:59:46'),
(74, 24, './admin/sub_images/1592679586_6.jpg', '2020-06-20 12:59:46', '2020-06-20 12:59:46'),
(75, 24, './admin/sub_images/1592679587_7.jpg', '2020-06-20 12:59:47', '2020-06-20 12:59:47'),
(76, 25, './admin/sub_images/1592680266_19.jpg', '2020-06-20 13:11:06', '2020-06-20 13:11:06'),
(77, 25, './admin/sub_images/1592680266_21.jpg', '2020-06-20 13:11:07', '2020-06-20 13:11:07'),
(78, 25, './admin/sub_images/1592680267_22.png', '2020-06-20 13:11:07', '2020-06-20 13:11:07'),
(79, 25, './admin/sub_images/1592680267_23.jpg', '2020-06-20 13:11:07', '2020-06-20 13:11:07'),
(80, 26, './admin/sub_images/1592680435_22.png', '2020-06-20 13:13:55', '2020-06-20 13:13:55'),
(81, 26, './admin/sub_images/1592680435_23.jpg', '2020-06-20 13:13:56', '2020-06-20 13:13:56'),
(82, 26, './admin/sub_images/1592680436_24.jpg', '2020-06-20 13:13:56', '2020-06-20 13:13:56'),
(83, 27, './admin/sub_images/1592680556_19.jpg', '2020-06-20 13:15:56', '2020-06-20 13:15:56'),
(84, 27, './admin/sub_images/1592680556_21.jpg', '2020-06-20 13:15:56', '2020-06-20 13:15:56'),
(85, 27, './admin/sub_images/1592680557_24.jpg', '2020-06-20 13:15:57', '2020-06-20 13:15:57'),
(86, 28, './admin/sub_images/1592680703_23.jpg', '2020-06-20 13:18:24', '2020-06-20 13:18:24'),
(87, 28, './admin/sub_images/1592680704_25.jpg', '2020-06-20 13:18:24', '2020-06-20 13:18:24'),
(88, 28, './admin/sub_images/1592680704_26.png', '2020-06-20 13:18:24', '2020-06-20 13:18:24'),
(89, 29, './admin/sub_images/1592680819_19.jpg', '2020-06-20 13:20:19', '2020-06-20 13:20:19'),
(90, 29, './admin/sub_images/1592680819_21.jpg', '2020-06-20 13:20:19', '2020-06-20 13:20:19'),
(91, 29, './admin/sub_images/1592680819_22.png', '2020-06-20 13:20:19', '2020-06-20 13:20:19'),
(92, 30, './admin/sub_images/1592681447_7.jpg', '2020-06-20 13:30:47', '2020-06-20 13:30:47'),
(93, 30, './admin/sub_images/1592681447_8.jpg', '2020-06-20 13:30:47', '2020-06-20 13:30:47'),
(94, 30, './admin/sub_images/1592681447_10.jpg', '2020-06-20 13:30:48', '2020-06-20 13:30:48'),
(95, 31, './admin/sub_images/1592681572_6.jpg', '2020-06-20 13:32:52', '2020-06-20 13:32:52'),
(96, 31, './admin/sub_images/1592681573_7.jpg', '2020-06-20 13:32:53', '2020-06-20 13:32:53'),
(97, 31, './admin/sub_images/1592681573_8.jpg', '2020-06-20 13:32:53', '2020-06-20 13:32:53'),
(98, 32, './admin/sub_images/1592681752_9.jpg', '2020-06-20 13:35:53', '2020-06-20 13:35:53'),
(99, 32, './admin/sub_images/1592681753_10.jpg', '2020-06-20 13:35:53', '2020-06-20 13:35:53'),
(100, 32, './admin/sub_images/1592681753_12.jpg', '2020-06-20 13:35:53', '2020-06-20 13:35:53'),
(101, 33, './admin/sub_images/1592681898_3.jpg', '2020-06-20 13:38:19', '2020-06-20 13:38:19'),
(102, 33, './admin/sub_images/1592681899_5.jpg', '2020-06-20 13:38:19', '2020-06-20 13:38:19'),
(103, 33, './admin/sub_images/1592681899_8.jpg', '2020-06-20 13:38:19', '2020-06-20 13:38:19'),
(104, 34, './admin/sub_images/1592682220_8.jpg', '2020-06-20 13:43:40', '2020-06-20 13:43:40'),
(105, 34, './admin/sub_images/1592682220_10.jpg', '2020-06-20 13:43:40', '2020-06-20 13:43:40'),
(106, 34, './admin/sub_images/1592682220_11.jpg', '2020-06-20 13:43:40', '2020-06-20 13:43:40'),
(107, 35, './admin/sub_images/1592682893_4.jpg', '2020-06-20 13:54:53', '2020-06-20 13:54:53'),
(108, 35, './admin/sub_images/1592682894_6.jpg', '2020-06-20 13:54:54', '2020-06-20 13:54:54'),
(109, 35, './admin/sub_images/1592682894_9.jpg', '2020-06-20 13:54:55', '2020-06-20 13:54:55'),
(110, 36, './admin/sub_images/1592682983_3.jpg', '2020-06-20 13:56:23', '2020-06-20 13:56:23'),
(111, 36, './admin/sub_images/1592682983_6.jpg', '2020-06-20 13:56:23', '2020-06-20 13:56:23'),
(112, 36, './admin/sub_images/1592682984_9.jpg', '2020-06-20 13:56:24', '2020-06-20 13:56:24'),
(113, 37, './admin/sub_images/1592683070_2.jpg', '2020-06-20 13:57:50', '2020-06-20 13:57:50'),
(114, 37, './admin/sub_images/1592683071_4.jpg', '2020-06-20 13:57:51', '2020-06-20 13:57:51'),
(115, 37, './admin/sub_images/1592683071_6.jpg', '2020-06-20 13:57:51', '2020-06-20 13:57:51'),
(116, 38, './admin/sub_images/1592683185_6.jpg', '2020-06-20 13:59:46', '2020-06-20 13:59:46'),
(117, 38, './admin/sub_images/1592683186_9.jpg', '2020-06-20 13:59:46', '2020-06-20 13:59:46'),
(118, 38, './admin/sub_images/1592683186_11.jpg', '2020-06-20 13:59:46', '2020-06-20 13:59:46'),
(119, 39, './admin/sub_images/1592683293_3.jpg', '2020-06-20 14:01:33', '2020-06-20 14:01:33'),
(120, 39, './admin/sub_images/1592683294_4.jpg', '2020-06-20 14:01:34', '2020-06-20 14:01:34'),
(121, 39, './admin/sub_images/1592683294_9.jpg', '2020-06-20 14:01:35', '2020-06-20 14:01:35'),
(122, 40, './admin/sub_images/1592683527_53.jpg', '2020-06-20 14:05:27', '2020-06-20 14:05:27'),
(123, 40, './admin/sub_images/1592683527_54.jpg', '2020-06-20 14:05:27', '2020-06-20 14:05:27'),
(124, 40, './admin/sub_images/1592683527_55.jpg', '2020-06-20 14:05:27', '2020-06-20 14:05:27'),
(125, 41, './admin/sub_images/1592683706_49.jpg', '2020-06-20 14:08:26', '2020-06-20 14:08:26'),
(126, 41, './admin/sub_images/1592683706_51.jpg', '2020-06-20 14:08:26', '2020-06-20 14:08:26'),
(127, 41, './admin/sub_images/1592683706_55.jpg', '2020-06-20 14:08:26', '2020-06-20 14:08:26'),
(128, 42, './admin/sub_images/1592683817_52.jpg', '2020-06-20 14:10:17', '2020-06-20 14:10:17'),
(129, 42, './admin/sub_images/1592683817_53.jpg', '2020-06-20 14:10:17', '2020-06-20 14:10:17'),
(130, 42, './admin/sub_images/1592683817_56.jpg', '2020-06-20 14:10:17', '2020-06-20 14:10:17'),
(131, 43, './admin/sub_images/1592683938_56.jpg', '2020-06-20 14:12:18', '2020-06-20 14:12:18'),
(132, 43, './admin/sub_images/1592683938_57.jpg', '2020-06-20 14:12:18', '2020-06-20 14:12:18'),
(133, 43, './admin/sub_images/1592683938_58.jpg', '2020-06-20 14:12:19', '2020-06-20 14:12:19'),
(134, 44, './admin/sub_images/1592684074_53.jpg', '2020-06-20 14:14:34', '2020-06-20 14:14:34'),
(135, 44, './admin/sub_images/1592684074_54.jpg', '2020-06-20 14:14:34', '2020-06-20 14:14:34'),
(136, 44, './admin/sub_images/1592684074_56.jpg', '2020-06-20 14:14:35', '2020-06-20 14:14:35'),
(137, 45, './admin/sub_images/1592718672_1577944575_slower_kamez4.jpg', '2020-06-20 23:51:12', '2020-06-20 23:51:12'),
(138, 45, './admin/sub_images/1592718672_1577944701_slower_kamez2.jpg', '2020-06-20 23:51:12', '2020-06-20 23:51:12'),
(139, 45, './admin/sub_images/1592718672_1577944701_slower_kamez3.jpg', '2020-06-20 23:51:12', '2020-06-20 23:51:12'),
(140, 46, './admin/sub_images/1592718854_1577944575_slower_kamez4.jpg', '2020-06-20 23:54:14', '2020-06-20 23:54:14'),
(141, 46, './admin/sub_images/1592718854_1577944701_slower_kamez2.jpg', '2020-06-20 23:54:14', '2020-06-20 23:54:14'),
(142, 46, './admin/sub_images/1592718855_1577944701_slower_kamez3.jpg', '2020-06-20 23:54:15', '2020-06-20 23:54:15'),
(143, 47, './admin/sub_images/1592719056_1.jpg', '2020-06-20 23:57:37', '2020-06-20 23:57:37'),
(144, 47, './admin/sub_images/1592719057_2.jpg', '2020-06-20 23:57:37', '2020-06-20 23:57:37'),
(145, 47, './admin/sub_images/1592719057_3.jpg', '2020-06-20 23:57:37', '2020-06-20 23:57:37'),
(146, 48, './admin/sub_images/1592719514_4.jpg', '2020-06-21 00:05:15', '2020-06-21 00:05:15'),
(147, 48, './admin/sub_images/1592719515_5.jpg', '2020-06-21 00:05:15', '2020-06-21 00:05:15'),
(148, 48, './admin/sub_images/1592719515_6.jpg', '2020-06-21 00:05:15', '2020-06-21 00:05:15'),
(149, 49, './admin/sub_images/1592719758_1.jpg', '2020-06-21 00:09:19', '2020-06-21 00:09:19'),
(150, 49, './admin/sub_images/1592719759_3.jpg', '2020-06-21 00:09:19', '2020-06-21 00:09:19'),
(151, 49, './admin/sub_images/1592719759_7.jpg', '2020-06-21 00:09:19', '2020-06-21 00:09:19'),
(152, 50, './admin/sub_images/1592721016_88.jpg', '2020-06-21 00:30:16', '2020-06-21 00:30:16'),
(153, 50, './admin/sub_images/1592721016_90.jpg', '2020-06-21 00:30:16', '2020-06-21 00:30:16'),
(154, 50, './admin/sub_images/1592721016_91.jpg', '2020-06-21 00:30:16', '2020-06-21 00:30:16'),
(155, 51, './admin/sub_images/1592721175_90.jpg', '2020-06-21 00:32:55', '2020-06-21 00:32:55'),
(156, 51, './admin/sub_images/1592721175_91.jpg', '2020-06-21 00:32:55', '2020-06-21 00:32:55'),
(157, 51, './admin/sub_images/1592721175_96.jpg', '2020-06-21 00:32:56', '2020-06-21 00:32:56'),
(158, 52, './admin/sub_images/1592721405_89.jpg', '2020-06-21 00:36:45', '2020-06-21 00:36:45'),
(159, 52, './admin/sub_images/1592721406_90.jpg', '2020-06-21 00:36:46', '2020-06-21 00:36:46'),
(160, 52, './admin/sub_images/1592721406_91.jpg', '2020-06-21 00:36:46', '2020-06-21 00:36:46'),
(161, 53, './admin/sub_images/1592721586_1.jpg', '2020-06-21 00:39:46', '2020-06-21 00:39:46'),
(162, 53, './admin/sub_images/1592721587_2.jpg', '2020-06-21 00:39:47', '2020-06-21 00:39:47'),
(163, 53, './admin/sub_images/1592721587_3.jpg', '2020-06-21 00:39:47', '2020-06-21 00:39:47'),
(164, 54, './admin/sub_images/1592721756_4.jpg', '2020-06-21 00:42:36', '2020-06-21 00:42:36'),
(165, 54, './admin/sub_images/1592721756_6.jpg', '2020-06-21 00:42:36', '2020-06-21 00:42:36'),
(166, 54, './admin/sub_images/1592721756_8.jpg', '2020-06-21 00:42:36', '2020-06-21 00:42:36'),
(167, 55, './admin/sub_images/1592722255_1.jpg', '2020-06-21 00:50:55', '2020-06-21 00:50:55'),
(168, 55, './admin/sub_images/1592722255_3.jpg', '2020-06-21 00:50:55', '2020-06-21 00:50:55'),
(169, 55, './admin/sub_images/1592722255_5.jpg', '2020-06-21 00:50:55', '2020-06-21 00:50:55'),
(170, 56, './admin/sub_images/1592722450_1.jpg', '2020-06-21 00:54:10', '2020-06-21 00:54:10'),
(171, 56, './admin/sub_images/1592722450_2.jpg', '2020-06-21 00:54:11', '2020-06-21 00:54:11'),
(172, 56, './admin/sub_images/1592722451_3.jpg', '2020-06-21 00:54:11', '2020-06-21 00:54:11'),
(173, 57, './admin/sub_images/1592722605_1.jpg', '2020-06-21 00:56:45', '2020-06-21 00:56:45'),
(174, 57, './admin/sub_images/1592722605_6.jpg', '2020-06-21 00:56:45', '2020-06-21 00:56:45'),
(175, 57, './admin/sub_images/1592722605_8.jpg', '2020-06-21 00:56:45', '2020-06-21 00:56:45'),
(176, 58, './admin/sub_images/1592722749_1.jpg', '2020-06-21 00:59:09', '2020-06-21 00:59:09'),
(177, 58, './admin/sub_images/1592722749_2.jpg', '2020-06-21 00:59:10', '2020-06-21 00:59:10'),
(178, 58, './admin/sub_images/1592722750_6.jpg', '2020-06-21 00:59:10', '2020-06-21 00:59:10'),
(179, 59, './admin/sub_images/1592722898_1.jpg', '2020-06-21 01:01:38', '2020-06-21 01:01:38'),
(180, 59, './admin/sub_images/1592722898_5.jpg', '2020-06-21 01:01:39', '2020-06-21 01:01:39'),
(181, 59, './admin/sub_images/1592722899_7.jpeg', '2020-06-21 01:01:39', '2020-06-21 01:01:39'),
(182, 60, './admin/sub_images/1592723610_1.jpg', '2020-06-21 01:13:31', '2020-06-21 01:13:31'),
(183, 60, './admin/sub_images/1592723611_2.jpg', '2020-06-21 01:13:31', '2020-06-21 01:13:31'),
(184, 60, './admin/sub_images/1592723611_4.jpg', '2020-06-21 01:13:31', '2020-06-21 01:13:31'),
(185, 61, './admin/sub_images/1592723763_7.jpg', '2020-06-21 01:16:03', '2020-06-21 01:16:03'),
(186, 61, './admin/sub_images/1592723763_9.jpg', '2020-06-21 01:16:04', '2020-06-21 01:16:04'),
(187, 61, './admin/sub_images/1592723764_11.jpg', '2020-06-21 01:16:04', '2020-06-21 01:16:04'),
(188, 62, './admin/sub_images/1592723876_1.jpg', '2020-06-21 01:17:56', '2020-06-21 01:17:56'),
(189, 62, './admin/sub_images/1592723877_2.jpg', '2020-06-21 01:17:57', '2020-06-21 01:17:57'),
(190, 62, './admin/sub_images/1592723877_4.jpg', '2020-06-21 01:17:57', '2020-06-21 01:17:57'),
(191, 63, './admin/sub_images/1592724276_5.jpg', '2020-06-21 01:24:37', '2020-06-21 01:24:37'),
(192, 63, './admin/sub_images/1592724277_7.jpg', '2020-06-21 01:24:38', '2020-06-21 01:24:38'),
(193, 63, './admin/sub_images/1592724278_8.jpg', '2020-06-21 01:24:39', '2020-06-21 01:24:39'),
(194, 64, './admin/sub_images/1592724405_4.jpg', '2020-06-21 01:26:46', '2020-06-21 01:26:46'),
(195, 64, './admin/sub_images/1592724407_5.jpg', '2020-06-21 01:26:48', '2020-06-21 01:26:48'),
(196, 64, './admin/sub_images/1592724408_9.jpg', '2020-06-21 01:26:49', '2020-06-21 01:26:49'),
(197, 65, './admin/sub_images/1592724952_2.jpg', '2020-06-21 01:35:52', '2020-06-21 01:35:52'),
(198, 65, './admin/sub_images/1592724952_6.jpg', '2020-06-21 01:35:53', '2020-06-21 01:35:53'),
(199, 65, './admin/sub_images/1592724953_7.jpg', '2020-06-21 01:35:53', '2020-06-21 01:35:53'),
(200, 66, './admin/sub_images/1592725255_2.jpg', '2020-06-21 01:40:55', '2020-06-21 01:40:55'),
(201, 66, './admin/sub_images/1592725255_6.jpg', '2020-06-21 01:40:56', '2020-06-21 01:40:56'),
(202, 66, './admin/sub_images/1592725256_9.jpg', '2020-06-21 01:40:56', '2020-06-21 01:40:56'),
(203, 67, './admin/sub_images/1592726024_1.jpg', '2020-06-21 01:53:44', '2020-06-21 01:53:44'),
(204, 67, './admin/sub_images/1592726024_8.jpg', '2020-06-21 01:53:44', '2020-06-21 01:53:44'),
(205, 67, './admin/sub_images/1592726024_9.jpg', '2020-06-21 01:53:45', '2020-06-21 01:53:45'),
(206, 68, './admin/sub_images/1592726209_1.jpg', '2020-06-21 01:56:49', '2020-06-21 01:56:49'),
(207, 68, './admin/sub_images/1592726209_4.jpg', '2020-06-21 01:56:49', '2020-06-21 01:56:49'),
(208, 68, './admin/sub_images/1592726209_10.jpg', '2020-06-21 01:56:50', '2020-06-21 01:56:50'),
(209, 69, './admin/sub_images/1592726357_6.jpg', '2020-06-21 01:59:18', '2020-06-21 01:59:18'),
(210, 69, './admin/sub_images/1592726358_8.jpg', '2020-06-21 01:59:18', '2020-06-21 01:59:18'),
(211, 69, './admin/sub_images/1592726358_9.jpg', '2020-06-21 01:59:18', '2020-06-21 01:59:18'),
(212, 70, './admin/sub_images/1592738139_1.jpg', '2020-06-21 05:15:39', '2020-06-21 05:15:39'),
(213, 70, './admin/sub_images/1592738139_2.jpg', '2020-06-21 05:15:40', '2020-06-21 05:15:40'),
(214, 70, './admin/sub_images/1592738140_4.jpg', '2020-06-21 05:15:40', '2020-06-21 05:15:40'),
(217, 71, './admin/sub_images/1592738318_2.jpg', '2020-06-21 05:18:39', '2020-06-21 05:18:39'),
(218, 71, './admin/sub_images/1592738319_5.jpg', '2020-06-21 05:18:39', '2020-06-21 05:18:39'),
(219, 71, './admin/sub_images/1592738319_6.jpg', '2020-06-21 05:18:39', '2020-06-21 05:18:39'),
(220, 72, './admin/sub_images/1592738464_6.jpg', '2020-06-21 05:21:04', '2020-06-21 05:21:04'),
(221, 72, './admin/sub_images/1592738464_7.jpg', '2020-06-21 05:21:05', '2020-06-21 05:21:05'),
(222, 72, './admin/sub_images/1592738465_8.jpg', '2020-06-21 05:21:05', '2020-06-21 05:21:05'),
(223, 73, './admin/sub_images/1592738694_7.jpg', '2020-06-21 05:24:54', '2020-06-21 05:24:54'),
(224, 73, './admin/sub_images/1592738694_8.jpg', '2020-06-21 05:24:55', '2020-06-21 05:24:55'),
(225, 73, './admin/sub_images/1592738695_9.jpg', '2020-06-21 05:24:55', '2020-06-21 05:24:55'),
(226, 74, './admin/sub_images/1592738980_5.jpg', '2020-06-21 05:29:40', '2020-06-21 05:29:40'),
(227, 74, './admin/sub_images/1592738980_8.jpg', '2020-06-21 05:29:41', '2020-06-21 05:29:41'),
(228, 74, './admin/sub_images/1592738981_10.jpg', '2020-06-21 05:29:41', '2020-06-21 05:29:41'),
(229, 75, './admin/sub_images/1592739485_229.jpg', '2020-06-21 05:38:05', '2020-06-21 05:38:05'),
(230, 75, './admin/sub_images/1592739485_230.jpg', '2020-06-21 05:38:05', '2020-06-21 05:38:05'),
(231, 75, './admin/sub_images/1592739486_232.jpg', '2020-06-21 05:38:06', '2020-06-21 05:38:06'),
(232, 76, './admin/sub_images/1592739924_226.jpg', '2020-06-21 05:45:24', '2020-06-21 05:45:24'),
(233, 76, './admin/sub_images/1592739924_231.jpg', '2020-06-21 05:45:24', '2020-06-21 05:45:24'),
(234, 76, './admin/sub_images/1592739924_234.jpg', '2020-06-21 05:45:24', '2020-06-21 05:45:24'),
(238, 78, './admin/sub_images/1592741398_229.jpg', '2020-06-21 06:09:58', '2020-06-21 06:09:58'),
(239, 78, './admin/sub_images/1592741398_230.jpg', '2020-06-21 06:09:58', '2020-06-21 06:09:58'),
(240, 78, './admin/sub_images/1592741398_232.jpg', '2020-06-21 06:09:58', '2020-06-21 06:09:58'),
(241, 79, './admin/sub_images/1592741509_226.jpg', '2020-06-21 06:11:49', '2020-06-21 06:11:49'),
(242, 79, './admin/sub_images/1592741509_234.jpg', '2020-06-21 06:11:49', '2020-06-21 06:11:49'),
(243, 79, './admin/sub_images/1592741509_236.jpg', '2020-06-21 06:11:50', '2020-06-21 06:11:50'),
(244, 80, './admin/sub_images/1592741639_226.jpg', '2020-06-21 06:13:59', '2020-06-21 06:13:59'),
(245, 80, './admin/sub_images/1592741639_227.jpg', '2020-06-21 06:13:59', '2020-06-21 06:13:59'),
(246, 80, './admin/sub_images/1592741639_237.jpg', '2020-06-21 06:13:59', '2020-06-21 06:13:59'),
(247, 81, './admin/sub_images/1592741747_234.jpg', '2020-06-21 06:15:47', '2020-06-21 06:15:47'),
(248, 81, './admin/sub_images/1592741747_236.jpg', '2020-06-21 06:15:47', '2020-06-21 06:15:47'),
(249, 81, './admin/sub_images/1592741747_237.jpg', '2020-06-21 06:15:47', '2020-06-21 06:15:47'),
(250, 82, './admin/sub_images/1592741905_227.jpg', '2020-06-21 06:18:25', '2020-06-21 06:18:25'),
(251, 82, './admin/sub_images/1592741905_235.jpg', '2020-06-21 06:18:25', '2020-06-21 06:18:25'),
(252, 82, './admin/sub_images/1592741905_237.jpg', '2020-06-21 06:18:25', '2020-06-21 06:18:25'),
(253, 83, './admin/sub_images/1592742817_10.jpg', '2020-06-21 06:33:37', '2020-06-21 06:33:37'),
(254, 83, './admin/sub_images/1592742817_11.jpg', '2020-06-21 06:33:37', '2020-06-21 06:33:37'),
(255, 83, './admin/sub_images/1592742817_14.jpg', '2020-06-21 06:33:37', '2020-06-21 06:33:37'),
(256, 84, './admin/sub_images/1592742909_2.jpg', '2020-06-21 06:35:09', '2020-06-21 06:35:09'),
(257, 84, './admin/sub_images/1592742909_6.jpg', '2020-06-21 06:35:09', '2020-06-21 06:35:09'),
(258, 84, './admin/sub_images/1592742909_8.jpg', '2020-06-21 06:35:09', '2020-06-21 06:35:09'),
(259, 85, './admin/sub_images/1592742999_10.jpg', '2020-06-21 06:36:39', '2020-06-21 06:36:39'),
(260, 85, './admin/sub_images/1592742999_11.jpg', '2020-06-21 06:36:39', '2020-06-21 06:36:39'),
(261, 85, './admin/sub_images/1592742999_12.jpg', '2020-06-21 06:36:40', '2020-06-21 06:36:40'),
(262, 86, './admin/sub_images/1592743091_1.jpg', '2020-06-21 06:38:11', '2020-06-21 06:38:11'),
(263, 86, './admin/sub_images/1592743091_2.jpg', '2020-06-21 06:38:11', '2020-06-21 06:38:11'),
(264, 86, './admin/sub_images/1592743092_7.jpg', '2020-06-21 06:38:12', '2020-06-21 06:38:12'),
(265, 87, './admin/sub_images/1592743200_1.jpg', '2020-06-21 06:40:00', '2020-06-21 06:40:00'),
(266, 87, './admin/sub_images/1592743200_7.jpg', '2020-06-21 06:40:00', '2020-06-21 06:40:00'),
(267, 87, './admin/sub_images/1592743200_11.jpg', '2020-06-21 06:40:01', '2020-06-21 06:40:01'),
(268, 88, './admin/sub_images/1592743675_2.jpg', '2020-06-21 06:47:55', '2020-06-21 06:47:55'),
(269, 88, './admin/sub_images/1592743675_3.jpg', '2020-06-21 06:47:55', '2020-06-21 06:47:55'),
(270, 88, './admin/sub_images/1592743675_4.jpg', '2020-06-21 06:47:56', '2020-06-21 06:47:56'),
(271, 89, './admin/sub_images/1592743773_1.jpg', '2020-06-21 06:49:33', '2020-06-21 06:49:33'),
(272, 89, './admin/sub_images/1592743773_2.jpg', '2020-06-21 06:49:33', '2020-06-21 06:49:33'),
(273, 89, './admin/sub_images/1592743773_7.jpg', '2020-06-21 06:49:33', '2020-06-21 06:49:33'),
(274, 90, './admin/sub_images/1592743867_3.jpg', '2020-06-21 06:51:07', '2020-06-21 06:51:07'),
(275, 90, './admin/sub_images/1592743867_4.jpg', '2020-06-21 06:51:07', '2020-06-21 06:51:07'),
(276, 90, './admin/sub_images/1592743867_7.jpg', '2020-06-21 06:51:07', '2020-06-21 06:51:07'),
(277, 91, './admin/sub_images/1592744033_1.jpg', '2020-06-21 06:53:53', '2020-06-21 06:53:53'),
(278, 91, './admin/sub_images/1592744033_2.jpg', '2020-06-21 06:53:53', '2020-06-21 06:53:53'),
(279, 91, './admin/sub_images/1592744033_4.jpg', '2020-06-21 06:53:53', '2020-06-21 06:53:53'),
(280, 92, './admin/sub_images/1592744144_8.jpg', '2020-06-21 06:55:44', '2020-06-21 06:55:44'),
(281, 92, './admin/sub_images/1592744144_11.jpg', '2020-06-21 06:55:44', '2020-06-21 06:55:44'),
(282, 92, './admin/sub_images/1592744144_12.jpg', '2020-06-21 06:55:44', '2020-06-21 06:55:44'),
(283, 93, './admin/sub_images/1592801405_42.jpg', '2020-06-21 22:50:05', '2020-06-21 22:50:05'),
(284, 93, './admin/sub_images/1592801405_43.jpg', '2020-06-21 22:50:05', '2020-06-21 22:50:05'),
(285, 93, './admin/sub_images/1592801405_44.jpg', '2020-06-21 22:50:05', '2020-06-21 22:50:05'),
(286, 94, './admin/sub_images/1592802588_32.jpg', '2020-06-21 23:09:48', '2020-06-21 23:09:48'),
(287, 94, './admin/sub_images/1592802589_33.jpg', '2020-06-21 23:09:49', '2020-06-21 23:09:49'),
(288, 94, './admin/sub_images/1592802589_35.jpg', '2020-06-21 23:09:50', '2020-06-21 23:09:50'),
(289, 95, './admin/sub_images/1592802966_31.jpg', '2020-06-21 23:16:06', '2020-06-21 23:16:06'),
(290, 95, './admin/sub_images/1592802966_32.jpg', '2020-06-21 23:16:06', '2020-06-21 23:16:06'),
(291, 95, './admin/sub_images/1592802966_33.jpg', '2020-06-21 23:16:06', '2020-06-21 23:16:06'),
(292, 96, './admin/sub_images/1592803162_31.jpg', '2020-06-21 23:19:22', '2020-06-21 23:19:22'),
(293, 96, './admin/sub_images/1592803162_33.jpg', '2020-06-21 23:19:22', '2020-06-21 23:19:22'),
(294, 96, './admin/sub_images/1592803162_38.jpg', '2020-06-21 23:19:22', '2020-06-21 23:19:22'),
(295, 97, './admin/sub_images/1592803532_208.jpg', '2020-06-21 23:25:32', '2020-06-21 23:25:32'),
(296, 97, './admin/sub_images/1592803532_209.jpg', '2020-06-21 23:25:32', '2020-06-21 23:25:32'),
(297, 97, './admin/sub_images/1592803532_210.jpg', '2020-06-21 23:25:32', '2020-06-21 23:25:32'),
(298, 98, './admin/sub_images/1592803841_49.jpg', '2020-06-21 23:30:41', '2020-06-21 23:30:41'),
(299, 98, './admin/sub_images/1592803841_50.png', '2020-06-21 23:30:41', '2020-06-21 23:30:41'),
(300, 98, './admin/sub_images/1592803841_51.jpg', '2020-06-21 23:30:42', '2020-06-21 23:30:42'),
(301, 99, './admin/sub_images/1592807457_2.jpg', '2020-06-22 00:30:59', '2020-06-22 00:30:59'),
(302, 99, './admin/sub_images/1592807459_3.jpg', '2020-06-22 00:31:02', '2020-06-22 00:31:02'),
(303, 99, './admin/sub_images/1592807462_5.jpg', '2020-06-22 00:31:06', '2020-06-22 00:31:06'),
(304, 100, './admin/sub_images/1592807744_7.jpg', '2020-06-22 00:35:45', '2020-06-22 00:35:45'),
(305, 100, './admin/sub_images/1592807745_8.jpg', '2020-06-22 00:35:45', '2020-06-22 00:35:45'),
(306, 100, './admin/sub_images/1592807745_9.jpg', '2020-06-22 00:35:45', '2020-06-22 00:35:45'),
(307, 101, './admin/sub_images/1592808213_10.jpg', '2020-06-22 00:43:33', '2020-06-22 00:43:33'),
(308, 101, './admin/sub_images/1592808213_11.jpg', '2020-06-22 00:43:33', '2020-06-22 00:43:33'),
(309, 101, './admin/sub_images/1592808213_12.jpg', '2020-06-22 00:43:33', '2020-06-22 00:43:33'),
(310, 102, './admin/sub_images/1592808494_14.jpg', '2020-06-22 00:48:14', '2020-06-22 00:48:14'),
(311, 102, './admin/sub_images/1592808494_15.jpg', '2020-06-22 00:48:14', '2020-06-22 00:48:14'),
(312, 102, './admin/sub_images/1592808494_16.jpg', '2020-06-22 00:48:15', '2020-06-22 00:48:15'),
(313, 103, './admin/sub_images/1592808935_18.jpg', '2020-06-22 00:55:35', '2020-06-22 00:55:35'),
(314, 103, './admin/sub_images/1592808936_19.jpg', '2020-06-22 00:55:36', '2020-06-22 00:55:36'),
(315, 103, './admin/sub_images/1592808936_20.jpg', '2020-06-22 00:55:36', '2020-06-22 00:55:36'),
(316, 104, './admin/sub_images/1592809168_23.jpg', '2020-06-22 00:59:28', '2020-06-22 00:59:28'),
(317, 104, './admin/sub_images/1592809168_24.jpg', '2020-06-22 00:59:28', '2020-06-22 00:59:28'),
(318, 104, './admin/sub_images/1592809168_25.jpg', '2020-06-22 00:59:29', '2020-06-22 00:59:29'),
(319, 105, './admin/sub_images/1592812183_2.jpg', '2020-06-22 01:49:43', '2020-06-22 01:49:43'),
(320, 105, './admin/sub_images/1592812183_4.jpg', '2020-06-22 01:49:43', '2020-06-22 01:49:43'),
(321, 105, './admin/sub_images/1592812184_5.jpg', '2020-06-22 01:49:44', '2020-06-22 01:49:44'),
(322, 106, './admin/sub_images/1592812442_5.jpg', '2020-06-22 01:54:02', '2020-06-22 01:54:02'),
(323, 106, './admin/sub_images/1592812442_6.jpg', '2020-06-22 01:54:03', '2020-06-22 01:54:03'),
(324, 106, './admin/sub_images/1592812443_8.jpg', '2020-06-22 01:54:03', '2020-06-22 01:54:03'),
(325, 107, './admin/sub_images/1592812747_10.jpg', '2020-06-22 01:59:07', '2020-06-22 01:59:07'),
(326, 107, './admin/sub_images/1592812747_11.jpg', '2020-06-22 01:59:08', '2020-06-22 01:59:08'),
(327, 107, './admin/sub_images/1592812748_12.jpg', '2020-06-22 01:59:08', '2020-06-22 01:59:08'),
(328, 108, './admin/sub_images/1592813058_14.jpg', '2020-06-22 02:04:18', '2020-06-22 02:04:18'),
(329, 108, './admin/sub_images/1592813058_16.jpg', '2020-06-22 02:04:18', '2020-06-22 02:04:18'),
(330, 108, './admin/sub_images/1592813059_18.jpg', '2020-06-22 02:04:19', '2020-06-22 02:04:19'),
(331, 109, './admin/sub_images/1592813306_20.jpg', '2020-06-22 02:08:26', '2020-06-22 02:08:26'),
(332, 109, './admin/sub_images/1592813306_21.jpg', '2020-06-22 02:08:26', '2020-06-22 02:08:26'),
(333, 109, './admin/sub_images/1592813306_22.jpg', '2020-06-22 02:08:27', '2020-06-22 02:08:27'),
(334, 110, './admin/sub_images/1592813603_25.jpg', '2020-06-22 02:13:23', '2020-06-22 02:13:23'),
(335, 110, './admin/sub_images/1592813603_27.jpg', '2020-06-22 02:13:24', '2020-06-22 02:13:24'),
(336, 110, './admin/sub_images/1592813604_29.jpg', '2020-06-22 02:13:24', '2020-06-22 02:13:24'),
(337, 111, './admin/sub_images/1592813821_30.jpg', '2020-06-22 02:17:02', '2020-06-22 02:17:02'),
(338, 111, './admin/sub_images/1592813822_31.jpg', '2020-06-22 02:17:02', '2020-06-22 02:17:02'),
(339, 111, './admin/sub_images/1592813822_32.jpg', '2020-06-22 02:17:02', '2020-06-22 02:17:02'),
(340, 112, './admin/sub_images/1592983491_1.jpg', '2020-06-24 01:24:51', '2020-06-24 01:24:51'),
(341, 112, './admin/sub_images/1592983491_3.jpg', '2020-06-24 01:24:51', '2020-06-24 01:24:51'),
(342, 112, './admin/sub_images/1592983492_4.jpg', '2020-06-24 01:24:52', '2020-06-24 01:24:52'),
(343, 113, './admin/sub_images/1592984354_1.jpg', '2020-06-24 01:39:14', '2020-06-24 01:39:14'),
(344, 113, './admin/sub_images/1592984354_4.jpg', '2020-06-24 01:39:14', '2020-06-24 01:39:14'),
(345, 113, './admin/sub_images/1592984354_6.jpg', '2020-06-24 01:39:14', '2020-06-24 01:39:14'),
(346, 114, './admin/sub_images/1592984820_5.jpg', '2020-06-24 01:47:00', '2020-06-24 01:47:00'),
(347, 114, './admin/sub_images/1592984820_6.jpg', '2020-06-24 01:47:00', '2020-06-24 01:47:00'),
(348, 114, './admin/sub_images/1592984820_7.jpg', '2020-06-24 01:47:00', '2020-06-24 01:47:00'),
(349, 115, './admin/sub_images/1592985059_1.jpg', '2020-06-24 01:50:59', '2020-06-24 01:50:59'),
(350, 115, './admin/sub_images/1592985059_2.jpg', '2020-06-24 01:50:59', '2020-06-24 01:50:59'),
(351, 115, './admin/sub_images/1592985059_5.jpg', '2020-06-24 01:50:59', '2020-06-24 01:50:59'),
(352, 116, './admin/sub_images/1592985228_2.jpg', '2020-06-24 01:53:48', '2020-06-24 01:53:48'),
(353, 116, './admin/sub_images/1592985228_5.jpg', '2020-06-24 01:53:48', '2020-06-24 01:53:48'),
(354, 116, './admin/sub_images/1592985228_7.jpg', '2020-06-24 01:53:48', '2020-06-24 01:53:48'),
(355, 117, './admin/sub_images/1597991884_1.jpg', '2020-08-21 00:38:04', '2020-08-21 00:38:04'),
(356, 117, './admin/sub_images/1597991885_2.jpg', '2020-08-21 00:38:05', '2020-08-21 00:38:05'),
(357, 117, './admin/sub_images/1597991885_3.jpg', '2020-08-21 00:38:05', '2020-08-21 00:38:05'),
(379, 125, './admin/sub_images/1600372711_112775052_744504602968649_5227900358742265079_o.jpg', '2020-09-17 13:58:32', '2020-09-17 13:58:32'),
(380, 125, './admin/sub_images/1600372713_117397262_758715008214275_2432274522803486117_n.jpg', '2020-09-17 13:58:33', '2020-09-17 13:58:33'),
(381, 125, './admin/sub_images/1600372713_117646584_758715411547568_8854462065148209807_n.jpg', '2020-09-17 13:58:34', '2020-09-17 13:58:34'),
(386, 127, './admin/sub_images/1605034437_124682376_3285956598197441_9164576649117967821_n.jpg', '2020-11-10 23:53:57', '2020-11-10 23:53:57'),
(387, 127, './admin/sub_images/1605034437_124809223_410463430344488_7349677324775655884_n.jpg', '2020-11-10 23:53:57', '2020-11-10 23:53:57'),
(388, 127, './admin/sub_images/1605034437_124833760_417400952998870_1339616259342642022_n.jpg', '2020-11-10 23:53:57', '2020-11-10 23:53:57'),
(389, 127, './admin/sub_images/1605034437_124886285_2878658945789365_3390372362632616181_n.jpg', '2020-11-10 23:53:57', '2020-11-10 23:53:57'),
(390, 128, './admin/sub_images/1605034838_124569740_385766719213794_4775954756257636661_n.jpg', '2020-11-11 00:00:38', '2020-11-11 00:00:38'),
(391, 128, './admin/sub_images/1605034838_124859094_3408750759242448_4364577129278625691_n.jpg', '2020-11-11 00:00:38', '2020-11-11 00:00:38'),
(392, 128, './admin/sub_images/1605034838_124952263_913938492472932_4316411674460669566_n.jpg', '2020-11-11 00:00:38', '2020-11-11 00:00:38'),
(396, 129, './admin/sub_images/1605065544_124586082_1467521496773890_8866087709700609028_n.jpg', '2020-11-11 08:32:24', '2020-11-11 08:32:24'),
(397, 129, './admin/sub_images/1605065544_124969212_889753531850610_2008971068053710935_n.jpg', '2020-11-11 08:32:24', '2020-11-11 08:32:24'),
(398, 129, './admin/sub_images/1605065544_celio-men-shirt.jpg', '2020-11-11 08:32:24', '2020-11-11 08:32:24'),
(399, 15, './admin/sub_images/1612795854.26.jpg', '2021-02-08 19:50:54', '2021-02-08 19:50:54'),
(400, 15, './admin/sub_images/1612795854.27.jpg', '2021-02-08 19:50:54', '2021-02-08 19:50:54'),
(401, 15, './admin/sub_images/1612795854.28.jpg', '2021-02-08 19:50:54', '2021-02-08 19:50:54'),
(402, 132, './admin/sub_images/1625918286.1.jpg', '2021-07-10 05:58:06', '2021-07-10 05:58:06'),
(403, 132, './admin/sub_images/1625918286.2.jpg', '2021-07-10 05:58:06', '2021-07-10 05:58:06'),
(404, 132, './admin/sub_images/1625918286.3.jpg', '2021-07-10 05:58:07', '2021-07-10 05:58:07'),
(405, 133, './admin/sub_images/1626292086.13.jpg', '2021-07-14 13:48:06', '2021-07-14 13:48:06'),
(406, 133, './admin/sub_images/1626292086.14.jpg', '2021-07-14 13:48:06', '2021-07-14 13:48:06'),
(407, 134, './admin/sub_images/1626294268.15.jpg', '2021-07-14 14:24:28', '2021-07-14 14:24:28'),
(408, 134, './admin/sub_images/1626294268.16.jpg', '2021-07-14 14:24:29', '2021-07-14 14:24:29'),
(409, 134, './admin/sub_images/1626294269.17.jpg', '2021-07-14 14:24:30', '2021-07-14 14:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `category_id`, `name`, `code`, `email`, `phone`, `address`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 11, 'Adria Evans', 'ADR-3723', 'vexoqug@mailinator.com', '01612345678', 'Impedit sit est in', './admin/supplier_images/1612335847.jpg', 1, '2021-02-03 12:04:07', '2021-02-03 12:04:07'),
(2, 1, 'McKenzie Pugh', 'MCK-4925', 'vozul@mailinator.com', '01613456987', 'Architecto exercitat', NULL, 0, '2021-02-03 12:04:24', '2021-02-05 09:23:56'),
(3, 4, 'Jordan Holder', 'JOR-9321', 'rytizyh@mailinator.com', '01911234567', 'Magna qui aspernatur', './admin/supplier_images/1612335890.jpg', 1, '2021-02-03 12:04:50', '2021-02-03 12:04:50'),
(4, 10, 'Hyatt Conner', 'HYA-5309', 'xovydamynu@mailinator.com', '01234567880', 'In necessitatibus la', NULL, 0, '2021-02-03 12:06:36', '2021-02-05 09:23:40'),
(5, 10, 'SPL', 'SPL-9149', 'spl@gmail.om', '01678900800', 'Utatra, Dhaka', NULL, 1, '2021-07-12 09:29:31', '2021-07-12 09:29:31');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Kg', 'Kilogram Unit Description', 1, '2019-12-28 13:36:56', '2019-12-28 13:36:56'),
(3, 'Piece', 'Piece Unit Description', 1, '2019-12-28 13:37:39', '2019-12-28 13:37:39'),
(4, 'Pic\'s', 'Pic\'s Unit Description', 1, '2019-12-28 13:37:52', '2019-12-28 13:37:52'),
(5, 'Piece', 'Piece Unit Description', 1, '2019-12-28 13:38:10', '2019-12-28 13:38:10'),
(6, 'Doz', 'Doz Unit Description', 1, '2019-12-28 13:38:35', '2019-12-28 13:38:35'),
(7, 'Doz\'s', 'Doz\'s Unit Description', 1, '2019-12-28 13:38:50', '2019-12-28 13:38:50'),
(8, 'Box', 'Box Unit Description', 1, '2019-12-28 13:39:02', '2019-12-28 13:39:02'),
(9, 'Boxes', 'Boxes  Unit Description', 1, '2019-12-28 13:39:58', '2019-12-28 13:39:58'),
(10, 'GB', 'GB Unit Description', 1, '2019-12-28 13:40:58', '2019-12-28 13:40:58'),
(11, 'TB', 'TB Unit Description', 1, '2019-12-28 13:41:13', '2019-12-28 13:41:13'),
(12, 'Carton', 'Carton Unit Description', 1, '2019-12-28 13:42:22', '2019-12-28 13:42:22'),
(13, 'Ton', 'Ton Unit Description', 1, '2019-12-28 13:45:04', '2020-06-15 23:06:30'),
(14, 'Ton', 'Ton Unit Description', 0, '2020-06-15 23:07:37', '2020-06-15 23:08:31'),
(15, 'Ltr.', 'Ltr Unit Description', 1, '2020-06-15 23:10:13', '2020-06-15 23:10:13'),
(16, 'Inch', 'Inch Unit Description', 1, '2020-06-15 23:10:32', '2020-06-15 23:10:32'),
(17, 'Bundle', 'Bundle Unit Description', 1, '2020-06-15 23:10:49', '2020-06-15 23:10:49'),
(18, 'pair', NULL, 1, '2021-03-08 10:44:44', '2021-03-08 10:44:44'),
(19, 'pcs', NULL, 1, '2021-03-08 10:44:51', '2021-03-08 10:44:51'),
(20, 'single', NULL, 1, '2021-03-08 10:45:01', '2021-03-08 10:45:01'),
(21, 'double', NULL, 1, '2021-03-08 10:45:08', '2021-03-08 10:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `is_executive` tinyint(1) DEFAULT NULL,
  `normal_user` tinyint(1) DEFAULT 1,
  `status` tinyint(4) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `image`, `provider`, `provider_id`, `access_token`, `is_admin`, `is_executive`, `normal_user`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(39, 'Mainul Islam', 'mainul@beshibuy.com', '01646688970', NULL, '$2y$10$hvjknN0/FVNPlnvacQ/o5OLQgg3.DH.PzneOVN3Dhk0fXC8Mn2Zfq', NULL, NULL, NULL, NULL, 1, 0, 0, 1, NULL, '2020-11-07 22:29:40', '2020-11-14 11:26:05'),
(40, 'Kamrul Hasan', 'kamrul@beshibuy.com', '01981006366', NULL, '$2y$10$MMvE5ptmiRm66NEjfr4hvud2mPqeq1wlKRnJLnFR5HgsOvVt2ERR.', NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, '2020-11-14 10:09:40', '2020-11-14 10:18:35'),
(41, 'Mithun Mithu', 'mithu@beshibuy.com', '01619900124', NULL, '$2y$10$En4U4npwzM1gwzvKsknUXOswffG8Kg7RsVpDyLNLMM7dJsL2Ti01m', NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, '2020-11-14 10:12:12', '2020-11-14 10:18:39'),
(42, 'Juthi Panday', 'juthi@beshibuy.com', '01934567890', NULL, '$2y$10$SHnNj5KYhmo6N/efdgliY.dao88d0h05KmCU2KuLadwdHyC4QJDI6', NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, '2020-11-14 10:13:39', '2020-11-14 10:18:30'),
(43, 'Shiuly Karim', 'shiuly@beshibuy.com', '01834567890', NULL, '$2y$10$ez7CglNqV3RxoP1tdnhboeadBsFzGaPkOLN5SfzXY.7Z7t2DR4Q0O', NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, '2020-11-14 10:15:32', '2020-11-14 10:18:26'),
(44, 'Rezaul Karim', 'rezaul@beshibuy.com', '01815395295', NULL, '$2y$10$VdV4tRFX.czbVZ119u7bTura4top7REf6P1u1nPbAe.iJDdMYginu', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, '2020-11-14 10:17:45', '2020-11-14 10:18:21'),
(45, 'Mainul Islam', 'mainul12501@gmail.com', NULL, NULL, '', 'https://graph.facebook.com/v3.3/3236203276433276/picture?type=normal', 'facebook', '3236203276433276', 'EAA0LPtABi1kBAJDOqzVfrd2uKfDj2QdgtmHQHZCsmDgxhe6rZB2IZCZB89bRZB4lMM5P3feOLtE9iYguTkOZC1hP0cQVmOYZAaVxwHPMeCtUinGOvKQhWosH2icCJqffKCP38d2Hnl6oahcvD7teD27tQkfFU6lKIBFP7T3MX0LUAZDZD', 1, 0, 1, NULL, 'rVM9zQjotUnIuL0etan8SEnVXJl4aNAaJEzyxcyYxVcFjFjkcBSSpuuKxN6R', '2021-01-01 17:34:56', '2021-02-26 00:29:11'),
(46, 'Nancy Bushakez', 'nancyemmawork@gmail.com', NULL, NULL, '', 'https://graph.facebook.com/v3.3/10150002810172892/picture?type=normal', 'facebook', '10150002810172892', 'EAA0LPtABi1kBAE47lAuwiYZBYe7h0u2dqyQMXteSbMVPNUXRw3mj3Np43niAh6NPIep3CnYJJ9JioB3QGmVEezshZByJSMIFL3P14sSIdWXtRsA8MczAmAjhMexM8gIDEWRoXgr1jSzdmyZCN3swDZCZBtHR2wqspMSXNUMnDqCBEroEKnmiA', NULL, NULL, 1, NULL, 'YPzOz4WXYJzQTPJWO6JOUdsolWRPZ3VsQjGmtVV6iaaUFDXnUQ7TS8ev2k9c', '2021-01-22 13:20:21', '2021-01-22 13:20:21'),
(47, 'Betty Bowersescu', 'qqxnjqwunv_1576573902@tfbnw.net', NULL, NULL, '', 'https://graph.facebook.com/v3.3/10150002810970202/picture?type=normal', 'facebook', '10150002810970202', 'EAA0LPtABi1kBAANgczIstZCBS5ghE99HXTCqZC3ZClOwjPBSAvuLAZCRjBzfcdW5hyVKzevndBhVjb07cfgGVfE4jIaXV9qOb3U3hvb6bLqdvBDQdgogfZCm9s5i6VLaBtlJw94rCgMpPD491EYBZCc4gR16EUb8NypH636ZCTmtgvvnpVo3ZCsO', NULL, NULL, 1, NULL, 'gwDK4QRipuPv3mtpJMyG1vOCldjoomDNFFrLljlMOtCLjjAafgoXsBgMSCxm', '2021-01-22 14:28:44', '2021-01-22 14:28:44'),
(48, 'Gracia Babb', 'geogatedproject357@gmail.com', NULL, NULL, '', 'https://graph.facebook.com/v3.3/10150002889066820/picture?type=normal', 'facebook', '10150002889066820', 'EAA0LPtABi1kBADMtwfjEXMgS0XM1ZCvGRnkZCkSTA8aZBhQzFrrEXTcCsyHnUoJRYKi1jJ7Tse7JIIgrQVs9Wue96rF2vMlCwUb8UJjJGf4ZBIccsypl6ZBZADJmc1VKNCGYE2ZAG9WhsMxoILhuXnvOAmJkinFaEyoa7BDc6NC7l9rbRvtnspc', NULL, NULL, 1, NULL, 'QWZJhkjWkivw96Du73bRYN8sGbGBvU61Ne3jAAtrWngkhNTNgNonQlpdyZts', '2021-01-27 12:26:40', '2021-01-27 12:26:40'),
(49, 'AbbySen', 'geogatedproject353@gmail.com', NULL, NULL, '', 'https://graph.facebook.com/v3.3/10150002921028025/picture?type=normal', 'facebook', '10150002921028025', 'EAA0LPtABi1kBAI1t3q90P469tHeShl53Or53IEggtsvhjOGsE2t0jwZCD8uHRKJP2MvusO7Pftienv2jbmkWzhxCyEy4GhfWZAZCPnX4svW4dRJxP0mRPavht0Na3r6ZCizL897CQkLYRXx8unKEIA4GfqLpjdBSbHc9jSDL8RbIn8PofChR', NULL, NULL, 1, NULL, 'Qoyo5E2IXa07tfHskz0xdzsgWeVZJBqW0HOKY393rf8Y6CC3akhHO65olH2w', '2021-01-29 07:44:07', '2021-01-29 07:44:07'),
(50, 'Shaidul Islam', 'shaidulislam048@gmail.com', NULL, NULL, '', 'https://lh4.googleusercontent.com/-zSJu0WpiwFg/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuckArr5cldnvjMCbs_MmjUl6vgr3iQ/s96-c/photo.jpg', 'google', '115997144734887961409', 'ya29.a0AfH6SMAGl_fpD0Yo3Juphhhr6caK8hu8Dge0NVaYdIODmtYLbappo7I_n-hiKkusP2t-BMlVl5Rss6bpOTHreT9RlrV6Ss16XQAg_l8UBp9AGwjcNAU6RsS0GRQiyZAkJf7dCwbhx1zLTlkOF3rVGa1lhQTR', NULL, NULL, 1, NULL, 'oCZrzm0a0sIIHaEws4rZ9DCBDfRbihO47J0aBDJXQBR792VZJlYqEWFpoZdx', '2021-03-07 09:16:59', '2021-03-07 09:16:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_images`
--
ALTER TABLE `contact_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_complains`
--
ALTER TABLE `customer_complains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_complain_images`
--
ALTER TABLE `customer_complain_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_item_codes`
--
ALTER TABLE `delivery_item_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_files`
--
ALTER TABLE `expense_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_layouts`
--
ALTER TABLE `front_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generate_qr_codes`
--
ALTER TABLE `generate_qr_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_stocks`
--
ALTER TABLE `manage_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_deliveries`
--
ALTER TABLE `product_deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_q_rcodes`
--
ALTER TABLE `product_q_rcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sub_reviews`
--
ALTER TABLE `product_sub_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_error_massages`
--
ALTER TABLE `site_error_massages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_images`
--
ALTER TABLE `sub_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `contact_images`
--
ALTER TABLE `contact_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `customer_complains`
--
ALTER TABLE `customer_complains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_complain_images`
--
ALTER TABLE `customer_complain_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `delivery_item_codes`
--
ALTER TABLE `delivery_item_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expense_files`
--
ALTER TABLE `expense_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_layouts`
--
ALTER TABLE `front_layouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `generate_qr_codes`
--
ALTER TABLE `generate_qr_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `manage_stocks`
--
ALTER TABLE `manage_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1164;

--
-- AUTO_INCREMENT for table `product_deliveries`
--
ALTER TABLE `product_deliveries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_q_rcodes`
--
ALTER TABLE `product_q_rcodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1048;

--
-- AUTO_INCREMENT for table `product_sub_reviews`
--
ALTER TABLE `product_sub_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `site_error_massages`
--
ALTER TABLE `site_error_massages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `sub_images`
--
ALTER TABLE `sub_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=410;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
