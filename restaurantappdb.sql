-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2021 at 05:53 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurantappdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sea Food', '2021-07-30 05:21:15', '2021-07-30 12:55:56'),
(2, 'BreakFast', '2021-07-30 05:24:12', '2021-07-30 05:24:12'),
(3, 'Coffee', '2021-07-30 09:55:34', '2021-07-30 12:56:25'),
(4, 'Lunch', '2021-07-30 09:55:56', '2021-07-30 09:55:56'),
(5, 'Dinner', '2021-07-30 09:56:05', '2021-07-30 09:56:05'),
(6, 'Snacks', '2021-07-30 09:58:39', '2021-07-30 09:58:39'),
(7, 'Kid Menu', '2021-07-30 10:21:21', '2021-07-30 10:21:21'),
(9, 'Tea', '2021-07-30 15:25:52', '2021-07-30 15:25:52');

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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `price`, `image`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Hamburger', '10.00', '0802202116070561081829ebeb6.jpg', 'hamburger', 6, '2021-08-02 10:37:05', '2021-08-02 10:37:05'),
(3, 'Barbeque', '20.00', '08032021160356610968ec32b82.jpg', 'barbeque', 4, '2021-08-03 10:33:56', '2021-08-03 10:33:56'),
(4, 'Coffee', '5.00', '080320211606516109699b1cf4d.jpg', 'Filter Coffee', 3, '2021-08-03 10:36:51', '2021-08-03 10:36:51');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_30_103204_create_categories_table', 2),
(5, '2021_07_30_201622_create_menus_table', 3),
(6, '2021_08_02_183523_create_tables_table', 4),
(7, '2021_08_04_203938_create_sales_table', 5),
(8, '2021_08_04_204834_create_sale_details_table', 5),
(9, '2021_08_09_155347_add_role_field_to_users', 6);

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
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table_id` int(11) NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `total_received` decimal(8,2) NOT NULL DEFAULT 0.00,
  `change` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sale_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `table_id`, `table_name`, `user_id`, `user_name`, `total_price`, `total_received`, `change`, `payment_type`, `sale_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'A1', 1, 'Blue Krystal Admin', '25.00', '30.00', '5.00', 'cash', 'paid', '2021-08-05 14:00:43', '2021-08-07 12:38:02'),
(2, 2, 'A2', 1, 'Blue Krystal Admin', '25.00', '25.00', '0.00', 'cash', 'paid', '2021-08-05 14:01:53', '2021-08-07 13:02:45'),
(5, 1, 'A1', 1, 'Blue Krystal Admin', '15.00', '20.00', '5.00', 'cash', 'paid', '2021-08-10 10:51:21', '2021-08-10 10:52:19'),
(6, 1, 'A1', 1, 'Blue Krystal Admin', '10.00', '10.00', '0.00', 'credit card', 'paid', '2021-08-10 10:54:06', '2021-08-10 10:54:22'),
(7, 1, 'A1', 1, 'Blue Krystal Admin', '30.00', '40.00', '10.00', 'cash', 'paid', '2021-08-10 11:40:22', '2021-08-10 11:45:16');

-- --------------------------------------------------------

--
-- Table structure for table `sale_details`
--

CREATE TABLE `sale_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'noConfirm',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_details`
--

INSERT INTO `sale_details` (`id`, `sale_id`, `menu_id`, `menu_name`, `menu_price`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Coffee', 5, 1, 'confirm', '2021-08-05 14:00:44', '2021-08-05 14:02:41'),
(2, 1, 1, 'Hamburger', 10, 1, 'confirm', '2021-08-05 14:00:54', '2021-08-05 14:02:41'),
(3, 2, 3, 'Barbeque', 20, 1, 'confirm', '2021-08-05 14:01:53', '2021-08-07 02:02:23'),
(4, 1, 1, 'Hamburger', 10, 1, 'confirm', '2021-08-05 14:02:27', '2021-08-05 14:02:41'),
(11, 5, 4, 'Coffee', 5, 3, 'confirm', '2021-08-10 10:51:22', '2021-08-10 10:52:02'),
(12, 6, 4, 'Coffee', 5, 2, 'confirm', '2021-08-10 10:54:06', '2021-08-10 10:54:12'),
(13, 7, 4, 'Coffee', 5, 2, 'confirm', '2021-08-10 11:40:22', '2021-08-10 11:45:01'),
(14, 7, 1, 'Hamburger', 10, 2, 'confirm', '2021-08-10 11:44:44', '2021-08-10 11:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'A1', 'available', '2021-08-02 13:46:57', '2021-08-10 11:45:16'),
(2, 'A2', 'available', '2021-08-02 13:47:52', '2021-08-07 13:02:45'),
(4, 'A3', 'available', '2021-08-02 16:31:07', '2021-08-02 16:31:07'),
(5, 'A4', 'available', '2021-08-02 16:31:38', '2021-08-02 16:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Blue Krystal Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$FS8rBFxfZJfOFDGv34hN4OFTyGla7YjvrgafKjp6EaUaysri81R5e', NULL, '2021-07-28 09:59:08', '2021-07-28 09:59:08'),
(2, 'ARINDAM DAS', 'cashier', 'tcsarindam@gmail.com', NULL, '$2y$10$JPJQjHpzRajREZBeJ/Xx8OEbM9OCMBXc8ISi35Ai961e9dYNLU6RC', NULL, '2021-08-09 10:49:59', '2021-08-09 10:49:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_details`
--
ALTER TABLE `sale_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sale_details`
--
ALTER TABLE `sale_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
