-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2022 at 01:18 PM
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
-- Database: `app-cindy-clarissa`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `harga_satuan` decimal(13,2) DEFAULT 0.00,
  `jumlah` decimal(13,2) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `jumlah_jual` int(11) DEFAULT NULL,
  `safety_stock` int(11) DEFAULT NULL,
  `lead_time` int(11) DEFAULT NULL,
  `nama_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barang_keluar`
--

INSERT INTO `barang_keluar` (`id`, `nama_barang`, `SKU`, `keterangan`, `qty`, `harga_satuan`, `jumlah`, `tanggal`, `jumlah_jual`, `safety_stock`, `lead_time`, `nama_by`) VALUES
(7, 'Test1', 'tst1', 'testhahaahahah', 600, '1000000.00', '600000000.00', '2022-07-07 11:26:18', 0, 0, NULL, NULL),
(8, 'test2', 'tst2', 'udhqwuhqiwxhqwiuqhuwqhs', 20, '20000.00', '400000.00', '2022-07-07 11:26:46', 0, 0, NULL, NULL),
(9, 'test2', 'tst2', 'udhqwuhqiwxhqwiuqhuwqhs', 20, '20000.00', '400000.00', '2022-07-07 11:26:56', 0, 0, NULL, NULL),
(10, 'test2', 'tst2', 'udhqwuhqiwxhqwiuqhuwqhs', 20, '20000.00', '400000.00', '2022-07-07 11:27:04', 0, 0, NULL, NULL),
(11, 'test2', 'tst2', 'udhqwuhqiwxhqwiuqhuwqhs', 20, '20000.00', '400000.00', '2022-07-07 11:27:12', 0, 0, NULL, NULL),
(12, 'test3', '500', 'teyetwfdwf', 300, '100000.00', '30000000.00', '2022-07-07 15:08:01', 0, 0, NULL, NULL),
(13, 'test3', '250', 'teyetwfdwf', 200, '100000.00', '20000000.00', '2022-07-07 15:08:14', 0, 0, NULL, NULL),
(14, 'Test1', 'tst1', 'testhahaahahah', 400, '1000000.00', '400000000.00', '2022-07-08 11:09:14', NULL, NULL, NULL, NULL),
(15, 'test2', 'tst2', 'udhqwuhqiwxhqwiuqhuwqhs', 20, '20000.00', '400000.00', '2022-07-08 11:20:07', NULL, NULL, NULL, NULL),
(16, 'test2', 'tst2', 'udhqwuhqiwxhqwiuqhuwqhs', 1, '20000.00', '20000.00', '2022-07-08 11:20:35', NULL, NULL, NULL, NULL),
(17, 'test2', 'tst2', 'udhqwuhqiwxhqwiuqhuwqhs', 1, '20000.00', '20000.00', '2022-07-08 11:21:41', NULL, NULL, NULL, NULL),
(18, 'test3', '250', 'teyetwfdwf', 50, '100000.00', '5000000.00', '2022-07-08 11:22:15', NULL, NULL, NULL, NULL),
(19, 'test2', 'tst2', 'udhqwuhqiwxhqwiuqhuwqhs', 1, '20000.00', '20000.00', '2022-07-08 11:22:31', NULL, NULL, NULL, NULL),
(20, 'test3', '500', 'teyetwfdwf', 200, '100000.00', '20000000.00', '2022-07-08 11:23:21', NULL, NULL, NULL, NULL),
(21, 'test3', '250', 'teyetwfdwf', 250, '100000.00', '25000000.00', '2022-07-08 11:23:30', NULL, NULL, NULL, NULL),
(22, 'contoh_1', '5000', 'supplier contoh1', 100, '5000.00', '500000.00', '2022-07-08 11:33:05', NULL, NULL, NULL, NULL),
(23, 'contoh_1', '5000', 'supplier contoh1', 100, '5000.00', '500000.00', '2022-07-08 11:37:52', NULL, NULL, NULL, NULL),
(24, 'contoh_1', '5000', 'supplier contoh1', 4800, '5000.00', '24000000.00', '2022-07-09 02:47:33', NULL, NULL, NULL, NULL),
(25, 'contoh_1', '11', 'supplier contoh1', 11, '5000.00', '55000.00', '2022-07-09 02:47:46', NULL, NULL, NULL, NULL),
(26, 'contoh_1', '11', 'qq', 11, '50000.00', '550000.00', '2022-07-09 02:48:01', NULL, NULL, NULL, NULL),
(27, 'contoh_1', '50', 'qq', 50, '50000.00', '2500000.00', '2022-07-09 02:48:21', NULL, NULL, NULL, NULL),
(28, 'contoh_1', '50', 'qq', 50, '50000.00', '2500000.00', '2022-07-09 02:48:42', NULL, NULL, NULL, NULL),
(29, 'contoh_1', '89', 'qq', 11, '50000.00', '550000.00', '2022-07-09 04:09:31', NULL, NULL, NULL, NULL),
(30, 'Kartu Perdana', '100', 'PT. Telkom Indonesia', 1000, '5000.00', '5000000.00', '2022-07-09 04:22:16', NULL, NULL, NULL, NULL),
(31, 'contoh_1', '89', 'qq', 10, '50000.00', '-4900000.00', '2022-07-09 04:30:44', NULL, NULL, NULL, NULL),
(32, 'contoh_1', '89', 'qq', 10, '50000.00', '0.00', '2022-07-09 04:31:41', NULL, NULL, NULL, NULL),
(33, 'contoh_1', '89', 'qq', 10, '50000.00', '500000.00', '2022-07-09 04:58:45', NULL, NULL, NULL, NULL),
(34, 'Pink Blouse', '250', 'Lara Fashion', 20, '40000.00', '800000.00', '2022-07-09 05:14:01', NULL, NULL, NULL, NULL),
(35, 'Pink Blouse', '22/01', 'Lara Fashion', 10, '40000.00', '400000.00', '2022-07-09 05:15:48', NULL, NULL, NULL, NULL),
(36, 'Pink Blouse', '22/01', 'Lara Fashion', 10, '40000.00', '400000.00', '2022-07-09 05:16:39', NULL, NULL, NULL, NULL),
(37, 'Pink Blouse', 'PK-1', 'Lara Fashion', 75, '500.00', '37500.00', '2022-07-09 11:07:48', NULL, NULL, NULL, NULL),
(38, 'Pink Blouse', 'PK-1', 'Lara Fashion', 425, '500.00', '212500.00', '2022-07-09 11:08:26', NULL, NULL, NULL, NULL),
(39, 'Pink Blouse', 'PK-1', 'Lara Fashion', 20, '500.00', '10000.00', '2022-07-09 11:09:00', NULL, NULL, NULL, NULL),
(40, 'Pink Blouse', 'PK-1', 'Lara Fashion', 10, '500.00', '5000.00', '2022-07-09 11:13:21', NULL, NULL, NULL, NULL),
(41, 'Pink Blouse', 'PK-1', 'Lara Fashion', 10, '500.00', '5000.00', '2022-07-09 11:24:10', NULL, NULL, NULL, NULL),
(42, 'Pink Blouse', '22/01', 'Lara Fashion', 25, '40000.00', '1000000.00', '2022-07-09 11:27:15', NULL, NULL, NULL, NULL),
(43, 'Pink Blouse', 'PK-1', 'Lara Fashion', 20, '500.00', '10000.00', '2022-07-09 11:59:12', NULL, NULL, NULL, NULL),
(44, 'Pink Blouse', 'PK-1', 'Lara Fashion', 250, '500.00', '125000.00', '2022-07-09 11:59:32', NULL, NULL, NULL, NULL),
(45, 'Pink Blouse', 'PK-1', 'Lara Fashion', 20, '500.00', '10000.00', '2022-07-09 12:01:01', NULL, NULL, NULL, NULL),
(46, 'Pink Blouse', 'PK-1', 'Lara Fashion', 20, '500.00', '10000.00', '2022-07-09 12:01:52', NULL, NULL, NULL, NULL),
(47, 'Pink Blouse', 'PK-1', 'Lara Fashion', 10, '500.00', '5000.00', '2022-07-09 12:02:29', NULL, NULL, NULL, NULL),
(48, 'Pink Blouse', 'PK-1', 'Lara Fashion', 20, '500.00', '10000.00', '2022-07-09 12:03:08', NULL, NULL, NULL, NULL),
(49, 'Jajaja', 'JK-1', 'PT.Kemerdekaan', 10, '500.00', '5000.00', '2022-07-09 12:05:09', NULL, NULL, NULL, NULL),
(50, 'wqwdqw', 'CTH-1', 'qwdqwdq', 5, '5000.00', '25000.00', '2022-07-19 13:51:32', NULL, NULL, NULL, NULL),
(51, 'contoh_1', '5510', '111', 15, '1212.00', '18180.00', '2022-07-20 06:02:56', NULL, NULL, NULL, NULL),
(52, 'contoh_1', '5510', '111', 50, '1212.00', '60600.00', '2022-07-20 06:04:23', NULL, NULL, NULL, NULL),
(53, 'contoh_1', '5510', '111', 50, '1212.00', '60600.00', '2022-07-20 06:07:29', NULL, NULL, NULL, NULL),
(54, 'wqwdqw', 'CTH-1', 'qwdqwdq', 10, '5000.00', '50000.00', '2022-07-20 06:07:50', NULL, NULL, NULL, NULL),
(55, 'Gear Box Super', '2207067004', 'PT. Sanjaya Bekasi Indonesia', 60, '40000.00', '2400000.00', '2022-07-20 06:08:13', NULL, NULL, NULL, NULL),
(56, 'contoh_1', 'tt2', '111', 2, '1212.00', '2424.00', '2022-08-04 05:23:16', NULL, NULL, NULL, 'Manager Warehouse'),
(57, 'Gear Box Super', '2207067004', 'PT. Sanjaya Bekasi Indonesia', 200, '40000.00', '8000000.00', '2022-08-04 05:24:59', NULL, NULL, NULL, 'Admin Warehouse'),
(58, 'wqwdqw', 'CTH-1', 'qwdqwdq', 100, '5000.00', '500000.00', '2022-08-04 05:25:29', NULL, NULL, NULL, 'Admin Warehouse'),
(59, 'wqwdqw', 'CTH-1', 'qwdqwdq', 15, '5000.00', '75000.00', '2022-08-06 11:07:54', NULL, NULL, NULL, 'Manager Warehouse'),
(60, 'hahah', 'ahahah', 'ahahah', 15, '0.00', '0.00', '2022-08-06 11:10:20', NULL, NULL, NULL, 'Manager Warehouse'),
(61, 'contoh_2', 'qwq', 'qwqw', 15, '0.00', '0.00', '2022-08-06 11:16:05', NULL, NULL, NULL, 'Manager Warehouse'),
(62, 'contoh_2', 'qwq', 'qwqw', 15, '0.00', '0.00', '2022-08-06 11:16:35', NULL, NULL, NULL, 'Manager Warehouse'),
(63, 'contoh_2', 'qwq', 'qwqw', 55, '0.00', '0.00', '2022-08-06 11:17:09', NULL, NULL, NULL, 'Manager Warehouse');

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
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `harga_satuan` decimal(13,2) NOT NULL,
  `jumlah` decimal(13,2) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nama_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `nama_barang`, `keterangan`, `qty`, `harga_satuan`, `jumlah`, `tanggal`, `nama_by`) VALUES
(12, 'test3', 'teyetwfdwf', 500, '100000.00', '50000000.00', '2022-07-07 11:35:04', NULL),
(13, 'test3', 'teyetwfdwf', 250, '100000.00', '25000000.00', '2022-07-07 15:04:04', NULL),
(14, 'test3', 'teyetwfdwf', 250, '100000.00', '25000000.00', '2022-07-07 15:06:17', NULL),
(15, 'contoh_1', 'supplier contoh1', 5000, '5000.00', '25000000.00', '2022-07-08 11:03:49', NULL),
(16, 'contoh_1', 'supplier contoh1', 11, '5000.00', '55000.00', '2022-07-08 11:06:24', NULL),
(17, 'contoh_1', 'qq', 11, '50000.00', '550000.00', '2022-07-08 11:26:33', NULL),
(18, 'contoh_1', 'qq', 50, '50000.00', '2500000.00', '2022-07-08 11:26:52', NULL),
(19, 'contoh_1', 'qq', 50, '50000.00', '2500000.00', '2022-07-08 11:27:08', NULL),
(20, 'contoh_1', 'qq', 89, '50000.00', '-4350000.00', '2022-07-08 13:22:05', NULL),
(21, 'Kartu Perdana', 'PT. Telkom Indonesia', 100, '5000.00', '500000.00', '2022-07-09 02:51:57', NULL),
(22, 'Smart TV', 'PT.LG Indonesia', 200, '10000000.00', '2000000000.00', '2022-07-09 02:54:19', NULL),
(23, 'Pink Blouse', 'Lara Fashion', 250, '40000.00', '10000000.00', '2022-07-09 05:12:56', NULL),
(24, 'Pink Blouse', 'Lara Fashion', 500, '500.00', '250000.00', '2022-07-09 11:07:06', NULL),
(25, 'Pink Blouse', 'Lara Fashion', 500, '500.00', '250000.00', '2022-07-09 11:08:41', NULL),
(26, 'Pink Blouse', 'Lara Fashion', 500, '500.00', '250000.00', '2022-07-09 11:20:07', NULL),
(27, 'Pink Blouse', 'Lara Fashion', 1000, '500.00', '500000.00', '2022-07-09 11:58:56', NULL),
(28, 'wqwdqw', 'qwdqwdq', 500, '5000.00', '2500000.00', '2022-07-19 13:50:59', NULL),
(29, 'contoh_1', '111', 1212, '1212.00', '1468944.00', '2022-07-20 03:55:24', NULL),
(30, 'contoh_1', '111', 5, '1212.00', '6060.00', '2022-08-04 05:11:48', NULL),
(31, 'contoh_1', '111', 1, '1212.00', '1212.00', '2022-08-04 05:12:55', NULL),
(32, 'contoh_1', '111', 4, '1212.00', '5855784.00', '2022-08-04 05:22:57', NULL);

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
(5, '2022_06_30_101528_barang', 1),
(6, '2022_06_30_120737_create__surat_p_o', 1),
(7, '2022_07_01_003851_create_permission_tables', 1),
(8, '2022_07_01_084442_create_spb', 2),
(9, '2022_07_02_041020_create_validasi_spb', 3),
(10, '2022_07_02_053800_create_valid_spb', 4),
(11, '2022_07_02_160600_create_no_valid_spb', 5),
(12, '2022_07_02_171204_create_valid_po', 6),
(13, '2022_07_02_171249_create_no_valid_po', 6),
(14, '2022_07_02_174006_create_history', 7),
(15, '2022_07_02_175108_create_table_barang', 7),
(16, '2022_07_04_131824_create_barang_keluar', 8);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(5, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `no_valid_po`
--

CREATE TABLE `no_valid_po` (
  `id_PO` int(10) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `harga_satuan` decimal(13,2) DEFAULT 0.00,
  `jumlah` decimal(13,2) NOT NULL,
  `tanggal_PO` timestamp NOT NULL DEFAULT current_timestamp(),
  `nama_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `no_valid_po`
--

INSERT INTO `no_valid_po` (`id_PO`, `nama_barang`, `keterangan`, `qty`, `harga_satuan`, `jumlah`, `tanggal_PO`, `nama_by`) VALUES
(5, 'contoh_1', 'aa', 111, '1000.00', '111000.00', '2022-07-20 03:48:48', NULL),
(6, 'contoh_1.1', '1111', 111, '5000.00', '555000.00', '2022-07-20 03:48:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `no_valid_spb`
--

CREATE TABLE `no_valid_spb` (
  `id_SPB` int(10) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `tanggal_SPB` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nama_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `no_valid_spb`
--

INSERT INTO `no_valid_spb` (`id_SPB`, `nama_barang`, `keterangan`, `qty`, `tanggal_SPB`, `nama_by`) VALUES
(6, '2', '2', 2, '2022-07-09 11:52:08', NULL),
(7, '131312', '12321312', 12111, '2022-07-19 13:50:11', NULL),
(8, 'contoh_2', 'qqq', 111, '2022-07-20 03:44:29', NULL),
(9, 'contoh_2.1', '111', 2222, '2022-07-20 03:44:36', NULL);

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'edit', 'web', '2022-06-30 19:33:22', '2022-06-30 19:33:22'),
(2, 'delete', 'web', '2022-06-30 19:33:22', '2022-06-30 19:33:22'),
(3, 'validate', 'web', '2022-06-30 19:33:22', '2022-06-30 19:33:22'),
(4, 'unvalidate', 'web', '2022-06-30 19:33:22', '2022-06-30 19:33:22');

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin-Purchasing', 'web', '2022-06-30 19:33:22', '2022-06-30 19:33:22'),
(2, 'Manager-Purchasing', 'web', '2022-06-30 19:33:22', '2022-06-30 19:33:22'),
(3, 'Admin-Warehouse', 'web', '2022-06-30 19:33:22', '2022-06-30 19:33:22'),
(4, 'Manager-Warehouse', 'web', '2022-06-30 19:33:22', '2022-06-30 19:33:22'),
(5, 'Super-Admin', 'web', '2022-06-30 19:33:22', '2022-06-30 19:33:22');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spb`
--

CREATE TABLE `spb` (
  `id_SPB` int(10) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `tanggal_SPB` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nama_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spb`
--

INSERT INTO `spb` (`id_SPB`, `nama_barang`, `keterangan`, `qty`, `tanggal_SPB`, `nama_by`) VALUES
(60, 'contoh_2', 'qwqw', 50, '2022-08-06 11:17:20', NULL),
(61, 'contoh_2', 'qwqw', 15, '2022-08-06 11:17:48', 'Manager Warehouse');

-- --------------------------------------------------------

--
-- Table structure for table `table_barang`
--

CREATE TABLE `table_barang` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `harga_satuan` decimal(13,2) DEFAULT 0.00,
  `jumlah` decimal(13,2) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `indicator` int(11) DEFAULT NULL,
  `jumlah_jual` int(11) DEFAULT NULL,
  `safety_stock` int(11) DEFAULT NULL,
  `lead_time` int(11) DEFAULT NULL,
  `nama_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_barang`
--

INSERT INTO `table_barang` (`id`, `nama_barang`, `SKU`, `keterangan`, `qty`, `harga_satuan`, `jumlah`, `tanggal`, `indicator`, `jumlah_jual`, `safety_stock`, `lead_time`, `nama_by`) VALUES
(38, 'contoh_2', 'qwq', 'qwqw', 1024, '0.00', NULL, '2022-08-06 11:17:09', 35532, 5640, 5, 6, 'Manager Warehouse');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Purchasing', 'AP@gmail.com', '2022-06-30 19:33:23', '$2y$10$bEXoon0V5zSnLkclJW5zJu7wwegvB/fXQIP.UpYOmHOK0kwolL88y', 'Eo26gvBtvxSZoLf7Fxv4kuNlYXDS9zVwbgBdEnQzXFVdBTsMUfELPIvAdLtS', '2022-06-30 19:33:23', '2022-06-30 19:33:23'),
(2, 'Manager Purchasing', 'MP@gmail.com', '2022-06-30 19:33:23', '$2y$10$qRPy/hK70LFvUIL5BjhOGeKS/HXzn9EA8OmyQ3q1S3Tr9mjYpTfbS', '2e1GhnvzMamozmPXMis8AMvz9TyHyizlsXrv0fsuUQKuoofqrzC17ByJUcf8', '2022-06-30 19:33:23', '2022-06-30 19:33:23'),
(3, 'Admin Warehouse', 'AW@gmail.com', '2022-06-30 19:33:23', '$2y$10$SSmg7DEia8Uy6TplbcCoxOBzMJ2Ln9mDmRjIZnZdiFf400z03zyh6', 'h6vsPql4OsJsZ9uq3XU83tnXXkkozGsmgNWf6K9l3nXwauGTVoCDFJwq9hA1', '2022-06-30 19:33:23', '2022-06-30 19:33:23'),
(4, 'Manager Warehouse', 'MW@gmail.com', '2022-06-30 19:33:23', '$2y$10$8t8mMM.P4deLIZsSQ0udE.te.1u6wPorvCBE.C88.R091wgSa2C7K', 'dd6UDsfsmuEX6f6xOUxsUOKi6OIZF21swpBevRMmMuvHKkSc91Zt7qPNfVqG', '2022-06-30 19:33:23', '2022-06-30 19:33:23'),
(5, 'Example Super-Admin User', 'superadmin@example.com', '2022-06-30 19:33:23', '$2y$10$ZVR8bxW93d9/rd8BtuiX2eRFyek9lOT4p.vdcuHwtl1ZZCwdxHEl2', 'XrqwPwRwf4', '2022-06-30 19:33:23', '2022-06-30 19:33:23');

-- --------------------------------------------------------

--
-- Table structure for table `validasi_spb`
--

CREATE TABLE `validasi_spb` (
  `id_SPB` int(10) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `harga_satuan` decimal(13,2) DEFAULT 0.00,
  `jumlah` decimal(13,2) DEFAULT NULL,
  `tanggal_SPB` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nama_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `valid_po`
--

CREATE TABLE `valid_po` (
  `id_PO` int(10) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `harga_satuan` decimal(13,2) DEFAULT 0.00,
  `jumlah` decimal(13,2) DEFAULT NULL,
  `tanggal_PO` timestamp NOT NULL DEFAULT current_timestamp(),
  `nama_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `valid_po`
--

INSERT INTO `valid_po` (`id_PO`, `nama_barang`, `keterangan`, `qty`, `harga_satuan`, `jumlah`, `tanggal_PO`, `nama_by`) VALUES
(31, 'contoh_1', '111', 9400, '1212.00', '34656000.00', '2022-07-19 13:50:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `valid_spb`
--

CREATE TABLE `valid_spb` (
  `id_SPB` int(10) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `tanggal_SPB` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nama_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `valid_spb`
--

INSERT INTO `valid_spb` (`id_SPB`, `nama_barang`, `keterangan`, `qty`, `tanggal_SPB`, `nama_by`) VALUES
(73, 'test', 'test', 111, '2022-08-06 02:10:51', '111'),
(74, 'etst', 'exsgysnjq', 123456, '2022-08-06 02:13:03', ''),
(75, 'qdwq', 'qwdqw', 1234, '2022-08-06 02:15:05', 'Manager Warehouse');

-- --------------------------------------------------------

--
-- Table structure for table `_surat_p_o`
--

CREATE TABLE `_surat_p_o` (
  `id_PO` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `harga_satuan` decimal(13,2) DEFAULT 0.00,
  `jumlah` decimal(13,2) NOT NULL,
  `tanggal_PO` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nama_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
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
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `no_valid_po`
--
ALTER TABLE `no_valid_po`
  ADD PRIMARY KEY (`id_PO`);

--
-- Indexes for table `no_valid_spb`
--
ALTER TABLE `no_valid_spb`
  ADD PRIMARY KEY (`id_SPB`);

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
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `spb`
--
ALTER TABLE `spb`
  ADD PRIMARY KEY (`id_SPB`);

--
-- Indexes for table `table_barang`
--
ALTER TABLE `table_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `validasi_spb`
--
ALTER TABLE `validasi_spb`
  ADD PRIMARY KEY (`id_SPB`);

--
-- Indexes for table `valid_po`
--
ALTER TABLE `valid_po`
  ADD PRIMARY KEY (`id_PO`);

--
-- Indexes for table `valid_spb`
--
ALTER TABLE `valid_spb`
  ADD PRIMARY KEY (`id_SPB`);

--
-- Indexes for table `_surat_p_o`
--
ALTER TABLE `_surat_p_o`
  ADD PRIMARY KEY (`id_PO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `no_valid_po`
--
ALTER TABLE `no_valid_po`
  MODIFY `id_PO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `no_valid_spb`
--
ALTER TABLE `no_valid_spb`
  MODIFY `id_SPB` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `spb`
--
ALTER TABLE `spb`
  MODIFY `id_SPB` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `table_barang`
--
ALTER TABLE `table_barang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `validasi_spb`
--
ALTER TABLE `validasi_spb`
  MODIFY `id_SPB` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `valid_po`
--
ALTER TABLE `valid_po`
  MODIFY `id_PO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `valid_spb`
--
ALTER TABLE `valid_spb`
  MODIFY `id_SPB` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `_surat_p_o`
--
ALTER TABLE `_surat_p_o`
  MODIFY `id_PO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
