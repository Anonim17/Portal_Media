-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 29, 2022 at 09:18 AM
-- Server version: 10.3.34-MariaDB-cll-lve
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portalme_portalmerah`
--
CREATE DATABASE IF NOT EXISTS `portalme_portalmerah` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `portalme_portalmerah`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'cofranc44@gmail.com', NULL, '2022-06-16 08:53:04', 0),
(2, '::1', 'Createrorr', NULL, '2022-06-16 08:53:34', 0),
(3, '::1', 'jokoprakarya@gmail.com', 2, '2022-06-16 08:53:52', 0),
(4, '::1', 'jokoprakarya@gmail.com', 2, '2022-06-16 08:54:57', 0),
(5, '::1', 'coba', 3, '2022-06-16 08:55:07', 0),
(6, '::1', 'cofranc44@gmail.com', 4, '2022-06-16 08:56:08', 0),
(7, '::1', 'cofranc44@gmail.com', 4, '2022-06-16 10:37:30', 1),
(8, '::1', 'cofranc44@gmail.com', 4, '2022-06-16 11:12:32', 1),
(9, '::1', 'cofranc44@gmail.com', 4, '2022-06-16 11:17:28', 1),
(10, '::1', 'cofranc44@gmail.com', 4, '2022-06-16 11:28:36', 1),
(11, '::1', 'cofranc44@gmail.com', 4, '2022-06-16 13:25:39', 1),
(12, '::1', 'cofranc44@gmail.com', 4, '2022-06-16 13:28:45', 1),
(13, '::1', 'cofranc44@gmail.com', 4, '2022-06-16 13:43:16', 1),
(14, '::1', 'cofranc44@gmail.com', 4, '2022-06-16 18:22:35', 1),
(15, '::1', 'cofranc44@gmail.com', 4, '2022-06-17 03:32:24', 1),
(16, '::1', 'cofranc44@gmail.com', 4, '2022-06-17 18:29:03', 1),
(17, '::1', 'cofranc', NULL, '2022-06-17 22:23:23', 0),
(18, '::1', 'cofranc44@gmail.com', 4, '2022-06-17 22:23:48', 1),
(19, '66.96.225.114', 'portalmerahnews@gmail.com', 1, '2022-06-18 15:34:38', 1),
(20, '66.96.225.114', 'portalmerahnews@gmail.com', 1, '2022-06-18 17:58:53', 1),
(21, '66.96.225.114', 'portalmerahnews@gmail.com', 1, '2022-06-18 18:17:42', 1),
(22, '103.108.20.81', 'portalmerah.id', NULL, '2022-06-19 19:58:14', 0),
(23, '103.108.20.81', 'portalmerahnews@gmail.com', 1, '2022-06-19 20:01:12', 1),
(24, '103.108.20.81', 'portalmerahnews@gmail.com', 1, '2022-06-19 20:01:12', 1),
(25, '66.96.225.66', 'portalmerahnews@gmail.com', 1, '2022-06-19 20:01:43', 1),
(26, '182.1.119.9', 'portalmerahnews@gmail.com', 1, '2022-06-20 22:11:34', 1),
(27, '66.96.225.66', 'portalmerahnews@gmail.com', 1, '2022-06-21 21:21:41', 1),
(28, '103.108.20.95', 'portalmerahnews@gmail.com', 1, '2022-06-22 13:10:17', 1),
(29, '103.108.20.81', 'portalmerah', NULL, '2022-06-23 19:00:42', 0),
(30, '103.108.20.81', 'portalmerah', NULL, '2022-06-23 19:00:58', 0),
(31, '103.108.20.81', 'portalmerah', NULL, '2022-06-23 19:01:45', 0),
(32, '103.108.20.81', 'portalmerah', NULL, '2022-06-23 19:01:52', 0),
(33, '103.108.20.81', 'portalmerahnews@gmail.com', 1, '2022-06-23 19:02:29', 1),
(34, '114.4.219.116', 'portalmerahnews@gmail.com', 1, '2022-06-24 07:34:07', 1),
(35, '66.96.225.114', 'portalmerahnews@gmail.com', 1, '2022-06-24 21:12:27', 1),
(36, '114.4.219.116', 'portalmerahnews@gmail.com', 1, '2022-06-25 01:56:27', 1),
(37, '175.158.38.243', 'portalmerahnews@gmail.com', 1, '2022-06-25 21:50:25', 1),
(38, '175.158.38.243', 'portalmerahnews@gmail.com', 1, '2022-06-25 22:34:13', 1),
(39, '103.108.20.95', 'portalmerah', NULL, '2022-06-27 03:50:31', 0),
(40, '103.108.20.95', 'portalmerah', NULL, '2022-06-27 03:51:12', 0),
(41, '103.108.20.95', 'portalmerahnews@gmail.com', 1, '2022-06-27 03:57:49', 1),
(42, '114.125.78.41', 'portalmerahnews@gmail.com', 1, '2022-06-27 10:04:34', 1),
(43, '66.96.225.75', 'portalmerahnews@gmail.com', 1, '2022-06-28 09:21:58', 1),
(44, '103.108.20.68', 'portalmerah', NULL, '2022-06-28 16:30:36', 0),
(45, '103.108.20.68', 'portalmerahnews@gmail.com', 1, '2022-06-28 16:30:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1655035906, 1),
(2, '2022-06-14-235044', 'App\\Database\\Migrations\\TblKomen', 'default', 'App', 1655385211, 2),
(3, '2022-06-14-235050', 'App\\Database\\Migrations\\TblAuthor', 'default', 'App', 1655385211, 2),
(4, '2022-06-14-235055', 'App\\Database\\Migrations\\TblNewsKategori', 'default', 'App', 1655385211, 2),
(5, '2022-06-14-235103', 'App\\Database\\Migrations\\TblBerita', 'default', 'App', 1655385211, 2),
(6, '2022-06-14-235109', 'App\\Database\\Migrations\\TblArtikel', 'default', 'App', 1655385211, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblartikel`
--

CREATE TABLE `tblartikel` (
  `id_artikel` int(15) NOT NULL,
  `news_judul` varchar(200) NOT NULL,
  `news_konten` text NOT NULL,
  `news_gambar` varchar(200) NOT NULL,
  `news_video` varchar(200) NOT NULL,
  `news_traffic` int(15) NOT NULL,
  `news_status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblartikel`
--

INSERT INTO `tblartikel` (`id_artikel`, `news_judul`, `news_konten`, `news_gambar`, `news_video`, `news_traffic`, `news_status`, `created_at`, `updated_at`) VALUES
(10, 'Longsor Kediri, Bupati Kediri Imbau Warga Untuk Waspada', '<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: 15.0pt; text-align: justify; line-height: 18.0pt;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">Portalmerah.id | Kediri &ndash;</span></strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\"> Bupati&nbsp;<a href=\"https://www.suara.com/tag/kediri\"><span style=\"color: black; mso-themecolor: text1; text-decoration: none; text-underline: none;\">Kediri</span></a>&nbsp;<a href=\"https://www.suara.com/tag/hanindhito-himawan-pramana\"><span style=\"color: black; mso-themecolor: text1; text-decoration: none; text-underline: none;\">Hanindhito Himawan Pramana</span></a>&nbsp;mengimbau warga di kawasan lereng&nbsp;<a href=\"https://www.suara.com/tag/gunung-wilis\"><span style=\"color: black; mso-themecolor: text1; text-decoration: none; text-underline: none;\">Gunung Wilis</span></a>&nbsp;agar mewaspadai potensi bencana&nbsp;<a href=\"https://www.suara.com/tag/longsor\"><span style=\"color: black; mso-themecolor: text1; text-decoration: none; text-underline: none;\">longsor</span></a>.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: 15.0pt; text-align: justify; line-height: 18.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">Imbauan itu menyusul terjadinya tanah longsor di Dusun Besuki, Desa Jugo, Kecamatan Mojo,&nbsp;<a href=\"https://www.suara.com/tag/kabupaten-kediri\"><span style=\"color: black; mso-themecolor: text1; text-decoration: none; text-underline: none;\">Kabupaten Kediri</span></a>,&nbsp; Kamis (23/6/2022). Akibatnya, rumah milik Slamet rusak diterjang material longsor. Beruntung tidak ada korban jiwa akibat bencana alam tersebut.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: 15.0pt; text-align: justify; line-height: 18.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">&ldquo;Saat ini kita ketahui curah hujan masih tinggi, saya meminta warga yang berada di daerah rawan bencana untuk lebih meningkatkan kewaspadaan,&rdquo; imbaunya, Sabtu (25/6/2022).</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: 15.0pt; text-align: justify; line-height: 18.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">Sementara itu, dalam bencana tanah longsor di lereng Gunung Wilis ini, rumah Slamet tertimbun material tanah dari tebing setinggi 20 meter dan lebar 10 meter yang runtuh. Beruntung, pemilik rumah bersama keluarganya berhasil selamat dari insiden itu.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: 15.0pt; text-align: justify; line-height: 18.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">Selain rumah Slamet, titik longsor juga terjadi di RT 02, yakni tembok penahan tanah (TPT) jalan longsor. Untuk mengantisipasi longsor susulan sehingga terjadi hal yang tak diinginkan separo akses jalan dilakukan penutupan.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: 15.0pt; text-align: justify; line-height: 18.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">&ldquo;Pemerintah Kabupaten Kediri prihatin atas musibah ini, begitu mendapat informasi itu, saya juga telah meminta dinas terkait (BPBD) terjun ke lokasi. Kepada warga kami sekali lagi meminta tetap tingkatkan kewaspadaan,&rdquo; ungkap Mas Dhito.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: 15.0pt; text-align: justify; line-height: 18.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">Kepala BPBD Kabupaten Kediri Randy Agatha Sakaira menjelaskan, saat kejadian longsor, Slamet beserta keluarganya telah terlebih dulu meninggalkan rumah. Tidak ada yang menjadi korban dalam longsor itu.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: 15.0pt; text-align: justify; line-height: 18.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">&ldquo;Jadi selain melakukan tanggap darurat kita juga lakukan upaya pencegahan dan kesiapsiagaan yang kita lakukan sebelumnya,&rdquo; bebernya.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: 15.0pt; text-align: justify; line-height: 18.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">BPBD, lanjut Randy, melakukan berbagai langkag. Selain meningkatkan edukasi, termasuk pembentukan tim siaga bencana desa maupun desa tangguh bencana. Hal itu karena Kabupaten Kediri secara topografi terdapat wilayah perbukitan.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: 15.0pt; text-align: justify; line-height: 18.0pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">&ldquo;Mau tidak mau kita akui bahwa wilayah Kabupaten Kediri ada wilayah perbukitan dan memang ada potensi terjadi longsor,&rdquo; tuturnya.</span></p>\r\n<p style=\"margin-bottom: 15.0pt; text-align: justify; line-height: 18.0pt;\"><span style=\"color: black; mso-themecolor: text1;\">Senada dengan yang disampaikan Mas Dhito, pihaknya mengimbau masyarakat untuk tetap waspada dan mengenali potensi bencana yang terjadi di wilayahnya. Sebab, selain&nbsp;<a style=\"overflow-wrap: break-word; transition: all 0.2s ease-in-out 0s;\" href=\"https://www.suara.com/tag/longsor\"><span style=\"color: black; mso-themecolor: text1; text-decoration: none; text-underline: none;\">longsor</span></a>, hujan deras yang masih terjadi saat ini biasa diiringi angin kencang yang juga bisa menumbangkan pohon.</span></p>\r\n<p style=\"margin-bottom: 15.0pt; text-align: start; line-height: 18.0pt; overflow-wrap: break-word; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;\"><span style=\"color: black; mso-themecolor: text1;\">&ldquo;Misalnya kalau hujan deras dengan intensitas yang lama harus mencari tempat yang lebih aman,&rdquo; pesannya.</span></p>\r\n<p style=\"margin-bottom: 15.0pt; text-align: start; line-height: 18.0pt; overflow-wrap: break-word; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;\"><span style=\"color: black; mso-themecolor: text1;\">Terkait dampak longsor yang terjadi, pemilik rumah mengungsi di rumah kerabat yang berada tak jauh dari tempat tinggalnya. Kerja bakti pembersihan material longsor dilakukan dengan bekerjasama unsur pemerintah daerah, relawan, warga, maupun TNI/Polri.</span></p>\r\n<p style=\"margin-bottom: 15.0pt; text-align: start; line-height: 18.0pt; overflow-wrap: break-word; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;\"><span style=\"color: black; mso-themecolor: text1;\">&ldquo;Kita kemarin ke lokasi juga menyalurkan bantuan dari Mas Bupati baik itu selimut, tikar maupun peralatan dapur lengkap,&rdquo; ucapnya.</span></p>', 'assets/berita/images/61250-rumah-milik-slamet-warga-kediri-rusak-terdampak-longsor-beritajatimcom.jpg', '', 0, 0, '2022-06-25 15:35:41', '2022-06-25 15:35:41'),
(11, 'Kesempatan Langka, Persik Kediri Akan Bermain Bersama Ronaldinho', '<p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; color: black; mso-themecolor: text1;\">Portalmerah.id | Kediri &ndash;</span></strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; color: black; mso-themecolor: text1;\"> <span style=\"background: white;\">Persik Kediri ingin menikmati pertandingan dalam trofeo bertajuk Meet The Star bersama Ronaldinho. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; color: black; mso-themecolor: text1; background: white;\">Walaupun begitu, klub bola berjuluk Macan Putih itu tetap berniat menyulitkan Ronaldinho dan mencoba memetik kemenangan atas RANS Nusantara FC dan Arema FC. </span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; color: black; mso-themecolor: text1; background: white;\">Trofeo antara ketiga tim tersebut yang melibatkan mega bintang sepak bola dunia Ronaldinho akan berlangsung di Stadion Kanjuruhan Kepanjen, Kabupaten Malang, Minggu (26/6/2022) malam.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; color: black; mso-themecolor: text1; background: white;\">Pelatih Persik Kediri, Javier Roca, menilai momen itu akan jadi kesempatan langka bagi pemainnya, lantaran bisa bertanding melawan pesepak bola kelas wahid seperti Ronaldinho. </span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; color: black; mso-themecolor: text1; background: white;\">Karena itu, tak ada yang lebih penting dari menikmati setiap momen yang terjadi di lapangan bersama Ronaldinho. </span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; color: black; mso-themecolor: text1; background: white;\">Javier Roca juga menegaskan timnya agar tetap tampil maksimal. Baginya, dua pertandingan yang akan dilakoni layaknya uji coba untuk mengukur kemampuan Persik dan melihat hasil evaluasi yang telah dilakukan. </span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; color: black; mso-themecolor: text1; background: white;\">&ldquo;Persiapan khusus tim tidak ada. Pokoknya pemain bisa nikmati, bisa ambil pengalaman karena nanti bermain satu lapangan sama dia (Ronaldinho),&rdquo; kata Javier Roca, sang pelatih asal Chile. </span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; color: black; mso-themecolor: text1; background: white;\">&ldquo;Kita tetap akan main serius, di manapun kita tampil. Soalnya kita bawa nama Persik. Nama besar dan tanggung jawabnya juga besar,&rdquo; ujar Javier Roca menambahkan. </span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; color: black; mso-themecolor: text1; background: white;\">Sampai Sabtu (25/6/2022), Persik Kediri masih menggelar latihan di Kediri. Rombongan tim Macan Putih baru berangkat menuju Malang Minggu (26/6/2022) pagi. </span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; color: black; mso-themecolor: text1; background: white;\">Antusiasme meliputi personel Persik, termasuk Arthur Irawan yang tak sabar berhadapan dengan Ronaldinho di atas lapangan. </span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; color: black; mso-themecolor: text1; background: white;\">Setelah sekian lama menonton Ronaldinho hanya melalui layar televisi, Arthur Irawan akhirnya bisa bermain di satu lapangan yang sama. Oleh karena itu, ia berusaha juga berupaya bermain serius. </span></p>\r\n<p><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; color: black; mso-themecolor: text1; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">&ldquo;Yang penting adalah mencegah dia mencetak assist, gol, maupun menjalankan permainan RANS di lini tengah. Bagi saya, Persik tetap harus menang,&rdquo; katanya dengan penuh semangat.</span></p>', 'assets/berita/images/ronaldindo.jpg', '', 0, 0, '2022-06-25 16:02:26', '2022-06-25 16:02:26'),
(12, 'Atas Insiden Holywings, SAPMA PP Kabupaten Kediri Ingatkan Para Pemilik Tempat Hiburan Malam Di Kediri', '<p dir=\"ltr\" style=\"text-align: justify;\"><strong>portalmerah.id | Kediri</strong> - Satuan Siswa Pelajar dan Mahasiswa (SAPMA) Pemuda Pancasila Kabupaten Kediri Ingatkan Pemilik Tempat Hiburan Malam, agar kasus semacam HOLYWINGS tidak terjadi di Kediri. (27/6)</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Akhir-akhir ini, masyarakat di buat resah dengan beredarnya Promo Miras Holywings yang dibagikan secara gratis bagi orang yang memiliki nama Muhammad dan Maria.</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Atas hal tersebut, banyak dari kalangan agamawan dan masyarakat yang menginginkan terwujudnya kerukunan dan ketertiban dalam masyarakat yang ber-bhinneka tunggal ika, melakukan kecaman dan tuntutan kepada pihak-pihak yang telah membuat kegaduhan itu.</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Selain karena Promo tersebut terlalu sensitif dengan digunakannya dua nama Muhamad dan Maria, hal itu berpotensi dapat menjadi pemicu terjadinya konflik sosial berbasis SARA.</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Dalam rangka untuk menciptakan masyarakat Kediri yang aman, tertib dan terjaganya hubungan yang harmonis antar elemen masyarakat Kediri yang Multikultural, M. Ali Anwar, ketika dimintai pendapatnya atas kejadian Holywings dan harapanya untuk Tempat Hiburan Malam di Kediri mengatakan \" di tengah kondisi sosial dari hal diatas kami Satuan Siswa Pelajar dan Mahasiswa (SAPMA) Pemuda Pancasila Kabupaten Kediri Menegaskan dan juga mengimbau kepada Tempat-tempat Hiburan Malam di Kediri agar Insiden yang Serupa Tidak Terulang di Kediri.</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">Selain itu kami juga Menekankan Tempat Hiburan Malam di Kediri Harus Mempunyai Izin Resmi yang Jelas.</p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\">\"Banyak Cafe Tempat Karaoke ataupunTempat Hiburan Malam di Kediri yang Menjual Minuman Keras (MIRAS) beralkohol, banyak yang tidak sesuai dengan Izin Resmi yang sudah diberikan, yang terlebih lagi buka sampai dengan dini hari sehingga konflik sosial sangat dimungkinkan, itu yang Kami Sesalkan\" Ujar Ali Anwar Ketua Satuan Siswa Pelajar dan Mahasiswa (SAPMA) Pemuda Pancasila Kabupaten Kediri. (Dew)</p>', 'assets/berita/images/IMG-20220627-WA0001.jpg', '', 0, 0, '2022-06-27 03:08:04', '2022-06-27 03:08:04'),
(16, 'Coba', '<p>Coba</p>', 'assets/berita/images/Screenshot 2022-04-16 101247.png', '', 0, 0, '2022-06-28 09:31:14', '2022-06-28 09:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblberita`
--

CREATE TABLE `tblberita` (
  `id_berita` int(15) NOT NULL,
  `id_artikel` int(15) NOT NULL,
  `id_kategori` int(15) NOT NULL,
  `id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblberita`
--

INSERT INTO `tblberita` (`id_berita`, `id_artikel`, `id_kategori`, `id`) VALUES
(10, 10, 3, 1),
(11, 11, 8, 1),
(12, 12, 1, 1),
(16, 16, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblkomen`
--

CREATE TABLE `tblkomen` (
  `id_komen` int(15) NOT NULL,
  `id_artikel` int(15) NOT NULL,
  `komen_user` varchar(200) NOT NULL,
  `komen_isi` text NOT NULL,
  `komen_status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnewskategori`
--

CREATE TABLE `tblnewskategori` (
  `id_kategori` int(15) NOT NULL,
  `kategori_nama` varchar(100) NOT NULL,
  `kategori_deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblnewskategori`
--

INSERT INTO `tblnewskategori` (`id_kategori`, `kategori_nama`, `kategori_deskripsi`) VALUES
(1, 'Umum', 'Umum'),
(2, 'Nasional', 'Nasional'),
(3, 'Daerah', 'Daerah'),
(4, 'Internasional', 'Internasional'),
(5, 'Kriminalitas', 'Kriminalitas'),
(6, 'Hukum', 'Hukum'),
(7, 'Pendidikan', 'Pendidikan'),
(8, 'Olahraga', 'Olahraga'),
(9, 'Ekonomi', 'Ekonomi'),
(10, 'Hobi & Gaya Hidup', 'Hobi & Gaya Hidup'),
(11, 'Otomotif', 'Otomotif'),
(12, 'Keluhan Masyarakat', 'Keluhan Masyarakat'),
(13, 'Hiburan', 'Hiburan'),
(14, 'TNI - POLRI', 'TNI - POLRI');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'portalmerahnews@gmail.com', 'portalmerah', '$2y$10$Vb7P74mC.BWYXnSqItg8nurOhi5Wk3kwVfADelpL6IybsgUE0u6vK', NULL, NULL, NULL, '3608cf9592ff05f67d1966e1d294a2e1', NULL, NULL, 1, 0, '2022-06-16 08:55:31', '2022-06-16 08:55:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblartikel`
--
ALTER TABLE `tblartikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD UNIQUE KEY `id_artikel` (`id_artikel`);

--
-- Indexes for table `tblberita`
--
ALTER TABLE `tblberita`
  ADD PRIMARY KEY (`id_berita`),
  ADD UNIQUE KEY `id_berita` (`id_berita`),
  ADD KEY `FK_tblberita_tblartikel` (`id_artikel`),
  ADD KEY `FK_tblberita_tblnewskategori` (`id_kategori`),
  ADD KEY `FK_tblberita_users` (`id`);

--
-- Indexes for table `tblkomen`
--
ALTER TABLE `tblkomen`
  ADD PRIMARY KEY (`id_komen`),
  ADD UNIQUE KEY `id_komen` (`id_komen`),
  ADD KEY `FK_tblkomen_tblartikel` (`id_artikel`);

--
-- Indexes for table `tblnewskategori`
--
ALTER TABLE `tblnewskategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblartikel`
--
ALTER TABLE `tblartikel`
  MODIFY `id_artikel` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblberita`
--
ALTER TABLE `tblberita`
  MODIFY `id_berita` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblkomen`
--
ALTER TABLE `tblkomen`
  MODIFY `id_komen` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnewskategori`
--
ALTER TABLE `tblnewskategori`
  MODIFY `id_kategori` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblberita`
--
ALTER TABLE `tblberita`
  ADD CONSTRAINT `FK_tblberita_tblartikel` FOREIGN KEY (`id_artikel`) REFERENCES `tblartikel` (`id_artikel`),
  ADD CONSTRAINT `FK_tblberita_tblnewskategori` FOREIGN KEY (`id_kategori`) REFERENCES `tblnewskategori` (`id_kategori`),
  ADD CONSTRAINT `FK_tblberita_users` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tblkomen`
--
ALTER TABLE `tblkomen`
  ADD CONSTRAINT `FK_tblkomen_tblartikel` FOREIGN KEY (`id_artikel`) REFERENCES `tblartikel` (`id_artikel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
