-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2018 at 05:45 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digikala`
--
CREATE DATABASE IF NOT EXISTS `digikala` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `digikala`;

-- --------------------------------------------------------

--
-- Table structure for table `categoryes`
--

CREATE TABLE `categoryes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `href` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `ram` int(11) NOT NULL,
  `size` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categoryes`
--

INSERT INTO `categoryes` (`id`, `name`, `parent_id`, `user_id`, `href`, `updated_at`, `created_at`, `type`, `ram`, `size`) VALUES
(1, 'Title1', 0, 53, '#', '2018-04-01 01:37:29', '2018-04-01 01:37:29', 'ram', 0, ''),
(2, 'title2Title2', 0, 53, '#', '2018-04-01 01:37:29', '2018-04-01 01:37:29', 'size', 0, ''),
(3, 'title3', 1, 53, '', '2018-04-01 01:37:29', '2018-04-01 01:37:29', '', 0, ''),
(4, 'title4', 2, 53, '', '2018-04-01 01:37:29', '2018-04-01 01:37:29', '', 0, ''),
(5, 'title5', 2, 53, '', '2018-04-01 01:37:29', '2018-04-01 01:37:29', '', 0, ''),
(6, 'title6', 2, 53, '#', '2018-04-01 01:37:29', '2018-04-01 01:37:29', '', 0, ''),
(7, 'title7', 6, 53, '#', '2018-04-01 01:37:29', '2018-04-01 01:37:29', '', 0, ''),
(16, 'menu1', 1, 53, '#', '2018-04-01 01:52:02', '2018-04-01 01:52:02', '', 1, '2'),
(17, 'menu2', 1, 53, '#', '2018-04-01 01:52:12', '2018-04-01 01:52:12', '', 1, '1'),
(18, 'Sub_1', 2, 53, 'M', '2018-04-01 01:58:03', '2018-04-01 01:58:03', '', 0, ''),
(19, 'Sub4', 2, 53, 'http://127.0.0.1:8000/add_product', '2018-04-01 01:58:51', '2018-04-01 01:58:51', '', 0, ''),
(20, 'parent4', 4, 53, '#', '2018-04-01 02:45:41', '2018-04-01 02:45:41', '', 0, ''),
(21, 'Sub4_1', 19, 53, 'http://127.0.0.1:8000/add_product', '2018-04-01 02:46:06', '2018-04-01 02:46:06', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `CodeColor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `CodeColor`) VALUES
(1, 'blue', '#008eff'),
(2, 'red', '#ff0000'),
(3, 'black', '#000\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `company_names`
--

CREATE TABLE `company_names` (
  `id` int(11) NOT NULL,
  `fa_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `en_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_names`
--

INSERT INTO `company_names` (`id`, `fa_name`, `en_name`) VALUES
(1, 'سونی', 'Sony'),
(2, 'اپل', 'Apple');

-- --------------------------------------------------------

--
-- Table structure for table `data_table`
--

CREATE TABLE `data_table` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_table`
--

INSERT INTO `data_table` (`id`, `name`, `user_id`, `updated_at`, `created_at`) VALUES
(1, 'Mahdi', 53, '2018-03-28 05:02:31', '2018-03-28 05:02:31'),
(2, 'Mahdi2', 53, '2018-03-28 05:12:52', '2018-03-28 05:12:52'),
(4, 'Mahdi4', 53, '2018-03-28 05:19:11', '2018-03-28 05:19:11'),
(6, 'Mahdi', 53, '2018-03-28 05:10:23', '2018-03-28 05:10:23'),
(7, 'Mahdi7', 53, '2018-03-28 05:43:51', '2018-03-28 05:43:51');

-- --------------------------------------------------------

--
-- Table structure for table `filter_name`
--

CREATE TABLE `filter_name` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filter_name`
--

INSERT INTO `filter_name` (`id`, `title`, `user_id`) VALUES
(1, 'Product Name', '1'),
(2, 'Model', '1');

-- --------------------------------------------------------

--
-- Table structure for table `index_slider`
--

CREATE TABLE `index_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `index_slider`
--

INSERT INTO `index_slider` (`id`, `title`, `img`, `user_id`) VALUES
(1, 'Mahdi', 'http://127.0.0.1:8000/styles/binazir/img/img1.jpg', 1),
(2, 'Mahdi2', 'http://127.0.0.1:8000/styles/binazir/img/img1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_nested`
--

CREATE TABLE `menu_nested` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `parent_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `href` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `ram` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_nested`
--

INSERT INTO `menu_nested` (`id`, `name`, `parent_id`, `user_id`, `href`, `updated_at`, `created_at`, `img`, `type`, `ram`, `size`) VALUES
(1, 'کالای دیجی تال', 0, 1, '#', '2018-04-01 01:37:29', '2018-04-01 01:37:29', 'http://127.0.0.1:8000/img/Samsung-Galaxy-Note-8-SM-N950FD-64GB-Dual-SIM-Mobile-Phone-c163ef.jpg', 'ram', '', '0'),
(2, 'پوشاک', 0, 1, '#', '2018-04-01 01:37:29', '2018-04-01 01:37:29', 'http://127.0.0.1:8000/img/Samsung-Galaxy-Note-8-SM-N950FD-64GB-Dual-SIM-Mobile-Phone-c163ef.jpg', 'size', '', ''),
(3, 'تستی 1', 0, 1, '', '2018-04-01 01:37:29', '2018-04-01 01:37:29', NULL, 'brand', '', ''),
(4, 'تستی 2', 0, 1, '', '2018-04-01 01:37:29', '2018-04-01 01:37:29', 'http://127.0.0.1:8000/img/Samsung-Galaxy-Note-8-SM-N950FD-64GB-Dual-SIM-Mobile-Phone-c163ef.jpg', 'shiw', '', ''),
(5, 'title9', 4, 0, '', '2018-04-01 01:37:29', '2018-04-01 01:37:29', NULL, '', '', ''),
(6, 'title6', 4, 1, '#', '2018-04-01 01:37:29', '2018-04-01 01:37:29', NULL, '', '', ''),
(7, 'title7', 3, 1, '#', '2018-04-01 01:37:29', '2018-04-01 01:37:29', NULL, '', '', ''),
(16, 'menu1', 1, 1, '#', '2018-04-01 01:52:02', '2018-04-01 01:52:02', NULL, '', '1', '1'),
(17, 'menu2', 2, 1, '#', '2018-04-01 01:52:12', '2018-04-01 01:52:12', NULL, '', '2', '1'),
(18, 'Sub_1', 2, 1, 'M', '2018-04-01 01:58:03', '2018-04-01 01:58:03', NULL, '', '1', '2'),
(19, 'Sub4', 2, 1, 'http://127.0.0.1:8000/add_product', '2018-04-01 01:58:51', '2018-04-01 01:58:51', NULL, '', '3', '1'),
(20, 'parent4', 2, 1, '#', '2018-04-01 02:45:41', '2018-04-01 02:45:41', NULL, '', '3', '3'),
(21, 'Sub4_1', 1, 1, 'http://127.0.0.1:8000/add_product', '2018-04-01 02:46:06', '2018-04-01 02:46:06', 'http://127.0.0.1:8000/img/Samsung-Galaxy-Note-8-SM-N950FD-64GB-Dual-SIM-Mobile-Phone-c163ef.jpg', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2018_04_01_131845_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\User', 58);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('118306dd7d9a6eafd88dddaea6ccc884d4373252734c8ad12125870c1c6ec15d0a1ae610c362f7f8', 58, 1, 'MyApp', '[]', 0, '2018-05-10 00:22:27', '2018-05-10 00:22:27', '2019-05-10 04:52:27'),
('3d41f3f05d8bae631c49fda17ce808cdf761f94d994442476cbdfff75fa141fda1c666388cae86c6', 53, 1, 'MyApp', '[]', 0, '2018-04-01 08:20:25', '2018-04-01 08:20:25', '2019-04-01 12:50:25'),
('78d74952a859346a6ef2deb7ebfd0dd807bcccb348e5e62b959950a1b9bf6bc1288304ab21f06d93', 1, 1, 'MyApp', '[]', 0, '2018-05-02 01:48:54', '2018-05-02 01:48:54', '2019-05-02 06:18:54'),
('c44e6b9cb6e4a69cb08daef8eebc93adc92404085014b45ad273b6921e48f05e0d5bd219194fe94e', 54, 1, 'MyApp', '[]', 0, '2018-04-01 08:18:27', '2018-04-01 08:18:27', '2019-04-01 12:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'yHV9sQl7mUb5bFCAKFVpJ6wyioAUbh6D8DMLzOnE', 'http://localhost', 1, 0, 0, '2018-03-23 21:06:36', '2018-03-23 21:06:36'),
(2, NULL, 'Laravel Password Grant Client', '95J5NrOKT1K5PKkTsrHIUTDpZKPllHOnNfjPMoNn', 'http://localhost', 0, 1, 0, '2018-03-23 21:06:36', '2018-03-23 21:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-03-23 21:06:36', '2018-03-23 21:06:36');

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
('mr.mobham@outlook.com', '$2y$10$amViAeOyPkCkzBYgQdx6M.ahaxL3yMLMTADDiiV1imGsw1mv6jyN2', '2018-02-19 01:50:27');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'edit articles', 'web', '2018-04-01 09:07:19', '2018-04-01 09:07:19'),
(2, 'admin', 'web', '2018-04-04 06:03:05', '2018-04-04 06:03:05'),
(3, 'Administer', 'web', '2018-04-04 06:14:44', '2018-04-04 06:14:44'),
(4, 'Edit Post', 'web', '2018-04-04 06:21:43', '2018-04-04 06:21:43'),
(5, 'Delete Post', 'web', '2018-04-04 06:39:01', '2018-04-04 06:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'title1', 'dasdas', NULL, NULL),
(2, 'd', 'd***', NULL, '2018-04-04 06:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `slake` varchar(255) DEFAULT NULL,
  `count_product` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `new_product` int(11) DEFAULT NULL,
  `body` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `label` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `img`, `slake`, `count_product`, `user_id`, `new_product`, `body`, `updated_at`, `created_at`, `label`, `parent_id`, `model`) VALUES
(9, 'title9', '200', 'http://127.0.0.1:8000/img/Samsung-Galaxy-Note-8-SM-N950FD-64GB-Dual-SIM-Mobile-Phone-c163ef.jpg', '10', 5, 53, NULL, 'data--face', '2018-03-29 04:59:30', '2018-03-29 04:59:30', '', 0, 'sadasdasdasdasd'),
(15, 'title2', '999', 'http://127.0.0.1:8000/img/Samsung-Galaxy-Note-8-SM-N950FD-64GB-Dual-SIM-Mobile-Phone-c163ef.jpg', '99', 4, 53, 1, 'dsadasdasdasdas', '2018-04-02 05:11:29', '2018-04-02 05:11:29', '', 0, ''),
(16, 'dd', '999', 'http://127.0.0.1:8000/img/Samsung-Galaxy-Note-8-SM-N950FD-64GB-Dual-SIM-Mobile-Phone-c163ef.jpg', '99', 4, NULL, 1, 'dsadasdasdasdas', '2018-04-02 07:29:00', '2018-04-02 07:29:00', '', 0, ''),
(17, 'title3', '999', 'http://127.0.0.1:8000/img/Samsung-Galaxy-Note-8-SM-N950FD-64GB-Dual-SIM-Mobile-Phone-c163ef.jpg', '99', 4, 1, 1, 'test2', '2018-04-02 07:35:30', '2018-04-02 07:29:24', 'Mdasds', 0, ''),
(18, '5', '999', 'http://127.0.0.1:8000/img/ASUS-VivoBook-R542UQ-F-15-inch-Laptop-3de3f5.jpg', '99', 4, 1, 1, 'test2', '2018-04-02 07:35:00', '2018-04-02 07:30:13', '', 0, ''),
(19, 'محصول2', '60000', 'http://127.0.0.1:8000/img/Samsung-Galaxy-Note-8-SM-N950FD-64GB-Dual-SIM-Mobile-Phone-c163ef.jpg', '80', 4, 1, 1, 'توضیحات', '2018-04-02 07:38:03', '2018-04-02 07:38:03', 'dsad', 0, ''),
(20, 'item2', '2121', 'http://127.0.0.1:8000/img/Samsung-Galaxy-Note-8-SM-N950FD-64GB-Dual-SIM-Mobile-Phone-c163ef.jpg', '2121', 2121, 1, 21, 'ggggg', '2018-04-03 03:13:54', '2018-04-03 03:13:54', '', 0, 'sadasdasdasdasd'),
(23, 'dasdasdas', NULL, 'http://127.0.0.1:8000/img/Samsung-Galaxy-Note-8-SM-N950FD-64GB-Dual-SIM-Mobile-Phone-c163ef.jpg', NULL, NULL, 1, NULL, NULL, '2018-04-03 07:32:01', '2018-04-03 07:32:01', '', 0, 'Mahdi');

-- --------------------------------------------------------

--
-- Table structure for table `products2`
--

CREATE TABLE `products2` (
  `id` int(11) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `ram` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products2`
--

INSERT INTO `products2` (`id`, `created_at`, `parent_id`, `ram`, `size`, `type`, `img`, `title`, `body`) VALUES
(9, '2018-03-29 04:59:30', 0, '1', '2', 0, 'http://127.0.0.1:8000/img/Samsung-Galaxy-Note-8-SM-N950FD-64GB-Dual-SIM-Mobile-Phone-c163ef.jpg', '0', 'Lorem Ipsum is simply dummy text of the pLorem Ipsum is simply dummy text of the pLorem Ipsum is simply dummy text of the pLorem Ipsum is simply dummy text of the pLorem Ipsum is simply dummy text of the pLorem Ipsum is simply dummy text of the pLorem Ips'),
(15, '2018-04-02 05:11:29', 0, '1', '5', 0, 'http://127.0.0.1:8000/img/Samsung-Galaxy-Note-8-SM-N950FD-64GB-Dual-SIM-Mobile-Phone-c163ef.jpg', '0', 'Lorem Ipsum is simply dummy text of the p'),
(16, '2018-04-02 07:29:00', 0, '2', '5', 0, 'http://127.0.0.1:8000/img/Samsung-Galaxy-Note-8-SM-N950FD-64GB-Dual-SIM-Mobile-Phone-c163ef.jpg', '0', 'Lorem Ipsum is simply dummy text of the p'),
(17, '2018-04-02 07:29:24', 0, '2', '3', 0, 'http://127.0.0.1:8000/img/Samsung-Galaxy-Note-8-SM-N950FD-64GB-Dual-SIM-Mobile-Phone-c163ef.jpg', '0', 'Lorem Ipsum is simply dummy text of the p'),
(18, '2018-04-02 07:30:13', 0, '2', '2', 0, 'http://127.0.0.1:8000/img/Samsung-Galaxy-Note-8-SM-N950FD-64GB-Dual-SIM-Mobile-Phone-c163ef.jpg', '0', 'Lorem Ipsum is simply dummy text of the p'),
(19, '2018-04-02 07:38:03', 0, '2', '3', 0, 'http://127.0.0.1:8000/img/Samsung-Galaxy-Note-8-SM-N950FD-64GB-Dual-SIM-Mobile-Phone-c163ef.jpg', '0', 'Lorem Ipsum is simply dummy text of the p'),
(20, '2018-04-03 03:13:54', 0, '2', '2', 0, 'http://127.0.0.1:8000/img/Samsung-Galaxy-Note-8-SM-N950FD-64GB-Dual-SIM-Mobile-Phone-c163ef.jpg', '0', 'Lorem Ipsum is simply dummy text of the p'),
(23, '2018-04-03 07:32:01', 0, '1', '1', 0, 'http://127.0.0.1:8000/img/Samsung-Galaxy-Note-8-SM-N950FD-64GB-Dual-SIM-Mobile-Phone-c163ef.jpg', '0', 'Lorem Ipsum is simply dummy text of the p');

-- --------------------------------------------------------

--
-- Table structure for table `ram_name`
--

CREATE TABLE `ram_name` (
  `id` int(11) NOT NULL,
  `RAM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ram_name`
--

INSERT INTO `ram_name` (`id`, `RAM`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'web', '2018-04-04 06:22:22', '2018-04-04 06:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(4, 2),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `store_products`
--

CREATE TABLE `store_products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `price` int(200) NOT NULL,
  `img` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `plank` int(11) NOT NULL,
  `count_product` int(11) NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_products`
--

INSERT INTO `store_products` (`id`, `title`, `price`, `img`, `user_id`, `updated_at`, `created_at`, `plank`, `count_product`, `total_price`) VALUES
(7, 'title1', 200, 'http://127.0.0.1:8000/styles/binazir/img/bg_user.jpg', 1, '2018-03-27 05:41:26', '2018-03-14 13:29:43', 20, 13, 2600),
(8, 'title2', 300, 'http://127.0.0.1:8000/styles/binazir/img/bg_user.jpg', 1, '2018-03-27 05:41:41', '2018-03-14 12:14:13', 30, 7, 2100),
(10, 'title6', 600, 'http://127.0.0.1:8000/styles/binazir/img/bg_user.jpg', 1, '2018-03-27 05:58:43', '2018-03-27 05:41:54', 30, 23, 13800);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `api_token`, `avatar`) VALUES
(1, 'Administer ', 'mr.mobham@outlook.com', '$2y$10$gYXdTh6SbRDZMTj.R/jQWOTN7F1TOxQnAHIRimc74ogZN3ri11Dg6', 'yJIwon0VvTgi0tOth51DbemT70dSqGS1GMgQjJbQzPoDp9I94uzOT0D7pR6f', '2018-02-11 23:00:09', '2018-02-11 23:00:09', '', 'http://127.0.0.1:8000/avatar/Dream-Catcher-Dreams.jpg'),
(3, 'Admin', 'mr.mobham@outloo22k.com', '$2y$10$nkrzGeqGGzldfAYMgFjjo.Il8NXACS7JEkA8NN4OViZkNw2F4ggWG', 'I4KbLpuIc116NWXvJQb4wk8c6RsLFJeuvujmbMFJ0tQWQrGCPoKYxz1b1YUQ', '2018-04-04 06:14:02', '2018-04-04 06:14:02', NULL, NULL),
(23, 'ppppssdss', 'mr.mobhsssam@outslo1ok.com', '$2y$10$nkrzGeqGGzldfAYMgFjjo.Il8NXACS7JEkA8NN4OViZkNw2F4ggWG', NULL, '2018-02-20 07:44:05', '2018-02-20 07:44:05', 'b8faf167270f6c71cbdaa1fcc4af70325057f51ba58374cafa9fe3288bd7', 'http://127.0.0.1:8000/avatar/Dream-Catcher-Dreams.jpg'),
(24, 'Admin', 'mr.mobham@o1utlook.com', '$2y$10$Ep8PIZ3Ct9yD.P34RPJGMOu0i9xBCVNKWAzg37i.7O5B2f50RHRSu', 'E4u8zeiH7OkTFYlTEHdrObyhzBLm0y4ZLpQl1xE2iEimjgg1jcfP4T7lUjVm', '2018-03-11 12:01:27', '2018-03-11 12:01:27', NULL, 'http://127.0.0.1:8000/avatar/Dream-Catcher-Dreams.jpg'),
(53, 'Mahdi', 'mr.mobham115@outlook.com', '$2y$10$/r6ZaI2EiiBWCRe2dGP1r.BilXTCbTBDWQQ67qwmMuGB2tn/ZLAfq', NULL, '2018-03-23 21:10:59', '2018-03-23 21:10:59', NULL, 'http://127.0.0.1:8000/avatar/Dream-Catcher-Dreams.jpg'),
(54, 'Mahdi', 'mr.mobham1115@outlook.com', '$2y$10$VK.v1SCy2UmyI6SnRIihyOh6OKnmpuPS8mUi9y1MIxE01ePxMvZGu', NULL, '2018-03-30 01:09:38', '2018-03-30 01:09:38', NULL, NULL),
(55, 'Mahdi', 'Mobham@gmail.com', '$2y$10$oHKGaErQeLFidnLLtvsDaOZIyBHhwzXPeWy.upK/CXSs3wiqdCMKm', 'TqX1ewnfXSdlJh50ONSIHtywYODJgmL0Shb1YgnlqN1NVpPQI6iisVJzE5Si', '2018-04-04 05:50:38', '2018-04-04 05:50:38', NULL, NULL),
(58, 'test', 'mr.mobham@o111utlook.com', '$2y$10$gYXdTh6SbRDZMTj.R/jQWOTN7F1TOxQnAHIRimc74ogZN3ri11Dg6', 'nUvDIAin3NRAR7xL5xiqOGA65auNx8mIuyVxN8leXYPPvdAnLBDd1NpaCdWY', '2018-04-04 06:29:23', '2018-04-04 06:29:23', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoryes`
--
ALTER TABLE `categoryes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_names`
--
ALTER TABLE `company_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_table`
--
ALTER TABLE `data_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filter_name`
--
ALTER TABLE `filter_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `index_slider`
--
ALTER TABLE `index_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nested`
--
ALTER TABLE `menu_nested`
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
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products2`
--
ALTER TABLE `products2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ram_name`
--
ALTER TABLE `ram_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `store_products`
--
ALTER TABLE `store_products`
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
-- AUTO_INCREMENT for table `categoryes`
--
ALTER TABLE `categoryes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company_names`
--
ALTER TABLE `company_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_table`
--
ALTER TABLE `data_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `filter_name`
--
ALTER TABLE `filter_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `index_slider`
--
ALTER TABLE `index_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_nested`
--
ALTER TABLE `menu_nested`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products2`
--
ALTER TABLE `products2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `ram_name`
--
ALTER TABLE `ram_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_products`
--
ALTER TABLE `store_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

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
