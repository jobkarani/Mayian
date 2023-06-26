-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2023 at 03:23 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev_resort`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_image` int(11) DEFAULT NULL,
  `gallery_images` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` int(11) DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category_translations`
--

CREATE TABLE `blog_category_translations` (
  `id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

CREATE TABLE `blog_translations` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `cottage_id` int(11) NOT NULL,
  `check_in_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_out_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` double(20,2) NOT NULL DEFAULT 0.00,
  `user_id` int(11) DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_info` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `adults` int(11) DEFAULT NULL,
  `children` int(11) DEFAULT NULL,
  `staying_nights` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending' COMMENT 'pending,confirmed,cancelled',
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unpaid' COMMENT 'paid,unpaid',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cottages`
--

CREATE TABLE `cottages` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `price` double(20,2) NOT NULL DEFAULT 0.00,
  `timeline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num_of_rooms` int(11) DEFAULT NULL,
  `num_of_beds` int(11) DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery_images` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'youtube',
  `is_published` tinyint(1) NOT NULL DEFAULT 1,
  `is_best` tinyint(11) NOT NULL DEFAULT 0,
  `meta_title` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_image` int(20) DEFAULT NULL,
  `slug` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cottage_translations`
--

CREATE TABLE `cottage_translations` (
  `id` bigint(20) NOT NULL,
  `cottage_id` bigint(20) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timeline` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alignment` tinyint(11) NOT NULL DEFAULT 0,
  `exchange_rate` double(10,5) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `alignment`, `exchange_rate`, `status`, `code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'U.S. Dollar', '$', 0, 1.00000, 1, 'USD', '2022-12-30 15:27:53', '2022-12-30 15:39:43', NULL),
(2, 'TAKA', '/-', 1, 10.00000, 1, 'BDT', '2022-12-30 15:31:40', '2023-02-18 01:33:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_date` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fee` double(20,2) NOT NULL DEFAULT 0.00,
  `location` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery_images` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_translations`
--

CREATE TABLE `event_translations` (
  `id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `image` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `flag` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rtl` int(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `flag`, `code`, `rtl`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'English', 'en', 'en', 0, 1, '2019-01-20 06:13:20', '2019-01-20 06:13:20', NULL),
(8, 'Bangla', 'bd', 'bn', 0, 1, '2021-10-14 00:38:08', '2023-01-30 12:05:36', NULL),
(9, 'Hindi', 'in', 'hi', 0, 0, '2021-10-25 00:42:53', '2023-02-17 19:35:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(6, '2016_06_01_000004_create_oauth_clients_table', 3),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3),
(8, '2021_10_27_093231_create_permission_tables', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(10, 'App\\Models\\User', 73);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('191da092fb7d812ec1af8aa536df15de32c0c38121dec77033b27a8bdaa7e1a70b1e4916eb479021', 70, 1, 'Personal Access Token', '[]', 0, '2023-02-20 19:51:49', '2023-02-20 19:51:49', '2025-01-20 14:51:49'),
('28577289d25a699b404104fc543d44eaf1aff3ab7ce299e429af89bb1dca25edba4e4e6e207ab425', 70, 1, 'Personal Access Token', '[]', 0, '2023-02-20 06:12:41', '2023-02-20 06:12:41', '2025-01-20 01:12:41'),
('35999f2cb4116dd1244a7eb085f17cffb4820333b12f5f2cc9b6a91c82b7d9ae6084c4977fb870e9', 70, 1, 'Personal Access Token', '[]', 0, '2023-02-21 04:46:54', '2023-02-21 04:46:54', '2025-01-20 23:46:54'),
('6c942eef551d52062b4092ecaa9f12232bc5a0acc5642a9b56949bfd30457f17a22fe242572d89fb', 70, 1, 'Personal Access Token', '[]', 0, '2023-02-15 15:16:49', '2023-02-15 15:16:49', '2025-01-15 10:16:49'),
('b5f5b8897d84bd490f32b7acf3e9426fe4c36e901a87e90ab01fada7a41206beabcada75a91e554d', 70, 1, 'Personal Access Token', '[]', 0, '2023-02-18 06:00:34', '2023-02-18 06:00:34', '2025-01-18 01:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Yesort - PWA & SPA Resort Web Application with Booking Management Personal Access Client', '1rSUefjjvoG2Mtt9jSKYN8WERMKMNMYroGT015Y7', NULL, 'http://localhost', 1, 0, 0, '2023-02-14 22:05:07', '2023-02-14 22:05:07'),
(2, NULL, 'Yesort - PWA & SPA Resort Web Application with Booking Management Password Grant Client', 'LyHZmgnZzzsWdmpcpA8HmGCtSiEqpq7RLku8bUMB', 'users', 'http://localhost', 0, 1, 0, '2023-02-14 22:05:07', '2023-02-14 22:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-02-14 22:05:07', '2023-02-14 22:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_image` int(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `type`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `keywords`, `meta_image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'custom_page', 'About Us', 'about-us', '<p>Yesor Resort, eighteen kilometers from Dhaka Airport which is easily accessible by road and it takes only one hour and thirty minutes to reach, lies in a rural environment of Sukundi village of Gazipur on 54 bigha of land which is near to the heritage site “Bhawal Rajbari” and “Bhawal National Park”. Breathtaking views of surrounding lake water and wildlife in amazing natural beauty of land covered with dense green blanket of flora makes anyone feel like enjoying the country’s natural heritage.\r\n</p><p>In this peaceful and tranquil environment, you can have the glimpse of wildlife, firefly processions at night and according to the rules of the resort, during moonlight no light is lit in outside. It is one of the best holiday destination to enjoy the full moon and rain in the rainy season; also to breathe in the fresh air.\r\n</p><p>Eco-Friendly Boutique Resort\r\n</p><p>Eco-Resort: Chuti lodges facility that takes steps to reduce its carbon footprint while giving back to its local community. Some of the best ways that we practice to make our resort more eco -friendly and sustainable like maintain energy saving, limit water waste, have guests reuse linens, equip staff with eco-friendly cleaning staff, serve local and organic food, consider composting etc.\r\n</p><p>Boutique Resort: This 50 room’s unique boutique resort with a relaxing and quiet lawn of Chuti have relaxing atmosphere that would absolutely amaze the guests with its vibrant landscaping and modern amenities. From the very moment of arrival guest will feel embraced with nature.&\r\n</p><p>We Offer\r\n</p><p>Pleasant for couples and families.\r\n</p><p>Suitable for corporate meeting & workshop.\r\n</p><p>Cottages and suites to accommodate.\r\n</p><p>Modern restaurant serving delicious foods.\r\n</p><p>Authentic recreation in a village environment.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', NULL, NULL, NULL, NULL, '2023-02-10 13:34:41', '2023-02-10 14:41:16', NULL),
(2, 'custom_page', 'FAQ\'s', 'faq', '<p>Yesor Resort, eighteen kilometers from Dhaka Airport which is easily accessible by road and it takes only one hour and thirty minutes to reach, lies in a rural environment of Sukundi village of Gazipur on 54 bigha of land which is near to the heritage site “Bhawal Rajbari” and “Bhawal National Park”. Breathtaking views of surrounding lake water and wildlife in amazing natural beauty of land covered with dense green blanket of flora makes anyone feel like enjoying the country’s natural heritage.\r\n</p><p>In this peaceful and tranquil environment, you can have the glimpse of wildlife, firefly processions at night and according to the rules of the resort, during moonlight no light is lit in outside. It is one of the best holiday destination to enjoy the full moon and rain in the rainy season; also to breathe in the fresh air.\r\n</p><p>Eco-Friendly Boutique Resort\r\n</p><p>Eco-Resort: Chuti lodges facility that takes steps to reduce its carbon footprint while giving back to its local community. Some of the best ways that we practice to make our resort more eco -friendly and sustainable like maintain energy saving, limit water waste, have guests reuse linens, equip staff with eco-friendly cleaning staff, serve local and organic food, consider composting etc.\r\n</p><p>Boutique Resort: This 50 room’s unique boutique resort with a relaxing and quiet lawn of Chuti have relaxing atmosphere that would absolutely amaze the guests with its vibrant landscaping and modern amenities. From the very moment of arrival guest will feel embraced with nature.&amp;\r\n</p><p>We Offer\r\n</p><p>Pleasant for couples and families.\r\n</p><p>Suitable for corporate meeting &amp; workshop.\r\n</p><p>Cottages and suites to accommodate.\r\n</p><p>Modern restaurant serving delicious foods.\r\n</p><p>Authentic recreation in a village environment.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', NULL, NULL, NULL, NULL, '2023-02-10 13:37:10', '2023-02-10 13:37:10', NULL),
(3, 'custom_page', 'Terms Of Service', 'Terms-Of-Service', '<p>Yesor Resort, eighteen kilometers from Dhaka Airport which is easily accessible by road and it takes only one hour and thirty minutes to reach, lies in a rural environment of Sukundi village of Gazipur on 54 bigha of land which is near to the heritage site “Bhawal Rajbari” and “Bhawal National Park”. Breathtaking views of surrounding lake water and wildlife in amazing natural beauty of land covered with dense green blanket of flora makes anyone feel like enjoying the country’s natural heritage.\r\n</p><p>In this peaceful and tranquil environment, you can have the glimpse of wildlife, firefly processions at night and according to the rules of the resort, during moonlight no light is lit in outside. It is one of the best holiday destination to enjoy the full moon and rain in the rainy season; also to breathe in the fresh air.\r\n</p><p>Eco-Friendly Boutique Resort\r\n</p><p>Eco-Resort: Chuti lodges facility that takes steps to reduce its carbon footprint while giving back to its local community. Some of the best ways that we practice to make our resort more eco -friendly and sustainable like maintain energy saving, limit water waste, have guests reuse linens, equip staff with eco-friendly cleaning staff, serve local and organic food, consider composting etc.\r\n</p><p>Boutique Resort: This 50 room’s unique boutique resort with a relaxing and quiet lawn of Chuti have relaxing atmosphere that would absolutely amaze the guests with its vibrant landscaping and modern amenities. From the very moment of arrival guest will feel embraced with nature.&amp;\r\n</p><p>We Offer\r\n</p><p>Pleasant for couples and families.\r\n</p><p>Suitable for corporate meeting &amp; workshop.\r\n</p><p>Cottages and suites to accommodate.\r\n</p><p>Modern restaurant serving delicious foods.\r\n</p><p>Authentic recreation in a village environment.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', NULL, NULL, NULL, NULL, '2023-02-10 14:39:56', '2023-02-10 14:39:56', NULL),
(4, 'custom_page', 'Privacy policy', 'Privacy-policy', '<p>Yesor Resort, eighteen kilometers from Dhaka Airport which is easily accessible by road and it takes only one hour and thirty minutes to reach, lies in a rural environment of Sukundi village of Gazipur on 54 bigha of land which is near to the heritage site “Bhawal Rajbari” and “Bhawal National Park”. Breathtaking views of surrounding lake water and wildlife in amazing natural beauty of land covered with dense green blanket of flora makes anyone feel like enjoying the country’s natural heritage.\r\n</p><p>In this peaceful and tranquil environment, you can have the glimpse of wildlife, firefly processions at night and according to the rules of the resort, during moonlight no light is lit in outside. It is one of the best holiday destination to enjoy the full moon and rain in the rainy season; also to breathe in the fresh air.\r\n</p><p>Eco-Friendly Boutique Resort\r\n</p><p>Eco-Resort: Chuti lodges facility that takes steps to reduce its carbon footprint while giving back to its local community. Some of the best ways that we practice to make our resort more eco -friendly and sustainable like maintain energy saving, limit water waste, have guests reuse linens, equip staff with eco-friendly cleaning staff, serve local and organic food, consider composting etc.\r\n</p><p>Boutique Resort: This 50 room’s unique boutique resort with a relaxing and quiet lawn of Chuti have relaxing atmosphere that would absolutely amaze the guests with its vibrant landscaping and modern amenities. From the very moment of arrival guest will feel embraced with nature.&amp;\r\n</p><p>We Offer\r\n</p><p>Pleasant for couples and families.\r\n</p><p>Suitable for corporate meeting &amp; workshop.\r\n</p><p>Cottages and suites to accommodate.\r\n</p><p>Modern restaurant serving delicious foods.\r\n</p><p>Authentic recreation in a village environment.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', NULL, NULL, NULL, NULL, '2023-02-10 14:40:16', '2023-02-10 14:40:16', NULL),
(5, 'custom_page', 'Our Services', 'Our-Services', '<p>Yesor Resort, eighteen kilometers from Dhaka Airport which is easily accessible by road and it takes only one hour and thirty minutes to reach, lies in a rural environment of Sukundi village of Gazipur on 54 bigha of land which is near to the heritage site “Bhawal Rajbari” and “Bhawal National Park”. Breathtaking views of surrounding lake water and wildlife in amazing natural beauty of land covered with dense green blanket of flora makes anyone feel like enjoying the country’s natural heritage.\r\n</p><p>In this peaceful and tranquil environment, you can have the glimpse of wildlife, firefly processions at night and according to the rules of the resort, during moonlight no light is lit in outside. It is one of the best holiday destination to enjoy the full moon and rain in the rainy season; also to breathe in the fresh air.\r\n</p><p>Eco-Friendly Boutique Resort\r\n</p><p>Eco-Resort: Chuti lodges facility that takes steps to reduce its carbon footprint while giving back to its local community. Some of the best ways that we practice to make our resort more eco -friendly and sustainable like maintain energy saving, limit water waste, have guests reuse linens, equip staff with eco-friendly cleaning staff, serve local and organic food, consider composting etc.\r\n</p><p>Boutique Resort: This 50 room’s unique boutique resort with a relaxing and quiet lawn of Chuti have relaxing atmosphere that would absolutely amaze the guests with its vibrant landscaping and modern amenities. From the very moment of arrival guest will feel embraced with nature.&amp;\r\n</p><p>We Offer\r\n</p><p>Pleasant for couples and families.\r\n</p><p>Suitable for corporate meeting &amp; workshop.\r\n</p><p>Cottages and suites to accommodate.\r\n</p><p>Modern restaurant serving delicious foods.\r\n</p><p>Authentic recreation in a village environment.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', NULL, NULL, NULL, NULL, '2023-02-10 14:40:37', '2023-02-10 14:40:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` bigint(20) NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `title`, `content`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'About Us', '<p>Yesor Resort, eighteen kilometers from Dhaka Airport which is easily accessible by road and it takes only one hour and thirty minutes to reach, lies in a rural environment of Sukundi village of Gazipur on 54 bigha of land which is near to the heritage site “Bhawal Rajbari” and “Bhawal National Park”. Breathtaking views of surrounding lake water and wildlife in amazing natural beauty of land covered with dense green blanket of flora makes anyone feel like enjoying the country’s natural heritage.\r\n</p><p>In this peaceful and tranquil environment, you can have the glimpse of wildlife, firefly processions at night and according to the rules of the resort, during moonlight no light is lit in outside. It is one of the best holiday destination to enjoy the full moon and rain in the rainy season; also to breathe in the fresh air.\r\n</p><p>Eco-Friendly Boutique Resort\r\n</p><p>Eco-Resort: Chuti lodges facility that takes steps to reduce its carbon footprint while giving back to its local community. Some of the best ways that we practice to make our resort more eco -friendly and sustainable like maintain energy saving, limit water waste, have guests reuse linens, equip staff with eco-friendly cleaning staff, serve local and organic food, consider composting etc.\r\n</p><p>Boutique Resort: This 50 room’s unique boutique resort with a relaxing and quiet lawn of Chuti have relaxing atmosphere that would absolutely amaze the guests with its vibrant landscaping and modern amenities. From the very moment of arrival guest will feel embraced with nature.&\r\n</p><p>We Offer\r\n</p><p>Pleasant for couples and families.\r\n</p><p>Suitable for corporate meeting & workshop.\r\n</p><p>Cottages and suites to accommodate.\r\n</p><p>Modern restaurant serving delicious foods.\r\n</p><p>Authentic recreation in a village environment.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2023-02-10 13:34:41', '2023-02-10 14:41:16'),
(2, 2, 'FAQ\'s', '<p>Yesor Resort, eighteen kilometers from Dhaka Airport which is easily accessible by road and it takes only one hour and thirty minutes to reach, lies in a rural environment of Sukundi village of Gazipur on 54 bigha of land which is near to the heritage site “Bhawal Rajbari” and “Bhawal National Park”. Breathtaking views of surrounding lake water and wildlife in amazing natural beauty of land covered with dense green blanket of flora makes anyone feel like enjoying the country’s natural heritage.\r\n</p><p>In this peaceful and tranquil environment, you can have the glimpse of wildlife, firefly processions at night and according to the rules of the resort, during moonlight no light is lit in outside. It is one of the best holiday destination to enjoy the full moon and rain in the rainy season; also to breathe in the fresh air.\r\n</p><p>Eco-Friendly Boutique Resort\r\n</p><p>Eco-Resort: Chuti lodges facility that takes steps to reduce its carbon footprint while giving back to its local community. Some of the best ways that we practice to make our resort more eco -friendly and sustainable like maintain energy saving, limit water waste, have guests reuse linens, equip staff with eco-friendly cleaning staff, serve local and organic food, consider composting etc.\r\n</p><p>Boutique Resort: This 50 room’s unique boutique resort with a relaxing and quiet lawn of Chuti have relaxing atmosphere that would absolutely amaze the guests with its vibrant landscaping and modern amenities. From the very moment of arrival guest will feel embraced with nature.&amp;\r\n</p><p>We Offer\r\n</p><p>Pleasant for couples and families.\r\n</p><p>Suitable for corporate meeting &amp; workshop.\r\n</p><p>Cottages and suites to accommodate.\r\n</p><p>Modern restaurant serving delicious foods.\r\n</p><p>Authentic recreation in a village environment.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2023-02-10 13:37:10', '2023-02-10 13:37:10'),
(3, 3, 'Terms Of Service', '<p>Yesor Resort, eighteen kilometers from Dhaka Airport which is easily accessible by road and it takes only one hour and thirty minutes to reach, lies in a rural environment of Sukundi village of Gazipur on 54 bigha of land which is near to the heritage site “Bhawal Rajbari” and “Bhawal National Park”. Breathtaking views of surrounding lake water and wildlife in amazing natural beauty of land covered with dense green blanket of flora makes anyone feel like enjoying the country’s natural heritage.\r\n</p><p>In this peaceful and tranquil environment, you can have the glimpse of wildlife, firefly processions at night and according to the rules of the resort, during moonlight no light is lit in outside. It is one of the best holiday destination to enjoy the full moon and rain in the rainy season; also to breathe in the fresh air.\r\n</p><p>Eco-Friendly Boutique Resort\r\n</p><p>Eco-Resort: Chuti lodges facility that takes steps to reduce its carbon footprint while giving back to its local community. Some of the best ways that we practice to make our resort more eco -friendly and sustainable like maintain energy saving, limit water waste, have guests reuse linens, equip staff with eco-friendly cleaning staff, serve local and organic food, consider composting etc.\r\n</p><p>Boutique Resort: This 50 room’s unique boutique resort with a relaxing and quiet lawn of Chuti have relaxing atmosphere that would absolutely amaze the guests with its vibrant landscaping and modern amenities. From the very moment of arrival guest will feel embraced with nature.&amp;\r\n</p><p>We Offer\r\n</p><p>Pleasant for couples and families.\r\n</p><p>Suitable for corporate meeting &amp; workshop.\r\n</p><p>Cottages and suites to accommodate.\r\n</p><p>Modern restaurant serving delicious foods.\r\n</p><p>Authentic recreation in a village environment.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2023-02-10 14:39:56', '2023-02-10 14:39:56'),
(4, 4, 'Privacy policy', '<p>Yesor Resort, eighteen kilometers from Dhaka Airport which is easily accessible by road and it takes only one hour and thirty minutes to reach, lies in a rural environment of Sukundi village of Gazipur on 54 bigha of land which is near to the heritage site “Bhawal Rajbari” and “Bhawal National Park”. Breathtaking views of surrounding lake water and wildlife in amazing natural beauty of land covered with dense green blanket of flora makes anyone feel like enjoying the country’s natural heritage.\r\n</p><p>In this peaceful and tranquil environment, you can have the glimpse of wildlife, firefly processions at night and according to the rules of the resort, during moonlight no light is lit in outside. It is one of the best holiday destination to enjoy the full moon and rain in the rainy season; also to breathe in the fresh air.\r\n</p><p>Eco-Friendly Boutique Resort\r\n</p><p>Eco-Resort: Chuti lodges facility that takes steps to reduce its carbon footprint while giving back to its local community. Some of the best ways that we practice to make our resort more eco -friendly and sustainable like maintain energy saving, limit water waste, have guests reuse linens, equip staff with eco-friendly cleaning staff, serve local and organic food, consider composting etc.\r\n</p><p>Boutique Resort: This 50 room’s unique boutique resort with a relaxing and quiet lawn of Chuti have relaxing atmosphere that would absolutely amaze the guests with its vibrant landscaping and modern amenities. From the very moment of arrival guest will feel embraced with nature.&amp;\r\n</p><p>We Offer\r\n</p><p>Pleasant for couples and families.\r\n</p><p>Suitable for corporate meeting &amp; workshop.\r\n</p><p>Cottages and suites to accommodate.\r\n</p><p>Modern restaurant serving delicious foods.\r\n</p><p>Authentic recreation in a village environment.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2023-02-10 14:40:16', '2023-02-10 14:40:16'),
(5, 5, 'Our Services', '<p>Yesor Resort, eighteen kilometers from Dhaka Airport which is easily accessible by road and it takes only one hour and thirty minutes to reach, lies in a rural environment of Sukundi village of Gazipur on 54 bigha of land which is near to the heritage site “Bhawal Rajbari” and “Bhawal National Park”. Breathtaking views of surrounding lake water and wildlife in amazing natural beauty of land covered with dense green blanket of flora makes anyone feel like enjoying the country’s natural heritage.\r\n</p><p>In this peaceful and tranquil environment, you can have the glimpse of wildlife, firefly processions at night and according to the rules of the resort, during moonlight no light is lit in outside. It is one of the best holiday destination to enjoy the full moon and rain in the rainy season; also to breathe in the fresh air.\r\n</p><p>Eco-Friendly Boutique Resort\r\n</p><p>Eco-Resort: Chuti lodges facility that takes steps to reduce its carbon footprint while giving back to its local community. Some of the best ways that we practice to make our resort more eco -friendly and sustainable like maintain energy saving, limit water waste, have guests reuse linens, equip staff with eco-friendly cleaning staff, serve local and organic food, consider composting etc.\r\n</p><p>Boutique Resort: This 50 room’s unique boutique resort with a relaxing and quiet lawn of Chuti have relaxing atmosphere that would absolutely amaze the guests with its vibrant landscaping and modern amenities. From the very moment of arrival guest will feel embraced with nature.&amp;\r\n</p><p>We Offer\r\n</p><p>Pleasant for couples and families.\r\n</p><p>Suitable for corporate meeting &amp; workshop.\r\n</p><p>Cottages and suites to accommodate.\r\n</p><p>Modern restaurant serving delicious foods.\r\n</p><p>Authentic recreation in a village environment.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2023-02-10 14:40:37', '2023-02-10 14:40:37');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `parent`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'show_dashboard', 'dashboard', 'web', NULL, NULL),
(2, 'show_cottages', 'cottages', 'web', NULL, NULL),
(3, 'add_cottages', 'cottages', 'web', NULL, NULL),
(4, 'edit_cottages', 'cottages', 'web', NULL, NULL),
(5, 'show_bookings', 'bookings', 'web', NULL, NULL),
(6, 'show_services', 'services', 'web', NULL, NULL),
(7, 'add_services', 'services', 'web', NULL, NULL),
(8, 'edit_services', 'services', 'web', NULL, NULL),
(9, 'delete_services', 'services', 'web', NULL, NULL),
(10, 'show_events', 'events', 'web', NULL, NULL),
(11, 'add_events', 'events', 'web', NULL, NULL),
(12, 'edit_events', 'events', 'web', NULL, NULL),
(13, 'delete_events', 'events', 'web', NULL, NULL),
(14, 'show_staffs', 'staffs', 'web', NULL, NULL),
(15, 'add_staffs', 'staffs', 'web', NULL, NULL),
(16, 'edit_staffs', 'staffs', 'web', NULL, NULL),
(17, 'delete_staffs', 'staffs', 'web', NULL, NULL),
(18, 'show_roles', 'staffs', 'web', NULL, NULL),
(19, 'add_roles', 'staffs', 'web', NULL, NULL),
(20, 'edit_roles', 'staffs', 'web', NULL, NULL),
(21, 'delete_roles', 'staffs', 'web', NULL, NULL),
(22, 'show_guests', 'guests', 'web', NULL, NULL),
(23, 'ban_guests', 'guests', 'web', NULL, NULL),
(24, 'show_subscribers', 'promotions', 'web', NULL, NULL),
(25, 'delete_subscribers', 'promotions', 'web', NULL, NULL),
(26, 'send_emails', 'promotions', 'web', NULL, NULL),
(27, 'show_blogs', 'blogs', 'web', NULL, NULL),
(28, 'add_blogs', 'blogs', 'web', NULL, NULL),
(29, 'edit_blogs', 'blogs', 'web', NULL, NULL),
(30, 'publish_blogs', 'blogs', 'web', NULL, NULL),
(31, 'delete_blogs', 'blogs', 'web', NULL, NULL),
(32, 'show_blog_categories', 'blogs', 'web', NULL, NULL),
(33, 'add_blog_categories', 'blogs', 'web', NULL, NULL),
(34, 'edit_blog_categories', 'blogs', 'web', NULL, NULL),
(35, 'delete_blog_categories', 'blogs', 'web', NULL, NULL),
(36, 'show_media', 'media_gallery', 'web', NULL, NULL),
(38, 'delete_media', 'media_gallery', 'web', NULL, NULL),
(39, 'manage_header', 'manage_website', 'web', NULL, NULL),
(40, 'manage_homepage', 'manage_website', 'web', NULL, NULL),
(41, 'manage_gallery', 'manage_website', 'web', NULL, NULL),
(42, 'manage_pages', 'manage_website', 'web', NULL, NULL),
(43, 'manage_footer', 'manage_website', 'web', NULL, NULL),
(44, 'manage_general_settings', 'manage_system', 'web', NULL, NULL),
(45, 'manage_language_settings', 'manage_system', 'web', NULL, NULL),
(46, 'manage_currency_settings', 'manage_system', 'web', NULL, NULL),
(47, 'manage_smtp_settings', 'manage_system', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2021-10-27 09:37:56', '2021-10-27 09:37:59'),
(10, 'Manager', 'web', '2023-01-31 15:56:40', '2023-01-31 15:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(5, 10),
(6, 10),
(7, 10),
(8, 10),
(9, 10),
(10, 10),
(11, 10),
(12, 10),
(13, 10),
(14, 10),
(15, 10),
(16, 10),
(17, 10),
(18, 10),
(19, 10),
(20, 10),
(21, 10),
(22, 10),
(23, 10),
(24, 10),
(25, 10),
(26, 10),
(27, 10),
(28, 10),
(29, 10),
(30, 10),
(31, 10),
(32, 10),
(33, 10),
(34, 10),
(35, 10),
(36, 10),
(38, 10),
(39, 10),
(40, 10),
(41, 10),
(42, 10),
(43, 10),
(44, 10),
(45, 10),
(46, 10),
(47, 10);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery_images` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_best` tinyint(4) NOT NULL DEFAULT 0,
  `meta_image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_translations`
--

CREATE TABLE `service_translations` (
  `id` bigint(20) NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `type` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'topbar_helpline_number', '+12 345 678 969', '2023-02-05 18:07:32', '2023-02-05 18:07:32', NULL),
(2, 'topbar_email', 'yesort@example.com', '2023-02-05 18:07:32', '2023-02-05 18:07:32', NULL),
(3, 'topbar_facebook_link', 'https://www.facebook.com/', '2023-02-05 18:07:32', '2023-02-05 18:07:32', NULL),
(4, 'topbar_twitter_link', 'https://www.twitter.com/', '2023-02-05 18:07:32', '2023-02-05 18:07:32', NULL),
(5, 'topbar_instagram_link', 'https://www.instagram.com/', '2023-02-05 18:07:32', '2023-02-05 18:07:32', NULL),
(6, 'topbar_linked_in_link', 'https://www.linkedin.com/', '2023-02-05 18:07:32', '2023-02-05 18:07:32', NULL),
(7, 'header_logo', NULL, '2023-02-05 18:07:32', '2023-02-20 04:05:02', NULL),
(8, 'site_name', 'Yesort - PWA Resort Website & Booking Management Web Application', '2023-02-06 14:09:30', '2023-02-10 15:54:33', NULL),
(9, 'admin_logo', NULL, '2023-02-06 14:09:30', '2023-02-20 04:07:04', NULL),
(10, 'hero_sliders', '[{\"id\":624344,\"title\":\"Choose The Best Resort For Weekend\",\"link\":\"https:\\/\\/www.youtube.com\\/watch?v=mZ77D66ZYtw\",\"image\":\"0\"},{\"id\":638147,\"title\":\"We Are Waiting To Make You Feel Special\",\"link\":\"https:\\/\\/www.youtube.com\\/watch?v=mZ77D66ZYtw\",\"image\":\"0\"}]', '2023-02-06 14:58:28', '2023-02-17 23:18:23', NULL),
(11, 'header_logo_dark', NULL, '2023-02-06 18:33:57', '2023-02-20 04:05:02', NULL),
(12, 'top_features', NULL, '2023-02-07 16:53:15', '2023-02-15 04:12:33', NULL),
(13, 'testimonials', NULL, '2023-02-09 14:29:13', '2023-02-17 23:29:29', NULL),
(14, 'partners', NULL, '2023-02-10 11:42:20', '2023-02-17 22:50:58', NULL),
(15, 'footer_about', 'Yesort is a Professional resort & hotel booking Platform. Here we will provide you only interesting content, which you will like very much.', '2023-02-10 13:05:25', '2023-02-10 13:05:25', NULL),
(16, 'contact_address', 'New Elephant Road, Dhaka-1205', '2023-02-10 13:05:25', '2023-02-10 13:07:46', NULL),
(17, 'contact_phone', '+212345678', '2023-02-10 13:05:25', '2023-02-10 13:07:46', NULL),
(18, 'contact_email', 'yesort@example.com', '2023-02-10 13:05:25', '2023-02-10 13:07:46', NULL),
(19, 'frontend_copyright_text', '© Copyright Yesort. All Rights Reserved.', '2023-02-10 13:05:25', '2023-02-10 13:20:23', NULL),
(20, 'customer_login_with', 'email', '2023-02-12 18:43:30', '2023-02-12 18:43:38', NULL),
(21, 'customer_verification_with', 'disabled', '2023-02-12 18:43:30', '2023-02-12 18:43:38', NULL),
(22, 'system_default_currency', '1', '2023-02-18 01:31:58', '2023-02-18 01:31:58', NULL),
(23, 'check_in_time', '10:10 AM', '2023-02-18 01:35:38', '2023-02-18 01:35:38', NULL),
(24, 'check_out_time', '10:10 AM', '2023-02-18 01:35:38', '2023-02-18 01:35:38', NULL),
(25, 'booking_code_prefix', 'Yesort', '2023-02-18 01:35:42', '2023-02-18 01:35:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_key` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1, 'en', 'verification_has_been_successful', 'Verification has been successful\r\n', '2023-02-13 18:14:16', '2023-02-13 18:14:16'),
(2, 'en', 'login', 'Login\r\n', '2023-02-13 18:14:16', '2023-02-13 18:14:16'),
(3, 'en', 'profile', 'Profile\r\n', '2023-02-13 18:14:16', '2023-02-13 18:14:16'),
(4, 'en', 'home', 'Home\r\n', '2023-02-13 18:14:16', '2023-02-13 18:14:16'),
(5, 'en', 'about', 'About\r\n', '2023-02-13 18:14:16', '2023-02-13 18:14:16'),
(6, 'en', 'my_profile', 'My profile\r\n', '2023-02-13 18:14:16', '2023-02-13 18:14:16'),
(7, 'en', 'update_profile', 'Update profile\r\n', '2023-02-13 18:14:16', '2023-02-13 18:14:16'),
(8, 'en', 'my_bookings', 'My bookings\r\n', '2023-02-13 18:14:16', '2023-02-13 18:14:16'),
(9, 'en', 'bookings', 'Bookings\r\n', '2023-02-13 18:14:16', '2023-02-13 18:14:16'),
(10, 'en', 'wishlist', 'Wishlist\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(11, 'en', 'enter_name', 'Enter name\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(12, 'en', 'enter_email', 'Enter email\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(13, 'en', 'name', 'Name\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(14, 'en', 'email', 'Email\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(15, 'en', 'phone', 'Phone\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(16, 'en', 'address', 'Address\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(17, 'en', 'your_address', 'Your Address\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(18, 'en', 'your_name', 'Your Name\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(19, 'en', 'your_email', 'Your Email\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(20, 'en', 'your_phone', 'Your Phone\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(21, 'en', 'enter_phone_no', 'Enter phone no\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(22, 'en', 'update', 'Update\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(23, 'en', 'update_password', 'Update Password\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(24, 'en', 'your_password', 'Your Password\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(25, 'en', 'password_confirmation', 'Password Confirmation\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(26, 'en', 'avatar', 'Avatar\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(27, 'en', 'update_avatar', 'Update Avatar\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(28, 'en', 'discover_more', 'Discover More\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(29, 'en', 'rooms', 'Rooms\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(30, 'en', 'beds', 'Beds\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(31, 'en', 'book_now', 'Book Now\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(32, 'en', 'check_in', 'Check In\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(33, 'en', 'adults', 'Adults\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(34, 'en', 'search', 'Search\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(35, 'en', 'children', 'Children\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(36, 'en', 'night', 'Night\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(37, 'en', 'load_more', 'Load More\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(38, 'en', 'room_description', 'Room Description\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(39, 'en', 'check_availability', 'Check Availability\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(40, 'en', 'check_out', 'Check Out\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(41, 'en', 'out', 'Out\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(42, 'en', 'other_cottages', 'Other Cottages\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(43, 'en', 'this_cottage_is_unavailable_in_selected_dates', 'This cottage is unavailable in selected dates\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(44, 'en', 'this_cottage_is_available_for_booking', 'This cottage is available for booking\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(45, 'en', 'additional_info', 'Additional Info\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(46, 'en', 'booking_summary', 'Booking Summary\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(47, 'en', 'order_info', 'Order Info\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(48, 'en', 'order_pay_summary', 'Order Pay Summary\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(49, 'en', 'stay', 'Stay\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(50, 'en', 'nights', 'Nights\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(51, 'en', 'back', 'Back\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(52, 'en', 'your_details', 'Your Details\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(53, 'en', 'thanks_for_your_booking_we_have_successfully_listed_it_and_will_contact_you_soon', 'Thanks for your booking. We have successfully listed it and will contact you soon.\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(54, 'en', 'cottage_details', 'Cottage Details\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(55, 'en', 'our_other_cottages', 'Our Other Cottages\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(56, 'en', 'best_cottages', 'Best Cottages\r\n', '2023-02-13 18:14:18', '2023-02-20 06:23:20'),
(57, 'en', 'our_best_cottages', 'Our Best Cottages\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(58, 'en', 'cottages', 'Cottages\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(59, 'en', 'we_have_some_wonderful_cottages_ready_for_you_here_are_plenty_of_options_when_it_comes_to_cottages_to_rent_for_a_weekend_break_or_a_healthy_vacation', 'We have some wonderful cottages ready for you. Here are plenty of options when it comes to cottages to rent for a weekend break or a healthy vacation.\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(60, 'en', 'please_login_to_continue', 'Please login to continue\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(61, 'en', 'welcome_to_customer_dashboard', 'Welcome to Customer Dashboard\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(62, 'en', 'recent_bookings', 'Recent Bookings\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(63, 'en', 'log_out', 'Log out\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(64, 'en', 'updated_profile', 'Updated Profile\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(65, 'en', 'my_wishlist', 'My Wishlist\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(66, 'en', 'dashboard', 'Dashboard\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(67, 'en', 'booking_date', 'Booking Date\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(68, 'en', 'staying_nights', 'Staying Nights\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(69, 'en', 'total_cost', 'Total Cost\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(70, 'en', 'status', 'Status\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(71, 'en', 'sl', 'S/L\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(72, 'en', 'action', 'Action\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(73, 'en', 'booking_code', 'Booking Code\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(74, 'en', 'learn_more', 'Learn More\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(75, 'en', 'best_services', 'Best Services\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(76, 'en', 'service_details', 'Service Details\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(77, 'en', 'services', 'Services\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(78, 'en', 'forgot_password', 'Forgot Password\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(79, 'en', 'reset_your_account', 'Reset your account\r\n', '2023-02-13 18:14:19', '2023-02-20 06:23:20'),
(80, 'en', 'send_reset_code', 'Send Reset Code\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(81, 'en', 'email_address', 'Email Address\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(82, 'en', 'back_to_login_', 'Back to login \r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(83, 'en', 'registration', 'Registration\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(84, 'en', 'create_your_account', 'Create your account\r\n', '2023-02-13 18:14:19', '2023-02-20 06:23:20'),
(85, 'en', 'full_name', 'Full Name\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(86, 'en', 'password', 'Password\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(87, 'en', 'remember_me', 'Remember Me\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(88, 'en', 'dont_have_an_account', 'Don\'t have an account?\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(89, 'en', 'register', 'Register\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(90, 'en', 'confirm_password', 'Confirm Password\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(91, 'en', 'i_agree_with_the_terms__services', 'I agree with the Terms & Services.\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(92, 'en', 'already_have_an_account', 'Already have an account?\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(93, 'en', 'set_new_password', 'Set New Password\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(94, 'en', 'set_new_password_for_your_account', 'Set New Password for your account\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(95, 'en', 'verification_code', 'Verification Code\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(96, 'en', 'verification', 'Verification\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(97, 'en', 'verify_your_account', 'verify your account\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(98, 'en', 'did_not_get_a_code', 'Did not get a code?\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(99, 'en', 'resend', 'Resend\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(100, 'en', 'verify', 'Verify\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(101, 'en', 'events', 'Events\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(102, 'en', 'event_details', 'Event Details\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(103, 'en', 'event_information', 'Event Information\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(104, 'en', 'event_date', 'Event Date\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(105, 'en', 'event_time', 'Event Time\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(106, 'en', 'event_location', 'Event Location\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(107, 'en', 'event_cost', 'Event Cost\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(108, 'en', 'read_more', 'Read More\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(109, 'en', 'blogs', 'Blogs\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(110, 'en', 'gallery', 'Gallery\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(111, 'en', 'blog_details', 'Blog Details\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(112, 'en', 'category_list', 'Category List\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(113, 'en', 'recent_post', 'Recent Post\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(114, 'en', 'login_with_your_account', 'Login with your account\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(115, 'en', 'features', 'Features\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(116, 'en', 'our_top_features', 'Our Top Features\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(117, 'en', 'all_cottages', 'All Cottages\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(118, 'en', 'all_services', 'All Services\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(119, 'en', 'our_best_services', 'Our Best Services\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(120, 'en', 'see_more', 'See More\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(121, 'en', 'testimonials', 'Testimonials\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(122, 'en', 'what_client_says', 'What Client Say\'s\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(123, 'en', 'browse_our_gallery', 'Browse Our Gallery\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(124, 'en', 'all_blogs', 'All Blogs\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(125, 'en', 'latest_news__blogs', 'Latest News & Blogs\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(126, 'en', 'our_blogs', 'Our Blogs\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(127, 'en', 'partners', 'Partners\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(128, 'en', 'our_awesome_', 'Our Awesome \r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(129, 'en', 'quick_links', 'Quick Links\r\n', '2023-02-13 18:14:21', '2023-02-13 18:14:21'),
(130, 'en', 'contact_us', 'Contact Us\r\n', '2023-02-13 18:14:21', '2023-02-13 18:14:21'),
(131, 'en', 'add_new_files', 'Add new files', '2023-02-13 18:15:42', '2023-02-13 18:15:42'),
(132, 'en', 'media_files', 'Media files', '2023-02-13 18:15:42', '2023-02-13 18:15:42'),
(133, 'en', 'search_by_name', 'Search by name', '2023-02-13 18:15:42', '2023-02-13 18:15:42'),
(134, 'en', 'are_you_sure', 'Are you sure?', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(135, 'en', 'all_data_related_to_this_may_get_deleted', 'All data related to this may get deleted.', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(136, 'en', 'still_want_to_delete', 'Still want to delete!', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(137, 'en', 'yes_delete', 'Yes, Delete', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(138, 'en', 'file_info', 'File Info', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(139, 'en', 'nothing_selected', 'Nothing selected', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(140, 'en', 'please_choose_options', 'Please choose options', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(141, 'en', 'no_data_found', 'No data found', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(142, 'en', 'choose_file', 'Choose file', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(143, 'en', 'browse', 'Browse', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(144, 'en', 'upload_complete', 'Upload complete', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(145, 'en', 'processing', 'Processing', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(146, 'en', 'complete', 'Complete', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(147, 'en', 'file', 'File', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(148, 'en', 'files', 'Files', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(149, 'en', 'upload_paused', 'Upload paused', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(150, 'en', 'uploading', 'Uploading', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(151, 'en', 'adding_more_files', 'Adding more files', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(152, 'en', 'drop_files_here', 'Drop files here', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(153, 'en', 'resume_upload', 'Resume upload', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(154, 'en', 'pause_upload', 'Pause upload', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(155, 'en', 'file_selected', 'File selected', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(156, 'en', 'files_selected', 'Files selected', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(157, 'en', 'add_more_files', 'Add more files', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(158, 'en', 'retry_upload', 'Retry upload', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(159, 'en', 'cancel_upload', 'Cancel upload', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(160, 'en', 'add_new_cottage', 'Add New Cottage', '2023-02-13 18:15:45', '2023-02-13 18:15:45'),
(161, 'en', 'new', 'new', '2023-02-13 18:15:45', '2023-02-13 18:15:45'),
(162, 'en', 'add_new_service', 'Add New Service', '2023-02-13 18:15:45', '2023-02-13 18:15:45'),
(163, 'en', 'add_new_event', 'Add New Event', '2023-02-13 18:15:45', '2023-02-13 18:15:45'),
(164, 'en', 'all_events', 'All Events', '2023-02-13 18:15:45', '2023-02-13 18:15:45'),
(165, 'en', 'manage_staffs', 'Manage Staffs', '2023-02-13 18:15:45', '2023-02-13 18:15:45'),
(166, 'en', 'all_staffs', 'All Staffs', '2023-02-13 18:15:45', '2023-02-13 18:15:45'),
(167, 'en', 'roles', 'Roles', '2023-02-13 18:15:45', '2023-02-13 18:15:45'),
(168, 'en', 'manage_guests', 'Manage Guests', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(169, 'en', 'promotions', 'Promotions', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(170, 'en', 'suscribers', 'Suscribers', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(171, 'en', 'send_emails', 'Send Emails', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(172, 'en', 'blog_system', 'Blog System', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(173, 'en', 'add_new_blog', 'Add New Blog', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(174, 'en', 'blog_categories', 'Blog Categories', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(175, 'en', 'media_gallery', 'Media Gallery', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(176, 'en', 'manage_website', 'Manage Website', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(177, 'en', 'header', 'Header', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(178, 'en', 'homepage', 'Homepage', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(179, 'en', 'pages', 'Pages', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(180, 'en', 'footer', 'Footer', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(181, 'en', 'seo', 'SEO', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(182, 'en', 'manage_system', 'Manage System', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(183, 'en', 'general_settings', 'General Settings', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(184, 'en', 'languages', 'Languages', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(185, 'en', 'currency', 'Currency', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(186, 'en', 'smtp_settings', 'SMTP Settings', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(187, 'en', 'search_guest_by_name', 'Search guest by name..', '2023-02-13 18:15:47', '2023-02-13 18:15:47'),
(188, 'en', 'logout', 'Logout', '2023-02-13 18:15:47', '2023-02-13 18:15:47'),
(189, 'en', 'header_setting', 'Header Setting', '2023-02-13 18:23:32', '2023-02-13 18:23:32'),
(190, 'en', 'helpline_number', 'Helpline number', '2023-02-13 18:23:32', '2023-02-13 18:23:32'),
(191, 'en', 'facebook_link', 'Facebook Link', '2023-02-13 18:23:33', '2023-02-13 18:23:33'),
(192, 'en', 'twitter_link', 'Twitter Link', '2023-02-13 18:23:33', '2023-02-13 18:23:33'),
(193, 'en', 'instagram_link', 'Instagram Link', '2023-02-13 18:23:33', '2023-02-13 18:23:33'),
(194, 'en', 'linkedin_link', 'LinkedIn Link', '2023-02-13 18:23:33', '2023-02-13 18:23:33'),
(195, 'en', 'header_logo', 'Header Logo', '2023-02-13 18:23:33', '2023-02-13 18:23:33'),
(196, 'en', 'header_logo_dark', 'Header Logo Dark', '2023-02-13 18:23:33', '2023-02-13 18:23:33'),
(197, 'en', 'guests', 'Guests', '2023-02-13 18:33:15', '2023-02-13 18:33:15'),
(198, 'en', 'events__meetings', 'Events & Meetings', '2023-02-13 18:33:16', '2023-02-13 18:33:16'),
(199, 'en', 'smtp_configuration', 'SMTP Configuration', '2023-02-13 18:33:16', '2023-02-13 18:33:16'),
(200, 'en', 'language_settings', 'Language Settings', '2023-02-13 18:33:16', '2023-02-13 18:33:16'),
(201, 'en', 'currency_configuration', 'Currency Configuration', '2023-02-13 18:33:17', '2023-02-13 18:33:17'),
(202, 'en', 'cost', 'Cost', '2023-02-13 18:33:17', '2023-02-13 18:33:17'),
(203, 'en', 'total_booking', 'Total Booking', '2023-02-13 18:33:17', '2023-02-13 18:33:17'),
(204, 'en', 'options', 'Options', '2023-02-13 18:33:17', '2023-02-13 18:33:17'),
(205, 'en', 'rating', 'Rating', '2023-02-13 18:33:17', '2023-02-13 18:33:17'),
(206, 'en', 'view', 'View', '2023-02-13 18:33:17', '2023-02-13 18:33:17'),
(207, 'en', 'new_password', 'New Password', '2023-02-13 18:33:50', '2023-02-13 18:33:50'),
(208, 'en', 'save', 'Save', '2023-02-13 18:33:50', '2023-02-13 18:33:50'),
(209, 'en', 'your_profile_has_been_updated_successfully', 'Your Profile has been updated successfully!', '2023-02-13 18:34:02', '2023-02-13 18:34:02'),
(210, 'en', 'login__registration_configuration', 'Login & Registration Configuration', '2023-02-14 15:58:45', '2023-02-14 15:58:45'),
(211, 'en', 'loginregistration_with', 'Login/Registration with', '2023-02-14 15:58:52', '2023-02-14 15:58:52'),
(212, 'en', 'verify_registration_with', 'Verify Registration with', '2023-02-14 15:58:52', '2023-02-14 15:58:52'),
(213, 'en', 'disabled', 'Disabled', '2023-02-14 15:58:52', '2023-02-14 15:58:52'),
(214, 'en', 'system_name', 'System Name', '2023-02-14 15:58:52', '2023-02-14 15:58:52'),
(215, 'en', 'admin_panel_logo', 'Admin Panel Logo', '2023-02-14 15:58:52', '2023-02-14 15:58:52'),
(216, 'en', 'choose_files', 'Choose Files', '2023-02-14 15:58:52', '2023-02-14 15:58:52'),
(217, 'en', 'system_timezone', 'System Timezone', '2023-02-14 15:58:52', '2023-02-14 15:58:52'),
(218, 'en', 'check_in__check_out_time', 'Check In - Check Out Time', '2023-02-14 15:58:53', '2023-02-14 15:58:53'),
(219, 'en', 'check_in_time', 'Check in time', '2023-02-14 15:58:53', '2023-02-14 15:58:53'),
(220, 'en', 'check_out_time', 'Check out time', '2023-02-14 15:58:53', '2023-02-14 15:58:53'),
(221, 'en', 'booking_code_prefix', 'Booking Code Prefix', '2023-02-14 15:58:53', '2023-02-14 15:58:53'),
(222, 'en', 'features_activation', 'Features Activation', '2023-02-14 15:58:53', '2023-02-14 15:58:53'),
(223, 'en', 'forcefully_https_redirection', 'Forcefully HTTPS redirection', '2023-02-14 15:58:53', '2023-02-14 15:58:53'),
(224, 'en', 'settings_updated_successfully', 'Settings updated successfully', '2023-02-14 15:58:53', '2023-02-14 15:58:53'),
(225, 'en', 'something_went_wrong', 'Something went wrong', '2023-02-14 15:58:53', '2023-02-14 15:58:53'),
(226, 'en', 'upload_or_choose_files', 'Upload or choose files', '2023-02-14 16:00:08', '2023-02-14 16:00:08'),
(227, 'en', '0_file_selected', '0 File selected', '2023-02-14 16:00:09', '2023-02-14 16:00:09'),
(228, 'en', 'uploaded_files', 'Uploaded Files', '2023-02-14 16:00:09', '2023-02-14 16:00:09'),
(229, 'en', 'no_files_found', 'No files found', '2023-02-14 16:00:09', '2023-02-14 16:00:09'),
(230, 'en', 'select', 'Select', '2023-02-14 16:00:09', '2023-02-14 16:00:09'),
(231, 'en', 'best', 'Best', '2023-02-14 16:13:11', '2023-02-14 16:13:11'),
(232, 'en', 'published', 'Published', '2023-02-14 16:13:12', '2023-02-14 16:13:12'),
(233, 'en', 'status_updated_successfully', 'Status updated successfully', '2023-02-14 16:13:13', '2023-02-14 16:13:13'),
(234, 'en', 'all_bookings', 'All Bookings', '2023-02-14 16:13:24', '2023-02-14 16:13:24'),
(235, 'en', 'pending', 'Pending', '2023-02-14 16:13:25', '2023-02-14 16:13:25'),
(236, 'en', 'confirmed', 'Confirmed', '2023-02-14 16:13:25', '2023-02-14 16:13:25'),
(237, 'en', 'cancelled', 'Cancelled', '2023-02-14 16:13:25', '2023-02-14 16:13:25'),
(238, 'en', 'cottage', 'Cottage', '2023-02-14 16:13:25', '2023-02-14 16:13:25'),
(239, 'en', 'user', 'User', '2023-02-14 16:13:25', '2023-02-14 16:13:25'),
(240, 'en', 'login_to_your_account', 'Login to your account.', '2023-02-15 03:54:42', '2023-02-15 03:54:42'),
(241, 'en', 'sorry_for_the_inconvenience_but_were_working_on_it', 'Sorry for the inconvenience, but we\'re working on it.', '2023-02-15 03:54:42', '2023-02-15 03:54:42'),
(242, 'en', 'error_code', 'Error code', '2023-02-15 03:54:43', '2023-02-15 03:54:43'),
(243, 'en', 'cottage_name', 'Cottage Name', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(244, 'en', 'price', 'Price', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(245, 'en', 'timeline', 'Timeline', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(246, 'en', 'number_of_rooms', 'Number of Rooms', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(247, 'en', 'number_of_beds', 'Number of Beds', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(248, 'en', 'size', 'Size', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(249, 'en', 'eg_250_square_feet', 'e.g. 250 Square Feet', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(250, 'en', 'unpublished', 'Unpublished', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(251, 'en', 'youtube_video_link', 'Youtube Video Link', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(252, 'en', 'httpsyoutubecomabcde', 'https:///youtube.com/abcde', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(253, 'en', 'thumbnail_image', 'Thumbnail Image', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(254, 'en', 'gallery_images', 'Gallery Images', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(255, 'en', 'description', 'Description', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(256, 'en', 'meta_title', 'Meta Title', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(257, 'en', 'meta_image', 'Meta Image', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(258, 'en', 'save_cottage', 'Save Cottage', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(259, 'en', 'general_information', 'General Information', '2023-02-15 04:00:22', '2023-02-15 04:00:22'),
(260, 'en', 'service_name', 'Service Name', '2023-02-15 04:00:22', '2023-02-15 04:00:22'),
(261, 'en', 'short_description', 'Short Description', '2023-02-15 04:00:22', '2023-02-15 04:00:22'),
(262, 'en', 'service_images', 'Service Images', '2023-02-15 04:00:22', '2023-02-15 04:00:22'),
(263, 'en', 'service_description', 'Service Description', '2023-02-15 04:00:22', '2023-02-15 04:00:22'),
(264, 'en', 'seo_meta_tags', 'SEO Meta Tags', '2023-02-15 04:00:22', '2023-02-15 04:00:22'),
(265, 'en', 'meta_description', 'Meta Description', '2023-02-15 04:00:22', '2023-02-15 04:00:22'),
(266, 'en', 'save_service', 'Save Service', '2023-02-15 04:00:22', '2023-02-15 04:00:22'),
(267, 'en', 'image', 'Image', '2023-02-15 04:00:30', '2023-02-15 04:00:30'),
(268, 'en', 'event_title', 'Event Title', '2023-02-15 04:00:33', '2023-02-15 04:00:33'),
(269, 'en', 'select_dates', 'Select Dates', '2023-02-15 04:00:33', '2023-02-15 04:00:33'),
(270, 'en', '10am__6pm', '10AM - 6PM', '2023-02-15 04:00:33', '2023-02-15 04:00:33'),
(271, 'en', 'fee', 'Fee', '2023-02-15 04:00:33', '2023-02-15 04:00:33'),
(272, 'en', 'event_images', 'Event Images', '2023-02-15 04:00:33', '2023-02-15 04:00:33'),
(273, 'en', 'event_description', 'Event Description', '2023-02-15 04:00:33', '2023-02-15 04:00:33'),
(274, 'en', 'save_event', 'Save Event', '2023-02-15 04:00:33', '2023-02-15 04:00:33'),
(275, 'en', 'search_by_title', 'Search by title', '2023-02-15 04:00:36', '2023-02-15 04:00:36'),
(276, 'en', 'title', 'Title', '2023-02-15 04:00:36', '2023-02-15 04:00:36'),
(277, 'en', 'start_date', 'Start Date', '2023-02-15 04:00:36', '2023-02-15 04:00:36'),
(278, 'en', 'end_date', 'End Date', '2023-02-15 04:00:36', '2023-02-15 04:00:36'),
(279, 'en', 'hero_section', 'Hero Section', '2023-02-15 04:00:49', '2023-02-15 04:00:49'),
(280, 'en', 'top_features', 'Top Features', '2023-02-15 04:00:49', '2023-02-15 04:00:49'),
(281, 'en', 'add_slider', 'Add Slider', '2023-02-15 04:00:49', '2023-02-15 04:00:49'),
(282, 'en', 'ttile', 'Ttile', '2023-02-15 04:00:49', '2023-02-15 04:00:49'),
(283, 'en', 'choose_the_best_resort_for_weekend', 'Choose the best resort for weekend', '2023-02-15 04:00:49', '2023-02-15 04:00:49'),
(284, 'en', 'slider_image', 'Slider Image', '2023-02-15 04:00:49', '2023-02-15 04:00:49'),
(285, 'en', 'hero_sliders', 'Hero Sliders', '2023-02-15 04:00:49', '2023-02-15 04:00:49'),
(286, 'en', 'slider', 'Slider', '2023-02-15 04:00:49', '2023-02-15 04:00:49'),
(287, 'en', 'add_top_feature', 'Add Top Feature', '2023-02-15 04:00:52', '2023-02-15 04:00:52'),
(288, 'en', 'free_wifi', 'Free Wifi', '2023-02-15 04:00:52', '2023-02-15 04:00:52'),
(289, 'en', 'feature_image', 'Feature Image', '2023-02-15 04:00:52', '2023-02-15 04:00:52'),
(290, 'en', 'add_partner', 'Add Partner', '2023-02-15 04:00:55', '2023-02-15 04:00:55'),
(291, 'en', 'our_partners', 'Our Partners', '2023-02-15 04:00:55', '2023-02-15 04:00:55'),
(292, 'en', 'add_user_feedback', 'Add User Feedback', '2023-02-15 04:00:56', '2023-02-15 04:00:56'),
(293, 'en', 'type_user_name', 'Type user name', '2023-02-15 04:00:56', '2023-02-15 04:00:56'),
(294, 'en', 'remark', 'Remark', '2023-02-15 04:00:56', '2023-02-15 04:00:56'),
(295, 'en', 'type_remark', 'Type remark', '2023-02-15 04:00:56', '2023-02-15 04:00:56'),
(296, 'en', 'add_gallery_image', 'Add Gallery Image', '2023-02-15 04:00:58', '2023-02-15 04:00:58'),
(297, 'en', 'order', 'Order', '2023-02-15 04:00:58', '2023-02-15 04:00:58'),
(298, 'en', 'lower_orders_will_be_shown_first', 'Lower orders will be shown first', '2023-02-15 04:00:58', '2023-02-15 04:00:58'),
(299, 'en', 'galleries', 'Galleries', '2023-02-15 04:00:58', '2023-02-15 04:00:58'),
(300, 'en', 'all_pages', 'All Pages', '2023-02-15 04:01:00', '2023-02-15 04:01:00'),
(301, 'en', 'add_new_page', 'Add New Page', '2023-02-15 04:01:00', '2023-02-15 04:01:00'),
(302, 'en', 'url', 'URL', '2023-02-15 04:01:00', '2023-02-15 04:01:00'),
(303, 'en', 'actions', 'Actions', '2023-02-15 04:01:00', '2023-02-15 04:01:00'),
(304, 'en', 'footer_info', 'Footer Info', '2023-02-15 04:01:02', '2023-02-15 04:01:02'),
(305, 'en', 'about_text', 'About Text', '2023-02-15 04:01:02', '2023-02-15 04:01:02'),
(306, 'en', 'copyright_text', 'Copyright Text', '2023-02-15 04:01:02', '2023-02-15 04:01:02'),
(307, 'en', 'default_language', 'Default Language', '2023-02-15 04:01:29', '2023-02-15 04:01:29'),
(308, 'en', 'language_list', 'Language List', '2023-02-15 04:01:29', '2023-02-15 04:01:29'),
(309, 'en', 'add_language', 'Add Language', '2023-02-15 04:01:29', '2023-02-15 04:01:29'),
(310, 'en', 'code', 'Code', '2023-02-15 04:01:29', '2023-02-15 04:01:29'),
(311, 'en', 'default_language_can_not_be_disbaled', 'Default language can not be disbaled', '2023-02-15 04:01:32', '2023-02-15 04:01:32'),
(312, 'en', 'default_currency', 'Default Currency', '2023-02-15 04:01:37', '2023-02-15 04:01:37'),
(313, 'en', 'currency_list', 'Currency List', '2023-02-15 04:01:37', '2023-02-15 04:01:37'),
(314, 'en', 'add_currency', 'Add Currency', '2023-02-15 04:01:37', '2023-02-15 04:01:37'),
(315, 'en', 'currency_name', 'Currency name', '2023-02-15 04:01:37', '2023-02-15 04:01:37'),
(316, 'en', 'alignment', 'Alignment', '2023-02-15 04:01:37', '2023-02-15 04:01:37'),
(317, 'en', '1_usd__', '1 USD = ?', '2023-02-15 04:01:37', '2023-02-15 04:01:37'),
(318, 'en', 'currency_status_updated_successfully', 'Currency Status updated successfully', '2023-02-15 04:01:37', '2023-02-15 04:01:37'),
(319, 'en', 'add_new_currency', 'Add New Currency', '2023-02-15 04:01:39', '2023-02-15 04:01:39'),
(320, 'en', 'rate', 'Rate', '2023-02-15 04:01:39', '2023-02-15 04:01:39'),
(321, 'en', 'symbol', 'Symbol', '2023-02-15 04:01:39', '2023-02-15 04:01:39'),
(322, 'en', 'cancel', 'Cancel', '2023-02-15 04:01:39', '2023-02-15 04:01:39'),
(323, 'en', 'type', 'Type', '2023-02-15 04:01:44', '2023-02-15 04:01:44'),
(324, 'en', 'sendmail', 'Sendmail', '2023-02-15 04:01:44', '2023-02-15 04:01:44'),
(325, 'en', 'smtp', 'SMTP', '2023-02-15 04:01:44', '2023-02-15 04:01:44'),
(326, 'en', 'mail_host', 'MAIL HOST', '2023-02-15 04:01:44', '2023-02-15 04:01:44'),
(327, 'en', 'mail_port', 'MAIL PORT', '2023-02-15 04:01:44', '2023-02-15 04:01:44'),
(328, 'en', 'mail_username', 'MAIL USERNAME', '2023-02-15 04:01:44', '2023-02-15 04:01:44'),
(329, 'en', 'mail_password', 'MAIL PASSWORD', '2023-02-15 04:01:44', '2023-02-15 04:01:44'),
(330, 'en', 'mail_encryption', 'MAIL ENCRYPTION', '2023-02-15 04:01:44', '2023-02-15 04:01:44'),
(331, 'en', 'mail_from_address', 'MAIL FROM ADDRESS', '2023-02-15 04:01:44', '2023-02-15 04:01:44'),
(332, 'en', 'mail_from_name', 'MAIL FROM NAME', '2023-02-15 04:01:44', '2023-02-15 04:01:44'),
(333, 'en', 'successfully_logged_in', 'Successfully logged in', '2023-02-15 04:07:33', '2023-02-15 04:07:33'),
(334, 'en', 'successfully_logged_out', 'Successfully logged out', '2023-02-15 04:08:00', '2023-02-15 04:08:00'),
(335, 'en', 'feature_added_successfully', 'Feature added successfully', '2023-02-15 04:10:20', '2023-02-15 04:10:20'),
(336, 'en', 'feature_deleted_successfully', 'Feature deleted successfully', '2023-02-15 04:11:27', '2023-02-15 04:11:27'),
(337, 'en', 'slider_image_deleted_successfully', 'Slider image deleted successfully', '2023-02-15 04:55:38', '2023-02-15 04:55:38'),
(338, 'en', 'slider_image_added_successfully', 'Slider image added successfully', '2023-02-15 04:56:40', '2023-02-15 04:56:40'),
(339, 'en', 'our_awesome_partners', 'Our Awesome Partners\r\n', '2023-02-15 06:34:14', '2023-02-15 06:34:14'),
(340, 'en', 'you_have_subscribed_successfully', 'You have subscribed successfully.', '2023-02-15 07:16:05', '2023-02-15 07:16:05'),
(341, 'en', 'link', 'Link', '2023-02-15 19:11:23', '2023-02-15 19:11:23'),
(342, 'en', 'slug', 'Slug', '2023-02-15 19:11:23', '2023-02-15 19:11:23'),
(343, 'en', 'use_character_number_hypen_only', 'Use character, number, hypen only', '2023-02-15 19:11:23', '2023-02-15 19:11:23'),
(344, 'en', 'add_content', 'Add Content', '2023-02-15 19:11:23', '2023-02-15 19:11:23'),
(345, 'en', 'add_page_contents', 'Add page contents', '2023-02-15 19:11:23', '2023-02-15 19:11:23'),
(346, 'en', 'save_page', 'Save Page', '2023-02-15 19:11:23', '2023-02-15 19:11:23'),
(347, 'en', 'file_deleted_successfully', 'File deleted successfully', '2023-02-16 04:48:49', '2023-02-16 04:48:49'),
(348, 'en', 'cottage_has_been_inserted_successfully', 'Cottage has been inserted successfully', '2023-02-17 07:04:52', '2023-02-17 07:04:52'),
(349, 'en', 'edit_cottage_for', 'Edit Cottage for', '2023-02-17 20:01:57', '2023-02-17 20:01:57'),
(350, 'en', 'update_cottage', 'Update Cottage', '2023-02-17 20:01:58', '2023-02-17 20:01:58'),
(351, 'en', 'cottage_has_been_updated_successfully', 'Cottage has been updated successfully', '2023-02-17 20:02:17', '2023-02-17 20:02:17'),
(352, 'en', 'all_blog_posts', 'All blog posts', '2023-02-17 20:13:49', '2023-02-17 20:13:49'),
(353, 'en', 'category', 'Category', '2023-02-17 20:13:49', '2023-02-17 20:13:49'),
(354, 'en', 'service_has_been_inserted_successfully', 'Service has been inserted successfully', '2023-02-17 20:49:35', '2023-02-17 20:49:35'),
(355, 'en', 'edit_service_for', 'Edit service for', '2023-02-17 20:53:06', '2023-02-17 20:53:06'),
(356, 'en', 'update_service', 'Update service', '2023-02-17 20:53:06', '2023-02-17 20:53:06'),
(357, 'en', 'service_has_been_updated_successfully', 'Service has been updated successfully', '2023-02-17 20:53:17', '2023-02-17 20:53:17'),
(358, 'en', 'image_added_successfully', 'Image added successfully', '2023-02-17 22:44:34', '2023-02-17 22:44:34'),
(359, 'en', 'update_gallery_image', 'Update Gallery Image', '2023-02-17 22:46:56', '2023-02-17 22:46:56'),
(360, 'en', 'image_updated_successfully', 'Image updated successfully', '2023-02-17 22:46:59', '2023-02-17 22:46:59'),
(361, 'en', 'partner_deleted_successfully', 'Partner deleted successfully', '2023-02-17 22:49:19', '2023-02-17 22:49:19'),
(362, 'en', 'partner_added_successfully', 'Partner added successfully', '2023-02-17 22:50:22', '2023-02-17 22:50:22'),
(363, 'en', 'feedback_added_successfully', 'Feedback added successfully', '2023-02-17 23:25:08', '2023-02-17 23:25:08'),
(364, 'en', 'feedback_deleted_successfully', 'Feedback deleted successfully', '2023-02-17 23:25:14', '2023-02-17 23:25:14'),
(365, 'en', 'add_new_blog_category', 'Add New Blog Category', '2023-02-17 23:30:55', '2023-02-17 23:30:55'),
(366, 'en', 'blog_category_has_been_created_successfully', 'Blog category has been created successfully', '2023-02-17 23:31:58', '2023-02-17 23:31:58'),
(367, 'en', 'delete', 'Delete', '2023-02-17 23:31:58', '2023-02-17 23:31:58'),
(368, 'en', 'blog_information', 'Blog Information', '2023-02-17 23:32:55', '2023-02-17 23:32:55'),
(369, 'en', 'blog_title', 'Blog Title', '2023-02-17 23:32:55', '2023-02-17 23:32:55'),
(370, 'en', 'select_a_category', 'Select a category', '2023-02-17 23:32:55', '2023-02-17 23:32:55'),
(371, 'en', 'blog_images', 'Blog Images', '2023-02-17 23:32:55', '2023-02-17 23:32:55'),
(372, 'en', 'seo_information', 'SEO Information', '2023-02-17 23:32:55', '2023-02-17 23:32:55'),
(373, 'en', 'blog_has_been_created_successfully', 'Blog has been created successfully', '2023-02-17 23:35:58', '2023-02-17 23:35:58'),
(374, 'en', 'edit_blog_for', 'Edit blog for', '2023-02-17 23:40:55', '2023-02-17 23:40:55'),
(375, 'en', 'blog_has_been_updated_successfully', 'Blog has been updated successfully', '2023-02-17 23:41:17', '2023-02-17 23:41:17'),
(376, 'en', 'event_has_been_inserted_successfully', 'Event has been inserted successfully', '2023-02-18 01:16:34', '2023-02-18 01:16:34'),
(377, 'en', 'edit_event_for', 'Edit Event for', '2023-02-18 01:17:56', '2023-02-18 01:17:56'),
(378, 'en', 'update_event', 'Update event', '2023-02-18 01:17:56', '2023-02-18 01:17:56'),
(379, 'en', 'edit_page_for', 'Edit Page for', '2023-02-18 01:22:46', '2023-02-18 01:22:46'),
(380, 'en', 'update_content', 'Update Content', '2023-02-18 01:22:46', '2023-02-18 01:22:46'),
(381, 'en', 'update_page_contents', 'Update page contents', '2023-02-18 01:22:46', '2023-02-18 01:22:46'),
(382, 'en', 'update_page', 'Update Page', '2023-02-18 01:22:46', '2023-02-18 01:22:46'),
(383, 'en', 'update_currency', 'Update Currency', '2023-02-18 01:33:21', '2023-02-18 01:33:21'),
(384, 'en', 'exchange_rate', 'Exchange Rate', '2023-02-18 01:33:21', '2023-02-18 01:33:21'),
(385, 'en', 'currency_updated_successfully', 'Currency updated successfully', '2023-02-18 01:33:28', '2023-02-18 01:33:28'),
(386, 'en', 'all_subscribers', 'All Subscribers', '2023-02-18 01:38:25', '2023-02-18 01:38:25'),
(387, 'en', 'search_by_email', 'Search by email', '2023-02-18 01:38:25', '2023-02-18 01:38:25'),
(388, 'en', 'subscribed_at', 'Subscribed At', '2023-02-18 01:38:25', '2023-02-18 01:38:25'),
(389, 'en', 'subject', 'Subject', '2023-02-18 01:38:31', '2023-02-18 01:38:31'),
(390, 'en', 'email_subject_here', 'Email Subject here', '2023-02-18 01:38:32', '2023-02-18 01:38:32'),
(391, 'en', 'select_subscribers', 'Select subscribers', '2023-02-18 01:38:32', '2023-02-18 01:38:32'),
(392, 'en', 'content', 'Content', '2023-02-18 01:38:32', '2023-02-18 01:38:32'),
(393, 'en', 'send', 'Send', '2023-02-18 01:38:32', '2023-02-18 01:38:32'),
(394, 'en', 'staff_list', 'Staff List', '2023-02-18 01:38:35', '2023-02-18 01:38:35'),
(395, 'en', 'add_new_staff', 'Add New Staff', '2023-02-18 01:38:35', '2023-02-18 01:38:35'),
(396, 'en', 'role', 'Role', '2023-02-18 01:38:35', '2023-02-18 01:38:35'),
(397, 'en', 'role_list', 'Role List', '2023-02-18 01:38:39', '2023-02-18 01:38:39'),
(398, 'en', 'add_new_role', 'Add New Role', '2023-02-18 01:38:39', '2023-02-18 01:38:39'),
(399, 'en', 'profile_information_updated_successfully', 'Profile information updated successfully', '2023-02-18 01:41:23', '2023-02-18 01:41:23'),
(400, 'en', 'profile_avatar_updated_successfully', 'Profile avatar updated successfully', '2023-02-18 01:41:43', '2023-02-18 01:41:43'),
(401, 'en', 'your_booking_has_been_listed_please_wait_for_confirmation', 'Your booking has been listed, please wait for confirmation', '2023-02-18 01:42:57', '2023-02-18 01:42:57'),
(402, 'en', 'booking_details', 'Booking Details', '2023-02-18 01:45:31', '2023-02-18 01:45:31'),
(403, 'en', 'guest_details', 'Guest Details', '2023-02-18 01:45:31', '2023-02-18 01:45:31'),
(404, 'en', 'checkout', 'Checkout', '2023-02-18 01:45:31', '2023-02-18 01:45:31'),
(405, 'en', 'total_bill', 'Total Bill', '2023-02-18 01:45:31', '2023-02-18 01:45:31'),
(406, 'en', 'update_booking', 'Update Booking', '2023-02-18 01:45:31', '2023-02-18 01:45:31'),
(407, 'en', 'booking_update', 'Booking Update', '2023-02-18 01:45:35', '2023-02-18 01:45:35'),
(408, 'en', 'your_booking_status_has_been_updated_to__confirmed', 'Your booking status has been updated to - confirmed', '2023-02-18 01:45:36', '2023-02-18 01:45:36'),
(409, 'en', 'booking_update_yesort2', 'Booking Update: Yesort#2', '2023-02-18 01:45:36', '2023-02-18 01:45:36'),
(410, 'en', 'booking_has_been_updated_successfully', 'Booking has been updated successfully', '2023-02-18 01:45:36', '2023-02-18 01:45:36'),
(411, 'en', 'your_booking_status_has_been_updated_to__cancelled', 'Your booking status has been updated to - cancelled', '2023-02-18 01:45:44', '2023-02-18 01:45:44'),
(412, 'en', 'booking_update_yesort4', 'Booking Update: Yesort#4', '2023-02-18 01:45:44', '2023-02-18 01:45:44'),
(413, 'en', 'all_guests', 'All Guests', '2023-02-18 03:08:55', '2023-02-18 03:08:55'),
(414, 'en', 'confirmation', 'Confirmation', '2023-02-18 03:08:56', '2023-02-18 03:08:56'),
(415, 'en', 'continue_to_ban_this_guest', 'Continue to ban this guest?', '2023-02-18 03:08:56', '2023-02-18 03:08:56'),
(416, 'en', 'ban_guest', 'Ban Guest', '2023-02-18 03:08:56', '2023-02-18 03:08:56'),
(417, 'en', 'continue_to_unban_this_guest', 'Continue to unban this guest?', '2023-02-18 03:08:56', '2023-02-18 03:08:56'),
(418, 'en', 'unban_guest', 'Unban Guest', '2023-02-18 03:08:56', '2023-02-18 03:08:56'),
(419, 'en', 'update_translations', 'Update Translations', '2023-02-18 21:21:17', '2023-02-18 21:21:17'),
(420, 'en', 'search_by_key', 'Search by key', '2023-02-18 21:21:17', '2023-02-18 21:21:17'),
(421, 'en', 'language_key', 'Language Key', '2023-02-18 21:21:17', '2023-02-18 21:21:17'),
(422, 'en', 'translations', 'Translations', '2023-02-18 21:21:17', '2023-02-18 21:21:17'),
(423, 'en', 'back_to_login', 'Back to login\r\n', '2023-02-20 06:23:20', '2023-02-20 06:23:20'),
(424, 'en', 'we_have', 'We Have\r\n', '2023-02-20 06:23:20', '2023-02-20 06:23:20'),
(425, 'en', 'find_peace_here', 'Find Peace Here\r\n', '2023-02-20 06:23:20', '2023-02-20 06:23:20'),
(426, 'en', 'appreciations', 'Appreciations\r\n', '2023-02-20 06:23:20', '2023-02-20 06:23:20'),
(427, 'en', 'from_archive', 'From Archive\r\n', '2023-02-20 06:23:20', '2023-02-20 06:23:20'),
(428, 'en', 'recent_posts', 'Recent Posts\r\n', '2023-02-20 06:23:20', '2023-02-20 06:23:20'),
(429, 'en', 'connections', 'Connections\r\n', '2023-02-20 06:23:20', '2023-02-20 06:23:20'),
(430, 'en', 'we_provide', 'We Provide\r\n', '2023-02-20 06:23:20', '2023-02-20 06:23:20'),
(431, 'en', 'explore_more', 'Explore More', '2023-02-20 06:23:20', '2023-02-20 06:23:20'),
(432, 'en', 'only_customers_can_login_here', 'Only customers can login here', '2023-02-20 06:25:30', '2023-02-20 06:25:30'),
(433, 'en', 'ban_this_guest', 'Ban this guest', '2023-02-20 19:55:48', '2023-02-20 19:55:48'),
(434, 'bn', 'ban_this_guest', 'এই অতিথিকে নিষিদ্ধ করুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(435, 'bn', 'only_customers_can_login_here', 'শুধুমাত্র গ্রাহকরা এখানে লগইন করতে পারেন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(436, 'bn', 'back_to_login', 'প্রবেশ করতে পেছান', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(437, 'bn', 'we_have', 'আমাদের আছে', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(438, 'bn', 'find_peace_here', 'এখানে শান্তি খুঁজুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(439, 'bn', 'appreciations', 'প্রশংসা', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(440, 'bn', 'from_archive', 'আর্কাইভ থেকে', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(441, 'bn', 'recent_posts', 'সাম্প্রতিক পোস্ট', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(442, 'bn', 'connections', 'সংযোগ', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(443, 'bn', 'we_provide', 'আমরা প্রদান', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(444, 'bn', 'explore_more', 'আরো অন্বেষণ', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(445, 'bn', 'update_translations', 'অনুবাদ আপডেট করুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(446, 'bn', 'search_by_key', 'কী দ্বারা অনুসন্ধান করুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(447, 'bn', 'language_key', 'ভাষা কী', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(448, 'bn', 'translations', 'অনুবাদ', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(449, 'bn', 'confirmation', 'নিশ্চিতকরণ', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(450, 'bn', 'continue_to_ban_this_guest', 'এই অতিথিকে নিষিদ্ধ করা চালিয়ে যেতে চান?', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(451, 'bn', 'ban_guest', 'ব্যান গেস্ট', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(452, 'bn', 'continue_to_unban_this_guest', 'এই অতিথিকে নিষিদ্ধ করা চালিয়ে যেতে চান?', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(453, 'bn', 'unban_guest', 'নিষেধাজ্ঞামুক্ত অতিথি', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(454, 'bn', 'all_guests', 'সকল অতিথি', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(455, 'bn', 'your_booking_status_has_been_updated_to__cancelled', 'আপনার বুকিং স্থিতি আপডেট করা হয়েছে - বাতিল করা হয়েছে৷', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(456, 'bn', 'booking_update_yesort4', 'বুকিং আপডেট: Yesort#4', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(457, 'bn', 'your_booking_status_has_been_updated_to__confirmed', 'আপনার বুকিং স্ট্যাটাস আপডেট করা হয়েছে - নিশ্চিত করা হয়েছে', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(458, 'bn', 'booking_update_yesort2', 'বুকিং আপডেট: Yesort#2', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(459, 'bn', 'booking_has_been_updated_successfully', 'বুকিং সফলভাবে আপডেট করা হয়েছে', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(460, 'bn', 'booking_update', 'বুকিং আপডেট', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(461, 'bn', 'booking_details', 'বুকিং বিবরণ', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(462, 'bn', 'guest_details', 'অতিথির বিবরণ', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(463, 'bn', 'checkout', 'চেকআউট', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(464, 'bn', 'total_bill', 'মোট বিল', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(465, 'bn', 'update_booking', 'বুকিং আপডেট করুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(466, 'bn', 'your_booking_has_been_listed_please_wait_for_confirmation', 'আপনার বুকিং তালিকাভুক্ত করা হয়েছে, নিশ্চিতকরণের জন্য অপেক্ষা করুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(467, 'bn', 'profile_avatar_updated_successfully', 'প্রোফাইল অবতার সফলভাবে আপডেট করা হয়েছে৷', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(468, 'bn', 'profile_information_updated_successfully', 'প্রোফাইল তথ্য সফলভাবে আপডেট করা হয়েছে৷', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(469, 'bn', 'role_list', 'ভূমিকা তালিকা', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(470, 'bn', 'add_new_role', 'নতুন ভূমিকা যোগ করুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(471, 'bn', 'staff_list', 'কর্মীদের তালিকা', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(472, 'bn', 'add_new_staff', 'নতুন স্টাফ যোগ করুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(473, 'bn', 'role', 'ভূমিকা', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(474, 'bn', 'email_subject_here', 'ইমেল বিষয় এখানে', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(475, 'bn', 'select_subscribers', 'গ্রাহক নির্বাচন করুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(476, 'bn', 'content', 'বিষয়বস্তু', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(477, 'bn', 'send', 'পাঠান', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(478, 'bn', 'subject', 'বিষয়', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(479, 'bn', 'all_subscribers', 'সকল সদস্য', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(480, 'bn', 'search_by_email', 'ইমেল দ্বারা অনুসন্ধান করুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(481, 'bn', 'subscribed_at', 'সদস্যতা এ', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(482, 'bn', 'currency_updated_successfully', 'মুদ্রা সফলভাবে আপডেট করা হয়েছে', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(483, 'bn', 'update_currency', 'কারেন্সি আপডেট করুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(484, 'en', 'translations_updated_for_', 'Translations updated for ', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(485, 'bn', 'exchange_rate', 'বিনিময় হার', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(486, 'bn', 'edit_page_for', 'জন্য পৃষ্ঠা সম্পাদনা করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(487, 'bn', 'update_content', 'বিষয়বস্তু আপডেট করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(488, 'bn', 'update_page_contents', 'পৃষ্ঠা বিষয়বস্তু আপডেট', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(489, 'bn', 'update_page', 'পৃষ্ঠা আপডেট করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(490, 'bn', 'edit_event_for', 'এর জন্য ইভেন্ট সম্পাদনা করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(491, 'bn', 'update_event', 'ইভেন্ট আপডেট করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(492, 'bn', 'event_has_been_inserted_successfully', 'ইভেন্ট সফলভাবে সন্নিবেশ করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(493, 'bn', 'blog_has_been_updated_successfully', 'ব্লগ সফলভাবে আপডেট করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(494, 'bn', 'edit_blog_for', 'জন্য ব্লগ সম্পাদনা করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(495, 'bn', 'blog_has_been_created_successfully', 'ব্লগ সফলভাবে তৈরি করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(496, 'bn', 'blog_information', 'ব্লগ তথ্য', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(497, 'bn', 'blog_title', 'ব্লগ শিরোনাম', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(498, 'bn', 'select_a_category', 'একটি বিভাগ নির্বাচন করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(499, 'bn', 'blog_images', 'ব্লগ ইমেজ', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(500, 'bn', 'seo_information', 'এসইও তথ্য', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(501, 'bn', 'blog_category_has_been_created_successfully', 'ব্লগ বিভাগ সফলভাবে তৈরি করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(502, 'bn', 'delete', 'মুছে ফেলা', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(503, 'bn', 'add_new_blog_category', 'নতুন ব্লগ বিভাগ যোগ করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(504, 'bn', 'feedback_deleted_successfully', 'প্রতিক্রিয়া সফলভাবে মুছে ফেলা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(505, 'bn', 'feedback_added_successfully', 'প্রতিক্রিয়া সফলভাবে যোগ করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(506, 'bn', 'partner_added_successfully', 'অংশীদার সফলভাবে যোগ করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(507, 'bn', 'partner_deleted_successfully', 'অংশীদার সফলভাবে মুছে ফেলা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(508, 'bn', 'image_updated_successfully', 'ছবি সফলভাবে আপডেট করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(509, 'bn', 'update_gallery_image', 'গ্যালারি ইমেজ আপডেট করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(510, 'bn', 'image_added_successfully', 'ছবি সফলভাবে যোগ করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(511, 'bn', 'service_has_been_updated_successfully', 'পরিষেবা সফলভাবে আপডেট করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(512, 'bn', 'edit_service_for', 'এর জন্য পরিষেবা সম্পাদনা করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(513, 'bn', 'update_service', 'পরিষেবা আপডেট করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(514, 'bn', 'service_has_been_inserted_successfully', 'পরিষেবা সফলভাবে সন্নিবেশ করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(515, 'bn', 'all_blog_posts', 'সব ব্লগ পোস্ট', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(516, 'bn', 'category', 'শ্রেণী', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(517, 'bn', 'cottage_has_been_updated_successfully', 'কুটির সফলভাবে আপডেট করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(518, 'bn', 'update_cottage', 'কটেজ আপডেট করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(519, 'bn', 'edit_cottage_for', 'জন্য কটেজ সম্পাদনা করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(520, 'bn', 'cottage_has_been_inserted_successfully', 'কুটির সফলভাবে ঢোকানো হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(521, 'bn', 'file_deleted_successfully', 'ফাইল সফলভাবে মুছে ফেলা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(522, 'bn', 'link', 'লিঙ্ক', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(523, 'bn', 'slug', 'স্লাগ', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(524, 'bn', 'use_character_number_hypen_only', 'শুধুমাত্র অক্ষর, সংখ্যা, হাইপেন ব্যবহার করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(525, 'bn', 'add_content', 'বিষয়বস্তু যোগ করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(526, 'bn', 'add_page_contents', 'পৃষ্ঠা বিষয়বস্তু যোগ করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(527, 'bn', 'save_page', 'পাতা সংরক্ষণ', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(528, 'bn', 'you_have_subscribed_successfully', 'আপনি সফলভাবে সদস্যতা নিয়েছেন।', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(529, 'bn', 'our_awesome_partners', 'আমাদের দুর্দান্ত অংশীদার', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(530, 'bn', 'slider_image_added_successfully', 'স্লাইডার ছবি সফলভাবে যোগ করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(531, 'bn', 'slider_image_deleted_successfully', 'স্লাইডার ছবি সফলভাবে মুছে ফেলা হয়েছে৷', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(532, 'bn', 'feature_deleted_successfully', 'বৈশিষ্ট্য সফলভাবে মুছে ফেলা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(533, 'bn', 'feature_added_successfully', 'বৈশিষ্ট্য সফলভাবে যোগ করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(534, 'bn', 'successfully_logged_out', 'সফলভাবে লগ আউট', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(535, 'bn', 'successfully_logged_in', 'সফলভাবে লগ ইন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(536, 'bn', 'type', 'টাইপ', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(537, 'bn', 'sendmail', 'মেইল পাঠাও', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(538, 'bn', 'smtp', 'SMTP', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(539, 'bn', 'mail_host', 'মেল হোস্ট', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(540, 'bn', 'mail_port', 'মেইল পোর্ট', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(541, 'bn', 'mail_username', 'ব্যবহারকারীর নাম মেইল ​​করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(542, 'bn', 'mail_password', 'মেইল পাসওয়ার্ড', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(543, 'bn', 'mail_encryption', 'মেল এনক্রিপশন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(544, 'bn', 'mail_from_address', 'ঠিকানা থেকে মেইল', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(545, 'bn', 'mail_from_name', 'নাম থেকে মেল', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(546, 'bn', 'add_new_currency', 'নতুন মুদ্রা যোগ করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(547, 'bn', 'rate', 'হার', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(548, 'bn', 'symbol', 'প্রতীক', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(549, 'bn', 'cancel', 'বাতিল করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(550, 'bn', 'default_currency', 'ডিফল্ট মুদ্রা', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(551, 'bn', 'currency_list', 'মুদ্রা তালিকা', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(552, 'bn', 'add_currency', 'মুদ্রা যোগ করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(553, 'bn', 'currency_name', 'মুদ্রার নাম', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(554, 'bn', 'alignment', 'প্রান্তিককরণ', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(555, 'bn', '1_usd__', '1 USD =?', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(556, 'bn', 'currency_status_updated_successfully', 'মুদ্রার স্থিতি সফলভাবে আপডেট করা হয়েছে', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(557, 'bn', 'default_language_can_not_be_disbaled', 'ডিফল্ট ভাষা নিষ্ক্রিয় করা যাবে না', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(558, 'bn', 'default_language', 'নির্ধারিত ভাষা', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(559, 'bn', 'language_list', 'ভাষার তালিকা', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(560, 'bn', 'add_language', 'ভাষা যোগ করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(561, 'bn', 'code', 'কোড', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(562, 'bn', 'footer_info', 'পাদচরণ তথ্য', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(563, 'bn', 'about_text', 'টেক্সট সম্পর্কে', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(564, 'bn', 'copyright_text', 'কপিরাইট টেক্সট', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(565, 'bn', 'all_pages', 'সমস্ত পৃষ্ঠা', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(566, 'bn', 'add_new_page', 'নতুন পৃষ্ঠা যোগ করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(567, 'bn', 'url', 'URL', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(568, 'bn', 'actions', 'কর্ম', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(569, 'bn', 'add_gallery_image', 'গ্যালারি ছবি যোগ করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(570, 'bn', 'order', 'অর্ডার', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(571, 'bn', 'lower_orders_will_be_shown_first', 'নিম্ন আদেশ প্রথম দেখানো হবে', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(572, 'bn', 'galleries', 'গ্যালারি', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(573, 'bn', 'add_user_feedback', 'ব্যবহারকারীর প্রতিক্রিয়া যোগ করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(574, 'bn', 'type_user_name', 'ব্যবহারকারীর নাম টাইপ করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(575, 'bn', 'remark', 'মন্তব্য', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(576, 'bn', 'type_remark', 'টাইপ মন্তব্য', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(577, 'bn', 'add_partner', 'অংশীদার যোগ করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(578, 'bn', 'our_partners', 'আমাদের অংশীদারদের', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(579, 'bn', 'add_top_feature', 'শীর্ষ বৈশিষ্ট্য যোগ করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(580, 'bn', 'free_wifi', 'বিনামূল্যে ওয়াইফাই', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(581, 'bn', 'feature_image', 'ফিচার ইমেজ', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(582, 'bn', 'hero_section', 'হিরো সেকশন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(583, 'bn', 'top_features', 'শীর্ষ বৈশিষ্ট্য', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(584, 'bn', 'add_slider', 'স্লাইডার যোগ করুন', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(585, 'bn', 'ttile', 'টালি', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(586, 'bn', 'choose_the_best_resort_for_weekend', 'উইকএন্ডের জন্য সেরা রিসর্ট বেছে নিন', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(587, 'bn', 'slider_image', 'স্লাইডার ইমেজ', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(588, 'bn', 'hero_sliders', 'হিরো স্লাইডার', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(589, 'bn', 'slider', 'স্লাইডার', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(590, 'bn', 'search_by_title', 'শিরোনাম দ্বারা অনুসন্ধান করুন', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(591, 'bn', 'title', 'শিরোনাম', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(592, 'bn', 'start_date', 'শুরুর তারিখ', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(593, 'bn', 'end_date', 'শেষ তারিখ', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(594, 'bn', 'event_title', 'ইভেন্ট শিরোনাম', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(595, 'bn', 'select_dates', 'তারিখ নির্বাচন করুন', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(596, 'bn', '10am__6pm', 'সকাল ১০টা থেকে সন্ধ্যা ৬টা', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(597, 'bn', 'fee', 'ফি', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(598, 'bn', 'event_images', 'ইভেন্ট ইমেজ', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(599, 'bn', 'event_description', 'ঘটনা বিবরণী', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(600, 'bn', 'save_event', 'ইভেন্ট সংরক্ষণ করুন', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(601, 'bn', 'image', 'ছবি', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(602, 'bn', 'general_information', 'সাধারণ জ্ঞাতব্য', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(603, 'bn', 'service_name', 'কাজের নাম', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(604, 'bn', 'short_description', 'ছোট বিবরণ', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(605, 'bn', 'service_images', 'সেবা ইমেজ', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(606, 'bn', 'service_description', 'সেবা বর্ণনা', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(607, 'bn', 'seo_meta_tags', 'এসইও মেটা ট্যাগ', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(608, 'bn', 'meta_description', 'মেটা বর্ণনা', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(609, 'bn', 'save_service', 'সেভ সার্ভিস', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(610, 'bn', 'meta_title', 'মেটা শিরোনাম', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(611, 'bn', 'meta_image', 'মেটা ইমেজ', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(612, 'bn', 'save_cottage', 'কটেজ সংরক্ষণ করুন', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(613, 'bn', 'cottage_name', 'কুটির নাম', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(614, 'bn', 'price', 'দাম', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(615, 'bn', 'timeline', 'টাইমলাইন', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(616, 'bn', 'number_of_rooms', 'আমি আজ খুশি', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(617, 'bn', 'number_of_beds', 'শয্যা সংখ্যা', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(618, 'bn', 'size', 'আকার', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(619, 'bn', 'eg_250_square_feet', 'যেমন 250 বর্গফুট', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(620, 'bn', 'unpublished', 'অপ্রকাশিত', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(621, 'bn', 'youtube_video_link', 'ইউটিউব ভিডিও লিংক', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(622, 'bn', 'httpsyoutubecomabcde', 'https:///youtube.com/abcde', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(623, 'bn', 'thumbnail_image', 'থাম্বনেইল ছবি', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(624, 'bn', 'gallery_images', 'গ্যালারি ইমেজ', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(625, 'bn', 'description', 'বর্ণনা', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(626, 'bn', 'error_code', 'ভুল সংকেত', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(627, 'bn', 'login_to_your_account', 'আপনার অ্যাকাউন্টে লগ ইন করুন.', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(628, 'bn', 'sorry_for_the_inconvenience_but_were_working_on_it', 'অসুবিধার জন্য দুঃখিত, কিন্তু আমরা এটা নিয়ে কাজ করছি।', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(629, 'bn', 'pending', 'বিচারাধীন', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(630, 'bn', 'confirmed', 'নিশ্চিত করা হয়েছে', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(631, 'bn', 'cancelled', 'বাতিল', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(632, 'bn', 'cottage', 'কুটির', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(633, 'bn', 'user', 'ব্যবহারকারী', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(634, 'bn', 'all_bookings', 'সব বুকিং', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(635, 'bn', 'status_updated_successfully', 'স্থিতি সফলভাবে আপডেট করা হয়েছে', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(636, 'bn', 'published', 'প্রকাশিত হয়েছে', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(637, 'bn', 'best', 'সেরা', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(638, 'bn', '0_file_selected', '0 ফাইল নির্বাচন করা হয়েছে৷', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(639, 'bn', 'uploaded_files', 'আপলোড করা ফাইল', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(640, 'bn', 'no_files_found', 'কোন ফাইল পাওয়া যায়নি', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(641, 'bn', 'select', 'নির্বাচন করুন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(642, 'bn', 'upload_or_choose_files', 'আপলোড বা ফাইল নির্বাচন করুন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(643, 'bn', 'check_in__check_out_time', 'চেক ইন - চেক আউট সময়', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(644, 'bn', 'check_in_time', 'সময় পরীক্ষা', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(645, 'bn', 'check_out_time', 'উচ্চ স্বরে পড়া', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(646, 'bn', 'booking_code_prefix', 'বুকিং কোড উপসর্গ', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(647, 'bn', 'features_activation', 'বৈশিষ্ট্য সক্রিয়করণ', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(648, 'bn', 'forcefully_https_redirection', 'জোরপূর্বক HTTPS পুনর্নির্দেশ', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(649, 'bn', 'settings_updated_successfully', 'সেটিংস সফলভাবে আপডেট হয়েছে৷', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(650, 'bn', 'something_went_wrong', 'কিছু ভুল হয়েছে', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(651, 'bn', 'loginregistration_with', 'সাথে লগইন/নিবন্ধন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(652, 'bn', 'verify_registration_with', 'দিয়ে নিবন্ধন যাচাই করুন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(653, 'bn', 'disabled', 'অক্ষম', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(654, 'bn', 'system_name', 'সিস্টেমের নাম', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(655, 'bn', 'admin_panel_logo', 'অ্যাডমিন প্যানেল লোগো', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(656, 'bn', 'choose_files', 'ফাইল বেছে নিন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(657, 'bn', 'system_timezone', 'সিস্টেম টাইমজোন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(658, 'bn', 'login__registration_configuration', 'লগইন এবং রেজিস্ট্রেশন কনফিগারেশন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(659, 'bn', 'your_profile_has_been_updated_successfully', 'আপনার প্রোফাইল সফলভাবে আপডেট করা হয়েছে!', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(660, 'bn', 'new_password', 'নতুন পাসওয়ার্ড', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(661, 'bn', 'save', 'সংরক্ষণ', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(662, 'bn', 'currency_configuration', 'মুদ্রা কনফিগারেশন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(663, 'bn', 'cost', 'খরচ', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(664, 'bn', 'total_booking', 'মোট বুকিং', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(665, 'bn', 'options', 'অপশন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(666, 'bn', 'rating', 'রেটিং', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(667, 'bn', 'view', 'দেখুন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(668, 'bn', 'events__meetings', 'ইভেন্ট এবং মিটিং', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(669, 'bn', 'smtp_configuration', 'SMTP কনফিগারেশন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(670, 'bn', 'language_settings', 'ভাষা ব্যাবস্থা', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(671, 'bn', 'guests', 'অতিথিরা', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(672, 'bn', 'facebook_link', 'ফেসবুক লিংক', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(673, 'bn', 'twitter_link', 'টুইটার লিঙ্ক', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(674, 'bn', 'instagram_link', 'ইনস্টাগ্রাম লিঙ্ক', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(675, 'bn', 'linkedin_link', 'লিঙ্কডইন লিঙ্ক', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(676, 'bn', 'header_logo', 'হেডার লোগো', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(677, 'bn', 'header_logo_dark', 'হেডার লোগো গাঢ়', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(678, 'bn', 'header_setting', 'হেডার সেটিং', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(679, 'bn', 'helpline_number', 'হেল্পলাইন নম্বর', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(680, 'bn', 'search_guest_by_name', 'নাম দ্বারা অতিথি খুঁজুন..', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(681, 'bn', 'logout', 'প্রস্থান', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(682, 'bn', 'manage_guests', 'অতিথিদের পরিচালনা করুন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(683, 'bn', 'promotions', 'প্রচার', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(684, 'bn', 'suscribers', 'সাবস্ক্রাইবার', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(685, 'bn', 'send_emails', 'ইমেইল পাঠান', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(686, 'bn', 'blog_system', 'ব্লগ সিস্টেম', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(687, 'bn', 'add_new_blog', 'নতুন ব্লগ যোগ করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(688, 'bn', 'blog_categories', 'ব্লগ বিভাগ', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(689, 'bn', 'media_gallery', 'মিডিয়া গ্যালারি', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(690, 'bn', 'manage_website', 'ওয়েবসাইট পরিচালনা করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(691, 'bn', 'header', 'হেডার', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(692, 'bn', 'homepage', 'হোমপেজ', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(693, 'bn', 'pages', 'পাতা', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(694, 'bn', 'footer', 'ফুটার', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(695, 'bn', 'seo', 'এসইও', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(696, 'bn', 'manage_system', 'সিস্টেম পরিচালনা করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(697, 'bn', 'general_settings', 'সাধারণ সেটিংস', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(698, 'bn', 'languages', 'ভাষা', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(699, 'bn', 'currency', 'মুদ্রা', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(700, 'bn', 'smtp_settings', 'SMTP সেটিংস', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(701, 'bn', 'add_new_cottage', 'নতুন কটেজ যোগ করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(702, 'bn', 'new', 'নতুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(703, 'bn', 'add_new_service', 'নতুন পরিষেবা যোগ করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(704, 'bn', 'add_new_event', 'নতুন ইভেন্ট যোগ করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(705, 'bn', 'all_events', 'সমস্ত ইভেন্ট', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(706, 'bn', 'manage_staffs', 'স্টাফ পরিচালনা করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(707, 'bn', 'all_staffs', 'সকল স্টাফ', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(708, 'bn', 'roles', 'ভূমিকা', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(709, 'bn', 'file', 'ফাইল', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(710, 'bn', 'files', 'নথি পত্র', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(711, 'bn', 'upload_paused', 'আপলোড বিরাম দেওয়া হয়েছে৷', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(712, 'bn', 'uploading', 'আপলোড হচ্ছে', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(713, 'bn', 'adding_more_files', 'আরো ফাইল যোগ করা হচ্ছে', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(714, 'bn', 'drop_files_here', 'এখানে ফাইল ড্রপ', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(715, 'bn', 'resume_upload', 'আপলোড পুনরায় শুরু করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(716, 'bn', 'pause_upload', 'আপলোড বিরতি', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(717, 'bn', 'file_selected', 'ফাইল নির্বাচন করা হয়েছে', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(718, 'bn', 'files_selected', 'ফাইল নির্বাচন করা হয়েছে', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(719, 'bn', 'add_more_files', 'আরো ফাইল যোগ করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(720, 'bn', 'retry_upload', 'আপলোড পুনরায় চেষ্টা করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(721, 'bn', 'cancel_upload', 'আপলোড বাতিল করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(722, 'bn', 'are_you_sure', 'তুমি কি নিশ্চিত?', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(723, 'bn', 'all_data_related_to_this_may_get_deleted', 'এর সাথে সম্পর্কিত সমস্ত ডেটা মুছে যেতে পারে।', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(724, 'bn', 'still_want_to_delete', 'তবুও মুছতে চাই!', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(725, 'bn', 'yes_delete', 'হ্যাঁ, মুছুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(726, 'bn', 'file_info', 'ফাইল তথ্য', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(727, 'bn', 'nothing_selected', 'কিছুই নির্বাচন করা হয়নি', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(728, 'bn', 'please_choose_options', 'অনুগ্রহ করে বিকল্প বেছে নিন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(729, 'bn', 'no_data_found', 'কোন তথ্য পাওয়া যায়নি', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(730, 'bn', 'choose_file', 'ফাইল পছন্দ কর', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(731, 'bn', 'browse', 'ব্রাউজ করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(732, 'bn', 'upload_complete', 'আপলোড সম্পূর্ণ', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(733, 'bn', 'processing', 'প্রক্রিয়াকরণ', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(734, 'bn', 'complete', 'সম্পূর্ণ', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(735, 'bn', 'add_new_files', 'নতুন ফাইল যোগ করুন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(736, 'bn', 'media_files', 'মিডিয়া ফাইল', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(737, 'bn', 'search_by_name', 'নাম দ্বারা অনুসন্ধান', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(738, 'bn', 'quick_links', 'দ্রুত লিঙ্ক', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(739, 'bn', 'contact_us', 'যোগাযোগ করুন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(740, 'bn', 'blog_details', 'ব্লগ বিস্তারিত', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(741, 'bn', 'category_list', 'বিভাগ তালিকা', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(742, 'bn', 'recent_post', 'সাম্প্রতিক পোস্ট', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(743, 'bn', 'login_with_your_account', 'আপনার অ্যাকাউন্ট দিয়ে লগইন করুন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(744, 'bn', 'features', 'বৈশিষ্ট্য', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(745, 'bn', 'our_top_features', 'আমাদের শীর্ষ বৈশিষ্ট্য', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(746, 'bn', 'all_cottages', 'সমস্ত কটেজ', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(747, 'bn', 'all_services', 'সমস্ত পরিষেবা', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(748, 'bn', 'our_best_services', 'আমাদের সেরা সেবা', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(749, 'bn', 'see_more', 'আরো দেখুন', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(750, 'bn', 'testimonials', 'প্রশংসাপত্র', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(751, 'bn', 'what_client_says', 'ক্লায়েন্ট কি বলে', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(752, 'bn', 'browse_our_gallery', 'আমাদের গ্যালারি ব্রাউজ করুন', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(753, 'bn', 'all_blogs', 'সমস্ত ব্লগ', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(754, 'bn', 'latest_news__blogs', 'সর্বশেষ খবর এবং ব্লগ', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(755, 'bn', 'our_blogs', 'আমাদের ব্লগ', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(756, 'bn', 'partners', 'অংশীদার', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(757, 'bn', 'our_awesome_', 'আমাদের অসাধারণ', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(758, 'bn', 'reset_your_account', 'আপনার অ্যাকাউন্ট রিসেট করুন', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(759, 'bn', 'send_reset_code', 'রিসেট কোড পাঠান', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(760, 'bn', 'email_address', 'ইমেইল ঠিকানা', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(761, 'bn', 'back_to_login_', 'প্রবেশ করতে পেছান', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(762, 'bn', 'registration', 'নিবন্ধন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(763, 'bn', 'create_your_account', 'আপনার একাউন্ট তৈরী করুন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(764, 'bn', 'full_name', 'পুরো নাম', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(765, 'bn', 'password', 'পাসওয়ার্ড', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(766, 'bn', 'remember_me', 'আমাকে মনে কর', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(767, 'bn', 'dont_have_an_account', 'একটি অ্যাকাউন্ট নেই?', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(768, 'bn', 'register', 'নিবন্ধন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(769, 'bn', 'confirm_password', 'পাসওয়ার্ড নিশ্চিত করুন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(770, 'bn', 'i_agree_with_the_terms__services', 'আমি শর্তাবলী এবং পরিষেবার সাথে একমত।', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(771, 'bn', 'already_have_an_account', 'ইতিমধ্যে একটি সদস্যপদ আছে?', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(772, 'bn', 'set_new_password', 'নতুন পাসওয়ার্ড সেট করুন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(773, 'bn', 'set_new_password_for_your_account', 'আপনার অ্যাকাউন্টের জন্য নতুন পাসওয়ার্ড সেট করুন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(774, 'bn', 'verification_code', 'যাচাইকরণ কোড', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(775, 'bn', 'verification', 'প্রতিপাদন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(776, 'bn', 'verify_your_account', 'আপনার অ্যাকাউন্ট যাচাই করুন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(777, 'bn', 'did_not_get_a_code', 'একটা কোড পাননি?', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(778, 'bn', 'resend', 'আবার পাঠান', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(779, 'bn', 'verify', 'যাচাই করুন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(780, 'bn', 'events', 'ঘটনা', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(781, 'bn', 'event_details', 'অনুষ্ঠানের বিবরণ', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(782, 'bn', 'event_information', 'ইভেন্ট তথ্য', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(783, 'bn', 'event_date', 'ইভেন্ট তারিখ', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(784, 'bn', 'event_time', 'ইভেন্ট সময়', '2023-02-21 06:34:10', '2023-02-21 06:34:10'),
(785, 'bn', 'event_location', 'ইভেন্টের অবস্থান', '2023-02-21 06:34:10', '2023-02-21 06:34:10'),
(786, 'bn', 'event_cost', 'ইভেন্ট খরচ', '2023-02-21 06:34:10', '2023-02-21 06:34:10'),
(787, 'bn', 'read_more', 'আরও পড়ুন', '2023-02-21 06:34:10', '2023-02-21 06:34:10'),
(788, 'bn', 'blogs', 'ব্লগ', '2023-02-21 06:34:10', '2023-02-21 06:34:10'),
(789, 'bn', 'gallery', 'গ্যালারি', '2023-02-21 06:34:10', '2023-02-21 06:34:10'),
(790, 'bn', 'other_cottages', 'অন্যান্য কটেজ', '2023-02-21 06:34:10', '2023-02-21 06:34:10'),
(791, 'bn', 'this_cottage_is_unavailable_in_selected_dates', 'এই কটেজটি নির্বাচিত তারিখে অনুপলব্ধ', '2023-02-21 06:34:10', '2023-02-21 06:34:10'),
(792, 'bn', 'this_cottage_is_available_for_booking', 'এই কটেজ বুকিং জন্য উপলব্ধ', '2023-02-21 06:34:10', '2023-02-21 06:34:10'),
(793, 'bn', 'additional_info', 'অতিরিক্ত তথ্য', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(794, 'bn', 'booking_summary', 'বুকিং সারাংশ', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(795, 'bn', 'order_info', 'অর্ডার তথ্য', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(796, 'bn', 'order_pay_summary', 'অর্ডার পে সারাংশ', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(797, 'bn', 'stay', 'থাকা', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(798, 'bn', 'nights', 'রাত্রি', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(799, 'bn', 'back', 'পেছনে', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(800, 'bn', 'your_details', 'আপনার বিবরণ', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(801, 'bn', 'thanks_for_your_booking_we_have_successfully_listed_it_and_will_contact_you_soon', 'আপনার বুকিং জন্য ধন্যবাদ. আমরা এটি সফলভাবে তালিকাভুক্ত করেছি এবং শীঘ্রই আপনার সাথে যোগাযোগ করব৷', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(802, 'bn', 'cottage_details', 'কুটির বিবরণ', '2023-02-21 06:34:10', '2023-02-21 06:38:56'),
(803, 'bn', 'our_other_cottages', 'আমাদের অন্যান্য কটেজ', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(804, 'bn', 'best_cottages', 'সেরা কটেজ', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(805, 'bn', 'our_best_cottages', 'আমাদের সেরা কটেজ', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(806, 'bn', 'cottages', 'কটেজ', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(807, 'bn', 'we_have_some_wonderful_cottages_ready_for_you_here_are_plenty_of_options_when_it_comes_to_cottages_to_rent_for_a_weekend_break_or_a_healthy_vacation', 'আমরা আপনার জন্য কিছু চমৎকার কটেজ প্রস্তুত আছে. সপ্তাহান্তে বিরতি বা স্বাস্থ্যকর অবকাশের জন্য কটেজ ভাড়া করার জন্য এখানে প্রচুর বিকল্প রয়েছে।', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(808, 'bn', 'please_login_to_continue', 'অবিরত লগ ইন করুন', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(809, 'bn', 'welcome_to_customer_dashboard', 'গ্রাহক ড্যাশবোর্ডে স্বাগতম', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(810, 'bn', 'recent_bookings', 'সাম্প্রতিক বুকিং', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(811, 'bn', 'log_out', 'প্রস্থান', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(812, 'bn', 'updated_profile', 'আপডেট করা প্রোফাইল', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(813, 'bn', 'my_wishlist', 'আমার ইচ্ছাগুলি', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(814, 'bn', 'dashboard', 'ড্যাশবোর্ড', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(815, 'bn', 'booking_date', 'বুকিং তারিখ', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(816, 'bn', 'staying_nights', 'রাত্রি যাপন', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(817, 'bn', 'total_cost', 'মোট খরচ', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(818, 'bn', 'status', 'স্ট্যাটাস', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(819, 'bn', 'sl', 'S/L', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(820, 'bn', 'action', 'কর্ম', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(821, 'bn', 'booking_code', 'সংরক্ষন কোড', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(822, 'bn', 'learn_more', 'আরও জানুন', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(823, 'bn', 'best_services', 'সেরা সেবা', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(824, 'bn', 'service_details', 'পরিষেবার বিবরণ', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(825, 'bn', 'services', 'সেবা', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(826, 'bn', 'forgot_password', 'পাসওয়ার্ড ভুলে গেছেন', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(827, 'bn', 'wishlist', 'ইচ্ছেতালিকা', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(828, 'bn', 'enter_name', 'নাম লিখুন', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(829, 'bn', 'enter_email', 'ইমেইল প্রদান করুন', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(830, 'bn', 'name', 'নাম', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(831, 'bn', 'email', 'ইমেইল', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(832, 'bn', 'phone', 'ফোন', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(833, 'bn', 'address', 'ঠিকানা', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(834, 'bn', 'your_address', 'আপনার ঠিকানা', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(835, 'bn', 'your_name', 'তোমার নাম', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(836, 'bn', 'your_email', 'তোমার ইমেইল', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(837, 'bn', 'your_phone', 'তোমার ফোন', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(838, 'bn', 'enter_phone_no', 'ফোন নম্বর লিখুন', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(839, 'bn', 'update', 'হালনাগাদ', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(840, 'bn', 'update_password', 'পাসওয়ার্ড আপডেট করুন', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(841, 'bn', 'your_password', 'আপনার পাসওয়ার্ড', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(842, 'bn', 'password_confirmation', 'পাসওয়ার্ড নিশ্চিতকরণ', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(843, 'bn', 'avatar', 'অবতার', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(844, 'bn', 'update_avatar', 'অবতার আপডেট করুন', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(845, 'bn', 'discover_more', 'আরও আবিষ্কার কর', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(846, 'bn', 'rooms', 'রুম', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(847, 'bn', 'beds', 'শয্যা', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(848, 'bn', 'book_now', 'এখন বুক করুন', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(849, 'bn', 'check_in', 'চেক ইন', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(850, 'bn', 'adults', 'প্রাপ্তবয়স্কদের', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(851, 'bn', 'search', 'অনুসন্ধান করুন', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(852, 'bn', 'children', 'শিশুরা', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(853, 'bn', 'night', 'রাত্রি', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(854, 'bn', 'load_more', 'আর ঢুকাও', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(855, 'bn', 'room_description', 'রুম বিবরণ', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(856, 'bn', 'check_availability', 'গ্রহণযোগ্যতা যাচাই', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(857, 'bn', 'check_out', 'চেক আউট', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(858, 'bn', 'out', 'আউট', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(859, 'bn', 'verification_has_been_successful', 'যাচাইকরণ সফল হয়েছে', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(860, 'bn', 'login', 'প্রবেশ করুন', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(861, 'bn', 'profile', 'প্রোফাইল', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(862, 'bn', 'home', 'বাড়ি', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(863, 'bn', 'about', 'সম্পর্কিত', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(864, 'bn', 'my_profile', 'আমার প্রোফাইল', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(865, 'bn', 'update_profile', 'প্রফাইল হালনাগাদ', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(866, 'bn', 'my_bookings', 'আমার বুকিং', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(867, 'bn', 'bookings', 'বুকিং', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(868, 'bn', 'translations_updated_for_', 'এর জন্য অনুবাদ আপডেট করা হয়েছে', '2023-02-21 06:39:15', '2023-02-21 06:39:15'),
(869, 'en', 'language_changed_to_', 'Language changed to ', '2023-02-21 06:48:33', '2023-02-21 06:48:33'),
(870, 'hi', 'language_changed_to_', 'Language changed to', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(871, 'hi', 'translations_updated_for_', 'Translations updated for', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(872, 'hi', 'ban_this_guest', 'Ban this guest', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(873, 'hi', 'only_customers_can_login_here', 'Only customers can login here', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(874, 'hi', 'back_to_login', 'Back to login', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(875, 'hi', 'we_have', 'We Have', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(876, 'hi', 'find_peace_here', 'Find Peace Here', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(877, 'hi', 'appreciations', 'Appreciations', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(878, 'hi', 'from_archive', 'From Archive', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(879, 'hi', 'recent_posts', 'Recent Posts', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(880, 'hi', 'connections', 'Connections', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(881, 'hi', 'we_provide', 'We Provide', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(882, 'hi', 'explore_more', 'Explore More', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(883, 'hi', 'update_translations', 'Update Translations', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(884, 'hi', 'search_by_key', 'Search by key', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(885, 'hi', 'language_key', 'Language Key', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(886, 'hi', 'translations', 'Translations', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(887, 'hi', 'confirmation', 'Confirmation', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(888, 'hi', 'continue_to_ban_this_guest', 'Continue to ban this guest?', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(889, 'hi', 'ban_guest', 'Ban Guest', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(890, 'hi', 'continue_to_unban_this_guest', 'Continue to unban this guest?', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(891, 'hi', 'unban_guest', 'Unban Guest', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(892, 'hi', 'all_guests', 'All Guests', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(893, 'hi', 'your_booking_status_has_been_updated_to__cancelled', 'Your booking status has been updated to - cancelled', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(894, 'hi', 'booking_update_yesort4', 'Booking Update: Yesort#4', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(895, 'hi', 'your_booking_status_has_been_updated_to__confirmed', 'Your booking status has been updated to - confirmed', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(896, 'hi', 'booking_update_yesort2', 'Booking Update: Yesort#2', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(897, 'hi', 'booking_has_been_updated_successfully', 'Booking has been updated successfully', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(898, 'hi', 'booking_update', 'Booking Update', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(899, 'hi', 'booking_details', 'Booking Details', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(900, 'hi', 'guest_details', 'Guest Details', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(901, 'hi', 'checkout', 'Checkout', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(902, 'hi', 'total_bill', 'Total Bill', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(903, 'hi', 'update_booking', 'Update Booking', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(904, 'hi', 'your_booking_has_been_listed_please_wait_for_confirmation', 'Your booking has been listed, please wait for confirmation', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(905, 'hi', 'profile_avatar_updated_successfully', 'Profile avatar updated successfully', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(906, 'hi', 'profile_information_updated_successfully', 'Profile information updated successfully', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(907, 'hi', 'role_list', 'Role List', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(908, 'hi', 'add_new_role', 'Add New Role', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(909, 'hi', 'staff_list', 'Staff List', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(910, 'hi', 'add_new_staff', 'Add New Staff', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(911, 'hi', 'role', 'Role', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(912, 'hi', 'email_subject_here', 'Email Subject here', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(913, 'hi', 'select_subscribers', 'Select subscribers', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(914, 'hi', 'content', 'Content', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(915, 'hi', 'send', 'Send', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(916, 'hi', 'subject', 'Subject', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(917, 'hi', 'all_subscribers', 'All Subscribers', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(918, 'hi', 'search_by_email', 'Search by email', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(919, 'hi', 'subscribed_at', 'Subscribed At', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(920, 'en', 'event_has_been_updated_successfully', 'Event has been updated successfully', '2023-02-21 15:44:54', '2023-02-21 15:44:54'),
(921, 'en', 'admin', 'Admin', '2023-02-21 16:17:15', '2023-02-21 16:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `file_original_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `extension` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'customer',
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_email_verificiation_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` int(20) DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` double(8,2) NOT NULL DEFAULT 0.00,
  `banned` tinyint(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `provider_id`, `user_type`, `role_id`, `name`, `email`, `email_verified_at`, `phone_verified_at`, `verification_code`, `new_email_verificiation_code`, `password`, `remember_token`, `avatar`, `phone`, `balance`, `banned`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'admin', NULL, 'Admin', 'admin@example.com', '2020-11-25 04:11:28', NULL, NULL, NULL, '$2y$10$.La9wpRg/JRTpbxxvwVscevggr7T2Ava0CPAnI9Jm7FG81Kg/r9CG', '2zIiiao6YBJlkFrcIYtsMsqSmPfINAHx3l7PcQc4wduqvTKo1cCMCSk4A7CF', NULL, NULL, 0.00, 0, '2020-11-25 04:04:28', '2023-02-18 15:15:20', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category_translations`
--
ALTER TABLE `blog_category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cottages`
--
ALTER TABLE `cottages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cottage_translations`
--
ALTER TABLE `cottage_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_translations`
--
ALTER TABLE `event_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_translations`
--
ALTER TABLE `service_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_category_translations`
--
ALTER TABLE `blog_category_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_translations`
--
ALTER TABLE `blog_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cottages`
--
ALTER TABLE `cottages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cottage_translations`
--
ALTER TABLE `cottage_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_translations`
--
ALTER TABLE `event_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_translations`
--
ALTER TABLE `service_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=922;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
