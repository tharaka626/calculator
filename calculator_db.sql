-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 30, 2024 at 04:17 PM
-- Server version: 8.0.36-0ubuntu0.22.04.1
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calculator_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `calculators`
--

CREATE TABLE `calculators` (
  `id` bigint UNSIGNED NOT NULL,
  `operand_1` decimal(8,2) NOT NULL,
  `operand_2` decimal(8,2) DEFAULT NULL,
  `operator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calculators`
--

INSERT INTO `calculators` (`id`, `operand_1`, `operand_2`, `operator`, `result`, `created_at`, `updated_at`) VALUES
(1, '2.00', '2.00', 'add', '4.00', '2024-03-29 01:08:56', '2024-03-29 01:08:56'),
(2, '2.00', '2.00', 'add', '4.00', '2024-03-29 01:09:09', '2024-03-29 01:09:09'),
(3, '2.00', '-2.00', 'add', '0.00', '2024-03-29 01:09:40', '2024-03-29 01:09:40'),
(4, '2.00', NULL, 'precentage', '0.02', '2024-03-29 01:20:29', '2024-03-29 01:20:29'),
(5, '500.00', NULL, 'precentage', '5.00', '2024-03-29 01:20:41', '2024-03-29 01:20:41'),
(6, '500.00', '0.00', 'precentage', '5.00', '2024-03-29 01:25:58', '2024-03-29 01:25:58'),
(7, '500.00', '2.00', 'divide', '250.00', '2024-03-29 01:26:17', '2024-03-29 01:26:17'),
(8, '500.00', '2.00', 'multiply', '1000.00', '2024-03-29 01:26:31', '2024-03-29 01:26:31'),
(9, '5.00', '5.00', 'add', '10.00', '2024-03-29 14:12:07', '2024-03-29 14:12:07'),
(10, '9.00', '5.00', 'add', '14.00', '2024-03-29 14:15:58', '2024-03-29 14:15:58'),
(11, '8.00', '9.00', 'add', '17.00', '2024-03-29 14:17:21', '2024-03-29 14:17:21'),
(12, '8.00', '8.00', 'add', '16.00', '2024-03-29 14:18:38', '2024-03-29 14:18:38'),
(13, '5.00', '5.00', 'add', '10.00', '2024-03-29 14:28:03', '2024-03-29 14:28:03'),
(14, '8.00', '8.00', 'add', '16.00', '2024-03-29 14:52:41', '2024-03-29 14:52:41'),
(15, '5.00', '5.00', 'add', '10.00', '2024-03-29 16:02:49', '2024-03-29 16:02:49'),
(16, '5.00', '5.00', 'add', '10.00', '2024-03-29 16:03:31', '2024-03-29 16:03:31'),
(17, '10.00', '6.00', 'add', '16.00', '2024-03-29 16:03:46', '2024-03-29 16:03:46'),
(18, '16.00', '4.00', 'add', '20.00', '2024-03-29 16:03:54', '2024-03-29 16:03:54'),
(19, '5.00', '5.00', 'add', '10.00', '2024-03-29 16:05:50', '2024-03-29 16:05:50'),
(20, '10.00', '12.00', 'add', '22.00', '2024-03-29 16:06:02', '2024-03-29 16:06:02'),
(21, '5.00', '5.00', 'add', '10.00', '2024-03-29 16:07:15', '2024-03-29 16:07:15'),
(22, '10.00', '5.00', 'add', '15.00', '2024-03-29 16:07:19', '2024-03-29 16:07:19'),
(23, '15.00', '7.00', 'add', '22.00', '2024-03-29 16:07:24', '2024-03-29 16:07:24'),
(24, '22.00', '2.00', 'subtract', '20.00', '2024-03-29 16:07:34', '2024-03-29 16:07:34'),
(25, '5.00', '5.00', 'add', '10.00', '2024-03-29 16:11:40', '2024-03-29 16:11:40'),
(26, '10.00', '25.00', 'add', '35.00', '2024-03-29 16:11:53', '2024-03-29 16:11:53'),
(27, '35.00', '2.00', 'multiply', '70.00', '2024-03-29 16:12:03', '2024-03-29 16:12:03'),
(28, '5.00', '5.00', 'add', '10.00', '2024-03-29 16:13:22', '2024-03-29 16:13:22'),
(29, '5.00', '5.00', 'add', '10.00', '2024-03-29 16:13:38', '2024-03-29 16:13:38'),
(30, '5.00', '5.00', 'add', '10.00', '2024-03-29 16:13:52', '2024-03-29 16:13:52'),
(31, '8.00', '8.00', 'add', '16.00', '2024-03-30 00:13:28', '2024-03-30 00:13:28'),
(32, '16.00', '8.00', 'add', '24.00', '2024-03-30 00:13:35', '2024-03-30 00:13:35'),
(33, '24.00', '8.00', 'add', '32.00', '2024-03-30 00:13:38', '2024-03-30 00:13:38'),
(34, '32.00', '8.00', 'add', '40.00', '2024-03-30 00:13:39', '2024-03-30 00:13:39'),
(35, '40.00', '8.00', 'add', '48.00', '2024-03-30 00:13:41', '2024-03-30 00:13:41'),
(36, '8.00', '8.00', 'add', '16.00', '2024-03-30 00:28:45', '2024-03-30 00:28:45'),
(37, '16.00', '8.00', 'add', '24.00', '2024-03-30 00:29:19', '2024-03-30 00:29:19'),
(38, '8.00', '8.00', 'add', '16.00', '2024-03-30 00:30:09', '2024-03-30 00:30:09'),
(39, '8.00', '8.00', 'add', '16.00', '2024-03-30 00:31:13', '2024-03-30 00:31:13'),
(40, '16.00', '8.00', 'add', '24.00', '2024-03-30 00:31:18', '2024-03-30 00:31:18'),
(41, '24.00', '8.00', 'add', '32.00', '2024-03-30 00:31:20', '2024-03-30 00:31:20'),
(42, '32.00', '8.00', 'add', '40.00', '2024-03-30 00:31:24', '2024-03-30 00:31:24'),
(43, '40.00', '8.00', 'subtract', '32.00', '2024-03-30 00:31:31', '2024-03-30 00:31:31'),
(44, '32.00', '8.00', 'subtract', '24.00', '2024-03-30 00:31:34', '2024-03-30 00:31:34'),
(45, '24.00', '8.00', 'subtract', '16.00', '2024-03-30 00:31:35', '2024-03-30 00:31:35'),
(46, '8.00', '8.00', 'add', '16.00', '2024-03-30 00:42:10', '2024-03-30 00:42:10'),
(47, '8.00', '8.00', 'add', '16.00', '2024-03-30 00:43:58', '2024-03-30 00:43:58'),
(48, '16.00', '8.00', 'add', '24.00', '2024-03-30 00:44:01', '2024-03-30 00:44:01'),
(49, '8.00', '8.00', 'add', '16.00', '2024-03-30 00:44:46', '2024-03-30 00:44:46'),
(50, '8.00', '8.00', 'add', '16.00', '2024-03-30 00:45:10', '2024-03-30 00:45:10'),
(51, '8.00', '8.00', 'add', '16.00', '2024-03-30 00:45:58', '2024-03-30 00:45:58'),
(52, '16.00', '2.00', 'multiply', '32.00', '2024-03-30 00:47:04', '2024-03-30 00:47:04'),
(53, '8.00', '8.00', 'add', '16.00', '2024-03-30 00:47:25', '2024-03-30 00:47:25'),
(54, '16.00', '8.00', 'add', '24.00', '2024-03-30 00:47:28', '2024-03-30 00:47:28'),
(55, '24.00', '8.00', 'add', '32.00', '2024-03-30 00:47:30', '2024-03-30 00:47:30'),
(56, '32.00', '8.00', 'add', '40.00', '2024-03-30 00:47:32', '2024-03-30 00:47:32'),
(57, '8.00', '2.00', 'subtract', '6.00', '2024-03-30 00:47:45', '2024-03-30 00:47:45'),
(58, '6.00', '2.00', 'subtract', '4.00', '2024-03-30 00:47:46', '2024-03-30 00:47:46'),
(59, '5.00', '2.00', 'multiply', '10.00', '2024-03-30 00:47:56', '2024-03-30 00:47:56'),
(60, '10.00', '2.00', 'multiply', '20.00', '2024-03-30 00:47:57', '2024-03-30 00:47:57'),
(61, '20.00', '2.00', 'multiply', '40.00', '2024-03-30 00:47:59', '2024-03-30 00:47:59'),
(62, '5.60', '1.20', 'add', '6.80', '2024-03-30 01:24:40', '2024-03-30 01:24:40'),
(63, '6.80', '1.20', 'add', '8.00', '2024-03-30 01:24:47', '2024-03-30 01:24:47'),
(64, '8.00', '1.20', 'add', '9.20', '2024-03-30 01:24:52', '2024-03-30 01:24:52'),
(65, '8.00', '6.00', 'subtract', '2.00', '2024-03-30 01:25:26', '2024-03-30 01:25:26'),
(66, '2.00', '6.00', 'subtract', '-4.00', '2024-03-30 01:25:34', '2024-03-30 01:25:34'),
(67, '-8.00', '6.00', 'add', '-2.00', '2024-03-30 01:26:37', '2024-03-30 01:26:37'),
(68, '8.00', '2.00', 'subtract', '6.00', '2024-03-30 01:27:08', '2024-03-30 01:27:08'),
(69, '8.00', '2.00', 'add', '10.00', '2024-03-30 01:29:28', '2024-03-30 01:29:28'),
(70, '8.00', '2.00', 'add', '10.00', '2024-03-30 01:31:10', '2024-03-30 01:31:10'),
(71, '10.00', '6.00', 'add', '16.00', '2024-03-30 01:31:34', '2024-03-30 01:31:34'),
(72, '16.00', '9.00', 'add', '25.00', '2024-03-30 01:31:50', '2024-03-30 01:31:50'),
(73, '25.00', '2.00', 'subtract', '23.00', '2024-03-30 01:31:59', '2024-03-30 01:31:59'),
(74, '23.00', '2.00', 'subtract', '21.00', '2024-03-30 01:32:09', '2024-03-30 01:32:09'),
(75, '8.00', '0.00', 'percentage', '0.08', '2024-03-30 01:44:55', '2024-03-30 01:44:55'),
(76, '50.00', '0.00', 'percentage', '0.50', '2024-03-30 01:45:05', '2024-03-30 01:45:05'),
(77, '8.00', '0.00', 'percentage', '0.08', '2024-03-30 01:53:30', '2024-03-30 01:53:30'),
(78, '0.08', '0.00', 'percentage', '0.00', '2024-03-30 01:53:35', '2024-03-30 01:53:35'),
(79, '0.00', '0.00', 'percentage', '0.00', '2024-03-30 01:53:38', '2024-03-30 01:53:38'),
(80, '5.00', '0.00', 'percentage', '0.05', '2024-03-30 01:53:59', '2024-03-30 01:53:59'),
(81, '8.00', '0.00', 'percentage', '0.08', '2024-03-30 02:00:19', '2024-03-30 02:00:19'),
(82, '80.00', '0.00', 'percentage', '0.80', '2024-03-30 02:03:54', '2024-03-30 02:03:54'),
(83, '90.00', '2.00', 'divide', '45.00', '2024-03-30 02:04:54', '2024-03-30 02:04:54'),
(84, '8.00', '5.00', 'add', '13.00', '2024-03-30 02:44:56', '2024-03-30 02:44:56'),
(85, '5.00', '6.00', 'add', '11.00', '2024-03-30 02:49:21', '2024-03-30 02:49:21'),
(86, '5.00', '6.00', 'add', '11.00', '2024-03-30 02:49:48', '2024-03-30 02:49:48'),
(87, '5.00', '6.00', 'add', '11.00', '2024-03-30 02:50:27', '2024-03-30 02:50:27'),
(88, '11.00', '6.00', 'add', '17.00', '2024-03-30 02:50:51', '2024-03-30 02:50:51'),
(89, '5.00', '6.00', 'add', '11.00', '2024-03-30 02:51:08', '2024-03-30 02:51:08'),
(90, '11.00', '6.00', 'add', '17.00', '2024-03-30 02:51:14', '2024-03-30 02:51:14'),
(91, '5.00', '6.00', 'add', '11.00', '2024-03-30 02:51:23', '2024-03-30 02:51:23'),
(92, '5.00', '6.00', 'add', '11.00', '2024-03-30 02:52:58', '2024-03-30 02:52:58'),
(93, '11.00', '6.00', 'add', '17.00', '2024-03-30 02:53:01', '2024-03-30 02:53:01'),
(94, '17.00', '6.00', 'add', '23.00', '2024-03-30 02:53:19', '2024-03-30 02:53:19'),
(95, '5.00', '6.00', 'add', '11.00', '2024-03-30 02:55:14', '2024-03-30 02:55:14'),
(96, '11.00', '6.00', 'add', '17.00', '2024-03-30 02:55:16', '2024-03-30 02:55:16'),
(97, '6.00', '6.00', 'add', '12.00', '2024-03-30 02:55:26', '2024-03-30 02:55:26'),
(98, '12.00', '6.00', 'subtract', '6.00', '2024-03-30 02:55:28', '2024-03-30 02:55:28'),
(99, '6.00', '3.00', 'add', '9.00', '2024-03-30 02:55:36', '2024-03-30 02:55:36'),
(100, '500.00', '2.00', 'multiply', '1000.00', '2024-03-30 02:57:32', '2024-03-30 02:57:32'),
(101, '2.00', '2.00', 'add', '4.00', '2024-03-30 02:57:45', '2024-03-30 02:57:45'),
(102, '4.00', '2.00', 'subtract', '2.00', '2024-03-30 02:58:02', '2024-03-30 02:58:02'),
(103, '2.00', '2.00', 'add', '4.00', '2024-03-30 02:58:50', '2024-03-30 02:58:50'),
(104, '4.00', '2.00', 'subtract', '2.00', '2024-03-30 02:59:12', '2024-03-30 02:59:12'),
(105, '4.00', '2.00', 'multiply', '8.00', '2024-03-30 02:59:34', '2024-03-30 02:59:34'),
(106, '4.00', '2.00', 'divide', '2.00', '2024-03-30 02:59:52', '2024-03-30 02:59:52'),
(107, '500.00', '0.00', 'percentage', '5.00', '2024-03-30 03:00:21', '2024-03-30 03:00:21'),
(108, '9.00', '5.00', 'add', '14.00', '2024-03-30 03:04:54', '2024-03-30 03:04:54'),
(109, '14.00', '5.00', 'add', '19.00', '2024-03-30 03:04:56', '2024-03-30 03:04:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_29_060515_create_calculators_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calculators`
--
ALTER TABLE `calculators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `calculators`
--
ALTER TABLE `calculators`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
