-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for portalme_portalmerah
CREATE DATABASE IF NOT EXISTS `portalme_portalmerah` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `portalme_portalmerah`;

-- Dumping structure for table portalme_portalmerah.auth_activation_attempts
CREATE TABLE IF NOT EXISTS `auth_activation_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.auth_activation_attempts: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_activation_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_activation_attempts` ENABLE KEYS */;

-- Dumping structure for table portalme_portalmerah.auth_groups
CREATE TABLE IF NOT EXISTS `auth_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.auth_groups: ~2 rows (approximately)
/*!40000 ALTER TABLE `auth_groups` DISABLE KEYS */;
INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
	(1, 'admin', 'Super Admin'),
	(2, 'author', 'Site Author for Create News');
/*!40000 ALTER TABLE `auth_groups` ENABLE KEYS */;

-- Dumping structure for table portalme_portalmerah.auth_groups_permissions
CREATE TABLE IF NOT EXISTS `auth_groups_permissions` (
  `group_id` int(11) unsigned NOT NULL DEFAULT '0',
  `permission_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  KEY `group_id_permission_id` (`group_id`,`permission_id`),
  CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.auth_groups_permissions: ~2 rows (approximately)
/*!40000 ALTER TABLE `auth_groups_permissions` DISABLE KEYS */;
INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
	(1, 1),
	(1, 2),
	(2, 2);
/*!40000 ALTER TABLE `auth_groups_permissions` ENABLE KEYS */;

-- Dumping structure for table portalme_portalmerah.auth_groups_users
CREATE TABLE IF NOT EXISTS `auth_groups_users` (
  `group_id` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `auth_groups_users_user_id_foreign` (`user_id`),
  KEY `group_id_user_id` (`group_id`,`user_id`),
  CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.auth_groups_users: ~2 rows (approximately)
/*!40000 ALTER TABLE `auth_groups_users` DISABLE KEYS */;
INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
	(1, 1),
	(2, 5);
/*!40000 ALTER TABLE `auth_groups_users` ENABLE KEYS */;

-- Dumping structure for table portalme_portalmerah.auth_logins
CREATE TABLE IF NOT EXISTS `auth_logins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.auth_logins: ~58 rows (approximately)
/*!40000 ALTER TABLE `auth_logins` DISABLE KEYS */;
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
	(19, '::1', 'portalmerahnews@gmail.com', 1, '2022-06-18 14:51:16', 1),
	(20, '::1', 'portalmerahnews@gmail.com', 1, '2022-06-22 02:33:07', 1),
	(21, '::1', 'portalmerahnews@gmail.com', 1, '2022-06-26 01:53:18', 1),
	(22, '::1', 'portalmerahnews@gmail.com', 1, '2022-06-27 05:33:23', 1),
	(23, '::1', 'portalmerahnews@gmail.com', 1, '2022-06-27 08:47:17', 1),
	(24, '::1', 'portalmerahnews@gmail.com', 1, '2022-06-27 16:22:24', 1),
	(25, '::1', 'portalmerahnews@gmail.com', 1, '2022-06-27 21:45:59', 1),
	(26, '::1', 'portalmerahnews@gmail.com', 1, '2022-06-28 03:36:42', 1),
	(27, '::1', 'portalmerahnews@gmail.com', 1, '2022-06-28 17:01:30', 1),
	(28, '192.168.1.17', 'portalmerahnews@gmail.com', 1, '2022-06-29 18:42:34', 1),
	(29, '192.168.1.17', 'portalmerahnews@gmail.com', 1, '2022-06-29 19:57:00', 1),
	(30, '192.168.1.10', 'portalmerahnews@gmail.com', 1, '2022-07-01 05:37:45', 1),
	(31, '192.168.1.10', 'portalmerah', NULL, '2022-07-01 07:47:04', 0),
	(32, '192.168.1.10', 'portalmerahnews@gmail.com', 1, '2022-07-01 07:47:12', 1),
	(33, '192.168.1.10', 'portalmerahnews@gmail.com', 1, '2022-07-01 07:49:33', 1),
	(34, '192.168.1.10', 'portalmerahnews@gmail.com', 1, '2022-07-01 10:30:43', 1),
	(35, '192.168.1.10', 'portalmerahnews@gmail.com', 1, '2022-07-03 05:06:57', 1),
	(36, '192.168.1.17', 'portalmerahnews@gmail.com', 1, '2022-07-04 06:40:26', 1),
	(37, '192.168.1.17', 'portalmerahnews@gmail.com', 1, '2022-07-04 06:57:04', 1),
	(38, '192.168.1.10', 'portalmerahnews@gmail.com', 1, '2022-07-04 07:55:30', 1),
	(39, '192.168.1.10', 'portalmerahnews@gmail.com', 1, '2022-07-04 18:34:53', 1),
	(40, '192.168.1.4', 'portalmerahnews@gmail.com', 1, '2022-07-04 20:00:23', 1),
	(41, '192.168.1.10', 'portalmerahnews@gmail.com', 1, '2022-07-04 22:03:37', 1),
	(42, '192.168.1.10', 'portalmerah', 1, '2022-07-11 23:18:33', 0),
	(43, '192.168.1.10', 'portalmerah', 1, '2022-07-11 23:38:38', 0),
	(44, '192.168.1.10', 'portalmerah', 1, '2022-07-11 23:38:53', 0),
	(45, '192.168.1.10', 'portalmerah', 1, '2022-07-11 23:39:07', 0),
	(46, '192.168.1.10', 'portalmerah', 1, '2022-07-11 23:54:37', 0),
	(47, '192.168.1.10', 'portalmerah', 1, '2022-07-12 01:26:54', 0),
	(48, '192.168.1.10', 'portalmerahnews@gmail.com', 1, '2022-07-12 01:27:10', 1),
	(49, '192.168.1.10', 'coba', 2, '2022-07-12 20:57:18', 0),
	(50, '192.168.1.10', 'coba@gmail.com', 5, '2022-07-12 21:04:29', 1),
	(51, '192.168.1.10', 'coba@gmail.com', 5, '2022-07-12 21:06:02', 0),
	(52, '192.168.1.10', 'coba@gmail.com', 5, '2022-07-12 21:06:10', 0),
	(53, '192.168.1.5', 'portalmerahnews@gmail.com', 1, '2022-07-13 02:40:56', 1),
	(54, '192.168.1.5', 'coba', NULL, '2022-07-13 02:41:34', 0),
	(55, '192.168.1.5', 'coba', 5, '2022-07-13 02:41:42', 0),
	(56, '192.168.1.5', 'coba@gmail.com', 5, '2022-07-13 02:42:12', 1),
	(57, '192.168.1.5', 'portalmerahnews@gmail.com', 1, '2022-07-13 02:43:32', 1),
	(58, '192.168.1.5', 'coba@gmail.com', 5, '2022-07-13 02:50:59', 1),
	(59, '192.168.1.5', 'portalmerah', NULL, '2022-07-13 02:58:30', 0),
	(60, '192.168.1.5', 'portalmerahnews@gmail.com', 1, '2022-07-13 02:58:35', 1),
	(61, '192.168.1.5', 'portalmerahnews@gmail.com', 1, '2022-07-13 17:19:45', 1),
	(62, '192.168.1.5', 'portalmerahnews@gmail.com', 1, '2022-07-13 17:49:51', 1);
/*!40000 ALTER TABLE `auth_logins` ENABLE KEYS */;

-- Dumping structure for table portalme_portalmerah.auth_permissions
CREATE TABLE IF NOT EXISTS `auth_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.auth_permissions: ~2 rows (approximately)
/*!40000 ALTER TABLE `auth_permissions` DISABLE KEYS */;
INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
	(1, 'manage-users', 'Manage All Users'),
	(2, 'manage-profile', 'Setting Profile User');
/*!40000 ALTER TABLE `auth_permissions` ENABLE KEYS */;

-- Dumping structure for table portalme_portalmerah.auth_reset_attempts
CREATE TABLE IF NOT EXISTS `auth_reset_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.auth_reset_attempts: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_reset_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_reset_attempts` ENABLE KEYS */;

-- Dumping structure for table portalme_portalmerah.auth_tokens
CREATE TABLE IF NOT EXISTS `auth_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_tokens_user_id_foreign` (`user_id`),
  KEY `selector` (`selector`),
  CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.auth_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_tokens` ENABLE KEYS */;

-- Dumping structure for table portalme_portalmerah.auth_users_permissions
CREATE TABLE IF NOT EXISTS `auth_users_permissions` (
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `permission_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  KEY `user_id_permission_id` (`user_id`,`permission_id`),
  CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.auth_users_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_users_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_users_permissions` ENABLE KEYS */;

-- Dumping structure for table portalme_portalmerah.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.migrations: ~6 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
	(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1655035906, 1),
	(2, '2022-06-14-235044', 'App\\Database\\Migrations\\TblKomen', 'default', 'App', 1655385211, 2),
	(3, '2022-06-14-235050', 'App\\Database\\Migrations\\TblAuthor', 'default', 'App', 1655385211, 2),
	(4, '2022-06-14-235055', 'App\\Database\\Migrations\\TblNewsKategori', 'default', 'App', 1655385211, 2),
	(5, '2022-06-14-235103', 'App\\Database\\Migrations\\TblBerita', 'default', 'App', 1655385211, 2),
	(6, '2022-06-14-235109', 'App\\Database\\Migrations\\TblArtikel', 'default', 'App', 1655385211, 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table portalme_portalmerah.tblartikel
CREATE TABLE IF NOT EXISTS `tblartikel` (
  `id_artikel` int(15) NOT NULL AUTO_INCREMENT,
  `link` varchar(250) NOT NULL,
  `news_judul` varchar(200) NOT NULL,
  `news_konten` text NOT NULL,
  `news_gambar` varchar(200) NOT NULL,
  `news_video` varchar(200) NOT NULL,
  `news_traffic` int(15) NOT NULL,
  `news_status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_artikel`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.tblartikel: ~14 rows (approximately)
/*!40000 ALTER TABLE `tblartikel` DISABLE KEYS */;
INSERT INTO `tblartikel` (`id_artikel`, `link`, `news_judul`, `news_konten`, `news_gambar`, `news_video`, `news_traffic`, `news_status`, `created_at`, `updated_at`) VALUES
	(4, 'TEST-ASU', 'TEST ASU', '<p>1</p>', 'assets/berita/images/Screenshot 2022-04-20 095830.png', '', 0, 1, '2022-06-29 19:57:33', '2022-07-04 08:45:06'),
	(5, 'CEK-123', 'CEK 123', '<p>CEK</p>', 'assets/berita/images/Screenshot 2022-03-24 213124.png', '', 0, 1, '2022-06-29 20:00:36', '2022-07-04 08:22:36'),
	(6, 'asdasdlkajskdjalskdjalksjd', 'asdasdlkajskdjalskdjalksjd', '<p>asdasdasdakshdajsdhas askjhdajsdhakjsdhasjsdasd</p>', 'assets/berita/images/Screenshot 2022-06-29 204937.png', '', 0, 0, '2022-06-29 20:01:09', '2022-07-04 08:22:36'),
	(7, 'asdjpoqe-aiuqoweasdakjshd', 'asdjpoqe aiuqoweasdakjshd ', '<p>asdasdaljsdj</p>', 'assets/berita/images/Screenshot 2022-06-29 204911.png', '', 0, 0, '2022-06-29 20:01:30', '2022-07-04 08:22:36'),
	(8, 'asduqoiu-asdal-asd-akjhsd', 'asduqoiu asdal asd akjhsd', '<p>dalskdjalsj asdhakshdj asdhaskjdg a asdkaskdh</p>', 'assets/berita/images/output_1.png', '', 0, 0, '2022-06-29 20:01:54', '2022-07-04 08:22:36'),
	(9, 'adsajsl-daslkdj-ajhfsjd-asdkajhs', 'adsajsl daslkdj ajhfsjd asdkajhs', '<p>asdasd a sasd</p>', 'assets/berita/images/Screenshot 2022-06-30 080413.png', '', 0, 1, '2022-06-29 20:04:32', '2022-07-04 22:03:51'),
	(10, 'adlj-asdjakslj-asdipoi', 'adlj asdjakslj asdipoi ', '<p>asdasd</p>', 'assets/berita/images/Screenshot 2022-06-30 080452.png', '', 0, 0, '2022-06-29 20:05:08', '2022-07-04 08:22:36'),
	(11, 'opipoqiwekjhasdkj-kjhasdjk-has', 'opipoqiwekjhasdkj kjhasdjk has ', '<p>alsdkjalksjd asd ja as</p>', 'assets/berita/images/Screenshot 2022-04-16 101247.png', '', 0, 1, '2022-06-29 20:08:39', '2022-07-04 18:36:22'),
	(12, 'asdaskd', 'asdaskd ', '<p>asldjaksljd askjd aaskdj al</p>', 'assets/berita/images/Screenshot 2022-04-20 095830_1.png', '', 0, 0, '2022-06-29 20:09:41', '2022-07-04 08:22:36'),
	(13, 'asdjk-askdj-a', 'asdjk askdj a', '<p>asdasd</p>', 'assets/berita/images/Screenshot 2022-04-23 002200.png', '', 0, 0, '2022-06-29 20:10:27', '2022-07-04 08:22:36'),
	(14, 'umum-1', 'umum 1', '<p>umum</p>', 'assets/berita/images/Screenshot 2022-04-23 002200_1.png', '', 0, 0, '2022-07-01 05:39:00', '2022-07-04 22:04:16'),
	(15, 'umum-2', 'umum 2', '<p>umum</p>\r\n<p>&nbsp;</p>', 'assets/berita/images/13-137044_arrow-png-image-arrow-png.jpg', '', 0, 0, '2022-07-01 05:39:25', '2022-07-04 08:22:36'),
	(16, 'umum-3', 'umum 3', '<p>umum</p>', 'assets/berita/images/leftArrow.png', '', 0, 0, '2022-07-01 05:39:52', '2022-07-04 08:22:36'),
	(17, 'terbaru', 'terbaru', '<p>terbaru</p>', 'assets/berita/images/output_2.png', '', 0, 1, '2022-07-04 09:34:27', '2022-07-04 09:35:23');
/*!40000 ALTER TABLE `tblartikel` ENABLE KEYS */;

-- Dumping structure for table portalme_portalmerah.tblberita
CREATE TABLE IF NOT EXISTS `tblberita` (
  `id_berita` int(15) NOT NULL AUTO_INCREMENT,
  `id_artikel` int(15) NOT NULL,
  `id_kategori` int(15) NOT NULL,
  `id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_berita`),
  UNIQUE KEY `id_berita` (`id_berita`),
  KEY `FK_tblberita_tblartikel` (`id_artikel`),
  KEY `FK_tblberita_tblnewskategori` (`id_kategori`),
  KEY `FK_tblberita_users` (`id`),
  CONSTRAINT `FK_tblberita_tblartikel` FOREIGN KEY (`id_artikel`) REFERENCES `tblartikel` (`id_artikel`),
  CONSTRAINT `FK_tblberita_tblnewskategori` FOREIGN KEY (`id_kategori`) REFERENCES `tblnewskategori` (`id_kategori`),
  CONSTRAINT `FK_tblberita_users` FOREIGN KEY (`id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.tblberita: ~14 rows (approximately)
/*!40000 ALTER TABLE `tblberita` DISABLE KEYS */;
INSERT INTO `tblberita` (`id_berita`, `id_artikel`, `id_kategori`, `id`) VALUES
	(3, 4, 1, 1),
	(4, 5, 1, 1),
	(5, 6, 2, 1),
	(6, 7, 3, 1),
	(7, 8, 4, 1),
	(8, 9, 8, 1),
	(9, 10, 3, 1),
	(10, 11, 11, 1),
	(11, 12, 12, 1),
	(12, 13, 13, 1),
	(13, 14, 1, 1),
	(14, 15, 1, 1),
	(15, 16, 1, 1),
	(16, 17, 2, 1);
/*!40000 ALTER TABLE `tblberita` ENABLE KEYS */;

-- Dumping structure for table portalme_portalmerah.tblkomen
CREATE TABLE IF NOT EXISTS `tblkomen` (
  `id_komen` int(15) NOT NULL AUTO_INCREMENT,
  `id_artikel` int(15) NOT NULL,
  `komen_isi` text NOT NULL,
  `komen_user` varchar(200) NOT NULL,
  `komen_email` varchar(200) NOT NULL,
  `komen_status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_komen`),
  UNIQUE KEY `id_komen` (`id_komen`),
  KEY `FK_tblkomen_tblartikel` (`id_artikel`),
  CONSTRAINT `FK_tblkomen_tblartikel` FOREIGN KEY (`id_artikel`) REFERENCES `tblartikel` (`id_artikel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.tblkomen: ~3 rows (approximately)
/*!40000 ALTER TABLE `tblkomen` DISABLE KEYS */;
INSERT INTO `tblkomen` (`id_komen`, `id_artikel`, `komen_isi`, `komen_user`, `komen_email`, `komen_status`, `created_at`, `updated_at`) VALUES
	(1, 11, 'Cuk kontol babi ', 'anak hilang', 'hilang@gmail.com', 1, '2022-06-30 03:49:14', '2022-07-04 19:42:54'),
	(3, 11, 'dsf', 'fds', 'fdskjh@dsgak.coom', 0, '2022-07-04 19:57:42', '2022-07-04 19:57:42'),
	(4, 11, 'dafjkd', 'jdkshaf', 'sdfhk@gmail.cim', 1, '2022-07-04 19:59:41', '2022-07-04 20:00:40');
/*!40000 ALTER TABLE `tblkomen` ENABLE KEYS */;

-- Dumping structure for table portalme_portalmerah.tblnewskategori
CREATE TABLE IF NOT EXISTS `tblnewskategori` (
  `id_kategori` int(15) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(100) NOT NULL,
  `kategori_deskripsi` text NOT NULL,
  PRIMARY KEY (`id_kategori`),
  UNIQUE KEY `id_kategori` (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.tblnewskategori: ~14 rows (approximately)
/*!40000 ALTER TABLE `tblnewskategori` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `tblnewskategori` ENABLE KEYS */;

-- Dumping structure for table portalme_portalmerah.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `about` text,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `image`, `about`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'portalmerahnews@gmail.com', 'portalmerah', 'Portal Merah', NULL, 'Media Nasional Portal Merah Mengungkap Fakta Menguak Realita', '$2y$10$Vb7P74mC.BWYXnSqItg8nurOhi5Wk3kwVfADelpL6IybsgUE0u6vK', NULL, NULL, NULL, '3608cf9592ff05f67d1966e1d294a2e1', NULL, NULL, 1, 0, '2022-06-16 08:55:31', '2022-06-16 08:55:31', NULL),
	(5, 'coba@gmail.com', 'coba', NULL, NULL, NULL, '$2y$10$tfXlr8dTy0oQWYO96nDuqeBi0yIskgujFR1oo/jIvWv4xY4Zaoz82', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-07-12 21:03:17', '2022-07-12 21:03:17', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
