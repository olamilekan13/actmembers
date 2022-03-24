-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2022 at 09:20 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `act`
--
CREATE DATABASE IF NOT EXISTS `act` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `act`;

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_03_08_093211_create_sessions_table', 1),
(7, '2022_03_11_214400_create_states_table', 2);

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
('olamilekan.omosanya@itl.ng', '$2y$10$kjMRPiNfr1XxbV1S3k9HjO9CfLgH22.vy0etQz2z8UpqK/w7kOfGy', '2022-03-09 12:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3LlnktsHWGNoBYvSz1621Kapa5dde3OvGEwkYzwH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEQ5cmpSNnNQSUs2V1RYU2V0OEhHb3ZucVB4a2hKM3VOb0tNQVhrTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1647476010),
('6cePXa94tQx54DSZPdce5FvfuNpYPVLF4soqtsTk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1NZNVZycEpMVnlEcklXaGZyS0s3V0Q4SDFQbEhwNGNpMTd1V0ljbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1647035642),
('ERipgsxRViZAVNDKTSJv5pMifkK9PFeTRldBzmZl', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSWFzNmRHV0pOaVpHa0pOWUFhaFRjc1M1NWc3cUVLNllRV1JsSUxjTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGxpRU5XSFhsZG5IeUxHNzlqQ0xOQ2VmODg5RHNPbHlRbHhTaHhsWS5FR2VWQU1yQnFrbUJ5Ijt9', 1646844545),
('HyhcysezPiixEKsjkRlUNEXjnuD1F077yqUBbiBP', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZ2VMVDJTeVJxUkFrb0hVNkJVcEd4MElEeHdteFNlcFlPaGY2RVlScCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRsaUVOV0hYbGRuSHlMRzc5akNMTkNlZjg4OURzT2x5UWx4U2h4bFkuRUdlVkFNckJxa21CeSI7fQ==', 1647105466),
('OhBJ68E2sKAhXeYQ7SgE5GWjlXqedkMGeYAufK6B', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDROZFZxckwySFRWQzJvakFONFlKZDhQeWRndmx4VGMyNlJEU2cwYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1647100698),
('Vry6uSQ4EqkTlvK3jan6Ue0LCrHjmsjKxRERoYzb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVFKb0lxaWZ6UERRbVUzWU5kcUcxNk9zOVF2dmxlc01EQnF6cW1OZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1647081911),
('xYAZFIaJ4xAjD0LS2H4E90p9BP2Nivo8Lc1890GO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVU5jaTdpV3lTeXVuN1VqdzBia0drb05XWllnUDVEd29XR0dNcFVjaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1647090787);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `local-government` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wards` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `polling-unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lcda` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `polling-unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` tinyint(1) NOT NULL DEFAULT 0,
  `validId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `address`, `phone`, `gender`, `state`, `lg`, `ward`, `polling-unit`, `usertype`, `validId`, `img`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'nhjkjkjjkjkki', 'm,lscdklfldklf', 'kdkddkdk', 'dcffeererfrr', '1234567778', 'M', 'M', 'M', 'F', 'F', 0, 'crownrise 1.png', '2012 [Converted].ai', 'user@gmail.com', NULL, '$2y$10$Z3kdhT1bbv5fAQqxjEwg9uZ6FFlOfsvZBr.X5suLmUTFERIZ3HAXK', 'eyJpdiI6IjJjdHozMXBIRm9jeGhIa3JHWW43QXc9PSIsInZhbHVlIjoicTlpZEttOWtrYTc3MnJ1MEpqeTZTeWIvMTJ2T3dxZUtlQnJlQjNvdGc2Zz0iLCJtYWMiOiJmMDgzOWU2YTJjMGRiNDdkYjlhODM5ZDEzNDQ3MjZmN2Q3YmIyOTc0YmQxYTJhMmI3M2IyNzdiYmI0NzUyMzYyIiwidGFnIjoiIn0=', 'eyJpdiI6IkVOdzRLdi80b2s0SlJmTGN2aHpjVXc9PSIsInZhbHVlIjoiaHJkM0ExbVJOUkFLMEFjQ3ZkdFI4V3MyOWczWUFxOTQ0eHVoQU1JUWs2RUhhQmRvK3J5T1BqcXROY29OekpXak44Q0dNZ3RrczZKcXdHVVpLT2EzZGpyZFBkR2pvV2pEUkRNQXlMV3BvVzhCNWdkR0pQNGdJY3hBaWY1c2tTS29HZUZGUWlQYldSaTlMRXJ5c1E5eklLRzZGTnlaY3ZRdngzOFRjb3RKWDViMlQzcjBlV0tEemFubFh0ZE9nSGFtb2N2KzYvMzFyNTd6QUl3UldISjE2eGJ2YytlamhnSVRaWUlzeThqV0d2U1U1UWJTVkFtNXoyaG02Z3JyVndDOFNkeEhiNTZEaktqTU0wVlp6bFpBRnc9PSIsIm1hYyI6ImFlOGM3YmRmNGI1Y2MwMWI3MzI0NzUyNzYwM2NlOTUxYzJkNzIwZjA1MmEzMmRmYTA5ZGIxZjg1OTZmYThjODgiLCJ0YWciOiIifQ==', NULL, NULL, NULL, '2022-03-08 16:17:33', '2022-03-09 07:25:53'),
(2, 'omosanya', 'olamilekan', 'ganiu', '6 ogba aguda. lagos state', '09069946685', 'M', 'abia', 'ikeja', 'ijaiye', 'agidingbi', 1, '2012 [Converted].ai', 'chairman.jpg', 'olamilekan.omosanya@itl.ng', NULL, '$2y$10$CL6JwrTEym4SmT5ly0hy1uZk/jLXxAllP.aH1m2Kqc5ucVtUeUflG', 'eyJpdiI6IlFBUmd2akdkZE5xbE1IY2RSS0prb1E9PSIsInZhbHVlIjoiMGhGcHB4MnhsRXg2Yjg2WC9tQVlFRUwvS25KU3pTakNPem90UE9kbG9Qcz0iLCJtYWMiOiJjYmEyOWRhN2Y5MDZkMWRhY2FiNTZjNTM3M2NlMDFjY2MxZDIzN2I3ZjhkNmM2MTg5MTI1NDE3NTc5Nzg0ODRhIiwidGFnIjoiIn0=', 'eyJpdiI6IlNjcGx4OTJJTDJKZTBUREVjanJBOFE9PSIsInZhbHVlIjoicnFlSDVyelN3QVRtdzR3QzBwZFc4SGR0aTFUVmRZZUhQNUMzQ1cyTGgrRno4YXlzWGd3cGkxcmYzZVdVdXZrVUxRTXZFZTlZNUFwcDVZOU5xUUxHSDBOWWFGUzQ2V2VLTmZLc2d5WU9kU0cxRFRBWHluVFM4ZGlkUmtvRGdjZEltM0RRWkFCNlN3by9Tc1haSlVqaG5GM2ZYVE9aek8yb2ZnSDFtdDFlemxadEZYWk41ai9NRFhmd2piSGNRNmJFa2FZcWJoUms3Q1BKdm1YMy91V2FRSGpUalNYdUVDdmxnYkUwdUVKYjZvYVhIT1lrb2NKcmhkOTJubmMvdnpiaFBVdGIwYWh5d3UvVWd2OXZnUE9US1E9PSIsIm1hYyI6IjIzZmE1ODVmZGQ4YjQyYzFjMGE1NTZjYzFjMjEyNmM3Yjg3YzE3N2NmNzdiMGVmNTA2NDQ3ZmUzODRkY2IwZmUiLCJ0YWciOiIifQ==', NULL, NULL, NULL, '2022-03-09 08:30:10', '2022-03-09 12:45:30'),
(3, 'user', 'user', 'user', 'awolowo way', '09012345678', 'M', 'abia', 'ikeja', 'ijaiye', 'agidingbi', 0, '2012 [Converted].ai', 'chairman.jpg', 'user01@gmail.com', NULL, '$2y$10$liENWHXldnHyLG79jCLNCef889DsOlyQlxShxlY.EGeVAMrBqkmBy', NULL, NULL, NULL, NULL, NULL, '2022-03-09 11:54:26', '2022-03-09 11:54:26');

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `actmembers`
--
CREATE DATABASE IF NOT EXISTS `actmembers` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `actmembers`;

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `polling-unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` tinyint(1) NOT NULL DEFAULT 0,
  `validId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `apitutor`
--
CREATE DATABASE IF NOT EXISTS `apitutor` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `apitutor`;

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_23_165759_create_students_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `course`, `created_at`, `updated_at`) VALUES
(1, 'keji', 'science', NULL, NULL),
(2, 'olaoluwa', 'java', NULL, NULL),
(3, 'iyanuoluwa', 'php', NULL, NULL),
(4, 'olamilekan', 'laravel', NULL, NULL),
(5, 'olatunji', 'nodejs', NULL, NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `billdb`
--
CREATE DATABASE IF NOT EXISTS `billdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `billdb`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(128) NOT NULL,
  `fname` varchar(128) NOT NULL,
  `lname` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `fname`, `lname`, `username`, `password`) VALUES
(32, 'Jannah', 'Mazo', 'jannah', '11'),
(37, 'Armando', 'Langido', 'loading', '93'),
(38, 'Umar', 'Daraz', 'Malik', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(128) NOT NULL,
  `ttl_electric` int(11) NOT NULL,
  `ttl_rental` int(11) NOT NULL,
  `ttl_water` int(11) NOT NULL,
  `date_issued` date NOT NULL,
  `tenant_id` int(128) NOT NULL,
  `room_id` int(11) NOT NULL,
  `issued_by` varchar(28) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `ttl_electric`, `ttl_rental`, `ttl_water`, `date_issued`, `tenant_id`, `room_id`, `issued_by`, `status`) VALUES
(1, 60, 2500, 100, '2018-12-13', 30, 21, 'waqas yaqoob', 0);

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `dis_id` int(11) NOT NULL,
  `dis_prc` text NOT NULL,
  `dis_val` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`dis_id`, `dis_prc`, `dis_val`) VALUES
(1, '0%', '0'),
(2, '10%', '0.10'),
(3, '20%', '0.20'),
(4, '30%', '0.30'),
(5, '40%', '0.40'),
(6, '50%', '0.50'),
(7, '60%', '0.60'),
(8, '70%', '0.70'),
(9, '80%', '0.80'),
(10, '90%', '0.90'),
(11, '100%', '0.100');

-- --------------------------------------------------------

--
-- Table structure for table `electricity`
--

CREATE TABLE `electricity` (
  `electric_id` int(128) NOT NULL,
  `amount` varchar(128) NOT NULL,
  `room_id` int(128) NOT NULL,
  `date_st` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `electricity`
--

INSERT INTO `electricity` (`electric_id`, `amount`, `room_id`, `date_st`, `date_end`) VALUES
(4, '60', 21, '2018-12-11', '2018-12-16');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(128) NOT NULL,
  `room_name` varchar(128) NOT NULL,
  `rental` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_name`, `rental`) VALUES
(1, 'Prep 1', '2000'),
(2, 'Nursary ', '1800'),
(3, 'Class 1 A', '2000'),
(4, 'Class 2 A', '1890'),
(5, 'Class 3 A', '1832'),
(6, 'Class 4 A', '1833'),
(7, 'Class 5 A', '1850'),
(8, 'Class 6 A', '1700'),
(9, 'Class 7 A', '2100'),
(14, 'Class 8 A', '2000'),
(15, 'Class 9 A', '2000'),
(20, 'Class 10 A', '2000'),
(21, 'class 6', '2500'),
(22, 'class 7', '2500');

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `tenant_id` int(128) NOT NULL,
  `room_id` int(11) NOT NULL,
  `gender` varchar(128) NOT NULL,
  `fname` varchar(128) NOT NULL,
  `mname` varchar(128) NOT NULL,
  `lname` varchar(128) NOT NULL,
  `nname` varchar(128) NOT NULL,
  `age` text NOT NULL,
  `bdate` date NOT NULL,
  `address` varchar(128) NOT NULL,
  `contact` text NOT NULL,
  `water` varchar(128) NOT NULL,
  `date_registered` date NOT NULL,
  `dis_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`tenant_id`, `room_id`, `gender`, `fname`, `mname`, `lname`, `nname`, `age`, `bdate`, `address`, `contact`, `water`, `date_registered`, `dis_id`) VALUES
(30, 21, 'Male', 'malik', 'umar', 'daraz', 'zahoor ahmad', '23', '2018-12-04', 'karachi', '3403902597', '10000', '2018-12-10', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`dis_id`);

--
-- Indexes for table `electricity`
--
ALTER TABLE `electricity`
  ADD PRIMARY KEY (`electric_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`tenant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `dis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `electricity`
--
ALTER TABLE `electricity`
  MODIFY `electric_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tenant`
--
ALTER TABLE `tenant`
  MODIFY `tenant_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog`;

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2021_11_30_182857_create_posts_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `topic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `active`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Omosanya Olamilekan', 'renarddrakeintl@gmail.com', 'larrybcomms', NULL, '$2y$10$sJ6m5PjQXbisQc3r9okMnO.WlD7mS9En82Y.4FS1lA0oPMQv3SrKK', 0, 0, NULL, '2021-11-18 19:07:52', '2021-11-18 19:07:52'),
(2, 'user01', 'user@gmail.com', 'user', NULL, '$2y$10$egAi1juhaJGPaclxu7RqMusL.ZtGXzYQSvOHQz1Pj.8uCTdgg5b42', 0, 0, NULL, '2021-11-29 13:38:36', '2021-11-29 13:38:36'),
(3, 'Omosanya Ganiu olamilekan', 'olamilekanomosanya@gmail.com', 'admin', NULL, '$2y$10$yrxPQ3EHDBNybaYsPYev2.bvH67CO5U/fo.qu8sPTIwRulyqlpBhO', 0, 0, NULL, '2022-02-14 18:20:23', '2022-02-14 18:20:23'),
(4, 'john doe', 'user01@gmail.com', 'user01', NULL, '$2y$10$kPI0QFHONv0U4Oaw/QyKieMyS8CZoh6KD55rdJhoGBDEd0cdVAPV6', 0, 0, NULL, '2022-02-15 08:10:03', '2022-02-15 08:10:03');

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `blog2`
--
CREATE DATABASE IF NOT EXISTS `blog2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog2`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic_id`, `title`, `image`, `body`, `published`, `created_at`) VALUES
(13, 21, 2, 'One day your life will flash before your eyes', '1574520979_image_1.png', '&lt;p&gt;This is a sample post&lt;/p&gt;', 1, '2019-11-23 15:56:19'),
(14, 21, 2, 'You have to believe that things will get better', '1574521288_image_5.png', '&lt;p&gt;Many times I have come across instances where some people scorn the practice of setting New Year Resolutions.&lt;/p&gt;&lt;p&gt;Their reason for this goes something like this:&lt;/p&gt;&lt;p&gt;The very word resolution is an indication of some form of internal conflict springing from an ineffectual self-governance in a person. It means the individual is waging a fight against something undesirable in their life; or is making a conscious decision to pursue certain ideals that before were absent in their life.&lt;/p&gt;&lt;p&gt;Aren&rsquo;t you supposed to be pursuing these ideals every day of your life? Isn&rsquo;t it supposed to be the default state of your life? Why would you wait for a new year before you make a resolution to better your life?&lt;/p&gt;&lt;p&gt;Such people also avoid new year resolutions or scorn the practice thereof because for them, experience has proven it to be ineffective.&lt;/p&gt;&lt;p&gt;I don&rsquo;t entirely agree with such people. I am not advocating the practice of new year resolutions either. But I&rsquo;d sooner advise a person to set new year resolutions they will end up abandoning by the end of January than advise them to sleepwalk through their life the entire year.&lt;/p&gt;&lt;p&gt;At the very least, setting new year resolutions means that you still have an interest in making your life better, and that is a good place to start. You just need a better strategy than new year resolutions, which is what I bring to the table today.&lt;/p&gt;&lt;p&gt;I call it The &lt;i&gt;12 months challenge.&lt;/i&gt;&lt;/p&gt;&lt;p&gt;This challenge is simple: At the end of the year, write and publish an article in which you list 12 of your proudest, most fulfilling accomplishments from each of the 12 months of that year. Be very strict with the rules of the challenge: Pick only one accomplishment per month.&lt;/p&gt;&lt;p&gt;You are free to accomplish as many things in a month as you can but pick only one to be added to the list for any particular month.&lt;/p&gt;&lt;p&gt;Publish this article on your blog (if you have one), on your linkedIn profile, and on any of the social media platforms; share it with your close network of trusted family members, friends, colleagues and mentors.&lt;/p&gt;&lt;p&gt;It is very important that you share the article to as wide an audience as possible if the contents are not too private. Sharing such an article can help you connect with other individuals with shared interests, dreams, and plans for the future. And such connections can open doors for you and a lot of other people that you never knew existed.&lt;/p&gt;&lt;p&gt;Most importantly, if you know you are preparing the article to share it with other people, you are more likely to take it very seriously.&lt;/p&gt;&lt;p&gt;One thing I almost avoided mentioning is the nature of these accomplishments. I&rsquo;m avoiding this aspect of the challenge because I can&rsquo;t really tell you what you should aim at accomplishing in your life in order to feel fulfilled. You are going to have to do that yourself because only you can do it best. It is your purpose. You may think you don&rsquo;t know it yet but at some deeper level you do.&lt;/p&gt;&lt;p&gt;I can only tell you what works for me: I have a few questions I usually ask myself when I feel that I am not living a fulfilling life at any time in my life. At such times I ask myself:&lt;/p&gt;&lt;p&gt;If I were to be diagnosed with terminal cancer and given only 6 months to live, how would I spend that time? What things would I value most? What would I regret not doing?&lt;/p&gt;&lt;p&gt;For me, the answers to such questions immediately and unmistakably stand out clear in my mind:&lt;/p&gt;&lt;p&gt;I would regret not taking better care of my parents than what I am doing. They have toiled and soiled far too much for me to be ordinary.&lt;br&gt;I would grieve in my spirit at all those years I felt timid and settled for far far less than I am worth.&lt;/p&gt;&lt;p&gt;I would regret my passivity in relationships with all those amazing people who have once featured in my life and left because of my apparent disinterest. I could have swallowed my pride and risked exposing my insecurities, my quirks and my shortcomings in general. Hiding them only made me look uninterested.&lt;/p&gt;&lt;p&gt;I would regret all those hours I wasted feeling bored when I could have set up a blog to explore my passion for writing.&lt;/p&gt;&lt;p&gt;I could have read more and more books.&lt;/p&gt;&lt;p&gt;I would regret never having taken any steps towards realizing all those side projects I kept conceiving day after day in my mind.&lt;/p&gt;&lt;p&gt;And many more...&lt;/p&gt;&lt;p&gt;When you ask yourself the above questions, the answers will pop up almost immediately and they will fill you with a new vitality and enthusiasm towards your life goals.&lt;/p&gt;&lt;p&gt;Now assume your time from now on is as limited and valuable as it could be if the above assumption about cancer were real. Then start working on these projects one month at a time. Start living your unlived life one month at a time.&lt;/p&gt;', 1, '2019-11-23 16:01:28'),
(15, 21, 4, 'The spectacle before us was indeed sublime', '1574521317_image_2.png', '&lt;p&gt;Many times I have come across instances where some people scorn the practice of setting New Year Resolutions.&lt;/p&gt;&lt;p&gt;Their reason for this goes something like this:&lt;/p&gt;&lt;p&gt;The very word resolution is an indication of some form of internal conflict springing from an ineffectual self-governance in a person. It means the individual is waging a fight against something undesirable in their life; or is making a conscious decision to pursue certain ideals that before were absent in their life.&lt;/p&gt;&lt;p&gt;Aren&rsquo;t you supposed to be pursuing these ideals every day of your life? Isn&rsquo;t it supposed to be the default state of your life? Why would you wait for a new year before you make a resolution to better your life?&lt;/p&gt;&lt;p&gt;Such people also avoid new year resolutions or scorn the practice thereof because for them, experience has proven it to be ineffective.&lt;/p&gt;&lt;p&gt;I don&rsquo;t entirely agree with such people. I am not advocating the practice of new year resolutions either. But I&rsquo;d sooner advise a person to set new year resolutions they will end up abandoning by the end of January than advise them to sleepwalk through their life the entire year.&lt;/p&gt;&lt;p&gt;At the very least, setting new year resolutions means that you still have an interest in making your life better, and that is a good place to start. You just need a better strategy than new year resolutions, which is what I bring to the table today.&lt;/p&gt;&lt;p&gt;I call it The &lt;i&gt;12 months challenge.&lt;/i&gt;&lt;/p&gt;&lt;p&gt;This challenge is simple: At the end of the year, write and publish an article in which you list 12 of your proudest, most fulfilling accomplishments from each of the 12 months of that year. Be very strict with the rules of the challenge: Pick only one accomplishment per month.&lt;/p&gt;&lt;p&gt;You are free to accomplish as many things in a month as you can but pick only one to be added to the list for any particular month.&lt;/p&gt;&lt;p&gt;Publish this article on your blog (if you have one), on your linkedIn profile, and on any of the social media platforms; share it with your close network of trusted family members, friends, colleagues and mentors.&lt;/p&gt;&lt;p&gt;It is very important that you share the article to as wide an audience as possible if the contents are not too private. Sharing such an article can help you connect with other individuals with shared interests, dreams, and plans for the future. And such connections can open doors for you and a lot of other people that you never knew existed.&lt;/p&gt;&lt;p&gt;Most importantly, if you know you are preparing the article to share it with other people, you are more likely to take it very seriously.&lt;/p&gt;&lt;p&gt;One thing I almost avoided mentioning is the nature of these accomplishments. I&rsquo;m avoiding this aspect of the challenge because I can&rsquo;t really tell you what you should aim at accomplishing in your life in order to feel fulfilled. You are going to have to do that yourself because only you can do it best. It is your purpose. You may think you don&rsquo;t know it yet but at some deeper level you do.&lt;/p&gt;&lt;p&gt;I can only tell you what works for me: I have a few questions I usually ask myself when I feel that I am not living a fulfilling life at any time in my life. At such times I ask myself:&lt;/p&gt;&lt;p&gt;If I were to be diagnosed with terminal cancer and given only 6 months to live, how would I spend that time? What things would I value most? What would I regret not doing?&lt;/p&gt;&lt;p&gt;For me, the answers to such questions immediately and unmistakably stand out clear in my mind:&lt;/p&gt;&lt;p&gt;I would regret not taking better care of my parents than what I am doing. They have toiled and soiled far too much for me to be ordinary.&lt;br&gt;I would grieve in my spirit at all those years I felt timid and settled for far far less than I am worth.&lt;/p&gt;&lt;p&gt;I would regret my passivity in relationships with all those amazing people who have once featured in my life and left because of my apparent disinterest. I could have swallowed my pride and risked exposing my insecurities, my quirks and my shortcomings in general. Hiding them only made me look uninterested.&lt;/p&gt;&lt;p&gt;I would regret all those hours I wasted feeling bored when I could have set up a blog to explore my passion for writing.&lt;/p&gt;&lt;p&gt;I could have read more and more books.&lt;/p&gt;&lt;p&gt;I would regret never having taken any steps towards realizing all those side projects I kept conceiving day after day in my mind.&lt;/p&gt;&lt;p&gt;And many more...&lt;/p&gt;&lt;p&gt;When you ask yourself the above questions, the answers will pop up almost immediately and they will fill you with a new vitality and enthusiasm towards your life goals.&lt;/p&gt;&lt;p&gt;Now assume your time from now on is as limited and valuable as it could be if the above assumption about cancer were real. Then start working on these projects one month at a time. Start living your unlived life one month at a time.&lt;/p&gt;', 1, '2019-11-23 16:01:57'),
(16, 21, 3, 'We love the things we love for what they are', '1574521343_image_3.png', '&lt;p&gt;Many times I have come across instances where some people scorn the practice of setting New Year Resolutions.&lt;/p&gt;&lt;p&gt;Their reason for this goes something like this:&lt;/p&gt;&lt;p&gt;The very word resolution is an indication of some form of internal conflict springing from an ineffectual self-governance in a person. It means the individual is waging a fight against something undesirable in their life; or is making a conscious decision to pursue certain ideals that before were absent in their life.&lt;/p&gt;&lt;p&gt;Aren&rsquo;t you supposed to be pursuing these ideals every day of your life? Isn&rsquo;t it supposed to be the default state of your life? Why would you wait for a new year before you make a resolution to better your life?&lt;/p&gt;&lt;p&gt;Such people also avoid new year resolutions or scorn the practice thereof because for them, experience has proven it to be ineffective.&lt;/p&gt;&lt;p&gt;I don&rsquo;t entirely agree with such people. I am not advocating the practice of new year resolutions either. But I&rsquo;d sooner advise a person to set new year resolutions they will end up abandoning by the end of January than advise them to sleepwalk through their life the entire year.&lt;/p&gt;&lt;p&gt;At the very least, setting new year resolutions means that you still have an interest in making your life better, and that is a good place to start. You just need a better strategy than new year resolutions, which is what I bring to the table today.&lt;/p&gt;&lt;p&gt;I call it The &lt;i&gt;12 months challenge.&lt;/i&gt;&lt;/p&gt;&lt;p&gt;This challenge is simple: At the end of the year, write and publish an article in which you list 12 of your proudest, most fulfilling accomplishments from each of the 12 months of that year. Be very strict with the rules of the challenge: Pick only one accomplishment per month.&lt;/p&gt;&lt;p&gt;You are free to accomplish as many things in a month as you can but pick only one to be added to the list for any particular month.&lt;/p&gt;&lt;p&gt;Publish this article on your blog (if you have one), on your linkedIn profile, and on any of the social media platforms; share it with your close network of trusted family members, friends, colleagues and mentors.&lt;/p&gt;&lt;p&gt;It is very important that you share the article to as wide an audience as possible if the contents are not too private. Sharing such an article can help you connect with other individuals with shared interests, dreams, and plans for the future. And such connections can open doors for you and a lot of other people that you never knew existed.&lt;/p&gt;&lt;p&gt;Most importantly, if you know you are preparing the article to share it with other people, you are more likely to take it very seriously.&lt;/p&gt;&lt;p&gt;One thing I almost avoided mentioning is the nature of these accomplishments. I&rsquo;m avoiding this aspect of the challenge because I can&rsquo;t really tell you what you should aim at accomplishing in your life in order to feel fulfilled. You are going to have to do that yourself because only you can do it best. It is your purpose. You may think you don&rsquo;t know it yet but at some deeper level you do.&lt;/p&gt;&lt;p&gt;I can only tell you what works for me: I have a few questions I usually ask myself when I feel that I am not living a fulfilling life at any time in my life. At such times I ask myself:&lt;/p&gt;&lt;p&gt;If I were to be diagnosed with terminal cancer and given only 6 months to live, how would I spend that time? What things would I value most? What would I regret not doing?&lt;/p&gt;&lt;p&gt;For me, the answers to such questions immediately and unmistakably stand out clear in my mind:&lt;/p&gt;&lt;p&gt;I would regret not taking better care of my parents than what I am doing. They have toiled and soiled far too much for me to be ordinary.&lt;br&gt;I would grieve in my spirit at all those years I felt timid and settled for far far less than I am worth.&lt;/p&gt;&lt;p&gt;I would regret my passivity in relationships with all those amazing people who have once featured in my life and left because of my apparent disinterest. I could have swallowed my pride and risked exposing my insecurities, my quirks and my shortcomings in general. Hiding them only made me look uninterested.&lt;/p&gt;&lt;p&gt;I would regret all those hours I wasted feeling bored when I could have set up a blog to explore my passion for writing.&lt;/p&gt;&lt;p&gt;I could have read more and more books.&lt;/p&gt;&lt;p&gt;I would regret never having taken any steps towards realizing all those side projects I kept conceiving day after day in my mind.&lt;/p&gt;&lt;p&gt;And many more...&lt;/p&gt;&lt;p&gt;When you ask yourself the above questions, the answers will pop up almost immediately and they will fill you with a new vitality and enthusiasm towards your life goals.&lt;/p&gt;&lt;p&gt;Now assume your time from now on is as limited and valuable as it could be if the above assumption about cancer were real. Then start working on these projects one month at a time. Start living your unlived life one month at a time.&lt;/p&gt;', 1, '2019-11-23 16:02:23'),
(17, 21, 3, 'Either give me more wine or leave me alone', '1574521373_image_7.png', '&lt;p&gt;Many times I have come across instances where some people scorn the practice of setting New Year Resolutions.&lt;/p&gt;&lt;p&gt;Their reason for this goes something like this:&lt;/p&gt;&lt;p&gt;The very word resolution is an indication of some form of internal conflict springing from an ineffectual self-governance in a person. It means the individual is waging a fight against something undesirable in their life; or is making a conscious decision to pursue certain ideals that before were absent in their life.&lt;/p&gt;&lt;p&gt;Aren&rsquo;t you supposed to be pursuing these ideals every day of your life? Isn&rsquo;t it supposed to be the default state of your life? Why would you wait for a new year before you make a resolution to better your life?&lt;/p&gt;&lt;p&gt;Such people also avoid new year resolutions or scorn the practice thereof because for them, experience has proven it to be ineffective.&lt;/p&gt;&lt;p&gt;I don&rsquo;t entirely agree with such people. I am not advocating the practice of new year resolutions either. But I&rsquo;d sooner advise a person to set new year resolutions they will end up abandoning by the end of January than advise them to sleepwalk through their life the entire year.&lt;/p&gt;&lt;p&gt;At the very least, setting new year resolutions means that you still have an interest in making your life better, and that is a good place to start. You just need a better strategy than new year resolutions, which is what I bring to the table today.&lt;/p&gt;&lt;p&gt;I call it The &lt;i&gt;12 months challenge.&lt;/i&gt;&lt;/p&gt;&lt;p&gt;This challenge is simple: At the end of the year, write and publish an article in which you list 12 of your proudest, most fulfilling accomplishments from each of the 12 months of that year. Be very strict with the rules of the challenge: Pick only one accomplishment per month.&lt;/p&gt;&lt;p&gt;You are free to accomplish as many things in a month as you can but pick only one to be added to the list for any particular month.&lt;/p&gt;&lt;p&gt;Publish this article on your blog (if you have one), on your linkedIn profile, and on any of the social media platforms; share it with your close network of trusted family members, friends, colleagues and mentors.&lt;/p&gt;&lt;p&gt;It is very important that you share the article to as wide an audience as possible if the contents are not too private. Sharing such an article can help you connect with other individuals with shared interests, dreams, and plans for the future. And such connections can open doors for you and a lot of other people that you never knew existed.&lt;/p&gt;&lt;p&gt;Most importantly, if you know you are preparing the article to share it with other people, you are more likely to take it very seriously.&lt;/p&gt;&lt;p&gt;One thing I almost avoided mentioning is the nature of these accomplishments. I&rsquo;m avoiding this aspect of the challenge because I can&rsquo;t really tell you what you should aim at accomplishing in your life in order to feel fulfilled. You are going to have to do that yourself because only you can do it best. It is your purpose. You may think you don&rsquo;t know it yet but at some deeper level you do.&lt;/p&gt;&lt;p&gt;I can only tell you what works for me: I have a few questions I usually ask myself when I feel that I am not living a fulfilling life at any time in my life. At such times I ask myself:&lt;/p&gt;&lt;p&gt;If I were to be diagnosed with terminal cancer and given only 6 months to live, how would I spend that time? What things would I value most? What would I regret not doing?&lt;/p&gt;&lt;p&gt;For me, the answers to such questions immediately and unmistakably stand out clear in my mind:&lt;/p&gt;&lt;p&gt;I would regret not taking better care of my parents than what I am doing. They have toiled and soiled far too much for me to be ordinary.&lt;br&gt;I would grieve in my spirit at all those years I felt timid and settled for far far less than I am worth.&lt;/p&gt;&lt;p&gt;I would regret my passivity in relationships with all those amazing people who have once featured in my life and left because of my apparent disinterest. I could have swallowed my pride and risked exposing my insecurities, my quirks and my shortcomings in general. Hiding them only made me look uninterested.&lt;/p&gt;&lt;p&gt;I would regret all those hours I wasted feeling bored when I could have set up a blog to explore my passion for writing.&lt;/p&gt;&lt;p&gt;I could have read more and more books.&lt;/p&gt;&lt;p&gt;I would regret never having taken any steps towards realizing all those side projects I kept conceiving day after day in my mind.&lt;/p&gt;&lt;p&gt;And many more...&lt;/p&gt;&lt;p&gt;When you ask yourself the above questions, the answers will pop up almost immediately and they will fill you with a new vitality and enthusiasm towards your life goals.&lt;/p&gt;&lt;p&gt;Now assume your time from now on is as limited and valuable as it could be if the above assumption about cancer were real. Then start working on these projects one month at a time. Start living your unlived life one month at a time.&lt;/p&gt;', 1, '2019-11-23 16:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(2, 'Life', '<p>test change</p>'),
(3, 'Quotes', ''),
(4, 'Fiction', ''),
(5, 'Biography', ''),
(6, ' Motivation', ''),
(7, 'Inspiration', ''),
(8, 'Test', '<p>test</p>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created_at`) VALUES
(21, 1, 'Melvine', 'melvineawa@gmail.com', '$2y$10$.KTfxbvgxwtQF8pKXsJ9UeiyL7BiuJpEYRzhWuJo1aDlaBPm4pe6G', '2019-11-23 14:23:30'),
(22, 1, 'Awa Melvine', 'melvine@d.com', '$2y$10$oiKQ31vuUWlPSghDQJliceQJidPBnLt3X/ggEkaoR.lGAHkYBZ7Qu', '2019-11-27 07:08:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
--
-- Database: `country_state_city`
--
CREATE DATABASE IF NOT EXISTS `country_state_city` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `country_state_city`;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `state_id`, `created_at`, `updated_at`) VALUES
(1, 'agege', 2, NULL, NULL),
(2, 'ikeja', 2, NULL, NULL),
(5, 'iyana', 2, NULL, NULL),
(6, 'ojokwu', 1, NULL, NULL),
(7, 'calabar', 1, NULL, NULL),
(8, 'mai bornu', 4, NULL, NULL),
(9, 'sokoto II', 4, NULL, NULL),
(10, 'salah', 5, NULL, NULL),
(11, 'mane', 5, NULL, NULL),
(12, 'koffi', 3, NULL, NULL),
(13, 'nana', 3, NULL, NULL),
(14, 'ceme', 6, NULL, NULL),
(15, 'border', 6, NULL, NULL),
(16, 'ipokia', 7, NULL, NULL),
(17, 'ago sasa', 7, NULL, NULL),
(18, 'inyass', 8, NULL, NULL),
(19, 'sheikh', 8, NULL, NULL),
(20, 'zuma', 9, NULL, NULL),
(21, 'aso rock', 9, NULL, NULL),
(22, 'ketere', 10, NULL, NULL),
(23, 'almajiri', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES
(1, 'nigeria', NULL, NULL),
(2, 'ghana', NULL, NULL),
(3, 'eygpt', NULL, NULL),
(4, 'benin', NULL, NULL);

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_12_135331_create_countries_table', 1),
(6, '2022_03_12_135414_create_states_table', 1),
(7, '2022_03_12_135540_create_cities_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'abia', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'lagos', 1, NULL, NULL),
(3, 'kumasi', 2, '2022-03-12 14:54:17', '2022-03-12 14:54:17'),
(4, 'sokoto', 1, NULL, NULL),
(5, 'giza', 3, '2022-03-12 14:54:17', '2022-03-12 14:54:17'),
(6, 'lome', 4, NULL, NULL),
(7, 'cotonou', 4, NULL, NULL),
(8, 'kaola', 3, NULL, NULL),
(9, 'abuja', 1, NULL, NULL),
(10, 'kaduna', 1, NULL, NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
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
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `fantastic_school_admin_db`
--
CREATE DATABASE IF NOT EXISTS `fantastic_school_admin_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fantastic_school_admin_db`;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL,
  `AccountNumber` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `Name`, `AccountNumber`) VALUES
(1, 'Equity Bank', '351672718822'),
(2, 'KCB Bank', '98262891719');

-- --------------------------------------------------------

--
-- Table structure for table `classattendance`
--

CREATE TABLE `classattendance` (
  `id` int(10) UNSIGNED NOT NULL,
  `Subject` int(10) UNSIGNED NOT NULL,
  `Student` int(10) UNSIGNED NOT NULL,
  `RegNo` int(10) UNSIGNED DEFAULT NULL,
  `Class` int(10) UNSIGNED DEFAULT NULL,
  `Stream` int(10) UNSIGNED DEFAULT NULL,
  `Attended` varchar(40) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `Name`) VALUES
(1, 'Form One'),
(2, 'Form Two');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Date` date NOT NULL,
  `Details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `examcategories`
--

CREATE TABLE `examcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `examcategories`
--

INSERT INTO `examcategories` (`id`, `Name`) VALUES
(1, 'End Term 1');

-- --------------------------------------------------------

--
-- Table structure for table `examresults`
--

CREATE TABLE `examresults` (
  `id` int(10) UNSIGNED NOT NULL,
  `student` int(10) UNSIGNED NOT NULL,
  `RegNo` int(10) UNSIGNED DEFAULT NULL,
  `Class` int(10) UNSIGNED DEFAULT NULL,
  `Stream` int(10) UNSIGNED DEFAULT NULL,
  `Category` int(10) UNSIGNED DEFAULT NULL,
  `Subject` int(10) UNSIGNED DEFAULT NULL,
  `Marks` int(11) NOT NULL,
  `Term` int(10) UNSIGNED NOT NULL,
  `AcademicYear` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feescollection`
--

CREATE TABLE `feescollection` (
  `id` int(10) UNSIGNED NOT NULL,
  `Student` int(10) UNSIGNED NOT NULL,
  `Class` int(10) UNSIGNED DEFAULT NULL,
  `Session` int(10) UNSIGNED NOT NULL,
  `PaidAmount` int(11) NOT NULL,
  `Balance` int(10) UNSIGNED DEFAULT NULL,
  `Branch` int(10) UNSIGNED NOT NULL,
  `Date` date DEFAULT NULL,
  `Remarks` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feescollection`
--

INSERT INTO `feescollection` (`id`, `Student`, `Class`, `Session`, `PaidAmount`, `Balance`, `Branch`, `Date`, `Remarks`) VALUES
(1, 1, 1, 1, 1000, 1, 1, '2018-05-02', NULL),
(2, 1, 1, 1, 3000, 1, 2, '2018-05-03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hostels`
--

INSERT INTO `hostels` (`id`, `Name`, `Status`) VALUES
(1, 'Reez', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `membership_grouppermissions`
--

CREATE TABLE `membership_grouppermissions` (
  `permissionID` int(10) UNSIGNED NOT NULL,
  `groupID` int(11) DEFAULT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT 0,
  `allowEdit` tinyint(4) NOT NULL DEFAULT 0,
  `allowDelete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_grouppermissions`
--

INSERT INTO `membership_grouppermissions` (`permissionID`, `groupID`, `tableName`, `allowInsert`, `allowView`, `allowEdit`, `allowDelete`) VALUES
(1, 2, 'students', 1, 3, 3, 3),
(2, 2, 'feescollection', 1, 3, 3, 3),
(3, 2, 'branch', 1, 3, 3, 3),
(4, 2, 'teachers', 1, 3, 3, 3),
(5, 2, 'subjects', 1, 3, 3, 3),
(6, 2, 'classes', 1, 3, 3, 3),
(7, 2, 'streams', 1, 3, 3, 3),
(8, 2, 'hostels', 1, 3, 3, 3),
(9, 2, 'timetable', 1, 3, 3, 3),
(10, 2, 'events', 1, 3, 3, 3),
(11, 2, 'notices', 1, 3, 3, 3),
(12, 2, 'examresults', 1, 3, 3, 3),
(13, 2, 'parents', 1, 3, 3, 3),
(14, 2, 'examcategories', 1, 3, 3, 3),
(15, 2, 'sessions', 1, 3, 3, 3),
(16, 2, 'studentcategories', 1, 3, 3, 3),
(17, 2, 'classattendance', 1, 3, 3, 3),
(18, 2, 'fee_structure', 1, 3, 3, 3),
(19, 2, 'fee_structure', 1, 3, 3, 3),
(20, 2, 'fee_structure', 1, 3, 3, 3),
(21, 2, 'schoolmoney', 1, 3, 3, 3),
(40, 3, 'students', 0, 3, 0, 0),
(41, 3, 'feescollection', 0, 3, 0, 0),
(42, 3, 'branch', 1, 3, 0, 0),
(43, 3, 'teachers', 0, 3, 0, 0),
(44, 3, 'subjects', 0, 3, 0, 0),
(45, 3, 'classes', 0, 3, 0, 0),
(46, 3, 'streams', 0, 3, 0, 0),
(47, 3, 'hostels', 0, 3, 0, 0),
(48, 3, 'timetable', 0, 3, 0, 0),
(49, 3, 'events', 1, 3, 0, 0),
(50, 3, 'notices', 0, 3, 0, 0),
(51, 3, 'examresults', 0, 3, 0, 0),
(52, 3, 'parents', 0, 3, 0, 0),
(53, 3, 'examcategories', 0, 3, 0, 0),
(54, 3, 'sessions', 0, 3, 0, 0),
(55, 3, 'studentcategories', 0, 3, 0, 0),
(56, 3, 'classattendance', 0, 3, 0, 0),
(57, 3, 'schoolmoney', 0, 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `membership_groups`
--

CREATE TABLE `membership_groups` (
  `groupID` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `allowSignup` tinyint(4) DEFAULT NULL,
  `needsApproval` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_groups`
--

INSERT INTO `membership_groups` (`groupID`, `name`, `description`, `allowSignup`, `needsApproval`) VALUES
(1, 'anonymous', 'Anonymous group created automatically on 2018-05-02', 0, 0),
(2, 'Admins', 'Admin group created automatically on 2018-05-02', 0, 1),
(3, 'users', 'all test users', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `membership_userpermissions`
--

CREATE TABLE `membership_userpermissions` (
  `permissionID` int(10) UNSIGNED NOT NULL,
  `memberID` varchar(20) NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT 0,
  `allowEdit` tinyint(4) NOT NULL DEFAULT 0,
  `allowDelete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `membership_userrecords`
--

CREATE TABLE `membership_userrecords` (
  `recID` bigint(20) UNSIGNED NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `pkValue` varchar(255) DEFAULT NULL,
  `memberID` varchar(20) DEFAULT NULL,
  `dateAdded` bigint(20) UNSIGNED DEFAULT NULL,
  `dateUpdated` bigint(20) UNSIGNED DEFAULT NULL,
  `groupID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_userrecords`
--

INSERT INTO `membership_userrecords` (`recID`, `tableName`, `pkValue`, `memberID`, `dateAdded`, `dateUpdated`, `groupID`) VALUES
(1, 'classes', '1', 'admin', 1525280850, 1525280850, 2),
(2, 'classes', '2', 'admin', 1525280867, 1525280867, 2),
(3, 'streams', '1', 'admin', 1525280880, 1525280880, 2),
(4, 'streams', '2', 'admin', 1525280893, 1525280893, 2),
(5, 'branch', '1', 'admin', 1525280912, 1525280912, 2),
(6, 'branch', '2', 'admin', 1525280926, 1525280926, 2),
(7, 'sessions', '1', 'admin', 1525280952, 1525314825, 2),
(8, 'fee_structure', '1', 'admin', 1525281199, 1525281199, 2),
(9, 'students', '1', 'admin', 1525281461, 1525306816, 2),
(10, 'feescollection', '1', 'admin', 1525281522, 1525306950, 2),
(11, 'hostels', '1', 'admin', 1525281663, 1525281663, 2),
(12, 'subjects', '1', 'admin', 1525294277, 1525294277, 2),
(13, 'schoolmoney', '1', 'admin', 1525306280, 1525306280, 2),
(14, 'examcategories', '1', 'admin', 1525310012, 1525310012, 2),
(15, 'feescollection', '2', 'admin', 1525314888, 1525314888, 2),
(16, 'teachers', '1', 'admin', 1525315184, 1525315184, 2);

-- --------------------------------------------------------

--
-- Table structure for table `membership_users`
--

CREATE TABLE `membership_users` (
  `memberID` varchar(20) NOT NULL,
  `passMD5` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `signupDate` date DEFAULT NULL,
  `groupID` int(10) UNSIGNED DEFAULT NULL,
  `isBanned` tinyint(4) DEFAULT NULL,
  `isApproved` tinyint(4) DEFAULT NULL,
  `custom1` text DEFAULT NULL,
  `custom2` text DEFAULT NULL,
  `custom3` text DEFAULT NULL,
  `custom4` text DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `pass_reset_key` varchar(100) DEFAULT NULL,
  `pass_reset_expiry` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_users`
--

INSERT INTO `membership_users` (`memberID`, `passMD5`, `email`, `signupDate`, `groupID`, `isBanned`, `isApproved`, `custom1`, `custom2`, `custom3`, `custom4`, `comments`, `pass_reset_key`, `pass_reset_expiry`) VALUES
('admin', 'af359ab8f3da5f33ffa01f6736e8c02d', 'ronniengoda@gmail.com', '2018-05-02', 2, 0, 1, NULL, NULL, NULL, NULL, 'Admin member created automatically on 2018-05-02\nRecord updated automatically on 2018-05-03', NULL, NULL),
('guest', NULL, NULL, '2018-05-02', 1, 0, 1, NULL, NULL, NULL, NULL, 'Anonymous member created automatically on 2018-05-02', NULL, NULL),
('kelvin', 'bdf0a027d5e138c2428f5acd68d7d600', 'kevo@gmail.com', '2018-05-03', 3, 0, 1, '', '', '', '', 'member signed up through the registration form.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Date` date NOT NULL,
  `Details` text NOT NULL,
  `Posted_By` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Phone` varchar(40) NOT NULL,
  `Email` varchar(80) DEFAULT NULL,
  `HomeAddress` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schoolmoney`
--

CREATE TABLE `schoolmoney` (
  `id` int(10) UNSIGNED NOT NULL,
  `Class` int(10) UNSIGNED NOT NULL,
  `Particulars` text NOT NULL,
  `Total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schoolmoney`
--

INSERT INTO `schoolmoney` (`id`, `Class`, `Particulars`, `Total`) VALUES
(1, 1, 'All fees-15000', '15000.00');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `Year` varchar(40) NOT NULL,
  `Term` varchar(40) NOT NULL,
  `status` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `Year`, `Term`, `status`) VALUES
(1, '2018', '2', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `streams`
--

CREATE TABLE `streams` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `streams`
--

INSERT INTO `streams` (`id`, `Name`) VALUES
(1, 'East'),
(2, 'Central');

-- --------------------------------------------------------

--
-- Table structure for table `studentcategories`
--

CREATE TABLE `studentcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `FullName` varchar(40) NOT NULL,
  `Gender` varchar(40) NOT NULL,
  `DOB` date NOT NULL,
  `Photo` varchar(40) DEFAULT NULL,
  `RegNo` varchar(40) NOT NULL,
  `Class` int(10) UNSIGNED NOT NULL,
  `Stream` int(10) UNSIGNED DEFAULT NULL,
  `Hostel` int(10) UNSIGNED DEFAULT NULL,
  `DOJ` date NOT NULL,
  `Category` int(10) UNSIGNED DEFAULT NULL,
  `AcademicYear` int(10) UNSIGNED NOT NULL,
  `TotalFees` int(10) UNSIGNED NOT NULL,
  `AdvanceFees` int(11) NOT NULL,
  `Balance` int(11) DEFAULT NULL,
  `Parent` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `FullName`, `Gender`, `DOB`, `Photo`, `RegNo`, `Class`, `Stream`, `Hostel`, `DOJ`, `Category`, `AcademicYear`, `TotalFees`, `AdvanceFees`, `Balance`, `Parent`) VALUES
(1, 'Wafula Chebukati', 'Male', '1916-01-18', NULL, 'IEBC/2017', 1, 2, 1, '2018-05-02', NULL, 1, 1, 10500, 500, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `Name`) VALUES
(1, 'Tec 104');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Gender` varchar(40) NOT NULL,
  `Age` int(11) NOT NULL,
  `Phone` varchar(40) NOT NULL,
  `Email` varchar(80) DEFAULT NULL,
  `StaffNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `Name`, `Gender`, `Age`, `Phone`, `Email`, `StaffNumber`) VALUES
(1, 'Benedict Khayati', 'Male', 55, '078191992', 'bnkhayati@gmail.com', 11);

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(10) UNSIGNED NOT NULL,
  `Time_Table` varchar(40) NOT NULL,
  `Class` int(10) UNSIGNED NOT NULL,
  `Stream` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classattendance`
--
ALTER TABLE `classattendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Subject` (`Subject`),
  ADD KEY `Student` (`Student`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examcategories`
--
ALTER TABLE `examcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examresults`
--
ALTER TABLE `examresults`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student` (`student`),
  ADD KEY `Category` (`Category`),
  ADD KEY `Subject` (`Subject`),
  ADD KEY `Term` (`Term`);

--
-- Indexes for table `feescollection`
--
ALTER TABLE `feescollection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Student` (`Student`),
  ADD KEY `Session` (`Session`),
  ADD KEY `Branch` (`Branch`);

--
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_grouppermissions`
--
ALTER TABLE `membership_grouppermissions`
  ADD PRIMARY KEY (`permissionID`);

--
-- Indexes for table `membership_groups`
--
ALTER TABLE `membership_groups`
  ADD PRIMARY KEY (`groupID`);

--
-- Indexes for table `membership_userpermissions`
--
ALTER TABLE `membership_userpermissions`
  ADD PRIMARY KEY (`permissionID`);

--
-- Indexes for table `membership_userrecords`
--
ALTER TABLE `membership_userrecords`
  ADD PRIMARY KEY (`recID`),
  ADD UNIQUE KEY `tableName_pkValue` (`tableName`,`pkValue`),
  ADD KEY `pkValue` (`pkValue`),
  ADD KEY `tableName` (`tableName`),
  ADD KEY `memberID` (`memberID`),
  ADD KEY `groupID` (`groupID`);

--
-- Indexes for table `membership_users`
--
ALTER TABLE `membership_users`
  ADD PRIMARY KEY (`memberID`),
  ADD KEY `groupID` (`groupID`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolmoney`
--
ALTER TABLE `schoolmoney`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Class` (`Class`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `streams`
--
ALTER TABLE `streams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentcategories`
--
ALTER TABLE `studentcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `RegNo_unique` (`RegNo`),
  ADD KEY `Class` (`Class`),
  ADD KEY `Stream` (`Stream`),
  ADD KEY `Hostel` (`Hostel`),
  ADD KEY `Category` (`Category`),
  ADD KEY `AcademicYear` (`AcademicYear`),
  ADD KEY `TotalFees` (`TotalFees`),
  ADD KEY `Parent` (`Parent`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Class` (`Class`),
  ADD KEY `Stream` (`Stream`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `classattendance`
--
ALTER TABLE `classattendance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `examcategories`
--
ALTER TABLE `examcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `examresults`
--
ALTER TABLE `examresults`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feescollection`
--
ALTER TABLE `feescollection`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hostels`
--
ALTER TABLE `hostels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `membership_grouppermissions`
--
ALTER TABLE `membership_grouppermissions`
  MODIFY `permissionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `membership_groups`
--
ALTER TABLE `membership_groups`
  MODIFY `groupID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `membership_userpermissions`
--
ALTER TABLE `membership_userpermissions`
  MODIFY `permissionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `membership_userrecords`
--
ALTER TABLE `membership_userrecords`
  MODIFY `recID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schoolmoney`
--
ALTER TABLE `schoolmoney`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `streams`
--
ALTER TABLE `streams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `studentcategories`
--
ALTER TABLE `studentcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `hospital`
--
CREATE DATABASE IF NOT EXISTS `hospital` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hospital`;

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_02_16_032619_create_sessions_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('m9WnI720iOUNOMcuMVpJhEBS1czZpr4KwQsIPK9b', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZUU3Nktqa3R5ZnE4WElOanNrOU02b0dnTk5GWTBlbjI4T0x6c0xkZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL3Byb2ZpbGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkSHhReGpySGtFNEVMUkoua1dQL1JTdWZ6SmtVWUVsRko5YlJwL3Q2bHdjMTc3YlpHLjFrQXEiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEh4UXhqckhrRTRFTFJKLmtXUC9SU3VmekprVVlFbEZKOWJScC90Nmx3YzE3N2JaRy4xa0FxIjt9', 1645049211),
('MTnIePSY2tZNXxqTBtTfbgfBrox6gVpHpAmeL8NF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQW40V2V3M0xqMUh2RFN2bVBUTVdndW9zOFFQTTNzZDZsbEY1VklKMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1645575025),
('O57H9KrGjdG3U03eM6AFFnMZFTTrviLZH7fNTxXI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDlabTRrTW9QMG5Yd1dVTG4zWThTUE11VkVGNUp4NElMYXJMcEF0TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1646633406),
('RQ5tZdGha5vLFLuOdp0zsd7CAvg9MvKS7wNWPu2K', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnZLcmVmTjhNd0g0NzViNmdyWWlybGM3UFJiUExjb0xuVVlVMmxPNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1646952010),
('sB4y5C5GCzof1QmD7IqdAoKmVRcwHfSOARTXAWZg', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSVpaUjZsUEFhM2tkMmVzczFZaUY3enJ1WERPbklGVGVLVFNCcWZLMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJEh4UXhqckhrRTRFTFJKLmtXUC9SU3VmekprVVlFbEZKOWJScC90Nmx3YzE3N2JaRy4xa0FxIjt9', 1645201700),
('twKAeVjXp1xmQW3mDakHo7qBdgTAllDOAjqJnN9e', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3ByZUZYV0x2VHRDQWk4aTY5WmRWNVIxYUUyMEdFWUFya0NraHpCYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1645170969),
('WiXPMLkCO9qmRkHwd77cWy5PkH9DmqXp4Ls7Odd5', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiY0cxNWhqTVBpVG1XdFJyd3ZiT0ZIZFd2VldzQjlFb2VlaWVqZlVVZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJEh4UXhqckhrRTRFTFJKLmtXUC9SU3VmekprVVlFbEZKOWJScC90Nmx3YzE3N2JaRy4xa0FxIjt9', 1645873191),
('xjAreAOvIijEzrOn0h6Sshu3vAtRfgWgEvyUtRBF', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRHZWSUI1NHQwODhLWlhYNDlBY2MyUHlnMVd0SkxYSUlJVHZjTldJdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkSlZLeENwYjMuSEQ3RTU4V0JaMjlFdWhZMGE5MXFkUkk4VGNJMTJ6YjB0Q1RSSHd2bzB0eHkiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEpWS3hDcGIzLkhEN0U1OFdCWjI5RXVoWTBhOTFxZFJJOFRjSTEyemIwdENUUkh3dm8wdHh5Ijt9', 1645264409),
('xVass9bHeTP3FKjkV252U4ldp2b9gsxYb3bTjpFj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVpGSUowTXlTbzBEczdMdnRQaHJvR1VsYmhlTkFtTXBpcTlianJYZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1645026014),
('Yc2ZoCVYM0XKLp84gcUVPWric8dv4wqNnwpm9qS0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWNuM0F3MDA3SjRTcHdjMFlpWENHN1lNWllkQVJrOTRoVExzUlJ0WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1645007322),
('YRzvfDeN8rTtH8e5vAG99p5SdtTYrimOkyBchc7I', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSjNMblc2N3BiWWNhN2JQenVucThpNGdvMEJVdWNpOEU1VkZhSWtRQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJEh4UXhqckhrRTRFTFJKLmtXUC9SU3VmekprVVlFbEZKOWJScC90Nmx3YzE3N2JaRy4xa0FxIjt9', 1645388298);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', '1234567890', '12 Awayewaserere Agidingbi Ikeja', '0', NULL, '$2y$10$JVKxCpb3.HD7E58WBZ29EuhY0a91qdRI8TcI12zb0tCTRHwvo0txy', NULL, NULL, 'MWwUjk7eBa6X8uI61ol1B81s7MvqJUs18zDhmaXKdXjypeeJ9bhcfIywsyNE', NULL, NULL, '2022-02-16 02:57:47', '2022-02-16 02:57:47'),
(2, 'admin', 'admin@gmail.com', '+2349069946685', '12 Awayewaserere Agidingbi Ikeja', '1', NULL, '$2y$10$HxQxjrHkE4ELRJ.kWP/RSufzJkUYElFJ9bRp/t6lwc177bZG.1kAq', NULL, NULL, 'LD1qrfuyi4XPJn0XbVMNQPUdPkCZBuvr63HH1zLT6bHvvaVnQ7pdiDua4oSr', NULL, NULL, '2022-02-16 03:00:54', '2022-02-16 03:00:54');

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `hotel`
--
CREATE DATABASE IF NOT EXISTS `hotel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hotel`;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) UNSIGNED NOT NULL,
  `cid` int(11) UNSIGNED NOT NULL,
  `status` varchar(100) DEFAULT 'pending',
  `notes` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `cid`, `status`, `notes`) VALUES
(12, 10, 'confirmed', NULL),
(13, 10, 'confirmed', NULL),
(14, 10, 'confirmed', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) UNSIGNED NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `isadmin` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `fullname`, `email`, `password`, `phone`, `isadmin`) VALUES
(10, 'Martha Smith', 'martha@hotmail.com', '$2y$10$L8elMrSO59YGZdGjnQxURuWK7FZUJpL8QgZPT7pKIwCu42PvU8Mm2', '5149991111', 0),
(11, 'admin@gmail.com', 'admin@gmail.com', '$2y$10$nfud5jYwEnMmqv8YgUF3p.wh3EVGAONlRUUiu2TqFiNW.GsU6QKGm', '', 1),
(12, 'admin@admin.com', 'admin@admin.com', '$2y$10$4FJtbVGCIpFnNxcDvSSXUueMESuDDoZvtygT/O4J9UHB1vfdO3Vza', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) UNSIGNED NOT NULL,
  `start` varchar(30) NOT NULL,
  `end` varchar(30) NOT NULL,
  `type` varchar(100) NOT NULL,
  `requirement` varchar(100) DEFAULT 'no preference',
  `adults` int(2) NOT NULL,
  `children` int(2) DEFAULT 0,
  `requests` varchar(500) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `hash` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `start`, `end`, `type`, `requirement`, `adults`, `children`, `requests`, `timestamp`, `hash`) VALUES
(12, '2018-05-09', '2018-05-11', 'double', 'non smoking', 2, 0, '', '2018-04-19 22:04:42', '5ad9127abbdf6'),
(13, '2018-04-24', '2018-04-25', 'deluxe', 'no preference', 1, 0, '', '2018-04-23 15:45:33', '5addff9dafa97'),
(14, '2018-04-27', '2018-04-30', 'deluxe', 'no preference', 1, 0, '', '2018-04-24 05:27:13', '5adec03166177');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `booking_id_uindex` (`id`),
  ADD KEY `booking_customer__fk` (`cid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `id_UNIQUE` (`cid`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_customer__fk` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE;

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_booking__fk` FOREIGN KEY (`id`) REFERENCES `booking` (`id`) ON DELETE CASCADE;
--
-- Database: `khanstore`
--
CREATE DATABASE IF NOT EXISTS `khanstore` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `khanstore`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(3, 'Rizwan', 'rizwan@gmail.com', 'password@123', '0'),
(4, 'ajay', 'ajay@gmail.com', '$2y$10$UGzx/ODNB4ZSFruRF8BN2eC/NNE.6MBhfTTYKtUo.k4ZVHZFD85DO', '0'),
(5, 'Rizwan', 'rizwankhan@gmail.com', '$2y$10$qZ0OoyX8bhAVxDFM/fx8leZSZwlyq15c1C/KTnaqDLSx6eCDJ0VpC', '0'),
(6, 'Faizan', 'faizan@gmail.com', '$2y$10$Ll2.sETLuB8sdhh1LRK4e.cQqn4CtTEudFg.exhf76D6rGzSOwWNm', '0'),
(7, 'Ajay Kumar', 'ajaykumar@gmail.com', '$2y$10$8GlkawEDsNrOQr8Vgv0GceD/MhVpHAXM4xqtMo0.SUaHFXe03MRdi', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Sony'),
(5, 'LG');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(2, 2, '::1', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'Ladies Wearss'),
(3, 'Mens Wear'),
(4, 'Kids Wear'),
(5, 'Furnitures'),
(6, 'Home Appliances'),
(12, 'Mobiles');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 1, 1, '9L434522M7706801A', 'Completed'),
(2, 1, 2, 1, '9L434522M7706801A', 'Completed'),
(3, 1, 3, 1, '9L434522M7706801A', 'Completed'),
(4, 1, 1, 1, '8AT7125245323433N', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 12, 2, 'Samsung Galaxy S10', 10000, 50, 'Its a good phone', '1552670517_sumsung galaxy s8.png', 'samsung, mobile, galaxy'),
(2, 12, 3, 'Iphone 7 plus', 40000, 5000, 'Iphone is a good phone', '1552670718_iphone-7-plus.jpg', 'apple, iphone, mobile'),
(4, 12, 2, 'Samsung Galaxy S6', 5000, 100, 'Samsung is a good phone', '1552670857_samsung galaxy s6.jpg', 'samsung, mobile, s6'),
(5, 12, 2, 'Samsung Galaxy S10', 5000, 5000, 'Samsung Galaxy S10', '1552671096_7-2-samsung-mobile-phone-png-clipart-thumb.png', 'samsung, mobile, s10');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Rizwan', 'Khan', 'rizwankhan.august16@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asansol'),
(2, 'Rizwan', 'Khan', 'rizwankhan.august16@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asa'),
(3, 'Omosanya', 'Olamilekan', 'olamilekanomosanya@gmail.com', '2138cb5b0302e84382dd9b3677576b24', '9069946685', '12 Awayewaserere Agidingbi Ikeja', 'FALEKE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
--
-- Database: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'phpgurukulofficial@gmail.com', 'admin', 'Admin01', '2021-11-23 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Anuj kumar', '2017-07-08 12:49:09', '2017-07-08 15:16:59'),
(2, 'Chetan Bhagatt', '2017-07-08 14:30:23', '2017-07-08 15:15:09'),
(3, 'Anita Desai', '2017-07-08 14:35:08', NULL),
(4, 'HC Verma', '2017-07-08 14:35:21', NULL),
(5, 'R.D. Sharma ', '2017-07-08 14:35:36', NULL),
(9, 'fwdfrwer', '2017-07-08 15:22:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(1, 'PHP And MySql programming', 5, 1, 222333, 20, '2017-07-08 20:04:55', '2017-07-15 05:54:41'),
(3, 'physics', 6, 4, 1111, 15, '2017-07-08 20:17:31', '2017-07-15 06:13:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Romantic', 1, '2017-07-04 18:35:25', '2017-07-06 16:00:42'),
(5, 'Technology', 1, '2017-07-04 18:35:39', '2017-07-08 17:13:03'),
(6, 'Science', 1, '2017-07-04 18:35:55', '0000-00-00 00:00:00'),
(7, 'Management', 0, '2017-07-04 18:36:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) NOT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(1, 1, 'SID002', '2017-07-15 06:09:47', '2017-07-15 11:15:20', 1, 0),
(2, 1, 'SID002', '2017-07-15 06:12:27', '2017-07-15 11:15:23', 1, 5),
(3, 3, 'SID002', '2017-07-15 06:13:40', NULL, 0, NULL),
(4, 3, 'SID002', '2017-07-15 06:23:23', '2017-07-15 11:22:29', 1, 2),
(5, 1, 'SID009', '2017-07-15 10:59:26', NULL, 0, NULL),
(6, 3, 'SID011', '2017-07-15 18:02:55', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(11, 'SID013', 'user01', 'user01@gmail', '123456789', '512ba3797a330bce167ebb474cbd4451', 1, '2021-11-27 10:27:56', NULL),
(12, 'SID014', 'user01', 'user01@gmail', '123456789', '512ba3797a330bce167ebb474cbd4451', 1, '2021-11-27 10:27:56', NULL),
(13, 'SID015', 'user01', 'user01@gmail', '123456789', '512ba3797a330bce167ebb474cbd4451', 1, '2021-11-27 10:27:57', NULL),
(14, 'SID016', 'user02', 'user02@gmail.com', '98765443', 'c45a5892045a72a57a0c4221a04241bd', 1, '2021-11-27 10:43:19', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Database: `pharmacy`
--
CREATE DATABASE IF NOT EXISTS `pharmacy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pharmacy`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` tinyint(5) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `date`) VALUES
(1, 'admin', 'admin', '0000-00-00 00:00:00'),
(2, 'admin01', 'admin01', '2021-12-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `cashier_id` tinyint(5) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `staff_id` varchar(10) NOT NULL,
  `postal_address` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`cashier_id`, `first_name`, `last_name`, `staff_id`, `postal_address`, `phone`, `email`, `username`, `password`, `date`) VALUES
(4, 'gfhf', 'ewdsc', '67hhtf', '45 nhyfg', '65424579', 'will@henry.com', 'gty', 'getty', '2013-11-23 12:54:49'),
(5, 'Sam', 'Osoro', 'Pharmacy/C', '76 nairobi', '09865468', 'samwel@pharmacy.com', 'sam', '1234', '2013-11-25 20:20:44');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(5) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `served_by` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Unpaid',
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `customer_name`, `served_by`, `status`, `date`) VALUES
(10, 'Sigar', 'osoro', 'Pending', '2013-12-10 11:19:42'),
(11, 'Jalas', 'osoro', 'Pending', '2013-12-10 11:28:59'),
(12, 'Abuto', 'osoro', 'Pending', '2013-12-10 12:19:02'),
(13, 'Andre', 'osoro', 'Pending', '2013-12-10 12:25:19'),
(14, 'William', 'osoro', 'Pending', '2013-12-10 12:29:38'),
(15, 'Osoro', 'osoro', 'Pending', '2013-12-10 12:39:51'),
(16, 'Sam Osoro', 'osoro', 'Pending', '2013-12-10 12:49:45'),
(17, 'Peter Nyaisa', 'osoro', 'Pending', '2013-12-10 12:51:48'),
(18, 'Gtyhd', 'osoro', 'Pending', '2013-12-12 19:20:44'),
(19, 'Jay-z', 'osoro', 'Pending', '2013-12-12 20:34:51');

--
-- Triggers `invoice`
--
DELIMITER $$
CREATE TRIGGER `tarehe` AFTER INSERT ON `invoice` FOR EACH ROW BEGIN
     SET @date=NOW();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` tinyint(5) NOT NULL,
  `invoice` int(5) NOT NULL,
  `drug` tinyint(5) NOT NULL,
  `cost` int(5) DEFAULT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice`, `drug`, `cost`, `quantity`) VALUES
(2, 10, 5, 5, 12),
(3, 11, 5, 5, 12),
(5, 11, 6, 120, 12),
(6, 12, 5, 5, 15),
(7, 12, 6, 120, 17),
(9, 12, 7, 250, 15),
(10, 12, 8, 15, 15),
(11, 12, 9, 1, 20),
(13, 13, 5, 5, 5),
(14, 13, 6, 120, 10),
(15, 13, 7, 250, 20),
(16, 13, 8, 15, 16),
(17, 13, 9, 1, 10),
(19, 14, 5, 5, 5),
(20, 15, 5, 5, 12),
(21, 16, 5, 5, 30),
(22, 16, 6, 120, 10),
(23, 17, 5, 5, 10),
(24, 17, 8, 15, 60),
(25, 18, 5, 5, 12),
(26, 18, 6, 120, 15),
(27, 19, 5, 5, 12),
(28, 19, 6, 120, 15),
(29, 19, 8, 15, 20),
(30, 19, 9, 1, 20);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `manager_id` tinyint(5) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `staff_id` varchar(10) NOT NULL,
  `postal_address` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`manager_id`, `first_name`, `last_name`, `staff_id`, `postal_address`, `phone`, `email`, `username`, `password`, `date`) VALUES
(1, 'Samwel', 'Osoro', 'sam/pharm', '456 Kabu', '0789653417', 'samoso@pharmacy.com', 'samoso', '12345', '2013-12-10 14:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `paymenttypes`
--

CREATE TABLE `paymenttypes` (
  `id` tinyint(5) NOT NULL,
  `Name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymenttypes`
--

INSERT INTO `paymenttypes` (`id`, `Name`) VALUES
(1, 'Cash'),
(2, 'Credit card'),
(3, 'Mobile Money'),
(4, 'Cheque'),
(5, '');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `pharmacist_id` tinyint(5) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `staff_id` varchar(10) NOT NULL,
  `postal_address` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`pharmacist_id`, `first_name`, `last_name`, `staff_id`, `postal_address`, `phone`, `email`, `username`, `password`, `date`) VALUES
(5, 'Sam', 'Osoro', 'Pharmacy/1', '56 Kabu', '0789653412', 'sam@pharmacysys.com', 'osoro', '1234', '2013-11-24 17:18:51');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` tinyint(5) NOT NULL,
  `prescription_id` int(5) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `postal_address` varchar(20) NOT NULL,
  `invoice_id` tinyint(5) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `prescription_id`, `customer_id`, `customer_name`, `age`, `sex`, `postal_address`, `invoice_id`, `phone`, `date`) VALUES
(4, 1002, 254678, 'Andre', 0, 'male', '45 eldy', 13, '0987643524', '2013-12-10 12:25:19'),
(9, 1003, 6765, 'Gtyhd', 45, 'Male', '664466447744 Njy', 18, '887998', '2013-12-12 19:20:44'),
(10, 1004, 1678, 'Jay-z', 45, 'Male', '123 Brooklyn', 19, '088721313', '2013-12-12 20:34:50');

--
-- Triggers `prescription`
--
DELIMITER $$
CREATE TRIGGER `taree` AFTER INSERT ON `prescription` FOR EACH ROW BEGIN
SET@date=NOW();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `prescription_details`
--

CREATE TABLE `prescription_details` (
  `id` tinyint(5) NOT NULL,
  `pres_id` int(5) NOT NULL,
  `drug_name` tinyint(5) NOT NULL,
  `strength` varchar(15) NOT NULL,
  `dose` varchar(15) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription_details`
--

INSERT INTO `prescription_details` (`id`, `pres_id`, `drug_name`, `strength`, `dose`, `quantity`) VALUES
(2, 999, 5, '10 gms', '1x2', 12),
(3, 1000, 5, '10 gms', '1x2', 12),
(5, 1000, 6, '150 gms', '1x4', 12),
(6, 1001, 5, '20 gms', '2x3', 15),
(7, 1001, 6, '30 gms', '2x4', 17),
(9, 1001, 7, '50 gms', '1x3', 15),
(10, 1001, 8, '40 gms', '1x3', 15),
(11, 1001, 9, '15 gms', '2x3', 20),
(13, 1002, 5, '50 gms', '2X3', 5),
(14, 1002, 6, '150 gms', '2X3', 10),
(15, 1002, 7, '20 gms', '2X3', 20),
(16, 1002, 8, '15 gms', '2X3', 16),
(17, 1002, 9, '10 gms', '2X3', 10),
(19, 1003, 5, '50 gms', '1x2', 5),
(20, 1004, 5, '12', '1x2', 12),
(21, 1005, 5, '20 gms', '2x3', 30),
(22, 1005, 6, '40 gms', '1x3', 10),
(23, 1006, 5, '12 gms', '1x3', 10),
(24, 1006, 8, '15 gms', '1x3', 60),
(25, 1003, 5, '20 gms', '1x3', 12),
(26, 1003, 6, '30 gms', '1x2', 15),
(27, 1004, 5, '20 gms', '1x3', 12),
(28, 1004, 6, '150 gms', '1x4', 15),
(29, 1004, 8, '120 gms', '1x3', 20),
(30, 1004, 9, '10 gms', '2x3', 20);

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `reciptNo` int(10) NOT NULL,
  `customer_id` varchar(10) NOT NULL,
  `total` int(10) NOT NULL,
  `payType` varchar(10) NOT NULL,
  `serialno` varchar(10) DEFAULT NULL,
  `served_by` varchar(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`reciptNo`, `customer_id`, `total`, `payType`, `serialno`, `served_by`, `date`) VALUES
(0, '', 1500, '', '', 'sam', '0000-00-00 00:00:00'),
(999, '', 1350, '', '', 'sam', '0000-00-00 00:00:00');

--
-- Triggers `receipts`
--
DELIMITER $$
CREATE TRIGGER `siku` AFTER INSERT ON `receipts` FOR EACH ROW BEGIN
     SET @date=NOW();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` tinyint(5) NOT NULL,
  `drug_name` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `description` varchar(50) NOT NULL,
  `company` varchar(20) NOT NULL,
  `supplier` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `status` enum('Available','Inavailable') NOT NULL,
  `date_supplied` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `drug_name`, `category`, `description`, `company`, `supplier`, `quantity`, `cost`, `status`, `date_supplied`) VALUES
(5, 'Piriton', 'tablet', 'Painkiller', 'SB', 'SB', 1000, 5, 'Available', '2013-11-30'),
(6, 'Dual Cotexin', 'tablet', 'Malaria', 'GX', 'Clinix', 150, 120, 'Available', '2013-11-30'),
(7, 'Naproxen', 'Tablet', 'Reproductive', 'Family Health', 'Stopes', 250, 250, 'Available', '2013-11-30'),
(8, 'Flagi', 'talet', 'Digestive', 'GX', 'Clinix', 657, 15, 'Available', '2013-11-30'),
(9, 'Actal', 'Tablet', 'Stomach Reliev', 'GX', 'Clinix', 1000, 1, 'Available', '2013-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `tempprescri`
--

CREATE TABLE `tempprescri` (
  `id` tinyint(5) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `postal_address` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `drug_name` varchar(30) NOT NULL,
  `strength` varchar(30) NOT NULL,
  `dose` varchar(30) NOT NULL,
  `quantity` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`cashier_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stocks` (`drug`),
  ADD KEY `invoices` (`invoice`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`manager_id`);

--
-- Indexes for table `paymenttypes`
--
ALTER TABLE `paymenttypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`pharmacist_id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`,`prescription_id`);

--
-- Indexes for table `prescription_details`
--
ALTER TABLE `prescription_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dsfd` (`drug_name`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`reciptNo`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `tempprescri`
--
ALTER TABLE `tempprescri`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cashier`
--
ALTER TABLE `cashier`
  MODIFY `cashier_id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `manager_id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paymenttypes`
--
ALTER TABLE `paymenttypes`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pharmacist`
--
ALTER TABLE `pharmacist`
  MODIFY `pharmacist_id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `prescription_details`
--
ALTER TABLE `prescription_details`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tempprescri`
--
ALTER TABLE `tempprescri`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD CONSTRAINT `invoices` FOREIGN KEY (`invoice`) REFERENCES `invoice` (`invoice_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stocks` FOREIGN KEY (`drug`) REFERENCES `stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prescription_details`
--
ALTER TABLE `prescription_details`
  ADD CONSTRAINT `dsfd` FOREIGN KEY (`drug_name`) REFERENCES `stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'actmembers', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"act\",\"actmembers\",\"apitutor\",\"billdb\",\"blog\",\"blog2\",\"country_state_city\",\"fantastic_school_admin_db\",\"hospital\",\"hotel\",\"khanstore\",\"library\",\"pharmacy\",\"phpmyadmin\",\"products_crud\",\"school_management_system_2021\",\"test\",\"testing\",\"to_do_list\",\"userform\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"act\",\"table\":\"users\"},{\"db\":\"act\",\"table\":\"states\"},{\"db\":\"apitutor\",\"table\":\"students\"},{\"db\":\"apitutor\",\"table\":\"users\"},{\"db\":\"blog2\",\"table\":\"topics\"},{\"db\":\"blog2\",\"table\":\"users\"},{\"db\":\"country_state_city\",\"table\":\"cities\"},{\"db\":\"country_state_city\",\"table\":\"states\"},{\"db\":\"country_state_city\",\"table\":\"users\"},{\"db\":\"country_state_city\",\"table\":\"countries\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-03-24 08:18:34', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `products_crud`
--
CREATE DATABASE IF NOT EXISTS `products_crud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `products_crud`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(512) NOT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(2048) DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `price`, `create_date`) VALUES
(45, 'ueuueu', 'iueuueuu ', 'images/3KkoXmjj/1639157240243.jpg', '2222', '2021-12-14 21:08:29'),
(47, 'oppo', ' kjjjjjjj', 'images/bJra2PoH/IPHONE X.jpg', '2333', '2021-12-28 10:45:56'),
(50, 'oppo reno 5', ' ', 'images/pL7r9JFU/12 pro max.jpg', '5667', '2021-12-29 20:36:06'),
(51, 'edges sticker', ' some cool description', 'images/8jJ8rBND/airtag.jpg', '1200', '2021-12-29 21:13:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- Database: `school_management_system_2021`
--
CREATE DATABASE IF NOT EXISTS `school_management_system_2021` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `school_management_system_2021`;

-- --------------------------------------------------------

--
-- Table structure for table `add_event`
--

CREATE TABLE `add_event` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `descriptions` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `location` varchar(20) NOT NULL,
  `manage_by` varchar(20) NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_event`
--

INSERT INTO `add_event` (`id`, `name`, `descriptions`, `date`, `time`, `location`, `manage_by`, `file`) VALUES
(49, 'MSS Admission', 'MSS Batch 47 admission start', '2021-08-26', '09:00:00', 'Campus', 'Asad', 'error.PNG'),
(50, 'Election', 'student election day', '2021-09-24', '11:45:00', 'Aditoriam', 'maruf', 'images.jpg'),
(53, 'Covid-19 Vaccine donate', 'Covid-19 Vaccine donate', '2021-09-09', '10:00:00', 'School aditoriam', 'Maruf', 'download.jpg'),
(54, 'Ajaira', 'Ajaira event ', '2021-09-10', '11:40:00', 'Motijheel', 'Yearul', 'Screen Shot 2021-07-18 at 13.49.36.png');

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `id` int(1) NOT NULL,
  `ad_name` varchar(20) NOT NULL,
  `ad_email` varchar(60) NOT NULL,
  `ad_pass` varchar(255) NOT NULL,
  `action_role` varchar(20) NOT NULL,
  `user_image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`id`, `ad_name`, `ad_email`, `ad_pass`, `action_role`, `user_image`) VALUES
(1, 'Islamyearul', 'admin@admin.com', '202cb962ac59075b964b07152d234b70', 'admin', 'Yearul-PP-2-Pic-2020-2.jpg'),
(4, 'hitvidpc', 'sdsdsd@sdg.bom', 'd76038e92ab1e1a586cbb5ef122efa9d', 'developer', 'roobon.png'),
(6, 'sfafsa', 'sdsdsd@sdg.bom', '2c49353669a4b803a493b0677f8045ca', 'viewer', 'saiful.jpg'),
(13, 'fffffffff', 'sdsdsd@sdg.bom', '06a53dff852b2da2eea823e75450c4af', 'developer', 'saiful.jpg'),
(15, 'hhhhhh', 'sdsdsd@sdg.bom', 'c34f20f0e8b1238253e6650e2015ac5e', 'viewer', 'roobon.png'),
(16, 'Islam Yearul', 'islamyearul@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin', 'Yearul-PP-2-Pic-2020-2.jpg'),
(17, 'user', 'user@user.com', 'ee11cbb19052e40b07aac0ca060c23ee', 'viewer', 'Thomas G. Giglione.jpg'),
(18, 'abc', 'abc@abc.abc', '81dc9bdb52d04dc20036dbd8313ed055', 'Viewer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admission_request`
--

CREATE TABLE `admission_request` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `education` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admission_request`
--

INSERT INTO `admission_request` (`id`, `name`, `phone`, `email`, `city`, `education`, `course`) VALUES
(1, 'Nazim', '226465654', 'nazim@yahoo.com', 'Dhaka', 'BSC', 'MSC'),
(2, 'Nazim', '226465654', 'nazim@yahoo.com', 'Dhaka', 'BSC', 'MSC'),
(3, 'Nazim', '4656546', 'nazim@yahoo.com', 'Dhaka', 'BSC', 'six');

-- --------------------------------------------------------

--
-- Table structure for table `all_class_fees_table`
--

CREATE TABLE `all_class_fees_table` (
  `all_class_fees_id` int(11) NOT NULL,
  `class` varchar(20) NOT NULL,
  `year` int(11) NOT NULL,
  `admission_fees` int(11) NOT NULL,
  `session_fees` int(11) DEFAULT NULL,
  `seminar_fee` int(11) DEFAULT NULL,
  `event_fee` int(11) DEFAULT NULL,
  `january_salary` int(11) NOT NULL,
  `february_salary` int(11) NOT NULL,
  `march_salary` int(11) NOT NULL,
  `afril_salary` int(11) NOT NULL,
  `first_terminal_exam_fees` int(11) NOT NULL,
  `may_salary` int(11) NOT NULL,
  `june_salary` int(11) NOT NULL,
  `july_salary` int(11) NOT NULL,
  `august_salary` int(11) NOT NULL,
  `mid_terminal_exam_fees` int(11) NOT NULL,
  `september_salary` int(11) NOT NULL,
  `october_salary` int(11) NOT NULL,
  `november_salary` int(11) NOT NULL,
  `december_salary` int(11) NOT NULL,
  `final_exam_fees` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_class_fees_table`
--

INSERT INTO `all_class_fees_table` (`all_class_fees_id`, `class`, `year`, `admission_fees`, `session_fees`, `seminar_fee`, `event_fee`, `january_salary`, `february_salary`, `march_salary`, `afril_salary`, `first_terminal_exam_fees`, `may_salary`, `june_salary`, `july_salary`, `august_salary`, `mid_terminal_exam_fees`, `september_salary`, `october_salary`, `november_salary`, `december_salary`, `final_exam_fees`) VALUES
(1, 'eight', 2021, 1000, 5000, 500, 200, 800, 800, 800, 800, 1200, 800, 800, 800, 800, 1200, 800, 800, 800, 800, 1200),
(2, 'seven', 2021, 800, 5000, 400, 200, 700, 700, 700, 700, 1000, 700, 700, 700, 700, 1000, 700, 700, 700, 700, 1000),
(3, 'six', 2021, 800, 4000, 300, 100, 600, 600, 600, 600, 900, 600, 600, 600, 600, 900, 600, 600, 600, 600, 900),
(4, 'KG', 2021, 800, 4000, 300, 200, 500, 500, 500, 500, 1000, 500, 500, 500, 500, 1000, 500, 500, 500, 500, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `a_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `toggle1_title` varchar(50) DEFAULT NULL,
  `toggle1_des` varchar(200) DEFAULT NULL,
  `toggle2_title` varchar(50) DEFAULT NULL,
  `toggle2_des` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`a_id`, `name`, `description`, `date`, `time`, `toggle1_title`, `toggle1_des`, `toggle2_title`, `toggle2_des`) VALUES
(1, '\r\nAcademy Leadership', 'Praesent ac velit non eros maximus porta in suscipit elit. Aenean viverra lorem quis mattis accumsan. Etiam facilisis magna ut diam pulvinar condimentum.', '2021-09-22', '09:00:00', 'Leadership', 'Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa. Donec ipsum ipsum, rhoncus sit amet arcu in, hendrerit placerat libero. Morbi sit ', 'Leadership', 'Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa. Donec ipsum ipsum, rhoncus sit amet arcu in, hendrerit placerat libero. Morbi sit '),
(2, '\r\nHealth Care', 'Etiam facilisis magna ut diam pulvinar condimentum. Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa.\r\n\r\n', '2021-09-12', '12:50:19', NULL, NULL, NULL, NULL),
(3, '\r\nAcademy', 'Praesent ac velit non eros maximus porta in suscipit elit. Aenean viverra lorem quis mattis accumsan. Etiam facilisis magna ut diam pulvinar condimentum.', '2021-09-22', '09:00:00', 'Leadership', 'Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa. Donec ipsum ipsum, rhoncus sit amet arcu in, hendrerit placerat libero. Morbi sit ', 'Leadership', 'Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa. Donec ipsum ipsum, rhoncus sit amet arcu in, hendrerit placerat libero. Morbi sit '),
(4, '\r\n Care', 'Etiam facilisis magna ut diam pulvinar condimentum. Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa.\r\n\r\n', '2021-09-12', '12:50:19', NULL, NULL, NULL, NULL),
(5, '\r\nAcademy Leadership', 'Praesent ac velit non eros maximus porta in suscipit elit. Aenean viverra lorem quis mattis accumsan. Etiam facilisis magna ut diam pulvinar condimentum.', '2021-09-22', '09:00:00', 'Leadership', 'Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa. Donec ipsum ipsum, rhoncus sit amet arcu in, hendrerit placerat libero. Morbi sit ', 'Leadership', 'Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa. Donec ipsum ipsum, rhoncus sit amet arcu in, hendrerit placerat libero. Morbi sit '),
(6, '\r\nHealth Care', 'Etiam facilisis magna ut diam pulvinar condimentum. Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa.\r\n\r\n', '2021-09-12', '12:50:19', NULL, NULL, NULL, NULL),
(7, '\r\nAcademy', 'Praesent ac velit non eros maximus porta in suscipit elit. Aenean viverra lorem quis mattis accumsan. Etiam facilisis magna ut diam pulvinar condimentum.', '2021-09-22', '09:00:00', 'Leadership', 'Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa. Donec ipsum ipsum, rhoncus sit amet arcu in, hendrerit placerat libero. Morbi sit ', 'Leadership', 'Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa. Donec ipsum ipsum, rhoncus sit amet arcu in, hendrerit placerat libero. Morbi sit '),
(8, '\r\n Care', 'Etiam facilisis magna ut diam pulvinar condimentum. Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa.\r\n\r\n', '2021-09-12', '12:50:19', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `apply_course`
--

CREATE TABLE `apply_course` (
  `apply_course_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apply_course`
--

INSERT INTO `apply_course` (`apply_course_id`, `name`, `email`, `phone`, `course_id`) VALUES
(1, 'boby', 'boby@gmail.vom', '554465465', 0);

-- --------------------------------------------------------

--
-- Table structure for table `at_add_attendance`
--

CREATE TABLE `at_add_attendance` (
  `ID` int(11) NOT NULL,
  `Class` varchar(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL,
  `Attendance` varchar(10) NOT NULL,
  `Teachers_Comnt` varchar(50) NOT NULL,
  `Student_Id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `at_add_attendance`
--

INSERT INTO `at_add_attendance` (`ID`, `Class`, `Student_Name`, `Attendance`, `Teachers_Comnt`, `Student_Id`) VALUES
(2, '1', 'Hasan', 'Present', 'Good', 147852),
(3, '2', 'Shanto', 'Present', 'NA', 1459632),
(5, '3', 'Adnan Habib Rommel', '695847', 'haaaa', 695847);

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `a_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `toggle1_title` varchar(50) DEFAULT NULL,
  `toggle1_des` varchar(200) DEFAULT NULL,
  `toggle2_title` varchar(50) DEFAULT NULL,
  `toggle2_des` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`a_id`, `name`, `description`, `date`, `time`, `toggle1_title`, `toggle1_des`, `toggle2_title`, `toggle2_des`) VALUES
(1, '\r\nAcademy Leadership', 'Praesent ac velit non eros maximus porta in suscipit elit. Aenean viverra lorem quis mattis accumsan. Etiam facilisis magna ut diam pulvinar condimentum.', '2021-09-22', '09:00:00', 'Leadership', 'Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa. Donec ipsum ipsum, rhoncus sit amet arcu in, hendrerit placerat libero. Morbi sit ', 'Leadership', 'Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa. Donec ipsum ipsum, rhoncus sit amet arcu in, hendrerit placerat libero. Morbi sit '),
(2, '\r\nHealth Care', 'Etiam facilisis magna ut diam pulvinar condimentum. Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa.\r\n\r\n', '2021-09-12', '12:50:19', NULL, NULL, NULL, NULL),
(3, '\r\nAcademy', 'Praesent ac velit non eros maximus porta in suscipit elit. Aenean viverra lorem quis mattis accumsan. Etiam facilisis magna ut diam pulvinar condimentum.', '2021-09-22', '09:00:00', 'Leadership', 'Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa. Donec ipsum ipsum, rhoncus sit amet arcu in, hendrerit placerat libero. Morbi sit ', 'Leadership', 'Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa. Donec ipsum ipsum, rhoncus sit amet arcu in, hendrerit placerat libero. Morbi sit '),
(4, '\r\n Care', 'Etiam facilisis magna ut diam pulvinar condimentum. Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa.\r\n\r\n', '2021-09-12', '12:50:19', NULL, NULL, NULL, NULL),
(5, '\r\nAcademy Leadership', 'Praesent ac velit non eros maximus porta in suscipit elit. Aenean viverra lorem quis mattis accumsan. Etiam facilisis magna ut diam pulvinar condimentum.', '2021-09-22', '09:00:00', 'Leadership', 'Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa. Donec ipsum ipsum, rhoncus sit amet arcu in, hendrerit placerat libero. Morbi sit ', 'Leadership', 'Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa. Donec ipsum ipsum, rhoncus sit amet arcu in, hendrerit placerat libero. Morbi sit '),
(6, '\r\nHealth Care', 'Etiam facilisis magna ut diam pulvinar condimentum. Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa.\r\n\r\n', '2021-09-12', '12:50:19', NULL, NULL, NULL, NULL),
(7, '\r\nAcademy', 'Praesent ac velit non eros maximus porta in suscipit elit. Aenean viverra lorem quis mattis accumsan. Etiam facilisis magna ut diam pulvinar condimentum.', '2021-09-22', '09:00:00', 'Leadership', 'Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa. Donec ipsum ipsum, rhoncus sit amet arcu in, hendrerit placerat libero. Morbi sit ', 'Leadership', 'Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa. Donec ipsum ipsum, rhoncus sit amet arcu in, hendrerit placerat libero. Morbi sit '),
(8, '\r\n Care', 'Etiam facilisis magna ut diam pulvinar condimentum. Nulla mattis, ipsum cursus scelerisque pretium, nisl nisl elementum tellus, a facilisis turpis tellus sit amet massa.\r\n\r\n', '2021-09-12', '12:50:19', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name_numeric` longtext COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `name`, `name_numeric`, `teacher_id`) VALUES
(2, 'kg one', 'k1', 2),
(3, 'Primary One', 'P 1', 2),
(4, 'primary 3', 'p 3', 4),
(7, 'eight', '8', 8),
(8, 'seven', '7', 7),
(10, 'six', 'vi', 4);

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

CREATE TABLE `class_routine` (
  `id` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `10:00-11:00` varchar(50) NOT NULL,
  `11:00-12:00` varchar(50) NOT NULL,
  `12:00-01:00` varchar(50) NOT NULL,
  `02:00-03:00` varchar(50) NOT NULL,
  `03:00-04:00` varchar(50) NOT NULL,
  `04:00-05:00` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class_routine`
--

INSERT INTO `class_routine` (`id`, `day`, `10:00-11:00`, `11:00-12:00`, `12:00-01:00`, `02:00-03:00`, `03:00-04:00`, `04:00-05:00`) VALUES
(1, 'Saturday', 'Bangla', 'English', 'Math', 'Bangladesh and global studies', 'Religion', 'Physical education and health'),
(2, 'Sunday', 'Physical education and health', 'Religion', 'Math', 'Bangla', 'Bangladesh and global studies', 'English'),
(3, 'Monday', 'Bangla', 'English', 'Bangladesh and global studies', 'Math', 'Religion', 'Physical education and health'),
(4, 'Tuesday', 'English', 'Bangla', 'Bangladesh and global studies', 'Math', 'Physical education and health', 'Religion'),
(5, 'Wednesday', 'Bangladesh and global studies', 'English', 'Bangla', 'Math', 'Religion', 'Physical education and health'),
(6, 'Thursday', 'Bangladesh and global studies', 'Bangla', 'Math', 'Religion', 'English', 'Physical education and health....');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(5) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `course_description` text NOT NULL,
  `course_status` varchar(10) NOT NULL,
  `course_cat` varchar(100) NOT NULL,
  `course_seat` int(11) NOT NULL,
  `course_start_date` date NOT NULL,
  `course_contact_person_name` varchar(50) NOT NULL,
  `course_contact_person_phone` int(15) NOT NULL,
  `course_contact_email` varchar(100) NOT NULL,
  `course_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `course_description`, `course_status`, `course_cat`, `course_seat`, `course_start_date`, `course_contact_person_name`, `course_contact_person_phone`, `course_contact_email`, `course_image`) VALUES
(3, 'MSC', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, a', 'Inactive', 'Science', 5, '2021-08-20', 'dsfsdf', 35325235, 'fsafsa@gmail.com', 'build wordpress ecommerce or business website responsive 2.png'),
(4, 'BSC', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a ', 'Active', 'Software Development', 5, '2021-08-20', 'dsfsdf', 35325235, 'fsafsa@gmail.com', 'build wordpress ecommerce or business website responsive 2.png'),
(6, 'MBA', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 'Active', '	\r\nBasic Computer', 3, '2021-08-20', 'dsfsdf', 35325235, 'fsafsa@gmail.com', '3cdd7db2149554995ca05e279fc78036.jpg'),
(7, 'MSC', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 'Inactive', 'Science', 5, '2021-08-20', 'dsfsdf', 35325235, 'fsafsa@gmail.com', '3cdd7db2149554995ca05e279fc78036.jpg'),
(8, 'BSC', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 'Active', 'Software Development', 5, '2021-08-20', 'dsfsdf', 35325235, 'fsafsa@gmail.com', '3cdd7db2149554995ca05e279fc78036.jpg'),
(9, 'BBA', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 'Inactive', 'Web Application Development', 4, '2021-08-20', 'dsfsdf', 35325235, 'fsafsa@gmail.com', '3cdd7db2149554995ca05e279fc78036.jpg'),
(10, 'MBA', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 'Active', '	\r\nBasic Computer', 3, '2021-08-20', 'dsfsdf', 35325235, 'fsafsa@gmail.com', '3cdd7db2149554995ca05e279fc78036.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `course_category`
--

CREATE TABLE `course_category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_category`
--

INSERT INTO `course_category` (`cat_id`, `cat_name`, `cat_description`) VALUES
(1, 'Science', 'as well, but I am coming up short. There seem to be guides on copy/pasting scripts for the share buttons, as well as guides on using each respective API, but for something so simple as using links to '),
(2, 'Commerce', 'as well, but I am coming up short. There seem to be guides on copy/pasting scripts for the share buttons, as well as guides on using each respective API, but for something so simple as using links to '),
(3, 'Humanities', 'as well, but I am coming up short. There seem to be guides on copy/pasting scripts for the share buttons, as well as guides on using each respective API, but for something so simple as using links to '),
(4, 'Applied Acience', 'as well, but I am coming up short. There seem to be guides on copy/pasting scripts for the share buttons, as well as guides on using each respective API, but for something so simple as using links to '),
(5, 'Software Development', 'as well, but I am coming up short. There seem to be guides on copy/pasting scripts for the share buttons, as well as guides on using each respective API, but for something so simple as using links to '),
(6, 'Web Application Development', 'as well, but I am coming up short. There seem to be guides on copy/pasting scripts for the share buttons, as well as guides on using each respective API, but for something so simple as using links to '),
(7, 'Web Security', 'as well, but I am coming up short. There seem to be guides on copy/pasting scripts for the share buttons, as well as guides on using each respective API, but for something so simple as using links to '),
(8, 'Basic Computer', 'as well, but I am coming up short. There seem to be guides on copy/pasting scripts for the share buttons, as well as guides on using each respective API, but for something so simple as using links to '),
(9, 'Graphics Design', 'as well, but I am coming up short. There seem to be guides on copy/pasting scripts for the share buttons, as well as guides on using each respective API, but for something so simple as using links to '),
(10, 'Visual Video Editing', 'as well, but I am coming up short. There seem to be guides on copy/pasting scripts for the share buttons, as well as guides on using each respective API, but for something so simple as using links to ');

-- --------------------------------------------------------

--
-- Table structure for table `course_process_fees`
--

CREATE TABLE `course_process_fees` (
  `course_fees_id` int(5) NOT NULL,
  `first_term_fee` decimal(10,2) NOT NULL,
  `second_term_fee` decimal(10,2) NOT NULL,
  `third_term_fee` decimal(10,2) NOT NULL,
  `forth_term_fee` decimal(10,2) NOT NULL,
  `fees_description` varchar(200) DEFAULT NULL,
  `step_1_des` varchar(200) NOT NULL,
  `step_2_des` varchar(200) NOT NULL,
  `step_3_des` varchar(200) NOT NULL,
  `step_4_des` varchar(200) NOT NULL,
  `step_5_des` varchar(200) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_process_fees`
--

INSERT INTO `course_process_fees` (`course_fees_id`, `first_term_fee`, `second_term_fee`, `third_term_fee`, `forth_term_fee`, `fees_description`, `step_1_des`, `step_2_des`, `step_3_des`, `step_4_des`, `step_5_des`, `course_id`) VALUES
(1, '10500.00', '7801.00', '45445.00', '7587.00', 'fsafsafsfasfs', 'fffffff', 'sdgsdgewgwe', 'sfdstwtwts', 'wqrwsafsaf', 'dfsg', 5),
(2, '12700.00', '7801.00', '45445.00', '7587.00', 'fsafsafsfasfs', 'safrwqrwqr', 'sdgsdgewgwe', 'sfdstwtwts', 'wqrwsafsaf', '', 3),
(4, '55684.00', '4565.00', '4565.00', '5678.00', 'safsafsaf', 'sfafsads', 'gfgfdh', 'fsdfsdgsd', 'yhreyre', 'gSDGsdg', 6),
(5, '55684.00', '4565.00', '4565.00', '5678.00', 'safsafsaf', 'sfafsads', 'gfgfdh', 'fsdfsdgsd', 'yhreyre', 'gSDGsdg', 0),
(6, '65465.00', '65465.00', '6454654.00', '5464564.00', 'dfgsag', 'sgagfg', 'sfsdgdsg', 'asgagasa', 'sagsagasg', 'asgsagasg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `course_time_table`
--

CREATE TABLE `course_time_table` (
  `course_time_id` int(5) NOT NULL,
  `1st_sem_name` varchar(50) NOT NULL,
  `1st_sem_des` varchar(200) NOT NULL,
  `2nd_sem_name` varchar(50) NOT NULL,
  `2nd_sem_des` varchar(200) NOT NULL,
  `3rd_sem_name` varchar(50) NOT NULL,
  `3rd_sem_des` varchar(200) NOT NULL,
  `4th_sem_name` varchar(50) NOT NULL,
  `4th_sem_des` varchar(200) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_time_table`
--

INSERT INTO `course_time_table` (`course_time_id`, `1st_sem_name`, `1st_sem_des`, `2nd_sem_name`, `2nd_sem_des`, `3rd_sem_name`, `3rd_sem_des`, `4th_sem_name`, `4th_sem_des`, `course_id`) VALUES
(2, 'dgfdg', 'fdgfdgfdgfd', 'fdgfdg', 'dhrhrh', 'fdhfdh', 'fdgfd re', 'reyrey', 'setetew', 4),
(4, 'dgfdg', 'fdgfdgfdgfd', 'fdgfdg', 'dhrhrh', 'fdhfdh', 'fdgfd re', 'reyrey', 'setetew', 6),
(5, 'dgfdg', 'fdgfdgfdgfd', 'fdgfdg', 'dhrhrh', 'fdhfdh', 'fdgfd re', 'reyrey', 'setetew', 0),
(6, 'ddf', 'dgsdgc', 'cxbxcb', 'ssgeg', 'jgfjgf', 'awsafsf', 'retyrey', 'reutrgn', 3);

-- --------------------------------------------------------

--
-- Stand-in structure for view `course_view`
-- (See below for the actual view)
--
CREATE TABLE `course_view` (
`course_name` varchar(50)
,`course_contact_person_name` varchar(50)
,`1st_sem_name` varchar(50)
,`first_term_fee` decimal(10,2)
,`2nd_sem_name` varchar(50)
,`second_term_fee` decimal(10,2)
,`3rd_sem_name` varchar(50)
,`third_term_fee` decimal(10,2)
,`4th_sem_name` varchar(50)
,`forth_term_fee` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `examquestion`
--

CREATE TABLE `examquestion` (
  `examquestion_id` int(11) NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `exam` varchar(100) NOT NULL,
  `class` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teachers` varchar(50) NOT NULL,
  `session` varchar(50) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examquestion`
--

INSERT INTO `examquestion` (`examquestion_id`, `subject`, `exam`, `class`, `teachers`, `session`, `title`, `description`, `file_name`, `file_type`, `timestamp`, `status`) VALUES
(8, 'Optimum', '', '3', '', '', 'Mathematics', 'THIS EXAM IS FOR PRIMARY ONE PUPILS, PLEASE READ AND GIVE FEEDBACK SIR. THANKS', 'FOLUSO.docx', '', 'Sat, 08 July 2017', 'Approved'),
(10, '1', '1', '2', '2', '11', 'fsaf', 'gryreya', '2021_08_22_15-40-31_pm.pdf', 'application/pdf', '2021-08-27 11:08:24', 'Inapprove'),
(11, '1', '1', '2', '2', '11', 'fsaf', 'gryreya', '2021_08_22_15-40-31_pm.pdf', 'application/pdf', '2021-08-27 11:08:31', 'Inapprove'),
(12, '1', '1', '2', '2', '11', 'fsaf', 'gryreya', '2021_08_22_15-41-58_pm.pdf', 'application/pdf', '2021-08-28 22:04:06', 'Inapprove');

-- --------------------------------------------------------

--
-- Table structure for table `exam_all`
--

CREATE TABLE `exam_all` (
  `exam_id` int(11) NOT NULL,
  `exam_name` varchar(100) NOT NULL,
  `start_date` date DEFAULT NULL,
  `start_time` time NOT NULL,
  `duration` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_all`
--

INSERT INTO `exam_all` (`exam_id`, `exam_name`, `start_date`, `start_time`, `duration`) VALUES
(1, '1st Terminal Exam', '2021-08-24', '10:00:00', '3 hours'),
(2, 'Middle Terminal Exam', '2021-08-09', '10:00:00', '3 h'),
(3, 'Final Terminal Exam', '2021-08-16', '03:00:00', '2 h'),
(4, 'Admission Test', '2021-08-31', '11:00:00', '1 h'),
(5, 'Monthly Assesment', '2021-08-27', '10:00:00', '30 min'),
(6, 'sdfdsfds', '2021-08-05', '10:03:00', 'f4fhh'),
(8, 'dsgdsgds', '2021-08-17', '08:22:00', 'sdgsdgsdg'),
(9, 'dsgdsgds', '2021-08-17', '08:22:00', 'ggggg');

--
-- Triggers `exam_all`
--
DELIMITER $$
CREATE TRIGGER `trash_exam` BEFORE DELETE ON `exam_all` FOR EACH ROW INSERT INTO exam_all_trash VALUES ('', OLD.exam_id, OLD.exam_name, OLD.start_date, OLD.start_time, OLD.duration)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `exam_all_trash`
--

CREATE TABLE `exam_all_trash` (
  `trash_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_name` varchar(100) NOT NULL,
  `start_date` date DEFAULT NULL,
  `start_time` time NOT NULL,
  `duration` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_all_trash`
--

INSERT INTO `exam_all_trash` (`trash_id`, `exam_id`, `exam_name`, `start_date`, `start_time`, `duration`) VALUES
(1, 10, 'dsgdsgds', '2021-08-17', '08:22:00', 'sdgsdgsdg');

-- --------------------------------------------------------

--
-- Table structure for table `exam_marks`
--

CREATE TABLE `exam_marks` (
  `mark_id` int(11) NOT NULL,
  `student_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `student_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `class_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `exam_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mark_obtained` int(11) NOT NULL DEFAULT 0,
  `mark_total` int(11) NOT NULL DEFAULT 100,
  `result` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'F',
  `point` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam_marks`
--

INSERT INTO `exam_marks` (`mark_id`, `student_id`, `student_name`, `subject_id`, `class_id`, `session_id`, `exam_id`, `mark_obtained`, `mark_total`, `result`, `point`, `comment`) VALUES
(6, '1', '', '1', '1', '1', '1', 50, 100, 'B', '', 'pass'),
(7, '2', '', '2', '2', '2', '2', 33, 100, 'D', '', 'fail'),
(8, '13', 'Yearul', 'Mathematics', 'KG', '2016-2017', '1st Terminal Exam', 60, 100, 'A-', '3.5', 'pass'),
(10, '16', 'Yearul', 'Economics', 'SIX', '2026-2027', 'Final Terminal Exam', 25, 100, 'F', '0', 'fail'),
(11, '17', 'sss', 'Social Studies', 'seven', '2026-2027', 'sdfdsfds', 33, 100, 'D', '1', 'pass'),
(12, '14', 'sss', 'Mathematics', 'KG', '2016-2017', '1st Terminal Exam', 33, 100, 'D', '1', 'pass'),
(13, '17', 'sss', 'Economics', 'eight', '2023-2024', 'Admission Test', 44, 100, 'B', '3', 'pass'),
(16, '5', 'Md Yearul Islam', 'Mathematics', 'eight', '2016-2017', '1st Terminal Exam', 75, 100, 'A+', '5', 'Good'),
(17, '5', 'Md Yearul Islam', 'Mathematics', 'eight', '2016-2017', '1st Terminal Exam', 80, 100, 'A+', '5', 'Good'),
(18, '5', 'Md Yearul Islam', 'Mathematics', 'eight', '2016-2017', '1st Terminal Exam', 33, 100, 'D', '1', 'pass'),
(19, '5', 'Md Yearul Islam', 'Physics', 'eight', '2016-2017', '1st Terminal Exam', 63, 100, 'A+', '5', 'Good'),
(20, '5', 'Md Yearul Islam', 'Biology', 'eight', '2016-2017', '1st Terminal Exam', 79, 100, 'A+', '5', 'Good'),
(21, '5', 'Md Yearul Islam', 'Bangla', 'eight', '2016-2017', '1st Terminal Exam', 53, 100, 'D', '1', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `feescollection`
--

CREATE TABLE `feescollection` (
  `id` int(11) NOT NULL,
  `student_id` int(10) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `Class` varchar(50) NOT NULL,
  `Session` varchar(50) NOT NULL,
  `fees_cat` varchar(50) NOT NULL,
  `due_fees` int(11) DEFAULT 0,
  `current_fees` int(11) DEFAULT NULL,
  `total_fees` int(11) NOT NULL,
  `PaidAmount` int(11) NOT NULL,
  `due_balance` int(10) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `receipt_no` varchar(50) NOT NULL,
  `Remarks` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feescollection`
--

INSERT INTO `feescollection` (`id`, `student_id`, `student_name`, `Class`, `Session`, `fees_cat`, `due_fees`, `current_fees`, `total_fees`, `PaidAmount`, `due_balance`, `Date`, `receipt_no`, `Remarks`) VALUES
(8, 5, 'Md Yearul Islam', 'six', '2018-2019', 'admission_fees', 7000, 1000, 8000, 5000, 3000, '2021-09-21', '565454545', 'Dueee'),
(12, 14, 'sss', 'six', '2016-2017', 'event_fee', 0, 100, 100, 100, 0, '2021-09-06', '1465465465', 'paid'),
(13, 14, 'sss', 'six', '2016-2017', 'event_fee', 0, 100, 100, 100, 0, '2021-09-06', '466465465', 'paid'),
(15, 5, 'Md Yearul Islam', 'six', '2016-2017', 'admission_fees', 0, 800, 800, 600, 200, '2021-09-06', '45454521', 'Due'),
(16, 5, 'Md Yearul Islam', 'six', '2016-2017', 'january_salary', 200, 600, 800, 700, 100, '2021-09-06', '5464654', 'Due'),
(17, 2, 'Md Yearul Islam', 'seven', '2018-2019', 'admission_fees', 900, 1000, 1900, 1000, 900, '2021-09-09', '4456524445', 'paid'),
(18, 2, 'Md Yearul Islam', 'seven', '2018-2019', 'january_salary', 900, 600, 1500, 100, 1400, '2021-09-16', '5667843512', 'paid'),
(19, 2, 'Nabil Islam', 'seven', '2016-2017', 'admission_fees', 0, 800, 800, 500, 300, '2021-09-01', '', 'Due'),
(20, 2, 'Nabil Islam', 'seven', '2016-2017', 'admission_fees', 600, 800, 1400, 500, 900, '2021-09-03', '', 'Due'),
(21, 2, 'Nabil Islam', 'seven', '2016-2017', 'admission_fees', 300, 800, 1100, 500, 600, '2021-09-02', '', 'Due'),
(22, 9, 'Md Yearul Islam', 'six', '2016-2017', 'admission_fees', 0, 800, 800, 600, 200, '2021-09-06', '45454521', 'Due'),
(23, 9, 'islam yearul', 'eight', '2017-2018', 'admission_fees', 200, 1000, 1200, 1000, 200, '2021-09-12', '4456465', 'Due'),
(24, 5, 'Md Yearul Islam', 'eight', '2016-2017', 'admission_fees', 0, 800, 800, 600, 200, '2021-09-06', '45454521', 'Due'),
(25, 5, 'Md Yearul Islam', 'eight', '2016-2017', 'january_salary', 200, 600, 800, 700, 100, '2021-09-06', '5464654', 'Due'),
(26, 5, 'Md Yearul Islam', 'eight', '2016-2017', 'admission_fees', 100, 1000, 1100, 1000, 100, '2021-09-21', '565454545', 'Dueee');

-- --------------------------------------------------------

--
-- Table structure for table `get_in_touch`
--

CREATE TABLE `get_in_touch` (
  `gt_id` int(5) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `topics` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `get_in_touch`
--

INSERT INTO `get_in_touch` (`gt_id`, `name`, `phone`, `email`, `topics`, `address`, `message`) VALUES
(00001, 'boby', '34646424', 'acs@gsg.com', 'Php', 'wrwrwqr', 'dgdsgdsgdsgagdf'),
(00002, 'boby', '34646424', 'acs@gsg.com', 'Php', 'wrwrwqr', 'dgdsgdsgdsgagdf'),
(00003, 'boby', '34646424', 'acs@gsg.com', 'Php', 'wrwrwqr', 'dgdsgdsgdsgagdf'),
(00004, 'boby', '34646424', 'acs@gsg.com', 'Php', 'wrwrwqr', 'dgdsgdsgdsgagdf');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `grade_point` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mark_from` int(11) NOT NULL,
  `mark_upto` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_id`, `name`, `grade_point`, `mark_from`, `mark_upto`, `comment`) VALUES
(1, 'A+', '5.00', 80, 100, 'Most Best'),
(2, 'A', '4.00', 70, 79, 'Best'),
(3, 'A-', '3.50', 60, 69, 'Good'),
(4, 'B', '3.00', 50, 59, 'Middle'),
(5, 'C', '2.00', 40, 49, 'Not Bad'),
(6, 'D', '1.00', 33, 39, 'Pass'),
(7, 'F', '0.00', 0, 32, 'Fail'),
(8, 'sdf', '45', 43, 55, 'fdg');

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `holiday_id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `holiday` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`holiday_id`, `title`, `holiday`, `date`) VALUES
(2, 'JUNE 12', 'THERE IS GOING TO BE HOLIDAY SOON', 'Wed, 26 July 2017'),
(3, 'MAY 25', 'THERE IS GOING TO BE HOLIDAY SOON', 'Tue, 25 July 2017');

-- --------------------------------------------------------

--
-- Stand-in structure for view `image_gallery`
-- (See below for the actual view)
--
CREATE TABLE `image_gallery` (
`file` varchar(200)
,`user_image` varchar(200)
,`seminar_image` varchar(150)
,`Photo` varchar(40)
);

-- --------------------------------------------------------

--
-- Table structure for table `job_anounce`
--

CREATE TABLE `job_anounce` (
  `job_announce_id` int(5) UNSIGNED ZEROFILL NOT NULL,
  `job_post_name` varchar(150) NOT NULL,
  `job_description` text NOT NULL,
  `job_empty_post` tinyint(3) NOT NULL,
  `job_start_date` date NOT NULL,
  `job_application_fee` decimal(6,2) NOT NULL,
  `job_location` tinytext NOT NULL,
  `job_application_deadline` date NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_anounce`
--

INSERT INTO `job_anounce` (`job_announce_id`, `job_post_name`, `job_description`, `job_empty_post`, `job_start_date`, `job_application_fee`, `job_location`, `job_application_deadline`, `Status`) VALUES
(00001, 'Lecturer', 'A lecturer is someone who stands up in front of a class and gives an organized talk designed to teach you something. There are lots of lecturers at colleges and universities. The lecturer may even be hired for a single semester or year.', 10, '2021-08-14', '500.00', 'Dhaka', '2021-08-31', 'up_job_sta'),
(00015, 'Assistant Teacher', 'Assistant Teacher duties and responsibilities. Assistant Teachers oversee students in non-classroom settings like lunch, recess and field trips, and they work ', 4, '2021-08-18', '250.00', 'Dhaka', '2021-09-11', 'up_job_sta'),
(00016, 'Assistant Teacher', 'Assistant Teacher duties and responsibilities. Assistant Teachers oversee students in non-classroom settings like lunch, recess and field trips, and they work ', 5, '2021-08-18', '250.00', 'Dhaka', '2021-09-11', 'Active'),
(00017, 'Assistant Teacher', 'Assistant Teacher duties and responsibilities. Assistant Teachers oversee students in non-classroom settings like lunch, recess and field trips, and they work ', 5, '2021-08-18', '250.00', 'Dhaka', '2021-09-11', 'Inactive'),
(00018, 'Assistant Teacher', 'Assistant Teacher duties and responsibilities. Assistant Teachers oversee students in non-classroom settings like lunch, recess and field trips, and they work ', 5, '2021-08-18', '250.00', 'Dhaka', '2021-09-11', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL,
  `staff_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `purpose` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `l_duration` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mop` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `g_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `g_relationship` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `g_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `g_address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `g_country` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `c_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `c_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `model` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `make` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `serial_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `condition` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_id`, `staff_name`, `amount`, `purpose`, `l_duration`, `mop`, `g_name`, `g_relationship`, `g_number`, `g_address`, `g_country`, `c_name`, `c_type`, `model`, `make`, `serial_number`, `value`, `condition`, `date`, `status`, `file_name`) VALUES
(3, 'teacher 2', '1000', 'I WANT TO USE TO PAY FOR MY SCHOOL CHILDREN SCHOOL FEES', 'Daily', 'MODE OF PAYMENT HERE', 'MR OPTIMUMLINKUP', 'FAMILY', 'NUMBER', 'G ADDRESS', 'G COUNTRY', 'COLLATERAL NAME', 'C TYPE', 'C MODEL', 'C MAKE', 'C SERIAL NYMEBNER', '6', 'Daily', 'Fri, 07 July 2017', 'Pending', ''),
(5, 'teacher', '1000000', 'FOR WEDDING CEREMONY', 'Eight Months', 'Yearly', 'OMOLOLU', 'FAMILY', '081789644', 'G ADDRESS', 'COUNTRY', 'c name', 'c type', 'C MOD', 'C MAKE', 'C SERIAL NYMEBNER', '700000', 'Monthly', 'Wed, 12 July 2017', 'Pending', ''),
(6, 'LIBRARIAN', '5000', 'jghhgh', 'One Month', 'Daily', 'hkuhkjh', 'hjkhj', 'hkjh', 'kjhkjhj', 'hjkhjkhjh', 'khhhj', 'hkhhj', 'hj', 'ghi890-9ookk', 'hhjhj', '35676543', 'Daily', 'Thu, 20 July 2017', 'Approved', ''),
(7, 'Mr. Segun', '50000', 'jkkj`', 'One Month', 'Daily', 'jghjgh', 'jh', 'jh', 'jhj', 'hkjh', 'jk', 'hjk', 'hjk', 'hkj', 'hjk', '6789', 'Daily', 'Mon, 17 July 2017', 'Pending', ''),
(8, 'hostel', '4000', 'purpoae', 'One Month', 'Daily', 'khkj', 'hjk', 'jkhjh', 'hjkh', 'hjkh', 'kjhj', 'hjk', 'kj', 'ljhkl', 'hjk', '67890', 'Daily', 'Tue, 18 July 2017', 'Pending', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `news_content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_title`, `date`, `news_content`) VALUES
(3, 'INFORMATION ABOUT OMOLOU ESTHER IS CORRECT THAT SHE LOVES SEGUN', '23:12:12 PM', 'MARO RARA SHE IS JUST PRETENDING OOOOO');

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `notice_id` int(11) NOT NULL,
  `notice_title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `notice` longtext COLLATE utf8_unicode_ci NOT NULL,
  `create_timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`notice_id`, `notice_title`, `notice`, `create_timestamp`) VALUES
(1, 'hi', 'today', 1495065600),
(2, 'Holiday', 'We are going on holidays soon', 1498867200);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `expense_category_id`, `title`, `payment_type`, `invoice_id`, `student_id`, `method`, `description`, `amount`, `timestamp`) VALUES
(1, 0, 'PAYMENT FOR SCHOOL FEES', 'income', 1, 5, '2', 'PAYMENT FOR SCHOOL FEES', '500000', '1499472000'),
(2, 5, 'PURCHASE OF SCHOOL CHALK', 'expense', 0, 0, '1', 'WE ARE HAVE JUST PURCHASE SCHOO CHALK NOW', '4000', '1499458620');

-- --------------------------------------------------------

--
-- Stand-in structure for view `popular_course_view`
-- (See below for the actual view)
--
CREATE TABLE `popular_course_view` (
`course_id` int(5)
,`course_name` varchar(50)
,`course_cat` varchar(100)
,`course_seat` int(11)
,`course_start_date` date
,`course_description` text
,`course_image` varchar(200)
,`first_term_fee` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `nick_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `name`, `nick_name`, `class_id`, `teacher_id`) VALUES
(1, 'FIRST', 'TERM', 1, 2),
(2, 'FIRST TERM', 'FIRST TERM', 2, 2),
(3, 'FIRST TERM', 'FIRST TERM', 3, 4),
(4, 'SECOND TERM', '2ND TERM', 3, 2),
(5, '2015-2016', 'Current Session', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `seminar`
--

CREATE TABLE `seminar` (
  `seminar_id` tinyint(5) UNSIGNED ZEROFILL NOT NULL,
  `seminar_name` varchar(100) NOT NULL,
  `seminar_maintainer` varchar(50) NOT NULL,
  `seminar_description` text NOT NULL,
  `seminar_location` varchar(100) NOT NULL,
  `seminar_date` date NOT NULL,
  `seminar_time` time NOT NULL,
  `seminar_end_time` time NOT NULL,
  `seminar_image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seminar`
--

INSERT INTO `seminar` (`seminar_id`, `seminar_name`, `seminar_maintainer`, `seminar_description`, `seminar_location`, `seminar_date`, `seminar_time`, `seminar_end_time`, `seminar_image`) VALUES
(00001, 'Science Fair', 'Md Yearul Islam', 'A science fair is a competitive event, hosted by schools worldwide. The distinguishing characteristic of a ', 'Dhaka, Science Lab', '2021-08-26', '10:00:00', '12:00:00', '3cdd7db2149554995ca05e279fc78036.jpg'),
(00002, 'Science Fair', 'Md Yearul Islam', 'A science fair is a competitive event, hosted by schools worldwide. The distinguishing characteristic of ', 'Dhaka, Science Lab', '2021-08-26', '10:00:00', '28:25:23', '3cdd7db2149554995ca05e279fc78036.jpg'),
(00004, 'Science Fair', 'Md Yearul Islam', 'A science fair is a competitive event, hosted by schools worldwide. The distinguishing characteristic of a science fair is that project entries  fdsfd', 'Dhaka, Science Lab', '2021-08-26', '10:00:00', '05:00:00', 'landscape-scene-of-forest-with-river-and-many-trees-free-vector (1).jpg'),
(00005, 'Science Fair', 'Md Yearul Islam', 'A science fair is a competitive event, hosted by schools worldwide. The distinguishing characteristic of a', 'Dhaka, Science Lab', '2021-08-26', '10:00:00', '00:00:00', '3cdd7db2149554995ca05e279fc78036.jpg'),
(00006, 'Biology Fair', 'Islam', 'A science fair is a competitive event, hosted by schools worldwide. The distinguishing characteristic of a science fair is that project entries employ the scientific method to test a hypothesis. ... Students present their science project results in the form of a report, display board, and/or models that they have created.', 'Dhaka, Science Lab', '2021-08-18', '10:00:00', '13:00:00', 'SkÃ¦rmbillede 2021-07-26 kl. 18.14.38.png'),
(00007, 'Biology Fair', 'Islam', 'A science fair is a competitive event, hosted by schools worldwide. The distinguishing characteristic of a science fair is that project entries employ the scientific method to test a hypothesis. ... Students present their science project results in the form of a report, display board, and/or models that they have created.', 'Dhaka, Science Lab', '2021-08-18', '10:00:00', '13:00:00', 'SkÃ¦rmbillede 2021-07-26 kl. 18.14.38.png'),
(00008, 'Biology Fair', 'Islam', 'A science fair is a competitive event, hosted by schools worldwide. The distinguishing characteristic of a science fair is that project entries employ the scientific method to test a hypothesis. ... Students present their science project results in the form of a report, display board, and/or models that they have created.', 'Dhaka, Science Lab', '2021-08-18', '10:00:00', '13:00:00', 'SkÃ¦rmbillede 2021-07-26 kl. 18.14.38.png'),
(00009, 'Biology Fair', 'Islam', 'A science fair is a competitive event, hosted by schools worldwide. The distinguishing characteristic of a science fair is that project entries employ the scientific method to test a hypothesis. ... Students present their science project results in the form of a report, display board, and/or models that they have created.', 'Dhaka, Science Lab', '2021-08-18', '10:00:00', '13:00:00', 'SkÃ¦rmbillede 2021-07-26 kl. 18.14.38.png'),
(00010, 'Biology Fair', 'Islam', 'A science fair is a competitive event, hosted by schools worldwide. The distinguishing characteristic of a science fair is that project entries employ the scientific method to test a hypothesis. ... Students present their science project results in the form of a report, display board, and/or models that they have created.', 'Dhaka, Science Lab', '2021-08-18', '10:00:00', '13:00:00', 'SkÃ¦rmbillede 2021-07-26 kl. 18.14.38.png'),
(00011, 'Biology Fair', 'Islam', 'A science fair is a competitive event, hosted by schools worldwide. The distinguishing characteristic of a science fair is that project entries employ the scientific method to test a hypothesis. ... Students present their science project results in the form of a report, display board, and/or models that they have created.', 'Dhaka, Science Lab', '2021-08-18', '10:00:00', '13:00:00', 'SkÃ¦rmbillede 2021-07-26 kl. 18.14.38.png'),
(00012, 'Biology Fair', 'Islam', 'A science fair is a competitive event, hosted by schools worldwide. The distinguishing characteristic of a science fair is that project entries employ the scientific method to test a hypothesis. ... Students present their science project results in the form of a report, display board, and/or models that they have created.', 'Dhaka, Science Lab', '2021-08-18', '10:00:00', '13:00:00', 'SkÃ¦rmbillede 2021-07-26 kl. 18.14.38.png'),
(00013, 'Biology Fair', 'Islam', 'A science fair is a competitive event, hosted by schools worldwide. The distinguishing characteristic of a science fair is that project entries employ the scientific method to test a hypothesis. ... Students present their science project results in the form of a report, display board, and/or models that they have created.', 'Dhaka, Science Lab', '2021-08-18', '10:00:00', '13:00:00', 'SkÃ¦rmbillede 2021-07-26 kl. 18.14.38.png'),
(00014, 'Biology Fair', 'Islam', 'A science fair is a competitive event, hosted by schools worldwide. The distinguishing characteristic of a science fair is that project entries employ the scientific method to test a hypothesis. ... Students present their science project results in the form of a report, display board, and/or models that they have created.', 'Dhaka, Science Lab', '2021-08-18', '10:00:00', '13:00:00', 'SkÃ¦rmbillede 2021-07-26 kl. 18.14.38.png'),
(00015, 'Biology Fair', 'Islam', 'A science fair is a competitive event, hosted by schools worldwide. The distinguishing characteristic of a science fair is that project entries employ the scientific method to test a hypothesis. ... Students present their science project results in the form of a report, display board, and/or models that they have created.', 'Dhaka, Science Lab', '2021-08-18', '10:00:00', '13:00:00', 'SkÃ¦rmbillede 2021-07-26 kl. 18.14.38.png');

-- --------------------------------------------------------

--
-- Table structure for table `seminar_registration`
--

CREATE TABLE `seminar_registration` (
  `std_reg_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `confirm_password` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seminar_registration`
--

INSERT INTO `seminar_registration` (`std_reg_id`, `fullname`, `username`, `email`, `phone`, `student_id`, `course_id`, `pass`, `confirm_password`, `image`) VALUES
(1, 'Nabil Islam', 'nislam', 'nabil@gmail.com', '151566556456', 4, 3, '123', '123', ''),
(2, 'Nabil Islam', 'islam', 'islamyearul@gmail.com', '151566556456', 3, 1, '123', '123', ''),
(3, 'Nabil Islam', 'islam', 'islamyearul@gmail.com', '151566556456', 3, 1, '123', '123', '11 # Ashraful Islam  PP Size Picture.jpg'),
(4, 'Nabil Islam', 'islam', 'islamyearul@gmail.com', '151566556456', 3, 1, '1236', '1236', '11 # Ashraful Islam  PP Size Picture.jpg'),
(5, 'Nabil Islam', 'islam', 'islamyearul@gmail.com', '151566556456', 3, 1, '123', '123', 'fhfh.png'),
(6, 'Nabil Islam', 'islam', 'islamyearul@gmail.com', '151566556456', 3, 1, '123', '123', 'fhfh.png'),
(7, 'Nabil Islam', 'islam', 'islamyearul@gmail.com', '151566556456', 3, 1, '123', '123', 'fhfh.png'),
(8, 'abc', 'abc', 'abc@abc.abc', '123456789', 1, 1, '1234', '1234', 'education-logo-design_1969752.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `session_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`session_id`, `name`) VALUES
(3, '2016-2017'),
(4, '2017-2018'),
(5, '2018-2019'),
(6, '2019-2020'),
(7, '2020-2021'),
(8, '2021-2022'),
(9, '2022-2023'),
(10, '2023-2024'),
(11, '2024-2025'),
(12, '2025-2026'),
(13, '2026-2027'),
(14, '2027-2028'),
(15, '2028-2029'),
(16, '2029-2030');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `std_id` int(10) UNSIGNED NOT NULL,
  `FullName` varchar(40) NOT NULL,
  `Gender` varchar(40) NOT NULL,
  `DOB` date NOT NULL,
  `Photo` varchar(40) DEFAULT NULL,
  `RegNo` varchar(40) NOT NULL,
  `Class` int(10) UNSIGNED NOT NULL,
  `AcademicYear` int(10) UNSIGNED NOT NULL,
  `TotalFees` int(10) UNSIGNED NOT NULL,
  `AdvanceFees` int(11) NOT NULL,
  `Balance` int(11) DEFAULT NULL,
  `Parent` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_information_view`
-- (See below for the actual view)
--
CREATE TABLE `student_information_view` (
`std_id` int(10) unsigned
,`FullName` varchar(40)
,`email` varchar(100)
,`phone` varchar(15)
,`Gender` varchar(40)
,`DOB` date
,`RegNo` varchar(40)
,`Class` int(10) unsigned
,`AcademicYear` int(10) unsigned
);

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `std_reg_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class` varchar(20) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `confirm_password` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`std_reg_id`, `fullname`, `username`, `email`, `phone`, `student_id`, `class`, `pass`, `confirm_password`, `image`) VALUES
(3, 'Nabil Islam', 'islam', 'islamyearul@gmail.com', '151566556456', 3, 'eight', '123', '123', '11 # Ashraful Islam  PP Size Picture.jpg'),
(4, 'Nabil Islam', 'islam', 'islamyearul@gmail.com', '151566556456', 3, 'seven', '1236', '1236', '11 # Ashraful Islam  PP Size Picture.jpg'),
(5, 'Nabil Islam', 'islam', 'islamyearul@gmail.com', '151566556456', 3, 'seven', '123', '123', 'fhfh.png'),
(6, 'Nabil Islam', 'islam', 'islamyearul@gmail.com', '151566556456', 3, 'six', '123', '123', 'fhfh.png'),
(7, 'Nabil Islam', 'islam', 'islamyearul@gmail.com', '151566556456', 4, 'kg', '123', '123', 'fhfh.png'),
(8, 'abc', 'abc', 'abc@abc.abc', '123456789', 1, 'eight', '1234', '1234', '11 # Ashraful Islam  PP Size Picture.jpg'),
(9, 'islam yearul', 'islamy', 'islamyearul@gmail.com', '151566556456', 9, 'eight', '123', '123', 'Yearul-PP-2-Pic-2020-2.jpg'),
(11, 'islam yearul', 'islamy', 'islamyearul@gmail.com', '151566556456', 9, '5', '123', '123', 'Yearul-PP-2-Pic-2020-2.jpg'),
(12, 'Nabil Islam', 'nislam', 'yearul@gmail.com', '151566556456', 2, 'seven', '123', '123', 'bablu.png');

-- --------------------------------------------------------

--
-- Table structure for table `stuff`
--

CREATE TABLE `stuff` (
  `stuff_id` tinyint(5) UNSIGNED ZEROFILL NOT NULL,
  `stuff_name` varchar(50) NOT NULL,
  `stuff_father` varchar(50) NOT NULL,
  `stuff_mother` varchar(50) NOT NULL,
  `stuff_email` varchar(100) NOT NULL,
  `stuff_post` varchar(50) NOT NULL,
  `stuff_mobile` tinyint(15) NOT NULL,
  `stuff_salary` tinyint(10) NOT NULL,
  `stuff_address` text NOT NULL,
  `stuff_gender` varchar(10) NOT NULL,
  `stuff_join_date` date NOT NULL,
  `stuff_password` varchar(150) NOT NULL,
  `stuff_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stuff`
--

INSERT INTO `stuff` (`stuff_id`, `stuff_name`, `stuff_father`, `stuff_mother`, `stuff_email`, `stuff_post`, `stuff_mobile`, `stuff_salary`, `stuff_address`, `stuff_gender`, `stuff_join_date`, `stuff_password`, `stuff_image`) VALUES
(00003, 'Masud', 'maissa', 'aturi begum', 'masud@gmail.com', 'Peon', 127, 127, 'dsfsdfsdfds', 'male', '2021-08-03', '1123', ''),
(00004, 'Masud', 'maissa', 'aturi begum', 'masud@gmail.com', 'Peon', 127, 127, 'dsfsdfsdfds', 'male', '2021-08-03', '1123', 'danial.png'),
(00005, 'Masud', 'maissa', 'aturi begum', 'masud@gmail.com', 'Peon', 127, 127, 'dsfsdfsdfds', 'male', '2021-08-03', '1123', 'danial.png'),
(00008, 'Masud', 'maissa', 'aturi begum', 'masud@gmail.com', 'Peon', 127, 127, 'dsfsdfsdfds', 'male', '2021-08-03', '1123', 'danial.png'),
(00009, 'Masud', 'maissa', 'aturi begum', 'masud@gmail.com', 'Peon', 127, 127, 'dsfsdfsdfds', 'male', '2021-08-03', '1123', 'danial.png'),
(00010, 'Masud', 'maissa', 'aturi begum', 'masud@gmail.com', 'Peon', 127, 127, 'dsfsdfsdfds', 'male', '2021-08-03', '1123', 'danial.png');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `class_id`, `teacher_id`) VALUES
(1, 'Mathematics', 6, 6),
(2, 'Economics', 2, 2),
(4, 'Social Studies', 2, 2),
(11, 'Social Science', 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teachers_id` int(20) NOT NULL,
  `teachers_name` varchar(50) NOT NULL,
  `teachers_email` varchar(100) NOT NULL,
  `teachers_mobile` tinyint(15) NOT NULL,
  `teachers_gender` varchar(10) NOT NULL,
  `teachers_joining_date` date NOT NULL,
  `teachers_subject` varchar(50) NOT NULL,
  `teachers_password` varchar(150) NOT NULL,
  `teachers_image` varchar(150) NOT NULL,
  `teachers_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teachers_id`, `teachers_name`, `teachers_email`, `teachers_mobile`, `teachers_gender`, `teachers_joining_date`, `teachers_subject`, `teachers_password`, `teachers_image`, `teachers_status`) VALUES
(3, 'Islam Yearul', 'islamyearul@gmail.com', 127, 'male', '2020-01-02', 'Botany', '202cb962ac59075b964b07152d234b70', '', 'Inactive'),
(4, 'Islam Yearul', 'islamyearul@gmail.com', 127, 'male', '2020-01-02', 'Botany', '202cb962ac59075b964b07152d234b70', 'roobon.png', 'Active'),
(5, 'Islam Yearul', 'islamyearul@gmail.com', 127, 'male', '2020-01-02', 'Botany', '123', 'Yearul-PP-2-Pic-2020-2.jpg', 'Active'),
(6, 'Islam Yearul', 'islamyearul@gmail.com', 127, 'male', '2020-01-02', 'Botany', '202cb962ac59075b964b07152d234b70', 'danial.png', 'Active'),
(7, 'Islam Yearul', 'islamyearul@gmail.com', 127, 'male', '2020-01-02', 'Botany', '123', 'Yearul-PP-2-Pic-2020-2.jpg', 'Inactive');

-- --------------------------------------------------------

--
-- Structure for view `course_view`
--
DROP TABLE IF EXISTS `course_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `course_view`  AS SELECT `cr`.`course_name` AS `course_name`, `cr`.`course_contact_person_name` AS `course_contact_person_name`, `ct`.`1st_sem_name` AS `1st_sem_name`, `fe`.`first_term_fee` AS `first_term_fee`, `ct`.`2nd_sem_name` AS `2nd_sem_name`, `fe`.`second_term_fee` AS `second_term_fee`, `ct`.`3rd_sem_name` AS `3rd_sem_name`, `fe`.`third_term_fee` AS `third_term_fee`, `ct`.`4th_sem_name` AS `4th_sem_name`, `fe`.`forth_term_fee` AS `forth_term_fee` FROM ((`courses` `cr` join `course_time_table` `ct` on(`cr`.`course_id` = `ct`.`course_id`)) join `course_process_fees` `fe` on(`cr`.`course_id` = `fe`.`course_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `image_gallery`
--
DROP TABLE IF EXISTS `image_gallery`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `image_gallery`  AS SELECT `add_event`.`file` AS `file`, `admin_info`.`user_image` AS `user_image`, `seminar`.`seminar_image` AS `seminar_image`, `students`.`Photo` AS `Photo` FROM (((`add_event` join `admin_info`) join `seminar`) join `students`) ;

-- --------------------------------------------------------

--
-- Structure for view `popular_course_view`
--
DROP TABLE IF EXISTS `popular_course_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `popular_course_view`  AS SELECT `cr`.`course_id` AS `course_id`, `cr`.`course_name` AS `course_name`, `cr`.`course_cat` AS `course_cat`, `cr`.`course_seat` AS `course_seat`, `cr`.`course_start_date` AS `course_start_date`, `cr`.`course_description` AS `course_description`, `cr`.`course_image` AS `course_image`, `cf`.`first_term_fee` AS `first_term_fee` FROM (`courses` `cr` join `course_process_fees` `cf`) WHERE `cr`.`course_id` = `cf`.`course_id` ;

-- --------------------------------------------------------

--
-- Structure for view `student_information_view`
--
DROP TABLE IF EXISTS `student_information_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_information_view`  AS SELECT `students`.`std_id` AS `std_id`, `students`.`FullName` AS `FullName`, `student_registration`.`email` AS `email`, `student_registration`.`phone` AS `phone`, `students`.`Gender` AS `Gender`, `students`.`DOB` AS `DOB`, `students`.`RegNo` AS `RegNo`, `students`.`Class` AS `Class`, `students`.`AcademicYear` AS `AcademicYear` FROM (`students` join `student_registration`) WHERE `students`.`std_id` = `student_registration`.`student_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_event`
--
ALTER TABLE `add_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission_request`
--
ALTER TABLE `admission_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_class_fees_table`
--
ALTER TABLE `all_class_fees_table`
  ADD PRIMARY KEY (`all_class_fees_id`),
  ADD UNIQUE KEY `class` (`class`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `apply_course`
--
ALTER TABLE `apply_course`
  ADD PRIMARY KEY (`apply_course_id`);

--
-- Indexes for table `at_add_attendance`
--
ALTER TABLE `at_add_attendance`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`),
  ADD UNIQUE KEY `name` (`name`) USING HASH,
  ADD UNIQUE KEY `name_numeric` (`name_numeric`) USING HASH;

--
-- Indexes for table `class_routine`
--
ALTER TABLE `class_routine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `course_name` (`course_name`);
ALTER TABLE `courses` ADD FULLTEXT KEY `course_description` (`course_description`);

--
-- Indexes for table `course_category`
--
ALTER TABLE `course_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `course_process_fees`
--
ALTER TABLE `course_process_fees`
  ADD PRIMARY KEY (`course_fees_id`);

--
-- Indexes for table `course_time_table`
--
ALTER TABLE `course_time_table`
  ADD PRIMARY KEY (`course_time_id`);

--
-- Indexes for table `examquestion`
--
ALTER TABLE `examquestion`
  ADD PRIMARY KEY (`examquestion_id`);

--
-- Indexes for table `exam_all`
--
ALTER TABLE `exam_all`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `exam_all_trash`
--
ALTER TABLE `exam_all_trash`
  ADD PRIMARY KEY (`trash_id`);

--
-- Indexes for table `exam_marks`
--
ALTER TABLE `exam_marks`
  ADD PRIMARY KEY (`mark_id`);

--
-- Indexes for table `feescollection`
--
ALTER TABLE `feescollection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Student` (`student_id`),
  ADD KEY `Session` (`Session`);

--
-- Indexes for table `get_in_touch`
--
ALTER TABLE `get_in_touch`
  ADD PRIMARY KEY (`gt_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indexes for table `job_anounce`
--
ALTER TABLE `job_anounce`
  ADD PRIMARY KEY (`job_announce_id`),
  ADD KEY `job_post_name` (`job_post_name`);
ALTER TABLE `job_anounce` ADD FULLTEXT KEY `job_description` (`job_description`);
ALTER TABLE `job_anounce` ADD FULLTEXT KEY `job_description_2` (`job_description`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `seminar`
--
ALTER TABLE `seminar`
  ADD PRIMARY KEY (`seminar_id`);

--
-- Indexes for table `seminar_registration`
--
ALTER TABLE `seminar_registration`
  ADD PRIMARY KEY (`std_reg_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `name` (`name`) USING HASH;

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`std_id`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`std_reg_id`);

--
-- Indexes for table `stuff`
--
ALTER TABLE `stuff`
  ADD PRIMARY KEY (`stuff_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teachers_id`);
ALTER TABLE `teachers` ADD FULLTEXT KEY `teachers_name` (`teachers_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_event`
--
ALTER TABLE `add_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `admission_request`
--
ALTER TABLE `admission_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `all_class_fees_table`
--
ALTER TABLE `all_class_fees_table`
  MODIFY `all_class_fees_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `apply_course`
--
ALTER TABLE `apply_course`
  MODIFY `apply_course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `at_add_attendance`
--
ALTER TABLE `at_add_attendance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `class_routine`
--
ALTER TABLE `class_routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `course_category`
--
ALTER TABLE `course_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `course_process_fees`
--
ALTER TABLE `course_process_fees`
  MODIFY `course_fees_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `course_time_table`
--
ALTER TABLE `course_time_table`
  MODIFY `course_time_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `examquestion`
--
ALTER TABLE `examquestion`
  MODIFY `examquestion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `exam_all`
--
ALTER TABLE `exam_all`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `exam_all_trash`
--
ALTER TABLE `exam_all_trash`
  MODIFY `trash_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_marks`
--
ALTER TABLE `exam_marks`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `feescollection`
--
ALTER TABLE `feescollection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `get_in_touch`
--
ALTER TABLE `get_in_touch`
  MODIFY `gt_id` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job_anounce`
--
ALTER TABLE `job_anounce`
  MODIFY `job_announce_id` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seminar`
--
ALTER TABLE `seminar`
  MODIFY `seminar_id` tinyint(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `seminar_registration`
--
ALTER TABLE `seminar_registration`
  MODIFY `std_reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `std_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `std_reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stuff`
--
ALTER TABLE `stuff`
  MODIFY `stuff_id` tinyint(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teachers_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `testing`
--
CREATE DATABASE IF NOT EXISTS `testing` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `testing`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `username` varchar(512) NOT NULL,
  `password` varchar(512) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `to_do_list`
--
CREATE DATABASE IF NOT EXISTS `to_do_list` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `to_do_list`;

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `id` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`id`, `message`, `created_at`) VALUES
(9, 'n mmm', '2022/19/1 | 11 : 35 : 14'),
(10, 'eat', '2022/19/1 | 13 : 49 : 50'),
(11, 'sleep', '2022/19/1 | 13 : 49 : 58'),
(12, 'code', '2022/19/1 | 13 : 50 : 6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Database: `userform`
--
CREATE DATABASE IF NOT EXISTS `userform` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `userform`;

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `name`, `email`, `password`, `code`, `status`) VALUES
(1, 'Omosanya Olamilekan', 'olamilekanomosanya@gmail.com', '$2y$10$gapNCaA/UZ1TPBAMnnarTOY2s/Tby8oH3LLI0F5MjYvNaVlddHEGG', 416384, 'notverified'),
(2, 'Omosanya Olamilekan', 'Olamilekan1312@gmail.com', '$2y$10$hR12c5LrCcrZJhUVAHY/2e6Fa9UoTmDK3ESWbz/A26dDsWyz8HC/q', 0, 'verified');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
