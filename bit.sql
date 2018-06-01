-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.10-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.5042
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for taxfree
CREATE DATABASE IF NOT EXISTS `taxfree` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `taxfree`;

-- Dumping structure for table taxfree.wp_commentmeta
DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table taxfree.wp_commentmeta: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;

-- Dumping structure for table taxfree.wp_comments
DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table taxfree.wp_comments: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
	(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-05-24 12:13:25', '2018-05-24 12:13:25', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;

-- Dumping structure for table taxfree.wp_links
DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table taxfree.wp_links: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;

-- Dumping structure for table taxfree.wp_options
DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table taxfree.wp_options: ~141 rows (approximately)
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
	(1, 'siteurl', 'http://localhost/taxfree', 'yes'),
	(2, 'home', 'http://localhost/taxfree', 'yes'),
	(3, 'blogname', 'TaxFree', 'yes'),
	(4, 'blogdescription', 'Just another WordPress site', 'yes'),
	(5, 'users_can_register', '0', 'yes'),
	(6, 'admin_email', 'janis.mozais@ms-idi.eu', 'yes'),
	(7, 'start_of_week', '1', 'yes'),
	(8, 'use_balanceTags', '0', 'yes'),
	(9, 'use_smilies', '1', 'yes'),
	(10, 'require_name_email', '1', 'yes'),
	(11, 'comments_notify', '1', 'yes'),
	(12, 'posts_per_rss', '10', 'yes'),
	(13, 'rss_use_excerpt', '0', 'yes'),
	(14, 'mailserver_url', 'mail.example.com', 'yes'),
	(15, 'mailserver_login', 'login@example.com', 'yes'),
	(16, 'mailserver_pass', 'password', 'yes'),
	(17, 'mailserver_port', '110', 'yes'),
	(18, 'default_category', '1', 'yes'),
	(19, 'default_comment_status', 'open', 'yes'),
	(20, 'default_ping_status', 'open', 'yes'),
	(21, 'default_pingback_flag', '1', 'yes'),
	(22, 'posts_per_page', '10', 'yes'),
	(23, 'date_format', 'F j, Y', 'yes'),
	(24, 'time_format', 'g:i a', 'yes'),
	(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
	(26, 'comment_moderation', '0', 'yes'),
	(27, 'moderation_notify', '1', 'yes'),
	(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
	(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
	(30, 'hack_file', '0', 'yes'),
	(31, 'blog_charset', 'UTF-8', 'yes'),
	(32, 'moderation_keys', '', 'no'),
	(33, 'active_plugins', 'a:2:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:27:"qtranslate-x/qtranslate.php";}', 'yes'),
	(34, 'category_base', '', 'yes'),
	(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
	(36, 'comment_max_links', '2', 'yes'),
	(37, 'gmt_offset', '0', 'yes'),
	(38, 'default_email_category', '1', 'yes'),
	(39, 'recently_edited', '', 'no'),
	(40, 'template', 'custom', 'yes'),
	(41, 'stylesheet', 'custom', 'yes'),
	(42, 'comment_whitelist', '1', 'yes'),
	(43, 'blacklist_keys', '', 'no'),
	(44, 'comment_registration', '0', 'yes'),
	(45, 'html_type', 'text/html', 'yes'),
	(46, 'use_trackback', '0', 'yes'),
	(47, 'default_role', 'subscriber', 'yes'),
	(48, 'db_version', '38590', 'yes'),
	(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
	(50, 'upload_path', '', 'yes'),
	(51, 'blog_public', '1', 'yes'),
	(52, 'default_link_category', '2', 'yes'),
	(53, 'show_on_front', 'page', 'yes'),
	(54, 'tag_base', '', 'yes'),
	(55, 'show_avatars', '1', 'yes'),
	(56, 'avatar_rating', 'G', 'yes'),
	(57, 'upload_url_path', '', 'yes'),
	(58, 'thumbnail_size_w', '150', 'yes'),
	(59, 'thumbnail_size_h', '150', 'yes'),
	(60, 'thumbnail_crop', '1', 'yes'),
	(61, 'medium_size_w', '300', 'yes'),
	(62, 'medium_size_h', '300', 'yes'),
	(63, 'avatar_default', 'mystery', 'yes'),
	(64, 'large_size_w', '1024', 'yes'),
	(65, 'large_size_h', '1024', 'yes'),
	(66, 'image_default_link_type', 'none', 'yes'),
	(67, 'image_default_size', '', 'yes'),
	(68, 'image_default_align', '', 'yes'),
	(69, 'close_comments_for_old_posts', '0', 'yes'),
	(70, 'close_comments_days_old', '14', 'yes'),
	(71, 'thread_comments', '1', 'yes'),
	(72, 'thread_comments_depth', '5', 'yes'),
	(73, 'page_comments', '0', 'yes'),
	(74, 'comments_per_page', '50', 'yes'),
	(75, 'default_comments_page', 'newest', 'yes'),
	(76, 'comment_order', 'asc', 'yes'),
	(77, 'sticky_posts', 'a:0:{}', 'yes'),
	(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
	(79, 'widget_text', 'a:0:{}', 'yes'),
	(80, 'widget_rss', 'a:0:{}', 'yes'),
	(81, 'uninstall_plugins', 'a:0:{}', 'no'),
	(82, 'timezone_string', '', 'yes'),
	(83, 'page_for_posts', '0', 'yes'),
	(84, 'page_on_front', '2', 'yes'),
	(85, 'default_post_format', '0', 'yes'),
	(86, 'link_manager_enabled', '0', 'yes'),
	(87, 'finished_splitting_shared_terms', '1', 'yes'),
	(88, 'site_icon', '0', 'yes'),
	(89, 'medium_large_size_w', '768', 'yes'),
	(90, 'medium_large_size_h', '0', 'yes'),
	(91, 'wp_page_for_privacy_policy', '3', 'yes'),
	(92, 'initial_db_version', '38590', 'yes'),
	(93, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
	(94, 'fresh_site', '0', 'yes'),
	(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
	(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
	(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
	(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
	(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
	(100, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
	(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(110, 'cron', 'a:4:{i:1527855207;a:4:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1527855236;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1527859118;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
	(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1527164276;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
	(130, 'can_compress_scripts', '1', 'no'),
	(140, 'current_theme', 'TaxFree', 'yes'),
	(141, 'theme_mods_custom', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:2;s:6:"footer";i:3;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
	(142, 'theme_switched', '', 'yes'),
	(150, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
	(153, 'recently_activated', 'a:0:{}', 'yes'),
	(154, 'qtranslate_admin_notices', 'a:1:{s:11:"next_thanks";i:1527256971;}', 'yes'),
	(155, 'qtranslate_enabled_languages', 'a:2:{i:0;s:2:"en";i:1;s:2:"ru";}', 'yes'),
	(156, 'qtranslate_default_language', 'en', 'yes'),
	(157, 'qtranslate_version_previous', '34680', 'yes'),
	(158, 'qtranslate_versions', 'a:2:{i:34680;i:1527256971;s:1:"l";i:1527256971;}', 'yes'),
	(159, 'qtranslate_admin_config', 'a:7:{s:4:"post";a:4:{s:5:"pages";a:2:{s:8:"post.php";s:0:"";s:12:"post-new.php";s:0:"";}s:7:"anchors";a:1:{s:17:"post-body-content";a:1:{s:5:"where";s:10:"first last";}}s:5:"forms";a:2:{s:4:"post";a:1:{s:6:"fields";a:8:{s:5:"title";a:0:{}s:7:"excerpt";a:0:{}s:18:"attachment_caption";a:0:{}s:14:"attachment_alt";a:0:{}s:13:"view-post-btn";a:1:{s:6:"encode";s:7:"display";}s:14:"wp-editor-area";a:1:{s:6:"jquery";s:15:".wp-editor-area";}s:15:"gallery-caption";a:2:{s:6:"jquery";s:16:".gallery-caption";s:6:"encode";s:4:"none";}s:15:"wp-caption-text";a:2:{s:6:"jquery";s:16:".wp-caption-text";s:6:"encode";s:7:"display";}}}s:14:"wpbody-content";a:1:{s:6:"fields";a:2:{s:7:"wrap-h1";a:2:{s:6:"jquery";s:8:".wrap h1";s:6:"encode";s:7:"display";}s:7:"wrap-h2";a:2:{s:6:"jquery";s:8:".wrap h2";s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:9:"post-exec";a:1:{s:3:"src";s:27:"./admin/js/post-exec.min.js";}}}s:15:"options-general";a:3:{s:14:"preg_delimiter";s:1:"#";s:5:"pages";a:1:{s:19:"options-general.php";s:21:"^(?!.*page=[^=&]+).*$";}s:5:"forms";a:1:{s:7:"options";a:1:{s:6:"fields";a:3:{s:8:"blogname";a:0:{}s:15:"blogdescription";a:0:{}s:10:"head-title";a:2:{s:6:"jquery";s:10:"head title";s:6:"encode";s:7:"display";}}}}}s:7:"widgets";a:4:{s:5:"pages";a:1:{s:11:"widgets.php";s:0:"";}s:7:"anchors";a:1:{s:13:"widgets-right";a:1:{s:5:"where";s:12:"before after";}}s:5:"forms";a:1:{s:13:"widgets-right";a:1:{s:6:"fields";a:3:{s:12:"widget-title";a:1:{s:6:"jquery";s:34:"input[id^=\'widget-\'][id$=\'-title\']";}s:16:"widget-text-text";a:1:{s:6:"jquery";s:41:"textarea[id^=\'widget-text-\'][id$=\'-text\']";}s:15:"in-widget-title";a:2:{s:6:"jquery";s:20:"span.in-widget-title";s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:12:"widgets-exec";a:1:{s:3:"src";s:30:"./admin/js/widgets-exec.min.js";}}}s:8:"edit-tag";a:3:{s:5:"pages";a:2:{s:8:"term.php";s:0:"";s:13:"edit-tags.php";s:11:"action=edit";}s:5:"forms";a:1:{s:7:"edittag";a:1:{s:6:"fields";a:3:{s:4:"name";a:0:{}s:11:"description";a:0:{}s:6:"parent";a:1:{s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:13:"edit-tag-exec";a:1:{s:3:"src";s:31:"./admin/js/edit-tag-exec.min.js";}}}s:9:"edit-tags";a:5:{s:14:"preg_delimiter";s:1:"#";s:5:"pages";a:1:{s:13:"edit-tags.php";s:21:"^(?!.*action=edit).*$";}s:7:"anchors";a:1:{s:12:"posts-filter";a:1:{s:5:"where";s:12:"before after";}}s:5:"forms";a:3:{s:6:"addtag";a:1:{s:6:"fields";a:3:{s:8:"tag-name";a:0:{}s:15:"tag-description";a:0:{}s:6:"parent";a:1:{s:6:"encode";s:7:"display";}}}s:8:"col-left";a:1:{s:6:"fields";a:1:{s:8:"tagcloud";a:2:{s:6:"jquery";s:13:".tagcloud > a";s:6:"encode";s:7:"display";}}}s:8:"the-list";a:1:{s:6:"fields";a:2:{s:9:"row-title";a:2:{s:6:"jquery";s:10:".row-title";s:6:"encode";s:7:"display";}s:11:"description";a:2:{s:6:"jquery";s:12:".description";s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:14:"edit-tags-exec";a:1:{s:3:"src";s:32:"./admin/js/edit-tags-exec.min.js";}}}s:9:"nav-menus";a:4:{s:5:"pages";a:1:{s:13:"nav-menus.php";s:23:"action=edit|menu=\\d+|^$";}s:7:"anchors";a:1:{s:12:"menu-to-edit";a:1:{s:5:"where";s:12:"before after";}}s:5:"forms";a:2:{s:15:"update-nav-menu";a:1:{s:6:"fields";a:5:{s:5:"title";a:1:{s:6:"jquery";s:27:"[id^=edit-menu-item-title-]";}s:10:"attr-title";a:1:{s:6:"jquery";s:32:"[id^=edit-menu-item-attr-title-]";}s:11:"description";a:1:{s:6:"jquery";s:33:"[id^=edit-menu-item-description-]";}s:10:"span.title";a:2:{s:6:"jquery";s:20:"span.menu-item-title";s:6:"encode";s:7:"display";}s:16:"link-to-original";a:2:{s:6:"jquery";s:20:".link-to-original >a";s:6:"encode";s:7:"display";}}}s:14:"side-sortables";a:1:{s:6:"fields";a:2:{s:11:"label.title";a:2:{s:6:"jquery";s:21:"label.menu-item-title";s:6:"encode";s:7:"display";}s:23:"accordion-section-title";a:2:{s:6:"jquery";s:26:"h3.accordion-section-title";s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:14:"nav-menus-exec";a:1:{s:3:"src";s:32:"./admin/js/nav-menus-exec.min.js";}}}s:9:"all-pages";a:1:{s:7:"filters";a:1:{s:4:"text";a:1:{s:11:"admin_title";s:2:"20";}}}}', 'yes'),
	(160, 'qtranslate_front_config', 'a:1:{s:9:"all-pages";a:1:{s:7:"filters";a:3:{s:4:"text";a:11:{s:12:"widget_title";s:2:"20";s:11:"widget_text";s:2:"20";s:9:"the_title";s:2:"20";s:20:"category_description";s:2:"20";s:9:"list_cats";s:2:"20";s:16:"wp_dropdown_cats";s:2:"20";s:9:"term_name";s:2:"20";s:18:"get_comment_author";s:2:"20";s:10:"the_author";s:2:"20";s:9:"tml_title";s:2:"20";s:16:"term_description";s:2:"20";}s:4:"term";a:10:{s:7:"cat_row";s:1:"0";s:8:"cat_rows";s:1:"0";s:19:"wp_get_object_terms";s:1:"0";s:16:"single_cat_title";s:1:"0";s:16:"single_tag_title";s:1:"0";s:17:"single_term_title";s:1:"0";s:12:"the_category";s:1:"0";s:8:"get_term";s:1:"0";s:9:"get_terms";s:1:"0";s:12:"get_category";s:1:"0";}s:3:"url";a:16:{s:16:"author_feed_link";s:2:"10";s:11:"author_link";s:2:"10";s:27:"get_comment_author_url_link";s:2:"10";s:23:"post_comments_feed_link";s:2:"10";s:8:"day_link";s:2:"10";s:10:"month_link";s:2:"10";s:9:"year_link";s:2:"10";s:9:"page_link";s:2:"10";s:9:"post_link";s:2:"10";s:13:"category_link";s:2:"10";s:18:"category_feed_link";s:2:"10";s:8:"tag_link";s:2:"10";s:9:"term_link";s:2:"10";s:13:"the_permalink";s:2:"10";s:9:"feed_link";s:2:"10";s:13:"tag_feed_link";s:2:"10";}}}}', 'yes'),
	(161, 'widget_qtranslate', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(162, 'qtranslate_next_thanks', '1537279372', 'yes'),
	(163, 'qtranslate_next_update_mo', '1527861772', 'yes'),
	(164, 'qtranslate_qtrans_compatibility', '1', 'yes'),
	(165, 'qtranslate_ignore_file_types', 'gif,jpg,jpeg,png,svg,pdf,swf,tif,rar,zip,7z,mpg,divx,mpeg,avi,css,js,mp3,mp4,apk', 'yes'),
	(198, 'acf_version', '5.2.3', 'yes'),
	(201, 'WPLANG', '', 'yes'),
	(202, 'new_admin_email', 'janis.mozais@ms-idi.eu', 'yes'),
	(203, 'show_counter', '1', 'yes'),
	(204, 'date_setup', '2018-11-01', 'yes'),
	(264, '_transient_timeout_acf_pro_get_remote_info', '1527881447', 'no'),
	(265, '_transient_acf_pro_get_remote_info', 'a:16:{s:4:"name";s:26:"Advanced Custom Fields PRO";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:37:"https://www.advancedcustomfields.com/";s:7:"version";s:6:"5.6.10";s:6:"author";s:13:"Elliot Condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.6.0";s:6:"tested";s:5:"4.9.9";s:4:"tags";a:80:{i:0;s:11:"5.7.0-beta4";i:1;s:11:"5.7.0-beta3";i:2;s:11:"5.7.0-beta2";i:3;s:11:"5.7.0-beta1";i:4;s:5:"5.6.9";i:5;s:5:"5.6.8";i:6;s:5:"5.6.7";i:7;s:5:"5.6.6";i:8;s:5:"5.6.5";i:9;s:5:"5.6.4";i:10;s:5:"5.6.3";i:11;s:5:"5.6.2";i:12;s:5:"5.6.1";i:13;s:11:"5.6.0-beta2";i:14;s:11:"5.6.0-beta1";i:15;s:9:"5.6.0-RC2";i:16;s:9:"5.6.0-RC1";i:17;s:5:"5.6.0";i:18;s:5:"5.5.9";i:19;s:5:"5.5.7";i:20;s:5:"5.5.5";i:21;s:5:"5.5.3";i:22;s:5:"5.5.2";i:23;s:6:"5.5.14";i:24;s:6:"5.5.13";i:25;s:6:"5.5.12";i:26;s:6:"5.5.11";i:27;s:6:"5.5.10";i:28;s:5:"5.5.1";i:29;s:5:"5.5.0";i:30;s:5:"5.4.8";i:31;s:5:"5.4.7";i:32;s:5:"5.4.6";i:33;s:5:"5.4.5";i:34;s:5:"5.4.4";i:35;s:5:"5.4.3";i:36;s:5:"5.4.2";i:37;s:5:"5.4.1";i:38;s:5:"5.4.0";i:39;s:5:"5.3.9";i:40;s:5:"5.3.8";i:41;s:5:"5.3.7";i:42;s:5:"5.3.6";i:43;s:5:"5.3.5";i:44;s:5:"5.3.4";i:45;s:5:"5.3.3";i:46;s:5:"5.3.2";i:47;s:6:"5.3.10";i:48;s:5:"5.3.1";i:49;s:5:"5.3.0";i:50;s:5:"5.2.9";i:51;s:5:"5.2.8";i:52;s:5:"5.2.7";i:53;s:5:"5.2.6";i:54;s:5:"5.2.5";i:55;s:5:"5.2.4";i:56;s:5:"5.2.3";i:57;s:5:"5.2.2";i:58;s:5:"5.2.1";i:59;s:5:"5.2.0";i:60;s:5:"5.1.9";i:61;s:5:"5.1.8";i:62;s:5:"5.1.7";i:63;s:5:"5.1.6";i:64;s:5:"5.1.5";i:65;s:5:"5.1.4";i:66;s:5:"5.1.3";i:67;s:5:"5.1.2";i:68;s:5:"5.1.1";i:69;s:5:"5.1.0";i:70;s:5:"5.0.9";i:71;s:5:"5.0.8";i:72;s:5:"5.0.7";i:73;s:5:"5.0.6";i:74;s:5:"5.0.5";i:75;s:5:"5.0.4";i:76;s:5:"5.0.3";i:77;s:5:"5.0.2";i:78;s:5:"5.0.1";i:79;s:5:"5.0.0";}s:6:"tagged";s:61:"acf, advanced, custom, field, fields, form, repeater, content";s:11:"description";s:1478:"<p>Use the Advanced Custom Fields plugin to take full control of your WordPress edit screens & custom field data.</p>\n<b>Add fields on demand.</b> Our field builder allows you to quickly and easily add fields to WP edit screens with only the click of a few buttons!\n<b>Add them anywhere.</b> Fields can be added all over WP including posts, users, taxonomy terms, media, comments and even custom options pages!\n<b>Show them everywhere.</b> Load and display your custom field values in any theme template file with our hassle free developer friendly functions!\n<h4> Features </h4>\n<ul><li>Simple & Intuitive</li><li>Powerful Functions</li><li>Over 30 Field Types</li><li>Extensive Documentation</li><li>Millions of Users</li></ul>\n<h4> Links </h4>\n<ul><li>[Website](<a href="https://www.advancedcustomfields.com)">www.advancedcustomfields.com)</a></li><li>[Documentation](<a href="https://www.advancedcustomfields.com/resources/)">www.advancedcustomfields.com/resources/)</a></li><li>[Support](<a href="https://support.advancedcustomfields.com)">support.advancedcustomfields.com)</a></li><li>[ACF PRO](<a href="https://www.advancedcustomfields.com/pro/)">www.advancedcustomfields.com/pro/)</a></li></ul>\n<h4> PRO </h4>\n<p>The Advanced Custom Fields plugin is also available in a professional version which includes more fields, more functionality, and more flexibility! [Learn more](<a href="https://www.advancedcustomfields.com/pro/)">www.advancedcustomfields.com/pro/)</a></p>\n";s:12:"installation";s:515:"<p>From your WordPress dashboard<ol><li><b>Visit</b> Plugins > Add New</li><li><b>Search</b> for "Advanced Custom Fields"</li><li><b>Activate</b> Advanced Custom Fields from your Plugins page</li><li><b>Click</b> on the new menu item "Custom Fields" and create your first Custom Field Group!</li><li><b>Read</b> the documentation to [get started](<a href="https://www.advancedcustomfields.com/resources/getting-started-with-acf/)">www.advancedcustomfields.com/resources/getting-started-with-acf/)</a></li></ol></p>\n";s:9:"changelog";s:5171:"<h4> 5.6.10 </h4>\n<ul><li>Core: Minor fixes and improvements</li></ul>\n<h4> 5.6.9 </h4>\n<ul><li>User field: Added new <code>Return Format</code> setting (Array, Object, ID)</li><li>Core: Added basic compatibility with Gutenberg - values now save</li><li>Core: Fixed bug affecting the loading of fields on new Menu Items</li><li>Core: Removed private (<code>show_ui</code> => false) post types from the <code>Post Type</code> location rule choices</li><li>Core: Minor fixes and improvements</li><li>Language: Updated French translation - thanks to Maxime Bernard-Jacquet</li></ul>\n<h4> 5.6.8 </h4>\n<ul><li>API: Fixed bug causing have_rows() to fail with PHP 7.2</li><li>Core: Fixed bug causing "Add new term" form to hide after submit</li><li>Core: Minor fixes and improvements</li><li>Language: Updated German translation - thanks to Ralf Koller</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonça</li><li>Language: Updated Arabic translation - thanks to Karim Ramadan</li><li>Language: Updated Spanish translation - thanks to Luis Rull Muñoz</li><li>Language: Updated Persian translation - thanks to Majix</li></ul>\n<h4> 5.6.7 </h4>\n<ul><li>Fixed an assortment of bugs found in 5.6.6</li></ul>\n<h4> 5.6.6 </h4>\n<ul><li>Accordion field: Added new field type</li><li>Tab field: Added logic to remember active tabs</li><li>WYSIWYG field: Fixed JS error in quicktags initialization</li><li>Core: Fixed issue preventing conditional logic for menu item fields</li><li>Core: Fixed issue preventing JS initialization for newly added menu items.</li><li>Core: Allow whitespace in input value (previously trimmed)</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li><li>Language: Updated Brazilian Portuguese translation - thanks to Rafael Ribeiro</li><li>Language: Updated Dutch translation - thanks to Derk Oosterveld</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonça</li><li>Language: Updated Persian translation - thanks to Kamel Kimiaei</li><li>Language: Updated Swiss German translation - thanks to Raphael Hüni</li><li>Language: Updated Arabic translation - thanks to Karim Ramadan</li></ul>\n<h4> 5.6.5 </h4>\n<ul><li>API: Added new <code>kses</code> setting to the `acf_form()` function</li><li>Core: Added new <code>Admin Tools</code> framework (includes design refresh)</li><li>Core: Minor fixes and improvements</li><li>Language: Update Ukrainian translation - thanks to Jurko Chervony</li><li>Language: Update Russian translation - thanks to Andriy Toniyevych</li><li>Language: Update Hebrew translation - thanks to Itamar Megged</li></ul>\n<h4> 5.6.4 </h4>\n<ul><li>Google Map field: Fixed bug causing invalid url to JavaScript library</li><li>WYSIWYG field: Fixed minor z-index and drag/drop bugs</li><li>Group field: Fixed bug causing incorrect export settings</li><li>Core: Fixed bug in <code>Post Taxonomy</code> location rule ignoring selected terms during AJAX callback</li><li>Core: Fixed bug preventing a draft to validate with required fields</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li><li>Language: Update Turkish translation - thanks to Emre Erkan</li><li>Language: Updated Chinese translation - thanks to Wang Hao</li><li>Language: Update Hebrew translation - thanks to Itamar Megged</li></ul>\n<h4> 5.6.3 </h4>\n<ul><li>Button Group field: Added new field type</li><li>Range field: Added missing <code>step</code> attribute to number input</li><li>Range field: Added width to number input based on max setting</li><li>Basic fields: Added missing <code>required</code> attribute to inputs</li><li>Basic fields: Removed empty attributes from inputs</li><li>API: Fixed `get_fields()` bug ignoring fields starting with an underscore</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonça</li><li>Language: Updated French translation - thanks to Maxime Bernard-Jacquet</li><li>Language: Updated Finnish translation - thanks to Sauli Rajala</li><li>Language: Updated German translation - thanks to Ralf Koller</li></ul>\n<h4> 5.6.2 </h4>\n<ul><li>Range field: Added new field type</li><li>Clone field: Fixed bug causing value update issues for <code>seamless</code> + widgets / nave menu items</li><li>Location: Added parent theme<code>s post templates to </code>post template\' location rule</li><li>Location: Fixed bug causing <code>nav menu</code> location rule to fail during AJAX (add new item)</li><li>Core: Fixed PHP errors in customizer when editing non ACF panels</li><li>Core: Fixed bug casing backslash character to break fields / field groups</li><li>Core: Many minor bug fixes</li><li>Language: Updated Romanian translation - thanks to Ionut Staicu</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li><li>Language: Update Turkish translation - thanks to Emre Erkan</li><li>Language: Updated Russian translation - Thanks to Алекс Яровиков</li><li>Language: Updated French translation - Thanks to Julie Arrigoni</li></ul>\n<h4> 5.6.1 </h4>\n<ul><li>Fixed an assortment of bugs found in 5.6.0</li></ul>\n";s:14:"upgrade_notice";s:551:"<h4> 5.2.7 </h4>\n<ul><li>Field class names have changed slightly in v5.2.7 from `field_type-{$type}` to `acf-field-{$type}`. This change was introduced to better optimise JS performance. The previous class names can be added back in with the following filter: <a href="https://www.advancedcustomfields.com/resources/acfcompatibility/">www.advancedcustomfields.com/resources/acfcompatibility/</a></li></ul>\n<h4> 3.0.0 </h4>\n<ul><li>Editor is broken in WordPress 3.3</li></ul>\n<h4> 2.1.4 </h4>\n<ul><li>Adds post_id column back into acf_values</li></ul>\n";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}}', 'no'),
	(270, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.6.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.6.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.6";s:7:"version";s:5:"4.9.6";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1527838252;s:15:"version_checked";s:5:"4.9.6";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-31 19:43:07";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/de_DE.zip";s:10:"autoupdate";b:1;}}}', 'no'),
	(271, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1527848428;s:7:"checked";a:1:{s:6:"custom";s:0:"";}s:8:"response";a:1:{s:6:"custom";a:4:{s:5:"theme";s:6:"custom";s:11:"new_version";s:5:"0.5.3";s:3:"url";s:36:"https://wordpress.org/themes/custom/";s:7:"package";s:54:"https://downloads.wordpress.org/theme/custom.0.5.3.zip";}}s:12:"translations";a:0:{}}', 'no'),
	(272, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1527838253;s:7:"checked";a:2:{s:34:"advanced-custom-fields-pro/acf.php";s:5:"5.2.3";s:27:"qtranslate-x/qtranslate.php";s:7:"3.4.6.8";}s:8:"response";a:0:{}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:12:"qtranslate-x";s:8:"language";s:5:"de_DE";s:7:"version";s:7:"3.4.6.8";s:7:"updated";s:19:"2018-02-28 13:32:01";s:7:"package";s:81:"https://downloads.wordpress.org/translation/plugin/qtranslate-x/3.4.6.8/de_DE.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:1:{s:27:"qtranslate-x/qtranslate.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/qtranslate-x";s:4:"slug";s:12:"qtranslate-x";s:6:"plugin";s:27:"qtranslate-x/qtranslate.php";s:11:"new_version";s:7:"3.4.6.8";s:3:"url";s:43:"https://wordpress.org/plugins/qtranslate-x/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/qtranslate-x.3.4.6.8.zip";s:5:"icons";a:1:{s:7:"default";s:63:"https://s.w.org/plugins/geopattern-icon/qtranslate-x_f9f9f9.svg";}s:7:"banners";a:2:{s:2:"2x";s:68:"https://ps.w.org/qtranslate-x/assets/banner-1544x500.png?rev=1286019";s:2:"1x";s:67:"https://ps.w.org/qtranslate-x/assets/banner-772x250.png?rev=1286019";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
	(284, '_site_transient_timeout_theme_roots', '1527852865', 'no'),
	(285, '_site_transient_theme_roots', 'a:1:{s:6:"custom";s:7:"/themes";}', 'no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;

-- Dumping structure for table taxfree.wp_postmeta
DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table taxfree.wp_postmeta: ~118 rows (approximately)
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
	(1, 2, '_wp_page_template', 'templates/main.php'),
	(2, 3, '_wp_page_template', 'default'),
	(3, 3, '_edit_lock', '1527603061:1'),
	(4, 2, '_edit_lock', '1527258969:1'),
	(5, 2, '_edit_last', '1'),
	(6, 7, '_menu_item_type', 'custom'),
	(7, 7, '_menu_item_menu_item_parent', '0'),
	(8, 7, '_menu_item_object_id', '7'),
	(9, 7, '_menu_item_object', 'custom'),
	(10, 7, '_menu_item_target', ''),
	(11, 7, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(12, 7, '_menu_item_xfn', ''),
	(13, 7, '_menu_item_url', 'http://localhost/taxfree/#about'),
	(15, 8, '_menu_item_type', 'custom'),
	(16, 8, '_menu_item_menu_item_parent', '0'),
	(17, 8, '_menu_item_object_id', '8'),
	(18, 8, '_menu_item_object', 'custom'),
	(19, 8, '_menu_item_target', ''),
	(20, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(21, 8, '_menu_item_xfn', ''),
	(22, 8, '_menu_item_url', 'http://localhost/taxfree/#advantages'),
	(23, 1, '_edit_lock', '1527845332:1'),
	(24, 9, '_wp_attached_file', '2018/05/1_image.png'),
	(25, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:87;s:6:"height";i:136;s:4:"file";s:19:"2018/05/1_image.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(26, 1, '_edit_last', '1'),
	(27, 1, '_thumbnail_id', '9'),
	(30, 11, '_edit_last', '1'),
	(33, 11, '_edit_lock', '1527845306:1'),
	(34, 13, '_wp_attached_file', '2018/05/2_image.png'),
	(35, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:87;s:6:"height";i:118;s:4:"file";s:19:"2018/05/2_image.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(36, 11, '_thumbnail_id', '13'),
	(39, 14, '_edit_last', '1'),
	(40, 14, '_edit_lock', '1527754568:1'),
	(41, 15, '_wp_attached_file', '2018/05/circle_icon_7.png'),
	(42, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:103;s:6:"height";i:91;s:4:"file";s:25:"2018/05/circle_icon_7.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(43, 14, '_thumbnail_id', '31'),
	(44, 16, '_edit_last', '1'),
	(45, 16, '_edit_lock', '1527517314:1'),
	(46, 17, '_edit_last', '1'),
	(47, 17, '_edit_lock', '1527516680:1'),
	(48, 18, '_menu_item_type', 'custom'),
	(49, 18, '_menu_item_menu_item_parent', '0'),
	(50, 18, '_menu_item_object_id', '18'),
	(51, 18, '_menu_item_object', 'custom'),
	(52, 18, '_menu_item_target', ''),
	(53, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(54, 18, '_menu_item_xfn', ''),
	(55, 18, '_menu_item_url', 'http://localhost/taxfree/#team'),
	(57, 19, '_menu_item_type', 'custom'),
	(58, 19, '_menu_item_menu_item_parent', '0'),
	(59, 19, '_menu_item_object_id', '19'),
	(60, 19, '_menu_item_object', 'custom'),
	(61, 19, '_menu_item_target', ''),
	(62, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(63, 19, '_menu_item_xfn', ''),
	(64, 19, '_menu_item_url', 'http://localhost/taxfree/#roadmap'),
	(66, 20, '_menu_item_type', 'custom'),
	(67, 20, '_menu_item_menu_item_parent', '0'),
	(68, 20, '_menu_item_object_id', '20'),
	(69, 20, '_menu_item_object', 'custom'),
	(70, 20, '_menu_item_target', ''),
	(71, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(72, 20, '_menu_item_xfn', ''),
	(73, 20, '_menu_item_url', 'http://localhost/taxfree/whitepaper'),
	(75, 3, '_edit_last', '1'),
	(76, 22, '_edit_last', '1'),
	(77, 22, '_wp_page_template', 'default'),
	(78, 22, '_edit_lock', '1527603084:1'),
	(79, 24, '_menu_item_type', 'post_type'),
	(80, 24, '_menu_item_menu_item_parent', '0'),
	(81, 24, '_menu_item_object_id', '22'),
	(82, 24, '_menu_item_object', 'page'),
	(83, 24, '_menu_item_target', ''),
	(84, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(85, 24, '_menu_item_xfn', ''),
	(86, 24, '_menu_item_url', ''),
	(88, 25, '_menu_item_type', 'post_type'),
	(89, 25, '_menu_item_menu_item_parent', '0'),
	(90, 25, '_menu_item_object_id', '3'),
	(91, 25, '_menu_item_object', 'page'),
	(92, 25, '_menu_item_target', ''),
	(93, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(94, 25, '_menu_item_xfn', ''),
	(95, 25, '_menu_item_url', ''),
	(97, 26, '_menu_item_type', 'custom'),
	(98, 26, '_menu_item_menu_item_parent', '0'),
	(99, 26, '_menu_item_object_id', '26'),
	(100, 26, '_menu_item_object', 'custom'),
	(101, 26, '_menu_item_target', ''),
	(102, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(103, 26, '_menu_item_xfn', ''),
	(104, 26, '_menu_item_url', 'http://localhost/taxfree'),
	(107, 28, '_wp_attached_file', '2018/05/aaron_watkins.jpg'),
	(108, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:350;s:6:"height";i:350;s:4:"file";s:25:"2018/05/aaron_watkins.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"aaron_watkins-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"aaron_watkins-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(111, 30, '_edit_last', '1'),
	(112, 30, '_edit_lock', '1527776182:1'),
	(113, 31, '_wp_attached_file', '2018/05/sergey.png'),
	(114, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:193;s:6:"height";i:193;s:4:"file";s:18:"2018/05/sergey.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"sergey-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(119, 34, '_edit_last', '1'),
	(122, 34, '_edit_lock', '1527845357:1'),
	(123, 36, '_edit_last', '1'),
	(126, 36, '_edit_lock', '1527845383:1'),
	(127, 38, '_edit_last', '1'),
	(130, 38, '_edit_lock', '1527845410:1'),
	(131, 40, '_edit_last', '1'),
	(134, 40, '_edit_lock', '1527847672:1'),
	(135, 42, '_edit_last', '1'),
	(136, 42, '_edit_lock', '1527848328:1'),
	(137, 43, '_edit_last', '1'),
	(138, 43, '_edit_lock', '1527848353:1'),
	(139, 44, '_edit_last', '1'),
	(140, 44, '_edit_lock', '1527848376:1'),
	(141, 45, '_edit_last', '1'),
	(142, 45, '_edit_lock', '1527848394:1'),
	(143, 46, '_edit_last', '1'),
	(144, 46, '_edit_lock', '1527848414:1'),
	(145, 47, '_edit_last', '1'),
	(146, 47, '_edit_lock', '1527849451:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;

-- Dumping structure for table taxfree.wp_posts
DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table taxfree.wp_posts: ~44 rows (approximately)
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
	(1, 1, '2018-05-24 12:13:25', '2018-05-24 12:13:25', 'Скачайте и запустите мобильное приложение Tax Free Blockchain на своем устройстве и зарегистрируйте аккаунт в системе.', 'ОткроЙте мобильное  приложение', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-06-01 09:31:04', '2018-06-01 09:31:04', '', 0, 'http://localhost/taxfree/?p=1', 0, 'post', '', 1),
	(2, 1, '2018-05-24 12:13:25', '2018-05-24 12:13:25', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/taxfree/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Main', '', 'publish', 'closed', 'open', '', 'main', '', '', '2018-05-25 13:53:01', '2018-05-25 13:53:01', '', 0, 'http://localhost/taxfree/?page_id=2', 0, 'page', '', 0),
	(3, 1, '2018-05-24 12:13:25', '2018-05-24 12:13:25', '[:en]<h2>Who we are</h2>\r\nOur website address is: http://localhost/taxfree.\r\n<h2>What personal data we collect and why we collect it</h2>\r\n<h3>Comments</h3>\r\nWhen visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.\r\n\r\nAn anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.\r\n<h3>Media</h3>\r\nIf you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.\r\n<h3>Contact forms</h3>\r\n<h3>Cookies</h3>\r\nIf you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.\r\n\r\nIf you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.\r\n\r\nWhen you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select "Remember Me", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.\r\n\r\nIf you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.\r\n<h3>Embedded content from other websites</h3>\r\nArticles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.\r\n\r\nThese websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.\r\n<h3>Analytics</h3>\r\n<h2>Who we share your data with</h2>\r\n<h2>How long we retain your data</h2>\r\nIf you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.\r\n\r\nFor users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.\r\n<h2>What rights you have over your data</h2>\r\nIf you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.\r\n<h2>Where we send your data</h2>\r\nVisitor comments may be checked through an automated spam detection service.\r\n<h2>Your contact information</h2>\r\n<h2>Additional information</h2>\r\n<h3>How we protect your data</h3>\r\n<h3>What data breach procedures we have in place</h3>\r\n<h3>What third parties we receive data from</h3>\r\n<h3>What automated decision making and/or profiling we do with user data</h3>\r\n<h3>Industry regulatory disclosure requirements</h3>[:ru]<h2>Who we are</h2><p>Our website address is: http://localhost/taxfree.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>[:]', 'Privacy Policy', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2018-05-29 14:13:18', '2018-05-29 14:13:18', '', 0, 'http://localhost/taxfree/?page_id=3', 0, 'page', '', 0),
	(5, 1, '2018-05-25 13:24:32', '2018-05-25 13:24:32', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/taxfree/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-05-25 13:24:32', '2018-05-25 13:24:32', '', 2, 'http://localhost/taxfree/2018/05/25/2-revision-v1/', 0, 'revision', '', 0),
	(6, 1, '2018-05-25 13:25:12', '2018-05-25 13:25:12', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/taxfree/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Main', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-05-25 13:25:12', '2018-05-25 13:25:12', '', 2, 'http://localhost/taxfree/2018/05/25/2-revision-v1/', 0, 'revision', '', 0),
	(7, 1, '2018-05-25 14:10:17', '2018-05-25 14:10:17', '', 'What is TaxFree Coin?', '', 'publish', 'closed', 'closed', '', 'what-is-taxfree-coin', '', '', '2018-05-29 07:58:25', '2018-05-29 07:58:25', '', 0, 'http://localhost/taxfree/?p=7', 1, 'nav_menu_item', '', 0),
	(8, 1, '2018-05-25 14:10:17', '2018-05-25 14:10:17', '', 'Features', '', 'publish', 'closed', 'closed', '', 'features', '', '', '2018-05-29 07:58:25', '2018-05-29 07:58:25', '', 0, 'http://localhost/taxfree/?p=8', 2, 'nav_menu_item', '', 0),
	(9, 1, '2018-05-28 13:18:25', '2018-05-28 13:18:25', '', '1_image', '', 'inherit', 'open', 'closed', '', '1_image', '', '', '2018-05-28 13:18:25', '2018-05-28 13:18:25', '', 1, 'http://localhost/taxfree/wp-content/uploads/2018/05/1_image.png', 0, 'attachment', 'image/png', 0),
	(10, 1, '2018-05-28 13:18:30', '2018-05-28 13:18:30', 'Скачайте и запустите мобильное приложение taxfree.markert на своем устройстве смартфона', 'ОткроЙте мобильное  приложение', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-05-28 13:18:30', '2018-05-28 13:18:30', '', 1, 'http://localhost/taxfree/2018/05/28/1-revision-v1/', 0, 'revision', '', 0),
	(11, 1, '2018-05-28 13:19:01', '2018-05-28 13:19:01', 'С помощью мобильном приложении Tax Free Blockchain воспользуйтесь функцией поиска магазинов которые в системе Blockchain.', 'СовершаЙте покупки', '', 'publish', 'open', 'open', '', '%d1%81%d0%be%d0%b2%d0%b5%d1%80%d1%88%d0%b0%d0%b9%d1%82%d0%b5-%d0%bf%d0%be%d0%ba%d1%83%d0%bf%d0%ba%d0%b8', '', '', '2018-06-01 09:30:32', '2018-06-01 09:30:32', '', 0, 'http://localhost/taxfree/?p=11', 0, 'post', '', 0),
	(12, 1, '2018-05-28 13:19:01', '2018-05-28 13:19:01', 'Скачайте и запустите мобильное приложение taxfree.markert на своем устройстве смартфона', 'СовершаЙте покупки', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-05-28 13:19:01', '2018-05-28 13:19:01', '', 11, 'http://localhost/taxfree/2018/05/28/11-revision-v1/', 0, 'revision', '', 0),
	(13, 1, '2018-05-28 13:38:24', '2018-05-28 13:38:24', '', '2_image', '', 'inherit', 'open', 'closed', '', '2_image', '', '', '2018-05-28 13:38:24', '2018-05-28 13:38:24', '', 11, 'http://localhost/taxfree/wp-content/uploads/2018/05/2_image.png', 0, 'attachment', 'image/png', 0),
	(14, 1, '2018-05-28 14:05:09', '2018-05-28 14:05:09', 'Full description', 'Sergey Savin', 'PROJECT CEO', 'publish', 'closed', 'closed', '', 'sergey-savin', '', '', '2018-05-31 08:16:07', '2018-05-31 08:16:07', '', 0, 'http://localhost/taxfree/?post_type=team&#038;p=14', 0, 'team', '', 0),
	(15, 1, '2018-05-28 14:07:02', '2018-05-28 14:07:02', '', 'circle_icon_7', '', 'inherit', 'open', 'closed', '', 'circle_icon_7', '', '', '2018-05-28 14:07:02', '2018-05-28 14:07:02', '', 14, 'http://localhost/taxfree/wp-content/uploads/2018/05/circle_icon_7.png', 0, 'attachment', 'image/png', 0),
	(16, 1, '2018-05-28 14:12:53', '2018-05-28 14:12:53', 'НДС – «Налог на добавленную стоимость». Косвенный налог, которым облагаются проданные товары, включенные в установленную цену. Процентное значение НДС в каждой стране отличается. Каждый путешественник, который покупает товары, предназначенные для личного использования, и вывозит их в страны, не входящие в Европейский Союз, имеет право на беспошлинные покупки и получение возмещения уплаченного НДС.', 'ЧТО ТАКОЕ НДС?', '', 'publish', 'closed', 'closed', '', '%d1%87%d1%82%d0%be-%d1%82%d0%b0%d0%ba%d0%be%d0%b5-%d0%bd%d0%b4%d1%81', '', '', '2018-05-28 14:12:53', '2018-05-28 14:12:53', '', 0, 'http://localhost/taxfree/?post_type=questions&#038;p=16', 0, 'questions', '', 0),
	(17, 1, '2018-05-28 14:13:41', '2018-05-28 14:13:41', 'НДС – «Налог на добавленную стоимость». Косвенный налог, которым облагаются проданные товары, включенные в установленную цену. Процентное значение НДС в каждой стране отличается. Каждый путешественник, который покупает товары, предназначенные для личного использования, и вывозит их в страны, не входящие в Европейский Союз, имеет право на беспошлинные покупки и получение возмещения уплаченного НДС.', 'В КАКИХ СТРАНАХ Я МОГУ ВЕРНУТЬ УПЛАЧЕННЫЙ НДС С ПОМОЩЬЮ  СЕРВИСА TAX FREЕ BLOCKCHAIN?', '', 'publish', 'closed', 'closed', '', '%d0%b2-%d0%ba%d0%b0%d0%ba%d0%b8%d1%85-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b0%d1%85-%d1%8f-%d0%bc%d0%be%d0%b3%d1%83-%d0%b2%d0%b5%d1%80%d0%bd%d1%83%d1%82%d1%8c-%d1%83%d0%bf%d0%bb%d0%b0%d1%87%d0%b5%d0%bd', '', '', '2018-05-28 14:13:41', '2018-05-28 14:13:41', '', 0, 'http://localhost/taxfree/?post_type=questions&#038;p=17', 0, 'questions', '', 0),
	(18, 1, '2018-05-29 07:58:25', '2018-05-29 07:58:25', '', 'Team', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2018-05-29 07:58:25', '2018-05-29 07:58:25', '', 0, 'http://localhost/taxfree/?p=18', 3, 'nav_menu_item', '', 0),
	(19, 1, '2018-05-29 07:58:25', '2018-05-29 07:58:25', '', 'Roadmap', '', 'publish', 'closed', 'closed', '', 'roadmap', '', '', '2018-05-29 07:58:25', '2018-05-29 07:58:25', '', 0, 'http://localhost/taxfree/?p=19', 4, 'nav_menu_item', '', 0),
	(20, 1, '2018-05-29 07:58:25', '2018-05-29 07:58:25', '', 'Whitepaper', '', 'publish', 'closed', 'closed', '', 'whitepaper', '', '', '2018-05-29 07:58:25', '2018-05-29 07:58:25', '', 0, 'http://localhost/taxfree/?p=20', 5, 'nav_menu_item', '', 0),
	(21, 1, '2018-05-29 14:13:18', '2018-05-29 14:13:18', '[:en]<h2>Who we are</h2>\r\nOur website address is: http://localhost/taxfree.\r\n<h2>What personal data we collect and why we collect it</h2>\r\n<h3>Comments</h3>\r\nWhen visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.\r\n\r\nAn anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.\r\n<h3>Media</h3>\r\nIf you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.\r\n<h3>Contact forms</h3>\r\n<h3>Cookies</h3>\r\nIf you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.\r\n\r\nIf you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.\r\n\r\nWhen you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select "Remember Me", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.\r\n\r\nIf you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.\r\n<h3>Embedded content from other websites</h3>\r\nArticles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.\r\n\r\nThese websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.\r\n<h3>Analytics</h3>\r\n<h2>Who we share your data with</h2>\r\n<h2>How long we retain your data</h2>\r\nIf you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.\r\n\r\nFor users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.\r\n<h2>What rights you have over your data</h2>\r\nIf you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.\r\n<h2>Where we send your data</h2>\r\nVisitor comments may be checked through an automated spam detection service.\r\n<h2>Your contact information</h2>\r\n<h2>Additional information</h2>\r\n<h3>How we protect your data</h3>\r\n<h3>What data breach procedures we have in place</h3>\r\n<h3>What third parties we receive data from</h3>\r\n<h3>What automated decision making and/or profiling we do with user data</h3>\r\n<h3>Industry regulatory disclosure requirements</h3>[:ru]<h2>Who we are</h2><p>Our website address is: http://localhost/taxfree.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>[:]', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-05-29 14:13:18', '2018-05-29 14:13:18', '', 3, 'http://localhost/taxfree/2018/05/29/3-revision-v1/', 0, 'revision', '', 0),
	(22, 1, '2018-05-29 14:13:33', '2018-05-29 14:13:33', '', 'Terms and Conditions', '', 'publish', 'closed', 'closed', '', 'terms-and-conditions', '', '', '2018-05-29 14:13:33', '2018-05-29 14:13:33', '', 0, 'http://localhost/taxfree/?page_id=22', 0, 'page', '', 0),
	(23, 1, '2018-05-29 14:13:33', '2018-05-29 14:13:33', '', 'Terms and Conditions', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-05-29 14:13:33', '2018-05-29 14:13:33', '', 22, 'http://localhost/taxfree/2018/05/29/22-revision-v1/', 0, 'revision', '', 0),
	(24, 1, '2018-05-29 14:15:49', '2018-05-29 14:15:49', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2018-05-29 14:15:49', '2018-05-29 14:15:49', '', 0, 'http://localhost/taxfree/?p=24', 2, 'nav_menu_item', '', 0),
	(25, 1, '2018-05-29 14:15:49', '2018-05-29 14:15:49', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2018-05-29 14:15:49', '2018-05-29 14:15:49', '', 0, 'http://localhost/taxfree/?p=25', 1, 'nav_menu_item', '', 0),
	(26, 1, '2018-05-29 14:15:50', '2018-05-29 14:15:50', '', 'Join PRE-ICO', '', 'publish', 'closed', 'closed', '', 'join-pre-ico', '', '', '2018-05-29 14:15:50', '2018-05-29 14:15:50', '', 0, 'http://localhost/taxfree/?p=26', 3, 'nav_menu_item', '', 0),
	(28, 1, '2018-05-31 08:13:06', '2018-05-31 08:13:06', '', 'aaron_watkins', '', 'inherit', 'open', 'closed', '', 'aaron_watkins', '', '', '2018-05-31 08:13:06', '2018-05-31 08:13:06', '', 14, 'http://localhost/taxfree/wp-content/uploads/2018/05/aaron_watkins.jpg', 0, 'attachment', 'image/jpeg', 0),
	(30, 1, '2018-05-31 08:14:59', '2018-05-31 08:14:59', '', 'Mikhail Burenin', 'GENERAL DIRECTOR', 'publish', 'closed', 'closed', '', 'mikhail-burenin', '', '', '2018-05-31 08:14:59', '2018-05-31 08:14:59', '', 0, 'http://localhost/taxfree/?post_type=team&#038;p=30', 0, 'team', '', 0),
	(31, 1, '2018-05-31 08:15:51', '2018-05-31 08:15:51', '', 'sergey', '', 'inherit', 'open', 'closed', '', 'sergey', '', '', '2018-05-31 08:15:51', '2018-05-31 08:15:51', '', 14, 'http://localhost/taxfree/wp-content/uploads/2018/05/sergey.png', 0, 'attachment', 'image/png', 0),
	(32, 1, '2018-06-01 09:30:32', '2018-06-01 09:30:32', 'С помощью мобильном приложении Tax Free Blockchain воспользуйтесь функцией поиска магазинов которые в системе Blockchain.', 'СовершаЙте покупки', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-01 09:30:32', '2018-06-01 09:30:32', '', 11, 'http://localhost/taxfree/2018/06/01/11-revision-v1/', 0, 'revision', '', 0),
	(33, 1, '2018-06-01 09:31:04', '2018-06-01 09:31:04', 'Скачайте и запустите мобильное приложение Tax Free Blockchain на своем устройстве и зарегистрируйте аккаунт в системе.', 'ОткроЙте мобильное  приложение', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-06-01 09:31:04', '2018-06-01 09:31:04', '', 1, 'http://localhost/taxfree/2018/06/01/1-revision-v1/', 0, 'revision', '', 0),
	(34, 1, '2018-06-01 09:31:34', '2018-06-01 09:31:34', 'При проведении Карты TAX FREE через терминал Tax Free ​Blockchain происходит транзакция и открывает смарт контракт.', 'Оформить Tax Free', '', 'publish', 'open', 'open', '', '%d0%be%d1%84%d0%be%d1%80%d0%bc%d0%b8%d1%82%d1%8c-tax-free', '', '', '2018-06-01 09:31:34', '2018-06-01 09:31:34', '', 0, 'http://localhost/taxfree/?p=34', 0, 'post', '', 0),
	(35, 1, '2018-06-01 09:31:34', '2018-06-01 09:31:34', 'При проведении Карты TAX FREE через терминал Tax Free ​Blockchain происходит транзакция и открывает смарт контракт.', 'Оформить Tax Free', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-06-01 09:31:34', '2018-06-01 09:31:34', '', 34, 'http://localhost/taxfree/2018/06/01/34-revision-v1/', 0, 'revision', '', 0),
	(36, 1, '2018-06-01 09:31:59', '2018-06-01 09:31:59', 'в самообслуживающем т​ерминале Tax Free ​Blockchain провести паспорт через считывающее устройство для паспорта.', 'Индентификация  личности', '', 'publish', 'open', 'open', '', '%d0%b8%d0%bd%d0%b4%d0%b5%d0%bd%d1%82%d0%b8%d1%84%d0%b8%d0%ba%d0%b0%d1%86%d0%b8%d1%8f-%d0%bb%d0%b8%d1%87%d0%bd%d0%be%d1%81%d1%82%d0%b8', '', '', '2018-06-01 09:31:59', '2018-06-01 09:31:59', '', 0, 'http://localhost/taxfree/?p=36', 0, 'post', '', 0),
	(37, 1, '2018-06-01 09:31:59', '2018-06-01 09:31:59', 'в самообслуживающем т​ерминале Tax Free ​Blockchain провести паспорт через считывающее устройство для паспорта.', 'Индентификация  личности', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-06-01 09:31:59', '2018-06-01 09:31:59', '', 36, 'http://localhost/taxfree/2018/06/01/36-revision-v1/', 0, 'revision', '', 0),
	(38, 1, '2018-06-01 09:32:24', '2018-06-01 09:32:24', 'поместить штрих-код электронной декларации на упакованном и опечатанном пакете купленных вещей к сканеру штрих-кодов.', 'Подтверждения товара', '', 'publish', 'open', 'open', '', '%d0%bf%d0%be%d0%b4%d1%82%d0%b2%d0%b5%d1%80%d0%b6%d0%b4%d0%b5%d0%bd%d0%b8%d1%8f-%d1%82%d0%be%d0%b2%d0%b0%d1%80%d0%b0', '', '', '2018-06-01 09:32:24', '2018-06-01 09:32:24', '', 0, 'http://localhost/taxfree/?p=38', 0, 'post', '', 0),
	(39, 1, '2018-06-01 09:32:24', '2018-06-01 09:32:24', 'поместить штрих-код электронной декларации на упакованном и опечатанном пакете купленных вещей к сканеру штрих-кодов.', 'Подтверждения товара', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-06-01 09:32:24', '2018-06-01 09:32:24', '', 38, 'http://localhost/taxfree/2018/06/01/38-revision-v1/', 0, 'revision', '', 0),
	(40, 1, '2018-06-01 09:33:07', '2018-06-01 09:33:07', 'система Tax Free Blockchain подтверждаются блокчейном, и все заинтересованные лица получают pdf-версии с электронными подписями.', 'Система Tax Free  Blockchain', '', 'publish', 'open', 'open', '', '%d1%81%d0%b8%d1%81%d1%82%d0%b5%d0%bc%d0%b0-tax-free-blockchain', '', '', '2018-06-01 09:33:07', '2018-06-01 09:33:07', '', 0, 'http://localhost/taxfree/?p=40', 0, 'post', '', 0),
	(41, 1, '2018-06-01 09:33:07', '2018-06-01 09:33:07', 'система Tax Free Blockchain подтверждаются блокчейном, и все заинтересованные лица получают pdf-версии с электронными подписями.', 'Система Tax Free  Blockchain', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-06-01 09:33:07', '2018-06-01 09:33:07', '', 40, 'http://localhost/taxfree/2018/06/01/40-revision-v1/', 0, 'revision', '', 0),
	(42, 1, '2018-06-01 10:21:07', '2018-06-01 10:21:07', 'HEAD OF THE SECTOR IT', 'Stanislav Smirnov', '', 'publish', 'closed', 'closed', '', 'stanislav-smirnov', '', '', '2018-06-01 10:21:07', '2018-06-01 10:21:07', '', 0, 'http://localhost/taxfree/?post_type=team&#038;p=42', 0, 'team', '', 0),
	(43, 1, '2018-06-01 10:21:30', '2018-06-01 10:21:30', 'MANAGER', 'Elmar Grischoulenok', '', 'publish', 'closed', 'closed', '', 'elmar-grischoulenok', '', '', '2018-06-01 10:21:30', '2018-06-01 10:21:30', '', 0, 'http://localhost/taxfree/?post_type=team&#038;p=43', 0, 'team', '', 0),
	(44, 1, '2018-06-01 10:21:52', '2018-06-01 10:21:52', 'FINANCIER', 'Iveta Elksne', '', 'publish', 'closed', 'closed', '', 'iveta-elksne', '', '', '2018-06-01 10:21:52', '2018-06-01 10:21:52', '', 0, 'http://localhost/taxfree/?post_type=team&#038;p=44', 0, 'team', '', 0),
	(45, 1, '2018-06-01 10:22:12', '2018-06-01 10:22:12', 'IT SPECIALIST', 'Alexandr Angan', '', 'publish', 'closed', 'closed', '', 'alexandr-angan', '', '', '2018-06-01 10:22:12', '2018-06-01 10:22:12', '', 0, 'http://localhost/taxfree/?post_type=team&#038;p=45', 0, 'team', '', 0),
	(46, 1, '2018-06-01 10:22:30', '2018-06-01 10:22:30', 'ECONOMIST', 'IT SPECIALIST', '', 'publish', 'closed', 'closed', '', 'it-specialist', '', '', '2018-06-01 10:22:30', '2018-06-01 10:22:30', '', 0, 'http://localhost/taxfree/?post_type=team&#038;p=46', 0, 'team', '', 0),
	(47, 1, '2018-06-01 10:22:50', '2018-06-01 10:22:50', 'LOGIST', 'Santa Grischoulenoka', '', 'publish', 'closed', 'closed', '', 'santa-grischoulenoka', '', '', '2018-06-01 10:22:50', '2018-06-01 10:22:50', '', 0, 'http://localhost/taxfree/?post_type=team&#038;p=47', 0, 'team', '', 0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;

-- Dumping structure for table taxfree.wp_termmeta
DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table taxfree.wp_termmeta: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;

-- Dumping structure for table taxfree.wp_terms
DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table taxfree.wp_terms: ~3 rows (approximately)
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
	(1, 'Uncategorized', 'uncategorized', 0),
	(2, 'Primary Menu', 'primary-menu', 0),
	(3, 'Footer Menu', 'footer-menu', 0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;

-- Dumping structure for table taxfree.wp_term_relationships
DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table taxfree.wp_term_relationships: ~14 rows (approximately)
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
	(1, 1, 0),
	(7, 2, 0),
	(8, 2, 0),
	(11, 1, 0),
	(18, 2, 0),
	(19, 2, 0),
	(20, 2, 0),
	(24, 3, 0),
	(25, 3, 0),
	(26, 3, 0),
	(34, 1, 0),
	(36, 1, 0),
	(38, 1, 0),
	(40, 1, 0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;

-- Dumping structure for table taxfree.wp_term_taxonomy
DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table taxfree.wp_term_taxonomy: ~3 rows (approximately)
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
	(1, 1, 'category', '', 0, 6),
	(2, 2, 'nav_menu', '', 0, 5),
	(3, 3, 'nav_menu', '', 0, 3);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;

-- Dumping structure for table taxfree.wp_usermeta
DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table taxfree.wp_usermeta: ~19 rows (approximately)
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
	(1, 1, 'nickname', 'admin'),
	(2, 1, 'first_name', ''),
	(3, 1, 'last_name', ''),
	(4, 1, 'description', ''),
	(5, 1, 'rich_editing', 'true'),
	(6, 1, 'syntax_highlighting', 'true'),
	(7, 1, 'comment_shortcuts', 'false'),
	(8, 1, 'admin_color', 'fresh'),
	(9, 1, 'use_ssl', '0'),
	(10, 1, 'show_admin_bar_front', 'true'),
	(11, 1, 'locale', ''),
	(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
	(13, 1, 'wp_user_level', '10'),
	(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
	(15, 1, 'show_welcome_panel', '1'),
	(16, 1, 'session_tokens', 'a:3:{s:64:"21cbfd0fc186062b5ffa4d3c6c3ccdee58040c570f0655d99cb4b02350a7eb8e";a:4:{s:10:"expiration";i:1527927090;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36";s:5:"login";i:1527754290;}s:64:"755cd338e43c549f2eac842fcb122be3746b8eaad6f7771ee89102e0665152f4";a:4:{s:10:"expiration";i:1527944599;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36";s:5:"login";i:1527771799;}s:64:"70efcfcbe06fcae97eed19d15cfac087aa0592c3d86b61fa12dc6b8df6b31ea6";a:4:{s:10:"expiration";i:1528018194;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36";s:5:"login";i:1527845394;}}'),
	(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
	(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
	(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
	(20, 1, 'nav_menu_recently_edited', '3'),
	(21, 1, 'wp_user-settings', 'libraryContent=browse'),
	(22, 1, 'wp_user-settings-time', '1527513507');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;

-- Dumping structure for table taxfree.wp_users
DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table taxfree.wp_users: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
	(1, 'admin', '$P$B5131cWfik3z85P91yK9XoOZGqtB1h0', 'admin', 'janis.mozais@ms-idi.eu', '', '2018-05-24 12:13:24', '', 0, 'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
