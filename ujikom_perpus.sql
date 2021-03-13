-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2021 at 12:26 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `writer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `code`, `name`, `writer`, `year`, `stock`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'A1', 'Bahasa Inggris', 'Andi Novianto', '2014', 30, '2021-02-19 12:44:14', '2021-02-20 13:33:17', 13),
(2, 'A2', 'Bahasa Indonesia', 'Andi Novianto', '2014', 30, '2021-02-19 12:46:07', '2021-02-20 14:21:53', 11),
(3, 'C1', 'Simulasi dan Komunikasi Digital', 'Andi Novianto', '2018', 30, '2021-02-20 15:07:21', '2021-02-20 15:17:35', 10),
(4, 'C2', 'Sistem Komputer', 'Andi Novianto', '2018', 30, '2021-02-20 15:08:03', '2021-02-20 15:17:44', 6),
(5, 'C3', 'Komputer dan Jaringan Dasar', 'Andi Novianto', '2018', 30, '2021-02-20 15:09:59', '2021-02-20 15:09:59', 7),
(6, 'C4', 'Pemrograman Dasar', 'Andi Novianto', '2018', 30, '2021-02-20 15:10:42', '2021-02-20 15:10:42', 8),
(7, 'C5', 'Dasar Desain Grafis', 'Andi Novianto', '2018', 30, '2021-02-20 15:11:22', '2021-02-20 15:11:22', 9),
(8, 'C6', 'Pemodelan Perangkat Lunak', 'Andi Novianto', '2018', 30, '2021-02-20 15:11:51', '2021-02-20 15:11:51', 2),
(9, 'C7', 'Basis Data', 'Andi Novianto', '2018', 30, '2021-02-20 15:12:19', '2021-02-20 15:12:19', 3),
(10, 'C8', 'Pemrograman Berorientasi Obyek', 'Andi Novianto', '2018', 30, '2021-02-20 15:13:08', '2021-02-20 15:13:08', 4),
(11, 'C9', 'Produk Kreatif dan Kewirausahaan', 'Andi Novianto', '2018', 30, '2021-02-20 15:14:20', '2021-02-20 15:14:20', 5),
(12, 'C10', 'Pemrograman Web Dasar', 'Andi Novianto', '2018', 30, '2021-02-20 15:16:11', '2021-02-20 15:16:52', 1),
(13, 'A3', 'Matematika', 'Andi Novianto', '2013', 30, '2021-02-22 13:59:06', '2021-02-22 13:59:48', 12);

-- --------------------------------------------------------

--
-- Table structure for table `book_loan`
--

CREATE TABLE `book_loan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `loan_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pemrograman Web Dasar', '2021-02-19 12:39:51', '2021-02-20 15:16:32'),
(2, 'Pemodelan Perangkat Lunak', '2021-02-19 12:40:32', '2021-02-19 12:40:32'),
(3, 'Basis Data', '2021-02-19 12:40:37', '2021-02-19 12:40:37'),
(4, 'Pemrograman Berorientasi Obyek', '2021-02-19 12:40:42', '2021-02-19 12:40:42'),
(5, 'Produk Kreatif dan Kewirausahaan', '2021-02-19 12:40:58', '2021-02-19 12:40:58'),
(6, 'Sistem Komputer', '2021-02-19 12:41:05', '2021-02-19 12:41:05'),
(7, 'Komputer dan Jaringan Dasar', '2021-02-19 12:41:11', '2021-02-19 12:41:11'),
(8, 'Pemrograman Dasar', '2021-02-19 12:41:15', '2021-02-19 12:41:15'),
(9, 'Dasar Desain Grafis', '2021-02-19 12:41:19', '2021-02-19 12:41:19'),
(10, 'Simulasi dan Komunikasi Digital', '2021-02-19 12:41:27', '2021-02-19 12:41:27'),
(11, 'Bahasa Indonesia', '2021-02-19 12:41:39', '2021-02-19 12:41:39'),
(12, 'Matematika', '2021-02-19 12:41:44', '2021-02-19 12:41:44'),
(13, 'Bahasa Inggris', '2021-02-19 12:41:49', '2021-02-19 12:41:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `return` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `phone`, `gender`, `birthday`, `address`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Khanif', '089630755192', 'male', '2002-12-08', 'Desa Mertapada Wetan Blok Pahing RT/RW:03/03 Kec.Astanajapura Kab.Cirebon', '1234_1614474223.jpg', '2021-02-26 23:09:31', '2021-02-27 18:03:43');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_01_092748_create_categories_table', 1),
(5, '2020_10_01_101058_create_books_table', 1),
(6, '2020_10_02_054726_create_stocks_table', 1),
(7, '2020_10_02_120000_create_members_table', 1),
(8, '2020_10_02_120209_create_loans_table', 1),
(9, '2020_10_04_092340_create_book_loan_table', 1),
(10, '2020_10_07_103601_create_sites_table', 1);

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
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `name`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Perpustakaan', 'Indonesia', '2021-02-19 12:36:39', '2021-02-19 12:36:39');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('in','out') COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `type`, `total`, `created_at`, `updated_at`, `book_id`) VALUES
(1, 'in', 30, '2021-02-19 12:46:51', '2021-02-19 12:46:51', 1),
(2, 'in', 30, '2021-02-19 12:46:56', '2021-02-19 12:46:56', 2),
(3, 'in', 30, '2021-02-20 15:17:35', '2021-02-20 15:17:35', 3),
(4, 'in', 30, '2021-02-20 15:17:44', '2021-02-20 15:17:44', 4),
(5, 'in', 30, '2021-02-19 22:20:09', '2021-02-19 22:20:09', 5),
(6, 'in', 30, '2021-02-19 22:20:09', '2021-02-19 22:20:09', 6),
(7, 'in', 30, '2021-02-19 12:46:51', '2021-02-19 12:46:51', 7),
(8, 'in', 30, '2021-02-19 12:46:56', '2021-02-19 12:46:56', 8),
(9, 'in', 30, '2021-02-20 15:17:35', '2021-02-20 15:17:35', 9),
(10, 'in', 30, '2021-02-20 15:17:44', '2021-02-20 15:17:44', 10),
(11, 'in', 30, '2021-02-19 22:20:09', '2021-02-19 22:20:09', 11),
(12, 'in', 30, '2021-02-19 22:20:09', '2021-02-19 22:20:09', 12),
(13, 'in', 30, '2021-02-22 13:59:48', '2021-02-22 13:59:48', 13);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$aIIVZ2WsljdIJpVILGCM0eLrbT.GYIB6ZfPah9aj3i1JLG.PPchrm', NULL, NULL, '2021-02-19 12:37:42', '2021-02-19 12:37:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- Indexes for table `book_loan`
--
ALTER TABLE `book_loan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_loan_book_id_foreign` (`book_id`),
  ADD KEY `book_loan_loan_id_foreign` (`loan_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loans_member_id_foreign` (`member_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
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
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stocks_book_id_foreign` (`book_id`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `book_loan`
--
ALTER TABLE `book_loan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book_loan`
--
ALTER TABLE `book_loan`
  ADD CONSTRAINT `book_loan_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_loan_loan_id_foreign` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `loans_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `stocks_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
