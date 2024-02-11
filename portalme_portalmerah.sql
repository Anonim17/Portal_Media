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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.auth_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_groups` DISABLE KEYS */;
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

-- Dumping data for table portalme_portalmerah.auth_groups_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_groups_permissions` DISABLE KEYS */;
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

-- Dumping data for table portalme_portalmerah.auth_groups_users: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_groups_users` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.auth_logins: ~25 rows (approximately)
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
	(27, '::1', 'portalmerahnews@gmail.com', 1, '2022-06-28 17:01:30', 1);
/*!40000 ALTER TABLE `auth_logins` ENABLE KEYS */;

-- Dumping structure for table portalme_portalmerah.auth_permissions
CREATE TABLE IF NOT EXISTS `auth_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.auth_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_permissions` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.tblartikel: ~14 rows (approximately)
/*!40000 ALTER TABLE `tblartikel` DISABLE KEYS */;
INSERT INTO `tblartikel` (`id_artikel`, `link`, `news_judul`, `news_konten`, `news_gambar`, `news_video`, `news_traffic`, `news_status`, `created_at`, `updated_at`) VALUES
	(3, '', 'etiqutipe sdklsdlj', '<p>dasguidaguoa</p>', 'assets/berita/images/logoputih.png', '', 0, 0, '2022-06-25 05:45:26', '2022-06-28 20:57:01'),
	(4, '', 'gisu u sdiougsoidgu foipsu oipiipsdfu gipoifsud ius isdfg ', '<p>&nbsp;gjda gkdgj sk;df;k jfsh eruiw hgerugy gshjggd yugah dsuia gfdhsa gudsg auf gjda gkdgj sk;df;k jfsh eruiw hgerugy gshjggd yugah dsuia gfdhsa gudsg auf gjda gkdgj sk;df;k jfsh eruiw hgerugy gshjggd yugah dsuia gfdhsa gudsg auf gjda gkdgj sk;df;k jfsh eruiw hgerugy gshjggd yugah dsuia gfdhsa gudsg auf gjda gkdgj sk;df;k jfsh eruiw hgerugy gshjggd yugah dsuia gfdhsa gudsg auf gjda gkdgj sk;df;k jfsh eruiw hgerugy gshjggd yugah dsuia gfdhsa gudsg auf gjda gkdgj sk;df;k jfsh eruiw hgerugy gshjggd yugah dsuia gfdhsa gudsg auf gjda gkdgj sk;df;k jfsh eruiw hgerugy gshjggd yugah dsuia gfdhsa gudsg auf gjda gkdgj sk;df;k jfsh eruiw hgerugy gshjggd yugah dsuia gfdhsa gudsg auf gjda gkdgj sk;df;k jfsh eruiw hgerugy gshjggd yugah dsuia gfdhsa gudsg auf&nbsp;</p>', 'assets/berita/images/logo.png', '', 0, 0, '2022-06-23 12:00:46', '2022-06-28 09:33:30'),
	(5, '', 'etiqutipe piwyvid gyeifwgyfuidg  df udisgfis ya gia', '<p>etiqutipe piwyvid gyeifwgyfuidg &nbsp;df udisgfis ya giaetiqutipe piwyvid gyeifwgyfuidg &nbsp;df udisgfis ya giaetiqutipe piwyvid gyeifwgyfuidg &nbsp;df udisgfis ya gia etiqutipe piwyvid gyeifwgyfuidg &nbsp;df udisgfis ya giaetiqutipe piwyvid gyeifwgyfuidg &nbsp;df udisgfis ya giaetiqutipe piwyvid gyeifwgyfuidg &nbsp;df udisgfis ya giaetiqutipe piwyvid gyeifwgyfuidg &nbsp;df udisgfis ya gia etiqutipe piwyvid gyeifwgyfuidg &nbsp;df udisgfis ya giaetiqutipe piwyvid gyeifwgyfuidg &nbsp;df udisgfis ya giaetiqutipe piwyvid gyeifwgyfuidg &nbsp;df udisgfis ya giaetiqutipe piwyvid gyeifwgyfuidg &nbsp;df udisgfis ya gia&nbsp;</p>', 'assets/berita/images/Screenshot 2022-06-19 004734.png', '', 0, 0, '2022-06-27 12:40:22', '2022-06-27 12:40:22'),
	(6, '', 'asdas', '<p>av fdabda&nbsp; aif vv fiuaf&nbsp; iudsay uifye9e we98f ysdia f8eywaf iasfydsa hfkjd saif aj av fdabda&nbsp; aif dasui fiuaf&nbsp; iudsay uifye9e we98f ysdia f8eywaf iasfydsa hfkjd saif aj av fdabda&nbsp; aif dasui fiuaf&nbsp; iudsay uifye9e we98f ysdia f8eywaf iasfydsa hfkjd saif ajav fdabda&nbsp; aif dasui fiuaf&nbsp; iudsay uifye9e we98f ysdia f8eywaf iasfydsa hfkjd saif ajvav fdabda&nbsp; aif dasui fiuaf&nbsp; iudsay uifye9e we98f ysdia f8eywaf iasfydsa hfkjd saif aj av fdabda&nbsp; aif dasui fiuaf&nbsp; iudsay uifye9e we98f ysdia f8eywaf iasfydsa hfkjd saif ajav fdabda&nbsp; aif dasui fiuaf&nbsp; iudsay uifye9e we98f ysdia f8eywaf iasfydsa hfkjd saif aj v av fdabda&nbsp; aif dasui fiuaf&nbsp; iudsay uifye9e we98f ysdia f8eywaf iasfydsa hfkjd saif ajvv</p>', 'assets/berita/images/Screenshot 2022-06-17 102456.png', '', 0, 0, '2022-06-24 16:23:20', '2022-06-28 09:33:41'),
	(7, '', 'sdjfhksjdhfk', '<p>djalkgajshgjdkap faui dyasuoif ewyf98ye wpai ydpa ydas fyidu afjkdsa lgfoj dsaoj hfoda fo da fgodsa gfudoayogfeyueowafye fsadgoufgoayog dsuoa fda fda f djalkgajshgjdkap faui dyasuoif ewyf98ye wpai ydpa ydas fyidu afjkdsa lgfoj dsaoj hfoda fo da fgodsa gfudoayogfeyueowafye fsadgoufgoayog dsuoa fda fda f djalkgajshgjdkap faui dyasuoif ewyf98ye wpai ydpa ydas fyidu afjkdsa lgfoj dsaoj hfoda fo da fgodsa gfudoayogfeyueowafye fsadgoufgoayog dsuoa fda fda f djalkgajshgjdkap faui dyasuoif ewyf98ye wpai ydpa ydas fyidu afjkdsa lgfoj dsaoj hfoda fo da fgodsa gfudoayogfeyueowafye fsadgoufgoayog dsuoa fda fda f djalkgajshgjdkap faui dyasuoif ewyf98ye wpai ydpa ydas fyidu afjkdsa lgfoj dsaoj hfoda fo da fgodsa gfudoayogfeyueowafye fsadgoufgoayog dsuoa fda fda f djalkgajshgjdkap faui dyasuoif ewyf98ye wpai ydpa ydas fyidu afjkdsa lgfoj dsaoj hfoda fo da fgodsa gfudoayogfeyueowafye fsadgoufgoayog dsuoa fda fda f djalkgajshgjdkap faui dyasuoif ewyf98ye wpai ydpa ydas fyidu afjkdsa lgfoj dsaoj hfoda fo da fgodsa gfudoayogfeyueowafye fsadgoufgoayog dsuoa fda fda f</p>', 'assets/berita/images/gabut.png', '', 0, 0, '2022-06-27 16:24:33', '2022-06-28 09:40:19'),
	(10, '', 'mnxjkbvjkd ajjasdgjj ha', '<p>lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa lkdsglksdj js a k;ha hdjahuiew</p>\r\n<p>auh hjahsui dhfajds ofu asdfoo dsa lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa&nbsp;</p>\r\n<p>lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa&nbsp;</p>\r\n<p>ofu asdfoo dsa lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa lkdsglksdj js a k;ha hdjahuiew auh hjahsui dhfajds ofu asdfoo dsa&nbsp;</p>', 'assets/berita/images/seminar ui ux 02.png', '', 0, 0, '2022-06-27 21:51:19', '2022-06-27 21:51:19'),
	(11, '', 'ini tag line', '<p>blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl blablabla balbalbalbalbalbal bl&nbsp;</p>', 'assets/berita/images/seminar ui ux 05_1.png', '', 0, 0, '2022-06-27 22:00:04', '2022-06-27 22:00:04'),
	(12, '', 'bcmnvwo ebeuw ovbeowb ', '<p>bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb bcmnvwo ebeuw ovbeowb&nbsp;</p>', 'assets/berita/images/seminar ui ux 03.png', '', 0, 0, '2022-06-27 22:02:05', '2022-06-27 22:02:05'),
	(13, '', 'I don\'t have a choice', '<p>shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo shuooo&nbsp;</p>', 'assets/berita/images/seminar ui ux 11.png', '', 0, 0, '2022-06-27 22:02:57', '2022-06-27 22:02:57'),
	(14, '', 'duaisyf 239 dafkjdash  iafd ', '<p>uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd uisag9 fdas dtf87daou fdu asfa igfui dsa goi duaisyf 239 dafkjdash &nbsp;iafd&nbsp;</p>', 'assets/berita/images/seminar ui ux 07.png', '', 0, 0, '2022-06-27 22:04:05', '2022-06-27 22:04:05'),
	(15, '', 'yuiyqiy qyq as fajs hdgfoagdljjasfgoeuw', '<p>yuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuwyuiyqiy qyq as fajs hdgfoagdljjasfgoeuw</p>', 'assets/berita/images/seminar ui ux 04.png', '', 0, 0, '2022-06-27 22:06:27', '2022-06-27 22:06:27'),
	(16, '', 'paidfja a foia dfa', '<p>paidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfapaidfja a foia dfa</p>', 'assets/berita/images/seminar ui ux 09.png', '', 0, 0, '2022-06-27 22:07:07', '2022-06-27 22:07:07'),
	(17, '', 'jhcxgfocxvu', '<p>jhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvujhcxgfocxvu</p>', 'assets/berita/images/seminar ui ux 11_1.png', '', 0, 0, '2022-06-27 22:08:14', '2022-06-27 22:08:14'),
	(18, '', 'nbmckxboixoiubuoi[oixhk;c-bui', '<p>nbmckxboixoiubuo i[oixhk;c-b uinbmckxboixoiubu oi[oixhk;c- buin bmckxboixo iub&nbsp; uoi[oixhk;c-buinbmc kxboixoiubuoi[o ixhk;c-buinb mckxboixoi ub uoi[oixhk;c-bui n bmckxboixoiubuo i[oi xhk;c-buinbmck xboixoiubuoi oixh k;c-buinbmckxboixoiubuoi[oixhk;c-buinbmckxboixoi ubuoi[oixhk;c-bu inbmckxboixoiubuo i[oixhk;c-buinb mck xboixoiubuo i[oixhk;c-bui nbmckxboi xoiub uoi[oi xhk;c-buib nck xboixoiu bu oi oixhk;c-buinbm ckx boix oiubuoi[oixhk;c-buinbm ckxboixoiubuoi[o ixhk;c-buinbmckxboixoiubuoi[oixhk; c-buinbmc kxboixoiubuoi[oixhk;c-buinbmckx boixoiu buoi[oixhk;c-buinbmckxboixoiubuoi[oixhk;c-buinbmckxboixoiubuoi[oixhk;c-buinbmckxb oixoiubuo i[oixhk;c-buinbmckxboixoiub uoi[oixhk;c-buinbmckxboixoiubuoi[oixhk; c-buinbm ckxboixoiub&nbsp; uoi[ ixhk;c-buinbmckxboixoiubuoi[oixhk;c- buinb mckxboixo iubuoi[oixhk;c-buinbmckxboix oi ubuoi[oixhk;c-buinbmck xboixoiubuoi[o ixhk;c- buinbmckxboixoiubuoi[oi&nbsp; xhk;c-buinbmckxboixoiubuoi[oixhk;c-buinbmckxboixoiubuoi[oixhk;c-buinbmckxboixoiubuoi[oixhk;c- buinbmckx boixoiubuoi[oixhk;c-buinbmckxboixoiubuoi[oixhk;c-buinbmckxboixoiubuoi[oixh k;c-buinbmckxboixoi ubuoi[oixhk;c- buinbmckxboixoiubuo i[oixhk;c-buinbmckxb oixoiu buoi [oixhk;c-buinbmc xboixoiubuoi[oixhk;c-buinbmc kxboixo iubuoi[oixhk;c-buin mckxboixoiubuoi[oi xhk;c-buinbmckxboixoiubuoi[oixhk;c-bui</p>', 'assets/berita/images/seminar ui ux 10.png', '', 0, 0, '2022-06-27 22:10:16', '2022-06-27 22:10:16'),
	(19, '2022-link-cukk-kontol', 'link cukk kontol', '<p>link</p>', 'assets/berita/images/Screenshot 2022-06-17 102456_5.png', '', 0, 0, '2022-06-28 17:10:56', '2022-06-28 17:10:56');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.tblberita: ~14 rows (approximately)
/*!40000 ALTER TABLE `tblberita` DISABLE KEYS */;
INSERT INTO `tblberita` (`id_berita`, `id_artikel`, `id_kategori`, `id`) VALUES
	(3, 3, 2, 1),
	(4, 4, 1, 1),
	(5, 5, 4, 1),
	(6, 6, 14, 1),
	(7, 7, 13, 1),
	(9, 10, 7, 1),
	(10, 11, 10, 1),
	(11, 12, 11, 1),
	(12, 13, 11, 1),
	(13, 14, 12, 1),
	(14, 15, 8, 1),
	(15, 16, 5, 1),
	(16, 17, 11, 1),
	(17, 18, 13, 1),
	(18, 19, 1, 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.tblkomen: ~2 rows (approximately)
/*!40000 ALTER TABLE `tblkomen` DISABLE KEYS */;
INSERT INTO `tblkomen` (`id_komen`, `id_artikel`, `komen_isi`, `komen_user`, `komen_email`, `komen_status`, `created_at`, `updated_at`) VALUES
	(1, 4, 'dasfidakdh jkadhfjsdahf jda  hdsajkf dka ', 'zabawoski', 'panhelsing@gubuk.com', 0, '2022-06-27 14:53:39', '2022-06-27 14:53:39'),
	(2, 4, 'kita bukan kriminil', 'bukankriminil', 'bukan@kriminil.com', 0, '2022-06-27 14:57:22', '2022-06-27 14:57:22'),
	(3, 7, 'sjdakhfkdsajfk;', 'asdfudsaufidyauyi', 'sdatfuoafuidsuia@djksghkd.com', 0, '2022-06-27 18:10:48', '2022-06-27 18:10:48');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table portalme_portalmerah.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'portalmerahnews@gmail.com', 'portalmerah', '$2y$10$Vb7P74mC.BWYXnSqItg8nurOhi5Wk3kwVfADelpL6IybsgUE0u6vK', NULL, NULL, NULL, '3608cf9592ff05f67d1966e1d294a2e1', NULL, NULL, 1, 0, '2022-06-16 08:55:31', '2022-06-16 08:55:31', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
