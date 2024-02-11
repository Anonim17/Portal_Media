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


-- Dumping database structure for portalmerah
CREATE DATABASE IF NOT EXISTS `portalmerah` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `portalmerah`;

-- Dumping structure for table portalmerah.auth_activation_attempts
CREATE TABLE IF NOT EXISTS `auth_activation_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table portalmerah.auth_activation_attempts: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_activation_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_activation_attempts` ENABLE KEYS */;

-- Dumping structure for table portalmerah.auth_groups
CREATE TABLE IF NOT EXISTS `auth_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table portalmerah.auth_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_groups` ENABLE KEYS */;

-- Dumping structure for table portalmerah.auth_groups_permissions
CREATE TABLE IF NOT EXISTS `auth_groups_permissions` (
  `group_id` int(11) unsigned NOT NULL DEFAULT '0',
  `permission_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  KEY `group_id_permission_id` (`group_id`,`permission_id`),
  CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table portalmerah.auth_groups_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_groups_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_groups_permissions` ENABLE KEYS */;

-- Dumping structure for table portalmerah.auth_groups_users
CREATE TABLE IF NOT EXISTS `auth_groups_users` (
  `group_id` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `auth_groups_users_user_id_foreign` (`user_id`),
  KEY `group_id_user_id` (`group_id`,`user_id`),
  CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table portalmerah.auth_groups_users: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_groups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_groups_users` ENABLE KEYS */;

-- Dumping structure for table portalmerah.auth_logins
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Dumping data for table portalmerah.auth_logins: ~18 rows (approximately)
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
	(18, '::1', 'cofranc44@gmail.com', 4, '2022-06-17 22:23:48', 1);
/*!40000 ALTER TABLE `auth_logins` ENABLE KEYS */;

-- Dumping structure for table portalmerah.auth_permissions
CREATE TABLE IF NOT EXISTS `auth_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table portalmerah.auth_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_permissions` ENABLE KEYS */;

-- Dumping structure for table portalmerah.auth_reset_attempts
CREATE TABLE IF NOT EXISTS `auth_reset_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table portalmerah.auth_reset_attempts: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_reset_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_reset_attempts` ENABLE KEYS */;

-- Dumping structure for table portalmerah.auth_tokens
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

-- Dumping data for table portalmerah.auth_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_tokens` ENABLE KEYS */;

-- Dumping structure for table portalmerah.auth_users_permissions
CREATE TABLE IF NOT EXISTS `auth_users_permissions` (
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `permission_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  KEY `user_id_permission_id` (`user_id`,`permission_id`),
  CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table portalmerah.auth_users_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_users_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_users_permissions` ENABLE KEYS */;

-- Dumping structure for table portalmerah.migrations
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

-- Dumping data for table portalmerah.migrations: ~6 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
	(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1655035906, 1),
	(2, '2022-06-14-235044', 'App\\Database\\Migrations\\TblKomen', 'default', 'App', 1655385211, 2),
	(3, '2022-06-14-235050', 'App\\Database\\Migrations\\TblAuthor', 'default', 'App', 1655385211, 2),
	(4, '2022-06-14-235055', 'App\\Database\\Migrations\\TblNewsKategori', 'default', 'App', 1655385211, 2),
	(5, '2022-06-14-235103', 'App\\Database\\Migrations\\TblBerita', 'default', 'App', 1655385211, 2),
	(6, '2022-06-14-235109', 'App\\Database\\Migrations\\TblArtikel', 'default', 'App', 1655385211, 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table portalmerah.tblartikel
CREATE TABLE IF NOT EXISTS `tblartikel` (
  `id_artikel` int(15) NOT NULL AUTO_INCREMENT,
  `news_judul` varchar(200) NOT NULL,
  `news_konten` text NOT NULL,
  `news_gambar` varchar(200) NOT NULL,
  `news_video` varchar(200) NOT NULL,
  `news_traffic` int(15) NOT NULL,
  `news_status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_artikel`),
  UNIQUE KEY `id_artikel` (`id_artikel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table portalmerah.tblartikel: ~3 rows (approximately)
/*!40000 ALTER TABLE `tblartikel` DISABLE KEYS */;
INSERT INTO `tblartikel` (`id_artikel`, `news_judul`, `news_konten`, `news_gambar`, `news_video`, `news_traffic`, `news_status`, `created_at`, `updated_at`) VALUES
	(1, 'Diduga Pembesar Penis Mak Erot Palsu', '<p>Judul 1</p>', 'assets/berita/images/Screenshot (1)_2.png', '', 0, 0, '2022-06-17 00:33:16', '2022-06-18 16:43:23'),
	(3, 'sfkjahs kf', '<p>Judul 2</p>', 'assets/berita/images/Screenshot (1)_4.png', '', 0, 0, '2022-06-17 03:33:19', '2022-06-18 16:43:36'),
	(4, 'Judul 1', '<p>Judul 3</p>', 'assets/berita/images/Screenshot (1)_5.png', '', 0, 0, '2022-06-17 18:29:28', '2022-06-18 16:43:42');
/*!40000 ALTER TABLE `tblartikel` ENABLE KEYS */;

-- Dumping structure for table portalmerah.tblauthor
CREATE TABLE IF NOT EXISTS `tblauthor` (
  `id_author` int(15) NOT NULL AUTO_INCREMENT,
  `author_email` varchar(200) NOT NULL,
  `author_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `account_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_author`),
  UNIQUE KEY `id_author` (`id_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table portalmerah.tblauthor: ~0 rows (approximately)
/*!40000 ALTER TABLE `tblauthor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblauthor` ENABLE KEYS */;

-- Dumping structure for table portalmerah.tblberita
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table portalmerah.tblberita: ~0 rows (approximately)
/*!40000 ALTER TABLE `tblberita` DISABLE KEYS */;
INSERT INTO `tblberita` (`id_berita`, `id_artikel`, `id_kategori`, `id`) VALUES
	(1, 1, 2, 4),
	(2, 3, 1, 4),
	(3, 4, 2, 4);
/*!40000 ALTER TABLE `tblberita` ENABLE KEYS */;

-- Dumping structure for table portalmerah.tblkomen
CREATE TABLE IF NOT EXISTS `tblkomen` (
  `id_komen` int(15) NOT NULL AUTO_INCREMENT,
  `id_artikel` int(15) NOT NULL,
  `komen_user` varchar(200) NOT NULL,
  `komen_isi` text NOT NULL,
  `komen_status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_komen`),
  UNIQUE KEY `id_komen` (`id_komen`),
  KEY `FK_tblkomen_tblartikel` (`id_artikel`),
  CONSTRAINT `FK_tblkomen_tblartikel` FOREIGN KEY (`id_artikel`) REFERENCES `tblartikel` (`id_artikel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table portalmerah.tblkomen: ~0 rows (approximately)
/*!40000 ALTER TABLE `tblkomen` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblkomen` ENABLE KEYS */;

-- Dumping structure for table portalmerah.tblnewskategori
CREATE TABLE IF NOT EXISTS `tblnewskategori` (
  `id_kategori` int(15) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(100) NOT NULL,
  `kategori_deskripsi` text NOT NULL,
  PRIMARY KEY (`id_kategori`),
  UNIQUE KEY `id_kategori` (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table portalmerah.tblnewskategori: ~14 rows (approximately)
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

-- Dumping structure for table portalmerah.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table portalmerah.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(4, 'cofranc44@gmail.com', 'Createrorr', '$2y$10$Vb7P74mC.BWYXnSqItg8nurOhi5Wk3kwVfADelpL6IybsgUE0u6vK', NULL, NULL, NULL, '3608cf9592ff05f67d1966e1d294a2e1', NULL, NULL, 1, 0, '2022-06-16 08:55:31', '2022-06-16 08:55:31', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
