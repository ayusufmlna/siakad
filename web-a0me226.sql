-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jul 2025 pada 14.34
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web-a0me226`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensis`
--

CREATE TABLE `absensis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rombel_id` bigint(20) UNSIGNED NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `absensis`
--

INSERT INTO `absensis` (`id`, `rombel_id`, `semester`, `created_at`, `updated_at`) VALUES
(5, 4, 'Ganjil', '2024-08-17 17:32:36', '2024-08-17 17:32:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi_harians`
--

CREATE TABLE `absensi_harians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rombel_id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `semester` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `status` enum('Hadir','Sakit','Izin','Alpa') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `absensi_harians`
--

INSERT INTO `absensi_harians` (`id`, `rombel_id`, `siswa_id`, `semester`, `tanggal`, `status`, `created_at`, `updated_at`) VALUES
(7, 3, 4, 'Ganjil', '2024-12-02', 'Hadir', '2024-12-03 19:49:04', '2024-12-03 19:49:04'),
(9, 3, 3, 'Ganjil', '2024-12-02', 'Hadir', '2024-12-03 19:57:25', '2024-12-03 19:57:25'),
(10, 3, 2, 'Ganjil', '2024-12-02', 'Hadir', '2024-12-03 19:57:54', '2024-12-03 19:57:54'),
(11, 3, 1, 'Ganjil', '2024-12-02', 'Hadir', '2024-12-03 19:58:07', '2024-12-03 19:58:07'),
(12, 3, 4, 'Ganjil', '2024-12-03', 'Hadir', '2024-12-03 19:58:28', '2024-12-03 19:58:28'),
(13, 3, 3, 'Ganjil', '2024-12-03', 'Izin', '2024-12-03 19:58:47', '2024-12-03 21:14:34'),
(14, 3, 2, 'Ganjil', '2024-12-03', 'Hadir', '2024-12-03 19:59:06', '2024-12-03 19:59:06'),
(15, 3, 1, 'Ganjil', '2024-12-03', 'Izin', '2024-12-03 19:59:20', '2024-12-03 19:59:20'),
(16, 3, 4, 'Ganjil', '2024-12-04', 'Hadir', '2024-12-03 20:00:09', '2024-12-03 20:00:52'),
(17, 3, 3, 'Ganjil', '2024-12-04', 'Hadir', '2024-12-03 20:00:29', '2024-12-03 20:00:29'),
(18, 3, 2, 'Ganjil', '2024-12-04', 'Sakit', '2024-12-03 20:00:43', '2024-12-03 21:14:56'),
(19, 3, 1, 'Ganjil', '2024-12-04', 'Hadir', '2024-12-03 20:01:14', '2024-12-03 20:01:14'),
(20, 3, 3, 'Genap', '2025-01-10', 'Sakit', '2025-01-09 17:10:06', '2025-01-09 17:24:19'),
(21, 3, 2, 'Genap', '2025-01-10', 'Sakit', '2025-01-09 17:10:06', '2025-01-09 17:24:19'),
(22, 3, 3, 'Genap', '2025-01-11', 'Hadir', '2025-01-09 17:36:53', '2025-01-09 17:36:53'),
(23, 3, 2, 'Genap', '2025-01-11', 'Hadir', '2025-01-09 17:36:54', '2025-01-10 04:43:21'),
(24, 3, 3, 'Ganjil', '2025-01-14', 'Hadir', '2025-01-14 09:07:34', '2025-01-14 09:07:34'),
(25, 3, 2, 'Ganjil', '2025-01-14', 'Hadir', '2025-01-14 09:07:34', '2025-01-14 09:07:34'),
(26, 4, 4, 'Ganjil', '2025-01-15', 'Hadir', '2025-01-15 01:15:43', '2025-01-15 01:15:43'),
(27, 3, 3, 'Ganjil', '2025-01-21', 'Hadir', '2025-01-23 01:15:19', '2025-01-23 01:15:19'),
(28, 3, 2, 'Ganjil', '2025-01-21', 'Hadir', '2025-01-23 01:15:19', '2025-01-23 01:15:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_absensis`
--

CREATE TABLE `detail_absensis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `absensi_id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `hadir` varchar(255) NOT NULL,
  `sakit` varchar(255) NOT NULL,
  `izin` varchar(255) NOT NULL,
  `alpa` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_absensis`
--

INSERT INTO `detail_absensis` (`id`, `absensi_id`, `siswa_id`, `hadir`, `sakit`, `izin`, `alpa`, `created_at`, `updated_at`) VALUES
(8, 5, 4, '3', '0', '1', '0', '2024-08-17 17:32:36', '2024-08-17 17:32:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_gurus`
--

CREATE TABLE `detail_gurus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_gurus`
--

INSERT INTO `detail_gurus` (`id`, `guru_id`, `mapel_id`, `created_at`, `updated_at`) VALUES
(8, 5, 12, '2025-01-14 06:44:03', '2025-01-14 06:44:03'),
(17, 2, 16, '2025-01-14 18:59:35', '2025-01-14 18:59:35'),
(18, 2, 14, '2025-01-14 18:59:35', '2025-01-14 18:59:35'),
(19, 1, 16, '2025-01-14 18:59:43', '2025-01-14 18:59:43'),
(20, 1, 14, '2025-01-14 18:59:43', '2025-01-14 18:59:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_mapels`
--

CREATE TABLE `detail_mapels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `tingkat` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_rombels`
--

CREATE TABLE `detail_rombels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rombel_id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_rombels`
--

INSERT INTO `detail_rombels` (`id`, `rombel_id`, `siswa_id`, `created_at`, `updated_at`) VALUES
(8, 3, 3, '2024-05-30 14:18:10', '2024-05-30 14:18:10'),
(11, 3, 2, '2024-05-31 09:45:44', '2024-05-31 09:45:44'),
(13, 4, 4, '2024-06-01 02:51:10', '2024-06-01 02:51:10'),
(15, 5, 22, '2025-01-23 01:55:38', '2025-01-23 01:55:38'),
(16, 5, 21, '2025-01-23 01:55:38', '2025-01-23 01:55:38'),
(17, 5, 20, '2025-01-23 01:55:38', '2025-01-23 01:55:38'),
(18, 5, 19, '2025-01-23 01:55:38', '2025-01-23 01:55:38'),
(19, 5, 18, '2025-01-23 01:55:38', '2025-01-23 01:55:38'),
(20, 3, 17, '2025-01-23 01:56:02', '2025-01-23 01:56:02'),
(21, 3, 16, '2025-01-23 01:56:02', '2025-01-23 01:56:02'),
(22, 3, 15, '2025-01-23 01:56:02', '2025-01-23 01:56:02'),
(23, 4, 14, '2025-01-23 01:56:13', '2025-01-23 01:56:13'),
(24, 4, 13, '2025-01-23 01:56:13', '2025-01-23 01:56:13'),
(25, 4, 12, '2025-01-23 01:56:13', '2025-01-23 01:56:13'),
(26, 4, 11, '2025-01-23 01:56:13', '2025-01-23 01:56:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `gurus`
--

CREATE TABLE `gurus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tahun_masuk` varchar(255) NOT NULL,
  `gelar_belakang` varchar(255) DEFAULT NULL,
  `pendidikan_terakhir` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gurus`
--

INSERT INTO `gurus` (`id`, `user_id`, `no_telp`, `jenis_kelamin`, `agama`, `nip`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `tahun_masuk`, `gelar_belakang`, `pendidikan_terakhir`, `created_at`, `updated_at`) VALUES
(1, 2, '087461246182', 'Perempuan', 'Kristen', '12342004', 'Jakarta', '1990-01-01', 'Jakarta', '2017', 'S.Pd', 'S1', '2024-05-31 03:34:08', '2025-01-14 08:09:21'),
(2, 3, '012817247214', 'Laki-Laki', 'Hindu', '12342017', 'Jakarta', '1985-02-09', 'Jakarta', '2017', 'S.Pd', 'S1', '2024-05-31 05:04:03', '2025-01-14 08:09:47'),
(5, 14, '08986637995', 'Laki-Laki', 'Islam', '12342019', 'Jakarta', '2001-09-07', 'Jl.Lembang', '2019', 'S.Kom', 'S1', '2025-01-14 06:44:03', '2025-01-14 06:44:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_pelajarans`
--

CREATE TABLE `jadwal_pelajarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `hari` varchar(255) NOT NULL,
  `jam_masuk` varchar(255) NOT NULL,
  `jam_keluar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwal_pelajarans`
--

INSERT INTO `jadwal_pelajarans` (`id`, `guru_id`, `mapel_id`, `kelas_id`, `hari`, `jam_masuk`, `jam_keluar`, `created_at`, `updated_at`) VALUES
(3, 5, 12, 1, 'Senin', '08:28', '09:28', '2025-01-14 18:28:39', '2025-01-14 18:28:39'),
(5, 2, 16, 2, 'Senin', '10:48', '11:48', '2025-01-14 18:50:53', '2025-01-14 18:50:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tingkat` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `tingkat`, `nama`, `created_at`, `updated_at`) VALUES
(1, 1, '1 A', '2024-05-30 12:47:24', '2024-05-30 12:47:24'),
(2, 1, '1 B', '2024-05-30 12:47:35', '2024-05-30 12:47:35'),
(3, 2, '2 A', '2024-05-30 12:47:50', '2024-05-30 12:49:23'),
(4, 2, '2 B', '2024-05-30 12:49:38', '2024-05-30 12:49:38'),
(5, 3, '3 A', '2024-05-30 12:49:47', '2024-05-30 12:49:47'),
(6, 3, '3 B', '2024-05-30 12:49:53', '2024-05-30 12:49:53'),
(7, 4, '4 A', '2024-05-30 12:50:02', '2024-05-30 12:50:02'),
(8, 4, '4 B', '2024-05-30 12:50:10', '2024-05-30 12:50:10'),
(9, 5, '5 A', '2024-05-30 12:50:19', '2024-05-30 12:50:19'),
(10, 5, '5 B', '2024-05-30 12:50:26', '2024-05-30 12:50:26'),
(11, 6, '6 A', '2024-05-30 12:50:35', '2024-05-30 12:50:35'),
(13, 6, '6 B', '2024-05-30 12:51:24', '2024-05-30 12:51:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapels`
--

CREATE TABLE `mapels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mapels`
--

INSERT INTO `mapels` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(12, 'TIK', '2025-01-14 02:36:10', '2025-01-23 00:45:56'),
(13, 'PAI', '2025-01-14 02:37:46', '2025-01-23 00:45:33'),
(14, 'MTK', '2025-01-14 08:33:13', '2025-01-23 00:45:44'),
(15, 'B.INGGRIS', '2025-01-14 08:33:25', '2025-01-23 00:46:29'),
(16, 'B. INDONESIA', '2025-01-14 08:33:36', '2025-01-23 00:46:20'),
(17, 'PPKN', '2025-01-23 00:44:54', '2025-01-23 00:46:06'),
(18, 'IPAS', '2025-01-23 00:46:40', '2025-01-23 00:46:40'),
(19, 'SBK', '2025-01-23 00:46:51', '2025-01-23 00:46:51'),
(20, 'PENJASKES', '2025-01-23 00:47:01', '2025-01-23 00:47:01'),
(21, 'BP', '2025-01-23 00:47:10', '2025-01-23 00:47:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_15_194934_create_settings_table', 1),
(6, '2024_05_30_184429_create_siswas_table', 2),
(7, '2024_05_30_193906_create_kelas_table', 3),
(8, '2024_05_30_201713_create_rombels_table', 4),
(9, '2024_05_30_201853_create_detail_rombels_table', 5),
(10, '2024_05_30_211246_add_field_tahun_to_settings', 6),
(11, '2024_05_31_101618_create_gurus_table', 7),
(12, '2024_05_31_110025_create_mapels_table', 8),
(13, '2024_05_31_110123_create_detail_mapels_table', 8),
(14, '2024_05_31_113252_create_detail_gurus_table', 9),
(15, '2024_05_31_122609_create_wali_kelas_table', 10),
(16, '2024_05_31_172213_create_program_pembelajarans_table', 11),
(17, '2024_05_31_174743_create_jadwal_pelajarans_table', 12),
(18, '2024_05_31_181147_create_absensis_table', 13),
(19, '2024_05_31_183247_create_detail_absensis_table', 13),
(20, '2024_05_31_190508_create_penilaians_table', 14),
(21, '2024_05_31_200351_create_raports_table', 15),
(22, '2024_07_08_093637_add_field_surat_keterangan_to_wali_kelas', 16),
(23, '2024_07_08_095124_create_siswa_luluses_table', 17),
(26, '2024_08_15_205632_create_absensi_harians_table', 18),
(27, '2024_08_18_003006_add_field_semester_to_absensis', 19),
(28, '2024_05_31_190509_create_ulangans_table', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaians`
--

CREATE TABLE `penilaians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `semester` varchar(255) NOT NULL,
  `ulangan_harian` varchar(5) NOT NULL,
  `penilaian_tengah_semester` varchar(5) NOT NULL,
  `penilaian_akhir_tahun` varchar(5) NOT NULL,
  `nilai` varchar(255) NOT NULL,
  `sikap` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penilaians`
--

INSERT INTO `penilaians` (`id`, `siswa_id`, `mapel_id`, `semester`, `ulangan_harian`, `penilaian_tengah_semester`, `penilaian_akhir_tahun`, `nilai`, `sikap`, `keterangan`, `created_at`, `updated_at`) VALUES
(9, 3, 16, 'Genap', '90', '90', '90', '90', NULL, NULL, '2025-01-14 08:34:28', '2025-01-14 08:34:28'),
(10, 2, 16, 'Genap', '90', '90', '90', '90', NULL, NULL, '2025-01-14 08:34:28', '2025-01-14 08:34:28'),
(11, 3, 12, 'Genap', '90', '90', '90', '90', NULL, NULL, '2025-01-14 08:38:05', '2025-01-14 08:38:05'),
(12, 2, 12, 'Genap', '90', '90', '90', '90', NULL, NULL, '2025-01-14 08:38:05', '2025-01-14 08:38:05'),
(13, 3, 16, 'Ganjil', '80.00', '90', '90', '86.67', NULL, NULL, '2025-01-14 08:51:44', '2025-07-11 04:23:20'),
(14, 2, 16, 'Ganjil', '90.00', '90', '90', '90.00', NULL, NULL, '2025-01-14 08:51:44', '2025-07-11 04:23:20'),
(15, 4, 16, 'Ganjil', '90', '90', '90', '90', NULL, NULL, '2025-01-15 00:59:19', '2025-01-15 00:59:19'),
(16, 3, 12, 'Ganjil', '90', '90', '90', '90', NULL, NULL, '2025-01-23 01:39:55', '2025-01-23 01:39:55'),
(17, 2, 12, 'Ganjil', '90', '90', '90', '90', NULL, NULL, '2025-01-23 01:39:55', '2025-01-23 01:39:55'),
(18, 3, 18, 'Ganjil', '90', '90', '90', '90', NULL, NULL, '2025-01-23 02:37:51', '2025-01-23 02:37:51'),
(19, 2, 18, 'Ganjil', '90', '90', '90', '90', NULL, NULL, '2025-01-23 02:37:51', '2025-01-23 02:37:51'),
(20, 17, 18, 'Ganjil', '90', '90', '90', '90', NULL, NULL, '2025-01-23 02:37:51', '2025-01-23 02:37:51'),
(21, 16, 18, 'Ganjil', '90', '90', '90', '90', NULL, NULL, '2025-01-23 02:37:51', '2025-01-23 02:37:51'),
(22, 15, 18, 'Ganjil', '90', '90', '90', '90', NULL, NULL, '2025-01-23 02:37:51', '2025-01-23 02:37:51'),
(23, 17, 16, 'Ganjil', '0.00', '90', '90', '60.00', NULL, NULL, '2025-07-11 04:23:20', '2025-07-11 04:25:05'),
(24, 16, 16, 'Ganjil', '0.00', '0', '0', '0.00', NULL, NULL, '2025-07-11 04:23:20', '2025-07-11 04:23:20'),
(25, 15, 16, 'Ganjil', '0.00', '0', '0', '0.00', NULL, NULL, '2025-07-11 04:23:20', '2025-07-11 04:23:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian_harians`
--

CREATE TABLE `penilaian_harians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `semester` varchar(255) NOT NULL,
  `ulangan_harian_satu` varchar(5) NOT NULL,
  `ulangan_harian_dua` varchar(5) NOT NULL,
  `penilaian_tengah_semester` varchar(5) NOT NULL,
  `penilaian_akhir_tahun` varchar(5) NOT NULL,
  `nilai` varchar(255) NOT NULL,
  `sikap` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penilaian_harians`
--

INSERT INTO `penilaian_harians` (`id`, `siswa_id`, `mapel_id`, `semester`, `ulangan_harian_satu`, `ulangan_harian_dua`, `penilaian_tengah_semester`, `penilaian_akhir_tahun`, `nilai`, `sikap`, `keterangan`, `created_at`, `updated_at`) VALUES
(9, 3, 16, 'Genap', '90', '90', '90', '90', '90', NULL, NULL, '2025-01-14 08:34:28', '2025-01-14 08:34:28'),
(10, 2, 16, 'Genap', '90', '90', '90', '90', '90', NULL, NULL, '2025-01-14 08:34:28', '2025-01-14 08:34:28'),
(11, 3, 12, 'Genap', '90', '90', '90', '90', '90', NULL, NULL, '2025-01-14 08:38:05', '2025-01-14 08:38:05'),
(12, 2, 12, 'Genap', '90', '90', '90', '90', '90', NULL, NULL, '2025-01-14 08:38:05', '2025-01-14 08:38:05'),
(13, 3, 16, 'Ganjil', '90', '90', '90', '90', '90', NULL, NULL, '2025-01-14 08:51:44', '2025-01-14 08:51:44'),
(14, 2, 16, 'Ganjil', '90', '90', '90', '90', '90', NULL, NULL, '2025-01-14 08:51:44', '2025-01-14 08:51:44'),
(15, 4, 16, 'Ganjil', '90', '90', '90', '90', '90', NULL, NULL, '2025-01-15 00:59:19', '2025-01-15 00:59:19'),
(16, 3, 12, 'Ganjil', '90', '90', '90', '90', '90', NULL, NULL, '2025-01-23 01:39:55', '2025-01-23 01:39:55'),
(17, 2, 12, 'Ganjil', '90', '90', '90', '90', '90', NULL, NULL, '2025-01-23 01:39:55', '2025-01-23 01:39:55'),
(18, 3, 18, 'Ganjil', '90', '90', '90', '90', '90', NULL, NULL, '2025-01-23 02:37:51', '2025-01-23 02:37:51'),
(19, 2, 18, 'Ganjil', '90', '90', '90', '90', '90', NULL, NULL, '2025-01-23 02:37:51', '2025-01-23 02:37:51'),
(20, 17, 18, 'Ganjil', '90', '90', '90', '90', '90', NULL, NULL, '2025-01-23 02:37:51', '2025-01-23 02:37:51'),
(21, 16, 18, 'Ganjil', '90', '90', '90', '90', '90', NULL, NULL, '2025-01-23 02:37:51', '2025-01-23 02:37:51'),
(22, 15, 18, 'Ganjil', '90', '90', '90', '90', '90', NULL, NULL, '2025-01-23 02:37:51', '2025-01-23 02:37:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `program_pembelajarans`
--

CREATE TABLE `program_pembelajarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `program` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `program_pembelajarans`
--

INSERT INTO `program_pembelajarans` (`id`, `guru_id`, `kategori`, `program`, `file`, `created_at`, `updated_at`) VALUES
(1, 1, 'Semester Ganjil', 'Program 1', 'file/File-20240531-ufAC.xlsx', '2024-05-31 10:40:35', '2024-06-01 02:37:07'),
(2, 1, 'Semester Ganjil', 'Program 2', 'file/File-20240601-zgoR.xlsx', '2024-06-01 02:40:16', '2024-06-01 02:40:16'),
(3, 2, 'Semester Ganjil', 'Tahun Awal', 'file/File-20250123-5EO3.png', '2025-01-23 02:11:24', '2025-01-23 02:11:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `raports`
--

CREATE TABLE `raports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `semester` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `raports`
--

INSERT INTO `raports` (`id`, `kelas_id`, `semester`, `created_at`, `updated_at`) VALUES
(3, 2, 'Genap', '2024-08-14 05:38:42', '2024-08-14 05:38:42'),
(4, 2, 'Ganjil', '2024-12-03 19:42:19', '2024-12-03 19:42:19'),
(6, 1, 'Ganjil', '2025-01-23 00:57:13', '2025-01-23 00:57:13'),
(7, 1, 'Genap', '2025-01-23 00:57:20', '2025-01-23 00:57:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rombels`
--

CREATE TABLE `rombels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rombels`
--

INSERT INTO `rombels` (`id`, `kelas_id`, `created_at`, `updated_at`) VALUES
(3, 1, '2024-05-30 14:18:10', '2024-05-31 04:49:50'),
(4, 2, '2024-06-01 02:51:10', '2024-06-01 02:51:10'),
(5, 3, '2025-01-23 01:55:38', '2025-01-23 01:55:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_website` varchar(255) NOT NULL,
  `tahun` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `nama_website`, `tahun`, `semester`, `logo`, `favicon`, `created_at`, `updated_at`) VALUES
(1, 'SIAKAD SD Budi Mulia', '2025/2026', 'Genap', 'images/Logo-20240530B2qi6.png', 'images/Favicon-20240530w5goe.png', '2024-03-15 13:41:14', '2025-01-14 21:43:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswas`
--

CREATE TABLE `siswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `nis` varchar(255) NOT NULL,
  `nisn` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nama_ayah` varchar(255) NOT NULL,
  `pekerjaan_ayah` varchar(255) NOT NULL,
  `penghasilan_ayah` varchar(255) NOT NULL,
  `nama_ibu` varchar(255) NOT NULL,
  `pekerjaan_ibu` varchar(255) NOT NULL,
  `penghasilan_ibu` varchar(255) NOT NULL,
  `tahun_masuk` varchar(255) NOT NULL,
  `telp_siswa` varchar(255) DEFAULT NULL,
  `telp_ayah` varchar(255) NOT NULL,
  `telp_ibu` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswas`
--

INSERT INTO `siswas` (`id`, `nama_lengkap`, `jenis_kelamin`, `agama`, `nis`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `nama_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `nama_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `tahun_masuk`, `telp_siswa`, `telp_ayah`, `telp_ibu`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Randy Salim', 'Laki-Laki', 'Islam', '20240001', '12731731', 'Jakarta', '2023-07-07', 'Jakarta', 'Salim Pratama', 'PNS', 'Rp 3.000.000 - Rp 7.000.000', 'Reni', 'Polisi', 'Rp 3.000.000 - Rp 7.000.000', '2017', NULL, '0898147124781', '081248147124', '1', '2024-05-30 12:19:35', '2025-01-17 07:55:33'),
(2, 'John Doe', 'Laki-Laki', 'Kristen', '20240002', '81283183', 'Jakarta', '2023-09-07', 'Jakarta', 'Juan Doe', 'PNS', 'Rp 3.000.000 - Rp 7.000.000', 'Cintya', 'Ibu Rumah Tangga', '0', '2018', NULL, '081942817424', '08147124714712', '1', '2024-05-30 13:32:05', '2025-01-17 07:54:34'),
(3, 'Grace Nasution', 'Perempuan', 'Katholik', '20240003', '81481821', 'Bogor', '2023-09-07', 'Jakarta', 'John', 'PNS', 'Rp 3.000.000 - Rp 7.000.000', 'Sarah', 'TNI', 'Rp 1.000.000 - Rp 3.000.000', '2020', NULL, '0815712571', '098815712571', '1', '2024-05-30 13:44:30', '2025-01-17 07:54:15'),
(4, 'Arsyila Ainaya', 'Perempuan', 'Islam', '20240004', '8123813213', 'Jakarta', '2023-09-07', 'Jakarta', 'John', 'PNS', 'Di atas Rp 7.000.000', 'Sarah', 'Swasta', 'Rp 1.000.000 - Rp 3.000.000', '2024', NULL, '087412741', '0981742721', '1', '2024-06-01 02:51:00', '2025-01-17 07:53:50'),
(5, 'Jamilah Disa', 'Perempuan', 'Islam', '20240005', '123456', 'Jakarta', '2023-09-07', 'Jln', 'SUHA', 'PNS', 'Rp 3.000.000 - Rp 7.000.000', 'MAINA', 'Ibu Rumah Tangga', '0', '2024', NULL, '0897', '0876', '1', '2025-01-17 07:47:20', '2025-01-17 07:47:20'),
(6, 'Rudi Golden', 'Laki-Laki', 'Islam', '20240006', '67890', 'Jakarta', '2023-09-07', 'Jl', 'YERIA', 'PNS', 'Rp 3.000.000 - Rp 7.000.000', 'QWER', 'PNS', 'Rp 1.000.000 - Rp 3.000.000', '2024', NULL, '0876', '0766', '1', '2025-01-17 07:50:56', '2025-01-17 07:50:56'),
(7, 'Nabilah Aprilia', 'Perempuan', 'Islam', '20240007', '0987', 'Jakarta', '2023-08-07', 'Jl', 'KAHAR', 'PNS', 'Rp 1.000.000 - Rp 3.000.000', 'IRINA', 'Ibu Rumah Tangga', '0', '2024', NULL, '0897', '000', '1', '2025-01-17 07:53:07', '2025-01-17 07:55:47'),
(8, 'Chairil Razqa', 'Laki-Laki', 'Islam', '20240008', '2345', 'Jakarta', '2023-08-07', 'Jalan', 'AAN', 'PNS', 'Rp 1.000.000 - Rp 3.000.000', 'OIUY', 'Ibu Rumah Tangga', '0', '2024', NULL, '0787', '9800', '1', '2025-01-17 08:23:33', '2025-01-17 08:23:33'),
(9, 'Cika Anuka', 'Perempuan', 'Islam', '20240009', '0876', 'Jakarta', '2023-01-07', 'Jalan', 'Aiun', 'PNS', 'Rp 1.000.000 - Rp 3.000.000', 'Yuni', 'Ibu Rumah Tangga', '0', '2024', NULL, '0876', '08765', '1', '2025-01-17 08:25:24', '2025-01-17 08:25:24'),
(10, 'Putri Ainun', 'Perempuan', 'Islam', '20240010', '4567', 'Jakarta', '2023-02-07', 'Jalan', 'Kurni', 'TNI', 'Rp 1.000.000 - Rp 3.000.000', 'Tuni', 'Ibu Rumah Tangga', '0', '2024', NULL, '0871', '0865', '1', '2025-01-17 08:26:45', '2025-01-17 08:26:45'),
(11, 'Rizaldi Hehanusa', 'Laki-Laki', 'Islam', '20240011', '7654', 'Jakarta', '2023-03-07', 'Jalan', 'OIUP', 'PNS', 'Rp 1.000.000 - Rp 3.000.000', 'DANIS', 'Ibu Rumah Tangga', '0', '2024', NULL, '0000', '0878', '1', '2025-01-17 08:28:19', '2025-01-17 08:28:19'),
(12, 'Rizky Rifaldi', 'Laki-Laki', 'Islam', '20240012', '3456', 'Tangerang', '2023-04-07', 'Jalan', 'Yono', 'Polisi', 'Rp 3.000.000 - Rp 7.000.000', 'Yuni', 'Ibu Rumah Tangga', '0', '2024', NULL, '8765', '0876', '1', '2025-01-17 08:30:00', '2025-01-17 08:49:06'),
(13, 'Saguna Terna', 'Laki-Laki', 'Islam', '20240013', '0896', 'Jakarta', '2023-05-07', 'Jalan', 'Ternu', 'PNS', 'Rp 3.000.000 - Rp 7.000.000', 'Tuni', 'Polisi', 'Rp 3.000.000 - Rp 7.000.000', '2024', NULL, '0823', '1234', '1', '2025-01-17 08:32:01', '2025-01-17 08:32:01'),
(14, 'Yunita Sarah', 'Perempuan', 'Islam', '20240014', '0768', 'Jakarta', '2023-06-07', 'Jalan', 'Nurahman', 'PNS', 'Rp 1.000.000 - Rp 3.000.000', 'Rutian', 'TNI', 'Rp 1.000.000 - Rp 3.000.000', '2024', NULL, '0000', '0876', '1', '2025-01-17 08:33:46', '2025-01-17 08:33:46'),
(15, 'Sudirman', 'Laki-Laki', 'Islam', '20240015', '126531', 'Jakarta', '2023-07-07', 'Jalan', 'Yunito', 'PNS', 'Rp 1.000.000 - Rp 3.000.000', 'Yuni', 'Ibu Rumah Tangga', '0', '2024', NULL, '0000', '0000', '1', '2025-01-17 08:35:41', '2025-01-17 08:35:41'),
(16, 'Gerrad Mulyadi', 'Laki-Laki', 'Islam', '20240016', '1234', 'Jakarta', '2023-08-07', 'Jalan', 'Tayaul', 'PNS', 'Rp 1.000.000 - Rp 3.000.000', 'Yunita', 'Ibu Rumah Tangga', '0', '2024', NULL, '0000', '9999', '1', '2025-01-17 08:37:10', '2025-01-17 08:37:10'),
(17, 'Wardah Aqila', 'Perempuan', 'Islam', '20240017', '5678', 'Jakarta', '2023-09-07', 'Jalan', 'Kairul', 'PNS', 'Rp 1.000.000 - Rp 3.000.000', 'Huna', 'Ibu Rumah Tangga', '0', '2024', NULL, '0000', '7777', '1', '2025-01-17 08:38:43', '2025-01-17 08:38:43'),
(18, 'Ananda Pratama', 'Laki-Laki', 'Islam', '20240018', '7654', 'Jakarta', '2024-10-07', 'Jalan', 'Kurnia', 'PNS', 'Rp 1.000.000 - Rp 3.000.000', 'Selli', 'Ibu Rumah Tangga', '0', '2024', NULL, '8888', '0887', '1', '2025-01-17 08:40:33', '2025-01-17 08:40:33'),
(19, 'Aqila Putri', 'Laki-Laki', 'Islam', '20240019', '34567', 'Jakarta', '2023-11-07', 'Jalan', 'Budi', 'PNS', 'Rp 1.000.000 - Rp 3.000.000', 'Gery', 'Ibu Rumah Tangga', '0', '2024', NULL, '000', '0088', '1', '2025-01-17 08:42:21', '2025-01-17 08:42:21'),
(20, 'Bagaskara Juliansyah', 'Laki-Laki', 'Islam', '20240020', '7654', 'Jakarta', '2023-12-07', 'Jalan', 'Juli', 'PNS', 'Rp 1.000.000 - Rp 3.000.000', 'Yuni', 'Ibu Rumah Tangga', '0', '2024', NULL, '0077', '6655', '1', '2025-01-17 08:43:47', '2025-01-17 08:43:47'),
(21, 'Anatasyah Cairunnisa', 'Perempuan', 'Islam', '20240021', '223344', 'Jakarta', '2023-04-07', 'Jalan', 'Niko', 'PNS', 'Rp 1.000.000 - Rp 3.000.000', 'Juli', 'TNI', '0', '2024', NULL, '6666', '0877', '1', '2025-01-17 08:45:39', '2025-01-17 08:45:39'),
(22, 'Hairana Juni', 'Perempuan', 'Islam', '20240022', '0879', 'Jakarta', '2023-01-07', 'Jalan', 'Jukia', 'PNS', 'Rp 1.000.000 - Rp 3.000.000', 'kusuma', 'Ibu Rumah Tangga', '0', '2024', NULL, '000', '0897', '1', '2025-01-17 08:48:37', '2025-01-17 08:48:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_luluses`
--

CREATE TABLE `siswa_luluses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `rapor` int(11) NOT NULL,
  `skl` int(11) NOT NULL,
  `cap_jari` int(11) NOT NULL,
  `ijazah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa_luluses`
--

INSERT INTO `siswa_luluses` (`id`, `siswa_id`, `tujuan`, `rapor`, `skl`, `cap_jari`, `ijazah`, `created_at`, `updated_at`) VALUES
(1, 4, 'Kuliah', 1, 1, 0, 1, '2024-07-08 03:07:49', '2024-07-08 03:15:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulangans`
--

CREATE TABLE `ulangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `semester` varchar(255) NOT NULL,
  `ulangan_harian_satu` varchar(255) NOT NULL,
  `ulangan_harian_dua` varchar(255) NOT NULL,
  `ulangan_harian_tiga` varchar(255) NOT NULL,
  `ulangan_harian_empat` varchar(255) NOT NULL,
  `nilai` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ulangans`
--

INSERT INTO `ulangans` (`id`, `siswa_id`, `mapel_id`, `semester`, `ulangan_harian_satu`, `ulangan_harian_dua`, `ulangan_harian_tiga`, `ulangan_harian_empat`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 3, 16, 'Ganjil', '80', '80', '80', '80', '80.00', '2025-07-11 03:48:32', '2025-07-11 04:16:17'),
(10, 2, 16, 'Ganjil', '90', '90', '90', '90', '90.00', '2025-07-11 04:22:38', '2025-07-11 04:22:38'),
(11, 17, 16, 'Ganjil', '0', '0', '0', '0', '0.00', '2025-07-11 04:22:38', '2025-07-11 04:22:38'),
(12, 16, 16, 'Ganjil', '0', '0', '0', '0', '0.00', '2025-07-11 04:22:38', '2025-07-11 04:22:38'),
(13, 15, 16, 'Ganjil', '0', '0', '0', '0', '0.00', '2025-07-11 04:22:38', '2025-07-11 04:22:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('admin','guru','kurikulum','tatausaha','kepalasekolah') NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', 'admin', NULL, '$2y$10$fnoH5hFbnLVRv2mXj0zC4OQNIsiG7oLVq08vWZV0dRWcFQwhnCSgC', NULL, '2024-03-15 12:52:44', '2025-01-14 07:29:12'),
(2, 'Sarah Palmer', 'sarahpalmer@example.com', 'guru', NULL, '$2y$10$S5yFBxIPqGcdMFjH4/72her03CeFjNdHofjW5M4KhAB75uuMmruuC', NULL, '2024-05-31 03:34:08', '2024-05-31 03:34:08'),
(3, 'John Doe', 'johndoe@example.com', 'guru', NULL, '$2y$10$W/RrSc9h9nmkf4t8nYOyFuSnPBl5aty9PIcxGKtLtYvfxWYJ6XBhG', NULL, '2024-05-31 05:04:02', '2024-08-14 05:37:12'),
(4, 'Kurikulum', 'kurikulum@example.com', 'kurikulum', NULL, '$2y$10$975POznnSGeRL617SP40p.EnNwt1tI6nAHRHU/O.k7INmt3ErDIWK', NULL, '2024-05-31 12:48:02', '2024-06-26 23:54:29'),
(5, 'Dr. H. Moh. Wahyudin Syarif, S.H., M.Pd.', 'mohwahyudin@example.com', 'kepalasekolah', NULL, '$2y$10$9kUs7Lsbf8wRThnkZfG5puVvXiiEYDsXJ5hlEjOa6slvYa1wIyEGK', NULL, '2024-05-31 13:52:23', '2024-06-27 00:37:50'),
(6, 'Tata Usaha', 'tatausaha@example.com', 'tatausaha', NULL, '$2y$10$nEaQmlZTlUE4FV31Y/ICxuPmT8d8cruTifRMKn464YuigHY5i03he', NULL, '2024-06-01 03:17:46', '2024-06-27 01:09:13'),
(14, 'Ananda Yusuf', 'yusuf@example.com', 'guru', NULL, '$2y$10$t863Z74UhaoUhXTmNWsxReQhxRvQvvCUgZKhz29.PeD1l1fDAagBu', NULL, '2025-01-14 06:44:03', '2025-01-14 06:44:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `surat_keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wali_kelas`
--

INSERT INTO `wali_kelas` (`id`, `kelas_id`, `guru_id`, `surat_keterangan`, `created_at`, `updated_at`) VALUES
(2, 1, 1, NULL, '2024-05-31 05:40:53', '2024-05-31 05:40:53'),
(3, 2, 2, 'file/suratketerangan/Surat-Keterangan-20240708-bLvD.png', '2024-05-31 09:47:36', '2024-07-08 02:43:30');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensis`
--
ALTER TABLE `absensis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absensis_rombel_id_foreign` (`rombel_id`);

--
-- Indeks untuk tabel `absensi_harians`
--
ALTER TABLE `absensi_harians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absensi_harians_siswa_id_foreign` (`siswa_id`),
  ADD KEY `absensi_harians_rombel_id_foreign` (`rombel_id`);

--
-- Indeks untuk tabel `detail_absensis`
--
ALTER TABLE `detail_absensis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_absensis_absensi_id_foreign` (`absensi_id`),
  ADD KEY `detail_absensis_siswa_id_foreign` (`siswa_id`);

--
-- Indeks untuk tabel `detail_gurus`
--
ALTER TABLE `detail_gurus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_gurus_guru_id_foreign` (`guru_id`),
  ADD KEY `detail_gurus_mapel_id_foreign` (`mapel_id`);

--
-- Indeks untuk tabel `detail_mapels`
--
ALTER TABLE `detail_mapels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_mapels_mapel_id_foreign` (`mapel_id`);

--
-- Indeks untuk tabel `detail_rombels`
--
ALTER TABLE `detail_rombels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_rombels_rombel_id_foreign` (`rombel_id`),
  ADD KEY `detail_rombels_siswa_id_foreign` (`siswa_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `gurus`
--
ALTER TABLE `gurus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gurus_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `jadwal_pelajarans`
--
ALTER TABLE `jadwal_pelajarans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwal_pelajarans_guru_id_foreign` (`guru_id`),
  ADD KEY `jadwal_pelajarans_mapel_id_foreign` (`mapel_id`),
  ADD KEY `jadwal_pelajarans_kelas_id_foreign` (`kelas_id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mapels`
--
ALTER TABLE `mapels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `penilaians`
--
ALTER TABLE `penilaians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penilaians_siswa_id_foreign` (`siswa_id`),
  ADD KEY `penilaians_mapel_id_foreign` (`mapel_id`);

--
-- Indeks untuk tabel `penilaian_harians`
--
ALTER TABLE `penilaian_harians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penilaians_siswa_id_foreign` (`siswa_id`),
  ADD KEY `penilaians_mapel_id_foreign` (`mapel_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `program_pembelajarans`
--
ALTER TABLE `program_pembelajarans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_pembelajarans_guru_id_foreign` (`guru_id`);

--
-- Indeks untuk tabel `raports`
--
ALTER TABLE `raports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `raports_kelas_id_foreign` (`kelas_id`);

--
-- Indeks untuk tabel `rombels`
--
ALTER TABLE `rombels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rombels_kelas_id_foreign` (`kelas_id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa_luluses`
--
ALTER TABLE `siswa_luluses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_luluses_siswa_id_foreign` (`siswa_id`);

--
-- Indeks untuk tabel `ulangans`
--
ALTER TABLE `ulangans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ulangans_siswa_id_foreign` (`siswa_id`),
  ADD KEY `ulangans_mapel_id_foreign` (`mapel_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wali_kelas_kelas_id_foreign` (`kelas_id`),
  ADD KEY `wali_kelas_guru_id_foreign` (`guru_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absensis`
--
ALTER TABLE `absensis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `absensi_harians`
--
ALTER TABLE `absensi_harians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `detail_absensis`
--
ALTER TABLE `detail_absensis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `detail_gurus`
--
ALTER TABLE `detail_gurus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `detail_mapels`
--
ALTER TABLE `detail_mapels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `detail_rombels`
--
ALTER TABLE `detail_rombels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gurus`
--
ALTER TABLE `gurus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jadwal_pelajarans`
--
ALTER TABLE `jadwal_pelajarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `mapels`
--
ALTER TABLE `mapels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `penilaians`
--
ALTER TABLE `penilaians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `penilaian_harians`
--
ALTER TABLE `penilaian_harians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `program_pembelajarans`
--
ALTER TABLE `program_pembelajarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `raports`
--
ALTER TABLE `raports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `rombels`
--
ALTER TABLE `rombels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `siswa_luluses`
--
ALTER TABLE `siswa_luluses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ulangans`
--
ALTER TABLE `ulangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `absensis`
--
ALTER TABLE `absensis`
  ADD CONSTRAINT `absensis_rombel_id_foreign` FOREIGN KEY (`rombel_id`) REFERENCES `rombels` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `absensi_harians`
--
ALTER TABLE `absensi_harians`
  ADD CONSTRAINT `absensi_harians_rombel_id_foreign` FOREIGN KEY (`rombel_id`) REFERENCES `rombels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `absensi_harians_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_absensis`
--
ALTER TABLE `detail_absensis`
  ADD CONSTRAINT `detail_absensis_absensi_id_foreign` FOREIGN KEY (`absensi_id`) REFERENCES `absensis` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_absensis_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_gurus`
--
ALTER TABLE `detail_gurus`
  ADD CONSTRAINT `detail_gurus_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `gurus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_gurus_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapels` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_mapels`
--
ALTER TABLE `detail_mapels`
  ADD CONSTRAINT `detail_mapels_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapels` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_rombels`
--
ALTER TABLE `detail_rombels`
  ADD CONSTRAINT `detail_rombels_rombel_id_foreign` FOREIGN KEY (`rombel_id`) REFERENCES `rombels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_rombels_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `gurus`
--
ALTER TABLE `gurus`
  ADD CONSTRAINT `gurus_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwal_pelajarans`
--
ALTER TABLE `jadwal_pelajarans`
  ADD CONSTRAINT `jadwal_pelajarans_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `gurus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_pelajarans_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_pelajarans_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapels` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penilaians`
--
ALTER TABLE `penilaians`
  ADD CONSTRAINT `penilaians_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `penilaians_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `program_pembelajarans`
--
ALTER TABLE `program_pembelajarans`
  ADD CONSTRAINT `program_pembelajarans_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `gurus` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `raports`
--
ALTER TABLE `raports`
  ADD CONSTRAINT `raports_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rombels`
--
ALTER TABLE `rombels`
  ADD CONSTRAINT `rombels_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa_luluses`
--
ALTER TABLE `siswa_luluses`
  ADD CONSTRAINT `siswa_luluses_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ulangans`
--
ALTER TABLE `ulangans`
  ADD CONSTRAINT `ulangans_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ulangans_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD CONSTRAINT `wali_kelas_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `gurus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wali_kelas_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
