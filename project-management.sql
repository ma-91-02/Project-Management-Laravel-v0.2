-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2022 at 09:04 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project-management`
--

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
(4, '2022_03_21_132245_create_projects_table', 2),
(5, '2022_03_21_164506_change_tilte_to_title', 3),
(6, '2022_03_21_164715_change_tilte_to_title', 4),
(7, '2022_03_22_034632_create_tasks_table', 5),
(8, '2022_03_22_115207_add_image_to_users_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ma@your-ma.com', '$2y$10$rEuhbSN7C49GKg2ws33XvuZQjXNDpjnJyH85c.zO00Wl0qSrdObH2', '2022-03-22 06:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'المشروع الاول', 'المشروع الاول وصف', 2, 1, '2022-03-21 14:55:24', '2022-03-22 08:02:56'),
(3, 'المشروع الثاني', 'وصف المشروع الثاني update', 0, 1, '2022-03-21 14:57:13', '2022-03-22 03:24:54'),
(5, 'مشروع جديد بعد الجد', 'مشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجدمشروع جديد بعد الجد', 1, 1, '2022-03-22 08:03:33', '2022-03-22 08:42:36');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `done` tinyint(1) NOT NULL DEFAULT 0,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `body`, `done`, `project_id`, `created_at`, `updated_at`) VALUES
(4, 'new body', 0, 4, '2022-03-22 02:51:46', '2022-03-22 02:51:50'),
(6, 'new body', 0, 3, '2022-03-22 07:46:32', '2022-03-22 07:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'users/default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `image`) VALUES
(1, 'ma', 'ma@your-ma.com', NULL, '$2y$10$vgpZadDb3vlswUpl6zHuAOlriQQ82VsVSZfr0ph/wLD2TumxxrZXi', 'AS1yxE4egXoKmHZmgHMZ340LcReRMz5T1i1dECu4GiLuSu6kz3ugl5xbmXcl', '2022-03-21 11:57:13', '2022-03-21 11:57:13', 'users/default.png'),
(2, 'محمد', 'ma@your-ma.comd', NULL, '$2y$10$shHeX0Xzv/4PFjlChpI5BusagV/FHxshLweJt0lQsC8qxxr3l70vy', 'koiSrVwMXzrTfXDibzMflrMLWQWNCXHXrLWTCuItSPlCkSwGM11Ozldg4dxN', '2022-03-22 09:41:47', '2022-03-22 10:11:54', 'users/quoJon2hK2T7NW0eXjEquGia7AtbuJTeKFScjnZr.png'),
(3, 'Your MA', 'mohamed.91al.zurfi@gmail.com', NULL, '$2y$10$HIst8hPZKYgUs6Kv/T77wOMQY8ebH3wF6WuDWeWkUbJ10YMWsfOri', NULL, '2022-03-22 10:12:34', '2022-03-22 10:21:49', 'users/ojzuRtDkr11EjKxZekYAwMq8GKUnj28KFlRQCiSI.png'),
(4, 'ali', 'mohamed.91al.zurfi@gmail.com2', NULL, '$2y$10$modEwo6m.V5xAWiK/KSn/umqxTf7upS6eKykSlMJE3w/4bPRWc39C', NULL, '2022-03-22 10:24:39', '2022-03-22 10:24:39', 'users/default.png');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_user_id_foreign` (`user_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
