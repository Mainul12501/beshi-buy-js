-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2020 at 09:31 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `relax_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `category_id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 11, 'Walton', './admin/brand_images/1592217811.png', 1, '2020-06-15 04:43:32', '2020-06-27 00:19:10'),
(2, 5, 'Pran', './admin/brand_images/1592218011.png', 1, '2020-06-15 04:45:49', '2020-06-15 04:58:59'),
(3, 4, 'Arong', './admin/brand_images/1592219242.png', 1, '2020-06-15 05:07:22', '2020-06-15 05:07:22'),
(4, 5, 'Appex', './admin/brand_images/1592219504.png', 1, '2020-06-15 05:11:44', '2020-06-15 05:11:44'),
(5, 9, 'Yellow', './admin/brand_images/1592219517.png', 1, '2020-06-15 05:11:57', '2020-06-15 05:11:57'),
(6, 10, 'Cates Eye', './admin/brand_images/1592219528.png', 1, '2020-06-15 05:12:08', '2020-06-15 05:12:08'),
(7, 4, 'Anjons', './admin/brand_images/1592219540.png', 1, '2020-06-15 05:12:20', '2020-06-15 05:12:20'),
(8, 4, 'Kay Kraft', './admin/brand_images/1592220938.png', 1, '2020-06-15 05:35:40', '2020-06-15 05:35:40'),
(9, 9, 'Infinity', './admin/brand_images/1592220978.png', 1, '2020-06-15 05:36:18', '2020-06-15 05:36:18'),
(10, 0, 'Addidas', './admin/brand_images/1592220992.png', 1, '2020-06-15 05:36:32', '2020-06-15 05:36:32'),
(11, 0, 'Bata', './admin/brand_images/1592221005.png', 1, '2020-06-15 05:36:45', '2020-06-15 05:36:45'),
(12, 0, 'Nike', './admin/brand_images/1592221024.png', 1, '2020-06-15 05:37:04', '2020-06-15 05:37:04'),
(13, 0, 'Puma', './admin/brand_images/1592221043.png', 1, '2020-06-15 05:37:23', '2020-06-15 05:37:23'),
(14, 4, 'Hatil', './admin/brand_images/1592221058.png', 1, '2020-06-15 05:37:38', '2020-06-15 05:37:38'),
(15, 0, 'Otobi', './admin/brand_images/1592221077.png', 1, '2020-06-15 05:37:57', '2020-06-15 05:37:57'),
(16, 4, 'Partex Furniture', './admin/brand_images/1592221097.png', 1, '2020-06-15 05:38:17', '2020-06-15 05:38:17'),
(17, 0, 'Akter Furniture', './admin/brand_images/1592221113.png', 1, '2020-06-15 05:38:33', '2020-06-15 05:38:33'),
(18, 4, 'Navan Furniture', './admin/brand_images/1592221132.png', 1, '2020-06-15 05:38:52', '2020-06-15 05:38:52'),
(19, 0, 'Brothers Furniture', './admin/brand_images/1592221146.png', 1, '2020-06-15 05:39:06', '2020-06-15 05:39:06'),
(20, 9, 'Rolex', './admin/brand_images/1592221161.png', 1, '2020-06-15 05:39:21', '2020-06-15 05:39:21'),
(21, 11, 'Rado', './admin/brand_images/1592221175.png', 1, '2020-06-15 05:39:35', '2020-06-15 05:39:35'),
(22, 11, 'Omega', './admin/brand_images/1592221192.png', 1, '2020-06-15 05:39:52', '2020-06-15 05:39:52'),
(23, 0, 'Logines', './admin/brand_images/1592221206.png', 1, '2020-06-15 05:40:07', '2020-06-15 05:40:07'),
(24, 0, 'Amin Jewllers', './admin/brand_images/1592221221.png', 1, '2020-06-15 05:40:21', '2020-06-15 05:40:21'),
(25, 0, 'Apan Jewellers', './admin/brand_images/1592221235.png', 1, '2020-06-15 05:40:35', '2020-06-15 05:40:35'),
(26, 0, 'Gitanjali Jewellers', './admin/brand_images/1592221267.png', 1, '2020-06-15 05:41:07', '2020-06-15 05:41:07'),
(27, 0, 'Senco Jewellers', './admin/brand_images/1592221282.png', 1, '2020-06-15 05:41:22', '2020-06-15 05:41:22'),
(28, 0, 'Royal Diamond', './admin/brand_images/1592221305.png', 1, '2020-06-15 05:41:45', '2020-06-15 05:41:45'),
(29, 0, 'Diamond Garden', './admin/brand_images/1592221319.png', 1, '2020-06-15 05:41:59', '2020-06-15 05:41:59'),
(30, 0, 'Gold World Diamond', './admin/brand_images/1592221334.png', 1, '2020-06-15 05:42:14', '2020-06-15 05:42:14'),
(31, 11, 'LG', './admin/brand_images/1592221349.png', 1, '2020-06-15 05:42:29', '2020-06-15 05:42:29'),
(32, 0, 'Singer', './admin/brand_images/1592221364.png', 1, '2020-06-15 05:42:44', '2020-06-15 05:42:44'),
(33, 11, 'Toshiba', './admin/brand_images/1592221378.png', 1, '2020-06-15 05:42:58', '2020-06-15 05:42:58'),
(34, 11, 'Sharp', './admin/brand_images/1592221390.png', 1, '2020-06-15 05:43:10', '2020-06-15 05:43:10'),
(35, 0, 'Canon', './admin/brand_images/1592221404.png', 1, '2020-06-15 05:43:24', '2020-06-15 05:43:24'),
(36, 0, 'Panasonic', './admin/brand_images/1592221418.png', 1, '2020-06-15 05:43:38', '2020-06-15 05:43:38'),
(37, 0, 'Hitachi', './admin/brand_images/1592221435.png', 1, '2020-06-15 05:43:55', '2020-06-15 05:43:55'),
(38, 0, 'Philips', './admin/brand_images/1592221452.png', 1, '2020-06-15 05:44:12', '2020-06-15 05:44:12'),
(39, 1, 'Transtec', './admin/brand_images/1592221469.png', 1, '2020-06-15 05:44:29', '2020-06-15 05:44:29'),
(40, 11, 'Sony', './admin/brand_images/1592221487.png', 1, '2020-06-15 05:44:47', '2020-06-15 05:44:47'),
(41, 8, 'Samsung', './admin/brand_images/1592221504.png', 1, '2020-06-15 05:45:04', '2020-06-15 05:45:04'),
(42, 8, 'Apple', './admin/brand_images/1592221520.png', 1, '2020-06-15 05:45:20', '2020-06-21 23:31:11'),
(43, 8, 'Oppo', './admin/brand_images/1592221541.png', 1, '2020-06-15 05:45:41', '2020-06-15 05:45:41'),
(44, 0, 'Nokia', './admin/brand_images/1592221557.png', 1, '2020-06-15 05:45:57', '2020-06-15 05:45:57'),
(45, 8, 'Huwaei', './admin/brand_images/1592221571.png', 1, '2020-06-15 05:46:11', '2020-06-15 05:46:11'),
(46, 3, 'HP', './admin/brand_images/1592221583.png', 1, '2020-06-15 05:46:24', '2020-06-15 05:46:24'),
(47, 3, 'Dell', './admin/brand_images/1592221601.png', 1, '2020-06-15 05:46:41', '2020-06-15 05:46:41'),
(48, 0, 'Asus', './admin/brand_images/1592221627.png', 1, '2020-06-15 05:47:07', '2020-06-15 05:47:07'),
(49, 3, 'Lenovo', './admin/brand_images/1592221642.png', 1, '2020-06-15 05:47:22', '2020-06-15 05:47:22'),
(50, 3, 'Acer', './admin/brand_images/1592221662.png', 1, '2020-06-15 05:47:42', '2020-06-27 00:21:24'),
(51, 0, 'Epson', './admin/brand_images/1592221682.png', 1, '2020-06-15 05:48:02', '2020-06-15 05:48:02'),
(52, 0, 'Hasbro', './admin/brand_images/1592221702.png', 1, '2020-06-15 05:48:22', '2020-06-15 05:48:22'),
(53, 0, 'Lego', './admin/brand_images/1592221716.png', 1, '2020-06-15 05:48:36', '2020-06-15 05:48:36'),
(54, 0, 'Tomica', './admin/brand_images/1592221733.png', 1, '2020-06-15 05:48:53', '2020-06-15 05:48:53'),
(55, 0, 'Monno Ceramics', './admin/brand_images/1592221746.png', 1, '2020-06-15 05:49:06', '2020-06-15 05:49:06'),
(56, 0, 'Shahine Pukur Ceramics', './admin/brand_images/1592221761.png', 1, '2020-06-15 05:49:21', '2020-06-15 05:49:21'),
(57, 1, 'RAK Ceramics', './admin/brand_images/1592221784.png', 1, '2020-06-15 05:49:44', '2020-06-27 01:38:07');

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
(3, 'Computer & Accessories', 'zmdi zmdi-devices', 'Computer Category Description', './admin/category_images/2020-06-20_computer_&_accessories.jpg', 1, '2020-06-11 23:12:20', '2020-06-29 23:34:05'),
(4, 'Household', 'zmdi zmdi-washing-machine', 'Household Category Description', './admin/category_images/2020-06-12_household.png', 1, '2020-06-11 23:22:21', '2020-08-10 09:23:19'),
(5, 'Kids Item', 'fa fa-child', 'Kids Fashion Category Description', './admin/category_images/2020-06-12_kids_fashion.jpg', 1, '2020-06-11 23:30:34', '2020-06-14 11:13:10'),
(6, 'Food', 'fas fa-hamburger', 'Food Category Description', './admin/category_images/2020-06-12_food.jpg', 0, '2020-06-11 23:37:37', '2020-07-24 06:52:48'),
(7, 'Cosmetic & Jewelry', 'fas fa-gem', 'Cosmetic & Jewelry Category Description', './admin/category_images/2020-06-12_cosmetic_&_jewelry.jpg', 0, '2020-06-11 23:54:53', '2020-06-21 04:58:41'),
(8, 'Mobile & Accessories', 'zmdi zmdi-smartphone-setup', 'Mobile & Accessories Category Description', './admin/category_images/2020-06-12_mobile_&_accessories.jpg', 1, '2020-06-11 23:59:45', '2020-09-04 06:59:42'),
(9, 'Women Fashion', 'fa fa-female', NULL, './admin/category_images/2020-06-12_women_fashion.jpg', 1, '2020-06-12 00:12:15', '2020-09-04 06:59:38'),
(10, 'Mens Fashion', 'fa fa-male', 'Mens Fashion  Category Description', './admin/category_images/2020-06-12_mens_fashion.png', 1, '2020-06-12 00:14:11', '2020-09-04 06:59:33'),
(11, 'Electronics', 'fa fa-tv', 'Electronics Category Description', './admin/category_images/2020-06-12_electronics.jpg', 1, '2020-06-12 00:17:28', '2020-09-04 06:59:33');

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
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 2, 'Kamrul Hasan', 'kh@gmail.com', NULL, '01556557778', 'Sadar', 'Borisal', NULL, '2020-09-02 08:18:53', '2020-09-02 08:18:53'),
(2, 2, 'Kamrul Hasan', 'kh@gmail.com', NULL, '01556557778', 'Sadar', 'Borisal', NULL, '2020-09-02 08:19:46', '2020-09-02 08:19:46'),
(3, 2, 'Kamrul Hasan', 'kh@gmail.com', NULL, '01556557778', 'Sadar', 'Barisal', NULL, '2020-09-02 08:24:05', '2020-09-02 08:24:05'),
(4, 9, 'Mainul Ahasan', 'ma@gmail.com', NULL, '01617890900', 'Sadar', 'Chandpur', NULL, '2020-09-03 01:32:10', '2020-09-03 01:32:10');

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
(3, 'Mainul Ahasan', 'rezaul1@gmail.com', '351', '0JgygW', 'jhkjk', 1, '2020-09-07 12:19:52', '2020-09-07 12:37:12'),
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
(11, 11, 12, '100', NULL, NULL),
(12, 12, 13, '150', NULL, NULL),
(13, 13, 14, '150', NULL, NULL),
(14, 14, 15, '150', NULL, NULL),
(15, 15, 16, '150', NULL, NULL),
(16, 16, 17, '150', NULL, NULL),
(17, 17, 18, '150', NULL, NULL),
(18, 18, 19, '70', NULL, '2020-08-26 08:20:00'),
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
(63, 63, 64, '150', NULL, NULL),
(64, 18, 65, 'free', NULL, '2020-08-29 10:56:00');

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
-- Table structure for table `generate_qr_codes`
--

CREATE TABLE `generate_qr_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qr_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generate_qr_codes`
--

INSERT INTO `generate_qr_codes` (`id`, `code`, `qr_image`, `created_at`, `updated_at`) VALUES
(391, '0JgygW', './admin/qrImage/0JgygW.png', '2020-09-07 12:17:38', '2020-09-07 12:17:38'),
(392, 'bmFSJm', './admin/qrImage/bmFSJm.png', '2020-09-07 12:17:38', '2020-09-07 12:17:38'),
(393, 'D9n484', './admin/qrImage/D9n484.png', '2020-09-07 12:17:38', '2020-09-07 12:17:38'),
(394, '2Zs5bW', './admin/qrImage/2Zs5bW.png', '2020-09-07 12:17:39', '2020-09-07 12:17:39'),
(395, 'qsxhSr', './admin/qrImage/qsxhSr.png', '2020-09-07 12:17:39', '2020-09-07 12:17:39'),
(396, 'tBdQUZ', './admin/qrImage/tBdQUZ.png', '2020-09-07 12:17:39', '2020-09-07 12:17:39'),
(397, 'UgrEzc', './admin/qrImage/UgrEzc.png', '2020-09-07 12:17:39', '2020-09-07 12:17:39'),
(398, 'yWwOfW', './admin/qrImage/yWwOfW.png', '2020-09-07 12:17:39', '2020-09-07 12:17:39'),
(399, 'nzu2gv', './admin/qrImage/nzu2gv.png', '2020-09-07 12:17:39', '2020-09-07 12:17:39'),
(400, '70PSaV', './admin/qrImage/70PSaV.png', '2020-09-07 12:17:39', '2020-09-07 12:17:39');

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
(7, '2020_09_06_194704_create_contact_images_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_total` double(10,2) NOT NULL,
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `delivery_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `shipping_id`, `order_total`, `order_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1423.65, 'Canceled', 'Canceled', '2020-09-02 08:24:21', '2020-09-03 12:56:07'),
(2, 4, 2, 55812.60, 'Complete', 'Complete', '2020-09-03 01:33:03', '2020-09-03 12:55:46');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_size`, `product_quantity`, `product_price`, `created_at`, `updated_at`) VALUES
(1, 1, 32, 'Navy Blue  Jacket', 'L', 1, 1039.00, '2020-09-02 08:24:21', '2020-09-02 08:24:21'),
(2, 1, 21, 'Casual Half Shirt', 'L', 1, 174.00, '2020-09-02 08:24:22', '2020-09-02 08:24:22'),
(3, 2, 74, 'Sony Bravia 32 Inch Led Smart Tv', 'Family Size', 1, 53012.00, '2020-09-03 01:33:04', '2020-09-03 01:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 1, 'cash', 'Canceled', '2020-09-02 08:24:22', '2020-09-03 12:56:07'),
(2, 2, 'cash', 'Complete', '2020-09-03 01:33:04', '2020-09-03 12:55:46');

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
  `retail_price` int(11) NOT NULL,
  `profit_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sell_price` double(10,2) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `big_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `sell_count` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `model`, `origin`, `retail_price`, `profit_price`, `sell_price`, `short_description`, `long_description`, `image`, `big_image`, `status`, `sell_count`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 1, 3, 'Microwave and Electric Ove', 'KIT-WAL-MIC-001', 'WMWO-X20MX', 'Bangladeshi', 780, '46%', 1138.00, '- Microwave cooking\r\n   - Multiple power level setting for adjusting microwave output power\r\n   - Mechanical Control\r\n   - Rated Power: 1200 Watts\r\n   - Capacity: 20 L', '<pre style=\"text-align:justify\">\r\n- Microwave cooking\r\n- Mechanical control\r\n- Multiple power level setting for adjusting microwave output power\r\n- Turntable &amp; trays for optimal results\r\n- Speedy and time defrost\r\n- Heat resistive tempered glass door\r\n- Non stick inner coating for easy cleaning\r\n- Cooking end signal</pre>', './admin/product_images/1592545448_microwave_and_electric_ove.jpg', '', 1, NULL, '2020-06-18 23:25:49', '2020-08-17 02:02:45'),
(2, 1, 8, 41, 5, 'Hawkins Metal Stylish Blender', 'KIT-SAM-HAW-002', NULL, 'Bangladeshi', 570, '45%', 826.00, '3 Stainless Steel Jar\r\nRubber Ring Polycarbonate Dome & Lid\r\nDry Grinding Blade\r\nMatching Blade Vegetable Grinding Blade\r\nWhipper Blade Spatula\r\nTechnical Specifications: Voltage 230 V.A.C50Hz', '<pre style=\"text-align:justify\">\r\nHAWKINS Blender Comes with 3 stainless steel jar Wet and Dry grinding specialist 750 Watt Made in CHAINA .\r\n\r\nHAWKINS Blender in BD Skip to the beginning of the images gallery Product Details: HAWKINS Blender: Need to buy a new blender?</pre>', './admin/product_images/1592547067_hawkins_metal_stylish_blender_3_in_1.jpg', '', 1, 1, '2020-06-19 00:11:07', '2020-07-27 02:48:19'),
(4, 1, 7, 1, 3, 'Double Burner Gas Stove', 'KIT-WAL-DOU-003', NULL, 'Bangladeshi', 480, '37%', 657.00, 'MEDIA CABINET TYPE DOUBLE BURNER AUTO IGNITION GAS STOVE 8001K- NG', '<pre>\r\n&bull; Applicable Gas: NG\r\n&bull; High-quality auto pulse ignition start\r\n&bull; Cabinet Type Gas Stove\r\n&bull; cast iron pan support\r\n&bull; metal knob\r\n&bull; Good ignition with 50,000 times using life</pre>', './admin/product_images/1592547548_double_burner_gas_stove.jpg', '', 1, NULL, '2020-06-19 00:19:08', '2020-06-25 00:40:07'),
(5, 1, 6, 1, 3, 'Pressure Cooke', 'KIT-WAL-PRE-005', 'WEPC-K05A10', 'Bangladeshi', 890, '35%', 1201.00, 'WEPC-K05A10 (Electric)\r\n   - Non-stick coating, non-telfon, easy to clean\r\n   - High grade stainless steel outer body\r\n   - Capacity: 5.0 Lt.\r\n   - Power: 900 watt.\r\n   - Voltage: 220-240v, ~50hz.', '<p style=\"text-align:justify\">- Multiple cooking function (fish, rice, chicken, meat,porridge,soup,hoof &amp; bean)<br />\r\n- Completely sealed cooking ensure &amp; maintain maximum nutrition<br />\r\n- Non-stick coating, non-telfon, easy to clean<br />\r\n- Ultra-thick cast aluminum heating plate with high thermal efficiency<br />\r\n- Elastic leaf spring device adopts the high-quality special material, guarantees steady and reliable pressure<br />\r\n- Multiple safety protections<br />\r\n- Enclosed with the meal spoon and measuring cup<br />\r\n- High grade stainless steel outer body<br />\r\n- Energy saving &amp; time saving&nbsp;<br />\r\n- Type of controlling: mechanical</p>', './admin/product_images/1592548150_pressure_cooke.png', '', 1, 1, '2020-06-19 00:29:10', '2020-08-17 02:02:59'),
(6, 1, 5, 1, 3, 'Rice Cooker ( Electric )', 'KIT-WAL-RIC-006', 'WRC-SGA280', 'Bangladeshi', 470, '39%', 653.00, 'WRC-SGA280 ( 2.8L )\r\n- Simple electronic operation with automatic keep-warm\r\n- Seamless thicker outer body with aluminum food steamer\r\n- Easy-to-clean\r\n- Non-Stick double inner pot', '<p style=\"text-align:justify\">- Simple electronic operation with automatic keep-warm<br />\r\n- Seamless thicker outer body with aluminum food steamer<br />\r\n- Easy-to-clean<br />\r\n- Non-Stick double inner pot<br />\r\n- Transparent glass lid keeps ingredients moist<br />\r\n- Anti-bacterial warm mood<br />\r\n- Integrated with safety thermostat confirms better protection</p>', './admin/product_images/1592548381_rice_cooker_(_electric_).jpg', '', 1, NULL, '2020-06-19 00:33:01', '2020-06-25 00:40:57'),
(7, 1, 4, 1, 5, 'Multi-functional Vegetable Chopper', 'KIT-WAL-MUL-007', NULL, 'Bangladeshi', 460, '38%', 634.00, 'Multi-functional Vegetable Chopper', '<ul>\r\n	<li style=\"text-align:justify\">100% Brand new multifunctional fruit vegetable chopper hand speedy chopper.</li>\r\n	<li style=\"text-align:justify\">Food grade PP thickening transparent plastic, non-toxic and odorless.</li>\r\n	<li style=\"text-align:justify\">Wear proof rope material, durable in us.</li>\r\n	<li style=\"text-align:justify\">402 stainless steel blade, super sharpness.</li>\r\n	<li style=\"text-align:justify\">Hand pull-out type design, use more convenient and safty.</li>\r\n</ul>\r\n\r\n<div id=\"gtx-trans\" style=\"left:17px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592548803_multi-functional_vegetable_chopper.jpg', '', 1, NULL, '2020-06-19 00:40:03', '2020-06-25 00:41:27'),
(8, 1, 3, 39, 3, 'Water Jug', 'KIT-TRA-WAT-008', NULL, 'Bangladeshi', 230, '37%', 315.00, 'Nasir Glass Water Jug 2 litre', '<ul>\r\n	<li style=\"text-align:justify\">Nice Design Glass Jug 2litre.</li>\r\n	<li style=\"text-align:justify\">Constructed of thick glass.</li>\r\n	<li style=\"text-align:justify\">Easy to clean.</li>\r\n	<li style=\"text-align:justify\">Very nice and crystal Glass.</li>\r\n	<li style=\"text-align:justify\">The absence of lead guarantees 100-percent recyclable products.</li>\r\n	<li style=\"text-align:justify\">Superior resistant to use and dishwasher safe guarantees long lasting product</li>\r\n	<li style=\"text-align:justify\">Textured glass allows for an immediate view of the beverage contained.</li>\r\n	<li style=\"text-align:justify\">Made by Bangladesh.</li>\r\n	<li style=\"text-align:justify\">An integrated strong handle.</li>\r\n	<li style=\"text-align:justify\">Wide mouth built-in pour spout makes it very simple to fill with ice or any favorite cut fruits.</li>\r\n</ul>\r\n\r\n<div id=\"gtx-trans\" style=\"left:11px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592549119_water_jug.jpg', '', 1, NULL, '2020-06-19 00:45:19', '2020-06-25 00:41:46'),
(9, 1, 2, 2, 3, 'Excellent Mug', 'KIT-PRA-EXC-009', NULL, 'Bangladeshi', 110, '38%', 151.00, 'Self Stirring Mug - Red', '<ul>\r\n	<li style=\"text-align:justify\">Self stirring function</li>\r\n	<li style=\"text-align:justify\">No need to grab teaspoon to stir</li>\r\n	<li style=\"text-align:justify\">Simply press the button &amp; all the hard work is done for you</li>\r\n	<li style=\"text-align:justify\">Just pop 2 AAA batteries inside the base</li>\r\n</ul>', './admin/product_images/1592549456_excellent_mug.jpg', '', 1, NULL, '2020-06-19 00:50:56', '2020-06-25 00:42:09'),
(10, 1, 1, 57, 3, 'Transparent Tea Cup Set', 'KIT-RAK-TRA-0010', NULL, 'Bangladeshi', 35, '45%', 50.00, 'c ( 6 Pcs )', '<ul>\r\n	<li style=\"text-align:justify\">Crystal Clear Tea Cup</li>\r\n	<li style=\"text-align:justify\">Transparent</li>\r\n	<li style=\"text-align:justify\">Capacity: 150mL</li>\r\n	<li style=\"text-align:justify\">Dishwasher safe</li>\r\n	<li style=\"text-align:justify\">Clear and durable glassware</li>\r\n</ul>', './admin/product_images/1592576158_transparent_tea_cup_set.jpg', '', 1, NULL, '2020-06-19 08:15:59', '2020-06-25 00:42:34'),
(11, 3, 19, 41, 3, 'Bluetooth Speaker', 'COM-SAM-BLU-0011', NULL, 'Bangladeshi', 680, '47%', 999.00, 'HAVIT M3 ALARM CLOCK BLUETOOTH SPEAKER', '<ul>\r\n	<li>Brand: Havit</li>\r\n	<li>Model: M3</li>\r\n	<li>Net Weight (g): 302g</li>\r\n	<li>Dimensions: 145*68.5*54.5mm</li>\r\n	<li>Microphone: Yes</li>\r\n	<li>Connectivity: bluetooth, AUX</li>\r\n	<li>Bluetooth Version: V4.2</li>\r\n</ul>', './admin/product_images/1592628494_bluetooth_speaker.jpg', '', 1, NULL, '2020-06-19 22:48:16', '2020-06-25 00:43:02'),
(12, 3, 18, 40, 3, 'Head Phone', 'COM-SON-HEA-0012', NULL, 'Bangladeshi', 380, '47%', 558.00, 'Professional Stereo P47 Wireless Bluetooth Headphones', '<ul>\r\n	<li style=\"text-align:justify\">Type: Wireless Bluetooth Headphone</li>\r\n	<li style=\"text-align:justify\">You must get Charger Cable &amp; AudioCable(1 by 1 Cable) with Headphone</li>\r\n	<li style=\"text-align:justify\">Microphone included: Yes</li>\r\n	<li style=\"text-align:justify\">Noise Cancelling: Yes</li>\r\n	<li style=\"text-align:justify\">Model: P47 ( 4.2 + EDR )</li>\r\n	<li style=\"text-align:justify\">Connectivity: Wired and Wireless(Bluetooth)</li>\r\n	<li style=\"text-align:justify\">Talk time: 6 hours</li>\r\n</ul>', './admin/product_images/1592631970_head_phone.jpg', '', 1, 1, '2020-06-19 22:56:30', '2020-07-24 03:40:42'),
(13, 3, 17, 41, 5, 'Black Pen Drive', 'COM-SAM-BLA-0013', 'CZ600', 'Bangladeshi', 230, '45%', 333.00, 'Sandisk Cruzer Glide CZ600 128GB USB 3.0 Black Pen Drive', '<p style=\"text-align:justify\">Brand : Sandisk # Capacity : 128GB # Black Color, Faster than a speeding USB 2.0 drive, Retractable design,</p>\r\n\r\n<p style=\"text-align:justify\">No more hunting for that misplaced cap, The Cruzer Glide 3.0 USB flash drive features an easy-to-use retractable</p>\r\n\r\n<p style=\"text-align:justify\">connector so it slides out of harms way and doesnt need a cap,&nbsp;</p>', './admin/product_images/1592629303_black_pen_drive.jpg', '', 1, NULL, '2020-06-19 23:01:43', '2020-06-25 00:44:28'),
(14, 3, 16, 46, 5, 'Wireless Mouse', 'COM-HP-WIR-0014', NULL, 'Bangladeshi', 280, '45%', 406.00, 'Best Quality HP / (Del) 2.4G Wireless Mouse', '<ul>\r\n	<li style=\"text-align:justify\">2.4 Ghz High-Speed Wireless Fashion Mouse</li>\r\n	<li style=\"text-align:justify\">Brand: HP</li>\r\n	<li style=\"text-align:justify\">Connectivity: Wireless</li>\r\n	<li style=\"text-align:justify\">Compatible with: PC &amp; Laptops</li>\r\n	<li style=\"text-align:justify\">Mouse Type: Optical Mouse.</li>\r\n</ul>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-20px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592629488_wireless_mouse.jpg', '', 1, 1, '2020-06-19 23:04:48', '2020-08-29 09:25:20'),
(15, 3, 15, 46, 3, 'Hp Color Printer', 'COM-HP-HP -0015', 'DeskJet 2132', 'Bangladeshi', 27890, '25%', 34862.00, 'HP All-in-One DeskJet 2132 Printer', '<ul>\r\n	<li style=\"text-align:justify\">Model: HP DeskJet 2132</li>\r\n	<li style=\"text-align:justify\">Print Speed: 20 ppm (black)</li>\r\n	<li style=\"text-align:justify\">Paper Sizes: A4,B5,A6, DL envelope</li>\r\n	<li style=\"text-align:justify\">Connectivity: USB 2.0</li>\r\n</ul>', './admin/product_images/1592629797_hp_color_printer.jpg', '', 1, NULL, '2020-06-19 23:09:57', '2020-08-17 02:02:30'),
(16, 3, 14, 49, 3, 'Lenovo Laptop', 'COM-LEN-LEN-0016', NULL, 'Bangladeshi', 27890, '21%', 33746.00, 'Lenovo Ideapad L340 8th Gen Intel Core i5 8265U', '<ul>\r\n	<li style=\"text-align:justify\">-Processor Type Core i5 8th Generation 8265U-Processor Clock Speed 1.60-3.90GHz-CPU Cache 6MB-Ram : 4GB DDR4-Storage : 1TB HDD-Display Size (Inch) 15.6 FHD LED-Display Resolution : 1920x1080 (WxH) FHD-Display Port : HDMI-Optical Device : DVD RW-Operating System : Win-10 Home-Battery 3 Cell</li>\r\n</ul>', './admin/product_images/1592630157_lenovo_laptop.jpg', '', 1, NULL, '2020-06-19 23:15:57', '2020-08-17 02:03:19'),
(17, 3, 12, 47, 5, 'Dell Laptop', 'COM-DEL-DEL-0017', 'Cori-7', 'Bangladeshi', 3280, '17%', 3837.00, 'Dell Inspiron 14-3480 8th Gen Core i7 14 HD Laptop With Genuine Windows 10', '<ul>\r\n	<li>Basic Information</li>\r\n	<li>Processor : Intel Core i7-8550U Processor (1.80 GHz up to 4.00 GHz, 8M Cache)</li>\r\n	<li>Display : 14.0-inch HD (1366 x 768) Anti-Glare LED-Backlit Non-touch Display</li>\r\n	<li>Memory : 8GB DDR4 2666MHz</li>\r\n	<li>Storage : 1TB 5400 rpm 2.5&quot; SATA Hard Drive</li>\r\n	<li>Graphics : AMD Radeon 520 2GB GDDR5 Graphics</li>\r\n	<li>Operating System : Genuine Win 10</li>\r\n	<li>Battery : 3 Cell 42Whr</li>\r\n	<li>Audio : 2 tuned speakers with Waves MaxxAudio&reg; Pro</li>\r\n	<li>Input Devices</li>\r\n	<li>Keyboard : Standard keyboard</li>\r\n</ul>', './admin/product_images/1592630857_dell_laptop.jpg', '', 1, 1, '2020-06-19 23:27:38', '2020-08-17 02:03:37'),
(18, 3, 11, 46, 3, 'Hp Laptop', 'COM-HP-HP -0018', 'Cori-7', 'Bangladeshi', 32800, '16%', 38048.00, 'HP 250 G7 Core i3 7th Gen 15.6 HD Laptop', '<ul>\r\n	<li style=\"text-align:justify\">Basic Information</li>\r\n	<li style=\"text-align:justify\">Processor : Intel Core i3-7020U Processor (3M Cache, 2.30 GHz, 2 Cores, 4 Threads)</li>\r\n	<li style=\"text-align:justify\">Display : 15.6&quot; diagonal LED-backlit HD SVA eDP anti-glare LED-backlit, 45% sRGB, 220 nits (1366 x 768)</li>\r\n	<li style=\"text-align:justify\">Memory : 4 GB DDR4 2400 Mhz Ram</li>\r\n	<li style=\"text-align:justify\">Storage : 1 TB SATA 5400 rpm</li>\r\n	<li style=\"text-align:justify\">Graphics : Intel HD Graphics 620</li>\r\n	<li style=\"text-align:justify\">Operating System : Free Dos</li>\r\n	<li style=\"text-align:justify\">Battery : 3-cell Li-ion</li>\r\n	<li style=\"text-align:justify\">Audio : Integrated dual-array microphone</li>\r\n	<li style=\"text-align:justify\">Integrated stereo speakers</li>\r\n</ul>', './admin/product_images/1592631066_hp_laptop.jpg', '', 1, 1, '2020-06-19 23:31:06', '2020-08-17 02:03:53'),
(19, 3, 13, 50, 3, 'Acer Laptop', 'COM-ACE-ACE-0019', 'Cori-7', 'Bangladeshi', 28700, '13%', 32431.00, 'Acer Swift SF314-52(i5 7th Gen-7200U-3MB Cache,3.1 GHz/4GB DDR4/512GB SSD/14″ FHD/Backlit Keyboard/BT/Wi-Fi/Fingerprint Reader/Dos/Sparkly Silver/2 Year', '<p style=\"text-align:justify\">Generation &ndash; 7th Gen<br />\r\nProcessor &ndash; Intel Core i5 7200U<br />\r\nProcessor Clock Speed &ndash; 2.50-3.10GHz<br />\r\nDisplay Size &ndash; 14&Prime;<br />\r\nRAM &ndash; 4GB<br />\r\nRAM Type &ndash; DDR4<br />\r\nHDD &ndash; 512GB SSD</p>', './admin/product_images/1592631680_acer_laptop.jpg', '', 1, 1, '2020-06-19 23:41:22', '2020-08-17 02:04:34'),
(20, 10, 62, 5, 3, 'Indian Cotton Shirt', 'MEN-YEL-IND-0020', NULL, 'Indian', 180, '38%', 248.00, 'Full leeve Indian Cotton Shirt', '<p style=\"text-align:justify\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />100% Cotton, Stylish Casual Indian New Collection Shirt</p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Shirt Code- SN-42</p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Product Type: Shirt</p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Gender: Men</p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Main Material: Cotton</p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;M- chest 38, length 28</p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;L- chest 40, length 30</p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;XL- chest 42 length 31</p>', './admin/product_images/1592677391_indian_cotton_shirt.jpg', '', 1, NULL, '2020-06-20 12:23:11', '2020-06-25 00:26:49'),
(21, 10, 62, 6, 3, 'Casual Half Shirt', 'MEN-CAT-CAS-0021', NULL, 'Bangladeshi', 120, '45%', 174.00, 'SARA LIFESTYLE MEN\'S CASUAL SHIRT (CSMF2)', '<ul>\r\n	<li style=\"text-align:justify\">Brand name: SaRa</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Color: BLACK MAROON CHECK, Same as picture</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Type: Casual shirt</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Style: Slim Fit</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">100% Authentic Product</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Material &amp; Care: Cotton</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Unique design</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Best Production quality</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">For an effortlessly trendy look</p>\r\n	</li>\r\n</ul>', './admin/product_images/1592678618_casual_half_shirt.jpg', '', 1, 1, '2020-06-20 12:43:39', '2020-09-02 08:24:22'),
(22, 10, 62, 6, 3, 'Gents Full Sleeve Denim Shirt', 'MEN-CAT-GEN-0022', NULL, 'Bangladeshi', 160, '39%', 222.00, 'Gents Full Sleeve Denim Shirt', '<p>Gents Full Sleeve Denim Shirt</p>', './admin/product_images/1592678880_gents_full_sleeve_denim_shirt.jpg', '', 1, NULL, '2020-06-20 12:48:00', '2020-06-25 00:26:01'),
(23, 10, 62, 5, 3, 'Formal Shirt', 'MEN-YEL-FOR-0023', NULL, 'Bangladeshi', 190, '37%', 260.00, 'Mens Full Sleeve Formal Shirt', '<p>Mens Full Sleeve Formal Shirt</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-79px; position:absolute; top:38px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592679054_formal_shirt.jpg', '', 1, NULL, '2020-06-20 12:50:55', '2020-06-25 00:25:38'),
(24, 10, 62, 9, 3, 'Formal Shirts For Men', 'MEN-INF- FO-0024', NULL, 'Bangladeshi', 180, '39%', 250.00, 'New Stylish Long Sleeve Formal Shirts For Men', '<p>New Stylish Long Sleeve Formal Shirts For Men</p>', './admin/product_images/1592679586_formal_shirts_for_men.jpg', '', 1, NULL, '2020-06-20 12:59:46', '2020-06-25 00:25:11'),
(25, 10, 61, 7, 3, 'New Special couple T shirt', 'MEN-ANJ-NEW-0025', NULL, 'Bangladeshi', 160, '40%', 224.00, 'New Special couple T shirt', '<p>New Special couple T shirt</p>', './admin/product_images/1592680266_new_special_couple_t_shirt.jpg', '', 1, NULL, '2020-06-20 13:11:06', '2020-06-25 00:24:48'),
(26, 10, 61, 8, 3, 'King & Queen T-shirt', 'MEN-KAY-KIN-0026', NULL, 'Bangladeshi', 170, '41%', 239.00, 'New KINGs and QUEENs Special couple T shirt', '<p>New KINGs and QUEENs Special couple T shirt</p>', './admin/product_images/1592680435_king_&_queen_t-shirt.jpg', '', 1, NULL, '2020-06-20 13:13:55', '2020-06-25 00:24:15'),
(27, 10, 61, 5, 3, 'Cotton Casual T-shirt for Men', 'MEN-YEL-COT-0027', NULL, NULL, 130, '45%', 188.00, 'Cotton Casual T-shirt for Men - Red', '<p>Cotton Casual T-shirt for Men - Red</p>', './admin/product_images/1592680556_cotton_casual_t-shirt_for_men.png', '', 1, NULL, '2020-06-20 13:15:56', '2020-06-25 00:23:51'),
(28, 10, 61, 9, 3, 'combo Slim fit Half sleeve t-shirt.', 'MEN-INF- CO-0028', NULL, 'Bangladeshi', 330, '38%', 455.00, 'Pack of 5 pc combo Slim fit Half sleeve t-shirt.', '<p>Pack of 5 pc combo Slim fit Half sleeve t-shirt.</p>', './admin/product_images/1592680703_combo_slim_fit_half_sleeve_t-shirt..jpg', '', 1, NULL, '2020-06-20 13:18:23', '2020-06-25 00:23:23'),
(29, 10, 61, 3, 3, 'Ash color T-shirt', 'MEN-ARO- AS-0029', NULL, 'Bangladeshi', 220, '40%', 308.00, 'Tshirt Men Ash color responsive & Rubber Print Design', '<p>Tshirt Men Ash color responsive &amp; Rubber Print Design</p>', './admin/product_images/1592680819_ash_color_t-shirt.png', '', 1, NULL, '2020-06-20 13:20:19', '2020-06-25 00:22:59'),
(30, 10, 74, 9, 3, 'Mens Jacket', 'MEN-INF-MEN-0030', NULL, 'Bangladeshi', 630, '35%', 850.00, 'Royal Enfield Polyster Black Jacket for bike rider Air Motorcycle Riding Jacket', '<p>Royal Enfield Polyster Black Jacket for bike rider Air Motorcycle Riding Jacket</p>', './admin/product_images/1592681446_mens_jacket.jpg', '', 1, NULL, '2020-06-20 13:30:47', '2020-06-25 00:22:19'),
(31, 10, 74, 6, 3, 'Men Solid Color Jaket', 'MEN-CAT-MEN-0031', NULL, 'Bangladeshi', 880, '32%', 1161.00, 'Men Solid Color Zipper Jacket Windproof Baseball Jacket Sports Coat For New Year', '<p>Men Solid Color Zipper Jacket Windproof Baseball Jacket Sports Coat For New Year</p>', './admin/product_images/1592681572_men_solid_color_jaket.jpg', '', 1, 1, '2020-06-20 13:32:52', '2020-08-26 12:14:24'),
(32, 10, 74, 6, 3, 'Navy Blue  Jacket', 'MEN-CAT-NAV-0032', NULL, 'Bangladeshi', 770, '35%', 1039.00, 'Navy Blue Cotton Full Sleeve Jacket For Men', '<p>Navy Blue Cotton Full Sleeve Jacket For Men</p>', './admin/product_images/1592681752_navy_blue__jacket.jpg', '', 1, 3, '2020-06-20 13:35:52', '2020-09-02 08:24:22'),
(33, 10, 74, 7, 3, 'Multicolor Jaket', 'MEN-ANJ-MUL-0033', NULL, 'Bangladeshi', 1230, '33%', 1635.00, 'Jackets For Men Outdoor Hiking Waterproof Windproof Snowboarding Warm Coat', '<p>&nbsp;</p>\r\n\r\n<p>Jackets For Men Outdoor Hiking Waterproof Windproof Snowboarding Warm Coat</p>', './admin/product_images/1592681898_multicolor_jaket.jpg', '', 1, 4, '2020-06-20 13:38:18', '2020-08-17 02:02:12'),
(34, 10, 74, 6, 3, 'Pure Lather Jaket', 'MEN-CAT-PUR-0034', NULL, NULL, 990, '37%', 1356.00, 'Lather Jacket For Men By 24 open', '<p>Lather Jacket For Men By 24 open</p>', './admin/product_images/1592682219_pure_lather_jaket.jpg', '', 1, 1, '2020-06-20 13:43:40', '2020-08-17 01:59:17'),
(35, 10, 73, 9, 3, 'Excellent Mens Hoddie', 'MEN-INF-EXC-0035', NULL, 'Bangladeshi', 580, '34%', 777.00, 'Excellent Mens Hoddie', '<p>Excellent Mens Hoddie</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:2px; position:absolute; top:38px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592682889_excellent_mens_hoddie.jpg', '', 1, NULL, '2020-06-20 13:54:53', '2020-06-25 00:20:27'),
(36, 10, 73, 8, 3, 'Mens White Color hoddie', 'MEN-KAY-MEN-0036', NULL, 'Bangladeshi', 890, '37%', 1219.00, 'Mens White Color hoddie', '<p>Mens White Color hoddie</p>', './admin/product_images/1592682983_mens_white_color_hoddie.jpg', '', 1, NULL, '2020-06-20 13:56:23', '2020-08-17 01:59:33'),
(37, 10, 73, 7, 3, 'Mens Blck Color Hoddie', 'MEN-ANJ-MEN-0037', NULL, 'Bangladeshi', 890, '42%', 1263.00, 'Mens Blck Color Hoddie', '<p>Mens Blck Color Hoddie</p>', './admin/product_images/1592683070_mens_blck_color_hoddie.jpg', '', 1, NULL, '2020-06-20 13:57:50', '2020-08-17 01:59:47'),
(38, 10, 73, 9, 3, 'Mens Ash Color Hoddie', 'MEN-INF-MEN-0038', NULL, 'Bangladeshi', 480, '34%', 643.00, 'Mens Ash Color Hoddie', '<p>Mens Ash Color Hoddie</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-60px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592683185_mens_ash_color_hoddie.jpg', '', 1, NULL, '2020-06-20 13:59:45', '2020-06-25 00:19:26'),
(39, 11, 73, 5, 3, 'Excllent Red Color Mens Hoddie', 'ELE-YEL-EXC-0039', NULL, 'Bangladeshi', 660, '32%', 871.00, 'Excllent Red Color Mens Hoddie', '<p>Excllent Red Color Mens Hoddie</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-1px; position:absolute; top:38px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592683293_excllent_red_color_mens_hoddie.jpg', '', 1, NULL, '2020-06-20 14:01:33', '2020-06-25 00:19:05'),
(40, 10, 72, 3, 5, 'Stylish Men’s Cotton Punjabi', 'MEN-ARO-STY-0040', NULL, 'Bangladeshi', 790, '33%', 1050.00, 'Stylish and Exclusive Cotton Special Men’s Cotton Punjabi', '<p>&nbsp;</p>\r\n\r\n<p>Stylish and Exclusive Cotton Special Men&rsquo;s Cotton Punjabi</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:15px; position:absolute; top:38px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592683527_stylish_men’s_cotton_punjabi.jpg', '', 1, NULL, '2020-06-20 14:05:27', '2020-08-17 02:00:24'),
(41, 10, 72, 7, 3, 'Special Men’s Cotton Punjabi', 'MEN-ANJ-SPE-0041', NULL, 'Bangladeshi', 870, '33%', 1157.00, 'Special Men’s Cotton Punjabi', '<p>Special Men&rsquo;s Cotton Punjabi</p>', './admin/product_images/1592683705_special_men’s_cotton_punjabi.jpg', '', 1, NULL, '2020-06-20 14:08:26', '2020-08-17 02:00:05'),
(42, 10, 72, 8, 3, 'Men’s Printed Cotton Punjabi', 'MEN-KAY-MEN-0042', NULL, 'Bangladeshi', 690, '33%', 917.00, 'Men’s Printed Cotton Punjabi', '<p>Men&rsquo;s Printed Cotton Punjabi</p>', './admin/product_images/1592683816_men’s_printed_cotton_punjabi.jpg', '', 1, NULL, '2020-06-20 14:10:17', '2020-06-25 00:17:51'),
(43, 10, 72, 6, 3, 'Maroon Semi Long Cotton Punjabi', 'MEN-CAT-MAR-0043', NULL, NULL, 1680, '22%', 2049.00, 'Maroon Semi Long Cotton Punjabi for Men', '<p>Maroon Semi Long Cotton Punjabi for Men</p>', './admin/product_images/1592683938_maroon_semi_long_cotton_punjabi.jpg', '', 1, 1, '2020-06-20 14:12:18', '2020-08-17 02:00:40'),
(44, 10, 72, 5, 3, 'Special Men’s Printed Cotton Punjabi', 'MEN-YEL-SPE-0044', NULL, NULL, 1170, '39%', 1626.00, 'Special Shadhinota Dibosh Men’s Printed Cotton Punjabi', '<p>Special Shadhinota Dibosh Men&rsquo;s Printed Cotton Punjabi</p>', './admin/product_images/1592684074_special_men’s_printed_cotton_punjabi.jpg', '', 1, 1, '2020-06-20 14:14:34', '2020-08-17 01:56:28'),
(45, 9, 53, 3, 4, 'Unstitched Yellow Three Piece', 'WOM-ARO-UNS-0045', NULL, 'Bangladeshi', 1890, '36%', 2570.00, 'Unstitched Yellow Georgette Three Piece For Women', '<p>Unstitched Yellow Georgette Three Piece For Women</p>', './admin/product_images/1592718670_unstitched_yellow_three_piece.jpg', '', 1, NULL, '2020-06-20 23:51:12', '2020-08-17 01:56:44'),
(46, 9, 53, 5, 3, 'Block PrintThree Piece', 'WOM-YEL-BLO-0046', NULL, 'Bangladeshi', 1640, '37%', 2246.00, 'Block Print Unstitched Three Piece For Women', '<p>Block Print Unstitched Three Piece For Women</p>', './admin/product_images/1592718854_block_printthree_piece.jpg', '', 1, 1, '2020-06-20 23:54:14', '2020-08-26 12:06:08'),
(47, 9, 53, 5, 3, 'Exclusive  Salwar Kameez Three piece', 'WOM-YEL- EX-0047', NULL, 'Bangladeshi', 1630, '37%', 2233.00, 'Unstitched Red Georgette embroidery work Free Size Exclusive Designer Salwar Kameez Three piece For women', '<p>Unstitched Red Georgette embroidery work Free Size Exclusive Designer Salwar Kameez Three piece For women</p>', './admin/product_images/1592719056_exclusive__salwar_kameez_three_piece.jpg', '', 1, 3, '2020-06-20 23:57:36', '2020-08-26 12:06:06'),
(48, 9, 53, 8, 3, 'White Stylish Three Piece', 'WOM-KAY- WH-0048', NULL, 'Bangladeshi', 1190, '36%', 1618.00, 'Unstitched White and Pink color Cotton Exclusive, Fashionable, Stylish and Comfortable, High Quality Block Printed Three Piece for Women', '<p>Unstitched White and Pink color Cotton Exclusive, Fashionable, Stylish and Comfortable, High Quality Block Printed Three Piece for Women</p>', './admin/product_images/1592719514_white_stylish_three_piece.jpg', '', 1, 1, '2020-06-21 00:05:14', '2020-08-26 12:06:08'),
(49, 9, 53, 9, 3, 'New Collection Black Three Piece', 'WOM-INF-NEW-0049', NULL, NULL, 1790, '36%', 2434.00, 'New Collection Unstitched Black and Cream Georgette embroidery work Free Size Exclusive Designer Plazzo style Salwar Kameez Three Piece For women', '<p>New Collection Unstitched Black and Cream Georgette embroidery work Free Size Exclusive Designer Plazzo style Salwar Kameez Three Piece For women</p>', './admin/product_images/1592719758_new_collection_black_three_piece.jpg', '', 1, NULL, '2020-06-21 00:09:18', '2020-08-17 01:57:45'),
(50, 9, 52, 3, 3, 'Yellow and Deep Orange Cotton Saree', 'WOM-ARO-YEL-0050', NULL, 'Bangladeshi', 1170, '35%', 1579.00, 'Yellow and Deep Orange Cotton Saree with Blouse Piece for Women', '<p>Yellow and Deep Orange Cotton Saree with Blouse Piece for Women</p>', './admin/product_images/1592721015_yellow_and_deep_orange_cotton_saree.jpg', '', 1, NULL, '2020-06-21 00:30:16', '2020-08-17 01:58:01'),
(51, 9, 52, 8, 3, 'New Black  Stylish Saree', 'WOM-KAY- NE-0051', NULL, 'Bangladeshi', 1190, '33%', 1582.00, 'New Black Indian Stylish Georgette Saree for Women L01', '<p>&nbsp;</p>\r\n\r\n<p>New Black Indian Stylish Georgette Saree for Women&nbsp;</p>', './admin/product_images/1592721175_new_black__stylish_saree.jpg', '', 1, NULL, '2020-06-21 00:32:55', '2020-08-17 01:58:17'),
(52, 9, 52, 7, 3, 'Deep Green Indian Soft Georgette Saree', 'WOM-ANJ-DEE-0052', NULL, 'Bangladeshi', 880, '32%', 1161.00, 'Deep Green Indian Soft Georgette Saree For Women', '<p>Deep Green Indian Soft Georgette Saree For Women</p>', './admin/product_images/1592721405_deep_green_indian_soft_georgette_saree.jpg', '', 1, 1, '2020-06-21 00:36:45', '2020-08-17 01:58:35'),
(53, 9, 52, 9, 3, 'White Georgette Stylish Elegant Saree', 'WOM-INF-WHI-0053', NULL, 'Bangladeshi', 1480, '36%', 2012.00, 'White Georgette Stylish Elegant Saree For Women', '<p>White Georgette Stylish Elegant Saree For Women</p>', './admin/product_images/1592721586_white_georgette_stylish_elegant_saree.jpg', '', 1, NULL, '2020-06-21 00:39:46', '2020-08-17 01:58:53'),
(54, 9, 52, 5, 3, 'Italian Soft Silk Saree', 'WOM-YEL- IT-0054', NULL, 'Bangladeshi', 2790, '17%', 3264.00, 'Italian Soft Silk Saree for Women- Rose Red', '<p>&nbsp;</p>\r\n\r\n<p>Italian Soft Silk Saree for Women- Rose Red</p>', './admin/product_images/1592721755_italian_soft_silk_saree.jpg', '', 1, NULL, '2020-06-21 00:42:36', '2020-08-17 01:56:11'),
(55, 9, 51, 5, 3, 'Green Georgette Embroidery Salwar Kameez', 'WOM-YEL- GR-0055', NULL, 'Bangladeshi', 2290, '26%', 2885.00, 'Unstitched Dark Green Georgette Embroidery Salwar Kameez For Women', '<p>Unstitched Dark Green Georgette Embroidery Salwar Kameez For Women</p>', './admin/product_images/1592722254_green_georgette_embroidery_salwar_kameez.jpg', '', 1, NULL, '2020-06-21 00:50:55', '2020-08-17 01:55:56'),
(56, 9, 51, 3, 5, 'Yellow and Red  Salwar Kameez', 'WOM-ARO- YE-0056', NULL, 'Bangladeshi', 2890, '26%', 3641.00, 'Semi Stitched Yellow and Red Georgette Embroidered Salwar Kameez for Women', '<p>Semi Stitched Yellow and Red Georgette Embroidered Salwar Kameez for Women</p>', './admin/product_images/1592722450_yellow_and_red__salwar_kameez.jpg', '', 1, NULL, '2020-06-21 00:54:10', '2020-08-17 01:55:38'),
(57, 9, 51, 7, 3, 'Navy Blue Cotton Salwar Kameez', 'WOM-ANJ-NAV-0057', NULL, 'Bangladeshi', 1890, '24%', 2343.00, 'Unstitched Navy Blue Cotton Salwar Kameez', '<p>Unstitched Navy Blue Cotton Salwar Kameez</p>', './admin/product_images/1592722605_navy_blue_cotton_salwar_kameez.jpg', '', 1, NULL, '2020-06-21 00:56:45', '2020-08-17 01:55:22'),
(58, 9, 51, 8, 3, 'Exclusive Balck  Salwar Kameez', 'WOM-KAY-EXC-0058', NULL, 'Bangladeshi', 1990, '29%', 2567.00, 'Unstiched Balck and Golden Georgette Salwar Kameez For Women', '<p>Unstiched Balck and Golden Georgette Salwar Kameez For Women</p>', './admin/product_images/1592722749_exclusive_balck__salwar_kameez.jpg', '', 1, NULL, '2020-06-21 00:59:09', '2020-08-17 01:55:06'),
(59, 9, 51, 5, 3, 'Semi Stitched White Salwar Kameez', 'WOM-YEL-SEM-0059', NULL, NULL, 1870, '27%', 2374.00, 'Semi Stitched White and Light Salmon Georgette Embroidered Salwar Kameez For Women', '<p>Semi Stitched White and Light Salmon Georgette Embroidered Salwar Kameez For Women</p>', './admin/product_images/1592722898_semi_stitched_white_salwar_kameez.jpg', '', 1, NULL, '2020-06-21 01:01:38', '2020-08-17 01:54:47'),
(60, 9, 50, 8, 3, 'Blue  New Indian Kurti', 'WOM-KAY-BLU-0060', NULL, 'Bangladeshi', 990, '29%', 1277.00, 'Blue Georgette New Indian Kurti For Women', '<p>&nbsp;</p>\r\n\r\n<p>Blue Georgette New Indian Kurti For Women</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-22px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592723610_blue__new_indian_kurti.jpg', '', 1, NULL, '2020-06-21 01:13:30', '2020-08-17 01:54:02'),
(61, 9, 50, 3, 3, 'Maroon Cotton New Indian Kurti', 'WOM-ARO-MAR-0061', NULL, 'Bangladeshi', 630, '28%', 806.00, 'Maroon Cotton New Indian Kurti For Women', '<p>Maroon Cotton New Indian Kurti For Women</p>', './admin/product_images/1592723763_maroon_cotton_new_indian_kurti.jpg', '', 1, NULL, '2020-06-21 01:16:03', '2020-06-25 00:10:58'),
(62, 9, 50, 8, 3, 'Pink New Indian cotton kurti', 'WOM-KAY-PIN-0062', NULL, 'Bangladeshi', 480, '34%', 643.00, 'Pink New Indian cotton kurti 211 G', '<p>Pink New Indian cotton kurti 211 G</p>', './admin/product_images/1592723876_pink_new_indian_cotton_kurti.jpg', '', 1, NULL, '2020-06-21 01:17:56', '2020-06-25 00:11:40'),
(63, 9, 50, 9, 3, 'Unstitched White Cotton Kurti Long Sleeve', 'WOM-INF-UNS-0063', NULL, 'Bangladeshi', 550, '33%', 731.00, 'Unstitched White Cotton Kurti Long Sleeve For Women', '<p>Unstitched White Cotton Kurti Long Sleeve For Women</p>', './admin/product_images/1592724276_unstitched_white_cotton_kurti_long_sleeve.jpg', '', 1, NULL, '2020-06-21 01:24:36', '2020-06-25 00:12:07'),
(64, 9, 50, 5, 3, 'Orange Georgette Casual Kurti For Women', 'WOM-YEL-ORA-0064', NULL, 'Bangladeshi', 990, '33%', 1316.00, 'Orange Georgette Casual Kurti For Women', '<p>Orange Georgette Casual Kurti For Women</p>', './admin/product_images/1592724404_orange_georgette_casual_kurti_for_women.jpg', '', 1, NULL, '2020-06-21 01:26:44', '2020-08-17 01:51:31'),
(65, 9, 49, 41, 5, 'Benyar Women  Ladies  Watch', 'WOM-SAM-BEN-0065', NULL, 'Bangladeshi', 690, '28%', 883.00, 'Benyar Women Watches Ladies Quartz Simple Style Leather Watch', '<p>Benyar Women Watches Ladies Quartz Simple Style Leather Watch</p>', './admin/product_images/1592725121_benyar_women__ladies__watch.jpg', '', 1, NULL, '2020-06-21 01:35:52', '2020-06-25 00:06:07'),
(66, 9, 49, 22, 3, 'Style Wrist Watch', 'WOM-OME-STY-0066', NULL, 'Bangladeshi', 890, '31%', 1165.00, 'STYLE WRIST WATCH FOR MEN AND WOMEN', '<p>STYLE WRIST WATCH FOR MEN AND WOMEN</p>', './admin/product_images/1592725255_style_wrist_watch.jpg', '', 1, NULL, '2020-06-21 01:40:55', '2020-08-17 01:51:44'),
(67, 9, 49, 22, 3, 'Fashion  Leather Women\'s Watch', 'WOM-OME-FAS-0067', NULL, 'Bangladeshi', 2980, '26%', 3754.00, 'Fashion Flower Stainless Steel Mesh Leather Women\'s Watches Leather', '<p>Fashion Flower Stainless Steel Mesh Leather Women&#39;s Watches Leather</p>', './admin/product_images/1592726024_fashion__leather_women\'s_watch.jpg', '', 1, NULL, '2020-06-21 01:53:44', '2020-08-17 01:52:01'),
(68, 9, 49, 20, 5, 'Stylish  Women watch', 'WOM-ROL-STY-0068', NULL, 'Bangladeshi', 3880, '33%', 5160.00, 'STYLE WRIST WATCH FOR MEN AND WOMEN', '<p>STYLE WRIST WATCH FOR MEN AND WOMEN</p>', './admin/product_images/1592726208_stylish__women_watch.jpg', '', 1, 1, '2020-06-21 01:56:49', '2020-08-17 01:52:19'),
(69, 9, 49, 21, 3, 'Excellent Wrist Watch For Women', 'WOM-RAD-EXC-0069', NULL, 'Bangladeshi', 690, '32%', 910.00, 'STYLE WRIST WATCH FOR MEN AND WOMEN', '<p>STYLE WRIST WATCH FOR MEN AND WOMEN</p>', './admin/product_images/1592726357_excellent_wrist_watch_for_women.jpg', '', 1, 1, '2020-06-21 01:59:17', '2020-07-24 03:16:16'),
(70, 11, 71, 1, 3, 'Wlton 43 Inch Smart Tv', 'ELE-WAL-WLT-0070', NULL, 'Bangladeshi', 18900, '26%', 23814.00, 'Walton WD4-TS43-KS220 (1.09m) Smart TV - 43 Inch - Black', '<p>Walton WD4-TS43-KS220 (1.09m) Smart TV - 43 Inch - Black</p>', './admin/product_images/1592738137_wlton_43_inch_smart_tv.jpg', '', 1, NULL, '2020-06-21 05:15:39', '2020-08-17 01:52:38'),
(71, 11, 71, 34, 3, 'Sharp 50 Inch Smart Tv', 'ELE-SHA-SHA-0071', NULL, 'Bangladeshi', 34900, '17%', 40833.00, 'Sharp 50″ / 126cm Smart Full-HD LED TV 2T-C50BG1i', '<p>Sharp 50&Prime; / 126cm Smart Full-HD LED TV 2T-C50BG1i</p>', './admin/product_images/1592738260_sharp_50_inch_smart_tv.jpg', '', 1, 4, '2020-06-21 05:17:40', '2020-08-17 01:53:31'),
(72, 11, 71, 2, 3, 'Vision 49 Inch Led Smart tv', 'ELE-PRA-VIS-0072', NULL, 'Bangladeshi', 24600, '25%', 30750.00, 'VISION 49” LED Smart 4K TV T01 Gery - Black', '<p>&nbsp;</p>\r\n\r\n<p>VISION 49&rdquo; LED Smart 4K TV T01 Gery - Black</p>', './admin/product_images/1592738464_vision_49_inch_led_smart_tv.jpg', '', 1, NULL, '2020-06-21 05:21:04', '2020-08-17 01:52:53'),
(73, 11, 71, 40, 3, 'Samsung 40 Inch  Smart LED TV', 'ELE-SON-SAM-0073', NULL, 'Bangladeshi', 28900, '15%', 33235.00, 'Samsung 40 INCH Full HD Smart LED TV', '<p>Samsung 40 INCH Full HD Smart LED TV</p>', './admin/product_images/1592738693_samsung_40_inch__smart_led_tv.jpg', '', 1, NULL, '2020-06-21 05:24:54', '2020-08-17 01:53:13'),
(74, 11, 71, 40, 3, 'Sony Bravia 32 Inch Led Smart Tv', 'ELE-SON-SON-0074', NULL, 'Bangladeshi', 45700, '16%', 53012.00, 'SONY Bravia R302E 32\" HD Ready LED TV', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SONY Bravia R302E 32&quot; HD Ready LED TV</p>\r\n\r\n<h1>&nbsp;</h1>', './admin/product_images/1592739173_sony_bravia_32_inch_led_smart_tv.jpg', '', 1, 3, '2020-06-21 05:29:40', '2020-09-03 01:33:04'),
(78, 11, 70, 41, 3, 'Excellent Smart Wrist Watch', 'ELE-SAM-EXC-0075', NULL, 'Bangladeshi', 650, '25%', 812.00, 'Excellent Smart Wrist Watch', '<p>Excellent Smart Wrist Watch</p>', './admin/product_images/1592741397_excellent_smart_wrist_watch.jpg', '', 1, NULL, '2020-06-21 06:09:58', '2020-06-24 23:58:03'),
(79, 11, 70, 22, 3, 'Smart Wrist watch For Men', 'ELE-OME-SMA-0079', NULL, 'Bangladeshi', 2200, '25%', 2750.00, 'Smart Wrist watch For Men', '<p>Smart Wrist watch For Men</p>', './admin/product_images/1592741509_smart_wrist_watch_for_men.jpg', '', 1, NULL, '2020-06-21 06:11:49', '2020-08-17 01:48:53'),
(80, 11, 70, 22, 3, 'Brown Wrist Watch For Men', 'ELE-OME-BRO-0080', 'Brown Wrist Watch For Men', 'Bangladeshi', 1550, '27%', 1968.00, 'Brown Wrist Watch For Men', '<p>Brown Wrist Watch For Men</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-66px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592741638_brown_wrist_watch_for_men.jpg', '', 1, NULL, '2020-06-21 06:13:59', '2020-08-17 01:49:09'),
(81, 11, 70, 41, 3, 'Golden Wrrist Watch For Men', 'ELE-SAM-GOL-0081', 'Golden Wrrist Watch For Men', 'Bangladeshi', 3280, '27%', 4165.00, 'Golden Wrrist Watch For Men', '<p>Golden Wrrist Watch For Men</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-135px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592741747_golden_wrrist_watch_for_men.jpg', '', 1, 1, '2020-06-21 06:15:47', '2020-08-29 09:25:20'),
(82, 11, 70, 21, 3, 'Metalic Wrist watch For Men', 'ELE-RAD-MET-0082', NULL, NULL, 1350, '28%', 1728.00, 'CURREN 8364 Sport Men Watch Top Brand Luxury Blue Military Business Waterproof Male Clock Stainless Steel Quartz Man Wristwatch', '<p>CURREN 8364 Sport Men Watch Top Brand Luxury Blue Military Business Waterproof Male Clock Stainless Steel Quartz Man Wristwatch</p>', './admin/product_images/1592741904_metalic_wrist_watch_for_men.jpg', '', 1, 1, '2020-06-21 06:18:25', '2020-08-17 01:50:23'),
(83, 11, 69, 1, 3, 'Walton Split AC', 'ELE-WAL-WAL-0083', NULL, 'Bangladeshi', 31600, '16%', 36656.00, 'Walton Split AC 1.5 ton', '<p>Walton Split AC 1.5 ton</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-39px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592742816_walton_split_ac.jpg', '', 1, NULL, '2020-06-21 06:33:37', '2020-08-17 01:50:39'),
(84, 11, 69, 34, 3, 'Sharp 1.5 ton Split AC', 'ELE-SHA-SHA-0084', NULL, 'Bangladeshi', 39500, '17%', 46215.00, 'Sharp 1.5 ton Split AC', '<p>Sharp 1.5 ton Split AC</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:0px; position:absolute; top:38px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592742909_sharp_1.5_ton_split_ac.jpg', '', 1, NULL, '2020-06-21 06:35:09', '2020-08-17 01:50:08'),
(85, 11, 69, 1, 3, 'Walton Maroon Split AC 1 Ton', 'ELE-WAL-WAL-0085', NULL, 'Bangladeshi', 27700, '25%', 34625.00, 'Walton Maroon Split AC 1 Ton', '<p>Walton Maroon Split AC 1 Ton</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-68px; position:absolute; top:38px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592742999_walton_maroon_split_ac_1_ton.jpg', '', 1, NULL, '2020-06-21 06:36:39', '2020-08-17 01:50:55'),
(86, 11, 69, 33, 3, 'Toshiba White Color Split 1.5 Ton AC', 'ELE-TOS-TOS-0086', NULL, 'Bangladeshi', 34700, '16%', 40252.00, 'Toshiba White Color Split 1.5 Ton AC', '<p>Toshiba White Color Split 1.5 Ton AC</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-15px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592743091_toshiba_white_color_split_1.5_ton_ac.jpg', '', 1, NULL, '2020-06-21 06:38:11', '2020-08-17 01:51:11'),
(87, 11, 69, 41, 3, 'Samsung Split AC 1.5 Ton', 'ELE-SAM-SAM-0087', NULL, 'Bangladeshi', 41500, '10%', 45650.00, 'Samsung Ash Color Split AC 1.5 Ton', '<p>Samsung Ash Color Split AC 1.5 Ton</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-66px; position:absolute; top:38px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592743200_samsung_split_ac_1.5_ton.jpg', '', 1, NULL, '2020-06-21 06:40:00', '2020-08-17 01:46:02'),
(88, 11, 68, 1, 3, 'Walton Exclusive Freez', 'ELE-WAL-WAL-0088', NULL, 'Bangladeshi', 28500, '12%', 31920.00, 'Walton Exclusive Freez', '<p>Walton Exclusive Freez</p>', './admin/product_images/1592743675_walton_exclusive_freez.jpg', '', 1, NULL, '2020-06-21 06:47:55', '2020-08-17 01:46:19'),
(89, 11, 68, 33, 3, 'Toshiba Chocklet Color freez', 'ELE-TOS-TOS-0089', NULL, 'Bangladeshi', 35600, '13%', 40228.00, 'Toshiba Chocklet Color freez', '<p>Toshiba Chocklet Color freez</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-33px; position:absolute; top:38px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592743773_toshiba_chocklet_color_freez.jpg', '', 1, NULL, '2020-06-21 06:49:33', '2020-08-17 01:48:21'),
(90, 11, 68, 41, 3, 'Samsung Black color Freez', 'ELE-SAM-SAM-0090', NULL, 'Bangladeshi', 29500, '13%', 33.00, 'Samsung Black color Freez', '<p>Samsung Black color Freez</p>', './admin/product_images/1592743866_samsung_black_color_freez.jpg', '', 1, NULL, '2020-06-21 06:51:07', '2020-06-24 23:53:02'),
(91, 11, 68, 31, 3, 'LG Exclusive Freez', 'ELE-LG-LG -0091', NULL, 'Bangladeshi', 36700, '13%', 41471.00, 'LG Exclusive Freez', '<p>LG Exclusive Freez</p>', './admin/product_images/1592744032_lg_exclusive_freez.jpg', '', 1, NULL, '2020-06-21 06:53:53', '2020-08-17 01:48:02'),
(92, 11, 68, 34, 3, 'Sharp Exclusive freez', 'ELE-SHA-SHA-0092', NULL, 'Bangladeshi', 38500, '14%', 43890.00, 'Sharp Hot Collection freez', '<p>Sharp Hot Collection freez</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-11px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592744144_sharp_exclusive_freez.jpg', '', 1, NULL, '2020-06-21 06:55:44', '2020-08-17 01:47:45'),
(93, 8, 45, 42, 3, 'Apple iPhone SE (2020)', 'MOB-APE-APP-0093', 'iPhone SE (2020), A2275, A2296, A2298', 'Made In China', 38500, '11%', 42735.00, 'Excellent Mobile', '<p>Excellent Mobile</p>', './admin/product_images/1592801402_apple_iphone_se_(2020).jpg', '', 1, 1, '2020-06-21 22:50:04', '2020-08-17 01:47:27'),
(94, 8, 44, 45, 3, 'Huawei Nova 7 Pro 5G', 'MOB-HUW-HUA-0094', 'Nova 7 Pro 5G', 'Made in Koriea', 22500, '15%', 25875.00, 'Huawei Nova 7 Pro 5G', '<h1>Huawei Nova 7 Pro 5G</h1>', './admin/product_images/1592802584_huawei_nova_7_pro_5g.jpg', '', 1, 2, '2020-06-21 23:09:47', '2020-08-17 01:47:10'),
(95, 8, 43, 41, 3, 'Samsung Galaxy M01', 'MOB-SAM-SAM-0095', 'Galaxy M01', 'Made in China', 25800, '15%', 29670.00, 'Samsung Galaxy M01', '<h1>Samsung Galaxy M01</h1>', './admin/product_images/1592802966_samsung_galaxy_m01.jpg', '', 1, 1, '2020-06-21 23:16:06', '2020-08-17 01:46:56'),
(96, 8, 42, 43, 3, 'Oppo A91', 'MOB-OPP-OPP-0096', 'Oppo A91', 'Made in India', 24500, '16%', 28420.00, 'Oppo A91', '<h1>Oppo A91</h1>', './admin/product_images/1592803162_oppo_a91.jpg', '', 1, 1, '2020-06-21 23:19:22', '2020-08-17 01:46:40'),
(97, 8, 41, 41, 3, 'Bluetooth Headphones', 'MOB-SAM-BLU-0097', NULL, 'Made in China', 350, '25%', 437.00, 'Beats Solo 3 Wireless Bluetooth Headphones -Multicolor', '<p>Beats Solo 3 Wireless Bluetooth Headphones -Multicolor</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:5px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592803531_bluetooth_headphones.jpg', '', 1, 1, '2020-06-21 23:25:31', '2020-08-10 09:14:36'),
(98, 8, 40, 42, 3, 'iPhone  Orginal Zori Back Cover', 'MOB-APE-IPH-0098', NULL, 'Made in China', 350, '18%', 413.00, 'iPhone xs Max Orginal Zori Back Cover Case', '<p>iPhone xs Max Orginal Zori Back Cover Case</p>', './admin/product_images/1592803840_iphone__orginal_zori_back_cover.jpg', '', 1, NULL, '2020-06-21 23:30:41', '2020-06-24 23:38:16'),
(99, 5, 26, 3, 3, 'Stylish Kids Nice Dress', 'KID-ARO-STY-0099', NULL, NULL, 1350, '15%', 1552.00, 'Children Dresses 2020 Eid Collection Red And Blue Style Kids Girl Dress,Kids Girl Clothes New Collection', '<p>Children Dresses 2020 Eid Collection Red And Blue Style Kids Girl Dress,Kids Girl Clothes New Collection</p>', './admin/product_images/1592807448_stylish_kids_nice_dress.jpg', '', 1, 1, '2020-06-22 00:30:54', '2020-08-17 01:44:50'),
(100, 5, 27, 4, 4, 'Cute Kids Shoe', 'KID-APP-CUT-00100', NULL, 'Bangladeshi', 750, '15%', 862.00, 'Children Kid Baby Girls Solid Bowknot Student Single Soft Dance Princess', '<p>&nbsp;</p>\r\n\r\n<p>Children Kid Baby Girls Solid Bowknot Student Single Soft Dance Princess&nbsp;</p>', './admin/product_images/1592807744_cute_kids_shoe.jpg', '', 1, NULL, '2020-06-22 00:35:44', '2020-06-24 23:36:47'),
(101, 5, 28, 3, 3, 'Fashionable Kids Umbrella', 'KID-ARO-FAS-00101', NULL, 'Bangladeshi', 450, '18%', 531.00, 'Polyester Kids Umbrella', '<p>Polyester Kids Umbrella</p>', './admin/product_images/1592808212_fashionable_kids_umbrella.jpg', '', 1, NULL, '2020-06-22 00:43:33', '2020-06-24 23:36:25'),
(102, 5, 29, 4, 5, 'Micky MouseKids Cute Bag', 'KID-APP-MIC-00102', NULL, 'Bangladeshi', 450, '15%', 517.00, 'Mickey mouse velvet Minnie Shape School Backpacks for kids', '<p>Mickey mouse velvet Minnie Shape School Backpacks for kids</p>', './admin/product_images/1592808493_micky_mousekids_cute_bag.jpg', '', 1, NULL, '2020-06-22 00:48:13', '2020-06-24 23:36:02'),
(103, 5, 30, 2, 3, 'Red Kids Nice Bicycle', 'KID-PRA-RED-00103', NULL, 'Bangladeshi', 5500, '23%', 6765.00, 'Duranta CB Glitter Bicycle -12 Green(847199)', '<p>Duranta CB Glitter Bicycle -12 Green(847199)</p>', './admin/product_images/1592808935_red_kids_nice_bicycle.jpg', '', 1, NULL, '2020-06-22 00:55:35', '2020-08-17 01:45:12'),
(104, 5, 31, 2, 3, 'Super Racing Kids Bike', 'KID-PRA-SUP-00104', NULL, 'Bangladeshi', 15500, '16%', 17980.00, 'CHAMPION Super Speed Racing Bike For Kids With Sound & Music', '<p>CHAMPION Super Speed Racing Bike For Kids With Sound &amp; Music</p>', './admin/product_images/1592809167_super_racing_kids_bike.jpg', '', 1, 1, '2020-06-22 00:59:28', '2020-08-17 01:45:42'),
(105, 4, 20, 8, 3, 'Nice Pink Color Window Screen', 'HOU-KAY-NIC-00105', NULL, 'Bangladeshi', 2500, '18%', 2950.00, '100X200cm Voile Jacquard Window Screen Sheer Window Curtains Floral Drape', '<p>100X200cm Voile Jacquard Window Screen Sheer Window Curtains Floral Drape</p>', './admin/product_images/1592812179_nice_pink_color_window_screen.jpg', '', 1, NULL, '2020-06-22 01:49:42', '2020-08-17 01:45:27'),
(106, 4, 20, 3, 3, 'Excellent Red Window Screen', 'HOU-ARO-EXC-00106', NULL, 'Bangladeshi', 2200, '22%', 2684.00, 'Heart 2 Piece Polyester Window or Doorway Curtain Set - Red', '<p>Heart 2 Piece Polyester Window or Doorway Curtain Set - Red</p>', './admin/product_images/1592812442_excellent_red_window_screen.jpg', '', 1, NULL, '2020-06-22 01:54:02', '2020-08-17 01:44:32'),
(107, 4, 21, 7, 3, 'Double Bedsheet With Pillow Cover', 'HOU-ANJ-DOU-00107', NULL, 'Bangladeshi', 1500, '18%', 1770.00, 'Cotton Fabric Multicolor Print 7.5 by 8.5 Feet Double King Size Bedsheet Set with Two Pillow Covers', '<p>Cotton Fabric Multicolor Print 7.5 by 8.5 Feet Double King Size Bedsheet Set with Two Pillow Covers</p>', './admin/product_images/1592812747_double_bedsheet_with_pillow_cover.jpg', '', 1, NULL, '2020-06-22 01:59:07', '2020-08-17 01:43:01'),
(108, 4, 22, 16, 3, 'Exclusive Wodden Color Dinning Set', 'HOU-PAR-EXC-00108', NULL, 'Bangladeshi', 25500, '25%', 31875.00, 'Smart Design wood Dinning set D-759', '<p>Smart Design wood Dinning set D-759</p>', './admin/product_images/1592813058_exclusive_wodden_color_dinning_set.jpg', '', 1, 1, '2020-06-22 02:04:18', '2020-08-17 01:42:47'),
(109, 4, 23, 14, 3, 'Very Standard Wardrobes', 'HOU-HAT-VER-00109', NULL, 'Bangladeshi', 28500, '32%', 37620.00, 'Standard Wardrobes-MWR050', '<p>Standard Wardrobes-MWR050</p>', './admin/product_images/1592813305_very_standard_wardrobes.jpg', '', 1, 1, '2020-06-22 02:08:25', '2020-08-17 01:42:34'),
(110, 4, 24, 8, 3, 'Pink Colored Flower Vase', 'HOU-KAY-PIN-00110', NULL, 'Bangladeshi', 2250, '25%', 2812.00, 'pink colored plastic flower vase with a flower pasted on the front side. Suitable for flowers you might have or will buy. Brings color and beauty to your room. Great for gifting purposes as well.', '<p>pink colored plastic flower vase with a flower pasted on the front side. Suitable for flowers you might have or will buy. Brings color and beauty to your room. Great for gifting purposes as well.</p>', './admin/product_images/1592813603_pink_colored_flower_vase.jpg', '', 1, NULL, '2020-06-22 02:13:23', '2020-08-17 01:42:22'),
(111, 4, 25, 18, 3, 'New Chocolate Color TV Self', 'HOU-NAV-BRA-00111', NULL, 'Bangladeshi', 22000, '10%', 22220.00, 'Brand New Chocolate Color TV Cabinet', '<p>Brand New Chocolate Color TV Cabinet</p>', './admin/product_images/1592813821_brand_new_chocolate_color_tv_cabinet.jpg', '', 1, 1, '2020-06-22 02:17:01', '2020-08-17 01:42:08'),
(112, 11, 67, 1, 3, 'Excellent Walton Deep freez', 'ELE-WAL-EXC-00112', 'WCG-2E5-EHLC-XX', 'Bangladeshi', 28900, '15', 33235.00, 'Excellent Walton Deep freez', '<p>Excellent Walton Deep freez</p>', './admin/product_images/1592983491_excellent_walton_deep_freez.jpg', '', 0, NULL, '2020-06-24 01:24:51', '2020-08-17 01:41:52');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `model`, `origin`, `retail_price`, `profit_price`, `sell_price`, `short_description`, `long_description`, `image`, `big_image`, `status`, `sell_count`, `created_at`, `updated_at`) VALUES
(113, 11, 67, 34, 3, 'Nice Yello Color Sharp Deep Freez', 'ELE-SHA-NIC-00113', NULL, NULL, 21950, '15%', 25242.00, 'Nice Yello Color Sharp Deep Freez', '<p>Nice Yello Color Sharp Deep Freez</p>', './admin/product_images/1592984353_nice_yello_color_sharp_deep_freez.jpg', '', 1, NULL, '2020-06-24 01:39:13', '2020-06-24 01:39:13'),
(114, 11, 67, 39, 3, 'Black Color Samsung Deep Freez', 'ELE-TRA-BLA-00114', 'WCG-3J0-RXLX-GX', 'Bangladeshi', 32290, '15%', 37133.00, 'Black Color Samsung Deep Freez', '<p>Black Color Samsung Deep Freez</p>', './admin/product_images/1592984820_black_color_samsung_deep_freez.jpg', '', 1, NULL, '2020-06-24 01:47:00', '2020-08-17 01:41:38'),
(115, 11, 67, 1, 3, 'Excellent Walton Deep Freez', 'ELE-WAL-EXC-00115', 'WCF-2T5-GDEL-XX', 'Bangladeshi', 25900, '15%', 29785.00, 'Excellent Walton Deep Freez', '<p>Excellent Walton Deep Freez</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-12px; position:absolute; top:38px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592985059_excellent_walton_deep_freez.jpg', '', 1, NULL, '2020-06-24 01:50:59', '2020-08-17 01:41:24'),
(116, 11, 67, 1, 3, 'Walton Very Nice Deep Freez', 'ELE-WAL-WAL-00116', 'WCG-2E5-EHLX-XX', 'Bangladeshi', 27950, '15%', 32142.00, 'Excellent Walton freez', '<p>Excellent Walton freez</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-68px; position:absolute; top:-6px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', './admin/product_images/1592985227_walton_very_nice_deep_freez.jpg', '', 0, NULL, '2020-06-24 01:53:48', '2020-08-17 01:40:44'),
(117, 10, 60, 6, 3, 'Blazer', 'MEN-CAT-BLA-00117', NULL, NULL, 780, '15%', 897.00, 'Blazer For Men Standard Fit', '<ul>\r\n	<li style=\"text-align: justify;\">Synthetic Casual Blazer For Men</li>\r\n	<li style=\"text-align: justify;\">Product Type: Blazer</li>\r\n	<li style=\"text-align: justify;\">Style: Casual</li>\r\n	<li style=\"text-align: justify;\">Color: As seen in the picture</li>\r\n	<li style=\"text-align: justify;\">Main Material: Synthetic and cotton</li>\r\n	<li style=\"text-align: justify;\">Gender: Men</li>\r\n</ul>', './admin/product_images/1597991882_blazer.jpg', '', 1, NULL, '2020-08-21 00:38:04', '2020-08-21 00:38:04');

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
(426, 33, 102, '2020-06-24 23:36:02', '2020-06-24 23:36:02'),
(427, 30, 102, '2020-06-24 23:36:02', '2020-06-24 23:36:02'),
(428, 14, 102, '2020-06-24 23:36:02', '2020-06-24 23:36:02'),
(429, 33, 101, '2020-06-24 23:36:25', '2020-06-24 23:36:25'),
(430, 29, 101, '2020-06-24 23:36:25', '2020-06-24 23:36:25'),
(431, 14, 101, '2020-06-24 23:36:25', '2020-06-24 23:36:25'),
(432, 33, 100, '2020-06-24 23:36:47', '2020-06-24 23:36:47'),
(433, 29, 100, '2020-06-24 23:36:47', '2020-06-24 23:36:47'),
(434, 14, 100, '2020-06-24 23:36:47', '2020-06-24 23:36:47'),
(438, 28, 98, '2020-06-24 23:38:13', '2020-06-24 23:38:13'),
(439, 14, 98, '2020-06-24 23:38:14', '2020-06-24 23:38:14'),
(440, 3, 98, '2020-06-24 23:38:15', '2020-06-24 23:38:15'),
(441, 33, 97, '2020-06-24 23:38:40', '2020-06-24 23:38:40'),
(442, 28, 97, '2020-06-24 23:38:40', '2020-06-24 23:38:40'),
(443, 24, 97, '2020-06-24 23:38:40', '2020-06-24 23:38:40'),
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
(650, 31, 24, '2020-06-25 00:25:11', '2020-06-25 00:25:11'),
(651, 28, 24, '2020-06-25 00:25:11', '2020-06-25 00:25:11'),
(652, 24, 24, '2020-06-25 00:25:11', '2020-06-25 00:25:11'),
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
(749, 33, 115, '2020-08-17 01:41:24', '2020-08-17 01:41:24'),
(750, 31, 115, '2020-08-17 01:41:24', '2020-08-17 01:41:24'),
(751, 30, 115, '2020-08-17 01:41:24', '2020-08-17 01:41:24'),
(752, 31, 114, '2020-08-17 01:41:38', '2020-08-17 01:41:38'),
(753, 28, 114, '2020-08-17 01:41:38', '2020-08-17 01:41:38'),
(754, 15, 114, '2020-08-17 01:41:38', '2020-08-17 01:41:38'),
(755, 33, 112, '2020-08-17 01:41:52', '2020-08-17 01:41:52'),
(756, 29, 112, '2020-08-17 01:41:52', '2020-08-17 01:41:52'),
(757, 24, 112, '2020-08-17 01:41:52', '2020-08-17 01:41:52'),
(758, 31, 111, '2020-08-17 01:42:06', '2020-08-17 01:42:06'),
(759, 18, 111, '2020-08-17 01:42:06', '2020-08-17 01:42:06'),
(760, 4, 111, '2020-08-17 01:42:07', '2020-08-17 01:42:07'),
(761, 31, 110, '2020-08-17 01:42:21', '2020-08-17 01:42:21'),
(762, 14, 110, '2020-08-17 01:42:21', '2020-08-17 01:42:21'),
(763, 3, 110, '2020-08-17 01:42:21', '2020-08-17 01:42:21'),
(764, 34, 109, '2020-08-17 01:42:34', '2020-08-17 01:42:34'),
(765, 20, 109, '2020-08-17 01:42:34', '2020-08-17 01:42:34'),
(766, 18, 109, '2020-08-17 01:42:34', '2020-08-17 01:42:34'),
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
(779, 33, 103, '2020-08-17 01:45:12', '2020-08-17 01:45:12'),
(780, 30, 103, '2020-08-17 01:45:12', '2020-08-17 01:45:12'),
(781, 13, 103, '2020-08-17 01:45:12', '2020-08-17 01:45:12'),
(782, 33, 105, '2020-08-17 01:45:26', '2020-08-17 01:45:26'),
(783, 27, 105, '2020-08-17 01:45:26', '2020-08-17 01:45:26'),
(784, 14, 105, '2020-08-17 01:45:26', '2020-08-17 01:45:26'),
(785, 33, 104, '2020-08-17 01:45:42', '2020-08-17 01:45:42'),
(786, 31, 104, '2020-08-17 01:45:42', '2020-08-17 01:45:42'),
(787, 29, 104, '2020-08-17 01:45:42', '2020-08-17 01:45:42'),
(788, 37, 87, '2020-08-17 01:46:01', '2020-08-17 01:46:01'),
(789, 31, 87, '2020-08-17 01:46:02', '2020-08-17 01:46:02'),
(790, 30, 87, '2020-08-17 01:46:02', '2020-08-17 01:46:02'),
(791, 28, 88, '2020-08-17 01:46:19', '2020-08-17 01:46:19'),
(792, 15, 88, '2020-08-17 01:46:19', '2020-08-17 01:46:19'),
(793, 12, 88, '2020-08-17 01:46:19', '2020-08-17 01:46:19'),
(794, 34, 96, '2020-08-17 01:46:40', '2020-08-17 01:46:40'),
(795, 30, 96, '2020-08-17 01:46:40', '2020-08-17 01:46:40'),
(796, 14, 96, '2020-08-17 01:46:40', '2020-08-17 01:46:40'),
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
(815, 28, 74, '2020-08-17 01:48:39', '2020-08-17 01:48:39'),
(816, 15, 74, '2020-08-17 01:48:39', '2020-08-17 01:48:39'),
(817, 12, 74, '2020-08-17 01:48:39', '2020-08-17 01:48:39'),
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
(854, 28, 70, '2020-08-17 01:52:38', '2020-08-17 01:52:38'),
(855, 12, 70, '2020-08-17 01:52:38', '2020-08-17 01:52:38'),
(856, 28, 72, '2020-08-17 01:52:53', '2020-08-17 01:52:53'),
(857, 15, 72, '2020-08-17 01:52:53', '2020-08-17 01:52:53'),
(858, 12, 72, '2020-08-17 01:52:53', '2020-08-17 01:52:53'),
(859, 28, 73, '2020-08-17 01:53:12', '2020-08-17 01:53:12'),
(860, 15, 73, '2020-08-17 01:53:12', '2020-08-17 01:53:12'),
(861, 12, 73, '2020-08-17 01:53:12', '2020-08-17 01:53:12'),
(862, 32, 71, '2020-08-17 01:53:30', '2020-08-17 01:53:30'),
(863, 28, 71, '2020-08-17 01:53:30', '2020-08-17 01:53:30'),
(864, 15, 71, '2020-08-17 01:53:30', '2020-08-17 01:53:30'),
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
(877, 33, 56, '2020-08-17 01:55:38', '2020-08-17 01:55:38'),
(878, 24, 56, '2020-08-17 01:55:38', '2020-08-17 01:55:38'),
(879, 13, 56, '2020-08-17 01:55:38', '2020-08-17 01:55:38'),
(880, 28, 55, '2020-08-17 01:55:56', '2020-08-17 01:55:56'),
(881, 26, 55, '2020-08-17 01:55:56', '2020-08-17 01:55:56'),
(882, 13, 55, '2020-08-17 01:55:56', '2020-08-17 01:55:56'),
(883, 33, 54, '2020-08-17 01:56:11', '2020-08-17 01:56:11'),
(884, 28, 54, '2020-08-17 01:56:11', '2020-08-17 01:56:11'),
(885, 13, 54, '2020-08-17 01:56:11', '2020-08-17 01:56:11'),
(886, 33, 44, '2020-08-17 01:56:27', '2020-08-17 01:56:27'),
(887, 24, 44, '2020-08-17 01:56:27', '2020-08-17 01:56:27'),
(888, 15, 44, '2020-08-17 01:56:27', '2020-08-17 01:56:27'),
(889, 30, 45, '2020-08-17 01:56:44', '2020-08-17 01:56:44'),
(890, 29, 45, '2020-08-17 01:56:44', '2020-08-17 01:56:44'),
(891, 26, 45, '2020-08-17 01:56:44', '2020-08-17 01:56:44'),
(892, 34, 46, '2020-08-17 01:56:59', '2020-08-17 01:56:59'),
(893, 26, 46, '2020-08-17 01:56:59', '2020-08-17 01:56:59'),
(894, 19, 46, '2020-08-17 01:56:59', '2020-08-17 01:56:59'),
(895, 33, 47, '2020-08-17 01:57:14', '2020-08-17 01:57:14'),
(896, 29, 47, '2020-08-17 01:57:14', '2020-08-17 01:57:14'),
(897, 26, 47, '2020-08-17 01:57:14', '2020-08-17 01:57:14'),
(898, 34, 48, '2020-08-17 01:57:29', '2020-08-17 01:57:29'),
(899, 31, 48, '2020-08-17 01:57:29', '2020-08-17 01:57:29'),
(900, 19, 48, '2020-08-17 01:57:29', '2020-08-17 01:57:29'),
(901, 31, 49, '2020-08-17 01:57:45', '2020-08-17 01:57:45'),
(902, 28, 49, '2020-08-17 01:57:45', '2020-08-17 01:57:45'),
(903, 14, 49, '2020-08-17 01:57:45', '2020-08-17 01:57:45'),
(904, 33, 50, '2020-08-17 01:58:00', '2020-08-17 01:58:00'),
(905, 26, 50, '2020-08-17 01:58:00', '2020-08-17 01:58:00'),
(906, 13, 50, '2020-08-17 01:58:00', '2020-08-17 01:58:00'),
(907, 28, 51, '2020-08-17 01:58:16', '2020-08-17 01:58:16'),
(908, 26, 51, '2020-08-17 01:58:16', '2020-08-17 01:58:16'),
(909, 13, 51, '2020-08-17 01:58:17', '2020-08-17 01:58:17'),
(910, 33, 52, '2020-08-17 01:58:34', '2020-08-17 01:58:34'),
(911, 28, 52, '2020-08-17 01:58:34', '2020-08-17 01:58:34'),
(912, 13, 52, '2020-08-17 01:58:34', '2020-08-17 01:58:34'),
(913, 31, 53, '2020-08-17 01:58:52', '2020-08-17 01:58:52'),
(914, 29, 53, '2020-08-17 01:58:52', '2020-08-17 01:58:52'),
(915, 26, 53, '2020-08-17 01:58:53', '2020-08-17 01:58:53'),
(916, 31, 34, '2020-08-17 01:59:17', '2020-08-17 01:59:17'),
(917, 20, 34, '2020-08-17 01:59:17', '2020-08-17 01:59:17'),
(918, 19, 34, '2020-08-17 01:59:17', '2020-08-17 01:59:17'),
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
(934, 28, 31, '2020-08-17 02:01:08', '2020-08-17 02:01:08'),
(935, 24, 31, '2020-08-17 02:01:08', '2020-08-17 02:01:08'),
(936, 19, 31, '2020-08-17 02:01:08', '2020-08-17 02:01:08'),
(937, 28, 32, '2020-08-17 02:01:46', '2020-08-17 02:01:46'),
(938, 24, 32, '2020-08-17 02:01:46', '2020-08-17 02:01:46'),
(939, 20, 32, '2020-08-17 02:01:46', '2020-08-17 02:01:46'),
(940, 31, 33, '2020-08-17 02:02:12', '2020-08-17 02:02:12'),
(941, 28, 33, '2020-08-17 02:02:12', '2020-08-17 02:02:12'),
(942, 3, 33, '2020-08-17 02:02:12', '2020-08-17 02:02:12'),
(943, 31, 15, '2020-08-17 02:02:30', '2020-08-17 02:02:30'),
(944, 28, 15, '2020-08-17 02:02:30', '2020-08-17 02:02:30'),
(945, 12, 15, '2020-08-17 02:02:30', '2020-08-17 02:02:30'),
(946, 28, 1, '2020-08-17 02:02:44', '2020-08-17 02:02:44'),
(947, 15, 1, '2020-08-17 02:02:45', '2020-08-17 02:02:45'),
(948, 12, 1, '2020-08-17 02:02:45', '2020-08-17 02:02:45'),
(949, 28, 5, '2020-08-17 02:02:59', '2020-08-17 02:02:59'),
(950, 14, 5, '2020-08-17 02:02:59', '2020-08-17 02:02:59'),
(951, 12, 5, '2020-08-17 02:02:59', '2020-08-17 02:02:59'),
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
(1000, 40, 124, '2020-09-10 01:05:30', '2020-09-10 01:05:30');

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
  `supplier_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_q_rcodes`
--

INSERT INTO `product_q_rcodes` (`id`, `category_id`, `sub_category_id`, `product_id`, `code`, `supplier_code`, `created_at`, `updated_at`) VALUES
(2, 4, 23, 109, '0JgygW', 'RAH-002', '2020-09-07 12:18:41', '2020-09-07 12:18:41'),
(3, 4, 23, 109, 'nzu2gv', 'MIT-005', '2020-09-07 12:44:23', '2020-09-07 12:44:23');

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
(369, 14, 102, '2020-06-24 23:36:02', '2020-06-24 23:36:02'),
(370, 13, 102, '2020-06-24 23:36:02', '2020-06-24 23:36:02'),
(371, 12, 102, '2020-06-24 23:36:02', '2020-06-24 23:36:02'),
(372, 14, 101, '2020-06-24 23:36:25', '2020-06-24 23:36:25'),
(373, 13, 101, '2020-06-24 23:36:25', '2020-06-24 23:36:25'),
(374, 12, 101, '2020-06-24 23:36:25', '2020-06-24 23:36:25'),
(375, 14, 100, '2020-06-24 23:36:47', '2020-06-24 23:36:47'),
(376, 13, 100, '2020-06-24 23:36:47', '2020-06-24 23:36:47'),
(377, 12, 100, '2020-06-24 23:36:47', '2020-06-24 23:36:47'),
(381, 5, 98, '2020-06-24 23:38:16', '2020-06-24 23:38:16'),
(382, 2, 98, '2020-06-24 23:38:16', '2020-06-24 23:38:16'),
(383, 5, 97, '2020-06-24 23:38:40', '2020-06-24 23:38:40'),
(384, 2, 97, '2020-06-24 23:38:40', '2020-06-24 23:38:40'),
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
(573, 4, 24, '2020-06-25 00:25:11', '2020-06-25 00:25:11'),
(574, 2, 24, '2020-06-25 00:25:11', '2020-06-25 00:25:11'),
(575, 1, 24, '2020-06-25 00:25:11', '2020-06-25 00:25:11'),
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
(649, 24, 115, '2020-08-17 01:41:24', '2020-08-17 01:41:24'),
(650, 5, 115, '2020-08-17 01:41:24', '2020-08-17 01:41:24'),
(651, 24, 114, '2020-08-17 01:41:38', '2020-08-17 01:41:38'),
(652, 5, 114, '2020-08-17 01:41:38', '2020-08-17 01:41:38'),
(653, 24, 112, '2020-08-17 01:41:52', '2020-08-17 01:41:52'),
(654, 5, 112, '2020-08-17 01:41:52', '2020-08-17 01:41:52'),
(655, 24, 111, '2020-08-17 01:42:08', '2020-08-17 01:42:08'),
(656, 5, 111, '2020-08-17 01:42:08', '2020-08-17 01:42:08'),
(657, 24, 110, '2020-08-17 01:42:22', '2020-08-17 01:42:22'),
(658, 5, 110, '2020-08-17 01:42:22', '2020-08-17 01:42:22'),
(659, 24, 109, '2020-08-17 01:42:34', '2020-08-17 01:42:34'),
(660, 5, 109, '2020-08-17 01:42:34', '2020-08-17 01:42:34'),
(661, 24, 108, '2020-08-17 01:42:47', '2020-08-17 01:42:47'),
(662, 5, 108, '2020-08-17 01:42:47', '2020-08-17 01:42:47'),
(663, 24, 107, '2020-08-17 01:43:01', '2020-08-17 01:43:01'),
(664, 5, 107, '2020-08-17 01:43:01', '2020-08-17 01:43:01'),
(665, 24, 106, '2020-08-17 01:44:32', '2020-08-17 01:44:32'),
(666, 5, 106, '2020-08-17 01:44:32', '2020-08-17 01:44:32'),
(667, 14, 99, '2020-08-17 01:44:50', '2020-08-17 01:44:50'),
(668, 13, 99, '2020-08-17 01:44:50', '2020-08-17 01:44:50'),
(669, 12, 99, '2020-08-17 01:44:50', '2020-08-17 01:44:50'),
(670, 14, 103, '2020-08-17 01:45:12', '2020-08-17 01:45:12'),
(671, 13, 103, '2020-08-17 01:45:12', '2020-08-17 01:45:12'),
(672, 12, 103, '2020-08-17 01:45:12', '2020-08-17 01:45:12'),
(673, 24, 105, '2020-08-17 01:45:26', '2020-08-17 01:45:26'),
(674, 8, 105, '2020-08-17 01:45:27', '2020-08-17 01:45:27'),
(675, 5, 105, '2020-08-17 01:45:27', '2020-08-17 01:45:27'),
(676, 14, 104, '2020-08-17 01:45:42', '2020-08-17 01:45:42'),
(677, 13, 104, '2020-08-17 01:45:42', '2020-08-17 01:45:42'),
(678, 12, 104, '2020-08-17 01:45:42', '2020-08-17 01:45:42'),
(679, 24, 87, '2020-08-17 01:46:02', '2020-08-17 01:46:02'),
(680, 5, 87, '2020-08-17 01:46:02', '2020-08-17 01:46:02'),
(681, 24, 88, '2020-08-17 01:46:19', '2020-08-17 01:46:19'),
(682, 5, 88, '2020-08-17 01:46:19', '2020-08-17 01:46:19'),
(683, 5, 96, '2020-08-17 01:46:40', '2020-08-17 01:46:40'),
(684, 2, 96, '2020-08-17 01:46:40', '2020-08-17 01:46:40'),
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
(696, 24, 74, '2020-08-17 01:48:39', '2020-08-17 01:48:39'),
(697, 5, 74, '2020-08-17 01:48:39', '2020-08-17 01:48:39'),
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
(731, 24, 70, '2020-08-17 01:52:38', '2020-08-17 01:52:38'),
(732, 5, 70, '2020-08-17 01:52:38', '2020-08-17 01:52:38'),
(733, 24, 72, '2020-08-17 01:52:53', '2020-08-17 01:52:53'),
(734, 5, 72, '2020-08-17 01:52:53', '2020-08-17 01:52:53'),
(735, 24, 73, '2020-08-17 01:53:13', '2020-08-17 01:53:13'),
(736, 5, 73, '2020-08-17 01:53:13', '2020-08-17 01:53:13'),
(737, 24, 71, '2020-08-17 01:53:31', '2020-08-17 01:53:31'),
(738, 5, 71, '2020-08-17 01:53:31', '2020-08-17 01:53:31'),
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
(751, 5, 56, '2020-08-17 01:55:38', '2020-08-17 01:55:38'),
(752, 4, 56, '2020-08-17 01:55:38', '2020-08-17 01:55:38'),
(753, 1, 56, '2020-08-17 01:55:38', '2020-08-17 01:55:38'),
(754, 7, 55, '2020-08-17 01:55:56', '2020-08-17 01:55:56'),
(755, 5, 55, '2020-08-17 01:55:56', '2020-08-17 01:55:56'),
(756, 1, 55, '2020-08-17 01:55:56', '2020-08-17 01:55:56'),
(757, 5, 54, '2020-08-17 01:56:11', '2020-08-17 01:56:11'),
(758, 4, 54, '2020-08-17 01:56:11', '2020-08-17 01:56:11'),
(759, 1, 54, '2020-08-17 01:56:11', '2020-08-17 01:56:11'),
(760, 4, 44, '2020-08-17 01:56:28', '2020-08-17 01:56:28'),
(761, 2, 44, '2020-08-17 01:56:28', '2020-08-17 01:56:28'),
(762, 1, 44, '2020-08-17 01:56:28', '2020-08-17 01:56:28'),
(763, 4, 45, '2020-08-17 01:56:44', '2020-08-17 01:56:44'),
(764, 2, 45, '2020-08-17 01:56:44', '2020-08-17 01:56:44'),
(765, 1, 45, '2020-08-17 01:56:44', '2020-08-17 01:56:44'),
(766, 4, 46, '2020-08-17 01:56:59', '2020-08-17 01:56:59'),
(767, 2, 46, '2020-08-17 01:56:59', '2020-08-17 01:56:59'),
(768, 1, 46, '2020-08-17 01:56:59', '2020-08-17 01:56:59'),
(769, 4, 47, '2020-08-17 01:57:14', '2020-08-17 01:57:14'),
(770, 2, 47, '2020-08-17 01:57:15', '2020-08-17 01:57:15'),
(771, 1, 47, '2020-08-17 01:57:15', '2020-08-17 01:57:15'),
(772, 4, 48, '2020-08-17 01:57:30', '2020-08-17 01:57:30'),
(773, 2, 48, '2020-08-17 01:57:30', '2020-08-17 01:57:30'),
(774, 1, 48, '2020-08-17 01:57:30', '2020-08-17 01:57:30'),
(775, 4, 49, '2020-08-17 01:57:45', '2020-08-17 01:57:45'),
(776, 2, 49, '2020-08-17 01:57:45', '2020-08-17 01:57:45'),
(777, 1, 49, '2020-08-17 01:57:45', '2020-08-17 01:57:45'),
(778, 5, 50, '2020-08-17 01:58:01', '2020-08-17 01:58:01'),
(779, 4, 50, '2020-08-17 01:58:01', '2020-08-17 01:58:01'),
(780, 1, 50, '2020-08-17 01:58:01', '2020-08-17 01:58:01'),
(781, 4, 51, '2020-08-17 01:58:17', '2020-08-17 01:58:17'),
(782, 2, 51, '2020-08-17 01:58:17', '2020-08-17 01:58:17'),
(783, 1, 51, '2020-08-17 01:58:17', '2020-08-17 01:58:17'),
(784, 7, 52, '2020-08-17 01:58:35', '2020-08-17 01:58:35'),
(785, 5, 52, '2020-08-17 01:58:35', '2020-08-17 01:58:35'),
(786, 1, 52, '2020-08-17 01:58:35', '2020-08-17 01:58:35'),
(787, 8, 53, '2020-08-17 01:58:53', '2020-08-17 01:58:53'),
(788, 7, 53, '2020-08-17 01:58:53', '2020-08-17 01:58:53'),
(789, 5, 53, '2020-08-17 01:58:53', '2020-08-17 01:58:53'),
(790, 4, 34, '2020-08-17 01:59:17', '2020-08-17 01:59:17'),
(791, 2, 34, '2020-08-17 01:59:17', '2020-08-17 01:59:17'),
(792, 1, 34, '2020-08-17 01:59:17', '2020-08-17 01:59:17'),
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
(808, 4, 31, '2020-08-17 02:01:08', '2020-08-17 02:01:08'),
(809, 2, 31, '2020-08-17 02:01:08', '2020-08-17 02:01:08'),
(810, 1, 31, '2020-08-17 02:01:08', '2020-08-17 02:01:08'),
(811, 4, 32, '2020-08-17 02:01:46', '2020-08-17 02:01:46'),
(812, 2, 32, '2020-08-17 02:01:47', '2020-08-17 02:01:47'),
(813, 1, 32, '2020-08-17 02:01:47', '2020-08-17 02:01:47'),
(814, 4, 33, '2020-08-17 02:02:12', '2020-08-17 02:02:12'),
(815, 2, 33, '2020-08-17 02:02:12', '2020-08-17 02:02:12'),
(816, 1, 33, '2020-08-17 02:02:12', '2020-08-17 02:02:12'),
(817, 5, 15, '2020-08-17 02:02:30', '2020-08-17 02:02:30'),
(818, 2, 15, '2020-08-17 02:02:30', '2020-08-17 02:02:30'),
(819, 24, 1, '2020-08-17 02:02:45', '2020-08-17 02:02:45'),
(820, 5, 1, '2020-08-17 02:02:45', '2020-08-17 02:02:45'),
(821, 24, 5, '2020-08-17 02:02:59', '2020-08-17 02:02:59'),
(822, 7, 5, '2020-08-17 02:02:59', '2020-08-17 02:02:59'),
(823, 5, 5, '2020-08-17 02:02:59', '2020-08-17 02:02:59'),
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
(862, 22, 124, '2020-09-10 01:05:31', '2020-09-10 01:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ship_district_id` int(11) DEFAULT NULL,
  `ship_name` varchar(191) NOT NULL,
  `ship_email` varchar(191) NOT NULL,
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
(1, 3, 2, 'Kamrul Hasan', 'kh@gmail.com', '01556557778', NULL, 'Sadar', 'Barisal', '2020-09-02 08:24:14', '2020-09-02 08:24:14'),
(2, 4, 9, 'Mainul Ahasan', 'ma@gmail.com', '01617890900', NULL, 'Sadar', 'Chandpur', '2020-09-03 01:32:40', '2020-09-03 01:32:40');

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
(1, 'kjhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-06 14:55:36', '2020-09-06 14:58:48');

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
(24, 'Family Size', 'Family Size Description', 1, '2020-06-18 23:18:13', '2020-06-18 23:18:13');

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
(1, 5, 'Excellent Kids Winter Collection', 'Kids Winter Collection Slider Description', './admin/slider_images/1592196535.jpg', 1, '2020-06-14 21:36:35', '2020-06-14 22:48:56'),
(2, 3, 'New Collection', 'Computer Accessories Slider Description', './admin/slider_images/1592196682.jpg', 1, '2020-06-14 21:37:15', '2020-06-14 22:51:22'),
(3, 4, 'New Exclusive Household Collection', 'New Exclusive Household Collection', './admin/slider_images/1592196891.jpg', 1, '2020-06-14 21:46:22', '2020-06-14 22:54:52'),
(4, 8, 'Hot Mobile & Accesories', 'Hot Mobile & Accesories  Description', './admin/slider_images/1592197082.jpg', 1, '2020-06-14 22:58:02', '2020-06-14 22:58:02'),
(5, 9, 'Women Fashion Hot Collection', 'Women Fashion Hot Collection', './admin/slider_images/1592197796.jpg', 1, '2020-06-14 23:00:17', '2020-06-14 23:09:57'),
(6, 10, 'Hot Exclusive Men\'s Fashion Collection', 'Hot Exclusive Men\'s Fashion Collection', './admin/slider_images/1592197778.jpg', 1, '2020-06-14 23:02:10', '2020-06-27 05:12:15'),
(7, 11, 'New Exclusive Collection', 'New Exclusive Collection', './admin/slider_images/1592197418.jpg', 1, '2020-06-14 23:03:38', '2020-06-27 05:11:36');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `sub_category_name`, `sub_category_description`, `sub_category_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tea Cup', 'Tea Cup Description', './admin/sub_category_images/2020-06-13_tea_cup.jpg', 1, '2020-06-12 22:55:22', '2020-06-12 22:55:22'),
(2, 1, 'Mug', 'Mug Description', './admin/sub_category_images/2020-06-13_mug.jpg', 1, '2020-06-12 23:02:37', '2020-06-13 11:29:47'),
(3, 1, 'Jug', 'Jug Description', './admin/sub_category_images/2020-06-13_jug.jpg', 0, '2020-06-12 23:03:10', '2020-06-13 11:32:57'),
(4, 1, 'Vegitable Chopper', 'Vegitable Chopper Description', './admin/sub_category_images/2020-06-13_vegitable_chopper.jpg', 1, '2020-06-12 23:04:20', '2020-06-12 23:04:20'),
(5, 1, 'Rice Cooker', 'Rice Cooker Description', './admin/sub_category_images/2020-06-13_rice_cooker.jpg', 1, '2020-06-12 23:04:51', '2020-06-12 23:04:51'),
(6, 1, 'Pressure Cooker', 'Pressure Cooker Description', './admin/sub_category_images/2020-06-13_pressure_cooker.jpeg', 1, '2020-06-12 23:05:17', '2020-06-12 23:05:17'),
(7, 1, 'Gas Stove', 'Gas Stove Description', './admin/sub_category_images/2020-06-13_gas_stove.jpeg', 1, '2020-06-12 23:05:43', '2020-06-12 23:05:43'),
(8, 1, 'Blender', 'Blender Description', './admin/sub_category_images/2020-06-13_blender.jpg', 1, '2020-06-12 23:06:13', '2020-06-12 23:38:33'),
(9, 1, 'Oven', 'Oven Description', './admin/sub_category_images/2020-06-13_oven.jpeg', 1, '2020-06-12 23:06:39', '2020-06-13 08:46:04'),
(11, 3, 'Hp Laptop', 'Hp Laptop Description', './admin/sub_category_images/2020-06-13_hp_laptop.jpg', 1, '2020-06-13 09:07:19', '2020-06-13 09:07:19'),
(12, 3, 'Dell Laptop', 'Dell Laptop Description', './admin/sub_category_images/2020-06-13_dell_laptop.jpeg', 1, '2020-06-13 09:08:03', '2020-06-13 09:08:03'),
(13, 3, 'Acer Laptop', 'Acer Laptop Description', './admin/sub_category_images/2020-06-13_acer_laptop.jpg', 1, '2020-06-13 09:08:42', '2020-06-13 09:08:42'),
(14, 3, 'Lenovo Laptop', 'Lenovo Laptop Description', './admin/sub_category_images/2020-06-13_lenovo_laptop.jpg', 1, '2020-06-13 09:09:19', '2020-06-13 09:09:19'),
(15, 3, 'Printer', 'Printer Description', './admin/sub_category_images/2020-06-13_printer.jpg', 1, '2020-06-13 09:10:01', '2020-06-13 09:10:01'),
(16, 3, 'Mouse', 'Mouse Description', './admin/sub_category_images/2020-06-13_mouse.jpg', 1, '2020-06-13 09:10:29', '2020-06-13 09:10:29'),
(17, 3, 'Pen Drive', 'Pen Drive Description', './admin/sub_category_images/2020-06-13_pen_drive.jpg', 1, '2020-06-13 09:10:55', '2020-06-13 09:10:55'),
(18, 3, 'Head Phone', 'Head Phone Description', './admin/sub_category_images/2020-06-13_head_phone.jpg', 1, '2020-06-13 09:11:20', '2020-06-13 09:11:20'),
(19, 3, 'Speaker', 'Speaker Description', './admin/sub_category_images/2020-06-13_speaker.jpg', 1, '2020-06-13 09:11:48', '2020-06-13 09:11:48'),
(20, 4, 'Window Screen', 'Window Screen Description', './admin/sub_category_images/2020-06-13_window_screen.jpg', 1, '2020-06-13 10:44:28', '2020-06-13 10:44:28'),
(21, 4, 'Bed Sheet', 'Bed Sheet Description', './admin/sub_category_images/2020-06-13_bed_sheet.jpg', 1, '2020-06-13 10:45:12', '2020-06-13 10:45:12'),
(22, 4, 'Dinning Table', 'Dinning Table Description', './admin/sub_category_images/2020-06-13_dinning_table.jpeg', 1, '2020-06-13 10:46:06', '2020-06-13 10:46:06'),
(23, 4, 'Wardrobe', 'Wardrobe Description', './admin/sub_category_images/2020-06-13_wardrobe.jpg', 1, '2020-06-13 10:46:40', '2020-06-13 10:46:40'),
(24, 4, 'Flower Vase', 'Flower Vase Description', './admin/sub_category_images/2020-06-13_flower_vase.jpg', 1, '2020-06-13 10:47:17', '2020-06-13 10:47:17'),
(25, 4, 'Tv Self', 'Tv Self Description', './admin/sub_category_images/2020-06-13_tv_self.jpg', 1, '2020-06-13 10:47:51', '2020-06-13 10:47:51'),
(26, 5, 'Kids Cloth', 'Kids Cloth', './admin/sub_category_images/2020-06-13_kids_cloth.jpg', 1, '2020-06-13 10:50:25', '2020-06-13 10:50:25'),
(27, 5, 'Kids Shoe', 'Shoe Description', './admin/sub_category_images/2020-06-13_shoe.jpg', 1, '2020-06-13 10:50:55', '2020-06-22 01:01:31'),
(28, 5, 'Umbrella', 'Umbrella Description', './admin/sub_category_images/2020-06-13_umbrella.jpg', 1, '2020-06-13 10:51:23', '2020-06-14 05:58:28'),
(29, 5, 'Kids Bag', 'Bag Description', './admin/sub_category_images/2020-06-13_bag.jpg', 1, '2020-06-13 10:52:06', '2020-06-22 01:00:54'),
(30, 5, 'Cycle', 'Cycle Description', './admin/sub_category_images/2020-06-13_cycle.jpg', 1, '2020-06-13 10:52:34', '2020-06-13 10:52:34'),
(31, 5, 'Bike', 'Bike Description', './admin/sub_category_images/2020-06-13_bike.jpg', 1, '2020-06-13 10:53:09', '2020-06-13 10:53:09'),
(32, 7, 'Shampoo', 'Shampoo Description', './admin/sub_category_images/2020-06-13_shampoo.jpg', 1, '2020-06-13 11:04:42', '2020-06-13 11:04:42'),
(33, 7, 'Makeup Box', 'Makeup Box Description', './admin/sub_category_images/2020-06-13_makeup_box.jpg', 1, '2020-06-13 11:05:35', '2020-06-13 11:05:35'),
(34, 7, 'Nail Polish', 'Nail Polish Description', './admin/sub_category_images/2020-06-13_nail_polish.png', 1, '2020-06-13 11:06:19', '2020-06-13 11:06:19'),
(35, 7, 'Necklace', 'Necklace Description', './admin/sub_category_images/2020-06-13_necklace.jpg', 1, '2020-06-13 11:07:16', '2020-06-13 11:07:16'),
(36, 7, 'Bracelet', 'Bracelet Description', './admin/sub_category_images/2020-06-13_bracelet.jpg', 1, '2020-06-13 11:07:59', '2020-06-13 11:07:59'),
(37, 7, 'Payel', 'Payel Description', './admin/sub_category_images/2020-06-13_payel.jpg', 1, '2020-06-13 11:08:42', '2020-06-13 11:08:42'),
(38, 8, 'Battery', 'Mobile Battery Description', './admin/sub_category_images/2020-06-14_battery.png', 1, '2020-06-14 06:18:05', '2020-06-14 06:18:05'),
(39, 8, 'Charger', 'Mobile Charger Description', './admin/sub_category_images/2020-06-14_charger.jpeg', 1, '2020-06-14 06:19:46', '2020-06-14 06:19:46'),
(40, 8, 'Cover', 'Mobile Cover Description', './admin/sub_category_images/2020-06-14_cover.jpg', 1, '2020-06-14 06:20:28', '2020-06-14 06:20:28'),
(41, 8, 'Head Phone', 'Mobile Head Phone Description', './admin/sub_category_images/2020-06-14_head_phone.jpg', 1, '2020-06-14 06:21:00', '2020-06-14 06:21:00'),
(42, 8, 'Oppo', 'Oppo Mobile Description', './admin/sub_category_images/2020-06-14_oppo.jpg', 1, '2020-06-14 06:22:07', '2020-06-14 06:22:07'),
(43, 8, 'Samsung', 'Samsung Mobile Description', './admin/sub_category_images/2020-06-14_samsung.jpg', 1, '2020-06-14 06:22:39', '2020-06-14 06:22:39'),
(44, 8, 'Huwaei', 'Huwaei Mobile Description', './admin/sub_category_images/2020-06-14_huwaei.jpg', 1, '2020-06-14 06:23:36', '2020-06-14 06:23:36'),
(45, 8, 'Apple', 'Appel Mobile Description', './admin/sub_category_images/2020-06-14_appel.jpg', 1, '2020-06-14 06:24:09', '2020-06-21 23:31:36'),
(46, 9, 'Shoe', 'Women Shoe  Description', './admin/sub_category_images/1593184517.jpg', 1, '2020-06-14 06:26:22', '2020-06-26 09:15:19'),
(47, 9, 'Bag', 'Women Bag Description', './admin/sub_category_images/2020-06-14_bag.jpg', 1, '2020-06-14 06:27:18', '2020-06-14 06:27:18'),
(48, 9, 'Lehenga', 'Women Lehenga  Description', './admin/sub_category_images/2020-06-14_lehenga.jpg', 1, '2020-06-14 06:29:45', '2020-06-14 06:29:45'),
(49, 9, 'Women Watch', 'Women Watch Description', './admin/sub_category_images/1592725621.jpg', 1, '2020-06-14 06:30:57', '2020-06-21 01:47:01'),
(50, 9, 'Kurti', 'Women Kurti Description', './admin/sub_category_images/2020-06-14_kurti.jpg', 1, '2020-06-14 06:32:16', '2020-06-14 06:32:16'),
(51, 9, 'Salwar Kameez', 'Women Salwar Kameez Description', './admin/sub_category_images/2020-06-14_salwar_kameez.jpg', 1, '2020-06-14 06:33:41', '2020-06-14 06:33:41'),
(52, 9, 'Sharee', 'Women Sharee Description', './admin/sub_category_images/2020-06-14_sharee.jpg', 1, '2020-06-14 06:36:00', '2020-06-14 06:36:00'),
(53, 9, 'Three piece', 'Women Three Piece', './admin/sub_category_images/2020-06-14_three_piece.jpg', 1, '2020-06-14 06:40:24', '2020-06-14 06:40:24'),
(54, 10, 'Watch', 'Mens Wrist Watch', './admin/sub_category_images/2020-06-14_watch.jpg', 1, '2020-06-14 06:41:17', '2020-06-14 06:41:48'),
(55, 10, 'Belt', 'Mens Belt Description', './admin/sub_category_images/2020-06-14_belt.jpeg', 1, '2020-06-14 06:42:20', '2020-06-14 06:42:20'),
(56, 10, 'Wallet', 'Mens Wallet  Description', './admin/sub_category_images/2020-06-14_wallet.jpg', 1, '2020-06-14 06:42:59', '2020-06-14 06:42:59'),
(57, 10, 'Kades', 'Mens Kades Description', './admin/sub_category_images/2020-06-14_kades.jpg', 1, '2020-06-14 06:43:48', '2020-06-14 06:43:48'),
(58, 10, 'Shoe', 'Mens Shoe Description', './admin/sub_category_images/2020-06-14_shoe.jpg', 1, '2020-06-14 06:44:17', '2020-06-14 06:44:17'),
(59, 10, 'Pants', 'Mens Jens Pants Description', './admin/sub_category_images/2020-06-14_pants.jpg', 1, '2020-06-14 06:45:13', '2020-06-14 06:45:13'),
(60, 10, 'Blazer', 'Mens Blazer Description', './admin/sub_category_images/2020-06-14_blazer.jpg', 1, '2020-06-14 06:46:02', '2020-06-14 06:46:02'),
(61, 10, 'T-shirt', 'Mens T-shirt  Description', './admin/sub_category_images/2020-06-14_t-shirt.jpg', 1, '2020-06-14 06:46:49', '2020-06-14 06:46:49'),
(62, 10, 'Shirt', 'Mens Shirt Des Description', './admin/sub_category_images/2020-06-14_shirt.jpg', 1, '2020-06-14 06:49:39', '2020-06-14 06:49:39'),
(63, 11, 'Washing Machine', 'Washing Machine Description', './admin/sub_category_images/2020-06-14_washing_machine.jpg', 1, '2020-06-14 06:53:12', '2020-06-14 06:53:12'),
(64, 11, 'Fan', 'Fan  Description', './admin/sub_category_images/2020-06-14_fan.jpg', 1, '2020-06-14 06:54:05', '2020-06-14 06:54:05'),
(65, 11, 'Iron', 'Iron Description', './admin/sub_category_images/2020-06-14_iron.jpg', 1, '2020-06-14 06:54:37', '2020-06-14 06:54:37'),
(66, 11, 'Camera', 'Camera Description', './admin/sub_category_images/2020-06-14_camera.jpg', 1, '2020-06-14 06:55:05', '2020-06-14 06:55:05'),
(67, 11, 'Deep Freez', 'Deep Freez Description', './admin/sub_category_images/2020-06-14_freez.jpg', 1, '2020-06-14 06:55:36', '2020-06-14 06:56:09'),
(68, 11, 'Freez', 'Freez  Description', './admin/sub_category_images/2020-06-14_freez.jpg', 1, '2020-06-14 06:56:33', '2020-06-14 06:56:33'),
(69, 11, 'AC', 'Air Conditoner Descriptio', './admin/sub_category_images/2020-06-14_ac.jpg', 1, '2020-06-14 06:59:00', '2020-06-14 06:59:00'),
(70, 11, 'Watch', 'Watch Description', './admin/sub_category_images/1592740114.jpg', 1, '2020-06-14 06:59:54', '2020-06-21 06:08:23'),
(71, 11, 'TV', 'TV Description', './admin/sub_category_images/2020-06-14_tv.jpg', 1, '2020-06-14 07:02:05', '2020-06-14 07:02:05'),
(72, 10, 'Panjabi', 'Panjabi  Description', './admin/sub_category_images/1592452501.jpg', 1, '2020-06-17 21:55:01', '2020-06-17 21:55:01'),
(73, 10, 'Hoddie', 'Mens Fashion Hoddie Description', './admin/sub_category_images/1592671387.jpg', 1, '2020-06-20 10:43:09', '2020-06-20 10:43:09'),
(74, 10, 'Jaket', 'Mens Fashion Jaket Description', './admin/sub_category_images/1592671422.jpg', 1, '2020-06-20 10:43:42', '2020-06-20 10:43:42');

-- --------------------------------------------------------

--
-- Table structure for table `sub_images`
--

CREATE TABLE `sub_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `sub_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
(46, 15, './admin/sub_images/1592629797_198.png', '2020-06-19 23:09:57', '2020-06-19 23:09:57'),
(47, 15, './admin/sub_images/1592629797_199.png', '2020-06-19 23:09:57', '2020-06-19 23:09:57'),
(48, 15, './admin/sub_images/1592629797_201.png', '2020-06-19 23:09:58', '2020-06-19 23:09:58'),
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
(357, 117, './admin/sub_images/1597991885_3.jpg', '2020-08-21 00:38:05', '2020-08-21 00:38:05');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `code`, `email`, `phone`, `address`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Akram Khan', 'AKR-001', 'ak@gmail.com', '01731808079', 'Faridpur', './admin/supplier_images/1592318902.jpg', 1, '2020-06-16 08:48:22', '2020-06-16 08:48:22'),
(2, 'Rahim Khan', 'RAH-002', 'rk@gmail.com', '02-9989897', 'Dhaka', './admin/supplier_images/1592328367.png', 1, '2020-06-16 11:26:15', '2020-06-16 11:26:15'),
(4, 'Kader Molla', 'KAD-003', 'km@gmail.com', '01731808090', 'Farmgate', './admin/supplier_images/1592331656.png', 1, '2020-06-16 12:20:56', '2020-06-16 12:20:56'),
(5, 'Mithun Sarkar', 'MIT-005', 'ms@gmail.com', '01675556666', 'Dhaka', './admin/supplier_images/1592331711.png', 1, '2020-06-16 12:21:51', '2020-06-16 12:21:51'),
(6, 'Kamrul Hassan', 'KAM-006', 'kh@gmail.com', '01617888999', 'Chandpur', './admin/supplier_images/1592331773.png', 1, '2020-06-16 12:22:54', '2020-06-16 12:22:54');

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
(17, 'Bundle', 'Bundle Unit Description', 1, '2020-06-15 23:10:49', '2020-06-15 23:10:49');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `image`, `provider`, `provider_id`, `access_token`, `is_admin`, `is_executive`, `normal_user`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rezaul', 'rezaul@gmail.com', NULL, NULL, '$2y$10$pBWAx/HTt9NfQqg56xcUgeSE.ebw7fo/hODuqokYaF7q.5T5gRbBa', './admin/user_images/1598983135_png', NULL, NULL, NULL, 1, NULL, 0, NULL, '2020-09-01 11:58:55', '2020-09-01 11:58:55'),
(2, 'Mainul Islam', 'mi@gmail.com', '01819395497', NULL, '$2y$10$1ec3XLi9RvR00x8/7EQEnuhDZ1H6w4aHOedx2ORyZTHd5qT/e/iT6', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-09-01 12:11:26', '2020-09-01 12:11:26'),
(3, 'Kamrul Hasan', 'km@gmail.com', '01815395496', NULL, '$2y$10$R6fGVqrcE61z8QpfXrtB2Oar3vvFGIwmpUYtw0Y8LCJB53dEgLrP6', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-09-02 00:01:01', '2020-09-02 00:01:01');

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
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generate_qr_codes`
--
ALTER TABLE `generate_qr_codes`
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
-- Indexes for table `product_q_rcodes`
--
ALTER TABLE `product_q_rcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_images`
--
ALTER TABLE `contact_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `generate_qr_codes`
--
ALTER TABLE `generate_qr_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `product_q_rcodes`
--
ALTER TABLE `product_q_rcodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=863;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `site_error_massages`
--
ALTER TABLE `site_error_massages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `sub_images`
--
ALTER TABLE `sub_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
