-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2020 at 03:04 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kues`
--

-- --------------------------------------------------------

--
-- Table structure for table `hasils`
--

CREATE TABLE `hasils` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_y` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_t` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuis`
--

CREATE TABLE `kuis` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuisioner`
--

CREATE TABLE `kuisioner` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuis_a`
--

CREATE TABLE `kuis_a` (
  `id` int(10) UNSIGNED NOT NULL,
  `pertanyaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuis_a`
--

INSERT INTO `kuis_a` (`id`, `pertanyaan`, `created_at`, `updated_at`) VALUES
(1, 'Saya pergi keluar rumah', '2020-04-15 17:02:59', '2020-04-15 17:02:59'),
(2, 'Saya menggunakan tranportasi umum :online, angkot, kereta, bus, taksi', '2020-04-15 17:03:05', '2020-04-15 17:03:05'),
(3, 'Saya tidak memakai masker saat kumpul dengan orang lain', '2020-04-15 17:03:13', '2020-04-15 17:03:13'),
(4, 'Saya berjabat tangan dengan orang lain', '2020-04-15 17:03:20', '2020-04-15 17:03:20'),
(5, 'Saya tidak membersihkan tangan dengan Hand sanitizer/tissue basah sebelum pegang kemudi mobil/motor', '2020-04-15 17:03:28', '2020-04-15 17:03:28'),
(6, 'Saya Menyentuh benda/uang yang juga di sentuh orang lain', '2020-04-15 17:03:40', '2020-04-15 17:03:40'),
(7, 'Saya tidak menjaga jarak 1,5 meter dengan orang lain ketika: ibadah, belanja, bekerja, belajar', '2020-04-15 17:03:57', '2020-04-15 17:03:57'),
(8, 'Saya makan diluar rumah (warung/restoran)', '2020-04-15 17:04:12', '2020-04-15 17:04:12'),
(9, 'Saya tidak minum air hangat & mencuci tangan dengan sabun setelah setelah tiba di tujuan', '2020-04-15 17:04:29', '2020-04-15 17:04:29'),
(10, 'Saya berada di wilayah kelurahan tempat pasien tertular', '2020-04-15 17:04:42', '2020-04-15 17:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `kuis_b`
--

CREATE TABLE `kuis_b` (
  `id` int(10) UNSIGNED NOT NULL,
  `pertanyaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuis_b`
--

INSERT INTO `kuis_b` (`id`, `pertanyaan`, `created_at`, `updated_at`) VALUES
(1, 'Saya tidak pasang hand sanitizer di depan pintu masuk, untuk bersihkan tangan sebelum gagang (handle) pintu masuk rumah', '2020-04-15 17:05:02', '2020-04-15 17:05:02'),
(2, 'saya tidak mencuci tangan dengan sabun setelah tiba dirumah', '2020-04-15 17:05:26', '2020-04-15 17:05:26'),
(3, 'Saya tidak menyediakan: tissue basah/ antiseptic, masker, sabun antiseptic bagi keluarga dirumah', '2020-04-15 17:05:44', '2020-04-15 17:05:44'),
(4, 'Saya tidak segera merendam baju dan celana bekas pakai di luar rumah kedalam air panas/sabun', '2020-04-15 17:06:15', '2020-04-15 17:06:15'),
(5, 'Saya tidak segera mandi keramas setelah saya tiba dirumah', '2020-04-15 17:06:34', '2020-04-15 17:06:34'),
(6, 'Saya tidak mensosialisasikan check list penilaian resiko pribadi kepada keluarga di rumah', '2020-04-15 17:06:57', '2020-04-15 17:06:57');

-- --------------------------------------------------------

--
-- Table structure for table `kuis_c`
--

CREATE TABLE `kuis_c` (
  `id` int(10) UNSIGNED NOT NULL,
  `pertanyaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuis_c`
--

INSERT INTO `kuis_c` (`id`, `pertanyaan`, `created_at`, `updated_at`) VALUES
(1, 'Saya dalam sehari tidak kena cahaya matahari minimal 15 menit', '2020-04-15 17:07:16', '2020-04-15 17:07:16'),
(2, 'Saya tidak jalan kaki / berolah raga minimal 30 menit sehari', '2020-04-15 17:07:29', '2020-04-15 17:07:29'),
(3, 'Saya jarang minum vitamin C & E , dan kurang tidur', '2020-04-15 17:08:19', '2020-04-15 17:08:19'),
(4, 'Usia saya diatas 60 tahun', '2020-04-15 17:08:31', '2020-04-15 17:08:31'),
(5, 'Saya mempunyai penyakit: jantung / diabetes / gangguan pernapasan kronik', '2020-04-15 17:08:40', '2020-04-15 17:08:40');

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
(3, '2020_04_14_183103_create_kuis_a_table', 1),
(4, '2020_04_15_020207_create_kuis_b_table', 1),
(5, '2020_04_15_142315_create_input_table', 1),
(6, '2020_04_15_174407_create_kuis_c_table', 1),
(7, '2020_04_15_191759_create_kuisioner_table', 1),
(8, '2020_04_15_212614_create_kuis_table', 2),
(9, '2020_04_15_215823_create_hasils_table', 3);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hasils`
--
ALTER TABLE `hasils`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuis`
--
ALTER TABLE `kuis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuisioner`
--
ALTER TABLE `kuisioner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuis_a`
--
ALTER TABLE `kuis_a`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuis_b`
--
ALTER TABLE `kuis_b`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuis_c`
--
ALTER TABLE `kuis_c`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hasils`
--
ALTER TABLE `hasils`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kuis`
--
ALTER TABLE `kuis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kuisioner`
--
ALTER TABLE `kuisioner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kuis_a`
--
ALTER TABLE `kuis_a`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kuis_b`
--
ALTER TABLE `kuis_b`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kuis_c`
--
ALTER TABLE `kuis_c`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
