-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 31, 2021 at 01:37 PM
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
-- Table structure for table `contact_forms`
--

CREATE TABLE `contact_forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_forms`
--

INSERT INTO `contact_forms` (`id`, `name`, `phone_number`, `from_email`, `subject`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Novath Thomas', '0675265326', NULL, 'Mfumo umekamilika', 'sdsds', '2021-03-31 08:07:13', '2021-03-31 08:07:13', NULL),
(2, 'Novath Thomas', '0675265326', 'zepsoncompany@gmail.com', 'Shambani Web Update', 'asd', '2021-03-31 08:20:00', '2021-03-31 08:20:00', NULL),
(3, 'Novath Thomas', '0675265326', 'zepsoncompany@gmail.com', 'asdsad', 'asdsadsadsaass', '2021-03-31 08:21:59', '2021-03-31 08:21:59', NULL),
(4, 'Novath Thomas', '0675265326', 'zepsoncompany@gmail.com', 'INVOICE #31', 'asdsdsd', '2021-03-31 08:23:26', '2021-03-31 08:23:26', NULL),
(5, 'Novath Thomas', '0675265326', 'zepsoncompany@gmail.com', 'sdds', 'sddsd', '2021-03-31 08:23:34', '2021-03-31 08:23:34', NULL),
(6, 'Novath Thomas', '0675265326', 'zepsoncompany@gmail.com', 'dfds', 'dfdf', '2021-03-31 08:24:46', '2021-03-31 08:24:46', NULL),
(7, 'Novath Thomas', '0675265326', 'zepsoncompany@gmail.com', 'dfds', 'dfdf', '2021-03-31 08:24:49', '2021-03-31 08:24:49', NULL),
(8, 'Novath Thomas', '0675265326', 'zepsoncompany@gmail.com', 'dfds', 'dfdf', '2021-03-31 08:24:51', '2021-03-31 08:24:51', NULL),
(9, 'Novath Thomas', '0675265326', 'zepsoncompany@gmail.com', 'as', 'asdsa', '2021-03-31 08:25:20', '2021-03-31 08:25:20', NULL),
(10, 'Novath Thomas', '0675265326', 'zepsoncompany@gmail.com', 'utny', 'ftnutyutde', '2021-03-31 08:26:38', '2021-03-31 08:26:38', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_forms`
--
ALTER TABLE `contact_forms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_forms`
--
ALTER TABLE `contact_forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
