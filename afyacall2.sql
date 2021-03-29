-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 29, 2021 at 09:26 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `afyacall2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2021-03-24 19:36:59', '2021-03-24 19:36:59'),
(2, NULL, 1, 'Category 2', 'category-2', '2021-03-24 19:36:59', '2021-03-24 19:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 5),
(61, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(62, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(63, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 12, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(65, 12, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(66, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 4),
(67, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(68, 12, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 6),
(69, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 13, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(71, 13, 'high_value', 'number', 'High Value', 0, 1, 1, 1, 1, 1, '{}', 3),
(72, 13, 'occurred_value', 'number', 'Occurred Value', 0, 1, 1, 1, 1, 1, '{}', 4),
(73, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 5),
(74, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(75, 13, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(76, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(77, 14, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(78, 14, 'service_name', 'text', 'Service Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(79, 14, 'service_description', 'text_area', 'Service Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(80, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 5),
(81, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(82, 14, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(83, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(84, 15, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(85, 15, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(86, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 4),
(87, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(88, 15, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 6),
(89, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(90, 16, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(91, 16, 'position', 'text', 'Position', 0, 1, 1, 1, 1, 1, '{}', 3),
(92, 16, 'testimonial', 'text_area', 'Testimonial', 0, 1, 1, 1, 1, 1, '{}', 4),
(93, 16, 'full_name', 'text', 'Full Name', 0, 1, 1, 1, 1, 1, '{}', 5),
(94, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(95, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(96, 16, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(97, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(98, 17, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(99, 17, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(100, 17, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(101, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 5),
(102, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(103, 17, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(104, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(105, 18, 'full_name', 'text', 'Full Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(106, 18, 'position', 'text', 'Position', 0, 1, 1, 1, 1, 1, '{}', 3),
(107, 18, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(108, 18, 'fb_link', 'text', 'Fb Link', 0, 1, 1, 1, 1, 1, '{}', 5),
(109, 18, 'ig_link', 'text', 'Ig Link', 0, 1, 1, 1, 1, 1, '{}', 6),
(110, 18, 't_link', 'text', 'T Link', 0, 1, 1, 1, 1, 1, '{}', 7),
(111, 18, 'ln_link', 'text', 'Ln Link', 0, 1, 1, 1, 1, 1, '{}', 8),
(112, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 9),
(113, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(114, 18, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 11),
(115, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(116, 19, 'package_name', 'text', 'Package Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(117, 19, 'rate', 'number', 'Rate', 0, 1, 1, 1, 1, 1, '{}', 3),
(118, 19, 'rate_unit', 'text', 'Rate Unit', 0, 1, 1, 1, 1, 1, '{}', 4),
(119, 19, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(120, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(121, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(122, 19, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(123, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(124, 20, 'qn', 'text_area', 'Qn', 0, 1, 1, 1, 1, 1, '{}', 2),
(125, 20, 'ans', 'text_area', 'Ans', 0, 1, 1, 1, 1, 1, '{}', 3),
(126, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 4),
(127, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(128, 20, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 6);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-03-24 19:36:57', '2021-03-24 19:36:57'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-03-24 19:36:57', '2021-03-24 19:36:57'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-03-24 19:36:57', '2021-03-24 19:36:57'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-03-24 19:36:59', '2021-03-24 19:36:59'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-03-24 19:36:59', '2021-03-24 19:36:59'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(7, 'supportive_clients', 'supportive-clients', 'Supportive Client', 'Supportive Clients', 'voyager-people', 'App\\SupportiveClient', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"name\",\"order_display_column\":\"logo\",\"order_direction\":\"asc\",\"default_search_key\":\"description\",\"scope\":null}', '2021-03-27 08:53:05', '2021-03-27 08:53:26'),
(8, 'about_us_list', 'about-us-list', 'About Us List', 'About Us Lists', 'voyager-double-right', 'App\\AboutUsList', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"item_name\",\"order_display_column\":\"description\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-27 10:09:37', '2021-03-27 10:09:37'),
(11, 'itemlist_about', 'itemlist-about', 'Itemlist About', 'Itemlist Abouts', 'voyager-double-right', 'App\\ItemlistAbout', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-27 10:15:27', '2021-03-27 10:15:27'),
(12, 'front_lists', 'front-lists', 'Front List', 'Front Lists', 'voyager-double-right', 'App\\FrontList', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-27 11:21:47', '2021-03-27 11:21:47'),
(13, 'statistics', 'statistics', 'Statistic', 'Statistics', 'voyager-params', 'App\\Statistic', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"name\",\"order_display_column\":\"high_value\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-27 17:01:40', '2021-03-27 17:01:40'),
(14, 'services', 'services', 'Service', 'Services', 'voyager-tag', 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-27 17:35:39', '2021-03-27 17:35:39'),
(15, 'features', 'features', 'Feature', 'Features', 'voyager-medal-rank-star', 'App\\Feature', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"name\",\"order_display_column\":\"description\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-27 17:54:17', '2021-03-27 17:54:17'),
(16, 'testimonials', 'testimonials', 'Testimonial', 'Testimonials', 'voyager-megaphone', 'App\\Testimonial', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"full_name\",\"order_display_column\":\"testimonial\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-27 18:00:40', '2021-03-27 18:00:40'),
(17, 'galleries', 'galleries', 'Gallery', 'Galleries', 'voyager-photo', 'App\\Gallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"image\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-28 05:19:16', '2021-03-28 05:19:16'),
(18, 'teams', 'teams', 'Team', 'Teams', 'voyager-paw', 'App\\Team', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"full_name\",\"order_display_column\":\"position\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-28 05:32:26', '2021-03-28 05:32:26'),
(19, 'prices', 'prices', 'Price', 'Prices', 'voyager-buy', 'App\\Price', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"package_name\",\"order_display_column\":\"rate\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-28 05:47:23', '2021-03-28 05:47:23'),
(20, 'faqs', 'faqs', 'Faq', 'Faqs', 'voyager-info-circled', 'App\\Faq', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"qn\",\"order_display_column\":\"ans\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-28 06:01:46', '2021-03-28 06:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `qn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ans` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `qn`, `ans`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Why AfyaCall', 'This is what we need in any emergencies', '2021-03-28 06:03:04', '2021-03-28 06:03:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Easy To Use', 'Easy To Use at every problem', '2021-03-27 17:54:55', '2021-03-27 17:54:55', NULL),
(2, 'Availability', 'Available everywhere', '2021-03-27 17:55:18', '2021-03-27 17:55:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `front_lists`
--

CREATE TABLE `front_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `front_lists`
--

INSERT INTO `front_lists` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mission', 'All About us Mission', '2021-03-27 11:22:03', '2021-03-27 11:24:04', NULL),
(2, 'AfyaCall Vision', 'AfyaCall Vision and all aspects', '2021-03-27 11:24:42', '2021-03-27 11:24:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'galleries/March2021/4YK0nU4xFVQpsYZ6dANx.jpeg', 'Training', 'When we conduct AfyaCall Training', '2021-03-28 05:20:55', '2021-03-28 05:20:55', NULL),
(2, 'galleries/March2021/mnAs38dOrPeDMCJKnM6k.jpeg', 'Our Doctor', 'Our Professional Doctor', '2021-03-28 05:21:43', '2021-03-28 05:21:43', NULL),
(3, 'galleries/March2021/bKtIPwQsPvG1T5erUhsA.jpeg', 'Consultation', 'Giving consultations', '2021-03-28 05:22:20', '2021-03-28 05:22:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `itemlist_about`
--

CREATE TABLE `itemlist_about` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-03-24 19:36:57', '2021-03-24 19:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-03-24 19:36:57', '2021-03-24 19:36:57', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 14, '2021-03-24 19:36:57', '2021-03-28 06:13:23', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 13, '2021-03-24 19:36:57', '2021-03-28 06:13:51', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 4, '2021-03-24 19:36:57', '2021-03-27 16:42:57', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 18, '2021-03-24 19:36:57', '2021-03-28 06:12:42', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-03-24 19:36:57', '2021-03-27 08:58:23', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-03-24 19:36:57', '2021-03-27 17:12:15', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-03-24 19:36:58', '2021-03-27 17:12:15', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-03-24 19:36:58', '2021-03-27 17:12:15', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 19, '2021-03-24 19:36:58', '2021-03-28 06:12:42', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 17, '2021-03-24 19:36:59', '2021-03-28 06:13:18', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 15, '2021-03-24 19:36:59', '2021-03-28 06:13:23', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 16, '2021-03-24 19:37:00', '2021-03-28 06:13:18', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2021-03-24 19:37:00', '2021-03-27 17:12:15', 'voyager.hooks', NULL),
(15, 1, 'Supportive Clients', '', '_self', 'voyager-people', NULL, NULL, 2, '2021-03-27 08:53:06', '2021-03-27 08:58:26', 'voyager.supportive-clients.index', NULL),
(19, 1, 'Front Lists', '', '_self', 'voyager-double-right', NULL, NULL, 3, '2021-03-27 11:21:47', '2021-03-27 16:42:57', 'voyager.front-lists.index', NULL),
(20, 1, 'Statistics', '', '_self', 'voyager-params', NULL, NULL, 5, '2021-03-27 17:01:40', '2021-03-27 17:12:18', 'voyager.statistics.index', NULL),
(21, 1, 'Services', '', '_self', 'voyager-tag', NULL, NULL, 6, '2021-03-27 17:35:39', '2021-03-28 06:13:41', 'voyager.services.index', NULL),
(22, 1, 'Features', '', '_self', 'voyager-medal-rank-star', NULL, NULL, 12, '2021-03-27 17:54:17', '2021-03-28 06:13:51', 'voyager.features.index', NULL),
(23, 1, 'Testimonials', '', '_self', 'voyager-megaphone', NULL, NULL, 9, '2021-03-27 18:00:40', '2021-03-28 06:13:51', 'voyager.testimonials.index', NULL),
(24, 1, 'Galleries', '', '_self', 'voyager-photo', NULL, NULL, 10, '2021-03-28 05:19:16', '2021-03-28 06:13:51', 'voyager.galleries.index', NULL),
(25, 1, 'Teams', '', '_self', 'voyager-paw', NULL, NULL, 11, '2021-03-28 05:32:26', '2021-03-28 06:13:51', 'voyager.teams.index', NULL),
(26, 1, 'Prices', '', '_self', 'voyager-buy', NULL, NULL, 8, '2021-03-28 05:47:23', '2021-03-28 06:13:51', 'voyager.prices.index', NULL),
(27, 1, 'Faqs', '', '_self', 'voyager-info-circled', NULL, NULL, 7, '2021-03-28 06:01:46', '2021-03-28 06:13:51', 'voyager.faqs.index', NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-03-24 19:37:00', '2021-03-24 19:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(2, 'browse_bread', NULL, '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(3, 'browse_database', NULL, '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(4, 'browse_media', NULL, '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(5, 'browse_compass', NULL, '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(6, 'browse_menus', 'menus', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(7, 'read_menus', 'menus', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(8, 'edit_menus', 'menus', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(9, 'add_menus', 'menus', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(10, 'delete_menus', 'menus', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(11, 'browse_roles', 'roles', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(12, 'read_roles', 'roles', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(13, 'edit_roles', 'roles', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(14, 'add_roles', 'roles', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(15, 'delete_roles', 'roles', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(16, 'browse_users', 'users', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(17, 'read_users', 'users', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(18, 'edit_users', 'users', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(19, 'add_users', 'users', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(20, 'delete_users', 'users', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(21, 'browse_settings', 'settings', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(22, 'read_settings', 'settings', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(23, 'edit_settings', 'settings', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(24, 'add_settings', 'settings', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(25, 'delete_settings', 'settings', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(26, 'browse_categories', 'categories', '2021-03-24 19:36:59', '2021-03-24 19:36:59'),
(27, 'read_categories', 'categories', '2021-03-24 19:36:59', '2021-03-24 19:36:59'),
(28, 'edit_categories', 'categories', '2021-03-24 19:36:59', '2021-03-24 19:36:59'),
(29, 'add_categories', 'categories', '2021-03-24 19:36:59', '2021-03-24 19:36:59'),
(30, 'delete_categories', 'categories', '2021-03-24 19:36:59', '2021-03-24 19:36:59'),
(31, 'browse_posts', 'posts', '2021-03-24 19:36:59', '2021-03-24 19:36:59'),
(32, 'read_posts', 'posts', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(33, 'edit_posts', 'posts', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(34, 'add_posts', 'posts', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(35, 'delete_posts', 'posts', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(36, 'browse_pages', 'pages', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(37, 'read_pages', 'pages', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(38, 'edit_pages', 'pages', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(39, 'add_pages', 'pages', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(40, 'delete_pages', 'pages', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(41, 'browse_hooks', NULL, '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(42, 'browse_supportive_clients', 'supportive_clients', '2021-03-27 08:53:06', '2021-03-27 08:53:06'),
(43, 'read_supportive_clients', 'supportive_clients', '2021-03-27 08:53:06', '2021-03-27 08:53:06'),
(44, 'edit_supportive_clients', 'supportive_clients', '2021-03-27 08:53:06', '2021-03-27 08:53:06'),
(45, 'add_supportive_clients', 'supportive_clients', '2021-03-27 08:53:06', '2021-03-27 08:53:06'),
(46, 'delete_supportive_clients', 'supportive_clients', '2021-03-27 08:53:06', '2021-03-27 08:53:06'),
(47, 'browse_about_us_list', 'about_us_list', '2021-03-27 10:09:37', '2021-03-27 10:09:37'),
(48, 'read_about_us_list', 'about_us_list', '2021-03-27 10:09:37', '2021-03-27 10:09:37'),
(49, 'edit_about_us_list', 'about_us_list', '2021-03-27 10:09:37', '2021-03-27 10:09:37'),
(50, 'add_about_us_list', 'about_us_list', '2021-03-27 10:09:37', '2021-03-27 10:09:37'),
(51, 'delete_about_us_list', 'about_us_list', '2021-03-27 10:09:37', '2021-03-27 10:09:37'),
(57, 'browse_itemlist_about', 'itemlist_about', '2021-03-27 10:15:27', '2021-03-27 10:15:27'),
(58, 'read_itemlist_about', 'itemlist_about', '2021-03-27 10:15:27', '2021-03-27 10:15:27'),
(59, 'edit_itemlist_about', 'itemlist_about', '2021-03-27 10:15:27', '2021-03-27 10:15:27'),
(60, 'add_itemlist_about', 'itemlist_about', '2021-03-27 10:15:27', '2021-03-27 10:15:27'),
(61, 'delete_itemlist_about', 'itemlist_about', '2021-03-27 10:15:27', '2021-03-27 10:15:27'),
(62, 'browse_front_lists', 'front_lists', '2021-03-27 11:21:47', '2021-03-27 11:21:47'),
(63, 'read_front_lists', 'front_lists', '2021-03-27 11:21:47', '2021-03-27 11:21:47'),
(64, 'edit_front_lists', 'front_lists', '2021-03-27 11:21:47', '2021-03-27 11:21:47'),
(65, 'add_front_lists', 'front_lists', '2021-03-27 11:21:47', '2021-03-27 11:21:47'),
(66, 'delete_front_lists', 'front_lists', '2021-03-27 11:21:47', '2021-03-27 11:21:47'),
(67, 'browse_statistics', 'statistics', '2021-03-27 17:01:40', '2021-03-27 17:01:40'),
(68, 'read_statistics', 'statistics', '2021-03-27 17:01:40', '2021-03-27 17:01:40'),
(69, 'edit_statistics', 'statistics', '2021-03-27 17:01:40', '2021-03-27 17:01:40'),
(70, 'add_statistics', 'statistics', '2021-03-27 17:01:40', '2021-03-27 17:01:40'),
(71, 'delete_statistics', 'statistics', '2021-03-27 17:01:40', '2021-03-27 17:01:40'),
(72, 'browse_services', 'services', '2021-03-27 17:35:39', '2021-03-27 17:35:39'),
(73, 'read_services', 'services', '2021-03-27 17:35:39', '2021-03-27 17:35:39'),
(74, 'edit_services', 'services', '2021-03-27 17:35:39', '2021-03-27 17:35:39'),
(75, 'add_services', 'services', '2021-03-27 17:35:39', '2021-03-27 17:35:39'),
(76, 'delete_services', 'services', '2021-03-27 17:35:39', '2021-03-27 17:35:39'),
(77, 'browse_features', 'features', '2021-03-27 17:54:17', '2021-03-27 17:54:17'),
(78, 'read_features', 'features', '2021-03-27 17:54:17', '2021-03-27 17:54:17'),
(79, 'edit_features', 'features', '2021-03-27 17:54:17', '2021-03-27 17:54:17'),
(80, 'add_features', 'features', '2021-03-27 17:54:17', '2021-03-27 17:54:17'),
(81, 'delete_features', 'features', '2021-03-27 17:54:17', '2021-03-27 17:54:17'),
(82, 'browse_testimonials', 'testimonials', '2021-03-27 18:00:40', '2021-03-27 18:00:40'),
(83, 'read_testimonials', 'testimonials', '2021-03-27 18:00:40', '2021-03-27 18:00:40'),
(84, 'edit_testimonials', 'testimonials', '2021-03-27 18:00:40', '2021-03-27 18:00:40'),
(85, 'add_testimonials', 'testimonials', '2021-03-27 18:00:40', '2021-03-27 18:00:40'),
(86, 'delete_testimonials', 'testimonials', '2021-03-27 18:00:40', '2021-03-27 18:00:40'),
(87, 'browse_galleries', 'galleries', '2021-03-28 05:19:16', '2021-03-28 05:19:16'),
(88, 'read_galleries', 'galleries', '2021-03-28 05:19:16', '2021-03-28 05:19:16'),
(89, 'edit_galleries', 'galleries', '2021-03-28 05:19:16', '2021-03-28 05:19:16'),
(90, 'add_galleries', 'galleries', '2021-03-28 05:19:16', '2021-03-28 05:19:16'),
(91, 'delete_galleries', 'galleries', '2021-03-28 05:19:16', '2021-03-28 05:19:16'),
(92, 'browse_teams', 'teams', '2021-03-28 05:32:26', '2021-03-28 05:32:26'),
(93, 'read_teams', 'teams', '2021-03-28 05:32:26', '2021-03-28 05:32:26'),
(94, 'edit_teams', 'teams', '2021-03-28 05:32:26', '2021-03-28 05:32:26'),
(95, 'add_teams', 'teams', '2021-03-28 05:32:26', '2021-03-28 05:32:26'),
(96, 'delete_teams', 'teams', '2021-03-28 05:32:26', '2021-03-28 05:32:26'),
(97, 'browse_prices', 'prices', '2021-03-28 05:47:23', '2021-03-28 05:47:23'),
(98, 'read_prices', 'prices', '2021-03-28 05:47:23', '2021-03-28 05:47:23'),
(99, 'edit_prices', 'prices', '2021-03-28 05:47:23', '2021-03-28 05:47:23'),
(100, 'add_prices', 'prices', '2021-03-28 05:47:23', '2021-03-28 05:47:23'),
(101, 'delete_prices', 'prices', '2021-03-28 05:47:23', '2021-03-28 05:47:23'),
(102, 'browse_faqs', 'faqs', '2021-03-28 06:01:46', '2021-03-28 06:01:46'),
(103, 'read_faqs', 'faqs', '2021-03-28 06:01:46', '2021-03-28 06:01:46'),
(104, 'edit_faqs', 'faqs', '2021-03-28 06:01:46', '2021-03-28 06:01:46'),
(105, 'add_faqs', 'faqs', '2021-03-28 06:01:46', '2021-03-28 06:01:46'),
(106, 'delete_faqs', 'faqs', '2021-03-28 06:01:46', '2021-03-28 06:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-03-24 19:37:00', '2021-03-24 19:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `rate_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `package_name`, `rate`, `rate_unit`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Full Bando', 15, 'Call', '15 Tsh per single call', '2021-03-28 05:48:21', '2021-03-28 05:48:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-03-24 19:36:58', '2021-03-24 19:36:58'),
(2, 'user', 'Normal User', '2021-03-24 19:36:58', '2021-03-24 19:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `image`, `service_name`, `service_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'services/March2021/ycKzxzMmuxyi2gErTh3t.jpeg', 'Afya Kiganjani', 'Pata huduma ya Afya Kiganjani mwako', '2021-03-27 17:36:22', '2021-03-27 17:36:22', NULL),
(2, 'services/March2021/z1LVupNXoObmr1P0QS5J.png', 'Uhuru kwa Daktari', 'Kuwa huru kuwasiliana na Daktari', '2021-03-27 17:36:59', '2021-03-27 17:36:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'AfyaCall', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'platform linking healthcare consultation', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/March2021/M4qsZO1SN8u4ifpsdDr3.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/March2021/Xe6qG6g68XaUvh0sK9rQ.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'AfyaCall', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'AfyaCall | Admin Area', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/March2021/EeIQjZ8S7bHosXlMAy5H.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/March2021/BlyrtheDNNfIR7kLclgr.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.hero_title', 'hero_title', 'Welcome to AfyaCall', NULL, 'text', 6, 'Site'),
(12, 'site.hero_sub_text', 'hero_sub_text', 'AFYACALL is a mobile health (mHealth) platform linking healthcare consultation consumers with licensed medical practitioners through a mobile phone both in rural and urban areas', NULL, 'text', 7, 'Site'),
(14, 'site.hero_image', 'hero_image', 'settings/March2021/D3cOSTzn0sKD1qPoLoM6.png', NULL, 'image', 8, 'Site'),
(15, 'site.about_intro_lists', 'about_intro_lists', NULL, NULL, 'text', 9, 'Site'),
(16, 'site.about_us_description', 'about_us_description', NULL, NULL, 'text', 10, 'Site'),
(18, 'site.right_statistics_image', 'right_statistics_image', 'settings/March2021/lA1yMlbTAG8Tjrm58YLN.png', NULL, 'image', 11, 'Site'),
(19, 'site.service_text_title', 'service_text_title', 'Our Services', NULL, 'text', 12, 'Site'),
(20, 'site.features_text', 'features_text', 'These are features of AfyaCall', NULL, 'text', 13, 'Site'),
(21, 'site.testimonial_text', 'testimonial_text', 'Here out what other say about AfyaCall', NULL, 'text', 14, 'Site'),
(22, 'site.gallery_text', 'gallery_text', 'Check out Our Gallery', NULL, 'text_area', 15, 'Site'),
(23, 'site.team_text', 'team_text', 'Our Hardworking Team', NULL, 'text_area', 16, 'Site'),
(24, 'site.package_text', 'package_text', 'check out our pricing and packages for AfyaCall', NULL, 'text', 17, 'Site'),
(25, 'site.afyacall_address', 'afyacall_address', '', NULL, 'text', 18, 'Site'),
(26, 'site.afyacall_phone', 'afyacall_phone', '', NULL, 'text', 19, 'Site'),
(27, 'site.afyacall_email', 'afyacall_email', '', NULL, 'text', 20, 'Site'),
(28, 'site.afyacall_short_description', 'afyacall_short_description', '', NULL, 'text', 21, 'Site'),
(29, 'site.afyacall_fb_link', 'afyacall_fb_link', '', NULL, 'text', 22, 'Site'),
(30, 'site.afyacall_t_link', 'afyacall_t_link', '', NULL, 'text', 23, 'Site'),
(31, 'site.afyacall_ig_link', 'afyacall_ig_link', '', NULL, 'text', 24, 'Site'),
(32, 'site.afyacall_ln_link', 'afyacall_ln_link', '', NULL, 'text', 25, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `high_value` int(11) DEFAULT NULL,
  `occurred_value` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`id`, `name`, `high_value`, `occurred_value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Calls per Year', 50000, 48000, '2021-03-27 17:03:46', '2021-03-27 17:03:46', NULL),
(2, 'Successfully Helped', 1875000, 1785000, '2021-03-27 17:04:47', '2021-03-27 17:04:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supportive_clients`
--

CREATE TABLE `supportive_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supportive_clients`
--

INSERT INTO `supportive_clients` (`id`, `name`, `logo`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'The Ministry of Health of Tanzania', 'supportive-clients/March2021/r09StHmeOcR67QtqKFr6.png', 'The ministry of Health of Tanzania', '2021-03-27 08:56:55', '2021-03-27 08:56:55', NULL),
(2, 'Vodacom Tanzania', 'supportive-clients/March2021/Lni90ylMtFfqV7Kvkp6W.png', 'The network Service Provider', '2021-03-27 08:57:48', '2021-03-27 08:58:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ig_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ln_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `full_name`, `position`, `image`, `fb_link`, `ig_link`, `t_link`, `ln_link`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Happy Mgata', 'Manager', 'teams/March2021/bicVf0S3WRjLtpJV6LWr.jpg', NULL, NULL, NULL, NULL, '2021-03-28 05:33:54', '2021-03-28 05:35:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `image`, `position`, `testimonial`, `full_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'testimonials/March2021/us0Ra0MiI4wsMgTJQbvA.jpeg', 'C.E.O', 'This is the most health Service I\'ve ever had', 'Jofrey Abraham', '2021-03-27 18:02:13', '2021-03-27 18:02:13', NULL),
(2, 'testimonials/March2021/TB5EdOPYtzhaVeaqatfq.png', 'Manager', 'I advice everyone to use AfyaCall', 'Siwangu Mgata', '2021-03-27 18:03:37', '2021-03-27 18:03:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-03-24 19:37:00', '2021-03-24 19:37:00'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-03-24 19:37:00', '2021-03-24 19:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/March2021/bFl9dOiS3H53WlKzXXWV.png', NULL, '$2y$10$L7fkdF2/njpZbbLot2nIm.Z.qN5ooJggS1bjCiOEQugNYJsQIF5QW', 'TMmKdgQzcgqhwHnmEqs9iWXZGTNaxChjGDAmx7deEYJtLuYKiyXbvNFA50Yz', '{\"locale\":\"en\"}', '2021-03-24 19:36:59', '2021-03-25 20:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_lists`
--
ALTER TABLE `front_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itemlist_about`
--
ALTER TABLE `itemlist_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

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
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supportive_clients`
--
ALTER TABLE `supportive_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `front_lists`
--
ALTER TABLE `front_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `itemlist_about`
--
ALTER TABLE `itemlist_about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supportive_clients`
--
ALTER TABLE `supportive_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
