-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2022 at 07:02 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mripat`
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
-- Table structure for table `jenis_laporan`
--

CREATE TABLE `jenis_laporan` (
  `id` int(10) UNSIGNED NOT NULL,
  `uraian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_laporan`
--

INSERT INTO `jenis_laporan` (`id`, `uraian`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Kajian Fiskal Regional (KFR)', 'Kajian Fiskal Regional', '2021-01-19 04:33:00', '2021-01-19 04:33:00'),
(2, 'Laporan Strategy Focused Organization (SFO)', 'Laporan Strategy Focused Organization (SFO)', '2021-01-22 18:33:19', '2022-07-27 01:32:51'),
(3, 'Laporan Hasil Pembinaan Pelaksanaan Anggaran Daerah (LHPPAD)', 'Laporan Hasil Pembinaan Pelaksanaan Anggaran Daerah', '2021-02-25 23:23:31', '2021-02-25 23:23:31'),
(7, 'Laporan Reviu Pelaksanaan Anggaran ( RPA ) Sem II 2021', 'Semesteran', '2021-12-29 20:33:17', '2022-02-24 18:27:58'),
(8, 'Spending Reviu 2022', NULL, '2021-12-29 20:33:52', '2021-12-29 20:33:52'),
(9, 'Government Finance Statistics (LKPK-TW dan LSKP-TW)', 'Laporan Keuangan Pemerintah Konsolidasian Tingkat Wilayah dan Laporan Statistik Keuangan Pemerintah Tingkat Wilayah', '2021-12-29 20:34:23', '2021-12-29 20:35:21'),
(10, 'Laporan Monev KUR', 'Laporan Monitoring dan Evaluasi Kredit Usaha Rakyat', '2021-12-29 20:34:23', '2021-12-29 20:34:23'),
(11, 'Laporan Keuangan UAKKBUN', NULL, '2021-12-29 20:36:14', '2021-12-29 20:36:14'),
(12, 'Laporan Hasil Pembinaan dan Supervisi', 'Laporan hasil dari pembinaan dan supervisi Kanwil pada seluruh KPPN yang dilakukan setiap semester', '2021-12-31 00:40:05', '2021-12-31 00:40:05'),
(13, 'Rekapitulasi LPJ Bendahara', NULL, '2021-12-31 00:40:55', '2021-12-31 00:40:55'),
(14, 'Rekapitulasi Retur SP2D', NULL, '2021-12-31 00:41:20', '2021-12-31 00:41:20'),
(15, 'Laporan Hasil Monitoring Infrastruktur dan Pengelolaan TIK KPPN', NULL, '2021-12-31 00:43:15', '2021-12-31 00:43:15'),
(16, 'Laporan Hasil Sosialisasi/Bimtek', NULL, '2021-12-31 00:44:15', '2021-12-31 00:44:15'),
(17, 'Laporan Capaian Kinerja Eselon III', NULL, '2021-12-31 00:45:01', '2021-12-31 00:45:01'),
(18, 'Laporan Hasil Monev Implementasi Marketplace dan Digipay', NULL, '2021-12-31 00:57:13', '2021-12-31 00:57:13'),
(19, 'Laporan Evaluasi Pelaksanaan Anggaran', 'Bulanan', '2022-01-02 17:16:01', '2022-01-02 17:16:01'),
(20, 'Laporan Pembinaan BLU', 'Semesteran', '2022-01-02 17:16:16', '2022-01-02 17:16:16'),
(21, 'Laporan Monev PNBP Sem II 2021', 'Semesteran', '2022-01-02 17:16:25', '2022-02-24 18:28:09'),
(22, 'Laporan Hasil Pembinaan Akuntansi dan Pelaporan Keuangan Pemerintah Daerah', 'Semesteran', '2022-01-12 20:29:50', '2022-01-12 20:29:50'),
(23, 'Laporan Analisis Pembiayaan UMi', 'Laporan Analisis Pembiayaan UMi dibuat secara semesteran berdasarkan laporan pembiayaan Ultra Mikro yang disampaikan oleh KPPN di lingkup Kantor Wilayah Direktorat Jenderal Perbendaharaan.', '2022-02-28 09:01:18', '2022-02-28 09:01:18'),
(24, 'Laporan Hasil Pembinaan Pelaksanaan Anggaran Daerah (LHPPAD)', 'Pembinaan pelaksanaan anggaran daerah dilaksanakan sedikitnya 1 (satu) kali pada setiap semester dan mencakup sedikitnya 3 (tiga) Pemerintah Daerah.', '2022-02-28 09:26:29', '2022-02-28 09:26:29'),
(25, 'Laporan Kemanfaatan KFR', 'Laporan Kemanfaatan KFR', '2022-02-28 09:31:02', '2022-02-28 09:31:02'),
(26, 'Laporan sebagai Narasumber', 'Laporan sebagai Narasumber merupakan laporan yang disusun oleh pegawai Kanwil Ditjen Perbendaharaan Provinsi Kalimantan Barat dalam rangka yang bersangkutan menjadi seorang narasumber pada suatu kegiatan', '2022-03-08 20:27:29', '2022-03-08 20:29:23'),
(27, 'Laporan Pelaksanaan FKPKN', NULL, '2022-07-26 21:02:27', '2022-07-26 21:02:27'),
(28, 'Laporan Volume Kerja', 'Laporan Volume Kerja', '2022-07-27 01:33:21', '2022-07-27 01:43:47'),
(29, 'Laporan Capaian Kinerja (LCK) Kemenkeu Two Kanwil', 'Laporan Capaian Kinerja (LCK) Kemenkeu Two Kanwil', '2022-07-27 01:34:17', '2022-07-27 01:34:17'),
(30, 'Laporan Kinerja (LAKIN)', 'Laporan Kinerja (LAKIN)', '2022-07-27 01:34:45', '2022-07-27 01:34:45'),
(31, 'Laporan Analisis Beban Kerja (ABK)', 'Laporan Analisis Beban Kerja (ABK)', '2022-07-27 01:44:11', '2022-07-27 01:44:11'),
(32, 'jldhsajkd ash', 'snabdvjshadgsah jkdsga', '2022-08-29 07:15:38', '2022-08-29 07:15:38');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatans`
--

CREATE TABLE `kegiatans` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_djpb_id` int(10) UNSIGNED NOT NULL,
  `struktur_id` int(10) UNSIGNED NOT NULL,
  `uraian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anggaran` double DEFAULT 0,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `status_pelaksanaan` enum('BELUM DILAKSANAKAN','IN PROGRESS','SELESAI','RESCHEDULE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BELUM DILAKSANAKAN',
  `is_strategis` tinyint(4) DEFAULT 1,
  `is_perjalanan_dinas` tinyint(1) DEFAULT 0,
  `is_sosialisasi` tinyint(1) DEFAULT 0,
  `file_lk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_rab` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_st` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_spd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_kakanwil` tinyint(1) DEFAULT 0,
  `is_gubernur` tinyint(1) DEFAULT 0,
  `is_bupati` tinyint(1) DEFAULT 0,
  `file_und` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_presensi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_notula` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kegiatans`
--

INSERT INTO `kegiatans` (`id`, `kode_djpb_id`, `struktur_id`, `uraian`, `anggaran`, `tgl_mulai`, `tgl_selesai`, `status_pelaksanaan`, `is_strategis`, `is_perjalanan_dinas`, `is_sosialisasi`, `file_lk`, `file_rab`, `file_st`, `file_spd`, `is_kakanwil`, `is_gubernur`, `is_bupati`, `file_und`, `file_presensi`, `file_notula`, `foto_kegiatan`, `created_at`, `updated_at`) VALUES
(15, 2, 2, 'Dialog Bersama Milenial Sekalbar', 0, '2021-12-28 15:30:00', '2021-12-28 17:00:00', 'BELUM DILAKSANAKAN', 1, NULL, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2021-12-28 21:10:14', '2021-12-28 21:10:14'),
(16, 2, 3, 'Penyusunan Spending Reviu 2022', 0, '2022-01-01 01:01:00', '2022-03-31 13:01:00', 'SELESAI', 1, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 'uploads/file_und/047c29b2f591f0bf3ba868c658e2c794.pdf', NULL, NULL, NULL, '2021-12-29 19:35:40', '2022-05-30 19:05:06'),
(17, 2, 31, 'Monitoring Infrastruktur dan Pengelolaan TIK KPPN Pontianak', 0, '2022-02-07 08:01:00', '2022-02-08 12:00:00', 'SELESAI', 1, 1, 0, 'uploads/file_lk/ef0fda0c8f18fa25072aef3915d28eb5.pdf', NULL, 'uploads/file_st/091812fb786a3917c36b370db5dc6b64.png', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-29 19:36:26', '2022-07-26 01:22:20'),
(19, 2, 31, 'Monitoring Infrastruktur dan Pengelolaan TIK KPPN Singkawang', 0, '2022-02-16 08:01:00', '2022-02-18 12:00:00', 'SELESAI', 1, 1, 0, 'uploads/file_lk/bacd72ffb613ac42f68c8b3807a9aeff.pdf', NULL, 'uploads/file_st/9ad8554b1bcb9c046ba911610b2e9fac.png', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-29 21:17:19', '2022-07-26 01:22:44'),
(20, 2, 31, 'Monitoring Infrastruktur dan Pengelolaan TIK KPPN Ketapang', 0, '2022-03-02 08:01:00', '2022-03-04 12:00:00', 'SELESAI', 1, 1, 0, 'uploads/file_lk/288587e88fce8ccf0f0a65289ef1a7a6.pdf', NULL, 'uploads/file_st/83646e2c7d5a5cc3b5eac0d4a242a7a4.png', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-29 21:17:21', '2022-07-26 01:25:07'),
(21, 2, 31, 'Monitoring Infrastruktur dan Pengelolaan TIK KPPN Putussibau', 0, '2022-03-09 08:01:00', '2022-03-11 12:00:00', 'SELESAI', 1, 1, 0, 'uploads/file_lk/acbd0257987b8c39a2b0dc0d34c9a293.pdf', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-29 21:17:23', '2022-07-26 01:26:49'),
(22, 2, 31, 'Monitoring Infrastruktur dan Pengelolaan TIK KPPN Sanggau', 0, '2022-03-16 08:01:00', '2022-03-18 12:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/4680ce52787a5f5e63a45d3e224f82cb.pdf', NULL, 'uploads/file_st/8403e1b42cb5d1f252829518c6059ffc.png', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-29 21:17:24', '2022-07-26 01:28:56'),
(23, 2, 31, 'Monitoring Infrastruktur dan Pengelolaan TIK KPPN Sintang', 0, '2022-03-23 08:01:00', '2022-03-25 12:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/d889db4facf06bf7cb39365be3c4382a.pdf', NULL, 'uploads/file_st/55b7c8e80b4805c573e2d4f1f1a9c459.png', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-29 21:17:26', '2022-07-26 01:29:18'),
(24, 2, 31, 'Monitoring Infrastruktur dan Pengelolaan TIK KPPN Sanggau', 0, '2022-10-19 08:01:00', '2022-10-21 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-29 21:46:23', '2021-12-29 21:48:47'),
(25, 2, 31, 'Monitoring Infrastruktur dan Pengelolaan TIK KPPN Sintang', 0, '2022-10-26 08:01:00', '2022-10-28 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-29 21:46:28', '2021-12-29 21:49:19'),
(26, 2, 31, 'Monitoring Infrastruktur dan Pengelolaan TIK KPPN Pontianak', 0, '2022-11-09 08:01:00', '2022-11-11 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-29 21:49:57', '2021-12-29 21:51:33'),
(27, 2, 31, 'Monitoring Infrastruktur dan Pengelolaan TIK KPPN Singkawang', 0, '2022-11-16 08:01:00', '2022-11-18 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-29 21:51:57', '2021-12-29 21:52:16'),
(28, 2, 31, 'Monitoring Infrastruktur dan Pengelolaan TIK KPPN Singkawang', 0, '2022-11-23 08:01:00', '2022-11-25 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-29 21:52:37', '2021-12-29 21:52:52'),
(29, 2, 31, 'Monitoring Infrastruktur dan Pengelolaan TIK KPPN Singkawang', 0, '2022-11-28 08:01:00', '2022-11-30 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-29 21:53:09', '2021-12-29 21:53:25'),
(30, 2, 31, 'Rakor TIK internalisasi dan sosialisasi kebijakan-kebijakan TIK', 0, '2022-05-16 08:01:00', '2022-05-16 12:00:00', 'RESCHEDULE', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2021-12-29 22:00:31', '2022-07-21 20:09:51'),
(31, 2, 31, 'Rakor TIK internalisasi dan sosialisasi kebijakan-kebijakan TIK', 0, '2022-08-17 08:01:00', '2022-08-17 12:00:00', 'RESCHEDULE', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2021-12-29 22:01:57', '2022-07-21 20:09:38'),
(32, 2, 31, 'FGD inventarisasi, evaluasi dan koordinasi inovasi layanan di KPPN dan Kanwil', 0, '2022-04-08 08:01:00', '2022-04-08 12:00:00', 'RESCHEDULE', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2021-12-30 00:02:48', '2022-04-07 23:23:21'),
(33, 2, 29, 'Pelaksanaan Supervisi Proses Bisnis KPPN dan Monitoring dan Evaluasi Implementasi ISO KPPN Putussibau', 0, '2022-04-25 08:01:00', '2022-04-29 17:00:00', 'SELESAI', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-30 06:43:52', '2022-07-21 21:35:00'),
(34, 2, 29, 'Pelaksanaan Supervisi Proses Bisnis KPPN dan Monitoring dan Evaluasi Implementasi ISO KPPN Pontianak', 0, '2022-05-23 08:01:00', '2022-05-27 17:00:00', 'SELESAI', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-30 06:43:55', '2022-07-21 21:37:22'),
(35, 2, 29, 'Pelaksanaan Supervisi Proses Bisnis KPPN dan Monitoring dan Evaluasi Implementasi ISO KPPN Singkawang', 0, '2022-05-30 08:01:00', '2022-06-03 17:00:00', 'SELESAI', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-30 06:44:21', '2022-07-21 21:37:42'),
(36, 2, 29, 'Pelaksanaan Supervisi Proses Bisnis KPPN dan Monitoring dan Evaluasi Implementasi ISO KPPN Ketapang', 0, '2022-05-09 08:01:00', '2022-05-13 17:00:00', 'SELESAI', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-30 06:44:54', '2022-07-21 21:36:57'),
(37, 2, 29, 'Pelaksanaan Supervisi Proses Bisnis KPPN dan Monitoring dan Evaluasi Implementasi ISO KPPN Sintang', 0, '2022-05-16 08:01:00', '2022-05-20 17:00:00', 'SELESAI', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-30 06:45:26', '2022-07-21 21:37:08'),
(38, 2, 29, 'Pelaksanaan Supervisi Proses Bisnis KPPN dan Monitoring dan Evaluasi Implementasi ISO KPPN Sanggau', 0, '2022-06-06 08:01:00', '2022-06-10 17:00:00', 'SELESAI', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-30 06:45:48', '2022-07-21 21:38:12'),
(39, 2, 29, 'Pelaksanaan Supervisi Proses Bisnis KPPN dan Monitoring dan Evaluasi Implementasi ISO KPPN Sintang', 0, '2022-10-03 08:01:00', '2022-10-07 17:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-30 06:46:17', '2021-12-30 06:46:42'),
(40, 2, 29, 'Pelaksanaan Supervisi Proses Bisnis KPPN dan Monitoring dan Evaluasi Implementasi ISO KPPN Pontianak', 0, '2022-10-10 08:01:00', '2022-10-14 17:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-30 06:46:46', '2021-12-30 06:47:20'),
(41, 2, 29, 'Pelaksanaan Supervisi Proses Bisnis KPPN dan Monitoring dan Evaluasi Implementasi ISO KPPN Singkawang', 0, '2022-10-24 08:01:00', '2022-10-28 17:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-30 06:47:24', '2021-12-30 06:47:44'),
(42, 2, 29, 'Pelaksanaan Supervisi Proses Bisnis KPPN dan Monitoring dan Evaluasi Implementasi ISO KPPN Ketapang', 0, '2022-11-07 08:01:00', '2022-11-11 17:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-30 06:47:50', '2021-12-30 06:48:09'),
(43, 2, 29, 'Pelaksanaan Supervisi Proses Bisnis KPPN dan Monitoring dan Evaluasi Implementasi ISO KPPN Putussibau', 0, '2022-11-14 08:01:00', '2022-11-18 17:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-30 06:48:17', '2021-12-30 06:48:34'),
(44, 2, 29, 'Pelaksanaan Supervisi Proses Bisnis KPPN dan Monitoring dan Evaluasi Implementasi ISO KPPN Sanggau', 0, '2022-11-21 08:01:00', '2022-11-25 17:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-30 06:48:38', '2021-12-30 06:49:04'),
(46, 2, 29, 'Sidang Pleno dan Koordinasi dalam rangka penilaian jabatan fungsional', 0, '2022-07-16 08:01:00', '2022-07-16 12:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2021-12-30 06:55:50', '2022-07-21 21:38:47'),
(47, 2, 29, 'Monitoring dan Evaluasi Kepatuhan Bank/Pos Persepsi dalam pembukaan jam layanan penerimaan akhir tahun', 90000000, '2022-12-30 08:01:00', '2022-12-31 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-30 06:57:08', '2022-09-12 05:32:10'),
(48, 2, 29, 'Monitoring dan evaluasi Implementasi ISO dan Evaluasi Pelaksanaan Proses Bisnis di KPPN', 0, '2022-03-16 08:01:00', '2022-03-17 12:00:00', 'SELESAI', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2021-12-30 06:59:01', '2022-04-07 20:18:55'),
(49, 2, 33, 'FGD Penyusunan Profil Risiko dan Peta Risiko', 0, '2022-01-17 08:01:00', '2022-01-17 12:00:00', 'SELESAI', 1, 0, 1, 'uploads/file_lk/3c63461de0fd4a83d135750964e69e9c.pdf', NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/d25094086a3c0c2e04a4f461f060b96b.pdf', NULL, 'uploads/file_notula/773ca68d08883aff3d8cf373a6642c8d.pdf', NULL, '2021-12-31 00:25:27', '2022-07-26 01:46:03'),
(50, 2, 33, 'FGD Evaluasi WBK Kanwil & Persiapan KPPN Yang Diusulkan ke WBBM', 0, '2022-04-05 08:01:00', '2022-04-05 12:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2021-12-31 00:27:12', '2022-04-07 19:41:41'),
(53, 2, 33, 'GKM PMK 227:pengendalian gratifikasi, budaya anti korupsi, WISE, bijak bermedia sosial', 0, '2022-06-30 08:01:00', '2022-06-30 12:00:00', 'SELESAI', 1, 0, 1, 'uploads/file_lk/6748caa65f63201a2cf6757a5eb7d638.pdf', NULL, NULL, NULL, 1, 0, 0, NULL, 'uploads/file_presensi/5f184734603a9bdb03f6890b74828e80.pdf', 'uploads/file_notula/d30ea6ea5e01e4164e73df7c71172bbd.pdf', NULL, '2021-12-31 00:29:01', '2022-07-26 01:47:50'),
(54, 2, 38, 'Penyusunan laporan hasil pembinaan akuntansi dan pelaporan keuangan pemerintah daerah periode Semester II Tahun 2021', 0, '2022-01-01 08:01:00', '2022-01-13 12:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/c233c0f886b038cba2bf8cb45261c55a.pdf', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 04:32:18', '2022-01-12 19:07:27'),
(55, 2, 36, 'Rapat koordinasi Penyusunan LKBUN Tahun 2021 Unaudited', 0, '2022-02-24 08:00:00', '2022-02-26 17:00:00', 'SELESAI', 1, 1, 1, 'uploads/file_lk/0ca4a74eac2efa5bef093b6de41e8a9c.pdf', NULL, 'uploads/file_st/76306612fa56f5482f21f7b79b2bf732.pdf', NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 04:35:20', '2022-03-07 00:47:50'),
(56, 2, 40, 'Penyusunan laporan keuangan tingkat Unit Akuntansi Koordinator Kuasa Bendaharan Umum Negara tingkat Kantor Wilayah (UAKKBUN-Kanwil) Tahun 2021 Unaudited', 0, '2022-02-14 08:00:00', '2022-02-18 17:00:00', 'SELESAI', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-02 04:37:29', '2022-03-07 00:48:28'),
(58, 2, 38, 'Kompilasi Laporan Keuangan Pemerintah Daerah Tahun 2021 - Preliminary', 0, '2022-02-01 08:01:00', '2022-02-11 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 04:40:55', '2022-02-13 18:26:18'),
(59, 2, 40, 'Penyusunan LKPK-TW dan LSKP-TW (GFS) Tahun 2021 - Preliminary', 0, '2022-02-11 01:01:00', '2022-02-25 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 04:42:06', '2022-03-07 00:48:50'),
(60, 2, 38, 'Pembinaan SAP pada BKAD Provinsi Kalimantan Barat', 0, '2022-03-11 09:01:00', '2022-03-11 12:00:00', 'SELESAI', 1, 1, 1, 'uploads/file_lk/0022e76090994b5f5be4cca60ea80f0a.pdf', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 04:43:23', '2022-03-15 00:27:54'),
(61, 2, 38, 'Sosialisasi/FGD terkait LKPD kepada Pemda lingkup Kalimantan Barat', 0, '2022-09-14 08:00:00', '2022-09-14 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 04:44:34', '2022-08-11 21:11:04'),
(62, 2, 38, 'Koordinasi LKPD dengan BKD Pontianak', 0, '2022-03-24 09:01:00', '2022-03-24 12:00:00', 'RESCHEDULE', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 04:46:04', '2022-04-04 21:09:15'),
(63, 2, 38, 'Telaah atas LKPD Tahun 2021 - Preliminary', 0, '2022-03-31 08:01:00', '2022-03-31 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 04:47:03', '2022-03-15 00:30:28'),
(64, 2, 38, 'Kompilasi Laporan Keuangan Pemerintah Daerah Tahun 2021 - Unaudited', 0, '2022-04-08 08:01:00', '2022-04-15 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 04:50:05', '2022-04-26 19:38:05'),
(65, 2, 40, 'Penyusunan LKPK-TW dan LSKP-TW (GFS) Tahun 2021 - Unaudited', 0, '2022-04-01 08:01:00', '2022-04-28 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 04:51:31', '2022-05-24 19:38:17'),
(66, 2, 38, 'Kompilasi Laporan Realisasi Anggaran (LRA) dan Laporan Operasional (LO) periode Triwulan I Tahun 2022', 0, '2022-04-15 08:01:00', '2022-04-25 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 04:52:42', '2022-04-26 19:37:36'),
(67, 2, 40, 'Penyusunan laporan keuangan tingkat Unit Akuntansi Koordinator Kuasa Bendaharan Umum Negara tingkat Kantor Wilayah (UAKKBUN-Kanwil) Triwulan I Tahun 2022', 0, '2022-04-18 08:01:00', '2022-04-20 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 04:53:58', '2022-05-24 19:37:59'),
(68, 2, 40, 'Penyusunan laporan keuangan tingkat Unit Akuntansi Koordinator Kuasa Bendaharan Umum Negara tingkat Kantor Wilayah (UAKKBUN-Kanwil) Tahun 2021 Audited', 0, '2022-04-21 08:01:00', '2022-04-28 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 04:56:29', '2022-05-24 19:37:49'),
(69, 2, 40, 'Penyusunan LKPK-TW dan LSKP-TW (GFS) Triwulan I Tahun 2022', 0, '2022-04-25 08:01:00', '2022-05-09 17:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/87330c278c0b5a7fb4009972453060f0.pdf', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 04:58:07', '2022-05-24 19:37:10'),
(70, 2, 36, 'pendampingan Penyusunan dan Penyelesaian Permasalahan Laporan Keuangan UAPPA-W dalam rangka penyusunan LK UAPPA-W Tahun 2022', 0, '2022-05-10 09:01:00', '2022-05-11 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 04:59:30', '2022-01-02 05:33:10'),
(71, 2, 38, 'Telaah atas LKPD Tahun 2021 - Unaudited', 0, '2022-05-31 01:01:00', '2022-05-31 12:00:00', 'IN PROGRESS', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 05:00:24', '2022-06-17 01:19:14'),
(72, 2, 38, 'Koordinasi dan rekonsiliasi data dengan Bank Indonesia dalam rangka penyusunan GFS', 0, '2022-06-08 08:01:00', '2022-06-08 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 05:02:07', '2022-01-02 05:31:50'),
(73, 2, 36, 'Pembinaan dan penyelesaian masalah terkait penyusunan LKBUN pada KPPN Pontianak', 0, '2022-06-15 08:01:00', '2022-06-15 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 05:02:58', '2022-01-02 05:33:31'),
(74, 2, 38, 'Koordinasi LKPD dengan BKD Pontianak', 0, '2022-06-22 09:01:00', '2022-06-22 12:00:00', 'RESCHEDULE', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 05:03:46', '2022-06-29 20:40:01'),
(75, 2, 36, 'Sosialisasi SAI dalam rangka persiapan penyusunan LK UAPPA-W tahun 2022', 0, '2022-09-14 08:01:00', '2022-09-14 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 05:04:54', '2022-08-11 21:11:50'),
(76, 2, 38, 'Penyusunan laporan hasil pembinaan akuntansi dan pelaporan keuangan pemerintah daerah periode Semester II Tahun 2021', 0, '2022-07-01 08:01:00', '2022-07-15 12:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/d002e8389e74125a74ad3d58864f29bc.pdf', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 05:05:50', '2022-07-13 19:56:11'),
(77, 2, 40, 'Penyusunan laporan keuangan tingkat Unit Akuntansi Koordinator Kuasa Bendaharan Umum Negara tingkat Kantor Wilayah (UAKKBUN-Kanwil) Semester I Tahun 2022', 0, '2022-07-18 01:01:00', '2022-07-22 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 05:08:09', '2022-07-25 05:23:58'),
(78, 2, 38, 'Kompilasi informasi keuangan daerah berupa Laporan Realisasi Anggaran (LRA), Laporan Operasional (LO), dan Neraca periode Semester I Tahun 2022', 0, '2022-07-11 01:01:00', '2022-07-25 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 05:09:09', '2022-07-25 05:25:08'),
(79, 2, 40, 'Penyusunan LKPK-TW dan LSKP-TW (GFS) Semester I Tahun 2022', 0, '2022-07-25 01:01:00', '2022-07-29 12:00:00', 'IN PROGRESS', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 05:10:10', '2022-07-13 19:57:43'),
(81, 2, 38, 'Kompilasi Laporan Keuangan Pemerintah Daerah Tahun 2021 - Audited', 0, '2022-08-09 01:01:00', '2022-08-23 12:00:00', 'IN PROGRESS', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 05:12:37', '2022-08-11 21:00:06'),
(82, 2, 40, 'Penyusunan LKPK-TW dan LSKP-TW (GFS) Tahun 2021 - Audited', 0, '2022-08-23 01:01:00', '2022-08-31 12:00:00', 'IN PROGRESS', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 05:13:42', '2022-08-11 21:08:08'),
(83, 2, 36, 'Pendampingan Penyusunan dan Penyelesaian Permasalahan Laporan Keuangan UAPPA-W dalam rangka penyusunan LK UAPPA-W Tahun 2022', 0, '2022-09-06 09:01:00', '2022-09-07 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 05:15:29', '2022-01-02 05:34:11'),
(84, 2, 36, 'Pembinaan dan penyelesaian masalah terkait penyusunan LKBUN pada KPPN Pontianak', 0, '2022-09-13 08:01:00', '2022-09-13 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 05:16:19', '2022-01-02 05:34:29'),
(86, 2, 36, 'Melakukan sosialisasi penyusunan LK ke UAPPA-W (Kubu Raya/Ketapang)', 0, '2022-09-19 08:01:00', '2022-09-21 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 05:21:00', '2022-01-02 05:21:00'),
(87, 2, 38, 'Telaah atas LKPD Semester I Tahun 2022', 0, '2022-09-30 01:01:00', '2022-09-30 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 05:22:11', '2022-01-02 05:22:11'),
(90, 2, 40, 'Penyusunan laporan keuangan tingkat Unit Akuntansi Koordinator Kuasa Bendaharan Umum Negara tingkat Kantor Wilayah (UAKKBUN-Kanwil) Triwulan III Tahun 2022', 0, '2022-10-17 08:01:00', '2022-10-21 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 05:43:02', '2022-01-02 05:43:02'),
(91, 2, 38, 'Koordinasi pemberian dukungan dalam rangka mempertahankan opini WTP atas LKPD Tahun 2021', 0, '2022-10-24 08:01:00', '2022-10-25 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 1, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2022-01-02 05:43:52', '2022-01-02 05:43:52'),
(92, 2, 38, 'Kompilasi informasi keuangan daerah berupa Laporan Realisasi Anggaran (LRA), Laporan Operasional (LO), dan Neraca periode Triwulan III Tahun 2022', 0, '2022-10-11 08:01:00', '2022-10-21 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 05:45:09', '2022-01-02 05:45:09'),
(93, 2, 40, 'Penyusunan LKPK-TW dan LSKP-TW (GFS) Triwulan III Tahun 2022', 0, '2022-10-24 08:01:00', '2022-10-31 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 05:46:09', '2022-01-02 05:46:09'),
(94, 2, 38, 'Koordinasi pemberian dukungan dalam rangka mempertahankan opini WTP atas LKPD Tahun 2021', 0, '2022-11-01 08:01:00', '2022-11-02 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 1, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2022-01-02 05:47:24', '2022-01-02 05:47:24'),
(95, 2, 38, 'Koordinasi LKPD dengan BKD Pontianak', 0, '2022-12-06 09:01:00', '2022-12-06 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 05:48:10', '2022-01-02 05:48:10'),
(96, 2, 38, 'Melakukan telaah atas LKPD Triwulan III Tahun 2022', 0, '2022-12-20 01:01:00', '2022-12-20 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 05:48:55', '2022-01-02 05:48:55'),
(99, 2, 15, 'Penyusunan Reviu Keselrasan RPJMN, RPJMD, RKP/D, DIPA/DPA', 0, '2021-01-01 01:01:00', '2021-01-12 12:00:00', 'IN PROGRESS', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-02 09:03:25', '2022-01-02 09:03:25'),
(100, 2, 15, 'FGD Analisis Penyusunan KFR dengan Tommy Helmiwan (Dit.PA)', 0, '2022-01-21 09:00:00', '2022-01-21 11:30:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'uploads/foto_kegiatan/eec7197953ae72e3e6c4669b1a45d8ec.jpeg', '2022-01-02 09:07:25', '2022-03-24 21:29:16'),
(101, 2, 15, 'Penyusunan Laporan Hasil Pembinaan Pelaksanaan Anggaran Daerah Semester II', 0, '2022-01-01 01:01:00', '2022-01-15 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:08:21', '2022-02-21 23:33:00'),
(102, 2, 13, 'Penyusunan Laporan ABK Tahunan', 0, '2022-01-01 01:01:00', '2022-01-07 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:09:17', '2022-02-21 23:36:35'),
(104, 2, 13, 'Penyusunan Laporan Monev DAK Fisik dan Dana Desa', 0, '2022-01-01 01:01:00', '2022-01-15 12:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/aec4d66388cd25f9d2eb97c805e4b1cc.pdf', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:13:56', '2022-03-24 00:40:35'),
(105, 2, 15, 'Penyusunan Laporan Kajian Fiskal Regional Tahun 2021 (Preliminary )', 0, '2022-01-01 01:01:00', '2022-01-31 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:14:52', '2022-02-21 23:32:36'),
(106, 2, 15, 'Penyusunan Laporan Perhitungan Fihak Ketiga (PFK) Semester II 2021', 0, '2022-01-01 01:01:00', '2022-01-31 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:15:43', '2022-02-21 23:32:48'),
(107, 2, 17, 'Penysunan Laporan Monev KUR', 0, '2022-02-01 01:01:00', '2022-02-15 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:24:26', '2022-02-21 23:28:25'),
(108, 2, 17, 'Laporan Monev UMi', 0, '2022-02-10 01:01:00', '2022-02-28 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:25:11', '2022-02-21 23:30:32'),
(110, 2, 15, 'Penyusunan Laporan Kajian Fiskal Regional Tahun 2021 (Final)', 0, '2022-02-01 01:01:00', '2022-02-15 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:26:33', '2022-02-21 23:34:49'),
(112, 2, 17, 'Rakor Penyaluran KUR dan Pembiayaan UMi', 0, '2022-03-10 09:00:00', '2022-03-10 23:59:00', 'SELESAI', 1, 0, 1, 'uploads/file_lk/a8672134f5c1bcd4ab4ec84428fc164f.pdf', NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/abdca787e246fb295cabcdd2b845d4a1.pdf', NULL, NULL, 'uploads/foto_kegiatan/3065cbbdd6adf2059ba5c64d22ee0580.png', '2022-01-02 09:29:38', '2022-03-24 00:45:50'),
(113, 2, 13, 'Penandatanganan MoU dan Rapat Koordinasi Percepatan Penyaluran Transfer ke Daerah dan Dana Desa Lingkup Provinsi Kalimantan Barat', 0, '2022-03-02 09:00:00', '2022-03-02 11:30:00', 'SELESAI', 1, 0, 1, NULL, 'uploads/file_rab/0e4e7c54ae260cb6782c11922724b4bb.pdf', 'uploads/file_st/bac0a6a363798e433bea6cbf2d37a60a.pdf', NULL, 1, 1, 1, 'uploads/file_und/845187b703971a5e32f607ea615ac952.pdf', NULL, 'uploads/file_notula/e8d444c07827f1334ab6b11e29d25744.pdf', 'uploads/foto_kegiatan/0069a35dff815292807e1728e3c8830d.jpg', '2022-01-02 09:30:19', '2022-04-03 22:18:24'),
(115, 2, 13, 'Penyusunan Laporan Profil Ekonomi dan Keuangan Daerah Prov. Kalimantan Barat', 0, '2022-03-01 01:01:00', '2022-03-31 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:32:39', '2022-06-05 07:20:44'),
(117, 2, 13, 'Penysunan Laporan ABK Tahunan', 0, '2022-04-01 01:01:00', '2022-04-05 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:37:41', '2022-06-05 07:20:54'),
(119, 2, 15, 'Laporan Kajian Fiskal Regional Triwulan I-2022 (Final)', 0, '2022-05-01 01:01:00', '2022-05-15 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:39:04', '2022-06-05 07:28:06'),
(120, 2, 17, 'Perjalanan Dinas Dalam Kota (Survey KUR Semester I Tahun 2021)', 0, '2022-06-21 01:01:00', '2022-06-21 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:40:46', '2022-07-25 20:59:16'),
(122, 2, 15, 'Perjalanan luar kota BLUD (Kab. Ketapang)', 0, '2022-05-23 01:01:00', '2022-05-25 12:00:00', 'RESCHEDULE', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:42:23', '2022-06-05 07:28:35'),
(123, 2, 15, 'FGD /Forkom terkait Pengelolaan BLUD Lingkup Kalbar', 0, '2022-06-02 01:01:00', '2022-06-02 12:00:00', 'RESCHEDULE', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:43:26', '2022-06-05 07:28:46'),
(126, 2, 13, 'Penyusunan Laporan ABK Tahunan', 0, '2022-07-01 01:01:00', '2022-07-05 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:47:14', '2022-01-02 10:12:49'),
(127, 2, 15, 'FGD /Forkom terkait Penyusunan Laporan Data Perhitungan Fihak Ketiga', 0, '2022-07-05 01:01:00', '2022-07-05 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:48:04', '2022-01-02 10:19:21'),
(128, 2, 15, 'Penyusunan Laporan Hasil Pembinaan Pelaksanaan Anggaran Daerah Semester I Tahun 2022', 0, '2022-07-01 01:01:00', '2022-07-15 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:48:36', '2022-07-25 21:01:40'),
(129, 2, 13, 'Penyusunan Laporan Monev DAK Fisik dan Dana Desa Tahun 2021', 0, '2022-07-01 01:01:00', '2022-07-15 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:49:17', '2022-07-25 21:04:33'),
(130, 2, 17, 'Penyusunan laporan Monev KUR', 0, '2022-07-01 01:01:00', '2022-07-15 12:00:00', 'SELESAI', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:50:14', '2022-07-25 20:59:04'),
(131, 2, 17, 'Penyusunan laporan Monev UMi', 0, '2022-07-10 01:01:00', '2022-07-30 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:50:52', '2022-07-25 20:58:55'),
(133, 2, 15, 'Penyusunan Laporan Perhitungan Fihak Ketiga (PFK) Semester I Tahun 2022', 0, '2022-07-01 01:01:00', '2022-07-30 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:52:05', '2022-01-02 10:18:31'),
(134, 2, 15, 'Penyusunan Laporan Kajian Fiskal Regional Triwulan II-2022 (Preliminary )', 0, '2022-07-01 01:01:00', '2022-07-30 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:52:33', '2022-07-25 21:01:14'),
(135, 2, 15, 'Penyusunan Laporan Kajian Fiskal Regional Triwulan II-2022 (Final)', 0, '2022-08-01 01:01:00', '2022-08-15 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:53:12', '2022-01-02 10:17:59'),
(136, 2, 15, 'Seminar Diseminasi Kajian Fiskal Regional Semester I Tahun 2023', 0, '2022-09-05 01:01:00', '2022-09-05 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:54:19', '2022-01-02 10:16:10'),
(138, 2, 17, 'Perjalanan Dinas Pembinaan Pembiayaan Ultra Mikro Luar Kota (Kota Singkawang)', 0, '2022-09-15 01:01:00', '2022-09-16 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:56:49', '2022-01-02 10:22:21'),
(139, 2, 17, 'Bimtek SIKP (hybrid)', 0, '2022-10-07 01:01:00', '2022-10-07 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:57:30', '2022-01-02 10:24:00'),
(140, 2, 13, 'Perjalanan Dinas Dalam Kota Monitoring Penyaluran DAK Fisik di Pontianak', 0, '2022-10-18 01:01:00', '2022-10-18 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 1, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:58:27', '2022-01-02 10:11:03'),
(141, 2, 13, 'Perjalanan Dinas Luar Kota Survey BLT Dana Desa di Kubu Raya', 0, '2022-10-19 01:01:00', '2022-10-19 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 09:59:22', '2022-01-02 10:10:48'),
(142, 2, 13, 'Perjalanan Dinas Luar Kota Survey BLT Dana Desa di Mempawah', 0, '2022-10-24 01:01:00', '2022-10-24 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 10:00:09', '2022-01-02 10:10:29'),
(143, 2, 15, 'Penyusunan Laporan Kajian Fiskal Regional Triwulan III-2022 (Preliminary )i', 0, '2022-10-01 01:01:00', '2022-10-28 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 10:00:47', '2022-01-02 10:17:43'),
(144, 2, 13, 'Perjalanan Dinas Luar Kota Pembinaan Pengelolaan Keuangan Daerah ke Kayong Utara', 0, '2022-11-09 01:01:00', '2022-11-11 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 10:01:35', '2022-01-02 10:10:07'),
(145, 2, 15, 'Penyusunan Laporan Kajian Fiskal Regional Triwulan III-2022 (Final)', 0, '2022-09-01 01:01:00', '2022-09-15 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 10:02:12', '2022-01-02 10:17:19'),
(146, 2, 17, 'Perjalanan Dinas Dalam Kota Survey KUR Semester II Tahun 2022 (dalam kota)', 0, '2022-11-16 01:01:00', '2022-11-17 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 10:03:19', '2022-01-02 10:22:05'),
(147, 2, 13, 'Pembinaan Pengelolaan Keuangan Daerah ke Pontianak (Pemda Kota/Provinsi)', 0, '2022-11-14 01:01:00', '2022-11-21 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 10:04:27', '2022-01-02 10:04:27'),
(148, 2, 17, 'Perjalanan Dinas Dalam Kota Survey KUR Semester II Tahun 2022 (luar kota kota)', 0, '2022-11-27 01:01:00', '2022-11-29 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 10:05:19', '2022-01-02 10:05:19'),
(149, 2, 15, 'FGD/Forkom terkait Pengelolaan BLUD Perjalanan luar kota BLUD (Kab. Ketapang)', 0, '2022-11-21 01:01:00', '2022-11-23 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 10:06:23', '2022-01-02 10:06:23'),
(150, 2, 17, 'Sosialisasi/Rakor/FGD Penyaluran KUR dan UMi se-Kalbar secara online', 0, '2022-12-12 01:01:00', '2022-12-12 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-02 10:08:02', '2022-01-02 10:08:02'),
(152, 2, 3, 'Penyusunan Laporan RPA Semester II tahun 2021', 0, '2022-02-01 01:01:00', '2022-02-14 12:00:00', 'BELUM DILAKSANAKAN', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-02 16:21:38', '2022-01-02 17:15:06'),
(153, 2, 3, 'Penyerahan Penghargaan Satker dengan IKPA terbaik Semester I tahun 2022', 0, '2022-09-01 01:01:00', '2022-09-01 12:00:00', 'BELUM DILAKSANAKAN', 1, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-02 16:23:36', '2022-07-26 20:22:08'),
(154, 2, 3, 'Pelaksanaan Evaluasi Pelaksanaan Anggaran (EPA) Satker bulan April', 0, '2022-04-06 01:01:00', '2022-04-06 12:00:00', 'BELUM DILAKSANAKAN', 1, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-02 16:25:27', '2022-01-02 16:34:39'),
(155, 2, 3, 'Pelaksanaan Evaluasi Pelaksanaan Anggaran (EPA) Satker bulan Maret', 0, '2022-03-10 13:30:00', '2022-03-10 16:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/b5d36f0008a120f2947bad7d831ef51e.pdf', NULL, NULL, 'uploads/foto_kegiatan/726c916f4f03bff5b2ece12ac365a0b2.png', '2022-01-02 16:26:32', '2022-03-24 00:44:44'),
(160, 2, 3, 'Pelaksanaan Evaluasi Pelaksanaan Anggaran (EPA) Satker bulan Juni', 0, '2022-06-06 01:01:00', '2022-06-06 12:00:00', 'BELUM DILAKSANAKAN', 1, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-02 16:38:08', '2022-05-20 03:11:58'),
(162, 2, 3, 'Monev PNBP Semester I tahun 2022', 0, '2022-08-29 01:01:00', '2022-08-31 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-02 16:42:44', '2022-07-26 21:03:04'),
(163, 2, 3, 'Pelaksanaan Evaluasi Pelaksanaan Anggaran (EPA) dan Monev PA Semester I 2022', 0, '2022-07-04 01:01:00', '2022-07-08 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-02 16:45:19', '2022-01-02 16:48:53'),
(164, 2, 3, 'Pelaksanaan Koordinasi dan Konsolidasi dengan Kasi PD dan PDMS KPPN', 0, '2022-08-05 01:01:00', '2022-08-05 12:00:00', 'BELUM DILAKSANAKAN', 1, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-02 16:49:05', '2022-07-26 20:23:06'),
(165, 2, 3, 'Pelaksanaan Evaluasi Pelaksanaan Anggaran (EPA) Satker bulan Oktober', 0, '2022-10-05 01:01:00', '2022-10-05 12:00:00', 'BELUM DILAKSANAKAN', 1, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-02 16:49:26', '2022-01-02 16:56:41'),
(166, 2, 3, 'Pelaksanaan Evaluasi Pelaksanaan Anggaran (EPA) Satker bulan September', 0, '2022-09-06 01:01:00', '2022-09-06 12:00:00', 'BELUM DILAKSANAKAN', 1, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-02 16:56:07', '2022-01-02 16:56:07'),
(167, 2, 3, 'FGD Pembinaan BLU Akhir Tahun', 0, '2022-10-17 01:01:00', '2022-10-17 12:00:00', 'BELUM DILAKSANAKAN', 1, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-02 16:59:02', '2022-01-02 16:59:02'),
(168, 2, 3, 'Monev PNBP Semester II tahun 2021', 0, '2022-02-16 01:01:00', '2022-02-18 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-02 16:59:07', '2022-01-02 16:59:07'),
(169, 2, 3, 'Batasa Akhir Revisi Halaman III DIPA Triwulan IV', 0, '2022-10-10 01:01:00', '2022-10-14 12:00:00', 'BELUM DILAKSANAKAN', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-02 17:01:05', '2022-01-02 17:01:05'),
(170, 2, 3, 'Batas Akhir Revisi Kewenangan Kanwil DJPb', 0, '2022-12-23 01:01:00', '2022-12-27 12:00:00', 'BELUM DILAKSANAKAN', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-02 17:02:15', '2022-02-24 18:28:51'),
(172, 2, 3, 'Penyusunan Laporan RPA Semester I tahun 2022', 0, '2022-07-22 01:01:00', '2022-08-22 12:00:00', 'BELUM DILAKSANAKAN', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-02 17:14:45', '2022-07-25 22:32:59'),
(173, 2, 19, 'Kegiatan Rapat Awal Tahun 2022 oleh Kepala Kanwil DJPb Prov. Kalimantan Barat', 0, '2021-01-03 03:00:00', '2021-01-03 17:00:00', 'SELESAI', 1, NULL, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/6f961f1cc7b983860e4087f256b400d3.pdf', NULL, NULL, NULL, '2022-01-03 00:37:56', '2022-01-03 03:58:08'),
(175, 2, 29, 'Rapat Koordinasi Penerimaan Negara  Akhir Tahun Anggaran dengan, Kanwil Pajak/KPP, Kanwil Bea Cukai, Pemda Prov Kalbar, Pemkot Kota dan Kab Kubu Raya serta  Bank/Pos Persepsi', 0, '2022-12-15 08:01:00', '2022-12-15 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-03 01:57:52', '2022-01-05 00:22:33'),
(176, 2, 29, 'Forum Koordinasi Kanwil dan KPPN (Triwulanan) berupa diskusi tematik oleh Bagian/Bidang sekaligus update kondisi pelaksanaan Tupoksi', 0, '2022-04-18 08:01:00', '2022-04-18 12:00:00', 'RESCHEDULE', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-03 01:59:19', '2022-07-21 21:41:17'),
(177, 2, 29, 'Forum Koordinasi Kanwil dan KPPN (Triwulanan) berupa diskusi tematik oleh Bagian/Bidang sekaligus update kondisi pelaksanaan Tupoksi', 0, '2022-06-20 08:01:00', '2022-06-20 12:00:00', 'RESCHEDULE', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-03 01:59:32', '2022-07-21 21:41:36'),
(178, 2, 29, 'Forum Koordinasi Kanwil dan KPPN (Triwulanan) berupa diskusi tematik oleh Bagian/Bidang sekaligus update kondisi pelaksanaan Tupoksi', 0, '2022-10-17 08:01:00', '2022-10-17 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-03 02:00:09', '2022-01-05 18:06:01'),
(179, 2, 29, 'Forum Koordinasi Kanwil dan KPPN (Triwulanan) berupa diskusi tematik oleh Bagian/Bidang sekaligus update kondisi pelaksanaan Tupoksi', 0, '2022-12-19 08:01:00', '2022-12-19 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-03 02:01:08', '2022-01-05 00:20:23'),
(180, 2, 19, 'Pengambilan Sumpah/ Jabatan PNS di Lingkungan DJPb Provinsi Kalimantan Barat', 0, '2021-01-06 01:01:00', '2021-01-06 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-03 03:23:28', '2022-01-03 03:33:28'),
(181, 2, 19, 'Capacity Building', 0, '2021-02-01 01:01:00', '2021-02-28 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-03 03:34:36', '2022-01-03 03:34:36'),
(182, 2, 19, 'Perjalanan Dinas dalam Rangka Pembinaan UAPPA-W', 0, '2021-01-01 01:01:00', '2021-01-31 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-03 03:39:00', '2022-01-03 03:39:00'),
(183, 2, 2, 'Perjalanan Dinas dalam Rangka Pembinaan UAPPA-W', 0, '2021-02-01 01:01:00', '2021-02-28 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-03 03:40:03', '2022-01-03 03:40:03'),
(184, 2, 19, 'Perjalanan Dinas dalam Rangka Pembinaan UAPPA-W', 0, '2021-01-01 01:01:00', '2021-12-31 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-03 03:40:32', '2022-01-03 03:40:32'),
(185, 2, 19, 'Pembinaan KPPN', 0, '2021-05-01 01:01:00', '2021-05-31 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-03 03:41:47', '2022-01-03 03:41:47'),
(187, 2, 3, 'Pelaksanaan Evaluasi Pelaksanaan Anggaran (EPA) Satker bulan November', 0, '2022-11-08 01:01:00', '2022-11-08 12:00:00', 'BELUM DILAKSANAKAN', 1, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-04 18:18:18', '2022-01-04 18:18:46'),
(188, 2, 3, 'Pelaksanaan Evaluasi Pelaksanaan Anggaran (EPA) Satker bulan Desember', 0, '2022-12-06 01:01:00', '2022-12-06 12:00:00', 'BELUM DILAKSANAKAN', 1, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-04 18:18:55', '2022-01-04 18:19:17'),
(189, 2, 29, 'Monev Implementasi MPN dan Kajian PNBP', 0, '2022-06-01 08:01:00', '2022-06-01 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-05 18:14:41', '2022-04-07 20:15:36'),
(190, 2, 29, 'Monev Implementasi MPN dan Kajian PNBP', 0, '2022-07-04 08:01:00', '2022-07-04 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-05 18:14:56', '2022-01-05 18:15:16'),
(191, 2, 29, 'Monev sertifikasi pejabat perbendaharaan', 0, '2022-09-05 08:01:00', '2022-09-05 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-05 18:16:39', '2022-01-05 18:16:39'),
(192, 2, 31, 'Pendaftaran Vendor pada aplikasi Marketplace Digipay', 0, '2022-01-10 08:01:00', '2022-01-10 12:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/aa424c0c511424764f067364234f5602.pdf', NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/39e04746ea031a5a53eab2ca92ec8946.pdf', NULL, NULL, NULL, '2022-01-05 18:27:56', '2022-01-11 00:36:35'),
(193, 2, 31, 'Monev implementasi marketplace digipay Bank BRI', 0, '2022-02-09 08:01:00', '2022-02-09 12:00:00', 'RESCHEDULE', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-05 19:02:33', '2022-04-04 01:02:45'),
(194, 2, 31, 'Monev implementasi marketplace digipay Bank Mandiri', 0, '2022-02-10 08:01:00', '2022-02-10 12:00:00', 'RESCHEDULE', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-05 19:03:09', '2022-04-04 01:02:54'),
(195, 2, 31, 'Monev implementasi marketplace digipay Bank BNI', 0, '2022-02-11 08:01:00', '2022-02-11 12:00:00', 'RESCHEDULE', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-05 19:03:13', '2022-04-04 01:03:02'),
(196, 2, 33, 'Pembahasan Profil Resiko', 0, '2022-01-26 09:01:00', '2022-01-26 12:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/8d3e53e3ec77b4e303da1a0eafe58639.pdf', NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/3accd26700fe7fa7d74cad23275d912d.pdf', NULL, 'uploads/file_notula/9e8efbbb99cea0bc5a02aa787b1b8793.pdf', NULL, '2022-01-05 23:46:57', '2022-07-26 01:51:54'),
(202, 2, 33, 'Pemantauan Kode Etik dan Kepatuhan Pegawai KPPN Singkawang', 0, '2022-03-30 08:01:00', '2022-03-30 12:00:00', 'SELESAI', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-08 06:21:21', '2022-07-24 19:38:59'),
(203, 2, 29, 'Koordinasi Persiapan Sidang Pleno dan Koordinasi dalam rangka penilaian jabatan fungsional', 0, '2022-01-20 14:01:00', '2022-01-20 16:01:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/4923dd2412b207f48ee6ef5e27d49029.pdf', NULL, NULL, 'uploads/foto_kegiatan/f738482bbcdd2e154b19f7c5efaecc33.jpeg', '2022-01-10 20:30:09', '2022-04-07 20:26:28'),
(204, 2, 36, 'Analisis hasil telaah laporan keuangan tingkat UAPPAW', 0, '2022-06-13 08:01:00', '2022-06-24 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 18:44:24', '2022-06-29 20:37:25'),
(205, 2, 36, 'Monitoring dan evaluasi implemetasi SAKTI Modul Pelaporan', 0, '2022-03-28 08:01:00', '2022-03-31 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 18:45:52', '2022-04-04 21:10:57'),
(206, 2, 36, 'Monitoring dan evaluasi implemetasi SAKTI Modul Pelaporan', 0, '2022-09-26 08:01:00', '2022-09-30 17:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 18:47:27', '2022-01-12 20:06:05'),
(207, 2, 36, 'Penyerahan Penghargaan LK UAPPA-W Terbaik lingkup Kanwil DJPb Provinsi Kalimantan Barat Tahun 2021', 0, '2022-09-14 08:01:00', '2022-09-14 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 18:55:59', '2022-08-11 21:11:32'),
(208, 2, 36, 'Penyerahan Penghargaan LK UAKBUN-D KPPN Terbaik lingkup Kanwil DJPb Provinsi Kalimantan Barat', 0, '2022-07-14 09:01:00', '2022-07-14 12:00:00', 'RESCHEDULE', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 18:57:43', '2022-07-25 05:26:24'),
(209, 2, 36, 'Analisis hasil telaah laporan keuangan tingkat UAPPAW', 0, '2022-09-01 08:01:00', '2022-09-10 17:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 18:58:52', '2022-08-11 21:05:46'),
(210, 2, 36, 'Penilaian LK BUN-D KPPN lingkup Kalimantan Barat bulan Juli 2022', 0, '2022-08-22 08:01:00', '2022-08-31 17:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 19:00:03', '2022-01-12 19:00:03'),
(211, 2, 36, 'Penilaian LK BUN-D KPPN lingkup Kalimantan Barat bulan Agustus 2022', 0, '2022-09-26 08:01:00', '2022-09-30 17:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 19:01:26', '2022-01-12 19:01:26'),
(212, 2, 36, 'Penilaian LK BUN-D KPPN lingkup Kalimantan Barat bulan September 2022', 0, '2022-10-24 08:01:00', '2022-10-31 17:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 19:02:19', '2022-01-12 19:02:19'),
(213, 2, 36, 'Penilaian LK BUN-D KPPN lingkup Kalimantan Barat bulan Oktober 2022', 0, '2022-11-21 08:01:00', '2022-11-30 17:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 19:04:04', '2022-01-12 19:04:04'),
(214, 2, 36, 'Penilaian LK BUN-D KPPN lingkup Kalimantan Barat bulan November 2022', 0, '2022-12-26 08:01:00', '2022-12-30 17:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 19:04:56', '2022-01-12 19:04:56'),
(215, 2, 38, 'Bimbingan Teknis Penyusunan Statistik Keuangan Pemerintah Daerah pada BKAD Provinsi Kalimantan Barat', 0, '2022-01-13 09:01:00', '2022-01-13 12:00:00', 'SELESAI', 1, 1, 1, NULL, 'uploads/file_rab/6cd131bdc1530c076c798d1bc7e38b3d.pdf', 'uploads/file_st/2c0490014756ec1207dee31052054891.pdf', NULL, 0, 0, 0, 'uploads/file_und/d86a0dcdd00a0483f5f27f5cd7ea4b09.pdf', NULL, NULL, NULL, '2022-01-12 19:11:57', '2022-01-13 02:53:30'),
(216, 2, 38, 'Pengumpulan LKPD lingkup Kalimantan Barat periode Tahun 2021 - Preliminary', 0, '2022-01-10 08:01:00', '2022-02-11 17:00:00', 'SELESAI', 1, 0, 0, NULL, 'uploads/file_rab/c4fd36c75acf3f68651f59e2bed02019.pdf', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 19:15:52', '2022-04-04 21:24:39'),
(217, 2, 38, 'Pengumpulan LKPD lingkup Kalimantan Barat periode Tahun 2021 - Unaudited dan Triwulan I Tahun 2022', 0, '2022-03-15 08:01:00', '2022-04-08 17:00:00', 'IN PROGRESS', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 19:19:04', '2022-03-15 00:25:15'),
(218, 2, 38, 'Pengumpulan LKPD lingkup Kalimantan Barat periode Semester I Tahun 2022', 0, '2022-06-20 08:01:00', '2022-07-15 17:00:00', 'IN PROGRESS', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 19:24:51', '2022-06-29 20:39:46'),
(219, 2, 38, 'Pengumpulan LKPD lingkup Kalimantan Barat periode Tahun 2021 - Audited', 0, '2022-07-25 08:01:00', '2022-08-19 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 19:26:04', '2022-07-25 05:24:41'),
(220, 2, 38, 'Pengumpulan LKPD lingkup Kalimantan Barat periode Triwulan III Tahun 2022', 0, '2022-09-26 08:01:00', '2022-10-14 17:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 19:27:51', '2022-01-12 19:27:51'),
(221, 2, 40, 'Analisis laporan keuangan Badan Layanan Umum (BLU)', 0, '2022-01-10 08:01:00', '2022-01-14 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 19:44:45', '2022-04-04 21:26:36'),
(222, 2, 40, 'Ideal DataKeu (Identifikasi Awal Data Keuangan): monitoring pelaksanaan dan tindak lanjut rekonsiliasi pada KPPN', 0, '2022-01-17 08:01:00', '2022-01-21 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 19:45:56', '2022-04-04 21:26:16'),
(223, 2, 40, 'Monitoring dan evaluasi pengiriman LK-BUN Tingkat Kuasa BUN KPPN dalam wilayah kerja Kanwil', 0, '2022-01-22 08:01:00', '2022-01-28 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 19:47:20', '2022-04-04 21:25:59'),
(224, 2, 40, 'Melakukan monitoring dan evaluasi LK Tingkat Kuasa BUN Daerah', 0, '2022-02-07 08:01:00', '2022-02-11 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 19:53:25', '2022-03-07 00:52:49'),
(225, 2, 40, 'Ideal DataKeu (Identifikasi Awal Data Keuangan): monitoring pelaksanaan dan tindak lanjut rekonsiliasi pada KPPN', 0, '2022-02-14 08:01:00', '2022-02-18 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 19:54:36', '2022-03-07 00:48:15'),
(226, 2, 40, 'Ideal DataKeu (Identifikasi Awal Data Keuangan): monitoring pelaksanaan dan tindak lanjut rekonsiliasi pada KPPN', 0, '2022-03-14 08:01:00', '2022-03-18 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 19:55:21', '2022-04-04 21:05:13'),
(227, 2, 40, 'Monitoring dan evaluasi pengiriman LK-BUN Tingkat Kuasa BUN KPPN dalam wilayah kerja Kanwil', 0, '2022-03-21 08:01:00', '2022-03-25 17:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 19:56:12', '2022-01-12 19:56:12');
INSERT INTO `kegiatans` (`id`, `kode_djpb_id`, `struktur_id`, `uraian`, `anggaran`, `tgl_mulai`, `tgl_selesai`, `status_pelaksanaan`, `is_strategis`, `is_perjalanan_dinas`, `is_sosialisasi`, `file_lk`, `file_rab`, `file_st`, `file_spd`, `is_kakanwil`, `is_gubernur`, `is_bupati`, `file_und`, `file_presensi`, `file_notula`, `foto_kegiatan`, `created_at`, `updated_at`) VALUES
(228, 2, 40, 'Analisis laporan keuangan Badan Layanan Umum (BLU)', 0, '2022-04-11 08:01:00', '2022-04-14 17:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 19:57:00', '2022-01-12 19:57:00'),
(229, 2, 40, 'Ideal DataKeu (Identifikasi Awal Data Keuangan): monitoring pelaksanaan dan tindak lanjut rekonsiliasi pada KPPN', 0, '2022-04-18 08:01:00', '2022-04-22 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 19:58:08', '2022-04-26 19:34:54'),
(230, 2, 40, 'Ideal DataKeu (Identifikasi Awal Data Keuangan): monitoring pelaksanaan dan tindak lanjut rekonsiliasi pada KPPN', 0, '2022-05-17 08:01:00', '2022-05-20 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 20:00:27', '2022-06-17 01:19:01'),
(231, 2, 40, 'Ideal DataKeu (Identifikasi Awal Data Keuangan): monitoring pelaksanaan dan tindak lanjut rekonsiliasi pada KPPN', 0, '2022-09-19 08:01:00', '2022-09-23 17:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 20:01:24', '2022-01-12 20:04:46'),
(232, 2, 40, 'Ideal DataKeu (Identifikasi Awal Data Keuangan): monitoring pelaksanaan dan tindak lanjut rekonsiliasi pada KPPN', 0, '2022-06-13 08:01:00', '2022-06-17 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 20:02:52', '2022-06-29 20:40:20'),
(233, 2, 40, 'Ideal DataKeu (Identifikasi Awal Data Keuangan): monitoring pelaksanaan dan tindak lanjut rekonsiliasi pada KPPN', 0, '2022-07-11 08:01:00', '2022-07-22 17:00:00', 'IN PROGRESS', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 20:03:32', '2022-07-25 05:24:15'),
(234, 2, 40, 'Ideal DataKeu (Identifikasi Awal Data Keuangan): monitoring pelaksanaan dan tindak lanjut rekonsiliasi pada KPPN', 0, '2022-12-12 08:01:00', '2022-12-16 17:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 20:04:14', '2022-01-12 20:16:33'),
(235, 2, 36, 'Monitoring dan evaluasi implemetasi SAKTI Modul Pelaporan', 0, '2022-06-27 08:01:00', '2022-06-30 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 20:05:49', '2022-06-29 20:38:37'),
(236, 2, 36, 'Ideal DataKeu (Identifikasi Awal Data Keuangan): monitoring pelaksanaan dan tindak lanjut rekonsiliasi pada KPPN', 0, '2022-08-01 08:01:00', '2022-08-01 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 20:14:41', '2022-08-11 21:07:49'),
(237, 2, 40, 'Ideal DataKeu (Identifikasi Awal Data Keuangan): monitoring pelaksanaan dan tindak lanjut rekonsiliasi pada KPPN', 0, '2022-10-17 08:01:00', '2022-10-21 17:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 20:15:53', '2022-01-12 20:15:53'),
(238, 2, 40, 'Ideal DataKeu (Identifikasi Awal Data Keuangan): monitoring pelaksanaan dan tindak lanjut rekonsiliasi pada KPPN', 0, '2022-11-14 08:01:00', '2022-11-18 17:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 20:16:19', '2022-01-12 20:16:19'),
(239, 2, 35, 'Pembuatan dan publikasi konten MAKSI (Mari Kenal Akuntansi) pada instagram, facebook, dan twitter', 0, '2022-06-27 08:01:00', '2022-06-30 17:00:00', 'IN PROGRESS', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 20:24:09', '2022-06-29 20:57:21'),
(240, 2, 35, 'Pembuatan dan publikasi konten MAKSI (Mari Kenal Akuntansi) pada instagram, facebook, dan twitter', 0, '2022-03-28 08:01:00', '2022-03-31 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 20:25:33', '2022-03-14 00:55:34'),
(241, 2, 35, 'Pembuatan dan publikasi konten MAKSI (Mari Kenal Akuntansi) pada instagram, facebook, dan twitter', 0, '2022-12-26 08:01:00', '2022-12-30 17:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 20:26:40', '2022-01-12 20:28:46'),
(242, 2, 35, 'Pembuatan FAQ Akuntansi dan Pelaporan Keuangan', 0, '2022-12-26 08:01:00', '2022-12-30 17:00:00', 'BELUM DILAKSANAKAN', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-12 20:27:46', '2022-01-12 20:28:27'),
(243, 2, 35, 'Pembuatan FAQ Akuntansi dan Pelaporan Keuangan', 0, '2022-06-26 08:01:00', '2022-06-30 17:00:00', 'BELUM DILAKSANAKAN', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-12 20:28:12', '2022-01-12 20:28:12'),
(244, 2, 35, 'Pembuatan dan publikasi konten MAKSI (Mari Kenal Akuntansi) pada instagram, facebook, dan twitter', 0, '2022-09-26 08:01:00', '2022-09-30 17:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-12 20:28:34', '2022-01-12 20:28:34'),
(245, 2, 19, 'Penyerahan DIPA dan TKDD', 0, '2022-12-01 01:01:00', '2022-12-01 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, '2022-01-14 00:22:25', '2022-01-14 00:22:25'),
(247, 2, 22, 'I Love Monday Ke-2 Triwulan I', 0, '2022-01-17 01:01:00', '2022-01-17 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 00:28:54', '2022-01-14 00:30:56'),
(248, 2, 22, 'I Love Monday Ke-3 Triwulan I', 0, '2022-01-31 01:01:00', '2022-01-31 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 00:29:53', '2022-01-14 00:31:51'),
(249, 2, 22, 'I Love Monday Ke-4 Triwulan I', 0, '2022-02-14 01:01:00', '2022-02-14 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 00:32:45', '2022-01-14 00:32:59'),
(250, 2, 22, 'I Love Monday Ke-5 Triwulan I', 0, '2022-02-28 01:01:00', '2022-02-28 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 00:34:41', '2022-01-14 00:34:41'),
(251, 2, 22, 'I Love Monday Ke-6 Triwulan I', 0, '2022-03-14 01:01:00', '2022-03-14 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 00:35:24', '2022-01-14 00:40:59'),
(252, 2, 22, 'I Love Monday Ke-7 Triwulan I', 0, '2022-03-28 01:01:00', '2022-03-28 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 00:41:59', '2022-01-14 00:41:59'),
(255, 2, 22, 'Gugus Kendali Mutu', 0, '2022-01-10 01:01:00', '2022-01-14 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 00:58:16', '2022-01-14 00:58:16'),
(256, 2, 22, 'Gugus Kendali Mutu', 0, '2022-01-24 01:01:00', '2022-01-28 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 00:58:21', '2022-01-14 00:59:19'),
(257, 2, 22, 'Gugus Kendali Mutu', 0, '2022-02-07 01:01:00', '2022-02-11 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 00:58:42', '2022-01-14 00:59:47'),
(258, 2, 22, 'Gugus Kendali Mutu', 0, '2022-02-21 01:01:00', '2022-02-25 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 00:58:44', '2022-01-14 01:00:07'),
(259, 2, 22, 'Gugus Kendali Mutu', 0, '2022-03-07 01:01:00', '2022-03-11 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 00:58:46', '2022-01-14 01:00:35'),
(260, 2, 22, 'Gugus Kendali Mutu', 0, '2022-03-21 01:01:00', '2022-03-25 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 00:58:50', '2022-01-14 01:04:32'),
(261, 2, 24, 'Melakukan Perjalanan Dinas dalam rangka Pembinaan UAPPA-W', 0, '2022-01-28 01:01:00', '2022-01-30 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 01:06:25', '2022-01-14 01:06:25'),
(262, 2, 24, 'Melakukan Perjalanan Dinas dalam rangka Pembinaan UAPPA-W', 0, '2022-02-16 01:01:00', '2022-02-18 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 01:06:47', '2022-01-14 01:07:12'),
(263, 2, 24, 'Melakukan Perjalanan Dinas dalam rangka Pembinaan UAPPA-W', 0, '2022-03-05 01:01:00', '2022-03-07 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 01:06:48', '2022-01-14 01:07:39'),
(266, 2, 19, 'Rapat Pembahasan Profil Kanwil', 0, '2022-01-07 01:01:00', '2022-01-07 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, 'uploads/file_notula/78fa331a9220819fc7d39db2a5895ae3.docx', NULL, '2022-01-14 01:09:41', '2022-03-24 21:18:06'),
(267, 2, 22, 'Diskusi Mutasi Pelaksana', 0, '2022-05-02 01:01:00', '2022-05-06 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 01:39:58', '2022-01-14 01:39:58'),
(268, 2, 22, 'Diskusi Mutasi Pelaksana', 0, '2022-11-01 01:01:00', '2022-11-04 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 01:40:10', '2022-01-14 01:40:55'),
(281, 2, 19, 'Capacity Building', 0, '2022-02-13 01:01:00', '2022-02-19 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 01:57:38', '2022-01-14 01:57:38'),
(282, 2, 24, 'Melakukan Perjalanan Dinas dalam rangka Pembinaan UAPPA-W', 0, '2022-03-12 01:01:00', '2022-03-14 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:00:04', '2022-01-14 02:00:29'),
(283, 2, 24, 'Melakukan Perjalanan Dinas dalam rangka Pembinaan UAPPA-W', 0, '2022-03-26 01:01:00', '2022-03-28 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:00:05', '2022-01-14 02:00:46'),
(286, 2, 26, 'DKO Bulan Maret 2022', 0, '2022-03-18 16:00:00', '2022-03-18 17:30:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/4302ff7b4b6768219c161a10f7fa1ab2.pdf', NULL, 'uploads/file_notula/e9e3e22efe30688262b6020e63437ff7.pdf', 'uploads/foto_kegiatan/f1b6318bb380836a717031975550293c.jpg', '2022-01-14 02:03:43', '2022-07-27 04:04:07'),
(287, 2, 26, 'DKO Triwulan I Tahun 2022_Kanwil', 0, '2022-04-11 10:00:00', '2022-04-11 11:30:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/e8dc04ea9bd432a22d64b47cd5f3feb5.pdf', NULL, 'uploads/file_notula/4b9556189fe6e03b8f3aabb078aa58fd.pdf', 'uploads/foto_kegiatan/e2922c06e45a95bc17b3617d5faf6fa8.jpeg', '2022-01-14 02:03:45', '2022-07-27 04:19:03'),
(288, 2, 26, 'DKO Bulan Mei', 0, '2022-05-24 16:00:00', '2022-05-24 17:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, 'uploads/file_notula/b69c33564ed202caeecdc6650e86ecf2.pdf', NULL, '2022-01-14 02:03:46', '2022-07-27 04:28:13'),
(289, 2, 26, 'DKO Bulan Juni', 0, '2022-06-01 16:00:00', '2022-06-10 17:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, 'uploads/file_notula/11d72db9351e335e1e541c95b7b0172f.pdf', NULL, '2022-01-14 02:03:48', '2022-07-27 04:26:25'),
(290, 2, 26, 'DKO Triwulan II Tahun 2022_Kanwil dan KPPN', 0, '2022-07-06 10:00:00', '2022-07-06 11:59:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, 'uploads/file_notula/429868e514a424c90e85b0c7948bef2e.pdf', NULL, '2022-01-14 02:19:12', '2022-07-27 04:43:55'),
(291, 2, 26, 'DKO Bulan Agustus', 0, '2022-08-01 01:01:00', '2022-08-10 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:19:14', '2022-07-27 03:50:58'),
(292, 2, 26, 'DKO Bulan September', 0, '2022-09-01 01:01:00', '2022-09-10 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:19:18', '2022-07-27 03:50:39'),
(293, 2, 26, 'DKO Triwulan III', 0, '2022-10-01 01:01:00', '2022-10-10 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:19:23', '2022-07-27 03:50:18'),
(294, 2, 26, 'DKO Bulan November', 0, '2022-11-01 01:01:00', '2022-11-10 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:19:24', '2022-07-27 03:49:57'),
(295, 2, 26, 'DKO Bulan Desember', 0, '2022-12-01 01:01:00', '2022-12-10 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:19:26', '2022-07-27 03:49:36'),
(300, 2, 15, 'FGD Penyusunan Kajian Fiskal Regional bersama Dosen UNTAN dan Badan Pusat Statistik', 0, '2021-01-22 09:00:00', '2021-01-22 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:29:02', '2022-01-14 02:29:02'),
(302, 2, 22, 'Agenda Pengembangan Generasi Centennial DJPb Kalbar', 0, '2022-01-24 01:01:00', '2022-01-24 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:31:57', '2022-01-14 02:31:57'),
(303, 2, 22, 'Agenda Pengembangan Generasi Centennial DJPb Kalbar', 0, '2022-02-22 01:01:00', '2022-02-22 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:31:59', '2022-01-14 02:35:56'),
(304, 2, 22, 'Agenda Pengembangan Generasi Centennial DJPb Kalbar', 0, '2022-03-29 01:01:00', '2022-03-29 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:32:01', '2022-01-14 02:36:21'),
(305, 2, 22, 'Agenda Pengembangan Generasi Centennial DJPb Kalbar', 0, '2022-04-26 01:01:00', '2022-04-26 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:32:02', '2022-01-14 02:36:40'),
(306, 2, 22, 'Agenda Pengembangan Generasi Centennial DJPb Kalbar', 0, '2022-05-24 01:01:00', '2022-05-24 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:32:04', '2022-01-14 02:40:03'),
(307, 2, 22, 'Agenda Pengembangan Generasi Centennial DJPb Kalbar', 0, '2022-06-28 01:01:00', '2022-06-28 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:32:05', '2022-01-14 02:47:27'),
(308, 2, 22, 'Agenda Pengembangan Generasi Centennial DJPb Kalbar', 0, '2022-07-26 01:01:00', '2022-07-26 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:32:07', '2022-01-14 02:48:13'),
(309, 2, 22, 'Agenda Pengembangan Generasi Centennial DJPb Kalbar', 0, '2022-08-30 01:01:00', '2022-08-30 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:32:08', '2022-01-14 02:48:49'),
(310, 2, 22, 'Agenda Pengembangan Generasi Centennial DJPb Kalbar', 0, '2022-09-27 01:01:00', '2022-09-27 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:32:10', '2022-01-14 02:49:25'),
(311, 2, 22, 'Agenda Pengembangan Generasi Centennial DJPb Kalbar', 0, '2022-10-25 01:01:00', '2022-10-25 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:32:12', '2022-01-14 02:49:56'),
(312, 2, 22, 'Agenda Pengembangan Generasi Centennial DJPb Kalbar', 0, '2022-11-29 01:01:00', '2022-11-29 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:50:15', '2022-01-14 02:50:26'),
(313, 2, 22, 'Agenda Pengembangan Generasi Centennial DJPb Kalbar', 0, '2022-12-20 01:01:00', '2022-12-20 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:50:34', '2022-01-14 02:50:45'),
(314, 2, 19, 'Penyampaian Quick Win', 0, '2022-03-31 01:01:00', '2022-03-31 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:52:46', '2022-01-14 02:52:46'),
(315, 2, 19, 'Penyampaian Quick Win', 0, '2022-06-30 01:01:00', '2022-06-30 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:53:17', '2022-01-14 02:53:46'),
(316, 2, 19, 'Penyampaian Quick Win', 0, '2022-09-30 01:01:00', '2022-09-30 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:53:20', '2022-01-14 02:54:03'),
(317, 2, 19, 'Penyampaian Quick Win', 0, '2022-12-28 01:01:00', '2022-12-28 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:53:21', '2022-01-14 02:54:26'),
(318, 2, 20, 'Rapat Kehumasan', 0, '2021-01-18 01:01:00', '2021-01-22 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 02:59:37', '2022-01-14 02:59:37'),
(319, 2, 20, 'Rapat Kehumasan', 0, '2021-02-22 01:01:00', '2021-02-26 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:05:04', '2022-01-14 03:05:27'),
(320, 2, 20, 'Rapat Kehumasan', 0, '2021-03-22 01:01:00', '2021-03-26 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:06:09', '2022-01-14 03:06:21'),
(321, 2, 20, 'Rapat Kehumasan', 0, '2021-04-19 01:01:00', '2021-04-23 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:06:24', '2022-01-14 03:06:33'),
(322, 2, 20, 'Rapat Kehumasan', 0, '2021-05-17 01:01:00', '2021-05-21 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:06:36', '2022-01-14 03:06:46'),
(323, 2, 20, 'Rapat Kehumasan', 0, '2021-06-21 01:01:00', '2021-06-25 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:06:53', '2022-01-14 03:07:02'),
(324, 2, 20, 'Rapat Kehumasan', 0, '2021-07-19 01:01:00', '2021-07-23 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:07:06', '2022-01-14 03:07:22'),
(325, 2, 20, 'Rapat Kehumasan', 0, '2021-08-16 01:01:00', '2021-08-20 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:07:31', '2022-01-14 03:07:39'),
(326, 2, 20, 'Rapat Kehumasan', 0, '2021-09-20 01:01:00', '2021-09-24 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:07:43', '2022-01-14 03:07:51'),
(327, 2, 20, 'Rapat Kehumasan', 0, '2021-10-18 01:01:00', '2021-10-22 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:07:54', '2022-01-14 03:08:02'),
(328, 2, 20, 'Rapat Kehumasan', 0, '2021-11-22 01:01:00', '2021-11-26 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:08:06', '2022-01-14 03:08:14'),
(329, 2, 20, 'Rapat Kehumasan', 0, '2021-12-20 01:01:00', '2021-12-24 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:08:18', '2022-01-14 03:08:26'),
(330, 2, 19, 'Agenda Kemenkeu Satu', 0, '2022-01-24 01:01:00', '2022-01-28 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:10:25', '2022-01-14 03:45:51'),
(337, 2, 20, 'Penilaian tingkat kerusakan rumah dinas', 0, '2022-02-01 01:01:00', '2022-02-28 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:16:12', '2022-01-14 03:16:12'),
(338, 2, 20, 'Rehab Rumah Jabatan Kepala KPPN Pontianak', 0, '2022-02-01 01:01:00', '2022-03-31 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:19:06', '2022-01-14 03:19:06'),
(339, 2, 19, 'Konsultasi Ke Setditjen / Sekretariat Jenderal', 0, '2022-03-01 01:01:00', '2022-03-04 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:26:11', '2022-01-14 03:27:32'),
(340, 2, 19, 'Konsultasi Ke Setditjen / Sekretariat Jenderal', 0, '2022-09-01 01:01:00', '2022-09-02 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:27:36', '2022-01-14 03:28:00'),
(341, 2, 22, 'Sidang Pleno Penetapan Angka Kredit Jafung PTPN', 0, '2022-03-01 01:01:00', '2022-03-31 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:31:23', '2022-01-14 03:31:23'),
(342, 2, 22, 'Sidang Pleno Penetapan Angka Kredit Jafung PTPN', 0, '2022-07-04 01:01:00', '2022-07-08 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:31:36', '2022-01-14 03:32:00'),
(343, 2, 22, 'Penetapan Peringkat dan Jabatan Pelaksana di Lingkup Kanwil DJPb Provinsi Kalimantan Barat', 0, '2022-01-03 01:01:00', '2022-01-31 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:34:59', '2022-01-14 03:34:59'),
(344, 2, 20, 'Pemeliharaan taman', 0, '2022-01-17 01:01:00', '2022-01-21 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:36:17', '2022-01-14 03:36:17'),
(345, 2, 20, 'Pemeliharaan taman', 0, '2022-02-21 01:01:00', '2022-02-25 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:36:22', '2022-01-14 03:36:33'),
(346, 2, 20, 'Pemeliharaan taman', 0, '2022-03-21 01:01:00', '2022-03-25 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:36:36', '2022-01-14 03:36:44'),
(347, 2, 20, 'Pemeliharaan taman', 0, '2022-04-18 01:01:00', '2022-04-22 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:36:56', '2022-01-14 03:37:05'),
(348, 2, 20, 'Pemeliharaan taman', 0, '2022-05-16 01:01:00', '2022-05-20 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:37:10', '2022-01-14 03:37:18'),
(349, 2, 20, 'Pemeliharaan taman', 0, '2022-06-20 01:01:00', '2022-06-24 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:37:21', '2022-01-14 03:37:29'),
(350, 2, 20, 'Pemeliharaan taman', 0, '2022-07-18 01:01:00', '2022-07-22 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:37:33', '2022-01-14 03:37:41'),
(351, 2, 20, 'Pemeliharaan taman', 0, '2022-08-22 01:01:00', '2022-08-26 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:37:44', '2022-01-14 03:37:51'),
(352, 2, 20, 'Pemeliharaan taman', 0, '2022-09-19 01:01:00', '2022-09-23 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:37:58', '2022-01-14 03:38:05'),
(353, 2, 20, 'Pemeliharaan taman', 0, '2022-10-17 01:01:00', '2022-10-21 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:38:08', '2022-01-14 03:38:16'),
(354, 2, 20, 'Pemeliharaan taman', 0, '2022-11-21 01:01:00', '2022-11-25 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:38:19', '2022-01-14 03:38:27'),
(355, 2, 20, 'Pemeliharaan taman', 0, '2022-12-19 01:01:00', '2022-12-23 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:38:30', '2022-01-14 03:38:39'),
(356, 2, 20, 'Pengecatan dan Rehab Rumah Jabatan Kepala Kanwil', 0, '2022-01-01 01:01:00', '2022-03-31 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:40:08', '2022-01-14 03:40:08'),
(361, 2, 19, 'Agenda Kemenkeu Satu', 0, '2022-04-18 01:01:00', '2022-04-22 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:46:44', '2022-01-14 03:48:55'),
(362, 2, 19, 'Agenda Kemenkeu Satu', 0, '2022-07-18 01:01:00', '2022-07-22 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:46:56', '2022-01-14 03:49:21'),
(363, 2, 19, 'Agenda Kemenkeu Satu', 0, '2022-10-17 01:01:00', '2022-10-21 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:48:09', '2022-01-14 03:49:49'),
(364, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-01-14 01:01:00', '2022-01-14 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:51:11', '2022-01-14 03:51:25'),
(365, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-01-21 01:01:00', '2022-01-21 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:51:30', '2022-01-14 03:51:40'),
(366, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-01-28 01:01:00', '2022-01-28 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:51:45', '2022-01-14 03:51:56'),
(368, 2, 19, 'Senam', 0, '2022-02-11 06:15:00', '2022-02-11 08:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:52:17', '2022-03-22 21:38:44'),
(369, 2, 19, 'Jalan Sehat', 0, '2022-02-18 06:15:00', '2022-02-18 08:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:53:18', '2022-03-22 23:26:30'),
(371, 2, 19, 'Senam', 0, '2022-03-04 07:00:00', '2022-03-04 08:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:53:49', '2022-03-23 02:29:27'),
(372, 2, 19, 'Jalan Sehat', 0, '2022-03-11 06:00:00', '2022-03-11 08:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'uploads/foto_kegiatan/95723cba84d685244f8f73818f784656.png', '2022-01-14 03:54:01', '2022-03-24 00:46:54'),
(373, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-03-18 01:01:00', '2022-03-18 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:54:14', '2022-01-14 03:54:21'),
(375, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-04-01 01:01:00', '2022-04-01 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:54:41', '2022-01-14 03:54:51'),
(376, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-04-08 01:01:00', '2022-04-08 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:54:55', '2022-01-14 03:55:14'),
(377, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-04-15 01:01:00', '2022-04-15 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:55:17', '2022-01-14 03:55:24'),
(378, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-04-22 01:01:00', '2022-04-22 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:55:32', '2022-01-14 03:55:40'),
(379, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-04-29 01:01:00', '2022-04-29 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:55:44', '2022-01-14 03:55:53'),
(380, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-05-06 01:01:00', '2022-05-06 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:56:00', '2022-01-14 03:56:08'),
(381, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-05-13 01:01:00', '2022-05-13 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:56:13', '2022-01-14 03:56:22'),
(382, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-05-20 01:01:00', '2022-05-20 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:56:25', '2022-01-14 03:56:33'),
(383, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-05-27 01:01:00', '2022-05-27 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:56:38', '2022-01-14 03:56:47'),
(384, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-06-03 01:01:00', '2022-06-03 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:56:50', '2022-01-14 03:57:05'),
(385, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-06-10 01:01:00', '2022-06-10 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:57:15', '2022-01-14 03:57:22'),
(386, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-06-17 01:01:00', '2022-06-17 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:57:25', '2022-01-14 03:57:32'),
(387, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-06-24 01:01:00', '2022-06-24 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:57:35', '2022-01-14 03:57:43'),
(388, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-07-01 01:01:00', '2022-07-01 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:57:47', '2022-01-14 03:57:55'),
(389, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-07-08 01:01:00', '2022-07-08 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:57:59', '2022-01-14 03:58:06'),
(390, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-07-15 01:01:00', '2022-07-15 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:58:12', '2022-01-14 03:58:22'),
(391, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-07-22 01:01:00', '2022-07-22 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:58:25', '2022-01-14 03:58:32'),
(392, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-07-29 01:01:00', '2022-07-29 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:58:37', '2022-01-14 03:58:44'),
(393, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-08-05 01:01:00', '2022-08-05 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:58:48', '2022-01-14 03:58:57'),
(394, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-08-12 01:01:00', '2022-08-12 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:59:00', '2022-01-14 03:59:10'),
(395, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-08-19 01:01:00', '2022-08-19 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:59:15', '2022-01-14 03:59:22'),
(396, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-08-26 01:01:00', '2022-08-26 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:59:25', '2022-01-14 03:59:33'),
(397, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-09-02 01:01:00', '2022-09-02 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:59:36', '2022-01-14 03:59:44'),
(398, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-09-09 01:01:00', '2022-09-09 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 03:59:49', '2022-01-14 03:59:56'),
(399, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-09-16 01:01:00', '2022-09-16 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 04:00:02', '2022-01-14 04:00:10'),
(400, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-09-23 01:01:00', '2022-09-23 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 04:00:13', '2022-01-14 04:00:20'),
(401, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-09-30 01:01:00', '2022-09-30 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 04:00:30', '2022-01-14 04:00:40'),
(402, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-10-07 01:01:00', '2022-10-07 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 04:00:44', '2022-01-14 04:00:52'),
(403, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-10-14 01:01:00', '2022-10-14 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 04:01:33', '2022-01-14 04:01:40'),
(404, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-10-21 01:01:00', '2022-10-21 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 04:01:45', '2022-01-14 04:01:52'),
(405, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-10-28 01:01:00', '2022-10-28 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 04:01:55', '2022-01-14 04:02:02'),
(406, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-11-04 01:01:00', '2022-11-04 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 04:02:06', '2022-01-14 04:02:14'),
(407, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-11-11 01:01:00', '2022-11-11 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 04:02:17', '2022-01-14 04:02:23'),
(408, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-11-18 01:01:00', '2022-11-18 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 04:02:27', '2022-01-14 04:02:33'),
(409, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-11-25 01:01:00', '2022-11-25 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 04:03:19', '2022-01-14 04:03:27'),
(410, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-12-02 01:01:00', '2022-12-02 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 04:04:24', '2022-01-14 04:04:32'),
(411, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-12-09 01:01:00', '2022-12-09 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 04:04:35', '2022-01-14 04:04:42'),
(412, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-12-16 01:01:00', '2022-12-16 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 04:04:44', '2022-01-14 04:04:50'),
(413, 2, 19, 'Jumat Krida/Olahraga', 0, '2022-12-23 01:01:00', '2022-12-23 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-14 04:04:53', '2022-01-14 04:05:01'),
(414, 2, 19, 'Rilis APBN', 0, '2021-01-25 01:01:00', '2021-01-25 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 00:28:54', '2022-01-21 00:28:54'),
(415, 2, 19, 'Rilis APBN', 0, '2021-02-25 01:01:00', '2021-02-25 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 00:32:15', '2022-01-21 00:32:15'),
(416, 2, 19, 'Rilis APBN', 0, '2021-03-25 01:01:00', '2021-03-25 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 00:32:22', '2022-01-21 00:33:19'),
(417, 2, 19, 'Rilis APBN', 0, '2021-04-26 01:01:00', '2021-04-26 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 00:32:23', '2022-01-21 00:33:45'),
(418, 2, 19, 'Rilis APBN', 0, '2021-05-27 01:01:00', '2021-05-27 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 00:32:25', '2022-01-21 00:34:17'),
(419, 2, 19, 'Rilis APBN', 0, '2021-06-28 01:01:00', '2021-06-28 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 00:37:52', '2022-01-21 00:38:04'),
(420, 2, 19, 'Rilis APBN', 0, '2021-07-26 01:01:00', '2021-07-26 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 00:38:08', '2022-01-21 00:38:28'),
(421, 2, 19, 'Rilis APBN', 0, '2021-08-26 01:01:00', '2021-08-26 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 00:38:35', '2022-01-21 00:38:49'),
(422, 2, 19, 'Rilis APBN', 0, '2021-09-27 01:01:00', '2021-09-27 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 00:38:52', '2022-01-21 00:39:19'),
(423, 2, 19, 'Rilis APBN', 0, '2021-10-25 01:01:00', '2021-10-25 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 00:39:23', '2022-01-21 00:39:31'),
(424, 2, 19, 'Rilis APBN', 0, '2021-11-29 01:01:00', '2021-11-29 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 00:39:34', '2022-01-21 00:39:45'),
(425, 2, 19, 'Rilis APBN', 0, '2021-12-27 01:01:00', '2021-12-27 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 00:39:48', '2022-01-21 00:39:59'),
(473, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-02-01 01:01:00', '2022-02-01 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:19:32', '2022-01-21 01:20:47'),
(474, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-02-08 01:01:00', '2022-02-08 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:19:57', '2022-01-21 01:21:06'),
(475, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-02-08 01:01:00', '2022-02-08 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:20:32', '2022-01-21 01:21:13'),
(476, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-02-15 01:01:00', '2022-02-15 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:21:24', '2022-01-21 01:21:38'),
(477, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-02-22 01:01:00', '2022-02-22 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:26:07', '2022-01-21 01:26:14'),
(478, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-03-01 01:01:00', '2022-03-01 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:26:17', '2022-01-21 01:26:24'),
(479, 2, 2, 'Sosialisasi Implemenasi ISO 37001:2016 Sistem Manajemen Anti Penyuapan (SMAP)', 0, '2022-03-08 08:30:00', '2022-03-09 12:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/ee6f204784558e99bd15a6be1b15fde8.pdf', NULL, NULL, 'uploads/foto_kegiatan/25472b2122b98a10bd451fdcd57a0383.jpg', '2022-01-21 01:26:27', '2022-03-24 00:44:06'),
(480, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-03-15 01:01:00', '2022-03-15 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:27:35', '2022-01-21 01:27:41'),
(481, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-03-22 01:01:00', '2022-03-22 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:27:44', '2022-01-21 01:27:49'),
(483, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-04-05 01:01:00', '2022-04-05 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:27:58', '2022-01-21 01:28:06'),
(484, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-04-12 01:01:00', '2022-04-12 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:28:28', '2022-01-21 01:28:34'),
(485, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-04-19 01:01:00', '2022-04-19 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:28:36', '2022-01-21 01:28:42'),
(486, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-04-26 01:01:00', '2022-04-26 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:28:44', '2022-01-21 01:28:50'),
(487, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-05-03 01:01:00', '2022-05-03 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:28:52', '2022-01-21 01:28:57'),
(488, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-05-10 01:01:00', '2022-05-10 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:29:04', '2022-01-21 01:29:10'),
(489, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-05-17 01:01:00', '2022-05-17 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:29:12', '2022-01-21 01:29:17'),
(490, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-05-24 01:01:00', '2022-05-24 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:29:19', '2022-01-21 01:29:25'),
(491, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-05-31 01:01:00', '2022-05-31 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:29:27', '2022-01-21 01:29:34'),
(492, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-06-07 01:01:00', '2022-06-07 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:29:48', '2022-01-21 01:29:56'),
(493, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-06-14 01:01:00', '2022-06-14 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:30:21', '2022-01-21 01:30:26'),
(494, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-06-21 01:01:00', '2022-06-21 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:30:29', '2022-01-21 01:30:33'),
(495, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-06-28 01:01:00', '2022-06-28 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:31:06', '2022-01-21 01:31:14'),
(496, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-07-05 01:01:00', '2022-07-05 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:31:16', '2022-01-21 01:31:22'),
(497, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-07-12 01:01:00', '2022-07-12 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:31:24', '2022-01-21 01:31:30'),
(498, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-07-19 01:01:00', '2022-07-19 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:31:32', '2022-01-21 01:31:38'),
(499, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-07-26 01:01:00', '2022-07-26 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:31:40', '2022-01-21 01:31:45'),
(500, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-08-02 01:01:00', '2022-08-02 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:31:47', '2022-01-21 01:31:53'),
(501, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-08-09 01:01:00', '2022-08-09 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:32:00', '2022-01-21 01:32:06'),
(502, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-08-16 01:01:00', '2022-08-16 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:32:08', '2022-01-21 01:32:13'),
(503, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-08-23 01:01:00', '2022-08-23 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:32:15', '2022-01-21 01:32:20'),
(504, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-08-30 01:01:00', '2022-08-30 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:32:22', '2022-01-21 01:32:28'),
(505, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-09-06 01:01:00', '2022-09-06 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:32:30', '2022-01-21 01:32:35'),
(506, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-09-13 01:01:00', '2022-09-13 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:32:37', '2022-01-21 01:32:42'),
(507, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-09-20 01:01:00', '2022-09-20 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:32:50', '2022-01-21 01:32:54'),
(508, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-09-27 01:01:00', '2022-09-27 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:32:57', '2022-01-21 01:33:01'),
(509, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-10-04 01:01:00', '2022-10-04 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:33:03', '2022-01-21 01:33:08'),
(510, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-10-11 01:01:00', '2022-10-11 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:33:10', '2022-01-21 01:33:15'),
(511, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-10-18 01:01:00', '2022-10-18 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:33:17', '2022-01-21 01:33:22'),
(512, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-10-25 01:01:00', '2022-10-25 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:33:24', '2022-01-21 01:33:29'),
(513, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-11-01 01:01:00', '2022-11-01 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:33:32', '2022-01-21 01:33:38'),
(514, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-11-08 01:01:00', '2022-11-08 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:33:40', '2022-01-21 01:33:45'),
(515, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-11-15 01:01:00', '2022-11-15 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:33:47', '2022-01-21 01:33:53'),
(516, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-11-22 01:01:00', '2022-11-22 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:33:55', '2022-01-21 01:34:00'),
(517, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-11-29 01:01:00', '2022-11-29 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:34:02', '2022-01-21 01:34:06'),
(518, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-12-06 01:01:00', '2022-12-06 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:34:13', '2022-01-21 01:34:19'),
(519, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-12-13 01:01:00', '2022-12-13 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:34:21', '2022-01-21 01:34:27'),
(520, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-12-20 01:01:00', '2022-12-20 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:34:29', '2022-01-21 01:34:34'),
(521, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-12-27 01:01:00', '2022-12-27 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:35:01', '2022-01-21 01:35:06');
INSERT INTO `kegiatans` (`id`, `kode_djpb_id`, `struktur_id`, `uraian`, `anggaran`, `tgl_mulai`, `tgl_selesai`, `status_pelaksanaan`, `is_strategis`, `is_perjalanan_dinas`, `is_sosialisasi`, `file_lk`, `file_rab`, `file_st`, `file_spd`, `is_kakanwil`, `is_gubernur`, `is_bupati`, `file_und`, `file_presensi`, `file_notula`, `foto_kegiatan`, `created_at`, `updated_at`) VALUES
(522, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-02-07 01:01:00', '2022-02-10 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:51:32', '2022-01-21 01:51:32'),
(523, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-02-21 01:01:00', '2022-02-24 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 01:55:51', '2022-01-21 01:56:16'),
(524, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-03-07 01:01:00', '2022-03-11 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 02:13:49', '2022-01-21 02:14:20'),
(525, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-03-21 01:01:00', '2022-03-25 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 02:14:25', '2022-01-21 02:14:37'),
(526, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-04-04 01:01:00', '2022-04-08 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 02:14:41', '2022-01-21 02:15:04'),
(527, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-04-18 01:01:00', '2022-04-22 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 02:15:06', '2022-01-21 02:15:15'),
(528, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-05-02 01:01:00', '2022-05-05 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 02:15:17', '2022-01-21 02:15:40'),
(529, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-05-16 01:01:00', '2022-05-19 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 02:15:44', '2022-01-21 02:15:52'),
(530, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-06-06 01:01:00', '2022-06-09 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 02:15:55', '2022-01-21 02:16:12'),
(531, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-06-20 01:01:00', '2022-06-23 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 02:16:15', '2022-01-21 02:16:22'),
(532, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-07-04 01:01:00', '2022-07-07 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 02:16:24', '2022-01-21 02:16:32'),
(533, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-07-18 01:01:00', '2022-07-21 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 02:16:35', '2022-01-21 02:16:42'),
(534, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-08-08 01:01:00', '2022-08-11 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 02:16:45', '2022-01-21 02:16:52'),
(535, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-08-22 01:01:00', '2022-08-25 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 02:16:55', '2022-01-21 02:17:01'),
(536, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-09-05 01:01:00', '2022-09-08 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 02:17:04', '2022-01-21 02:17:13'),
(537, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-09-19 01:01:00', '2022-09-22 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 02:17:16', '2022-01-21 02:17:23'),
(538, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-10-03 01:01:00', '2022-10-06 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 02:17:26', '2022-01-21 02:17:32'),
(539, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-10-17 01:01:00', '2022-10-20 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 02:17:35', '2022-01-21 02:17:43'),
(540, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-11-07 01:01:00', '2022-11-10 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 02:17:46', '2022-01-21 02:17:53'),
(541, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-11-21 01:01:00', '2022-11-24 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 02:18:05', '2022-01-21 02:18:11'),
(542, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-12-05 01:01:00', '2022-12-08 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 02:18:14', '2022-01-21 02:18:24'),
(543, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke Pemerintah Daerah', 0, '2022-12-19 01:01:00', '2022-12-22 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-01-21 02:18:27', '2022-06-11 02:06:50'),
(547, 2, 38, 'Koordinasi pemberian dukungan kepada Pemkab Bengkayang dalam rangka mempertahankan opini WTP atas LKPD Tahun 2021', 0, '2022-02-24 08:01:00', '2022-02-26 17:00:00', 'SELESAI', 1, 1, 1, 'uploads/file_lk/86beb19b09414b528fc9997a334266af.pdf', 'uploads/file_rab/ca09eb4d64f70fa4e3f410ec58c468df.docx', 'uploads/file_st/8f30cab69165e0e95cd591bb7916ee33.pdf', NULL, 1, 0, 1, 'uploads/file_und/f21efdb261a497e7106283d53dbbf38f.pdf', NULL, NULL, 'uploads/foto_kegiatan/35710826afddcb922873d6ca5c14f871.jpg', '2022-02-08 21:07:27', '2022-03-24 02:05:35'),
(548, 2, 28, 'Pengarahan dan Sharing Seasion DAC', 0, '2021-02-24 09:00:00', '2021-02-24 11:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-02-23 22:02:37', '2022-02-23 22:02:37'),
(551, 2, 3, 'Kegiatan Bimtek dan Open Class III', 0, '2021-06-14 01:01:00', '2021-06-14 12:00:00', 'BELUM DILAKSANAKAN', 1, NULL, 1, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-02-24 18:35:04', '2022-02-24 18:35:04'),
(552, 2, 3, 'Kegiatan Bimtek dan Open Class IV', 0, '2022-07-12 01:01:00', '2022-07-12 12:00:00', 'BELUM DILAKSANAKAN', 1, NULL, 1, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-02-24 18:35:59', '2022-02-24 18:38:30'),
(553, 2, 3, 'Penyerahan Penghargaan Satker, Sosialisasi Peraturan Pelaksanaan Anggaran dan Ekspos RPA', 0, '2022-03-14 09:00:00', '2022-03-14 12:45:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/d187e4f1ef4d3db19a125892a9561514.pdf', NULL, NULL, 'uploads/foto_kegiatan/79563bb6439c87fc9035f9ad60d4c4d2.png', '2022-02-24 21:34:47', '2022-03-24 00:50:48'),
(554, 2, 3, 'Sosialisasi Peraturan Pelaksanaan Anggaran dan Ekspos RPA', 0, '2022-03-15 01:01:00', '2022-03-30 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 1, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-02-24 21:37:03', '2022-02-24 21:37:03'),
(555, 2, 13, 'Penandatanganan MoU dan Rapat Koordinasi Percepatan Penyaluran Transfer ke Daerah dan Dana Desa Lingkup Provinsi Kalimantan Barat', 0, '2021-03-03 09:00:00', '2021-03-03 23:30:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, '2022-02-28 08:53:09', '2022-02-28 08:53:09'),
(556, 2, 2, 'Pemeriksaan pada Kanwil DJPb dan KPPN dalam rangka Pemeriksaan atas LKPP Tahun 2021', 0, '2022-03-14 08:01:00', '2022-03-20 17:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/3d145f0c37d9e521e42a6caa946bdd10.pdf', NULL, NULL, NULL, '2022-03-06 18:47:19', '2022-03-06 18:47:19'),
(557, 2, 28, 'Sosialisasi Implemenasi ISO 37001:2016 Sistem Manajemen Anti Penyuapan (SMAP)', 0, '2022-02-08 08:00:00', '2022-02-09 00:00:00', 'BELUM DILAKSANAKAN', 1, NULL, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-03-06 21:02:33', '2022-03-06 21:02:33'),
(558, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-03-08 01:01:00', '2022-03-08 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-03-06 21:03:23', '2022-03-06 21:03:23'),
(561, 2, 2, 'Rapat Kerja Poltekkes Kemenkes Pontianak Tahun 2022', 0, '2022-02-11 01:01:00', '2022-02-13 12:00:00', 'SELESAI', 1, 1, 0, 'uploads/file_lk/c45e6891ff92915668b8617bf24bf8e9.pdf', NULL, 'uploads/file_st/2a45ac8ead7c5180289882a4449ab12f.pdf', NULL, 1, 0, 0, 'uploads/file_und/a9b7c8beec4d43a9c3bf79b7bc55f5a9.pdf', NULL, NULL, 'uploads/foto_kegiatan/e34ecfcb8727cb843a70f38070af22d2.pdf', '2022-03-08 21:37:26', '2022-03-22 21:56:15'),
(565, 2, 19, 'I Love Monday', 0, '2022-01-03 08:00:00', '2022-01-03 10:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/405c5a28011e5908fef2449b9d4ccadc.pdf', NULL, NULL, 'uploads/foto_kegiatan/e60c6ad29c5772848aca85f225c815c0.jpg', '2022-03-22 04:40:25', '2022-03-24 21:01:40'),
(567, 2, 2, 'I Love Monday', 0, '2021-01-01 01:01:00', '2021-12-31 12:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/98c2635fea9587e87c53f9ab04ce92f1.pdf', NULL, NULL, NULL, '2022-03-22 04:52:09', '2022-03-22 04:52:09'),
(568, 2, 2, 'I Love Monday', 0, '2021-01-01 01:01:00', '2021-12-31 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/f3ad764c16f54bc231a7f48ad9ca3cc5.pdf', NULL, NULL, NULL, '2022-03-22 04:53:55', '2022-03-22 04:53:55'),
(569, 2, 12, 'Kunjungan Kerja ke Walikota Pontianak', 0, '2022-01-03 14:00:00', '2022-01-03 15:30:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, 'uploads/foto_kegiatan/12745bf8e1f21e44a95aead429298fb3.jpg', '2022-03-22 04:59:01', '2022-03-24 21:04:17'),
(570, 2, 2, 'Undangan Treasury Expo Sulawesi Selatan Tahun 2022', 0, '2022-03-23 09:00:00', '2022-03-23 10:30:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/efb9eaaa132181fde9ec2021b5fe5cc1.pdf', NULL, NULL, 'uploads/foto_kegiatan/0a7171ea9f1cc763066144dcb00ddb6d.jpeg', '2022-03-22 05:07:27', '2022-03-23 01:17:07'),
(572, 2, 19, 'Pengarahan Awal Tahun 2022', 0, '2022-01-03 15:30:00', '2022-01-03 17:30:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/cd254a9a5b3b57ed37709125ef5cecbf.pdf', NULL, NULL, 'uploads/foto_kegiatan/c326e006a3ca81eb1381b4603c0da789.JPG', '2022-03-22 05:21:48', '2022-03-24 21:05:49'),
(573, 2, 12, 'Pembahasan Rencana Kerja Setahun Kedepan', 0, '2022-01-04 08:00:00', '2022-01-04 11:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'uploads/foto_kegiatan/401c386e4eeb677fbd1db4eae364e222.JPG', '2022-03-22 05:24:47', '2022-03-24 21:12:25'),
(574, 2, 19, 'Pembahasan Rakor dan Anggaran Rumdin', 0, '2022-01-04 11:00:00', '2022-01-04 12:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-03-22 05:26:53', '2022-03-22 05:26:53'),
(575, 2, 26, 'DKO Triwulan IV Tahun 2021_KPPN', 0, '2022-01-05 08:00:00', '2022-01-05 10:30:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/1225d0337ff751666d989b7357961d1e.pdf', NULL, 'uploads/file_notula/3c8a7f7b7699de7237675b88972f6006.pdf', NULL, '2022-03-22 05:35:15', '2022-07-27 03:57:54'),
(576, 2, 26, 'DKO Triwulan IV Tahun 2021_Kanwil', 0, '2022-01-05 10:30:00', '2022-01-05 12:30:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/0de20ea4f5d997d5c9f1bf1c9e8940aa.pdf', NULL, 'uploads/file_notula/259f58b19fc97fbb30175bbf5908da1e.pdf', NULL, '2022-03-22 05:40:04', '2022-07-27 03:57:15'),
(577, 2, 19, 'Pembahasan Rencana Kerja Setahun Kedepan', 0, '2022-01-05 15:30:00', '2022-01-05 17:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'uploads/foto_kegiatan/3085a45c5a359f011a87ba0b706d2af5.JPG', '2022-03-22 05:41:36', '2022-03-24 21:14:23'),
(578, 2, 35, 'Pembahasan Rencana Kerja Setahun Kedepan', 0, '2022-01-06 08:00:00', '2022-01-06 10:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'uploads/foto_kegiatan/66ca42bdfc5f22adeb3929474d148c1f.JPG', '2022-03-22 05:43:11', '2022-03-24 21:14:50'),
(579, 2, 3, 'Pembahasan Rencana Kerja Setahun Kedepan', 0, '2022-01-06 10:30:00', '2022-01-06 12:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'uploads/foto_kegiatan/d5a117fb2fe70e588fd4c8cf6f270e21.JPG', '2022-03-22 05:44:24', '2022-03-24 21:15:26'),
(580, 2, 19, 'Pengambilan Sumpah/Janji PNS', 0, '2022-01-06 14:00:00', '2022-01-06 15:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/158d92bcd235962be116f626764786d9.pdf', NULL, NULL, 'uploads/foto_kegiatan/422af1657844f0facee643f4c0bfd905.JPG', '2022-03-22 05:47:49', '2022-03-24 21:15:50'),
(581, 2, 2, 'Olahraga bersama Kemenkeu Satu Kalbar', 0, '2022-01-07 06:30:00', '2022-01-07 08:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/9929b3081e5580ec3914bf8a7a2c4f49.pdf', NULL, NULL, 'uploads/foto_kegiatan/c4c8a78e752427a2e1a7372e719d11ec.JPG', '2022-03-22 05:52:29', '2022-03-24 21:23:01'),
(582, 2, 2, 'Mengadakan Kunjungan UMKM ke Citra Garden Aneka', 0, '2022-01-07 09:00:00', '2022-01-07 10:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-03-22 05:54:32', '2022-03-22 05:54:32'),
(583, 2, 28, 'Pembahasan Rencana Kerja Setahun Kedepan', 0, '2022-01-07 13:00:00', '2022-01-07 15:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-03-22 05:57:48', '2022-03-22 05:57:48'),
(584, 2, 28, 'Sosialisasi Implementasi Marketplace dan Digital Payment 002 (Bank BRI)', 0, '2022-01-10 14:00:00', '2022-01-10 16:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/d2eb22cc75ffd9567ef6006c9f7e280a.pdf', NULL, NULL, 'uploads/foto_kegiatan/4aab20cf8fd309f18c961c1736181fb5.JPG', '2022-03-22 06:12:11', '2022-03-24 21:24:43'),
(585, 2, 3, 'Kegiatan Evaluasi Pelaksanaan Anggaran periode Bulan Januari 2022 atas Data Realisasi Anggaran dan IKPA TA 2021', 0, '2022-01-11 09:00:00', '2022-01-11 12:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/86b1e338db9ab620a357cecc77f15f39.pdf', NULL, NULL, NULL, '2022-03-22 06:16:22', '2022-03-22 06:16:22'),
(586, 2, 19, 'Persiapan Rakorwil lingkup Kanwil DJPb Prov. Kalbar Tahun 2022', 0, '2022-01-11 15:30:00', '2022-01-11 17:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/3cdaa72268a5f0479dc29983d511d1d3.pdf', NULL, NULL, NULL, '2022-03-22 06:19:40', '2022-03-22 06:19:40'),
(588, 2, 3, 'Kegiatan Evaluasi Pelaksanaan Anggaran periode Bulan Januari 2022 atas Data Realisasi Anggaran dan IKPA TA 2021 K/L Pagu Besar', 0, '2022-01-13 09:00:00', '2022-01-13 12:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/269992d79f76045ea5dfd30721c49c63.pdf', NULL, NULL, 'uploads/foto_kegiatan/04a780b73960fad7bbf1a9724c66556f.JPG', '2022-03-22 06:29:08', '2022-03-24 21:27:39'),
(589, 2, 2, 'Rapat Dewas BP3C', 0, '2022-01-17 08:00:00', '2022-01-19 17:30:00', 'SELESAI', 1, 1, 0, NULL, NULL, 'uploads/file_st/46fb12523c4ee0f1163522dca06c4d51.pdf', 'uploads/file_spd/f6aa5bab79372b11110840177eb5b8b1.pdf', 1, 0, 0, 'uploads/file_und/3881a78f0edfa989ca3a8201d311b2b6.pdf', NULL, NULL, NULL, '2022-03-22 06:43:40', '2022-03-22 06:46:37'),
(590, 2, 19, 'Rapat Koordinasi Wilayah (Rakorwil)', 0, '2022-01-26 08:00:00', '2022-01-28 17:30:00', 'SELESAI', 1, 1, 0, 'uploads/file_lk/9c6f6a7f29d296fff155dc2f54a67b31.pdf', NULL, 'uploads/file_st/0820dae053186ec6e46a0f237c8fecfb.pdf', 'uploads/file_spd/cd68141a98dbdb88be7eab435082df08.pdf', 1, 0, 0, 'uploads/file_und/f6b604d0beb7fe927420d7d8de344ad3.pdf', NULL, 'uploads/file_notula/de763d2baa64085e49ec5271a7385caf.pdf', 'uploads/foto_kegiatan/e0a0270002274ba3422a33d629b9e684.JPG', '2022-03-22 06:57:09', '2022-03-24 21:37:31'),
(591, 2, 26, 'Penandatanganan Kontrak Kinerja dan Pakta Integritas Tahun 2022', 0, '2022-01-31 14:00:00', '2022-01-31 16:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/22bae6bc406e27557dec1dfdab43ec36.pdf', 'uploads/file_rab/41f046ef4c130d62b89f85b422bc8523.pdf', NULL, NULL, 1, 0, 0, 'uploads/file_und/831586c3a359803f1708108943a644bf.pdf', NULL, 'uploads/file_notula/19a26e79a31529e35a6ad1ec37820c7f.pdf', 'uploads/foto_kegiatan/aead7bd6bdc47a936b254f2d0403e30f.jpeg', '2022-03-22 07:15:46', '2022-07-27 20:48:04'),
(592, 2, 2, 'Undangan Kegiatan Sharing Knowledge & Experience dari Kanwil DJPb Piloting ALCo Regional', 0, '2022-01-28 09:00:00', '2022-01-31 11:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/54918210533199e964fb5d7f099493ec.pdf', NULL, NULL, 'uploads/foto_kegiatan/dc2db4198b58068305c4f256a30dcf7c.jpeg', '2022-03-22 07:27:06', '2022-03-23 07:41:41'),
(593, 2, 19, 'Undangan Puncak Pelaksanaan Hari Bakti Perbendaharaan ke-18 Tahun 2022', 0, '2022-01-27 08:00:00', '2022-01-27 11:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/b6e5b6e06c7485fe005d22a960826b4c.pdf', NULL, NULL, NULL, '2022-03-22 07:31:19', '2022-03-22 07:31:19'),
(594, 2, 2, 'Undangan FGD Sinergi Pemberdayaan UMKM', 0, '2022-01-31 08:30:00', '2022-01-31 12:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/38b9360190cde711446ffa7de9f6d869.pdf', NULL, NULL, 'uploads/foto_kegiatan/b3c8001c5b53c68a1b24c215344f1023.jpeg', '2022-03-22 07:37:36', '2022-03-23 08:01:29'),
(595, 2, 2, 'Kick Off Pelaksanaan Anggaran TA 2022 dan Internalisasi UU Hubungan Keuangan Pusat dan Daerah', 0, '2022-02-02 09:00:00', '2022-02-02 11:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/c56aa7278849e790390e264c73d29ae6.pdf', NULL, NULL, 'uploads/foto_kegiatan/055e1884f3e008814c735c8f1560df1a.jpeg', '2022-03-22 18:26:15', '2022-03-23 08:07:51'),
(596, 2, 2, 'Rapimtas 2022 Unit Direktorat PKN', 0, '2022-02-02 14:00:00', '2022-02-02 16:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/d3cfb8ae9df2c75cbd47fd2f6220a86c.pdf', 'uploads/file_rab/9e344e0a407a5f527c8c04a136acc6df.pdf', 'uploads/file_st/207c1ad10858b5e34c06267ef2cd9abf.pdf', NULL, 1, 0, 0, 'uploads/file_und/8890054d16ec1aa23743836f35fffde9.pdf', NULL, 'uploads/file_notula/6c5b17ee0856aa7a48dfd680d69716ee.pdf', 'uploads/foto_kegiatan/f6ec70538b3d5b680f021e145f6c8f72.jpeg', '2022-03-22 18:44:55', '2022-03-23 08:09:08'),
(597, 2, 19, 'Menerima Kunjungan Kerja Direktur Jenderal Perbendaharaan', 0, '2022-02-03 08:00:00', '2022-02-04 11:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/849f018689c09efea3031f497b870504.pdf', NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/1d15290288ddc785ef4a61e61666e9f7.pdf', NULL, 'uploads/file_notula/6ea741d24ccb9f7e68fa648c8edf0d54.pdf', 'uploads/foto_kegiatan/4abbd3b004f57ac6035202a8b1528355.jpg', '2022-03-22 18:53:32', '2022-03-24 01:29:37'),
(598, 2, 2, 'Rapimtas 2022 Unit Direktorat PA', 0, '2022-02-07 09:00:00', '2022-02-07 11:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/adb3e1e0ac40b4adfead82d7101d62d0.pdf', 'uploads/file_rab/f68360ecbcb863b52a0e6ab7d89f854a.pdf', 'uploads/file_st/ac7fb2f699b36543ecc1218020afb21a.pdf', NULL, 1, 0, 0, 'uploads/file_und/4d0b924894cf566fd598194b335eb631.pdf', NULL, 'uploads/file_notula/6cc2ba3284599eeaf99faf44aee0d2e6.pdf', NULL, '2022-03-22 19:54:31', '2022-03-23 08:12:52'),
(599, 2, 2, 'Kick Off Education Week Dalam Rangka Peringatan Hari Bakti Perbendaharaan ke-18 Tahun 2022', 0, '2022-02-07 13:30:00', '2022-02-07 16:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/419f9c019f154fcbda077db53790852d.pdf', NULL, NULL, NULL, '2022-03-22 20:00:42', '2022-03-22 20:00:42'),
(600, 2, 19, 'Vaksin Booster', 0, '2022-02-08 08:00:00', '2022-02-10 09:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, 'uploads/file_st/2c064b483a43f40b74c4779102a991b0.pdf', NULL, 1, 0, 0, 'uploads/file_und/2a3e5686e6eef4ebc2bf667619b10c60.pdf', NULL, NULL, 'uploads/foto_kegiatan/3a8249533112330408164f336a2785f4.JPG', '2022-03-22 20:08:16', '2022-03-24 01:40:34'),
(601, 2, 2, 'Rapimtas 2022 Unit Setditjen', 0, '2022-02-08 09:00:00', '2022-02-08 11:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/c837a71c9dd76c16a034f638a089345b.pdf', 'uploads/file_rab/f5dd845f49bbc0465f3496970f72a18f.pdf', 'uploads/file_st/dd22f210639594c79627d7ca76971c81.pdf', NULL, 1, 0, 0, 'uploads/file_und/61daf39e2b7dcd0e1d8221428120793d.pdf', NULL, 'uploads/file_notula/0dd8b3c9fd520c90b6f1469ff9841d49.pdf', 'uploads/foto_kegiatan/1563bdfd8e5b510854b95a67222e8440.jpeg', '2022-03-22 20:14:12', '2022-03-23 08:15:38'),
(602, 2, 2, 'FGD Dalam Rangka Perolehan Informasi Kondisi Fiskal 2022', 0, '2022-02-08 13:30:00', '2022-02-08 15:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/52aeeb59e00a0c67be0d7786c8f2c8d5.pdf', NULL, NULL, NULL, '2022-03-22 21:10:57', '2022-03-22 21:10:57'),
(603, 2, 2, 'Rapimtas 2022 Unit Direktorat SMI', 0, '2022-02-09 09:00:00', '2022-02-09 11:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/59375d44a90b5a1e94c76fbf5ed548e4.pdf', 'uploads/file_rab/c20cd853c066700c6fb842dd4d9ae2c4.pdf', 'uploads/file_st/7329092a19f7aa494b8d6e295eaa5d49.pdf', NULL, 1, 0, 0, 'uploads/file_und/a1fdeb6c78213f3d620d3555e6b62bd2.pdf', NULL, 'uploads/file_notula/d33e8d48d654bf82cd0336c54e0fe820.pdf', NULL, '2022-03-22 21:13:05', '2022-03-22 21:13:05'),
(604, 2, 12, 'GKM Bidang PPA II: Regional Chief Economist dan Kick-off Meeting Tim RCE', 0, '2022-02-09 14:00:00', '2022-02-09 15:30:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/98fdf700d252bd46e07d1424ef85f23b.pdf', NULL, NULL, 'uploads/foto_kegiatan/fad07b8b383197f31ae071283ad2f402.jpg', '2022-03-22 21:19:44', '2022-03-24 01:38:50'),
(605, 2, 2, 'Konsultasi Publik Rancangan Awal RKPD Prov. Kalbar Tahun 2023', 0, '2022-02-10 08:00:00', '2022-02-10 12:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/9bc174f7f0e663e6b87ff9024298282c.pdf', NULL, NULL, NULL, '2022-03-22 21:24:19', '2022-03-22 21:24:19'),
(606, 2, 2, 'Rapimtas 2022 Unit Direktorat PPK BLU', 0, '2022-02-10 09:00:00', '2022-02-10 11:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/f5924ed889efbc9811cbc3ebafedd150.pdf', 'uploads/file_rab/a71f726202e819e131c9f765d8dff951.pdf', 'uploads/file_st/88ca694b77b56f98de8c2160e014f01e.pdf', NULL, 1, 0, 0, 'uploads/file_und/ba94820611e7ba45e28882edab55a8b8.pdf', NULL, 'uploads/file_notula/bce0b26751661b369ae85d5872ece51e.pdf', 'uploads/foto_kegiatan/91d754713ea0f2c02874790613f58cd2.jpeg', '2022-03-22 21:26:44', '2022-03-23 08:15:13'),
(607, 2, 2, 'Undangan Rapat Kemenkeu Satu Prov. Kalbar', 0, '2022-02-10 14:00:00', '2022-02-10 15:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/50f6758d12bbcfa121971f91d04122c1.pdf', NULL, NULL, 'uploads/foto_kegiatan/64cb2b44d1e35d8fd02c73fe94eea939.png', '2022-03-22 21:31:52', '2022-03-24 02:40:19'),
(608, 2, 2, 'Rapimtas 2022 Unit Direktorat APK', 0, '2022-02-14 09:00:00', '2022-02-14 11:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/4f902beb7e59da468a8c9267f1e55638.pdf', 'uploads/file_rab/5d1173efe3677021a7b76241b8934f65.pdf', 'uploads/file_st/fcc8daf1bff476b482396c171f19b956.pdf', NULL, 1, 0, 0, 'uploads/file_und/07d97e4c4a1ee00650ca8b95c854231c.pdf', NULL, 'uploads/file_notula/5322c66fca5c4a20524782bf21b8b595.pdf', NULL, '2022-03-22 22:04:36', '2022-03-22 22:04:36'),
(609, 2, 2, 'Arahan Direktur Jenderal Perbendaharaan', 0, '2022-01-19 09:00:00', '2022-01-19 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, 'uploads/file_st/8521c05933d260ce02212615af6e6e33.pdf', NULL, 1, 0, 0, 'uploads/file_und/e2c9691a443669f92d2d025d1088f9d5.pdf', NULL, NULL, 'uploads/foto_kegiatan/d8fda1e24053e9b8bc0f7b4d7712a704.jpeg', '2022-03-22 22:13:05', '2022-03-23 07:40:08'),
(610, 2, 35, 'Rapat Identifikasi Kebutuhan Data RCE Kanwil DJPb Prov. Kalbar Tahun 2022', 0, '2022-02-14 13:30:00', '2022-02-14 15:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/ced8e3d75c5041227724e8cbd47c4c6f.pdf', 'uploads/file_rab/db66bbd41395d5e1deb13d752be1a484.xlsx', NULL, NULL, 1, 0, 0, 'uploads/file_und/3f855740c9cc14a3061cb24085000a83.pdf', NULL, NULL, 'uploads/foto_kegiatan/d2484df3c8d4319f3461c9feb905c07d.jpeg', '2022-03-22 22:25:46', '2022-03-23 08:25:51'),
(611, 2, 2, 'Rapimtas 2022 Unit Direktorat SP', 0, '2022-02-15 09:00:00', '2022-02-15 11:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/80fc738f8ec1e8040aecd297c477f561.pdf', 'uploads/file_rab/82415c198f42f64ff2b6d58fed0bc078.pdf', 'uploads/file_st/0e9a69d268dcec507013a367491f2002.pdf', NULL, 1, 0, 0, 'uploads/file_und/bfb9f53ac4874a6e7e26cb4283390fc2.pdf', NULL, 'uploads/file_notula/8b1c9456490bccfdb66ab06877bc2928.pdf', 'uploads/foto_kegiatan/793f3d4563409fd7ab0603c1e1dc79a8.jpeg', '2022-03-22 22:36:57', '2022-03-23 08:17:00'),
(612, 2, 2, 'Koordinasi Teknis Pelaksanaan Diseminasi dan Sosialisasi PMK 113/PMK.02/2021 dan PMK 155/PMK.02/2021', 0, '2022-02-15 13:00:00', '2022-02-15 15:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/ad4228c2f7d3a60d11d23429ce861f0f.pdf', NULL, NULL, NULL, '2022-03-22 22:41:06', '2022-03-22 22:41:06'),
(613, 2, 2, 'Rapimtas 2022 Unit Direktorat SITP', 0, '2022-02-16 09:00:00', '2022-02-16 11:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/dafd3c0fd8fe0fda000c7a894013efb4.pdf', 'uploads/file_rab/856b5e90241fdb5554dd08a4c74d3905.pdf', 'uploads/file_st/c6eb7862becba8eb4ae01d7b7a6b04f2.pdf', NULL, 1, 0, 0, 'uploads/file_und/453ddcf275544957090bb968293a4c60.pdf', NULL, 'uploads/file_notula/134bccca447a0598296b76a3c6c0851f.pdf', 'uploads/foto_kegiatan/bd0c9e107bd0f062f7f2bed900d6a314.jpeg', '2022-03-22 22:44:11', '2022-03-23 08:23:29'),
(614, 2, 2, 'Annual Report', 0, '2022-02-16 13:00:00', '2022-02-16 14:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/0e7be68ff9c69e8d4a10e7c1bf261028.pdf', NULL, NULL, NULL, '2022-03-22 22:50:32', '2022-03-22 22:50:32'),
(615, 2, 35, 'Membahas Kunjungan Kerja', 0, '2022-02-16 16:00:00', '2022-02-16 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-03-22 23:01:43', '2022-03-22 23:01:43'),
(616, 2, 2, 'Sarapan Bersama Ines dan Valya', 0, '2022-02-17 07:00:00', '2022-02-17 07:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-03-22 23:06:04', '2022-03-22 23:06:04'),
(617, 2, 2, 'Undangan Seminar \"Digitalisasi UMKM Perempuan dalam Mendorong Pemulihan Ekonomi: Harapan dan Tantangan\"', 0, '2022-02-17 08:30:00', '2022-02-17 12:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/e820e3599cd9e6ce4202ddbe15370702.pdf', NULL, NULL, 'uploads/foto_kegiatan/2facfe00ae2dd454e7a3174d4a3b72ba.jpeg', '2022-03-22 23:11:30', '2022-03-23 08:29:07'),
(618, 2, 2, 'Rapat Dewas Kartika Husada sekaligus Acara Peresmian Operasional MRI dan CT-Scan', 0, '2022-02-17 10:30:00', '2022-02-17 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/b66003737d24e2131ba657699eca4ef8.pdf', NULL, NULL, NULL, '2022-03-22 23:19:57', '2022-03-22 23:19:57'),
(619, 2, 2, 'Undangan Kick-Off Program Peneliti Muda Berkontribusi 2022', 0, '2022-02-17 10:00:00', '2022-02-17 12:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/7a1694942ec2af355e92bc29767afe8a.pdf', NULL, NULL, 'uploads/foto_kegiatan/4f487cc0783df9fab224b78c3d9e027f.jpeg', '2022-03-22 23:24:54', '2022-03-23 08:32:22'),
(620, 2, 19, 'Rapat ALCo', 0, '2022-02-18 09:00:00', '2022-02-18 11:15:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/f8c24b10f66374f8152a077863cdec5a.pdf', 'uploads/file_rab/34b649a91cec6447cac3a6132dd8d173.pdf', NULL, NULL, 1, 0, 0, 'uploads/file_und/4214492ccf925480138f562e30713636.pdf', NULL, 'uploads/file_notula/85d62ec46c682215503bff31d7516e73.pdf', 'uploads/foto_kegiatan/ab68a31a14f98640f3943f6c9caeda63.jpeg', '2022-03-22 23:38:01', '2022-03-23 08:33:40'),
(621, 2, 26, 'DKO Bulan Februari 2022', 0, '2022-02-18 14:00:00', '2022-02-18 16:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/4384a62cc41eead649c108c96bcfd2d2.pdf', NULL, 'uploads/file_notula/c671febee63e0c6ceee0c09a9ec71ff7.pdf', 'uploads/foto_kegiatan/87aafbee9857dd673f16c613e8a8f252.jpg', '2022-03-22 23:44:08', '2022-07-27 04:02:03'),
(622, 2, 2, 'Rapat Kehumasan', 0, '2022-02-18 16:00:00', '2022-02-18 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/a1695741e7297b685f5b0b26e3cbba9c.pdf', NULL, NULL, 'uploads/foto_kegiatan/32f749a4c62d5a76fa8babbc8f3ebdf6.jpg', '2022-03-22 23:54:18', '2022-03-24 01:58:33'),
(623, 2, 12, 'Kunjungan Kerja ke Sintang dalam Rangka Penandatanganan MoU', 0, '2022-02-22 09:00:00', '2022-02-22 12:00:00', 'SELESAI', 1, 1, 0, 'uploads/file_lk/7192d761580f8ee221dead4ed72d8923.docx', NULL, 'uploads/file_st/f91c5e0fd49316562dfac875e0ce0692.pdf', 'uploads/file_spd/cfbf7064e392743a8279060d697c0114.pdf', 1, 0, 1, 'uploads/file_und/12bad6d1ed353d4d8ef1f9b2aa85b2ad.pdf', NULL, NULL, 'uploads/foto_kegiatan/77b20f92f3bb4d5739a72d1cbd97ebd3.jpg', '2022-03-23 00:28:22', '2022-04-05 18:33:07'),
(624, 2, 12, 'Kunjungan Kerja ke Melawi dalam Rangka Penandatanganan MoU', 0, '2022-02-23 09:00:00', '2022-02-23 12:00:00', 'SELESAI', 1, 1, 0, 'uploads/file_lk/3512fe689fb8f5d7f60e0062f202170a.docx', 'uploads/file_rab/534dbd801e020ee7315114b35c8610b2.docx', 'uploads/file_st/9ba9f09e99cb6ca20e22c7502c0960e9.pdf', 'uploads/file_spd/615cb5e55c99ed5033fc798f5b359efd.pdf', 1, 0, 1, 'uploads/file_und/da58f57541eeb9f6deeff407db5d593d.pdf', NULL, NULL, 'uploads/foto_kegiatan/39477a57cc5ca24683e098f540daf386.jpg', '2022-03-23 00:30:50', '2022-04-05 18:32:14'),
(626, 2, 12, 'Kunjungan Kerja ke Gubernur Kalbar dalam Rangka Penandatanganan MoU', 0, '2022-02-02 09:00:00', '2022-02-02 11:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, 'uploads/file_st/939f84e980ba723a3ebe927f1fd48909.pdf', NULL, 1, 1, 1, 'uploads/file_und/f4671ab922101a8db239fd03b25b71ec.pdf', NULL, 'uploads/file_notula/f7260b9d4d4f9e113cce7e0627d43c41.pdf', NULL, '2022-03-23 02:06:18', '2022-04-05 18:34:09'),
(628, 2, 2, 'Makan Siang bersama Pak Rahmat dan Pak Mikwan', 0, '2022-03-04 12:45:00', '2022-03-04 13:45:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'uploads/foto_kegiatan/737fe5a94bd73ba2cd28ce008e7e43d7.JPG', '2022-03-23 02:34:48', '2022-03-24 02:21:42'),
(629, 2, 19, 'Peringatan Isra\' Mi\'raj', 0, '2022-03-04 15:30:00', '2022-03-04 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/a76dc5a9ce74c60e75a6e9101fd8a39b.pdf', NULL, NULL, 'uploads/foto_kegiatan/6cb46c6d2fcc11fbd2a06e09bcb7867b.JPG', '2022-03-23 02:38:00', '2022-03-24 02:24:38'),
(630, 2, 2, 'Webinar Employee Financial Wellness dengan Mengelola Investasi Sejak Dini', 0, '2022-03-08 09:30:00', '2022-03-08 12:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/373ab4051f56c9c90064960e1a76b530.pdf', NULL, NULL, 'uploads/foto_kegiatan/75945cfc5746692f3b6bb03ac1f93963.jpg', '2022-03-23 03:57:12', '2022-03-24 00:39:36'),
(631, 2, 2, 'Irjen Menyapa', 0, '2022-03-09 08:00:00', '2022-03-09 11:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/178a6bcd526b3ea7edadc8fa5ae59b1c.pdf', NULL, NULL, 'uploads/foto_kegiatan/886a45e415a36f4e9ebfed870a62df75.jpg', '2022-03-23 04:04:25', '2022-03-24 00:41:26'),
(632, 2, 2, 'Menerima Kunjungan Sekda Sintang', 0, '2022-03-11 10:00:00', '2022-03-11 11:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'uploads/foto_kegiatan/081d519e4a6c6b4681c613cd455f7f7b.jpg', '2022-03-23 04:34:00', '2022-03-24 00:47:51'),
(633, 2, 2, 'Undangan Webinar Hari Bakti Perbendaharaan Tahun 2022', 0, '2022-03-14 08:30:00', '2022-03-14 11:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/02070d5b58ec33dd2136ce4483c64a6d.pdf', NULL, NULL, 'uploads/foto_kegiatan/dbf91256372b89dbe5a288e45fcf1a88.jpeg', '2022-03-23 04:38:42', '2022-03-23 04:50:58'),
(634, 2, 19, 'Entry Meeting BPK dalam Rangka Pemeriksaan atas LKPP Tahun 2021', 0, '2022-03-14 13:00:00', '2022-03-14 16:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/b9809bf3a335ef97cd59382d4f0bb68b.pdf', NULL, NULL, 'uploads/foto_kegiatan/f855e587ab9e28fad4f4d92f7e8710c3.jpg', '2022-03-23 05:32:14', '2022-03-24 00:51:34'),
(635, 2, 2, 'Undangan Webinar Keamanan Informasi di Lingkungan Kementerian Keuangan', 0, '2022-03-15 08:30:00', '2022-03-15 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/b95e65195aa0e31e30da2d3cc3ab3426.pdf', NULL, NULL, 'uploads/foto_kegiatan/f81e3452db0bfeb858fff202505ce587.jpeg', '2022-03-23 05:36:03', '2022-03-23 05:38:45'),
(636, 2, 2, 'Undangan Pemberian Apresiasi Kepada Stakeholders dan Mitra Kerja Lingkup Kanwil DJKN Kalbar', 0, '2022-03-15 09:00:00', '2022-03-15 11:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/d45cb2019106ccba950cbf7d486b957a.pdf', NULL, NULL, 'uploads/foto_kegiatan/ee515c5452394c261189f9a36d5785a9.jpeg', '2022-03-23 05:44:35', '2022-03-23 05:44:35'),
(637, 2, 2, 'Strategi Percepatan Belanja APBN Tahun 2022', 0, '2022-03-16 08:30:00', '2022-03-16 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'uploads/foto_kegiatan/ddcd57c6c16960a076bd8f90868f1f84.jpeg', '2022-03-23 05:48:42', '2022-03-23 05:48:42'),
(638, 2, 2, 'Workshop Teknis Pengesahan SP3B BLU Bidang Layanan Kesehatan', 0, '2022-03-16 08:30:00', '2022-03-16 11:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/bcc24e44e7d2aded10b25407a969e40f.pdf', NULL, NULL, NULL, '2022-03-23 05:57:45', '2022-03-23 05:57:45'),
(639, 2, 2, 'Undangan Rapat Pembahasan Pembangunan Hunian Bersama Berupa Rumah Susun Negara (Rusunara) Bagi PNS Kemenkeu di Kota Pontianak', 0, '2022-03-16 09:30:00', '2022-03-16 11:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/58f3b681e1645055b814fdff9cac9639.pdf', NULL, NULL, 'uploads/foto_kegiatan/5bdac041bc4980e7bc0927d615148ad5.jpeg', '2022-03-23 06:14:16', '2022-03-23 06:14:16'),
(640, 2, 12, 'FGD Laporan ALCo Prov. Kalbar', 0, '2022-03-17 09:00:00', '2022-03-17 11:30:00', 'SELESAI', 1, 0, 1, 'uploads/file_lk/59f6d6de3a1f4d4bbd227b0df44b1090.pdf', NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/1401c4bb795ac98cdd88d8549a4573ef.pdf', NULL, 'uploads/file_notula/1cf142bc0caf6fd9df204c4363014691.pdf', 'uploads/foto_kegiatan/f1ba6437d8dcd7d2e9f4db09673d71d8.JPG', '2022-03-23 06:23:45', '2022-03-24 01:01:35'),
(641, 2, 2, 'Undangan Gowes BNN', 0, '2022-03-18 06:00:00', '2022-03-18 08:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/cf2f8d419247297a9d408051276d9f72.pdf', NULL, NULL, NULL, '2022-03-23 06:31:53', '2022-03-23 06:31:53'),
(642, 2, 2, 'Kick Off Program Sinergi Pemberdayaan UMKM Oleh Wakil Menteri Keuangan sekaligus Implementasi Program Kemenkeu Satu Kewilayahan Sumatera Selatan', 0, '2022-03-18 08:30:00', '2022-03-18 11:30:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/68ab08294de9e4656b33cfcfa407a8b9.pdf', NULL, NULL, 'uploads/foto_kegiatan/3d7abc3dd53b2e69b7ac38d5c529e2b9.jpeg', '2022-03-23 06:37:26', '2022-03-23 06:37:26'),
(643, 2, 19, 'Exit Meeting dengan BPK', 0, '2022-03-18 14:00:00', '2022-03-18 16:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/bcd6aa14be9344fed7664eaa021adf37.pdf', NULL, NULL, NULL, '2022-03-23 06:42:36', '2022-03-23 06:42:36'),
(644, 2, 2, 'Undangan Preliminary FGD Pejabat Administrator Triwulan I Tahun 2022 dan Kick-Off Duta Transformasi di Lingkungan Kemenkeu Tahun 2022', 0, '2022-03-22 08:30:00', '2022-03-22 16:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/99255cea872ab0ed64dbe57f1abe2fbf.pdf', NULL, NULL, 'uploads/foto_kegiatan/0032fdb99bacaf0849a57427df452714.jpeg', '2022-03-23 06:53:21', '2022-03-23 06:53:21'),
(645, 2, 2, 'Opening Speech pada Aanwijzing Lelang UMKM Arwana', 0, '2022-03-23 10:00:00', '2022-03-23 11:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/0d60cf2f6dc7d2ed79330a8e85f7e718.pdf', NULL, NULL, 'uploads/foto_kegiatan/b4e6bbf6bd68222530f7a3d5a4b8f74b.jpeg', '2022-03-23 07:02:36', '2022-03-23 07:02:36'),
(646, 2, 12, 'Kunjungan Kerja ke Kota Singkawang dalam Rangka Penandatanganan MoU', 0, '2022-03-24 12:00:00', '2022-03-26 12:00:00', 'SELESAI', 1, 1, 1, 'uploads/file_lk/3de345cf0beb04ffc463ffccad4f08fd.docx', NULL, 'uploads/file_st/05ebc062fceba78fa8f116e3ba980978.pdf', NULL, 1, 0, 1, 'uploads/file_und/0ec9654ffce268b64fb4e28ea20a529d.pdf', NULL, NULL, 'uploads/foto_kegiatan/f117075bd020b755a68f36ddb9f5aecc.jpeg', '2022-03-23 07:07:48', '2022-04-05 18:24:46'),
(647, 2, 2, 'Undangan FGD Branding Logo dan Value BLU \"SPEED\" dan BLU Maturity Ratings', 0, '2022-03-24 08:30:00', '2022-03-24 12:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/f5504ed0754460ec92f793ea735def1d.pdf', 'uploads/file_presensi/c69d4a973825910d96d74cd81b32789e.jpeg', NULL, 'uploads/foto_kegiatan/5afeb32f958342755052a840d8327bf7.jpeg', '2022-03-23 07:11:35', '2022-03-23 20:50:23'),
(648, 2, 2, 'Rapat Dewas BP3C', 0, '2022-03-28 09:00:00', '2022-03-30 17:00:00', 'SELESAI', 1, 1, 0, 'uploads/file_lk/4ca0c0153abd8e4a66dc9ca27928ebf9.pdf', NULL, 'uploads/file_st/73680edf0f531ae9d5b200b465a2622b.pdf', 'uploads/file_spd/215efdebb05318b6ee9e6e28aa07293e.pdf', 1, 0, 0, 'uploads/file_und/f4f7189ecbc3fdf8d8d04729a8dff24a.pdf', NULL, NULL, 'uploads/foto_kegiatan/cebcd73c65753d510a9a515aa45ef412.jpeg', '2022-03-23 07:15:36', '2022-04-04 17:18:17'),
(649, 2, 2, 'Rakor BLU 2022', 0, '2022-03-30 08:00:00', '2022-03-30 10:30:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/9d8de0c29ff3d96215a0ff33b84449a2.pdf', 'uploads/file_presensi/f9462126d8382c33b8e84ee39d5742c4.jpeg', NULL, 'uploads/foto_kegiatan/7ee0e8c955c01715d91563008d98ac2b.jpeg', '2022-03-23 07:17:18', '2022-03-29 21:01:44'),
(652, 2, 2, 'Menerima Kunjungan Mantan Kapolda Sulbar', 0, '2022-03-24 08:00:00', '2022-03-24 08:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'uploads/foto_kegiatan/670381838d52a50d054fcefe89e8d060.JPG', '2022-03-23 22:16:31', '2022-03-23 22:16:31'),
(653, 2, 12, 'Kunjungan Kerja ke Lantamal', 0, '2022-03-24 09:00:00', '2022-03-24 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/49ce69771344038dfa4d01c0db256311.PDF', NULL, NULL, 'uploads/foto_kegiatan/fc3aa513b15cef0e15189e2b31625721.jpeg', '2022-03-23 22:50:47', '2022-03-24 20:50:15'),
(654, 2, 3, 'Rilis APBN Periode 2021', 0, '2022-01-25 08:01:00', '2022-01-25 11:01:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'uploads/foto_kegiatan/a0ad2bbddcc61d298486ab9db61be5be.JPG', '2022-03-24 21:31:01', '2022-03-24 21:35:06'),
(656, 2, 12, 'Undangan UMKM Week 2022', 0, '2022-03-30 12:00:00', '2022-04-01 09:00:00', 'SELESAI', 1, 1, 1, 'uploads/file_lk/a415092d05872a80fea4010f03b1fc13.pdf', NULL, 'uploads/file_st/8ff2dcbf9c99d16866cc826fa438803a.pdf', 'uploads/file_spd/5ff95fa434b5f1540736e6c2a3320622.pdf', 1, 0, 0, 'uploads/file_und/38a8dfea03e015b322749a0ff25890ff.pdf', 'uploads/file_presensi/421eb482db6dacb64f16748711c78313.jpeg', NULL, 'uploads/foto_kegiatan/11416e90ebfd178b0741f6ec558dd5dc.jpeg', '2022-03-25 00:14:52', '2022-04-04 17:17:53'),
(657, 2, 2, 'Acara Grand Final DJPb Data Analytics Competition Tahun 2022', 0, '2022-03-25 15:00:00', '2022-03-25 17:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/fa79e854ecc079d81c90554b15ff6be8.pdf', 'uploads/file_presensi/053f36f471dbaecc479076ac4aee61b0.jpeg', NULL, 'uploads/foto_kegiatan/4820e1981fb0896b6f9bc0e6b19e83e9.jpeg', '2022-03-25 01:27:07', '2022-03-25 01:37:19'),
(658, 2, 19, 'Undangan Syukuran dalam rangka HUT Ke-73 Bekangad Tahun 2022', 0, '2022-03-24 09:00:00', '2022-03-24 12:00:00', 'SELESAI', 1, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 'uploads/file_und/e8d1c7bb5b3d6f59bf6dc45313a7db7e.PDF', NULL, NULL, 'uploads/foto_kegiatan/faa57be3986bc8828019588575a61272.jpeg', '2022-03-27 20:20:50', '2022-03-27 20:54:31'),
(659, 2, 19, 'Opening Ceremony Gebyar Kalbar 2022', 0, '2022-03-28 09:00:00', '2022-03-28 11:00:00', 'SELESAI', 1, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 'uploads/file_und/9e540c627fcc36d5e2fe92f5d4143ece.PDF', NULL, NULL, 'uploads/foto_kegiatan/7c8f385fb4bd550f20a207b3c3013f89.jpeg', '2022-03-27 20:54:20', '2022-03-27 20:54:20'),
(660, 2, 2, 'Undangan Wisuda Poltekkes Pontianak', 0, '2022-03-30 08:00:00', '2022-03-30 12:00:00', 'BELUM DILAKSANAKAN', 1, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 'uploads/file_und/d940c12bf25b25b00029397598bf500b.PDF', NULL, NULL, NULL, '2022-03-28 01:06:14', '2022-03-28 01:06:14'),
(661, 2, 2, 'Konferensi Pers APBN Kita', 0, '2022-03-28 16:00:00', '2022-03-28 17:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'uploads/foto_kegiatan/87d80720fb3a642f994b60957a478081.jpeg', '2022-03-28 03:26:24', '2022-03-28 03:26:24'),
(662, 2, 28, 'Deklarasi ISO 370001:2016 Sistem Manajemen Anti Penyuapan dan Sosialisasi IKPA 2022', 0, '2021-03-29 08:01:00', '2021-03-29 11:01:00', 'SELESAI', 1, NULL, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'uploads/foto_kegiatan/b16d37b75e98aa472cd24f1d8a083e3d.jpg', '2022-03-28 20:23:43', '2022-03-28 20:23:43'),
(663, 2, 28, 'Deklarasi ISO 370001:2016 Sistem Manajemen Anti Penyuapan dan Sosialisasi IKPA 2022', 0, '2021-03-29 08:01:00', '2021-03-29 10:01:00', 'SELESAI', 1, NULL, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'uploads/foto_kegiatan/9c3b67d1475387e2daea4c512f7d8ccc.jpg', '2022-03-28 20:28:32', '2022-03-28 20:28:32'),
(664, 2, 2, 'Kunjungan/Koordinasi Sinergi Ke K/L Pagu Besar', 0, '2022-03-29 01:01:00', '2022-03-29 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-03-28 20:28:50', '2022-03-28 20:28:50'),
(665, 2, 2, 'Deklarasi ISO 37001:2016 Sistem Manajemen AntiPenyuapan (SMAP)', 0, '2022-03-29 08:30:00', '2022-03-29 12:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/6fb3715f4d6a23904db9bef3c3b3f952.pdf', 'uploads/file_presensi/a10f92db03abf313cd41183725f0c6c8.jpeg', NULL, 'uploads/foto_kegiatan/8adf3ee69dd627543bdc75241a72ee06.jpeg', '2022-03-28 20:31:06', '2022-03-28 20:31:06'),
(666, 2, 2, 'Menghadiri Leaders Talk: Penyesuaian Kebijakan PPN Untuk Pajak Yang Berkeadilan', 0, '2022-03-30 09:30:00', '2022-03-30 11:30:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/05ddb6afee7af9e400130764a5354502.pdf', 'uploads/file_presensi/50b9e4c037be7ae0f1ba07e1a124b0b7.jpeg', NULL, 'uploads/foto_kegiatan/ea1f838caf34f2d6a4c13b50fff14825.jpeg', '2022-03-29 01:32:34', '2022-03-29 21:03:21'),
(667, 2, 26, 'GKM Pengelolaan Kinerja', 0, '2022-04-01 16:00:00', '2022-04-01 17:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/cb8adc3de4adb919a5108fed85e35c4e.pdf', 'uploads/file_presensi/29cbe7e8cf1a4f4d6a2b0bc8cda072f6.jpeg', NULL, 'uploads/foto_kegiatan/29741dfd2c5c293007449092a04a17d9.jpeg', '2022-04-03 19:30:46', '2022-04-03 19:30:46'),
(668, 2, 2, 'Memberikan Kultum', 0, '2022-04-04 12:15:00', '2022-04-04 13:45:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'uploads/foto_kegiatan/2eb3c2e2058487db0f26a4df1c6ec0c2.jpeg', '2022-04-04 17:10:06', '2022-04-04 17:56:25'),
(669, 2, 19, 'Rapat Pembahasan Kinerja Triwulan I', 0, '2022-04-04 13:30:00', '2022-04-04 16:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/03c2e23fa30daa1a41255963808e1190.pdf', NULL, NULL, 'uploads/foto_kegiatan/1414b5dc0284ff9d2054cdbf16648a1f.jpeg', '2022-04-04 17:17:12', '2022-04-05 17:58:18'),
(670, 2, 2, 'Menerima Kunjungan Pimpinan Divisi Khusus Pemerintahan (Telkom)', 0, '2022-04-05 13:00:00', '2022-04-05 14:00:00', 'SELESAI', 1, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'uploads/foto_kegiatan/54cc2f09741d977d18eddd18b79ff11d.jpeg', '2022-04-04 17:23:17', '2022-04-05 01:54:55'),
(671, 2, 2, 'Undangan Sharing Session Kehumasan Bagi Pejabat Pimpinan Tinggi Pratama Kementerian Keuangan Tingkat Kantor Wilayah', 0, '2022-04-05 09:00:00', '2022-04-05 13:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/e8d17061eb2b1d24cae89bf925a2b88e.pdf', 'uploads/file_presensi/8e89645b2163c4c2a93d72c509369ccf.jpeg', NULL, 'uploads/foto_kegiatan/45f99af94fef6f0791c36cd3bc87e0e1.jpeg', '2022-04-04 19:06:10', '2022-04-05 01:48:16'),
(672, 2, 19, 'Rapat Pembahasan Rencana Rilis APBN Kalimantan Barat Triwulan I Tahun 2022', 0, '2022-04-05 14:00:00', '2022-04-05 15:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/3d8c839827130b46de1dbfcafd9b75f2.pdf', NULL, NULL, 'uploads/foto_kegiatan/d18455ba264d3fd2307ccc0b8b8a10a8.jpeg', '2022-04-05 01:57:53', '2022-04-06 00:35:16'),
(673, 2, 2, 'Menerima Kunjungan GM Telkom Kalbar untuk membahas roadmap jaringan di Kalbar', 0, '2022-04-06 10:00:00', '2022-04-06 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'uploads/foto_kegiatan/c1e19cf62ec821f7e7a957eb73d8a9f1.jpeg', '2022-04-05 01:59:17', '2022-04-05 20:41:26'),
(674, 2, 2, 'MUSRENBANG', 0, '2022-04-07 08:00:00', '2022-04-07 12:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 'uploads/file_und/f24ddb5cc9739b9206fbe9151d3d0a73.pdf', NULL, NULL, 'uploads/foto_kegiatan/5b802b294f9247750e3de58cf405a047.JPG', '2022-04-05 02:00:24', '2022-04-07 00:02:41'),
(675, 2, 12, 'Focus Group Discussion (FGD) Tim Implementasi Regional Chief Economist (RCE) Penyusunan Laporan Asset Liability Committee (ALCo) Regional Kalimantan Barat', 0, '2022-04-11 09:00:00', '2022-04-11 11:30:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/75049765ab27a977005bb5a074ac8c68.pdf', NULL, NULL, NULL, '2022-04-06 18:59:22', '2022-08-03 03:11:13'),
(676, 2, 2, 'Knowing Your Employee (ivan)', 0, '2022-04-06 14:00:00', '2022-04-06 15:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-04-06 19:02:34', '2022-04-06 19:02:34'),
(677, 2, 2, 'Knowing Your Employee (andar)', 0, '2022-04-06 16:00:00', '2022-04-06 17:30:00', 'SELESAI', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-06 19:34:44', '2022-04-06 19:34:44'),
(678, 2, 2, 'Knowing Your Employee (andar)', 0, '2022-04-06 16:00:00', '2022-04-06 17:30:00', 'SELESAI', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-06 19:36:15', '2022-04-06 19:36:15'),
(679, 2, 2, 'Knowing Your Employee (andar)', 0, '2022-04-06 16:00:00', '2022-04-06 17:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-04-06 19:39:10', '2022-04-06 19:39:32'),
(680, 2, 2, 'Undangan Pencanangan Pembangunan ZI Bidkeu Polda Kalbar', 0, '2022-04-08 09:30:00', '2022-04-08 11:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/7e281eddcd0c0b1d69db193c5f71d3fc.PDF', NULL, NULL, 'uploads/foto_kegiatan/488c0dd83bf2dd0bfae92b165eb945d9.jpeg', '2022-04-07 00:05:25', '2022-04-08 00:21:13'),
(681, 2, 26, 'DKO Triwulan I_KPPN', 0, '2022-04-12 13:00:00', '2022-04-12 15:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/fe2e9772a29a404422f780bdf6e94858.pdf', NULL, 'uploads/file_notula/d778293948e7b5db7fd965d46f496e73.pdf', 'uploads/foto_kegiatan/9082fc15ff1e78f83c103a26f40ad378.jpeg', '2022-04-07 00:11:41', '2022-07-27 04:20:15'),
(682, 2, 2, 'Undangan Deputies ALCO I Bulan April 2022', 0, '2022-04-08 13:30:00', '2022-04-08 15:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/500382952a8cc71f2564067c4ccc6bea.pdf', 'uploads/file_presensi/cd3c8c0fc6edd37cd48bbd16e9dd8eda.jpeg', NULL, 'uploads/foto_kegiatan/b877df275b7ab4025cb026d00b373bf7.jpeg', '2022-04-07 17:48:17', '2022-04-08 00:53:07'),
(683, 2, 12, 'Penandatanganan MoU dan Koordinasi Percepatan Transfer ke Daerah dan Dana Desa Kabupaten Kayong Utara', 0, '2022-04-12 09:00:00', '2022-04-12 10:00:00', 'SELESAI', 1, 1, 0, 'uploads/file_lk/2a8bd95f9c5b84202117e8bd76ea66df.pdf', NULL, 'uploads/file_st/1b38dc37a0f297542a76e2a79dfbb08c.pdf', NULL, 1, 0, 1, 'uploads/file_und/253f384d5389bd688581ac1c985b2220.pdf', NULL, NULL, 'uploads/foto_kegiatan/ee7f06cb8951530687ebdd5a1c9e36c6.pdf', '2022-04-07 18:46:03', '2022-04-27 00:54:06'),
(684, 2, 12, 'Penandatanganan MoU dan Koordinasi Percepatan Transfer ke Daerah dan Dana Desa Kabupaten Ketapang', 0, '2022-04-13 09:00:00', '2022-04-13 10:00:00', 'SELESAI', 1, 1, 0, 'uploads/file_lk/702912cf75c86c9705051bb6baa2ec55.pdf', NULL, 'uploads/file_st/70a320b2127af7daa38240016b5a0125.pdf', NULL, 1, 0, 1, 'uploads/file_und/9215a4a78faa922ffa512f45cdc1d499.pdf', NULL, NULL, 'uploads/foto_kegiatan/565c440a9e0bea721eb013205fe3607a.pdf', '2022-04-07 18:46:52', '2022-04-27 00:58:46'),
(686, 2, 2, 'Undangan Menghadiri Rapat Koordinasi Nasional Pelaksanaan Anggaran Tahun 2022', 0, '2022-04-12 08:00:00', '2022-04-13 13:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/8adb8d64b42a80ead4b9904b1c65e7d4.pdf', 'uploads/file_presensi/da9436fc2b3ae7f34e5c7a0498f0b744.jpeg', NULL, 'uploads/foto_kegiatan/c8fc393cf96337dabb163287d63f0dfa.jpeg', '2022-04-08 00:01:57', '2022-04-12 21:21:10');
INSERT INTO `kegiatans` (`id`, `kode_djpb_id`, `struktur_id`, `uraian`, `anggaran`, `tgl_mulai`, `tgl_selesai`, `status_pelaksanaan`, `is_strategis`, `is_perjalanan_dinas`, `is_sosialisasi`, `file_lk`, `file_rab`, `file_st`, `file_spd`, `is_kakanwil`, `is_gubernur`, `is_bupati`, `file_und`, `file_presensi`, `file_notula`, `foto_kegiatan`, `created_at`, `updated_at`) VALUES
(687, 2, 2, 'Bincang Kakanwil bersama PKL STAN KPPN Pontianak', 0, '2022-04-08 08:00:00', '2022-04-08 08:45:00', 'SELESAI', 1, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'uploads/foto_kegiatan/7570ca098518dfa7e757c588da1ca293.jpeg', '2022-04-08 00:20:25', '2022-04-08 00:20:25'),
(688, 2, 2, 'Undangan Rapat Deputies ALCO II bulan April 2022', 0, '2022-04-12 12:30:00', '2022-04-12 15:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/305e0057228c6f994f6a82b3602b45cf.pdf', 'uploads/file_presensi/6b4aa26f3cd56bc5a59975390606dbd7.jpeg', NULL, 'uploads/foto_kegiatan/714a18f4a1e6fc51ee4e634470fefdc0.jpeg', '2022-04-11 21:26:25', '2022-04-12 01:24:59'),
(689, 2, 12, 'Penandatanganan MoU dan Koordinasi Percepatan Transfer ke Daerah dan Dana Desa Kabupaten Mempawah', 0, '2022-04-14 13:00:00', '2022-04-14 15:30:00', 'SELESAI', 1, 1, 0, 'uploads/file_lk/010ce1e9bbc7e65f8dafef3707078f90.pdf', NULL, 'uploads/file_st/83ef2491ffd56c724982f284c64d74b1.pdf', NULL, 1, 0, 1, 'uploads/file_und/4d27ce7e65c762f07305c38dc578160e.pdf', NULL, NULL, 'uploads/foto_kegiatan/48de6c83db0e5c24f81e92649a6dfed6.pdf', '2022-04-11 21:33:48', '2022-04-27 01:16:49'),
(690, 2, 12, 'Penandatanganan MoU dan Koordinasi Percepatan Transfer ke Daerah dan Dana Desa Kabupaten Landak', 0, '2022-04-19 13:00:00', '2022-04-19 15:30:00', 'SELESAI', 1, 1, 0, 'uploads/file_lk/e70d9a201694c76cd048e3431f5f0abe.pdf', NULL, 'uploads/file_st/31e13bc06a534ca4b385037cfe864da3.pdf', NULL, 1, 0, 1, 'uploads/file_und/0698495f0e8fbf1e99f2bf17cabfb808.pdf', NULL, NULL, 'uploads/foto_kegiatan/35f8438a767bb5aa73a394af586a8eb5.pdf', '2022-04-11 21:35:21', '2022-04-25 01:55:14'),
(691, 2, 12, 'Penandatanganan MoU dan Koordinasi Percepatan Transfer ke Daerah dan Dana Desa Kabupaten Sanggau', 0, '2022-04-19 09:00:00', '2022-04-19 11:30:00', 'SELESAI', 1, 1, 0, 'uploads/file_lk/6c5a2c7719c69742670423a1c11f567a.pdf', NULL, 'uploads/file_st/f01b2106dc70aeecfd6f18de26fe3b09.pdf', NULL, 1, 0, 1, 'uploads/file_und/b0750671f25f4e4ecaa7c04523240b83.pdf', NULL, NULL, 'uploads/foto_kegiatan/55e5182e0ea0300b4d76902a86832892.pdf', '2022-04-11 21:37:13', '2022-04-25 01:51:35'),
(692, 2, 3, 'Pelaksanaan Kegiatan Sosialisasi/Diseminasi Kebijakan PNBP', 0, '2022-06-08 01:01:00', '2022-06-10 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-04-12 20:56:30', '2022-04-12 20:56:30'),
(693, 2, 2, 'Pelantikan Pejabat di Lingkungan Kementerian Keuangan', 0, '2022-04-13 14:00:00', '2022-04-13 15:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/2805e65677e4488f4bbc56e53ac055d7.pdf', 'uploads/file_presensi/552af2ac3a1129005a6233469fbaceda.jpeg', NULL, 'uploads/foto_kegiatan/60a194ef015a283f09d6d8564713b621.jpeg', '2022-04-12 21:22:35', '2022-04-18 19:24:11'),
(695, 2, 2, 'Penandatanganan MoU dan Koordinasi Percepatan Transfer ke Daerah dan Dana Desa Kabupaten Kubu Raya', 0, '2022-04-21 12:01:00', '2022-04-21 15:00:00', 'BELUM DILAKSANAKAN', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-17 00:04:31', '2022-04-17 00:04:31'),
(696, 2, 2, 'Undangan Kegiatan Rapat Koordinasi Dewan Pengawas BLU lingkup DJPb Tahun 2022', 0, '2022-04-19 09:30:00', '2022-04-19 12:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, 'uploads/file_st/08af0ac0dc88a4ca7912c351ddc39866.pdf', NULL, 1, 0, 0, 'uploads/file_und/d2c19aefe344fd94e1bc61df703c2911.pdf', 'uploads/file_presensi/75df2ace7c02e1daa61619dc6fe000d1.jpeg', NULL, 'uploads/foto_kegiatan/1b23c248525dc7bab44ff5deecc63987.jpeg', '2022-04-17 18:00:15', '2022-04-19 20:46:22'),
(697, 2, 2, 'Penyelenggaraan Peringatan Nuzulul Qur’an Ramadhan 1443H', 0, '2022-04-20 09:00:00', '2022-04-20 11:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/2ac56612b5b2216c70ee0b2ea0108cca.pdf', 'uploads/file_presensi/f9e6ba82d382ebede88430f230b9150f.jpeg', NULL, 'uploads/foto_kegiatan/caed286a98a6ce49545809ff2c5b6285.jpeg', '2022-04-17 18:12:55', '2022-04-19 19:45:44'),
(698, 2, 19, 'Undangan Kegiatan Perpisahan Mutasi dan Pengangkatan Pejabat Administrator di Lingkungan Kanwil DJPb Provinsi Kalimantan Barat', 0, '2022-04-20 16:00:00', '2022-04-20 18:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/00d8546cb727a6acebea246e88933d7d.pdf', NULL, NULL, NULL, '2022-04-17 18:13:50', '2022-04-21 02:20:44'),
(700, 2, 12, 'Penandatanganan MoU dan Koordinasi Percepatan Transfer ke Daerah dan Dana Desa Kabupaten Sekadau', 0, '2022-04-21 09:00:00', '2022-04-21 11:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/f5dc4590dfe07defdd3a46a83443bbfd.pdf', NULL, NULL, NULL, 1, 0, 1, 'uploads/file_und/ee2bd6480953307705d0d0c10dfbcd15.pdf', 'uploads/file_presensi/b376424ae33e27bf01fbc051caa7ce2a.pdf', NULL, 'uploads/foto_kegiatan/fcfa61efc37e5b20ce2a698ca16ed3b7.pdf', '2022-04-17 18:16:28', '2022-04-27 19:26:40'),
(701, 2, 2, 'Rapat Dewas Poltekkes', 0, '2022-04-25 09:00:00', '2022-04-25 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/461c7d5a2ed9195de41f6a6ed10c0f6b.pdf', NULL, NULL, NULL, '2022-04-17 18:19:04', '2022-04-24 18:27:18'),
(702, 2, 2, 'Undangan Menghadiri \"Talk Show Hari Kartini 2022: G20, Women in Inclusive Economy\"', 0, '2022-04-21 09:00:00', '2022-04-21 10:30:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/18b3eea807695abe75e12ce4a50e5d9c.pdf', NULL, NULL, 'uploads/foto_kegiatan/a24e3b2d878fdc5b4ee70ebf9ee11bd3.jpeg', '2022-04-18 18:51:50', '2022-04-21 02:37:20'),
(703, 2, 28, 'I Love Monday', 0, '2022-04-18 08:00:00', '2022-04-18 09:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/6fb439d2a5af8a8f64cea0356a54f3e6.pdf', NULL, NULL, NULL, '2022-04-18 19:21:35', '2022-04-18 19:21:35'),
(704, 2, 2, 'Penyampaian Kegiatan Press Conference Tunjangan Hari Raya (THR) dan Gaji ke-13', 0, '2022-04-16 11:00:00', '2022-04-16 12:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/d85db7b2e405ab5793de50acad57c244.pdf', NULL, NULL, 'uploads/foto_kegiatan/2759d5a4457c5586b95538b6ac74660b.jpeg', '2022-04-18 19:27:49', '2022-04-18 19:27:49'),
(706, 2, 2, 'Webinar The Power Of Hajj - Rencanakan Hajimu', 0, '2022-04-21 09:00:00', '2022-04-21 11:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/e270a236328de07e71c85888d93516ff.pdf', NULL, NULL, 'uploads/foto_kegiatan/824382d068fd360c3999869aba3a328e.jpeg', '2022-04-19 20:43:35', '2022-04-21 02:36:37'),
(707, 2, 2, 'Permintaan Keynote Speaker Forum Belajar KALIBRASI (Kemenkeu KALImantan BaRAt berSInergi) Kemenkeu Corpu Open Class \"Communication Skills\" Tahun Anggaran 2022', 0, '2022-04-21 08:00:00', '2022-04-21 11:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/5e1cf8bd11fb8d1d632d7465b59d0266.pdf', NULL, NULL, 'uploads/foto_kegiatan/6e8071be5daf84f65f157feb2cf3c972.jpeg', '2022-04-21 02:28:44', '2022-04-21 02:35:28'),
(708, 2, 19, 'I Love Monday', 0, '2022-04-25 07:30:00', '2022-04-25 08:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-04-24 17:39:47', '2022-04-24 17:39:47'),
(709, 2, 35, 'Kunjungan Kerja ke BPK Perwakilan Kalbar', 0, '2022-04-22 09:30:00', '2022-04-22 11:00:00', 'SELESAI', 1, 0, 0, 'uploads/file_lk/7c41024206465d358374652f320cdb00.pdf', NULL, 'uploads/file_st/27da031cd7a3ee34d1b9f6e97d724747.pdf', NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-04-24 18:26:31', '2022-04-26 19:41:09'),
(710, 2, 15, 'FGD Kajian Fiskal Regional Triwulan I Tahun 2022', 0, '2022-05-11 09:01:00', '2022-05-11 09:01:00', 'SELESAI', 1, 0, 1, 'uploads/file_lk/f67e910a8dea48426b8f9f1ab51f70a6.pdf', NULL, NULL, NULL, 0, 0, 0, 'uploads/file_und/56e57761f09554645ec3c171371c5fa5.pdf', 'uploads/file_presensi/ef56012b93c7a92b348a869acff11e71.pdf', 'uploads/file_notula/32077f8c94f0d435c4da3b97de3de90e.pdf', 'uploads/foto_kegiatan/162b6db92fae77aec8547971a16cc2ef.pdf', '2022-05-10 23:46:28', '2022-05-16 10:06:50'),
(711, 2, 28, 'Internalisasi SAKTI', 0, '2022-04-26 09:00:00', '2022-04-26 11:00:00', 'SELESAI', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 02:55:53', '2022-05-13 02:55:53'),
(712, 2, 2, 'Kunjungan ke BPKP', 0, '2022-04-26 12:30:00', '2022-04-26 13:30:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'uploads/foto_kegiatan/4e389e1f723b84199fb96f983f11cb84.jpeg', '2022-05-13 02:58:05', '2022-05-13 03:13:27'),
(713, 2, 28, 'Internalisasi SAKTI', 0, '2022-04-26 09:00:00', '2022-04-26 11:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/380920410c439ceb07d1d15b5bed43f2.pdf', NULL, NULL, NULL, '2022-05-13 03:01:20', '2022-05-13 03:01:20'),
(714, 2, 19, 'Mengisi acara di TVRI', 0, '2022-04-26 14:00:00', '2022-04-26 15:30:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'uploads/foto_kegiatan/cc1ec8ab3adbab3ce0fa4ab4b59d4e8a.jpeg', '2022-05-13 03:05:02', '2022-05-13 03:13:03'),
(715, 2, 2, 'Pengarahan Direktur Jenderal Perbendaharaan kepada Pejabat Eselon II dan Eselon III DJPb', 0, '2022-04-27 13:00:00', '2022-04-27 15:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/b712d04c6fbad434dae391aa3ae8354e.pdf', 'uploads/file_presensi/1d0351c5e30ff1338f6504f889ee6c5a.jpeg', NULL, 'uploads/foto_kegiatan/0f27678a4dda40ee2a3c51fb5be0a9b2.jpeg', '2022-05-13 03:12:44', '2022-05-13 03:12:44'),
(716, 2, 19, 'Rilis APBN', 0, '2022-04-27 15:00:00', '2022-04-27 16:30:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/3889d56554332497809ab7ca6894f655.pdf', NULL, NULL, 'uploads/foto_kegiatan/122cf2255853c7808c4fb944747e18e5.jpeg', '2022-05-13 03:18:10', '2022-05-13 03:22:50'),
(717, 2, 2, 'Undangan Rapat Pemberdayaan Produk UMKM Madu Kelulut Khas Kalbar', 0, '2022-04-27 13:30:00', '2022-04-27 15:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/3274c54f09851ba0a12ca9b2d98cfa62.pdf', NULL, 'uploads/file_notula/4c549e36381545366c3fd42ce1f17265.pdf', NULL, '2022-05-13 03:22:25', '2022-05-13 03:22:25'),
(718, 2, 2, 'Undangan Sosialisasi Peningkatan Integritas dan Penguatan Budaya Antikorupsi', 0, '2022-04-27 09:00:00', '2022-04-27 11:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/5b81c6136c6c6da30999ad5123044303.pdf', NULL, NULL, 'uploads/foto_kegiatan/348a8173eb5725e114a2dd7376f3e324.jpeg', '2022-05-13 03:29:43', '2022-05-13 03:29:43'),
(719, 2, 2, 'Rapat Pimpinan Perwakilan Kementerian Keuangan Provinsi Kalimantan Barat', 0, '2022-04-27 16:30:00', '2022-04-27 18:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/c9c3fef57b69d5797b4446bfb1c43312.pdf', NULL, NULL, 'uploads/foto_kegiatan/f85133fe9d862787e6b22978546ba32a.jpeg', '2022-05-13 03:34:59', '2022-05-13 03:34:59'),
(720, 2, 2, 'Penyerahan Hasil Donasi untuk kegiatan Kementerian Keuangan Kalimantan Barat Berbagi', 0, '2022-04-28 08:00:00', '2022-04-28 10:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/7051a1c4974473e0bed29e3fb0cd4984.pdf', NULL, NULL, 'uploads/foto_kegiatan/90c49a474c86b93aa105b09e93a89a1b.jpeg', '2022-05-13 03:37:50', '2022-05-13 03:39:24'),
(721, 2, 2, 'Undangan Silaturahmi Daring Idulfitri Kementerian Keuangan dengan tema #RayaBersama: Peduli dan Semangat Berjuang Pulih dari Pandemi', 0, '2022-05-10 13:15:00', '2022-05-10 15:15:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/fd132e6e7280427ba902d0d211739deb.pdf', NULL, NULL, 'uploads/foto_kegiatan/37010eda41871cdf58d1eb773562e59e.jpeg', '2022-05-13 03:58:51', '2022-05-13 03:58:51'),
(722, 2, 2, 'Undangan Dalam Rangka Penyelenggaraan Halal Bihalal Online Hari Raya Idul Fitri 1443H lingkup Ditjen Perbendaharaan', 0, '2022-05-12 09:00:00', '2022-05-12 11:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/c3fde0dce396c6a70682c47c79780359.pdf', 'uploads/file_presensi/f0ad7b9f3fde06813e216ac0f26fa7b9.jpeg', NULL, 'uploads/foto_kegiatan/c99f708260b8223f00439e49a2d60c78.jpeg', '2022-05-13 04:02:09', '2022-05-13 04:02:09'),
(723, 2, 19, 'Undangan Menghadiri Perpisahan Pejabat Pengawas yang Mengalami Mutasi dan Pengangkatan dalam Jabatan Pengawas Lingkup Kanwil DJPb Provinsi Kalimantan Barat', 0, '2022-05-13 09:00:00', '2022-05-13 11:00:00', 'SELESAI', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/b4a273449a8792fe529bd21220dedee0.pdf', NULL, NULL, NULL, '2022-05-13 04:05:04', '2022-05-13 04:05:04'),
(724, 2, 12, 'Undangan Focus Group Discussion (FGD) Tim Implementasi Regional Chief Economist (RCE) Penyusunan Laporan Asset Liability Committee (ALCo) Regional Kalimantan Barat', 0, '2022-05-17 09:00:00', '2022-05-17 12:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/61f646c6445a9e2b2df8c723e175245d.pdf', NULL, NULL, NULL, '2022-05-13 04:07:47', '2022-06-05 07:42:49'),
(725, 2, 2, 'Silaturahmi dan Halal bi Halal Kementerian Keuangan Perwakilan Kalimantan Barat', 0, '2022-05-17 12:00:00', '2022-05-17 14:00:00', 'BELUM DILAKSANAKAN', 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/fb06dc4acb6ae50b774a205d7fb08a56.pdf', NULL, NULL, NULL, '2022-05-13 04:10:22', '2022-05-13 04:10:22'),
(726, 2, 2, 'Narsum Workshop Evaluasi Pengelolaan Keuangan dan Pembangunan Desa pada Kab. Mempawah', 0, '2021-01-01 01:01:00', '2021-12-31 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/1173ede8ea0f668d61bce8232a164808.PDF', NULL, NULL, NULL, '2022-05-13 04:16:39', '2022-05-13 04:16:39'),
(728, 2, 2, 'Rapat Dewas Poltekkes', 0, '2022-05-19 01:01:00', '2022-05-19 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-05-13 04:20:17', '2022-05-13 04:20:17'),
(729, 2, 2, 'Rapat Dewas Poltekkes di Sintang', 0, '2022-05-29 01:01:00', '2022-06-01 12:00:00', 'BELUM DILAKSANAKAN', 1, 1, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-05-13 04:21:24', '2022-05-13 04:21:24'),
(730, 2, 35, 'Membuat video GFS', 0, '2022-06-01 01:01:00', '2022-07-31 12:00:00', 'BELUM DILAKSANAKAN', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-17 21:01:47', '2022-05-17 21:07:22'),
(731, 2, 13, 'Focus Group Discussion (FGD) Analisis Kebutuhan Pembiayaan Daerah dan Analisis Pengembalian Pinjaman Daerah Tahun 2022', 0, '2022-05-19 09:01:00', '2022-05-19 11:30:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/99b0114615125bb999c89fac82dbd2c0.pdf', NULL, NULL, 'uploads/foto_kegiatan/18055d56979b00ef611f7df464ef8020.pdf', '2022-05-18 03:39:40', '2022-05-24 00:51:32'),
(732, 2, 17, 'Bincang Santai Pengembangan UMKM Kanwil DJPb Provinsi Kalimantan Barat', 0, '2022-05-31 01:01:00', '2022-05-31 12:00:00', 'SELESAI', 1, 0, 1, NULL, 'uploads/file_rab/33023c25a688aa77decd4027e6172de6.pdf', NULL, NULL, 1, 0, 0, 'uploads/file_und/a6aa595b53ad633a1b7f8911e3a2786f.pdf', 'uploads/file_presensi/9901211b8f2716eff4545a460ebcb616.pdf', NULL, NULL, '2022-05-24 03:18:16', '2022-06-03 01:32:56'),
(733, 2, 3, 'One On One Meeting dengan KPPN', 0, '2022-06-02 01:01:00', '2022-06-03 12:00:00', 'BELUM DILAKSANAKAN', 1, NULL, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/23e042de3af76befd95d532141fec019.pdf', NULL, NULL, NULL, '2022-05-30 19:07:06', '2022-05-30 19:09:50'),
(734, 2, 3, 'Weekly Meeting KPPN', 0, '2022-06-14 13:01:00', '2022-06-14 15:01:00', 'BELUM DILAKSANAKAN', 1, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'uploads/file_und/00b180bf515af29a9b59395415e960ac.pdf', NULL, NULL, NULL, '2022-05-30 19:09:27', '2022-05-30 19:09:27'),
(736, 2, 2, 'EPA 10 Satker Besar', 0, '2022-06-13 01:01:00', '2022-06-17 12:00:00', 'BELUM DILAKSANAKAN', 1, NULL, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-05-30 19:12:30', '2022-05-30 19:12:30'),
(738, 2, 12, 'Penandatanganan MoU Kapuas Hulu', 0, '2022-06-07 01:01:00', '2022-06-09 12:00:00', 'SELESAI', 1, 1, 1, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2022-06-05 07:39:17', '2022-06-13 10:05:39'),
(739, 2, 12, 'Penandatanganan MoU Kota Pontianak', 0, '2022-06-13 09:00:00', '2022-06-13 11:30:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2022-06-08 01:54:07', '2022-06-13 10:05:28'),
(740, 2, 13, 'FGD Pelaksanaan Penyuran DAK Fisik dan Dana Desa', 0, '2022-06-14 09:01:00', '2022-06-14 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-06-08 01:58:41', '2022-06-08 02:00:14'),
(741, 2, 2, 'FGD Penyusunan Laporan ALCo bulan Mei', 0, '2022-06-15 09:01:00', '2022-06-15 11:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-06-08 02:00:56', '2022-06-08 02:00:56'),
(742, 2, 13, 'FGD Dana Desa Lingkup Provinsi Kalimantan Barat', 0, '2022-06-14 09:01:00', '2022-06-14 11:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/9b12f8364b0819a41998d32b59d55330.pdf', NULL, 'uploads/file_notula/a16bf3a3378c8e6b2985cf240276fdc3.pdf', NULL, '2022-06-13 10:07:20', '2022-07-16 11:15:01'),
(743, 2, 12, 'Rapat ALCo Periode Bulan Mei 2022', 0, '2021-02-17 09:01:00', '2021-02-17 12:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, 'uploads/file_presensi/8a63a4206893deec15facd90a75def07.pdf', 'uploads/file_notula/08401a2493b1fc4dc1a5fbd3a3f3f6d2.pdf', NULL, '2022-06-13 10:08:27', '2022-08-03 03:07:17'),
(744, 2, 12, 'Monev KUR Dalam Kota Bank BPD Kalbar', 0, '2022-06-16 09:01:00', '2022-06-16 12:00:00', 'SELESAI', NULL, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-06-13 10:09:49', '2022-06-27 19:50:56'),
(745, 2, 12, 'Monev KUR Dalam Kota (Bank BNI)', 0, '2022-06-15 01:01:00', '2022-06-15 12:00:00', 'SELESAI', NULL, 1, 0, NULL, NULL, 'uploads/file_st/d05485009d0173db5963dab427208340.pdf', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-06-15 07:27:29', '2022-06-15 07:27:29'),
(747, 2, 12, 'Penandatanganan MoU Kabupaten Kubu Raya', 0, '2022-06-24 14:01:00', '2022-06-24 16:01:00', 'SELESAI', NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, 'uploads/file_notula/351d311071ee00563e188f827dea1546.pdf', NULL, '2022-06-27 19:52:09', '2022-07-16 11:04:05'),
(748, 2, 12, 'Penandatanganan MoU Kabupaten Sambas', 0, '2022-06-29 13:01:00', '2022-06-29 15:01:00', 'SELESAI', NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 'uploads/file_presensi/35e64db4b4e4ef820c26d552dca1cedc.pdf', 'uploads/file_notula/b5b692a13d96ed0b91a628b572d72be3.pdf', NULL, '2022-06-27 19:54:20', '2022-07-16 11:03:03'),
(749, 2, 12, 'FGD Analisis Harmonisasi dan Belanja Bidang Kesehatan', 0, '2022-06-30 09:01:00', '2022-06-30 11:00:00', 'SELESAI', NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 0, 0, 'uploads/file_und/f54f8e2d0fadaa1dd7846a6aaadd7a66.pdf', 'uploads/file_presensi/81551b55e57ec1fc79854909f7abf970.pdf', NULL, NULL, '2022-06-27 19:56:26', '2022-07-16 11:00:32'),
(750, 2, 38, 'Koordinasi pemberian dukungan kepada Pemkab Bengkayang dalam rangka meraih opini WTP atas LKPD Tahun 2022', 0, '2022-08-08 08:01:00', '2022-08-10 12:00:00', 'SELESAI', 1, 1, 1, 'uploads/file_lk/805390a48056d155a723673a2e50b156.pdf', 'uploads/file_rab/7914ea59d9d3a0f716bd4bf16512ea1d.pdf', 'uploads/file_st/35a9d3405c9168c559b98d6aafd5f63f.pdf', NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2022-06-29 21:19:10', '2022-08-18 00:41:22'),
(752, 2, 36, 'Melakukan pendampingan Penyusunan dan Penyelesaian Permasalahan Laporan Keuangan UAPPA-W dalam rangka penyusunan LK UAPPA-W Tahun 2022  (on the spot)', 0, '2022-08-01 01:01:00', '2022-08-10 12:00:00', 'BELUM DILAKSANAKAN', NULL, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-07-13 20:02:46', '2022-07-13 20:04:12'),
(753, 2, 36, 'Pembinaan dan penyelesaian masalah terkait penyusunan LKBUN pada KPPN Pontianak', 0, '2022-08-15 01:01:00', '2022-08-15 12:00:00', 'BELUM DILAKSANAKAN', NULL, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-07-13 20:05:50', '2022-07-13 20:05:50'),
(754, 2, 40, 'Melakukan monitoring dan evaluasi pengiriman LK-BUN Tingkat Kuasa BUN KPPN dalam wilayah kerja Kanwil', 0, '2022-09-26 01:01:00', '2022-09-30 12:00:00', 'BELUM DILAKSANAKAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 20:43:39', '2022-07-13 20:43:39'),
(755, 2, 38, 'Koordinasi LKPD dengan BKAD Prov.Kalbar', 0, '2022-10-10 01:01:00', '2022-10-10 12:00:00', 'BELUM DILAKSANAKAN', NULL, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-07-13 20:45:23', '2022-07-13 20:45:23'),
(756, 2, 40, 'Melakukan monitoring dan evaluasi LK Tingkat Kuasa BUN Daerah', 0, '2022-10-11 01:01:00', '2022-10-21 12:00:00', 'BELUM DILAKSANAKAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 20:50:03', '2022-07-13 20:50:03'),
(757, 2, 40, 'Melakukan analisis laporan keuangan Badan Layanan Umum (BLU)', 0, '2022-10-11 01:01:00', '2022-10-21 12:00:00', 'BELUM DILAKSANAKAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 20:51:24', '2022-07-13 20:51:24'),
(758, 2, 36, 'Pendampingan Penyusunan dan Penyelesaian Permasalahan Laporan Keuangan UAPPA-W dalam rangka penyusunan LK UAPPA-W Tahun 2021 unaudited', 0, '2022-11-16 08:01:00', '2022-11-16 12:00:00', 'BELUM DILAKSANAKAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 20:52:34', '2022-07-13 20:52:34'),
(759, 2, 38, 'Melakukan sosialisasi/FGD terkait LKPD kepada Pemda lingkup Kalimantan Barat', 0, '2022-11-23 08:01:00', '2022-11-23 12:00:00', 'BELUM DILAKSANAKAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 20:53:55', '2022-07-13 20:53:55'),
(760, 2, 38, 'Pembinaan SAP pada BKAD Prov Kalbar', 0, '2022-12-07 08:01:00', '2022-12-07 12:00:00', 'BELUM DILAKSANAKAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 21:00:09', '2022-07-13 21:00:09'),
(761, 2, 13, 'FGD DAK Fisik Lingkup Provinsi Kalbar', 0, '2022-07-14 01:01:00', '2022-07-14 12:00:00', 'SELESAI', 1, NULL, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/f5ca92ba1c968f92785f06d290667a7d.pdf', NULL, 'uploads/file_notula/838c3ad6428fffc21d0024b70a230290.pdf', NULL, '2022-07-16 11:06:57', '2022-07-16 11:16:35'),
(762, 2, 12, 'FGD Penyusunan Laporan ALCo bulan Juni 2022', 0, '2022-07-14 01:01:00', '2022-07-14 12:00:00', 'SELESAI', 1, NULL, 1, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'uploads/file_presensi/0598dec39b7f634a2a9d189efacba177.pdf', 'uploads/file_notula/d2a60eaabde3a5bf04dd54ad39f26482.pdf', NULL, '2022-07-16 11:08:45', '2022-08-03 02:38:22'),
(763, 2, 17, 'Rapat Koordinasi dan Brainstorming Pembinaan UMKM bersama Bank Pendamping', 0, '2022-07-19 01:01:00', '2022-07-19 12:00:00', 'BELUM DILAKSANAKAN', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/37039333e59625961fa48d1caf0f9393.pdf', NULL, NULL, NULL, '2022-07-18 18:45:30', '2022-07-18 18:45:30'),
(764, 2, 15, 'FGD Penyusunan KFR TW II \"Analisis Harmonisasi Belanja Pemerintah Sektor Kesehatan\"', 0, '2022-07-21 01:01:00', '2022-07-21 12:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, '2022-07-18 19:12:28', '2022-07-25 21:02:53'),
(765, 2, 31, 'Internalisasi Aplikasi SAKTI kepada Pegawai Baru', 0, '2022-04-26 09:01:00', '2022-04-26 12:00:00', 'SELESAI', 0, 0, 1, 'uploads/file_lk/abe3e56cc2ff4a4efe995dc6e7d05dd0.pdf', NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/f8972942b1860e307e3fd6661aae0d91.pdf', NULL, 'uploads/file_notula/3d1db53cf0cdd15a047f170f67d07263.pdf', NULL, '2022-07-21 20:05:27', '2022-07-25 02:10:04'),
(766, 2, 12, 'Rapat Tindak Lanjut MoU', 0, '2022-07-22 01:01:00', '2022-07-22 12:00:00', 'SELESAI', 1, NULL, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/6bc5f9a9b63c6004092155424a018be7.pdf', NULL, 'uploads/file_notula/035a72b265521d39996b394337fd6dc9.pdf', 'uploads/foto_kegiatan/09b1bf88d47ef361e03582db2da4fa69.pdf', '2022-07-21 20:34:56', '2022-07-26 19:17:22'),
(767, 2, 33, 'Pemantauan Kode Etik dan Kepatuhan Pegawai TW II', 0, '2022-06-27 08:01:00', '2022-06-27 12:00:00', 'SELESAI', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-24 19:40:47', '2022-07-24 19:40:47'),
(768, 2, 33, 'GKM dan penandatanganan komitmen pencegahan tindak pelecehan seksual', 0, '2022-07-12 08:01:00', '2022-07-12 12:00:00', 'SELESAI', 1, NULL, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/41d67e6c75e98806626b1171d9367af7.pdf', NULL, 'uploads/file_notula/ba15ee5e004077346283fcd12dc85d8d.docx', NULL, '2022-07-24 19:41:33', '2022-07-26 01:32:35'),
(769, 2, 17, 'FGD Pemberdayaan UMKM Lingkup Provinsi Kalimantan Barat', 0, '2022-07-29 01:01:00', '2022-07-29 12:00:00', 'SELESAI', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/2591b82e116b7d23b1e134ddd8208663.pdf', NULL, NULL, NULL, '2022-07-25 21:00:46', '2022-08-01 19:18:44'),
(770, 2, 3, 'Penyusunan Laporan Reviu Pelaksanaan Anggaran Sem I TA 2022', 0, '2022-07-22 01:01:00', '2022-08-22 12:00:00', 'IN PROGRESS', 1, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-07-26 20:27:11', '2022-07-26 20:56:52'),
(771, 2, 3, 'Diseminasi SBM dan Review Pelaksanaan Anggaran Sem I TA 2022 di KPPN Singkawang', 0, '2022-07-21 01:01:00', '2022-07-22 12:00:00', 'SELESAI', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-26 20:58:57', '2022-07-26 20:59:29'),
(772, 2, 3, 'Diseminasi SBM dan Review Pelaksanaan Anggaran Sem I TA 2022 di KPPN Sanggau', 0, '2022-07-28 01:01:00', '2022-07-29 12:00:00', 'BELUM DILAKSANAKAN', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-26 21:00:07', '2022-07-26 21:00:20'),
(773, 2, 3, 'Optimalisasi Penyerapan dan IKPA Sem II TA 2022  Satker lingkup Kementerian PUPR', 0, '2022-06-24 01:01:00', '2022-06-24 12:00:00', 'SELESAI', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-26 21:01:18', '2022-07-26 21:01:18'),
(774, 2, 3, 'Pembinaan dan Penyusunan Laporan Pembinaan BLU TW III TA 20221', 0, '2022-09-05 01:01:00', '2022-09-23 12:00:00', 'BELUM DILAKSANAKAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-26 21:04:53', '2022-07-26 21:04:53'),
(775, 2, 3, 'Pembinaan dan Penyusunan Laporan Pembinaan BLU TW IV TA 2022', 0, '2021-12-06 01:01:00', '2021-12-24 12:00:00', 'BELUM DILAKSANAKAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-26 21:05:33', '2022-07-26 21:05:33'),
(777, 2, 26, 'Rapat Koordinasi Pengelolaan Kinerja tingkat Wilayah', 0, '2021-03-09 13:01:00', '2021-03-11 09:00:00', 'SELESAI', 0, 1, 1, 'uploads/file_lk/6b480887eaf9d71ef0caa3b07b94cf6c.pdf', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 'uploads/file_notula/3f74f88fc4bad54e57fd7ee1d903835f.pdf', NULL, '2022-07-27 20:54:59', '2022-07-27 21:00:43'),
(778, 2, 12, 'Rapat Pembahasan Permintaan Masukan/Usulan atas Kebutuhan Treasury di Daerah yang Membutuhkan Cross Function', 0, '2022-08-03 01:01:00', '2022-08-03 12:00:00', 'SELESAI', NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/5254140b4229653c01314d3219d7582c.pdf', NULL, NULL, NULL, '2022-08-01 20:47:52', '2022-08-03 01:18:49'),
(779, 2, 12, 'I Love Monday Bidang PPA II \"Tipe Kepribadian Seseorang\"', 0, '2022-07-18 01:01:00', '2022-07-18 12:00:00', 'SELESAI', NULL, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 0, 'uploads/file_und/5f9ca6f00b02ab64bccdeebf68485b62.pdf', NULL, 'uploads/file_notula/8c579c88dc55bec4156c2572e202c2b1.pdf', NULL, '2022-08-03 02:59:41', '2022-08-03 02:59:41'),
(780, 2, 2, 'yang 1', 14556045675, '2021-01-01 01:01:00', '2021-12-31 12:00:00', 'BELUM DILAKSANAKAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-29 07:55:07', '2022-08-29 07:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `kode_djpb`
--

CREATE TABLE `kode_djpb` (
  `id` int(10) UNSIGNED NOT NULL,
  `level_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `lft` int(10) UNSIGNED NOT NULL,
  `rgt` int(10) UNSIGNED NOT NULL,
  `depth` int(10) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_satker` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uraian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `singkatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kode_djpb`
--

INSERT INTO `kode_djpb` (`id`, `level_id`, `parent_id`, `lft`, `rgt`, `depth`, `kode`, `kode_satker`, `uraian`, `singkatan`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 8, 1, '0', '527010', 'Direktorat Jenderal Perbendaharaan', 'DJPb', '2020-12-13 03:54:31', '2020-12-13 03:54:31'),
(2, 2, 1, 2, 7, 2, '1', '528057', 'Kanwil Direktorat Jenderal Perbendaharaan Provinsi Kalimantan Barat', 'Kanwil DJPb Provinsi Kalbar', '2020-12-13 04:03:34', '2021-11-13 00:17:04');

-- --------------------------------------------------------

--
-- Table structure for table `laporans`
--

CREATE TABLE `laporans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_djpb_id` int(10) UNSIGNED NOT NULL,
  `struktur_id` int(10) UNSIGNED NOT NULL,
  `jenis_laporan_id` int(10) UNSIGNED NOT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frekuensi` enum('INSIDENTAL','BULANAN','TRIWULANAN','SEMESTERAN','TAHUNAN') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `progress` enum('BELUM SELESAI','IN PROGRESS','SELESAI') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dasar_hukum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporans`
--

INSERT INTO `laporans` (`id`, `kode_djpb_id`, `struktur_id`, `jenis_laporan_id`, `bulan`, `frekuensi`, `deadline`, `progress`, `tujuan`, `dasar_hukum`, `file`, `created_at`, `updated_at`) VALUES
(4, 2, 32, 18, '2021-12-01', 'BULANAN', '2021-12-15', 'SELESAI', 'Dit PKN', NULL, 'uploads/laporan/822af788c5d9c3ca0f2176e00393ca3e.pdf', '2022-01-11 00:46:47', '2022-01-11 00:46:47'),
(5, 2, 37, 22, '2022-01-01', 'SEMESTERAN', '2022-01-15', 'SELESAI', 'Direktorat Akuntansi dan Pelaporan Keuangan', 'Peraturan Direktur Jenderal Perbendaharaan Nomor PER-30/PB/2017 tentang Pedoman Pembinaan Akuntansi dan Pelaporan Keuangan Pemerintah Daerah oleh Kantor Wilayah Direktorat Jenderal Perbendaharaan', 'uploads/laporan/be4f45cc63c3f53ae8391ceea01be0c8.pdf', '2022-01-12 20:33:19', '2022-01-12 20:33:19'),
(6, 2, 11, 7, '2022-02-01', 'SEMESTERAN', '2022-02-15', 'SELESAI', 'Reviu Pelaksanaan Anggaran Satker', NULL, 'uploads/laporan/ad4162cc90c8ae3841b517bba3dc0c39.pdf', '2022-02-24 18:27:28', '2022-02-24 18:27:28'),
(8, 2, 15, 23, '2022-01-01', 'SEMESTERAN', '2022-02-14', 'SELESAI', 'Monitoring dan Evaluasi Pelaksanaan Penyaluran Pembiayaan Ultra Mikro', 'Peraturan Direktur Jenderal Perbendaharaan Nomor PER-25/PB/2018 tanggal 7 Desember 2018 tentang Petunjuk Teknis Monitoring dan Evaluasi Pembiayaan Ultra Mikro oleh instansi Vertikal Direktorat Jenderal Perbendaharaan', 'uploads/laporan/a40129c4e276d823679bc5a43dc796b7.pdf', '2022-02-28 09:04:40', '2022-02-28 09:04:40'),
(9, 2, 15, 1, '2022-01-01', 'TRIWULANAN', '2022-02-14', 'SELESAI', 'Monitoring dan Evaluasi Pelaksanaan Penyaluran Pembiayaan Ultra Mikro', 'Surat Edaran Direktur Jenderal Perbendaharaan Nomor SE- 61/PB/2017 tentang Petunjuk Teknis Penyusunan Kajian Fiskal Regional', 'uploads/laporan/1a62cd031578317a2434087828b739d0.pdf', '2022-02-28 09:16:56', '2022-02-28 09:16:56'),
(10, 2, 15, 3, '2022-01-01', 'SEMESTERAN', '2022-01-14', 'SELESAI', 'Pembinaan Pelaksanaan Anggaran Daerah', 'PERATURAN DIREKTUR JENDERAL PERBENDAHARAAN NOMOR PER- 34 /PB/2018 TENTANG PEDOMAN PEMBINAAN PELAKSANAAN ANGGARAN DAERAH OLEH KANTOR WILAYAH DIREKTORAT JENDERAL PERBENDAHARAAN', 'uploads/laporan/16eb2f0ad4b5a3bf0dcaeac7b951f6b5.pdf', '2022-02-28 09:36:53', '2022-02-28 09:36:53'),
(12, 2, 15, 10, '2022-01-01', 'SEMESTERAN', '2022-02-14', 'SELESAI', 'Monitoring dan Evaluasi Pelaksanaan Penyaluran Kredit Usaha Rakyat Semester II Tahun 2021 Lingkup Provinsi Kalimantan Barat', 'Nota Dinas Direktur Sistem Manajemen Investasi nomor ND-1086/PB.4/2021 tanggal 14 Oktober 2021 tentang Pelaksanaan Survei dalam rangka Monitoring dan Evaluasi Kredit Usaha Rakyat (KUR) Semester II Tahun 2021', 'uploads/laporan/5209c40f006c5c4b96d069ed36500ac4.pdf', '2022-04-19 21:06:39', '2022-04-19 21:06:39'),
(13, 2, 37, 9, '2022-03-01', 'TRIWULANAN', '2022-05-09', 'SELESAI', 'Direktorat Akuntansi dan Pelaporan Keuangan', 'Nota Dinas Direktur Akuntansi dan Pelaporan Keuangan Nomor ND-333/PB.6/2022 tanggal 13 April 2022 hal Penyusunan LKPK-TW dan LSKP-TW Periode Unaudited Tahun 2021 dan Triwulan I Tahun 2022', 'uploads/laporan/bd68399092b9415af357ee2ef1ec5e05.pdf', '2022-05-24 19:43:34', '2022-05-24 19:43:34'),
(14, 2, 37, 9, '2022-03-01', 'TAHUNAN', '2022-04-28', 'SELESAI', 'Direktorat Akuntansi dan Pelaporan Keuangan', NULL, 'uploads/laporan/621455ec5528fbcdcdaf429ccbfe85a1.pdf', '2022-05-24 19:47:35', '2022-05-24 19:47:35'),
(17, 2, 32, 18, '2022-06-01', 'BULANAN', '2022-06-15', 'SELESAI', 'Dit PKN', NULL, 'uploads/laporan/4a2b64b238c1670d2dc9fe726b9bbbec.xlsx', '2022-07-24 19:19:14', '2022-07-24 19:19:14'),
(18, 2, 32, 18, '2022-05-01', 'BULANAN', '2022-05-15', 'SELESAI', 'Dit PKN', NULL, 'uploads/laporan/f6573723203b007620b66cf751cb7c1d.xlsx', '2022-07-24 19:19:59', '2022-07-24 19:19:59'),
(19, 2, 32, 18, '2022-04-01', 'BULANAN', '2022-05-15', 'SELESAI', 'Dit PKN', NULL, 'uploads/laporan/661f67be9e6455051012040e10a136a2.xlsx', '2022-07-24 19:22:53', '2022-07-24 19:22:53'),
(20, 2, 32, 18, '2022-03-01', 'BULANAN', '2022-03-15', 'SELESAI', 'Dit PKN', NULL, 'uploads/laporan/d98b7a82c6baba397e46dde0862ecbae.xlsx', '2022-07-24 19:24:11', '2022-07-24 19:24:11'),
(21, 2, 32, 18, '2022-02-01', 'BULANAN', '2022-02-15', 'SELESAI', 'Dit PKN', NULL, 'uploads/laporan/a22a71c1e253711c70d3c9b897fa4f3b.xlsx', '2022-07-24 19:24:47', '2022-07-24 19:24:47'),
(22, 2, 19, 31, '2020-02-01', 'TAHUNAN', '2022-02-25', 'SELESAI', 'Sekretaris DJPb', '-', 'uploads/laporan/53a29d7db9dafb388f84217c4038bd5c.pdf', '2022-07-27 01:45:59', '2022-07-27 01:46:44'),
(23, 2, 19, 28, '2022-04-01', 'TRIWULANAN', '2022-04-15', 'SELESAI', 'Sekretaris DJPb', '-', 'uploads/laporan/af227baf4dd21a26d45fa0211e72debd.pdf', '2022-07-27 01:55:40', '2022-07-27 01:55:40'),
(24, 2, 19, 28, '2022-07-01', 'TRIWULANAN', '2022-07-15', 'SELESAI', 'Sekretaris DJPb', '-', 'uploads/laporan/3c6f1921ff3cea6d06f68e55f7967b46.pdf', '2022-07-27 01:56:49', '2022-07-27 01:56:49'),
(25, 2, 19, 2, '2022-04-01', 'TRIWULANAN', '2022-04-30', 'SELESAI', 'Sekretaris DJPb', '-', 'uploads/laporan/a2cdcf415c6900c40cbf7e47a5c577e6.pdf', '2022-07-27 02:13:18', '2022-07-27 02:13:18'),
(26, 2, 19, 2, '2022-07-01', 'TRIWULANAN', '2022-07-30', 'SELESAI', 'Sekretaris DJPb', '-', 'uploads/laporan/cdb2631fb0455726dce14b4e45882f02.pdf', '2022-07-27 02:15:45', '2022-07-27 02:15:45'),
(27, 2, 19, 29, '2022-04-01', 'TRIWULANAN', '2022-04-09', 'SELESAI', 'Sekretaris DJPb', '-', 'uploads/laporan/8676147304c6d2ac474c0acb69060989.pdf', '2022-07-27 03:07:51', '2022-07-27 03:08:22'),
(28, 2, 19, 29, '2022-07-01', 'TRIWULANAN', '2022-07-11', 'SELESAI', 'Sekretaris DJPb', '-', 'uploads/laporan/b75f8d247c5eaaf53d4311ef895ea971.pdf', '2022-07-27 03:09:15', '2022-07-27 03:13:19'),
(29, 2, 19, 30, '2022-01-01', 'TAHUNAN', '2022-01-28', 'SELESAI', 'Sekretaris DJPb', '-', 'uploads/laporan/8d976f0e836401aad679d92ce3e8f86e.pdf', '2022-07-27 03:16:55', '2022-07-27 03:16:55'),
(30, 2, 21, 32, '2022-07-01', 'INSIDENTAL', '2022-08-19', 'BELUM SELESAI', 'asdjhasdg ksjadghaskj', 'hjgdfhkasdgasykd sat', NULL, '2022-08-29 07:16:15', '2022-08-29 07:16:15'),
(31, 2, 21, 1, '2022-06-01', 'INSIDENTAL', '2022-08-17', 'BELUM SELESAI', 'iuyrwukeyask jdfgasjkld', 'asdas', NULL, '2022-08-29 07:16:46', '2022-08-29 07:16:46'),
(32, 2, 10, 1, '2022-06-01', 'INSIDENTAL', '2022-08-20', 'BELUM SELESAI', 'uasidyaskudg askdhjtas', 'sadas', NULL, '2022-08-29 07:20:55', '2022-08-29 07:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `uraian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `singkatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `uraian`, `singkatan`, `created_at`, `updated_at`) VALUES
(1, 'Direktorat Jenderal Perbendaharaan', 'DJPb', '2019-01-27 06:04:37', '2019-01-27 06:04:37'),
(2, 'Kantor Wilayah', 'Kanwil', '2019-01-27 06:05:22', '2019-01-27 06:05:22'),
(3, 'Kantor Pelayanan Perbendaharaan Negara', 'KPPN', '2019-01-27 06:05:38', '2019-01-27 06:05:38');

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
(4, '2020_03_31_114745_remove_backpackuser_model', 1),
(5, '2020_12_12_061210_create_levels_table', 1),
(6, '2020_12_13_010003_create_kode_djpb_table', 1),
(7, '2020_12_13_094931_create_strukturs_table', 1),
(8, '2020_12_15_134834_create_permission_tables', 1),
(9, '2020_12_28_144908_create_satkers_table', 1),
(10, '2021_01_10_121957_create_jenis_laporan_table', 1),
(11, '2021_01_10_125354_create_laporans_table', 1),
(12, '2021_01_11_124337_add_some_fields_to_users_table', 1),
(13, '2021_03_08_150800_create_kegiatans_table', 1),
(14, '2021_04_03_115822_create_monitoring_bos_table', 1),
(15, '2021_04_04_093958_add_file_to_monitoring_bos', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 7),
(1, 'App\\Models\\User', 8),
(1, 'App\\Models\\User', 9),
(1, 'App\\Models\\User', 10),
(1, 'App\\Models\\User', 12),
(1, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 5);

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
(1, 'App\\Models\\User', 4),
(1, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 19),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 18),
(4, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 9),
(4, 'App\\Models\\User', 16),
(4, 'App\\Models\\User', 20),
(5, 'App\\Models\\User', 5),
(5, 'App\\Models\\User', 11),
(5, 'App\\Models\\User', 13),
(5, 'App\\Models\\User', 21),
(6, 'App\\Models\\User', 6),
(6, 'App\\Models\\User', 10),
(6, 'App\\Models\\User', 12),
(6, 'App\\Models\\User', 14),
(6, 'App\\Models\\User', 15),
(6, 'App\\Models\\User', 22),
(7, 'App\\Models\\User', 23);

-- --------------------------------------------------------

--
-- Table structure for table `monitoring_bos`
--

CREATE TABLE `monitoring_bos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pemda` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_dana_bos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_sp2d` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_sp2d` datetime NOT NULL,
  `nilai_sp2d` int(11) NOT NULL,
  `batch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('CONFIRMED','RETURNED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'CONFIRMED',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file_monitoring_bos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
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

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('brianprayogo@outlook.com', '$2y$10$AXaD6vz276JWA6bTqSdTzeXvLufBovP5M5LR37Oqv5t3sNsZ1h1j.', '2021-12-20 19:52:48'),
('dinarizkyramadhani@gmail.com', '$2y$10$2tHWq/ypdWvGVFrm899C1ee21DRv.lEhqS.b4zH/RWR9Afn7ida9.', '2022-04-04 19:58:27');

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
(1, 'user', 'web', '2020-12-15 06:29:25', '2020-12-15 06:29:25'),
(2, 'referensi', 'web', '2021-04-06 14:27:58', '2021-04-06 14:27:58'),
(3, 'autentikasi', 'web', '2021-04-06 14:30:38', '2021-04-06 14:30:38'),
(4, 'layanan_informasi', 'web', '2021-04-06 14:33:11', '2021-04-06 14:33:11'),
(5, 'jadwal_kegiatan', 'web', '2021-04-06 14:34:42', '2021-04-06 14:34:42'),
(6, 'laporan', 'web', '2021-04-06 14:35:44', '2021-04-06 14:35:44');

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
(1, 'admin', 'web', '2020-12-15 06:26:16', '2020-12-15 06:26:16'),
(2, 'Kanwil-PPA II', 'web', '2020-12-15 06:27:05', '2021-11-13 00:17:17'),
(3, 'Kanwil-PPA I', 'web', '2021-11-13 00:17:35', '2021-11-13 00:17:35'),
(4, 'Kanwil-PAPK', 'web', '2021-11-13 00:17:56', '2021-11-13 00:17:56'),
(5, 'Kanwil-SKKI', 'web', '2021-11-13 00:18:40', '2021-11-13 00:18:40'),
(6, 'Kanwil-UMUM', 'web', '2021-11-13 00:18:55', '2021-11-13 00:18:55'),
(7, 'KPPN', 'web', '2022-09-21 02:14:14', '2022-09-21 02:14:14');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 5),
(2, 1),
(3, 1),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `satkers`
--

CREATE TABLE `satkers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_djpb_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `kode` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uraian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kewenangan` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satkers`
--

INSERT INTO `satkers` (`id`, `kode_djpb_id`, `parent_id`, `kode`, `uraian`, `kode_kewenangan`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '00401', 'BADAN PEMERIKSA KEUANGAN - SEKRETARIAT JENDERAL', NULL, '2020-12-28 07:59:04', '2020-12-28 07:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `strukturs`
--

CREATE TABLE `strukturs` (
  `id` int(10) UNSIGNED NOT NULL,
  `level_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `lft` int(10) UNSIGNED NOT NULL,
  `rgt` int(10) UNSIGNED NOT NULL,
  `depth` int(10) UNSIGNED NOT NULL,
  `bagian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `singkatan_bagian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `singkatan_jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `strukturs`
--

INSERT INTO `strukturs` (`id`, `level_id`, `parent_id`, `lft`, `rgt`, `depth`, `bagian`, `singkatan_bagian`, `jabatan`, `singkatan_jabatan`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 122, 0, 'Direktorat Jenderal Perbendaharaan', 'Ditjen Perbendaharaan', 'Direktur Jenderal', 'Dirjen', '2019-01-29 00:12:20', '2019-01-29 00:12:20'),
(2, 2, 1, 2, 121, 0, 'Kantor Wilayah Direktorat Jenderal Perbendaharaan Provinsi Kalimantan Barat', 'Kanwil Ditjen Perbendaharaan Provinsi Kalimantan Barat', 'Kepala Kantor Wilayah Direktorat Jenderal Perbendaharaan Provinsi Kalimantan Barat', 'Kakanwil Ditjen Perbendaharaan Provinsi Kalbar', '2019-01-29 00:13:35', '2021-11-13 00:28:00'),
(3, 2, 2, 3, 20, 2, 'Bidang Pembinaan Pelaksanaan Anggaran I', 'Bidang Pembinaan PA I', 'Kepala Bidang Pembinaan Pelaksanaan Anggaran I', 'Kabid Pembinaan PA I', '2019-01-29 00:16:38', '2019-01-29 00:16:38'),
(4, 2, 3, 4, 7, 3, 'Seksi Pembinaan Pelaksanaan Anggaran I A', 'Seksi PPA I A', 'Kepala Seksi Pembinaan Pelaksanaan Anggaran I A', 'Kasi PPA I A', '2019-02-02 00:33:14', '2019-02-02 00:33:14'),
(5, 2, 4, 5, 6, 4, 'Staf Seksi Pembinaan Pelaksanaan Anggaran I A', 'Staf Seksi PPA I A', 'Staf Seksi Pembinaan Pelaksanaan Anggaran I A', 'Staf Seksi PPA I A', '2019-02-02 01:08:02', '2019-02-02 01:08:02'),
(6, 2, 3, 8, 11, 3, 'Seksi Pembinaan Pelaksanaan Anggaran I B', 'Seksi PPA I B', 'Kepala Seksi Pembinaan Pelaksanaan Anggaran I B', 'Kasi PPA I B', '2019-02-02 01:10:16', '2019-02-02 01:18:01'),
(7, 2, 6, 9, 10, 4, 'Staf Seksi Pembinaan Pelaksanaan Anggaran I B', 'Staf Seksi PPA I B', 'Staf Seksi Pembinaan Pelaksanaan Anggaran I B', 'Staf Seksi PPA I B', '2019-02-02 01:28:12', '2019-02-02 01:28:12'),
(8, 2, 3, 12, 15, 3, 'Seksi Pembinaan Pelaksanaan Anggaran I C', 'Seksi PPA I C', 'Kepala Seksi Pembinaan Pelaksanaan Anggaran I C', 'Kasi PPA I C', '2019-02-02 01:31:56', '2019-02-02 01:31:56'),
(9, 2, 8, 13, 14, 4, 'Staf Seksi Pembinaan Pelaksanaan Anggaran I C', 'Staf Seksi PPA I C', 'Staf Seksi Pembinaan Pelaksanaan Anggaran I C', 'Staf Seksi PPA I C', '2019-02-02 01:33:39', '2019-02-02 01:42:52'),
(10, 2, 3, 16, 19, 3, 'Seksi Pembinaan Pelaksanaan Anggaran I D', 'Seksi PPA I D', 'Kepala Seksi Pembinaan Pelaksanaan Anggaran I D', 'Kasi PPA I D', '2019-02-02 01:41:06', '2019-02-02 01:43:01'),
(11, 2, 10, 17, 18, 4, 'Staf Seksi Pembinaan Pelaksanaan Anggaran I D', 'Staf Seksi PPA I D', 'Staf Seksi Pembinaan Pelaksanaan Anggaran I D', 'Staf Seksi PPA I D', '2019-02-02 01:42:39', '2019-02-02 01:42:39'),
(12, 2, 2, 21, 34, 2, 'Bidang Pembinaan Pelaksanaan Anggaran II', 'Bidang Pembinaan PA II', 'Kepala Bidang Pembinaan Pelaksanaan Anggaran II', 'Kabid Pembinaan PA II', '2019-02-02 02:01:02', '2019-02-02 02:01:02'),
(13, 2, 12, 22, 25, 3, 'Seksi Pembinaan Pelaksanaan Anggaran II A', 'Seksi PPA II A', 'Kepala Seksi Pembinaan Pelaksanaan Anggaran II A', 'Kasi PPA II A', '2019-02-02 02:03:30', '2019-02-02 02:03:30'),
(14, 2, 13, 23, 24, 4, 'Staf Seksi Pembinaan Pelaksanaan Anggaran II A', 'Staf Seksi PPA II A', 'Staf Seksi Pembinaan Pelaksanaan Anggaran II A', 'Staf Seksi PPA II A', '2019-02-02 02:09:36', '2019-02-02 02:09:36'),
(15, 2, 12, 26, 29, 3, 'Seksi Pembinaan Pelaksanaan Anggaran II B', 'Seksi PPA II B', 'Kepala Seksi Pembinaan Pelaksanaan Anggaran II B', 'Kasi PPA II B', '2019-02-02 02:15:18', '2019-02-02 02:15:18'),
(16, 2, 15, 27, 28, 4, 'Staf Seksi Pembinaan Pelaksanaan Anggaran II B', 'Staf Seksi PPA II B', 'Staf Seksi Pembinaan Pelaksanaan Anggaran II B', 'Staf Seksi PPA II B', '2019-02-02 03:20:12', '2019-02-02 03:20:12'),
(17, 2, 12, 30, 33, 3, 'Seksi Pembinaan Pelaksanaan Anggaran II C', 'Seksi PPA II C', 'Kepala Seksi Pembinaan Pelaksanaan Anggaran II C', 'Kasi PPA II C', '2019-02-03 00:40:45', '2019-02-03 00:53:06'),
(18, 2, 17, 31, 32, 4, 'Staf Seksi Pembinaan Pelaksanaan Anggaran II C', 'Staf Seksi PPA II C', 'Staf Seksi Pembinaan Pelaksanaan Anggaran II C', 'Staf Seksi PPA II C', '2019-02-03 00:52:30', '2019-02-03 00:52:30'),
(19, 2, 2, 35, 52, 2, 'Bagian Umum', 'Bagian Umum', 'Kepala Bagian Umum', 'Kabu', '2019-02-03 00:56:16', '2019-02-03 00:56:16'),
(20, 2, 19, 36, 39, 3, 'Subbagian Tata Usaha dan Rumah Tangga', 'Subbag TURT', 'Kepala Subbagian Tata Usaha dan Rumah Tangga', 'Kasubbag TURT', '2019-02-03 01:09:20', '2019-02-03 01:09:20'),
(21, 2, 20, 37, 38, 4, 'Staf Subbagian Tata Usaha dan Rumah Tangga', 'Staf Subbag TURT', 'Staf Subbagian Tata Usaha dan Rumah Tangga', 'Staf Subbag TURT', '2019-02-03 01:11:25', '2019-02-03 01:11:25'),
(22, 2, 19, 40, 43, 3, 'Subbagian Kepegawaian', 'Subbag Kepegawaian', 'Kepala Subbagian Kepegawaian', 'Kasubbag Kepegawaian', '2019-02-03 01:14:15', '2019-02-03 01:14:15'),
(23, 2, 22, 41, 42, 4, 'Staf Subbagian Kepegawaian', 'Staf Subbag Kepegawaian', 'Staf Subbagian Kepegawaian', 'Staf Subbag Kepegawaian', '2019-02-03 01:16:49', '2019-02-03 01:16:49'),
(24, 2, 19, 44, 47, 3, 'Subbagian Keuangan', 'Subbag Keuangan', 'Kepala Subbagian Keuangan', 'Kasubbag Keuangan', '2019-02-03 05:29:58', '2019-02-03 05:29:58'),
(25, 2, 24, 45, 46, 4, 'Staf Subbagian Keuangan', 'Staf Subbag Keuangan', 'Staf Subbagian Keuangan', 'Staf Subbag Keuangan', '2019-02-03 05:31:19', '2019-02-03 05:31:19'),
(26, 2, 19, 48, 51, 3, 'Subbagian Penilaian Kinerja', 'Subbag Penilaian Kinerja', 'Kepala Subbagian Penilaian Kinerja', 'Kasubbag Penilaian Kinerja', '2019-02-03 05:32:31', '2019-02-03 05:32:31'),
(27, 2, 26, 49, 50, 4, 'Staf Subbagian Penilaian Kinerja', 'Staf Subbag Penilaian Kinerja', 'Staf Subbagian Penilaian Kinerja', 'Staf Subbag Penilaian Kinerja', '2019-02-03 05:33:28', '2019-02-03 05:33:28'),
(28, 2, 2, 53, 66, 2, 'Bidang Supervisi KPPN dan Kepatuhan Internal', 'Bidang SKKI', 'Kepala Bidang Supervisi KPPN dan Kepatuhan Internal', 'Kabid SKKI', '2019-02-03 05:35:12', '2019-02-03 05:35:12'),
(29, 2, 28, 54, 57, 3, 'Seksi Supervisi Proses Bisnis', 'Seksi SPB', 'Kepala Seksi Supervisi Proses Bisnis', 'Kasi SPB', '2019-02-03 05:37:00', '2019-02-03 05:37:00'),
(30, 2, 29, 55, 56, 4, 'Staf Seksi Supervisi Proses Bisnis', 'Staf Seksi SPB', 'Staf Seksi Supervisi Proses Bisnis', 'Staf Seksi SPB', '2019-02-03 05:38:48', '2019-02-03 05:38:48'),
(31, 2, 28, 58, 61, 3, 'Seksi Supervisi Teknis Aplikasi', 'Seksi STA', 'Kepala Seksi Supervisi Teknis Aplikasi', 'Kasi STA', '2019-02-03 05:41:03', '2019-02-03 05:41:03'),
(32, 2, 31, 59, 60, 4, 'Staf Seksi Supervisi Teknis Aplikasi', 'Staf Seksi STA', 'Staf Seksi Supervisi Teknis Aplikasi', 'Staf Seksi STA', '2019-02-03 05:42:49', '2019-02-03 05:42:49'),
(33, 2, 28, 62, 65, 3, 'Seksi Kepatuhan Internal', 'Seksi KI', 'Kepala Seksi Kepatuhan Internal', 'Kasi KI', '2019-02-03 05:43:57', '2019-02-03 05:43:57'),
(34, 2, 33, 63, 64, 4, 'Staf Seksi Kepatuhan Internal', 'Staf Seksi KI', 'Staf Seksi Kepatuhan Internal', 'Staf Seksi KI', '2019-02-03 05:45:05', '2019-02-03 05:45:05'),
(35, 2, 2, 67, 80, 2, 'Bidang Pembinaan Akuntansi dan Pelaporan', 'Bidang PAPK', 'Kepala Bidang Pembinaan Akuntansi dan Pelaporan', 'Kabid PAPK', '2019-02-03 05:46:27', '2019-02-03 05:46:27'),
(36, 2, 35, 68, 71, 3, 'Seksi Pembinaan Sistem Akuntansi Pemerintah Pusat', 'Seksi PSAPP', 'Kepala Seksi Pembinaan Sistem Akuntansi Pemerintah Pusat', 'Kasi PSAPP', '2019-02-03 05:48:09', '2019-02-03 05:48:09'),
(37, 2, 36, 69, 70, 4, 'Staf Seksi Pembinaan Sistem Akuntansi Pemerintah Pusat', 'Staf Seksi PSAPP', 'Staf Seksi Pembinaan Sistem Akuntansi Pemerintah Pusat', 'Staf Seksi PSAPP', '2019-02-03 05:49:21', '2019-02-03 05:52:17'),
(38, 2, 35, 72, 75, 3, 'Seksi Pembinaan Sistem Akuntansi Pemda', 'Seksi PSAP', 'Kepala Seksi Pembinaan Sistem Akuntansi Pemda', 'Kasi PSAP', '2019-02-03 05:53:29', '2019-02-03 05:53:29'),
(39, 2, 38, 73, 74, 4, 'Staf Seksi Pembinaan Sistem Akuntansi Pemda', 'Staf Seksi PSAP', 'Staf Seksi Pembinaan Sistem Akuntansi Pemda', 'Staf Seksi PSAP', '2019-02-03 05:54:58', '2019-02-03 05:54:58'),
(40, 2, 35, 76, 79, 3, 'Seksi Analisis, Statistik, dan Penyusunan Laporan Keuangan', 'Seksi ASPLK', 'Kepala Seksi Analisis, Statistik, dan Penyusunan Laporan Keuangan', 'Kasi ASPLK', '2019-02-03 05:56:07', '2019-02-03 05:56:07'),
(41, 2, 40, 77, 78, 4, 'Staf Seksi Analisis, Statistik, dan Penyusunan Laporan Keuangan', 'Staf Seksi ASPLK', 'Staf Seksi Analisis, Statistik, dan Penyusunan Laporan Keuangan', 'Staf Seksi ASPLK', '2019-02-03 05:56:59', '2019-02-03 05:56:59'),
(42, 3, 2, 81, 102, 2, 'Kantor Pelayanan Perbendaharaan Negara Tipe A 1', 'KPPN Tipe A 1', 'Kepala Kantor Pelayanan Perbendaharaan Negara Tipe A 1', 'Kepala KPPN Tipe A 1', '2019-02-03 06:00:55', '2019-02-03 06:00:55'),
(43, 3, 42, 82, 85, 3, 'Seksi Pencairan Dana (KPPN Tipe A1)', 'Seksi PD (KPPN Tipe A1)', 'Kepala Seksi Pencairan Dana (KPPN Tipe A1)', 'Kasi Seksi PD (KPPN Tipe A1)', '2019-02-03 06:02:41', '2019-02-03 06:02:41'),
(44, 3, 43, 83, 84, 4, 'Staf Seksi Pencairan Dana (KPPN Tipe A1)', 'Staf Seksi PD (KPPN Tipe A1)', 'Staf Seksi Pencairan Dana (KPPN Tipe A1)', 'Staf Seksi PD (KPPN Tipe A1)', '2019-02-03 06:03:53', '2019-02-03 06:03:53'),
(45, 3, 42, 86, 89, 3, 'Seksi Manajemen Satker dan Kepatuhan Internal (KPPN Tipe A1)', 'Seksi MSKI (KPPN Tipe A1)', 'Kepala Seksi Manajemen Satker dan Kepatuhan Internal (KPPN Tipe A1)', 'Kasi MSKI (KPPN Tipe A1)', '2019-02-03 06:05:06', '2019-02-03 06:06:48'),
(46, 3, 45, 87, 88, 4, 'Staf Seksi Manajemen Satker dan Kepatuhan Internal (KPPN Tipe A1)', 'Staf Seksi MSKI (KPPN Tipe A1)', 'Staf Seksi Manajemen Satker dan Kepatuhan Internal (KPPN Tipe A1)', 'Staf Seksi MSKI (KPPN Tipe A1)', '2019-02-03 06:05:51', '2019-02-03 06:07:06'),
(47, 3, 42, 90, 93, 3, 'Subbagian Umum (KPPN Tipe A1)', 'Subbag Umum (KPPN Tipe A1)', 'Kepala Subbagian Umum (KPPN Tipe A1)', 'Kasubbag Umum (KPPN Tipe A1)', '2019-02-03 06:08:05', '2019-02-03 06:08:05'),
(48, 3, 47, 91, 92, 4, 'Staf Subbagian Umum (KPPN Tipe A1)', 'Staf Subbag Umum (KPPN Tipe A1)', 'Staf Subbagian Umum (KPPN Tipe A1)', 'Staf Subbag Umum (KPPN Tipe A1)', '2019-02-03 06:09:57', '2019-02-03 06:11:02'),
(49, 3, 42, 94, 97, 3, 'Seksi Bank (KPPN Tipe A1)', 'Seksi Bank (KPPN Tipe A1)', 'Kepala Seksi Bank (KPPN Tipe A1)', 'Kasi Bank (KPPN Tipe A1)', '2019-08-23 02:39:59', '2019-08-23 02:39:59'),
(50, 3, 49, 95, 96, 4, 'Staf Seksi Bank (KPPN Tipe A1)', 'Staf Seksi Bank (KPPN Tipe A1)', 'Staf Seksi Bank (KPPN Tipe A1)', 'Staf Seksi Bank (KPPN Tipe A1)', '2019-08-23 02:43:51', '2019-08-23 02:43:51'),
(51, 3, 42, 98, 101, 3, 'Seksi Verifikasi dan Akuntansi (KPPN Tipe A1)', 'Seksi Vera (KPPN Tipe A1)', 'Kepala Seksi Verifikasi dan Akuntansi (KPPN Tipe A1)', 'Kasi Vera (KPPN Tipe A1)', '2019-08-23 02:45:29', '2019-08-23 02:45:29'),
(52, 3, 51, 99, 100, 4, 'Staf Seksi Verifikasi dan Akuntansi (KPPN Tipe A1)', 'Staf Seksi Vera (KPPN Tipe A1)', 'Staf Seksi Verifikasi dan Akuntansi (KPPN Tipe A1)', 'Staf Seksi Vera (KPPN Tipe A1)', '2019-08-23 02:47:39', '2019-08-23 02:47:39'),
(53, 3, 2, 103, 120, 2, 'Kantor Pelayanan Perbendaharaan Negara Tipe A 2', 'KPPN Tipe A 2', 'Kepala Kantor Pelayanan Perbendaharaan Negara Tipe A 2', 'Kepala KPPN Tipe A 2', '2019-08-23 02:51:29', '2019-08-23 02:51:29'),
(54, 3, 53, 104, 107, 3, 'Seksi Pencairan Dana dan Manajemen Satker (KPPN Tipe A2)', 'Seksi PDMS (KPPN Tipe A2)', 'Kepala Seksi Pencairan Dana dan Manajemen Satker (KPPN Tipe A2)', 'Kasi PDMS (KPPN Tipe A2)', '2019-08-23 02:55:03', '2019-08-23 02:55:03'),
(55, 3, 54, 105, 106, 4, 'Staf Seksi Pencairan Dana dan Manajemen Satker (KPPN Tipe A2)', 'Staf Seksi PDMS (KPPN Tipe A2)', 'Staf Seksi Pencairan Dana dan Manajemen Satker (KPPN Tipe A2)', 'Staf Seksi PDMS (KPPN Tipe A2)', '2019-08-23 02:56:36', '2019-08-23 02:56:36'),
(56, 3, 53, 108, 111, 3, 'Subbagian Umum (KPPN Tipe A2)', 'Subbag Umum (KPPN Tipe A2)', 'Kepala Subbagian Umum (KPPN Tipe A2)', 'Kasubbag Umum (KPPN Tipe A2)', '2019-08-23 02:58:08', '2019-08-23 02:58:08'),
(57, 3, 56, 109, 110, 4, 'Staf Subbagian Umum (KPPN Tipe A2)', 'Staf Subbag Umum (KPPN Tipe A2)', 'Staf Subbagian Umum (KPPN Tipe A2)', 'Staf Subbag Umum (KPPN Tipe A2)', '2019-08-23 02:59:21', '2019-08-23 02:59:21'),
(58, 3, 53, 112, 115, 3, 'Seksi Bank (KPPN Tipe A2)', 'Seksi Bank (KPPN Tipe A2)', 'Kepala Seksi Bank (KPPN Tipe A2)', 'Kasi Bank (KPPN Tipe A2)', '2019-10-24 19:05:09', '2019-10-24 19:05:09'),
(59, 3, 58, 113, 114, 4, 'Staf Seksi Bank (KPPN Tipe A2)', 'Staf Seksi Bank (KPPN Tipe A2)', 'Staf Seksi Bank (KPPN Tipe A2)', 'Staf Seksi Bank (KPPN Tipe A2)', '2019-10-24 19:08:03', '2019-10-24 19:08:03'),
(60, 3, 53, 116, 119, 3, 'Seksi Verifikasi, Akuntansi, dan Kepatuhan Internal (KPPN Tipe A2)', 'Seksi Veraki (KPPN Tipe A2)', 'Kepala Seksi Verifikasi, Akuntansi, dan Kepatuhan Internal (KPPN Tipe A2)', 'Kasi Veraki (KPPN Tipe A2)', '2019-10-24 19:11:55', '2019-10-24 19:11:55'),
(61, 3, 60, 117, 118, 4, 'Staf Seksi Verifikasi, Akuntansi, dan Kepatuhan Internal (KPPN Tipe A2)', 'Staf Seksi Veraki (KPPN Tipe A2)', 'Staf Seksi Verifikasi, Akuntansi, dan Kepatuhan Internal (KPPN Tipe A2)', 'Staf Seksi Veraki (KPPN Tipe A2)', '2019-10-24 19:14:01', '2019-10-24 19:14:01'),
(64, 1, 2, 103, 120, 2, 'Kantor Pelayanan  Perbendaharaan Negara Sintang', 'KPPN Sintang', 'Kepala Kantor Pelayanan  Perbendaharaan Negara Sintang', 'Kepala KPPN Sintang', '2022-09-13 09:43:35', '2022-09-13 09:43:35'),
(65, 1, 2, 103, 120, 2, 'Kantor Pelayanan  Perbendaharaan Negara Sanggau', 'KPPN Sanggau', 'Kepala Kantor Pelayanan  Perbendaharaan Negara Sanggau', 'Kepala KPPN Sanggau', '2022-09-13 11:54:56', '2022-09-13 11:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `struktur_id` int(10) UNSIGNED DEFAULT NULL,
  `kode_djpb_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `users` (`id`, `struktur_id`, `kode_djpb_id`, `name`, `nip`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 21, 2, 'Brian Prayogo', NULL, 'brianprayogo@outlook.com', NULL, '$2y$10$dTKDhzqkdSCagTmJ2twxiuADIJz7mZGmyKETipbP0JN/.coV4s6mi', '3aURcZ5HKM1ieqkQ6CJKQ3Tt4AzEW73y2ly8JF6mgxmFjsYRhIYj6IuTWYrf', '2021-11-12 23:59:37', '2021-11-13 00:04:45');

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
-- Indexes for table `jenis_laporan`
--
ALTER TABLE `jenis_laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatans`
--
ALTER TABLE `kegiatans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kegiatans_kode_djpb_id_foreign` (`kode_djpb_id`),
  ADD KEY `kegiatans_struktur_id_foreign` (`struktur_id`);

--
-- Indexes for table `kode_djpb`
--
ALTER TABLE `kode_djpb`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_djpb_kode_satker_unique` (`kode_satker`),
  ADD KEY `kode_djpb_level_id_foreign` (`level_id`);

--
-- Indexes for table `laporans`
--
ALTER TABLE `laporans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laporans_kode_djpb_id_foreign` (`kode_djpb_id`),
  ADD KEY `laporans_struktur_id_foreign` (`struktur_id`),
  ADD KEY `laporans_jenis_laporan_id_foreign` (`jenis_laporan_id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
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
-- Indexes for table `monitoring_bos`
--
ALTER TABLE `monitoring_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `satkers`
--
ALTER TABLE `satkers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strukturs`
--
ALTER TABLE `strukturs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strukturs_level_id_foreign` (`level_id`);

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
-- AUTO_INCREMENT for table `jenis_laporan`
--
ALTER TABLE `jenis_laporan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `kegiatans`
--
ALTER TABLE `kegiatans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=781;

--
-- AUTO_INCREMENT for table `kode_djpb`
--
ALTER TABLE `kode_djpb`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `laporans`
--
ALTER TABLE `laporans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `monitoring_bos`
--
ALTER TABLE `monitoring_bos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `satkers`
--
ALTER TABLE `satkers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strukturs`
--
ALTER TABLE `strukturs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kegiatans`
--
ALTER TABLE `kegiatans`
  ADD CONSTRAINT `kegiatans_kode_djpb_id_foreign` FOREIGN KEY (`kode_djpb_id`) REFERENCES `kode_djpb` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `kegiatans_struktur_id_foreign` FOREIGN KEY (`struktur_id`) REFERENCES `strukturs` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `kode_djpb`
--
ALTER TABLE `kode_djpb`
  ADD CONSTRAINT `kode_djpb_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `laporans`
--
ALTER TABLE `laporans`
  ADD CONSTRAINT `laporans_jenis_laporan_id_foreign` FOREIGN KEY (`jenis_laporan_id`) REFERENCES `jenis_laporan` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `laporans_kode_djpb_id_foreign` FOREIGN KEY (`kode_djpb_id`) REFERENCES `kode_djpb` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `laporans_struktur_id_foreign` FOREIGN KEY (`struktur_id`) REFERENCES `strukturs` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

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

--
-- Constraints for table `strukturs`
--
ALTER TABLE `strukturs`
  ADD CONSTRAINT `strukturs_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
