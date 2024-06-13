-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2024 at 05:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-dicoba`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kriterias`
--

CREATE TABLE `kriterias` (
  `kode` varchar(11) NOT NULL,
  `namakriteria` varchar(50) NOT NULL,
  `atribut` enum('Benefit','Cost') NOT NULL,
  `bobot` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kriterias`
--

INSERT INTO `kriterias` (`kode`, `namakriteria`, `atribut`, `bobot`, `created_at`, `updated_at`) VALUES
('C1', 'IPK', 'Benefit', 0.2, NULL, NULL),
('C2', 'Disiplin', 'Benefit', 0.2, NULL, NULL),
('C3', 'Absen Kehadiran', 'Benefit', 0.2, NULL, NULL),
('C4', 'Keaktifan organisasi', 'Benefit', 0.2, NULL, NULL),
('C5', 'pengalaman kompetisi', 'Benefit', 0.1, NULL, NULL),
('C6', 'sikap', 'Benefit', 0.1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `matrikternormalisasi`
--

CREATE TABLE `matrikternormalisasi` (
  `id` int(11) NOT NULL,
  `id_alternatif` varchar(50) NOT NULL,
  `id_kriteria` varchar(50) NOT NULL,
  `bobot` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matrikternormalisasi`
--

INSERT INTO `matrikternormalisasi` (`id`, `id_alternatif`, `id_kriteria`, `bobot`) VALUES
(4003, '22090011', 'C1', '0.75'),
(4004, '22090011', 'C2', '0.83'),
(4005, '22090011', 'C3', '1'),
(4006, '22090011', 'C4', '0.83'),
(4007, '22090011', 'C5', '1'),
(4008, '22090011', 'C6', '0.78'),
(4009, '22090062', 'C1', '1'),
(4010, '22090062', 'C2', '0.67'),
(4011, '22090062', 'C3', '0.8'),
(4012, '22090062', 'C4', '0.67'),
(4013, '22090062', 'C5', '0.67'),
(4014, '22090062', 'C6', '1'),
(4015, '22090134', 'C1', '0.75'),
(4016, '22090134', 'C2', '1'),
(4017, '22090134', 'C3', '0.5'),
(4018, '22090134', 'C4', '1'),
(4019, '22090134', 'C5', '0.78'),
(4020, '22090134', 'C6', '0.89'),
(4021, '22090162', 'C1', '0.75'),
(4022, '22090162', 'C2', '0.67'),
(4023, '22090162', 'C3', '0.7'),
(4024, '22090162', 'C4', '0.5'),
(4025, '22090162', 'C5', '0.56'),
(4026, '22090162', 'C6', '0.67'),
(4027, '22090190', 'C1', '1'),
(4028, '22090190', 'C2', '0.83'),
(4029, '22090190', 'C3', '0.9'),
(4030, '22090190', 'C4', '0.83'),
(4031, '22090190', 'C5', '0.89'),
(4032, '22090190', 'C6', '0.89'),
(4033, '22090234', 'C1', '0.75'),
(4034, '22090234', 'C2', '1'),
(4035, '22090234', 'C3', '0.7'),
(4036, '22090234', 'C4', '0.83'),
(4037, '22090234', 'C5', '0.67'),
(4038, '22090234', 'C6', '1');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(23, '2014_10_12_000000_create_users_table', 1),
(24, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(25, '2019_08_19_000000_create_failed_jobs_table', 1),
(26, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(27, '2023_07_27_083111_create_siswas_table', 1),
(28, '2023_07_27_083424_create_kriterias_table', 1),
(29, '2023_07_27_084213_create_subs_table', 1),
(30, '2023_07_28_093209_create_penilaian_table', 1),
(31, '2023_08_04_025415_add_role_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nilaireferensi`
--

CREATE TABLE `nilaireferensi` (
  `id` int(11) NOT NULL,
  `id_alternatif` varchar(50) NOT NULL,
  `id_kriteria` varchar(50) NOT NULL,
  `bobot` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilaireferensi`
--

INSERT INTO `nilaireferensi` (`id`, `id_alternatif`, `id_kriteria`, `bobot`) VALUES
(3963, '22090011', 'C1', '0.15'),
(3964, '22090011', 'C2', '0.17'),
(3965, '22090011', 'C3', '0.2'),
(3966, '22090011', 'C4', '0.17'),
(3967, '22090011', 'C5', '0.1'),
(3968, '22090011', 'C6', '0.08'),
(3969, '22090062', 'C1', '0.2'),
(3970, '22090062', 'C2', '0.13'),
(3971, '22090062', 'C3', '0.16'),
(3972, '22090062', 'C4', '0.13'),
(3973, '22090062', 'C5', '0.07'),
(3974, '22090062', 'C6', '0.1'),
(3975, '22090134', 'C1', '0.15'),
(3976, '22090134', 'C2', '0.2'),
(3977, '22090134', 'C3', '0.1'),
(3978, '22090134', 'C4', '0.2'),
(3979, '22090134', 'C5', '0.08'),
(3980, '22090134', 'C6', '0.09'),
(3981, '22090162', 'C1', '0.15'),
(3982, '22090162', 'C2', '0.13'),
(3983, '22090162', 'C3', '0.14'),
(3984, '22090162', 'C4', '0.1'),
(3985, '22090162', 'C5', '0.06'),
(3986, '22090162', 'C6', '0.07'),
(3987, '22090190', 'C1', '0.2'),
(3988, '22090190', 'C2', '0.17'),
(3989, '22090190', 'C3', '0.18'),
(3990, '22090190', 'C4', '0.17'),
(3991, '22090190', 'C5', '0.09'),
(3992, '22090190', 'C6', '0.09'),
(3993, '22090234', 'C1', '0.15'),
(3994, '22090234', 'C2', '0.2'),
(3995, '22090234', 'C3', '0.14'),
(3996, '22090234', 'C4', '0.17'),
(3997, '22090234', 'C5', '0.07'),
(3998, '22090234', 'C6', '0.1');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('ezzdarkrap@gmail.com', '$2y$12$Nwqc8PsBJTwkuP4qXiaFQOjNpf7EQwhtLtWdIE8sgs2rSKXjLzLmS', '2024-05-26 23:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `penilaians`
--

CREATE TABLE `penilaians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` varchar(11) NOT NULL,
  `nilai` varchar(50) NOT NULL,
  `id_sub` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penilaians`
--

INSERT INTO `penilaians` (`id`, `id_alternatif`, `id_kriteria`, `nilai`, `id_sub`, `created_at`, `updated_at`) VALUES
(416, 22090011, 'C1', 'cukup baik', 73, '2024-05-31 01:32:14', '2024-05-31 01:32:14'),
(417, 22090011, 'C2', 'sangat baik', 75, '2024-05-31 01:32:14', '2024-05-31 01:32:14'),
(418, 22090011, 'C3', '100', 74, '2024-05-31 01:32:14', '2024-05-31 01:32:14'),
(419, 22090011, 'C4', '70', 88, '2024-05-31 01:32:14', '2024-05-31 01:32:14'),
(420, 22090011, 'C5', '100', 91, '2024-05-31 01:32:14', '2024-05-31 01:32:14'),
(421, 22090011, 'C6', 'baik', 97, '2024-05-31 01:32:14', '2024-05-31 01:32:14'),
(428, 22090062, 'C1', 'terbaik', 72, '2024-05-31 01:37:19', '2024-05-31 01:37:19'),
(429, 22090062, 'C2', 'cukup baik', 79, '2024-05-31 01:37:19', '2024-05-31 01:37:19'),
(430, 22090062, 'C3', '70', 84, '2024-05-31 01:37:19', '2024-05-31 01:37:19'),
(431, 22090062, 'C4', '70', 89, '2024-05-31 01:37:19', '2024-05-31 01:37:19'),
(432, 22090062, 'C5', '85', 94, '2024-05-31 01:37:19', '2024-05-31 01:37:19'),
(433, 22090062, 'C6', 'sangat baik', 95, '2024-05-31 01:37:19', '2024-05-31 01:37:19'),
(434, 22090134, 'C1', 'cukup baik', 73, '2024-05-31 01:39:58', '2024-05-31 01:39:58'),
(435, 22090134, 'C2', 'luar biasa', 99, '2024-05-31 01:39:58', '2024-05-31 01:39:58'),
(436, 22090134, 'C3', '50', 86, '2024-05-31 01:39:58', '2024-05-31 01:39:58'),
(437, 22090134, 'C4', '90', 87, '2024-05-31 01:39:58', '2024-05-31 01:39:58'),
(438, 22090134, 'C5', '90', 93, '2024-05-31 01:39:58', '2024-05-31 01:39:58'),
(439, 22090134, 'C6', 'cukup baik', 96, '2024-05-31 01:39:58', '2024-05-31 01:39:58'),
(440, 22090162, 'C1', 'cukup baik', 73, '2024-05-31 01:43:04', '2024-05-31 01:43:04'),
(441, 22090162, 'C2', 'cukup baik', 79, '2024-05-31 01:43:05', '2024-05-31 01:43:05'),
(442, 22090162, 'C3', '60', 85, '2024-05-31 01:43:05', '2024-05-31 01:43:05'),
(443, 22090162, 'C4', '60', 90, '2024-05-31 01:43:05', '2024-05-31 01:43:05'),
(444, 22090162, 'C5', '80', 101, '2024-05-31 01:43:05', '2024-05-31 01:43:05'),
(445, 22090162, 'C6', 'buruk', 98, '2024-05-31 01:43:05', '2024-05-31 01:43:05'),
(446, 22090190, 'C1', 'terbaik', 72, '2024-05-31 01:45:12', '2024-05-31 01:45:12'),
(447, 22090190, 'C2', 'sangat baik', 75, '2024-05-31 01:45:12', '2024-05-31 01:45:12'),
(448, 22090190, 'C3', '80', 83, '2024-05-31 01:45:12', '2024-05-31 01:45:12'),
(449, 22090190, 'C4', '80', 88, '2024-05-31 01:45:12', '2024-05-31 01:45:12'),
(450, 22090190, 'C5', '95', 92, '2024-05-31 01:45:12', '2024-05-31 01:45:12'),
(451, 22090190, 'C6', 'cukup baik', 96, '2024-05-31 01:45:12', '2024-05-31 01:45:12'),
(452, 22090234, 'C1', 'cukup baik', 73, '2024-05-31 01:47:26', '2024-05-31 01:47:26'),
(453, 22090234, 'C2', 'luar biasa', 99, '2024-05-31 01:47:26', '2024-05-31 01:47:26'),
(454, 22090234, 'C3', '60', 85, '2024-05-31 01:47:26', '2024-05-31 01:47:26'),
(455, 22090234, 'C4', '80', 88, '2024-05-31 01:47:26', '2024-05-31 01:47:26'),
(456, 22090234, 'C5', '85', 94, '2024-05-31 01:47:26', '2024-05-31 01:47:26'),
(457, 22090234, 'C6', 'sangat baik', 95, '2024-05-31 01:47:26', '2024-05-31 01:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ranking`
--

CREATE TABLE `ranking` (
  `id` int(11) NOT NULL,
  `id_alternatif` varchar(50) NOT NULL,
  `bobot` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ranking`
--

INSERT INTO `ranking` (`id`, `id_alternatif`, `bobot`) VALUES
(1080, '22090011', '0.87'),
(1081, '22090062', '0.79'),
(1082, '22090134', '0.82'),
(1083, '22090162', '0.65'),
(1084, '22090190', '0.9'),
(1085, '22090234', '0.83');

-- --------------------------------------------------------

--
-- Table structure for table `ratingkecocokan`
--

CREATE TABLE `ratingkecocokan` (
  `id` int(11) NOT NULL,
  `id_alternatif` varchar(50) NOT NULL,
  `id_kriteria` varchar(10) NOT NULL,
  `bobot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratingkecocokan`
--

INSERT INTO `ratingkecocokan` (`id`, `id_alternatif`, `id_kriteria`, `bobot`) VALUES
(4014, '22090011', 'C1', 3),
(4015, '22090011', 'C2', 5),
(4016, '22090011', 'C3', 10),
(4017, '22090011', 'C4', 5),
(4018, '22090011', 'C5', 9),
(4019, '22090011', 'C6', 7),
(4020, '22090062', 'C1', 4),
(4021, '22090062', 'C2', 4),
(4022, '22090062', 'C3', 8),
(4023, '22090062', 'C4', 4),
(4024, '22090062', 'C5', 6),
(4025, '22090062', 'C6', 9),
(4026, '22090134', 'C1', 3),
(4027, '22090134', 'C2', 6),
(4028, '22090134', 'C3', 5),
(4029, '22090134', 'C4', 6),
(4030, '22090134', 'C5', 7),
(4031, '22090134', 'C6', 8),
(4032, '22090162', 'C1', 3),
(4033, '22090162', 'C2', 4),
(4034, '22090162', 'C3', 7),
(4035, '22090162', 'C4', 3),
(4036, '22090162', 'C5', 5),
(4037, '22090162', 'C6', 6),
(4038, '22090190', 'C1', 4),
(4039, '22090190', 'C2', 5),
(4040, '22090190', 'C3', 9),
(4041, '22090190', 'C4', 5),
(4042, '22090190', 'C5', 8),
(4043, '22090190', 'C6', 8),
(4044, '22090234', 'C1', 3),
(4045, '22090234', 'C2', 6),
(4046, '22090234', 'C3', 7),
(4047, '22090234', 'C4', 5),
(4048, '22090234', 'C5', 6),
(4049, '22090234', 'C6', 9);

-- --------------------------------------------------------

--
-- Table structure for table `siswas`
--

CREATE TABLE `siswas` (
  `nisn` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `lahir` date NOT NULL,
  `jeniskelamin` enum('Laki-laki','perempuan') NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswas`
--

INSERT INTO `siswas` (`nisn`, `nama`, `tempat`, `lahir`, `jeniskelamin`, `jurusan`, `created_at`, `updated_at`) VALUES
(22090011, 'Muhammad Dani', 'Tegal', '2002-06-04', 'Laki-laki', 'Teknik Elektro', NULL, NULL),
(22090062, 'fatur', 'jakarta', '2024-05-15', 'Laki-laki', 'Akuntansi', NULL, NULL),
(22090134, 'Siska', 'Brebes', '2004-05-20', 'perempuan', 'Informatika', NULL, NULL),
(22090162, 'Fathur Rizqi Putra Pratama', 'Tegal', '2003-08-08', 'Laki-laki', 'Informatika', NULL, NULL),
(22090190, 'Rizal Pratama', 'Tegal', '2024-05-02', 'Laki-laki', 'Teknik Mesin', NULL, NULL),
(22090234, 'Farah', 'slawi', '2003-07-16', 'perempuan', 'Akuntansi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subs`
--

CREATE TABLE `subs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_id` varchar(11) NOT NULL,
  `desc` varchar(50) NOT NULL,
  `nilaiawal` varchar(50) DEFAULT NULL,
  `nilaiakhir` varchar(50) DEFAULT NULL,
  `bobot` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subs`
--

INSERT INTO `subs` (`id`, `kode_id`, `desc`, `nilaiawal`, `nilaiakhir`, `bobot`, `created_at`, `updated_at`) VALUES
(72, 'C1', 'terbaik', 'terbaik', 'terbaik', 4, '2024-05-22 18:47:19', '2024-05-24 16:42:05'),
(73, 'C1', 'cukup baik', 'cukup baik', 'cukup baik', 3, '2024-05-22 22:42:24', '2024-05-24 16:42:35'),
(74, 'C3', '90 - 100', '90', '100', 10, '2024-05-22 22:43:43', '2024-05-30 05:07:12'),
(75, 'C2', 'sangat baik', 'sangat baik', 'sangat baik', 5, '2024-05-22 22:45:19', '2024-05-24 16:44:59'),
(76, 'C1', 'cukup', 'cukup', 'cukup', 2, '2024-05-22 22:49:13', '2024-05-24 16:43:08'),
(77, 'C1', 'sangat kurang', 'sangat kurang', 'sangat kurang', 1, '2024-05-22 22:49:46', '2024-05-24 16:43:43'),
(79, 'C2', 'cukup baik', 'cukup baik', 'cukup baik', 4, '2024-05-23 16:13:54', '2024-05-24 16:45:48'),
(80, 'C2', 'cukup', 'cukup', 'cukup', 3, '2024-05-23 16:14:40', '2024-05-24 16:46:13'),
(81, 'C2', 'kurang baik', 'kurang baik', 'kurang baik', 2, '2024-05-23 16:15:25', '2024-05-24 16:46:46'),
(82, 'C2', 'sangat buruk', 'sangat buruk', 'sangat buruk', 1, '2024-05-23 16:16:41', '2024-05-24 16:47:11'),
(83, 'C3', '80 - 90', '80', '90', 9, '2024-05-24 16:54:16', '2024-05-30 05:07:20'),
(84, 'C3', '70 - 80', '70', '80', 8, '2024-05-24 16:54:46', '2024-05-30 05:07:28'),
(85, 'C3', '60 - 70', '60', '70', 7, '2024-05-24 16:55:22', '2024-05-30 05:07:37'),
(86, 'C3', '<50', '0', '50', 5, '2024-05-24 16:55:47', '2024-05-30 05:07:44'),
(87, 'C4', 'presiden', '90', '90', 6, '2024-05-24 16:57:06', '2024-05-31 01:36:13'),
(88, 'C4', 'wakil presiden', '80', '80', 5, '2024-05-24 16:57:59', '2024-05-31 01:36:23'),
(89, 'C4', 'seksi organisasi', '70', '70', 4, '2024-05-24 16:58:58', '2024-05-31 01:36:32'),
(90, 'C4', 'anggota', '60', '60', 3, '2024-05-24 16:59:45', '2024-05-31 01:36:45'),
(91, 'C5', 'kompetisi universitas', '100', '100', 9, '2024-05-24 17:01:10', '2024-05-31 01:17:32'),
(92, 'C5', 'kompetisi provinsi', '95', '95', 8, '2024-05-24 17:02:23', '2024-05-31 01:17:57'),
(93, 'C5', 'kompetisi kecamatan', '90', '90', 7, '2024-05-24 17:03:24', '2024-05-31 01:18:35'),
(94, 'C5', 'kompetisi desa', '85', '85', 6, '2024-05-24 17:04:31', '2024-05-31 01:19:01'),
(95, 'C6', 'sangat baik', 'sangat baik', 'sangat baik', 9, '2024-05-24 17:05:18', '2024-05-31 01:21:43'),
(96, 'C6', 'cukup baik', 'cukup baik', 'cukup baik', 8, '2024-05-24 17:05:43', '2024-05-31 01:21:50'),
(97, 'C6', 'baik', 'baik', 'baik', 7, '2024-05-24 17:06:07', '2024-05-31 01:21:58'),
(98, 'C6', 'buruk', 'buruk', 'buruk', 6, '2024-05-24 17:06:42', '2024-05-31 01:22:14'),
(99, 'C2', 'luar biasa', 'luar biasa', 'luar biasa', 6, '2024-05-30 05:04:44', '2024-05-30 05:05:17'),
(101, 'C5', 'mengikuti Kompetisi', '80', '80', 5, '2024-05-31 01:20:38', '2024-05-31 01:20:38'),
(102, 'C5', 'mengikuti Kompetisi', '70', '70', 5, '2024-05-31 01:20:39', '2024-05-31 01:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(2, 'haris', 'ristwn25@gmail.com', NULL, '$2y$10$07scozsmsmbbzIN6Cv/hDuxBvZOhNBh1SYRXCf/z15j5hzUwRHAGK', NULL, '2023-08-03 10:00:54', '2023-08-03 10:00:54', 'admin'),
(8, 'Test', 'test@example.com', NULL, '$2y$12$UFFrHaM8tu24hFWso0Ca8eGKAmDNm0rHxN6GhEsVre8WZuwk2vGCm', NULL, NULL, NULL, 'admin'),
(11, 'junet', 'junet@gmail.com', NULL, '$2y$10$V6FZamiVDIkm307NuFFy/OevCTrFOgZx4glKnwC0GqNQamR9JlU1q', 'yXPIVvSzhD0sxyTi2g5N0lycjXeMkiNAuDFdLoCSwn1k5QaepsBDclDe2ovj', '2023-08-05 04:16:41', '2023-08-05 04:16:41', 'user'),
(12, 'fatur1', 'ezzdarkrap@gmail.com', NULL, '$2y$12$ieRG34s2koGRhy3JcA/KW.nguEl0beoo5a1sIDWf4D8Zu6D4y6vGW', NULL, '2024-05-18 01:34:52', '2024-05-18 01:34:52', 'admin'),
(13, 'admin', 'admin@gmail.com', NULL, '123456', NULL, NULL, NULL, 'admin'),
(14, 'yamin', 'yamin@gmail.com', NULL, '$2y$12$iFlOnRd8OFzcCT.kxYEla.I2RRo/lWT2jhGjJxC0x4RU.raH/JhKK', NULL, NULL, NULL, 'admin'),
(15, 'kiki', 'rizkiekamulyani123@gmail.com', NULL, '$2y$12$VGsHWvoC66nMwgrkmIfdzOqeKbwtsLiAva2UqiglRVbmS91QALgfq', NULL, NULL, NULL, 'admin'),
(17, 'user', 'ezzdarkrap1@gmail.com', NULL, '$2y$12$cYo83G0tAVbQOyrvfMmwYeRona01XL5OpTGpA5k8BjmVOxhbqyjXS', NULL, '2024-05-27 20:11:58', '2024-05-27 20:11:58', 'admin');

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
-- Indexes for table `kriterias`
--
ALTER TABLE `kriterias`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `matrikternormalisasi`
--
ALTER TABLE `matrikternormalisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilaireferensi`
--
ALTER TABLE `nilaireferensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `penilaians`
--
ALTER TABLE `penilaians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penilaians_id_alternatif_foreign` (`id_alternatif`),
  ADD KEY `penilaians_id_kriteria_foreign` (`id_kriteria`),
  ADD KEY `penilaians_id_sub_foreign` (`id_sub`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratingkecocokan`
--
ALTER TABLE `ratingkecocokan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `subs`
--
ALTER TABLE `subs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subs_kode_id_foreign` (`kode_id`);

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
-- AUTO_INCREMENT for table `matrikternormalisasi`
--
ALTER TABLE `matrikternormalisasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4039;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `nilaireferensi`
--
ALTER TABLE `nilaireferensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3999;

--
-- AUTO_INCREMENT for table `penilaians`
--
ALTER TABLE `penilaians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=458;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ranking`
--
ALTER TABLE `ranking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1086;

--
-- AUTO_INCREMENT for table `ratingkecocokan`
--
ALTER TABLE `ratingkecocokan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4050;

--
-- AUTO_INCREMENT for table `subs`
--
ALTER TABLE `subs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penilaians`
--
ALTER TABLE `penilaians`
  ADD CONSTRAINT `penilaians_id_alternatif_foreign` FOREIGN KEY (`id_alternatif`) REFERENCES `siswas` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaians_id_kriteria_foreign` FOREIGN KEY (`id_kriteria`) REFERENCES `kriterias` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaians_id_sub_foreign` FOREIGN KEY (`id_sub`) REFERENCES `subs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subs`
--
ALTER TABLE `subs`
  ADD CONSTRAINT `subs_kode_id_foreign` FOREIGN KEY (`kode_id`) REFERENCES `kriterias` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
