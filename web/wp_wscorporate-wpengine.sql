-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: pod-114658.wpengine.com:13306
-- Generation Time: Oct 09, 2019 at 09:10 AM
-- Server version: 5.7.26-29-log
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_wscorporate`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-09-27 16:43:45', '2019-09-27 16:43:45', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_gf_draft_submissions`
--

CREATE TABLE `wp_gf_draft_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_gf_entry`
--

CREATE TABLE `wp_gf_entry` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_gf_entry_meta`
--

CREATE TABLE `wp_gf_entry_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `entry_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  `item_index` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_gf_entry_notes`
--

CREATE TABLE `wp_gf_entry_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sub_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_gf_form`
--

CREATE TABLE `wp_gf_form` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_gf_form_meta`
--

CREATE TABLE `wp_gf_form_meta` (
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_520_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_gf_form_revisions`
--

CREATE TABLE `wp_gf_form_revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_gf_form_view`
--

CREATE TABLE `wp_gf_form_view` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `count` mediumint(8) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_lctr2_conf`
--

CREATE TABLE `wp_lctr2_conf` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_lctr2_locations`
--

CREATE TABLE `wp_lctr2_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `street1` varchar(255) NOT NULL,
  `street2` varchar(255) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `mapicon` varchar(255) DEFAULT '',
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_lctr2_migrations`
--

CREATE TABLE `wp_lctr2_migrations` (
  `module` varchar(100) DEFAULT NULL,
  `version` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_lctr2_migrations`
--

INSERT INTO `wp_lctr2_migrations` (`module`, `version`) VALUES
('ormrelations', 2),
('conf', 1),
('locations', 4),
('priority', 1),
('searchlog', 1),
('locations.conf', 1),
('users.wordpress.conf', 1),
('maps_google.conf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_lctr2_relations`
--

CREATE TABLE `wp_lctr2_relations` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_id` int(10) UNSIGNED NOT NULL,
  `to_id` int(10) UNSIGNED NOT NULL,
  `relation_name` varchar(64) DEFAULT NULL,
  `meta1` varchar(64) DEFAULT NULL,
  `meta2` varchar(64) DEFAULT NULL,
  `meta3` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_lctr2_searchlog`
--

CREATE TABLE `wp_lctr2_searchlog` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(32) NOT NULL,
  `search_text` varchar(255) DEFAULT NULL,
  `action_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://western-sizzling-corporate.lndo.site', 'yes'),
(2, 'home', 'http://western-sizzling-corporate.lndo.site', 'yes'),
(3, 'blogname', 'Western Sizzling', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'andrzej@zelmandesign.com', 'yes'),
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
(29, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:29:\"gravityforms/gravityforms.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:45:\"wp-store-locator-csv/wp-store-locator-csv.php\";i:3;s:51:\"wp-store-locator-widget/wp-store-locator-widget.php\";i:4;s:37:\"wp-store-locator/wp-store-locator.php\";i:5;s:29:\"wp-sync-db-1.5/wp-sync-db.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'ws-corporate-theme/resources', 'yes'),
(41, 'stylesheet', 'ws-corporate-theme/resources', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '11', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:78:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"manage_wpsl_settings\";b:1;s:10:\"edit_store\";b:1;s:10:\"read_store\";b:1;s:12:\"delete_store\";b:1;s:11:\"edit_stores\";b:1;s:18:\"edit_others_stores\";b:1;s:14:\"publish_stores\";b:1;s:19:\"read_private_stores\";b:1;s:13:\"delete_stores\";b:1;s:21:\"delete_private_stores\";b:1;s:23:\"delete_published_stores\";b:1;s:20:\"delete_others_stores\";b:1;s:19:\"edit_private_stores\";b:1;s:21:\"edit_published_stores\";b:1;s:16:\"wpsl_csv_manager\";b:1;s:23:\"wpsl_csv_manager_export\";b:1;s:22:\"wpsl_csv_manager_tools\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:18:\"wpshopify_customer\";a:2:{s:4:\"name\";s:16:\"Shopify Customer\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;}}s:26:\"wpsl_store_locator_manager\";a:2:{s:4:\"name\";s:21:\"Store Locator Manager\";s:12:\"capabilities\";a:40:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:1;s:15:\"unfiltered_html\";b:1;s:12:\"upload_files\";b:1;s:19:\"delete_others_pages\";b:1;s:19:\"delete_others_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:17:\"edit_others_posts\";b:1;s:10:\"edit_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:17:\"moderate_comments\";b:1;s:13:\"publish_pages\";b:1;s:13:\"publish_posts\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_store\";b:1;s:10:\"read_store\";b:1;s:12:\"delete_store\";b:1;s:11:\"edit_stores\";b:1;s:18:\"edit_others_stores\";b:1;s:14:\"publish_stores\";b:1;s:19:\"read_private_stores\";b:1;s:13:\"delete_stores\";b:1;s:21:\"delete_private_stores\";b:1;s:23:\"delete_published_stores\";b:1;s:20:\"delete_others_stores\";b:1;s:19:\"edit_private_stores\";b:1;s:21:\"edit_published_stores\";b:1;s:16:\"wpsl_csv_manager\";b:1;s:23:\"wpsl_csv_manager_export\";b:1;s:22:\"wpsl_csv_manager_tools\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:1:{i:0;s:20:\"wpsl_search_widget-2\";}s:14:\"sidebar-footer\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:10:{i:1570612388;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1570635132;a:1:{s:46:\"WPEngineSecurityAuditor_Scans_fingerprint_core\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1570635840;a:1:{s:48:\"WPEngineSecurityAuditor_Scans_fingerprint_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1570639425;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1570639430;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570639432;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570643088;a:1:{s:39:\"WPEngineSecurityAuditor_Scans_scheduler\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1570654030;a:1:{s:49:\"WPEngineSecurityAuditor_Scans_fingerprint_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1570686771;a:1:{s:17:\"gravityforms_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1569742351;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(126, 'can_compress_scripts', '0', 'no'),
(141, 'recently_activated', 'a:3:{s:31:\"wp-google-maps/wpGoogleMaps.php\";i:1570565259;s:25:\"locatoraid/locatoraid.php\";i:1570559274;s:31:\"mapifypro-master/mapify_pro.php\";i:1570558282;}', 'yes'),
(146, 'wp_shopify_table_exists_wp_wps_settings_connection', '1', 'yes'),
(147, 'wp_shopify_table_exists_wp_wps_settings_general', '1', 'yes'),
(148, 'wp_shopify_table_exists_wp_wps_settings_license', '1', 'yes'),
(149, 'wp_shopify_table_exists_wp_wps_shop', '1', 'yes'),
(150, 'wp_shopify_table_exists_wp_wps_products', '1', 'yes'),
(151, 'wp_shopify_table_exists_wp_wps_variants', '1', 'yes'),
(152, 'wp_shopify_table_exists_wp_wps_collects', '1', 'yes'),
(153, 'wp_shopify_table_exists_wp_wps_options', '1', 'yes'),
(154, 'wp_shopify_table_exists_wp_wps_collections_custom', '1', 'yes'),
(155, 'wp_shopify_table_exists_wp_wps_collections_smart', '1', 'yes'),
(156, 'wp_shopify_table_exists_wp_wps_images', '1', 'yes'),
(157, 'wp_shopify_table_exists_wp_wps_tags', '1', 'yes'),
(158, 'wp_shopify_table_exists_wp_wps_settings_syncing', '1', 'yes'),
(172, 'wp_shopify_is_ready', '1', 'yes'),
(174, 'wp_shopify_component_options_dfffe5c00ecf61fb3a6e669cb17fd986', 'a:3:{s:20:\"componentQueryParams\";a:4:{s:5:\"query\";b:0;s:7:\"sort_by\";b:0;s:7:\"reverse\";b:0;s:9:\"page_size\";b:0;}s:25:\"componentConnectionParams\";b:0;s:16:\"componentOptions\";a:9:{s:18:\"render_from_server\";b:0;s:4:\"icon\";b:0;s:10:\"icon_color\";s:4:\"#000\";s:4:\"type\";s:5:\"fixed\";s:24:\"counter_background_color\";s:7:\"#6ae06a\";s:18:\"counter_text_color\";s:4:\"#000\";s:12:\"show_counter\";b:1;s:9:\"data_type\";b:0;s:12:\"hide_wrapper\";b:0;}}', 'yes'),
(195, 'current_theme', 'Western Sizzling Corporate', 'yes'),
(196, 'theme_mods_ws-corporate-theme/resources', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"primary_navigation\";i:2;s:17:\"footer_navigation\";i:3;s:18:\"footer_navigation2\";i:4;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(197, 'theme_switched', '', 'yes'),
(198, 'acf_version', '5.8.0', 'yes'),
(219, 'gf_db_version', '2.4.14', 'no'),
(220, 'rg_form_version', '2.4.14', 'no'),
(221, 'gform_enable_background_updates', '1', 'yes'),
(222, 'gform_pending_installation', '', 'yes'),
(223, 'widget_gform_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(224, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(225, 'gform_version_info', 'a:10:{s:12:\"is_valid_key\";b:1;s:6:\"reason\";s:0:\"\";s:7:\"version\";s:6:\"2.4.14\";s:3:\"url\";s:168:\"https://s3.amazonaws.com/gravityforms/releases/gravityforms_2.4.14.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=T0TyVu5%2FpWIu7ylfgVtV6gaBnYE%3D\";s:15:\"expiration_time\";i:1581613200;s:9:\"offerings\";a:53:{s:12:\"gravityforms\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:6:\"2.4.14\";s:14:\"version_latest\";s:8:\"2.4.14.4\";s:3:\"url\";s:168:\"https://s3.amazonaws.com/gravityforms/releases/gravityforms_2.4.14.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=T0TyVu5%2FpWIu7ylfgVtV6gaBnYE%3D\";s:10:\"url_latest\";s:168:\"https://s3.amazonaws.com/gravityforms/releases/gravityforms_2.4.14.4.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=bP97phFfRRlIKvYxDnQ480tLtxk%3D\";}s:21:\"gravityforms2checkout\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.0\";s:14:\"version_latest\";s:3:\"1.0\";s:3:\"url\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/2checkout/gravityforms2checkout_1.0.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=zojZegYZbWvrZfnxeVD6FJLAgLk%3D\";s:10:\"url_latest\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/2checkout/gravityforms2checkout_1.0.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=zojZegYZbWvrZfnxeVD6FJLAgLk%3D\";}s:26:\"gravityformsactivecampaign\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.6\";s:14:\"version_latest\";s:3:\"1.6\";s:3:\"url\";s:194:\"https://s3.amazonaws.com/gravityforms/addons/activecampaign/gravityformsactivecampaign_1.6.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=XyIv04ZqUch%2FFN3C%2FSqnzJFUlEg%3D\";s:10:\"url_latest\";s:194:\"https://s3.amazonaws.com/gravityforms/addons/activecampaign/gravityformsactivecampaign_1.6.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=XyIv04ZqUch%2FFN3C%2FSqnzJFUlEg%3D\";}s:32:\"gravityformsadvancedpostcreation\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:10:\"1.0-beta-3\";s:14:\"version_latest\";s:10:\"1.0-beta-3\";s:3:\"url\";s:213:\"https://s3.amazonaws.com/gravityforms/addons/advancedpostcreation/gravityformsadvancedpostcreation_1.0-beta-3.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=PH0HlutHC%2BEFZqRV%2BRDtOuZEKM8%3D\";s:10:\"url_latest\";s:213:\"https://s3.amazonaws.com/gravityforms/addons/advancedpostcreation/gravityformsadvancedpostcreation_1.0-beta-3.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=PH0HlutHC%2BEFZqRV%2BRDtOuZEKM8%3D\";}s:20:\"gravityformsagilecrm\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/agilecrm/gravityformsagilecrm_1.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=u7uGgRSLUDyQJQz8Cf%2FTzYJr2%2Bk%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/agilecrm/gravityformsagilecrm_1.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=u7uGgRSLUDyQJQz8Cf%2FTzYJr2%2Bk%3D\";}s:24:\"gravityformsauthorizenet\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.7\";s:14:\"version_latest\";s:3:\"2.7\";s:3:\"url\";s:190:\"https://s3.amazonaws.com/gravityforms/addons/authorizenet/gravityformsauthorizenet_2.7.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=HdSiJX6JkuBvQjI%2BI%2FfGE8y6P0Y%3D\";s:10:\"url_latest\";s:190:\"https://s3.amazonaws.com/gravityforms/addons/authorizenet/gravityformsauthorizenet_2.7.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=HdSiJX6JkuBvQjI%2BI%2FfGE8y6P0Y%3D\";}s:18:\"gravityformsaweber\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.9\";s:14:\"version_latest\";s:3:\"2.9\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/aweber/gravityformsaweber_2.9.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=2WLqAGOyMNHRq6f7%2B04GDFOILqI%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/aweber/gravityformsaweber_2.9.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=2WLqAGOyMNHRq6f7%2B04GDFOILqI%3D\";}s:21:\"gravityformsbatchbook\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/batchbook/gravityformsbatchbook_1.3.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=DFzpTGN5GJk9Lnu7sRd4fa6hB6Q%3D\";s:10:\"url_latest\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/batchbook/gravityformsbatchbook_1.3.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=DFzpTGN5GJk9Lnu7sRd4fa6hB6Q%3D\";}s:18:\"gravityformsbreeze\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/breeze/gravityformsbreeze_1.3.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=br1MPowhC11zAZAvJsI3%2BH6bieU%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/breeze/gravityformsbreeze_1.3.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=br1MPowhC11zAZAvJsI3%2BH6bieU%3D\";}s:27:\"gravityformscampaignmonitor\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.7\";s:14:\"version_latest\";s:3:\"3.7\";s:3:\"url\";s:194:\"https://s3.amazonaws.com/gravityforms/addons/campaignmonitor/gravityformscampaignmonitor_3.7.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=atEm%2Bmg8VXWZDk31pwxYmlWUYp0%3D\";s:10:\"url_latest\";s:194:\"https://s3.amazonaws.com/gravityforms/addons/campaignmonitor/gravityformscampaignmonitor_3.7.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=atEm%2Bmg8VXWZDk31pwxYmlWUYp0%3D\";}s:20:\"gravityformscampfire\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.1\";s:14:\"version_latest\";s:5:\"1.2.2\";s:3:\"url\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/campfire/gravityformscampfire_1.1.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=BJ6e11JdnhalTZhL6%2Ff4xbJXnHQ%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/campfire/gravityformscampfire_1.2.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=qi3kI1S7LnjQbWKcZxmlb%2B7WrzI%3D\";}s:22:\"gravityformscapsulecrm\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:5:\"1.3.1\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/capsulecrm/gravityformscapsulecrm_1.3.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=0ejyZDSElXaEGRCFmQXcYuOwjz0%3D\";s:10:\"url_latest\";s:188:\"https://s3.amazonaws.com/gravityforms/addons/capsulecrm/gravityformscapsulecrm_1.3.1.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=%2FFhXskj1y9Gn61R8I%2Ff4JCOt8a0%3D\";}s:26:\"gravityformschainedselects\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:5:\"1.3.1\";s:3:\"url\";s:190:\"https://s3.amazonaws.com/gravityforms/addons/chainedselects/gravityformschainedselects_1.3.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=8IzexFVjOi0OFTpckDhYRw4ikxQ%3D\";s:10:\"url_latest\";s:192:\"https://s3.amazonaws.com/gravityforms/addons/chainedselects/gravityformschainedselects_1.3.1.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=bqhiyu9ux6S7e9DQEqRtPZE0JpI%3D\";}s:23:\"gravityformscleverreach\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:5:\"1.5.2\";s:3:\"url\";s:184:\"https://s3.amazonaws.com/gravityforms/addons/cleverreach/gravityformscleverreach_1.5.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=aVTqOBedEQXh8lTEWv3uhWI1two%3D\";s:10:\"url_latest\";s:190:\"https://s3.amazonaws.com/gravityforms/addons/cleverreach/gravityformscleverreach_1.5.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=ppsHbuMbA0QbV%2B9CtmOvDf%2FU6qI%3D\";}s:27:\"gravityformsconstantcontact\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.0\";s:14:\"version_latest\";s:3:\"1.1\";s:3:\"url\";s:194:\"https://s3.amazonaws.com/gravityforms/addons/constantcontact/gravityformsconstantcontact_1.0.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=bc0YM%2B1QYNdMMGcpYVQ3RKGvyjs%3D\";s:10:\"url_latest\";s:194:\"https://s3.amazonaws.com/gravityforms/addons/constantcontact/gravityformsconstantcontact_1.1.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=xFwYGk3H9%2BzCV3s127Al8lkxY88%3D\";}s:19:\"gravityformscoupons\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.9\";s:14:\"version_latest\";s:3:\"2.9\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/coupons/gravityformscoupons_2.9.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=tAEJmJPB38Qmq99CCweWRkwTpuA%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/coupons/gravityformscoupons_2.9.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=tAEJmJPB38Qmq99CCweWRkwTpuA%3D\";}s:17:\"gravityformsdebug\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:0:\"\";s:14:\"version_latest\";s:10:\"1.0.beta11\";s:3:\"url\";s:0:\"\";s:10:\"url_latest\";s:181:\"https://s3.amazonaws.com/gravityforms/addons/debug/gravityformsdebug_1.0.beta11.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=Gxo3IozgVQ%2FKuLkXspknYpV99W0%3D\";}s:19:\"gravityformsdropbox\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.4\";s:14:\"version_latest\";s:5:\"2.4.3\";s:3:\"url\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/dropbox/gravityformsdropbox_2.4.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=Y%2Fkdy60JFDJ0A9sIXf%2BLdKmqNX8%3D\";s:10:\"url_latest\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/dropbox/gravityformsdropbox_2.4.3.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=hC9gKHj7IYjAkXfec3A0zo%2Fy82E%3D\";}s:16:\"gravityformsemma\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:5:\"1.2.6\";s:3:\"url\";s:172:\"https://s3.amazonaws.com/gravityforms/addons/emma/gravityformsemma_1.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=B6uLyXaxGydgkTFqt%2BsVETSvn40%3D\";s:10:\"url_latest\";s:172:\"https://s3.amazonaws.com/gravityforms/addons/emma/gravityformsemma_1.2.6.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=1BvHq6FNM4dISjZIz1XogXKcSj8%3D\";}s:22:\"gravityformsfreshbooks\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.6\";s:14:\"version_latest\";s:3:\"2.6\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/freshbooks/gravityformsfreshbooks_2.6.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=axsic7Im2WcC8ZM0lBLhXlHpVk4%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/freshbooks/gravityformsfreshbooks_2.6.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=axsic7Im2WcC8ZM0lBLhXlHpVk4%3D\";}s:23:\"gravityformsgetresponse\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";s:3:\"url\";s:186:\"https://s3.amazonaws.com/gravityforms/addons/getresponse/gravityformsgetresponse_1.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=8xJ7k1C81L2a5PnBcp8ZJ%2B8ntz4%3D\";s:10:\"url_latest\";s:186:\"https://s3.amazonaws.com/gravityforms/addons/getresponse/gravityformsgetresponse_1.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=8xJ7k1C81L2a5PnBcp8ZJ%2B8ntz4%3D\";}s:21:\"gravityformsgutenberg\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:10:\"1.0-rc-1.4\";s:14:\"version_latest\";s:10:\"1.0-rc-1.4\";s:3:\"url\";s:193:\"https://s3.amazonaws.com/gravityforms/addons/gutenberg/gravityformsgutenberg_1.0-rc-1.4.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=hg31%2B5HOyMIjAIvnXxb%2Bw2e%2FBS4%3D\";s:10:\"url_latest\";s:193:\"https://s3.amazonaws.com/gravityforms/addons/gutenberg/gravityformsgutenberg_1.0-rc-1.4.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=hg31%2B5HOyMIjAIvnXxb%2Bw2e%2FBS4%3D\";}s:21:\"gravityformshelpscout\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:4:\"1.11\";s:14:\"version_latest\";s:4:\"1.11\";s:3:\"url\";s:183:\"https://s3.amazonaws.com/gravityforms/addons/helpscout/gravityformshelpscout_1.11.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=V%2Fv6ke59MLncgFuQ2BQj7tpacAg%3D\";s:10:\"url_latest\";s:183:\"https://s3.amazonaws.com/gravityforms/addons/helpscout/gravityformshelpscout_1.11.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=V%2Fv6ke59MLncgFuQ2BQj7tpacAg%3D\";}s:20:\"gravityformshighrise\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/highrise/gravityformshighrise_1.3.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=AhDTq1j9u%2Bgyp3APbTLOYL%2BKdQI%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/highrise/gravityformshighrise_1.3.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=AhDTq1j9u%2Bgyp3APbTLOYL%2BKdQI%3D\";}s:19:\"gravityformshipchat\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";}s:19:\"gravityformshubspot\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.1\";s:14:\"version_latest\";s:5:\"1.1.2\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/hubspot/gravityformshubspot_1.1.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=hSl1p9EK0tCA4LL5AMeHwDS6gfs%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/hubspot/gravityformshubspot_1.1.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=UzkJ2006Cd1QpSTakOHwlPZQi14%3D\";}s:20:\"gravityformsicontact\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:5:\"1.3.1\";s:3:\"url\";s:184:\"https://s3.amazonaws.com/gravityforms/addons/icontact/gravityformsicontact_1.3.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=uwc2Qs70Eyqp68%2BM%2Bepr5AY4%2FWs%3D\";s:10:\"url_latest\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/icontact/gravityformsicontact_1.3.1.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=BLKLadUSzQORByuYjFDbbSqGbs4%3D\";}s:19:\"gravityformslogging\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:5:\"1.3.1\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/logging/gravityformslogging_1.3.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=JT%2BP%2FvWWdIVvDB2vEjbJ%2BfPMgR4%3D\";s:10:\"url_latest\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/logging/gravityformslogging_1.3.1.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=lAeBEVFcknPrjyb%2BiPP7NKK99BM%3D\";}s:19:\"gravityformsmadmimi\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/madmimi/gravityformsmadmimi_1.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=UN3EnBBWMmJA7AzGNzuOfJ%2BXjaI%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/madmimi/gravityformsmadmimi_1.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=UN3EnBBWMmJA7AzGNzuOfJ%2BXjaI%3D\";}s:21:\"gravityformsmailchimp\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"4.6\";s:14:\"version_latest\";s:5:\"4.6.3\";s:3:\"url\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/mailchimp/gravityformsmailchimp_4.6.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=2pFIK4nUfCd2nJ5KujzEElMwBo0%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/mailchimp/gravityformsmailchimp_4.6.3.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=CCJMx6RQk9JNUIETUDZ2sv4f54s%3D\";}s:19:\"gravityformsmailgun\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.1\";s:14:\"version_latest\";s:5:\"1.1.2\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/mailgun/gravityformsmailgun_1.1.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=YZ7zzXb%2FDjFlv9f9l6c5mYyTwZs%3D\";s:10:\"url_latest\";s:184:\"https://s3.amazonaws.com/gravityforms/addons/mailgun/gravityformsmailgun_1.1.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=braPAp%2FR%2FN7EXA%2BIKpHHxBHFTtY%3D\";}s:26:\"gravityformspartialentries\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:5:\"1.4.1\";s:3:\"url\";s:194:\"https://s3.amazonaws.com/gravityforms/addons/partialentries/gravityformspartialentries_1.4.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=%2FLAS0QN3XI5BCDo7vxeWrX%2FlbCk%3D\";s:10:\"url_latest\";s:198:\"https://s3.amazonaws.com/gravityforms/addons/partialentries/gravityformspartialentries_1.4.1.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=i4jVI%2Fztrsub905BQ1iL%2Ba7Yc%2FM%3D\";}s:18:\"gravityformspaypal\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.2\";s:14:\"version_latest\";s:3:\"3.2\";s:3:\"url\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/paypal/gravityformspaypal_3.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=yqDZYm6OWBrrhsFXJKbHrbmnOgU%3D\";s:10:\"url_latest\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/paypal/gravityformspaypal_3.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=yqDZYm6OWBrrhsFXJKbHrbmnOgU%3D\";}s:33:\"gravityformspaypalexpresscheckout\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:0:\"\";s:14:\"version_latest\";N;}s:29:\"gravityformspaypalpaymentspro\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.4\";s:14:\"version_latest\";s:3:\"2.4\";s:3:\"url\";s:196:\"https://s3.amazonaws.com/gravityforms/addons/paypalpaymentspro/gravityformspaypalpaymentspro_2.4.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=Z3rabKQtdD92SpAF3Rzr8iNttZ4%3D\";s:10:\"url_latest\";s:196:\"https://s3.amazonaws.com/gravityforms/addons/paypalpaymentspro/gravityformspaypalpaymentspro_2.4.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=Z3rabKQtdD92SpAF3Rzr8iNttZ4%3D\";}s:21:\"gravityformspaypalpro\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:5:\"1.8.1\";s:14:\"version_latest\";s:5:\"1.8.2\";s:3:\"url\";s:184:\"https://s3.amazonaws.com/gravityforms/addons/paypalpro/gravityformspaypalpro_1.8.1.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=ek8x41uCgHmHyKkJXJZY%2F90UNjo%3D\";s:10:\"url_latest\";s:184:\"https://s3.amazonaws.com/gravityforms/addons/paypalpro/gravityformspaypalpro_1.8.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=3igL%2FMX6SjQ7d39GPgXbI3irUM4%3D\";}s:20:\"gravityformspicatcha\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"2.0\";s:14:\"version_latest\";s:3:\"2.0\";}s:16:\"gravityformspipe\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.1\";s:14:\"version_latest\";s:5:\"1.1.1\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/pipe/gravityformspipe_1.1.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=ovBf%2F1Km%2BDnaWVJWaa%2F5wxlFK3A%3D\";s:10:\"url_latest\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/pipe/gravityformspipe_1.1.1.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=3OJBvp6frflzgdB2W4%2FmvjsmCt0%3D\";}s:17:\"gravityformspolls\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.4\";s:14:\"version_latest\";s:3:\"3.4\";s:3:\"url\";s:172:\"https://s3.amazonaws.com/gravityforms/addons/polls/gravityformspolls_3.4.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=wl6szRRUx9yyPnSpqRDpcfvOx5g%3D\";s:10:\"url_latest\";s:172:\"https://s3.amazonaws.com/gravityforms/addons/polls/gravityformspolls_3.4.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=wl6szRRUx9yyPnSpqRDpcfvOx5g%3D\";}s:20:\"gravityformspostmark\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.0\";s:14:\"version_latest\";s:5:\"1.0.1\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/postmark/gravityformspostmark_1.0.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=pttwCQ4ALWfFtBVLqpggzLlZAnA%3D\";s:10:\"url_latest\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/postmark/gravityformspostmark_1.0.1.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=o1BkeJ4VTmy101XjrYPZB1WwqYE%3D\";}s:16:\"gravityformsquiz\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.2\";s:14:\"version_latest\";s:3:\"3.2\";s:3:\"url\";s:170:\"https://s3.amazonaws.com/gravityforms/addons/quiz/gravityformsquiz_3.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=twPd71MmvyCWpbF0Mq4JZGSMduQ%3D\";s:10:\"url_latest\";s:170:\"https://s3.amazonaws.com/gravityforms/addons/quiz/gravityformsquiz_3.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=twPd71MmvyCWpbF0Mq4JZGSMduQ%3D\";}s:19:\"gravityformsrestapi\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:10:\"2.0-beta-2\";s:14:\"version_latest\";s:10:\"2.0-beta-2\";s:3:\"url\";s:183:\"https://s3.amazonaws.com/gravityforms/addons/restapi/gravityformsrestapi_2.0-beta-2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=XvV7HexkOtbBSnnOHOFZXxYah5k%3D\";s:10:\"url_latest\";s:183:\"https://s3.amazonaws.com/gravityforms/addons/restapi/gravityformsrestapi_2.0-beta-2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=XvV7HexkOtbBSnnOHOFZXxYah5k%3D\";}s:20:\"gravityformssendgrid\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:5:\"1.2.1\";s:3:\"url\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/sendgrid/gravityformssendgrid_1.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=cYhmql2KovEZVI61GW3R%2FDY%2B8Lg%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/sendgrid/gravityformssendgrid_1.2.1.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=N6jI4gtmfMYrzigMQmdB77%2BDj5k%3D\";}s:21:\"gravityformssignature\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.8\";s:14:\"version_latest\";s:5:\"3.8.1\";s:3:\"url\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/signature/gravityformssignature_3.8.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=pAguS9rUDZsZEJzF2UEMF5oapwE%3D\";s:10:\"url_latest\";s:182:\"https://s3.amazonaws.com/gravityforms/addons/signature/gravityformssignature_3.8.1.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=XMGtH23hlnB8BLiu3p1F5DLf8Os%3D\";}s:17:\"gravityformsslack\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.9\";s:14:\"version_latest\";s:3:\"1.9\";s:3:\"url\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/slack/gravityformsslack_1.9.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=jRw4gBfPCU0DcgLK862zapV%2FGnM%3D\";s:10:\"url_latest\";s:174:\"https://s3.amazonaws.com/gravityforms/addons/slack/gravityformsslack_1.9.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=jRw4gBfPCU0DcgLK862zapV%2FGnM%3D\";}s:18:\"gravityformsstripe\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.2\";s:14:\"version_latest\";s:3:\"3.2\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/stripe/gravityformsstripe_3.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=NIW%2FU3ryFWhLoDk8uVTNj%2BGOjps%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/stripe/gravityformsstripe_3.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=NIW%2FU3ryFWhLoDk8uVTNj%2BGOjps%3D\";}s:18:\"gravityformssurvey\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.4\";s:14:\"version_latest\";s:3:\"3.4\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/survey/gravityformssurvey_3.4.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=TCQfbXQj%2B7jBbU7PLrrFAoJUsSY%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/survey/gravityformssurvey_3.4.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=TCQfbXQj%2B7jBbU7PLrrFAoJUsSY%3D\";}s:18:\"gravityformstrello\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:5:\"1.2.3\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/trello/gravityformstrello_1.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=bUwxpfeSVA%2Fs0Uo6ncP2eiQDlqQ%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/trello/gravityformstrello_1.2.3.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=WZztHEwIVVUK7QmQUDSXvK0j4Oc%3D\";}s:18:\"gravityformstwilio\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.6\";s:14:\"version_latest\";s:3:\"2.6\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/twilio/gravityformstwilio_2.6.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=VC%2Fu2Pb93g72yL9y0W2dQtsUUTE%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/twilio/gravityformstwilio_2.6.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=VC%2Fu2Pb93g72yL9y0W2dQtsUUTE%3D\";}s:28:\"gravityformsuserregistration\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"4.4\";s:14:\"version_latest\";s:5:\"4.4.1\";s:3:\"url\";s:196:\"https://s3.amazonaws.com/gravityforms/addons/userregistration/gravityformsuserregistration_4.4.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=UW%2B4JgQlcXVYQGx4R3HlBXu9KUs%3D\";s:10:\"url_latest\";s:196:\"https://s3.amazonaws.com/gravityforms/addons/userregistration/gravityformsuserregistration_4.4.1.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=qItGmj29O3IZYBjTkIbcu8yn2Uw%3D\";}s:20:\"gravityformswebhooks\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";s:3:\"url\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/webhooks/gravityformswebhooks_1.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=7E0vSyaRY1UEeQFHmE3slqfD3eE%3D\";s:10:\"url_latest\";s:178:\"https://s3.amazonaws.com/gravityforms/addons/webhooks/gravityformswebhooks_1.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=7E0vSyaRY1UEeQFHmE3slqfD3eE%3D\";}s:18:\"gravityformszapier\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.2\";s:14:\"version_latest\";s:3:\"3.2\";s:3:\"url\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/zapier/gravityformszapier_3.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=6RettjVl3k%2FnGVkFPsmynUo96gs%3D\";s:10:\"url_latest\";s:176:\"https://s3.amazonaws.com/gravityforms/addons/zapier/gravityformszapier_3.2.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=6RettjVl3k%2FnGVkFPsmynUo96gs%3D\";}s:19:\"gravityformszohocrm\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.8\";s:14:\"version_latest\";s:3:\"1.8\";s:3:\"url\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/zohocrm/gravityformszohocrm_1.8.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=mT%2BwoMNb3KN%2BlB4xGUnDeGdAO1M%3D\";s:10:\"url_latest\";s:180:\"https://s3.amazonaws.com/gravityforms/addons/zohocrm/gravityformszohocrm_1.8.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=mT%2BwoMNb3KN%2BlB4xGUnDeGdAO1M%3D\";}}s:9:\"is_active\";s:1:\"1\";s:14:\"version_latest\";s:8:\"2.4.14.4\";s:10:\"url_latest\";s:168:\"https://s3.amazonaws.com/gravityforms/releases/gravityforms_2.4.14.4.zip?AWSAccessKeyId=AKIAJC3LQNDWHBOFBQIA&Expires=1570715464&Signature=bP97phFfRRlIKvYxDnQ480tLtxk%3D\";s:9:\"timestamp\";i:1570542664;}', 'yes'),
(232, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(271, 'rg_gforms_key', '844d36925c0dfb751d91fc7dbe656af4', 'yes'),
(272, 'gf_site_key', 'e5da2bed-fab5-4ecf-9703-168d2c9a7731', 'yes'),
(273, 'gf_site_secret', '4f5c7804-942e-4be2-85bc-f6f369fb9e41', 'yes'),
(274, 'rg_gforms_enable_akismet', '1', 'yes'),
(275, 'rg_gforms_currency', '', 'yes'),
(276, 'gform_enable_toolbar_menu', '1', 'yes'),
(661, 'wpsdb_settings', 'a:7:{s:11:\"max_request\";i:1048576;s:3:\"key\";s:32:\"onqvV1mOVFdVQVkxqY5YEcdca8Pa9gqT\";s:10:\"allow_pull\";b:0;s:10:\"allow_push\";b:1;s:8:\"profiles\";a:0:{}s:10:\"verify_ssl\";b:0;s:17:\"blacklist_plugins\";a:0:{}}', 'yes'),
(662, 'widget_wpe_powered_by_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(663, 'wpe_notices', 'a:1:{s:4:\"read\";s:0:\"\";}', 'yes'),
(664, 'wpe_notices_ttl', '1570615217', 'yes'),
(665, 'wc_am_client_8672', 'a:1:{s:25:\"wc_am_client_8672_api_key\";s:40:\"d5659f48b8c79fc0af493cab15ce091201f76c67\";}', 'yes'),
(666, 'mpfy_flush_required', 'n', 'yes'),
(667, 'mpfy_plugin_version', '3.2.0', 'yes'),
(668, 'widget_locatoraid_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(669, 'gf_previous_db_version', '2.4.12', 'yes'),
(670, 'gf_upgrade_lock', '', 'yes'),
(671, 'gform_sticky_admin_messages', 'a:0:{}', 'yes'),
(673, 'wpgmza_db_version', '8.0.1', 'yes'),
(674, 'wpgmza_global_settings', '{\"wpgmza_google_maps_api_key\":\"AIzaSyANJYw2zO1FQkMxiSYSfVZrngIsUJ6EeVw\",\"engine\":\"google-maps\",\"google_maps_api_key\":false,\"default_marker_icon\":\"\\/\\/maps.gstatic.com\\/mapfiles\\/api-3\\/images\\/spotlight-poi2.png\",\"developer_mode\":false,\"user_interface_style\":\"default\",\"wpgmza_gdpr_enabled\":1,\"wpgmza_gdpr_default_notice\":\"<p>\\n\\tI agree for my personal data to be processed by <span name=\\\"wpgmza_gdpr_company_name\\\"><\\/span>, for the purpose(s) of <span name=\\\"wpgmza_gdpr_retention_purpose\\\"><\\/span>.\\n<\\/p>\\n\\n<p>\\t\\n\\tI agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and\\tgenerating directions.\\n<\\/p>\\n<p>\\n\\tSome visual components of WP Google Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\\n<\\/p>\\n<p>\\n\\tWP Google Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the \\\"state\\\" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Google Maps transmit this information.\\n<\\/p>\\n<p>\\n\\tPlease <a href=\\\"https:\\/\\/developers.google.com\\/maps\\/terms\\\">see here<\\/a> and <a href=\\\"https:\\/\\/maps.google.com\\/help\\/terms_maps.html\\\">here<\\/a> for Google\'s terms. Please also see <a href=\\\"https:\\/\\/policies.google.com\\/privacy?hl=en-GB&amp;gl=uk\\\">Google\'s Privacy Policy<\\/a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\\n<\\/p>\\n<p>\\n\\tWhere this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\\n<\\/p>\",\"wpgmza_gdpr_company_name\":\"Western Sizzling\",\"wpgmza_gdpr_retention_purpose\":\"displaying map tiles, geocoding addresses and calculating and display directions.\",\"wpgmza_settings_marker_pull\":\"0\"}', 'yes'),
(675, 'WPGMZA_OTHER_SETTINGS', 'a:11:{s:26:\"wpgmza_google_maps_api_key\";s:39:\"AIzaSyANJYw2zO1FQkMxiSYSfVZrngIsUJ6EeVw\";s:6:\"engine\";s:11:\"google-maps\";s:19:\"google_maps_api_key\";b:0;s:19:\"default_marker_icon\";s:59:\"//maps.gstatic.com/mapfiles/api-3/images/spotlight-poi2.png\";s:14:\"developer_mode\";b:0;s:20:\"user_interface_style\";s:7:\"default\";s:19:\"wpgmza_gdpr_enabled\";i:1;s:26:\"wpgmza_gdpr_default_notice\";s:1954:\"<p>\n	I agree for my personal data to be processed by <span name=\"wpgmza_gdpr_company_name\"></span>, for the purpose(s) of <span name=\"wpgmza_gdpr_retention_purpose\"></span>.\n</p>\n\n<p>	\n	I agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and	generating directions.\n</p>\n<p>\n	Some visual components of WP Google Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\n</p>\n<p>\n	WP Google Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the \"state\" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Google Maps transmit this information.\n</p>\n<p>\n	Please <a href=\"https://developers.google.com/maps/terms\">see here</a> and <a href=\"https://maps.google.com/help/terms_maps.html\">here</a> for Google\'s terms. Please also see <a href=\"https://policies.google.com/privacy?hl=en-GB&amp;gl=uk\">Google\'s Privacy Policy</a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\n</p>\n<p>\n	Where this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\n</p>\";s:24:\"wpgmza_gdpr_company_name\";s:16:\"Western Sizzling\";s:29:\"wpgmza_gdpr_retention_purpose\";s:81:\"displaying map tiles, geocoding addresses and calculating and display directions.\";s:27:\"wpgmza_settings_marker_pull\";s:1:\"0\";}', 'yes'),
(676, 'wpgmza_temp_api', 'AIzaSyDjyYKnTqGG2CAF9nmrfB6zgTBE6oPhMk4', 'yes'),
(677, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(678, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(679, 'wpgmaps_current_version', '8.0.1', 'yes'),
(680, 'WPGM_V6_FIRST_TIME', '1', 'yes'),
(681, 'widget_wpgmza_map_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(682, 'WPGMZA_FIRST_TIME', '8.0.1', 'yes'),
(683, 'wpgmza_stats', 'a:4:{s:14:\"settings_basic\";a:3:{s:5:\"views\";i:4;s:13:\"last_accessed\";s:19:\"2019-10-08 20:00:17\";s:14:\"first_accessed\";s:19:\"2019-10-08 18:28:05\";}s:15:\"list_maps_basic\";a:3:{s:5:\"views\";i:3;s:13:\"last_accessed\";s:19:\"2019-10-08 20:04:33\";s:14:\"first_accessed\";s:19:\"2019-10-08 18:39:58\";}s:9:\"dashboard\";a:3:{s:5:\"views\";i:3;s:13:\"last_accessed\";s:19:\"2019-10-08 20:04:37\";s:14:\"first_accessed\";s:19:\"2019-10-08 18:40:05\";}s:13:\"support_basic\";a:3:{s:5:\"views\";i:1;s:13:\"last_accessed\";s:19:\"2019-10-08 20:02:45\";s:14:\"first_accessed\";s:19:\"2019-10-08 20:02:45\";}}', 'yes'),
(684, 'wpgmza_google_maps_api_key', 'AIzaSyANJYw2zO1FQkMxiSYSfVZrngIsUJ6EeVw', 'yes'),
(685, 'WPGMZA_SETTINGS', 'a:10:{s:24:\"map_default_starting_lat\";s:18:\"45.950464398418106\";s:24:\"map_default_starting_lng\";s:19:\"-109.81550500000003\";s:18:\"map_default_height\";s:3:\"400\";s:17:\"map_default_width\";s:3:\"100\";s:16:\"map_default_zoom\";i:2;s:20:\"map_default_max_zoom\";i:1;s:16:\"map_default_type\";i:1;s:21:\"map_default_alignment\";i:1;s:22:\"map_default_width_type\";s:2:\"\\%\";s:23:\"map_default_height_type\";s:2:\"px\";}', 'yes'),
(686, 'wpsl_settings', 'a:92:{s:14:\"api_server_key\";s:39:\"AIzaSyAyo6QywZ1K0-OF2WygucZSY4N6gDh6ABU\";s:15:\"api_browser_key\";s:39:\"AIzaSyByXmc8FOmVwBxfGhszc9zKph45sMmJul4\";s:12:\"api_language\";s:2:\"en\";s:10:\"api_region\";s:0:\"\";s:21:\"api_geocode_component\";i:0;s:12:\"autocomplete\";i:0;s:16:\"results_dropdown\";i:1;s:15:\"radius_dropdown\";i:1;s:15:\"category_filter\";i:0;s:20:\"category_filter_type\";s:8:\"dropdown\";s:13:\"distance_unit\";s:2:\"mi\";s:11:\"max_results\";s:14:\"[25],50,75,100\";s:13:\"search_radius\";s:22:\"10,25,[50],100,200,500\";s:16:\"force_postalcode\";i:0;s:10:\"zoom_level\";i:3;s:15:\"auto_zoom_level\";s:2:\"15\";s:10:\"start_name\";s:66:\"2688 David H McLeod Boulevard, Florence, South Carolina 29501, USA\";s:12:\"start_latlng\";s:20:\"34.188755,-79.834445\";s:13:\"run_fitbounds\";i:1;s:8:\"map_type\";s:7:\"roadmap\";s:11:\"auto_locate\";i:1;s:8:\"autoload\";i:1;s:14:\"autoload_limit\";i:50;s:10:\"streetview\";i:0;s:12:\"type_control\";i:0;s:11:\"scrollwheel\";i:1;s:16:\"control_position\";s:4:\"left\";s:9:\"map_style\";s:2:\"\"\"\";s:11:\"template_id\";s:7:\"default\";s:15:\"marker_clusters\";i:0;s:12:\"cluster_zoom\";i:0;s:12:\"cluster_size\";i:0;s:6:\"height\";s:3:\"350\";s:16:\"infowindow_width\";s:3:\"225\";s:12:\"search_width\";s:3:\"179\";s:11:\"label_width\";s:2:\"95\";s:10:\"new_window\";i:0;s:9:\"reset_map\";i:0;s:23:\"listing_below_no_scroll\";i:0;s:18:\"direction_redirect\";i:0;s:9:\"more_info\";i:0;s:9:\"store_url\";i:0;s:9:\"phone_url\";i:0;s:17:\"marker_streetview\";i:0;s:14:\"marker_zoom_to\";i:0;s:11:\"mouse_focus\";i:0;s:20:\"show_contact_details\";i:0;s:25:\"clickable_contact_details\";i:0;s:12:\"hide_country\";i:0;s:13:\"hide_distance\";i:0;s:13:\"marker_effect\";s:6:\"bounce\";s:14:\"address_format\";s:14:\"city_state_zip\";s:18:\"more_info_location\";s:11:\"info window\";s:16:\"infowindow_style\";s:7:\"default\";s:12:\"start_marker\";s:7:\"red.png\";s:12:\"store_marker\";s:8:\"blue.png\";s:14:\"editor_country\";s:0:\"\";s:15:\"editor_map_type\";s:7:\"roadmap\";s:10:\"hide_hours\";i:0;s:17:\"editor_hour_input\";s:8:\"dropdown\";s:18:\"editor_hour_format\";i:12;s:12:\"editor_hours\";a:1:{s:8:\"dropdown\";a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";a:0:{}s:6:\"sunday\";a:0:{}}}s:10:\"permalinks\";i:0;s:22:\"permalink_remove_front\";i:0;s:14:\"permalink_slug\";s:6:\"stores\";s:13:\"category_slug\";s:14:\"store-category\";s:12:\"search_label\";s:13:\"Your location\";s:16:\"search_btn_label\";s:6:\"Search\";s:15:\"preloader_label\";s:12:\"Searching...\";s:12:\"radius_label\";s:13:\"Search radius\";s:16:\"no_results_label\";s:16:\"No results found\";s:13:\"results_label\";s:7:\"Results\";s:10:\"more_label\";s:9:\"More info\";s:16:\"directions_label\";s:10:\"Directions\";s:19:\"no_directions_label\";s:58:\"No route could be found between the origin and destination\";s:10:\"back_label\";s:4:\"Back\";s:17:\"street_view_label\";s:11:\"Street view\";s:15:\"zoom_here_label\";s:9:\"Zoom here\";s:11:\"error_label\";s:39:\"Something went wrong, please try again!\";s:11:\"phone_label\";s:5:\"Phone\";s:9:\"fax_label\";s:3:\"Fax\";s:11:\"email_label\";s:5:\"Email\";s:9:\"url_label\";s:3:\"Url\";s:11:\"hours_label\";s:5:\"Hours\";s:11:\"start_label\";s:14:\"Start location\";s:11:\"limit_label\";s:23:\"API usage limit reached\";s:14:\"category_label\";s:15:\"Category filter\";s:22:\"category_default_label\";s:3:\"Any\";s:12:\"show_credits\";i:0;s:5:\"debug\";i:0;s:16:\"deregister_gmaps\";i:0;s:13:\"delay_loading\";i:0;}', 'yes'),
(687, 'wpsl_version', '2.2.231', 'yes'),
(688, 'wpsl_valid_server_key', '1', 'yes'),
(689, 'widget_wpsl_search_widget', 'a:2:{i:2;a:10:{s:8:\"template\";s:7:\"default\";s:5:\"title\";s:0:\"\";s:12:\"search_label\";s:0:\"\";s:18:\"search_placeholder\";s:0:\"\";s:12:\"autocomplete\";s:0:\"\";s:11:\"auto_locate\";s:0:\"\";s:15:\"manually_locate\";s:0:\"\";s:15:\"category_filter\";s:0:\"\";s:14:\"category_label\";s:0:\"\";s:7:\"page_id\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(690, 'wpsl_csv_version', '1.2.0', 'yes'),
(691, 'wpsl_csv_iso_fixed', '1', 'yes'),
(692, 'wpsl_csv_manager_license_data', 'a:3:{s:3:\"key\";s:32:\"79a21fa87401145b3f3192ae8e4a3525\";s:10:\"expiration\";s:19:\"2020-10-08 23:59:59\";s:6:\"status\";s:5:\"valid\";}', 'yes'),
(693, 'wpsl_search_widget_license_data', 'a:3:{s:3:\"key\";s:32:\"1e644bb09de1c95df080bc1b3b37718d\";s:10:\"expiration\";s:19:\"2020-10-08 23:59:59\";s:6:\"status\";s:5:\"valid\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(694, 'edd_sl_c9fde39f179087f5ffd011f417fc9403', 'a:2:{s:7:\"timeout\";i:1570622415;s:5:\"value\";s:8307:\"{\"new_version\":\"1.2.0\",\"stable_version\":\"1.2.0\",\"name\":\"CSV Manager\",\"slug\":\"wp-store-locator-csv\",\"url\":\"https:\\/\\/wpstorelocator.co\\/add-ons\\/csv-manager\\/?changelog=1\",\"last_updated\":\"2017-12-27 08:23:22\",\"homepage\":\"https:\\/\\/wpstorelocator.co\\/add-ons\\/csv-manager\\/\",\"package\":\"https:\\/\\/wpstorelocator.co\\/edd-sl\\/package_download\\/MTU3MDg3MDgxNTo3OWEyMWZhODc0MDExNDViM2YzMTkyYWU4ZTRhMzUyNTozMDAxOmQxMmE4MjE5NWY3ZTVjZTkyNDAzMWE2OGZhZTEyNDU3Omh0dHBALy93c2NvcnBvcmF0ZS53cGVuZ2luZS5jb206MA==\",\"download_link\":\"https:\\/\\/wpstorelocator.co\\/edd-sl\\/package_download\\/MTU3MDg3MDgxNTo3OWEyMWZhODc0MDExNDViM2YzMTkyYWU4ZTRhMzUyNTozMDAxOmQxMmE4MjE5NWY3ZTVjZTkyNDAzMWE2OGZhZTEyNDU3Omh0dHBALy93c2NvcnBvcmF0ZS53cGVuZ2luZS5jb206MA==\",\"sections\":{\"description\":\"<p>Import, export and update your locations using a CSV file.<\\/p>\\n\",\"changelog\":\"<p><strong>Version 1.2.0 - December 26, 2017<\\/strong><\\/p>\\n<ul>\\n<li>Added: Show a preview of the CSV data on the mapping screen.<\\/li>\\n<li>Added: Make it possible to check for duplicate locations on import. A location is a duplicate when the name, address and city match with existing location data.<\\/li>\\n<li>Added: If only the wpsl_id is set in the imported csv file, then the matching locations are deleted from the database.<\\/li>\\n<li>Added: A wpsl_csv_skip_required_check filter to optionally disable the check if the required fields are set.<\\/li>\\n<li>Added: Support to import tags ( the WPSL plugin itself will have support to filter the search results by tags with the 2.3 update ).<\\/li>\\n<li>Added: A wpsl_csv_filter_options filter to make it possible to include custom dropdown filters on the export page.<\\/li>\\n<li>Changed: Automatically flush the auto load transient cache after importing new location.<\\/li>\\n<li>Changed: Call wp_defer_term_counting & wp_defer_comment_counting to improve the import performance for large amount of locations.<\\/li>\\n<li>Changed: The notice after the import now shows the amount of imported, updated, removed or skipped locations.<\\/li>\\n<li>Changed: Minified the CSS\\/JS files loaded in the admin area.<\\/li>\\n<li>Fixed: A problem with the country iso codes using an invalid data format since the 2.2.10 update from the WP Store Locator plugin.<\\/li>\\n<\\/ul>\\n<p><strong>Version 1.1.3 - November 10, 2017<\\/strong><\\/p>\\n<ul>\\n<li>Fixed: Compatibility issue with PHP 7.1+.<\\/li>\\n<li>Fixed: Spaces in CSV headers breaking the field mapping.<\\/li>\\n<\\/ul>\\n<p><strong>Version 1.1.2 - February 22, 2017<\\/strong><\\/p>\\n<ul>\\n<li>Fixed: Prevented the import from breaking on hosts that uses object caching.<\\/li>\\n<\\/ul>\\n<p><strong>Version 1.1.1 - November 21, 2016<\\/strong><\\/p>\\n<ul>\\n<li>Fixed: Made sure terms exist before running <a href=\\\"https:\\/\\/developer.wordpress.org\\/reference\\/functions\\/wp_update_term_count_now\\/\\\">wp_update_term_count_now<\\/a>. Otherwise a SQL error shows up when all the locations are bulk deleted. Via <a href=\\\"https:\\/\\/weareokidoki.com\\/\\\">Benjamin Borowski<\\/a>.<\\/li>\\n<\\/ul>\\n<p><strong>Version 1.1.0 - November 6, 2016<\\/strong><\\/p>\\n<ul>\\n<li>Added: A tools section where you can bulk delete all existing locations.<\\/li>\\n<li>Added: The option to export locations by state.<\\/li>\\n<li>Added: Three new capabilities for the <a href=\\\"https:\\/\\/wpstorelocator.co\\/document\\/roles\\/\\\">Store Locator Manager role<\\/a> ( wpsl_csv_manager, wpsl_csv_manager_export and wpsl_csv_manager_tools ) that lets you restrict access to the different sections of the CSV Manager.<\\/li>\\n<li>Added: A check if the required fields ( name, address and city ) are set after uploading the file. If not, then an error notice is shown.<\\/li>\\n<li>Changed: The opening hours are only included in the export file if they are enabled on the WPSL settings page.<\\/li>\\n<li>Changed: Use <a href=\\\"https:\\/\\/developer.wordpress.org\\/reference\\/functions\\/get_sites\\/\\\">get_sites<\\/a> instead of <a href=\\\"https:\\/\\/developer.wordpress.org\\/reference\\/functions\\/wp_get_sites\\/\\\">wp_get_sites<\\/a> for WP 4.6+ sites.<\\/li>\\n<li>Fixed: A foreach error that was triggered by incorrect opening hours data during an export.<\\/li>\\n<\\/ul>\\n<p><strong>Version 1.0.2 - January 25, 2016<\\/strong><\\/p>\\n<ul>\\n<li>Changed: Order the items in the export dropdowns alphabetically.<\\/li>\\n<\\/ul>\\n<p><strong>Version 1.0.1 - January 8, 2016<\\/strong><\\/p>\\n<ul>\\n<li>Fix: PHP 5.2 compatibility issue.<\\/li>\\n<\\/ul>\\n\"},\"banners\":{\"high\":\"\",\"low\":\"\"},\"icons\":{\"1x\":\"https:\\/\\/wpstorelocator.co\\/wp-content\\/uploads\\/edd\\/2015\\/12\\/csv-manager.gif\",\"2x\":\"https:\\/\\/wpstorelocator.co\\/wp-content\\/uploads\\/edd\\/2015\\/12\\/csv-manager.gif\"},\"description\":[\"<p>Import, export and update your locations using a CSV file.<\\/p>\\n\"],\"changelog\":[\"<p><strong>Version 1.2.0 - December 26, 2017<\\/strong><\\/p>\\n<ul>\\n<li>Added: Show a preview of the CSV data on the mapping screen.<\\/li>\\n<li>Added: Make it possible to check for duplicate locations on import. A location is a duplicate when the name, address and city match with existing location data.<\\/li>\\n<li>Added: If only the wpsl_id is set in the imported csv file, then the matching locations are deleted from the database.<\\/li>\\n<li>Added: A wpsl_csv_skip_required_check filter to optionally disable the check if the required fields are set.<\\/li>\\n<li>Added: Support to import tags ( the WPSL plugin itself will have support to filter the search results by tags with the 2.3 update ).<\\/li>\\n<li>Added: A wpsl_csv_filter_options filter to make it possible to include custom dropdown filters on the export page.<\\/li>\\n<li>Changed: Automatically flush the auto load transient cache after importing new location.<\\/li>\\n<li>Changed: Call wp_defer_term_counting & wp_defer_comment_counting to improve the import performance for large amount of locations.<\\/li>\\n<li>Changed: The notice after the import now shows the amount of imported, updated, removed or skipped locations.<\\/li>\\n<li>Changed: Minified the CSS\\/JS files loaded in the admin area.<\\/li>\\n<li>Fixed: A problem with the country iso codes using an invalid data format since the 2.2.10 update from the WP Store Locator plugin.<\\/li>\\n<\\/ul>\\n<p><strong>Version 1.1.3 - November 10, 2017<\\/strong><\\/p>\\n<ul>\\n<li>Fixed: Compatibility issue with PHP 7.1+.<\\/li>\\n<li>Fixed: Spaces in CSV headers breaking the field mapping.<\\/li>\\n<\\/ul>\\n<p><strong>Version 1.1.2 - February 22, 2017<\\/strong><\\/p>\\n<ul>\\n<li>Fixed: Prevented the import from breaking on hosts that uses object caching.<\\/li>\\n<\\/ul>\\n<p><strong>Version 1.1.1 - November 21, 2016<\\/strong><\\/p>\\n<ul>\\n<li>Fixed: Made sure terms exist before running <a href=\\\"https:\\/\\/developer.wordpress.org\\/reference\\/functions\\/wp_update_term_count_now\\/\\\">wp_update_term_count_now<\\/a>. Otherwise a SQL error shows up when all the locations are bulk deleted. Via <a href=\\\"https:\\/\\/weareokidoki.com\\/\\\">Benjamin Borowski<\\/a>.<\\/li>\\n<\\/ul>\\n<p><strong>Version 1.1.0 - November 6, 2016<\\/strong><\\/p>\\n<ul>\\n<li>Added: A tools section where you can bulk delete all existing locations.<\\/li>\\n<li>Added: The option to export locations by state.<\\/li>\\n<li>Added: Three new capabilities for the <a href=\\\"https:\\/\\/wpstorelocator.co\\/document\\/roles\\/\\\">Store Locator Manager role<\\/a> ( wpsl_csv_manager, wpsl_csv_manager_export and wpsl_csv_manager_tools ) that lets you restrict access to the different sections of the CSV Manager.<\\/li>\\n<li>Added: A check if the required fields ( name, address and city ) are set after uploading the file. If not, then an error notice is shown.<\\/li>\\n<li>Changed: The opening hours are only included in the export file if they are enabled on the WPSL settings page.<\\/li>\\n<li>Changed: Use <a href=\\\"https:\\/\\/developer.wordpress.org\\/reference\\/functions\\/get_sites\\/\\\">get_sites<\\/a> instead of <a href=\\\"https:\\/\\/developer.wordpress.org\\/reference\\/functions\\/wp_get_sites\\/\\\">wp_get_sites<\\/a> for WP 4.6+ sites.<\\/li>\\n<li>Fixed: A foreach error that was triggered by incorrect opening hours data during an export.<\\/li>\\n<\\/ul>\\n<p><strong>Version 1.0.2 - January 25, 2016<\\/strong><\\/p>\\n<ul>\\n<li>Changed: Order the items in the export dropdowns alphabetically.<\\/li>\\n<\\/ul>\\n<p><strong>Version 1.0.1 - January 8, 2016<\\/strong><\\/p>\\n<ul>\\n<li>Fix: PHP 5.2 compatibility issue.<\\/li>\\n<\\/ul>\\n\"]}\";}', 'no'),
(695, 'edd_sl_3d7bf8c2130f56b2a20d11a99cb49dd1', 'a:2:{s:7:\"timeout\";i:1570622416;s:5:\"value\";s:5796:\"{\"new_version\":\"1.2.0\",\"stable_version\":\"1.2.0\",\"name\":\"Search Widget\",\"slug\":\"wp-store-locator-widget\",\"url\":\"https:\\/\\/wpstorelocator.co\\/add-ons\\/search-widget\\/?changelog=1\",\"last_updated\":\"2018-12-15 10:07:05\",\"homepage\":\"https:\\/\\/wpstorelocator.co\\/add-ons\\/search-widget\\/\",\"package\":\"https:\\/\\/wpstorelocator.co\\/edd-sl\\/package_download\\/MTU3MDg3MDgxNjoxZTY0NGJiMDlkZTFjOTVkZjA4MGJjMWIzYjM3NzE4ZDoyOTkzOjIzNDUwM2Q0YjBiODU1MDViMzZjOWQwMjgzOGQwY2I4Omh0dHBALy93c2NvcnBvcmF0ZS53cGVuZ2luZS5jb206MA==\",\"download_link\":\"https:\\/\\/wpstorelocator.co\\/edd-sl\\/package_download\\/MTU3MDg3MDgxNjoxZTY0NGJiMDlkZTFjOTVkZjA4MGJjMWIzYjM3NzE4ZDoyOTkzOjIzNDUwM2Q0YjBiODU1MDViMzZjOWQwMjgzOGQwY2I4Omh0dHBALy93c2NvcnBvcmF0ZS53cGVuZ2luZS5jb206MA==\",\"sections\":{\"description\":\"<p>Enable users to search from a widget for nearby store locations. Shows the results on the store locator page.<\\/p>\\n\",\"changelog\":\"<p><strong>Version 1.2.0 - December 15, 2018<\\/strong><\\/p>\\n<ul>\\n<li>Added: Support for a [wpsl_widget] <a href=\\\"https:\\/\\/wpstorelocator.co\\/document\\/search-widget\\/#shortcode\\\">shortcode<\\/a>.<\\/li>\\n<li>Added: Included an option on the widget config page that optionally makes a locate me icon show up next to the submit button.<\\/li>\\n<li>Added: A <a href=\\\"https:\\/\\/wpstorelocator.co\\/document\\/search-widget\\/#custom-template\\\">template system<\\/a> that allows you to load a custom widget template from another folder.<\\/li>\\n<li>Added: A check for an empty input field when the widget is submitted.<\\/li>\\n<li>Added: Placed a wpsl-widget-submit ID on the widget submit button.<\\/li>\\n<li>Changed: If a site does not use HTTPS, then a notice is shown below the Attempt to auto-locate the user? option saying HTTPS is required to use that option.<\\/li>\\n<li>Changed: Replaced the usage of <a href=\\\"https:\\/\\/developer.wordpress.org\\/reference\\/functions\\/is_user_logged_in\\/\\\">is_user_loggedin<\\/a> with <a href=\\\"https:\\/\\/codex.wordpress.org\\/Function_Reference\\/current_user_can\\\">current_user_can<\\/a> before a warning is shown.<\\/li>\\n<li>Changed: Increased the default geolocation timeout so it now matches with the value used in the store locator itself.<\\/li>\\n<li>Changed: Updated the language files.<\\/li>\\n<\\/ul>\\n<p><strong>Version 1.1.1 - October 31, 2017<\\/strong><\\/p>\\n<ul>\\n<li>Fixed: Compatibility issue with PHP 7.1+.<\\/li>\\n<\\/ul>\\n<p><strong>Version 1.1.0 - May 16, 2017<\\/strong><\\/p>\\n<ul>\\n<li>Added: The option to enable autocomplete.<\\/li>\\n<li>Added: The option to auto-locate the users location.<\\/li>\\n<li>Added: A <a href=\\\"https:\\/\\/wpstorelocator.co\\/document\\/wpsl_geolocation_filter_pattern\\/\\\">wpsl_geolocation_filter_pattern<\\/a> filter that allows you to modify the shown location details in the search input field.<\\/li>\\n<li>Changed: The Any text used in the category dropdown now automatically uses the value set in the labels section on the WPSL <a href=\\\"https:\\/\\/wpstorelocator.co\\/document\\/configure-wp-store-locator\\/#labels\\\">settings<\\/a> page.<\\/li>\\n<\\/ul>\\n<p><strong>Version 1.0.1 - March 7, 2016<\\/strong><\\/p>\\n<ul>\\n<li>Fixed: Problem with the loading of the translation files.<\\/li>\\n<\\/ul>\\n\"},\"banners\":{\"high\":\"\",\"low\":\"\"},\"icons\":{\"1x\":\"https:\\/\\/wpstorelocator.co\\/wp-content\\/uploads\\/edd\\/2015\\/12\\/search-widget.gif\",\"2x\":\"https:\\/\\/wpstorelocator.co\\/wp-content\\/uploads\\/edd\\/2015\\/12\\/search-widget.gif\"},\"description\":[\"<p>Enable users to search from a widget for nearby store locations. Shows the results on the store locator page.<\\/p>\\n\"],\"changelog\":[\"<p><strong>Version 1.2.0 - December 15, 2018<\\/strong><\\/p>\\n<ul>\\n<li>Added: Support for a [wpsl_widget] <a href=\\\"https:\\/\\/wpstorelocator.co\\/document\\/search-widget\\/#shortcode\\\">shortcode<\\/a>.<\\/li>\\n<li>Added: Included an option on the widget config page that optionally makes a locate me icon show up next to the submit button.<\\/li>\\n<li>Added: A <a href=\\\"https:\\/\\/wpstorelocator.co\\/document\\/search-widget\\/#custom-template\\\">template system<\\/a> that allows you to load a custom widget template from another folder.<\\/li>\\n<li>Added: A check for an empty input field when the widget is submitted.<\\/li>\\n<li>Added: Placed a wpsl-widget-submit ID on the widget submit button.<\\/li>\\n<li>Changed: If a site does not use HTTPS, then a notice is shown below the Attempt to auto-locate the user? option saying HTTPS is required to use that option.<\\/li>\\n<li>Changed: Replaced the usage of <a href=\\\"https:\\/\\/developer.wordpress.org\\/reference\\/functions\\/is_user_logged_in\\/\\\">is_user_loggedin<\\/a> with <a href=\\\"https:\\/\\/codex.wordpress.org\\/Function_Reference\\/current_user_can\\\">current_user_can<\\/a> before a warning is shown.<\\/li>\\n<li>Changed: Increased the default geolocation timeout so it now matches with the value used in the store locator itself.<\\/li>\\n<li>Changed: Updated the language files.<\\/li>\\n<\\/ul>\\n<p><strong>Version 1.1.1 - October 31, 2017<\\/strong><\\/p>\\n<ul>\\n<li>Fixed: Compatibility issue with PHP 7.1+.<\\/li>\\n<\\/ul>\\n<p><strong>Version 1.1.0 - May 16, 2017<\\/strong><\\/p>\\n<ul>\\n<li>Added: The option to enable autocomplete.<\\/li>\\n<li>Added: The option to auto-locate the users location.<\\/li>\\n<li>Added: A <a href=\\\"https:\\/\\/wpstorelocator.co\\/document\\/wpsl_geolocation_filter_pattern\\/\\\">wpsl_geolocation_filter_pattern<\\/a> filter that allows you to modify the shown location details in the search input field.<\\/li>\\n<li>Changed: The Any text used in the category dropdown now automatically uses the value set in the labels section on the WPSL <a href=\\\"https:\\/\\/wpstorelocator.co\\/document\\/configure-wp-store-locator\\/#labels\\\">settings<\\/a> page.<\\/li>\\n<\\/ul>\\n<p><strong>Version 1.0.1 - March 7, 2016<\\/strong><\\/p>\\n<ul>\\n<li>Fixed: Problem with the loading of the translation files.<\\/li>\\n<\\/ul>\\n\"]}\";}', 'no'),
(696, 'wpsl_notices', 'a:0:{}', 'yes'),
(697, 'wpsl_delete_transient', '0', 'yes'),
(699, 'wpsdb_error_log', '********************************************\n******  Log date: 2019/10/09 09:05:42 ******\n********************************************\n\nWPSDB Error: Unable to connect to the remote server, please check the connection details - 405 Method Not Allowed (#129 - scope: ajax_verify_connection_to_remote_site)\n\nAttempted to connect to: http://western-sizzling-corporate.lndo.site/wp-admin/admin-ajax.php\n\nArray\n(\n    [headers] => Requests_Utility_CaseInsensitiveDictionary Object\n        (\n            [data:protected] => Array\n                (\n                    [server] => nginx\n                    [date] => Wed, 09 Oct 2019 09:05:42 GMT\n                    [content-type] => text/html\n                    [content-length] => 166\n                )\n\n        )\n\n    [body] => <html>\r\n<head><title>405 Not Allowed</title></head>\r\n<body bgcolor=\"white\">\r\n<center><h1>405 Not Allowed</h1></center>\r\n<hr><center>nginx</center>\r\n</body>\r\n</html>\r\n\n    [response] => Array\n        (\n            [code] => 405\n            [message] => Method Not Allowed\n        )\n\n    [cookies] => Array\n        (\n        )\n\n    [filename] => \n    [http_response] => WP_HTTP_Requests_Response Object\n        (\n            [response:protected] => Requests_Response Object\n                (\n                    [body] => <html>\r\n<head><title>405 Not Allowed</title></head>\r\n<body bgcolor=\"white\">\r\n<center><h1>405 Not Allowed</h1></center>\r\n<hr><center>nginx</center>\r\n</body>\r\n</html>\r\n\n                    [raw] => HTTP/1.1 405 Not Allowed\r\nServer: nginx\r\nDate: Wed, 09 Oct 2019 09:05:42 GMT\r\nContent-Type: text/html\r\nContent-Length: 166\r\nConnection: close\r\n\r\n<html>\r\n<head><title>405 Not Allowed</title></head>\r\n<body bgcolor=\"white\">\r\n<center><h1>405 Not Allowed</h1></center>\r\n<hr><center>nginx</center>\r\n</body>\r\n</html>\r\n\n                    [headers] => Requests_Response_Headers Object\n                        (\n                            [data:protected] => Array\n                                (\n                                    [server] => Array\n                                        (\n                                            [0] => nginx\n                                        )\n\n                                    [date] => Array\n                                        (\n                                            [0] => Wed, 09 Oct 2019 09:05:42 GMT\n                                        )\n\n                                    [content-type] => Array\n                                        (\n                                            [0] => text/html\n                                        )\n\n                                    [content-length] => Array\n                                        (\n                                            [0] => 166\n                                        )\n\n                                )\n\n                        )\n\n                    [status_code] => 405\n                    [protocol_version] => 1.1\n                    [success] => \n                    [redirects] => 0\n                    [url] => http://western-sizzling-corporate.lndo.site/wp-admin/admin-ajax.php\n                    [history] => Array\n                        (\n                        )\n\n                    [cookies] => Requests_Cookie_Jar Object\n                        (\n                            [cookies:protected] => Array\n                                (\n                                )\n\n                        )\n\n                )\n\n            [filename:protected] => \n            [data] => \n            [headers] => \n            [status] => \n        )\n\n)\n\n\n', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1569604680:1'),
(4, 3, '_wp_trash_meta_status', 'draft'),
(5, 3, '_wp_trash_meta_time', '1569822727'),
(6, 3, '_wp_desired_post_slug', 'privacy-policy'),
(7, 2, '_wp_trash_meta_status', 'publish'),
(8, 2, '_wp_trash_meta_time', '1569822729'),
(9, 2, '_wp_desired_post_slug', 'sample-page'),
(10, 1, '_wp_trash_meta_status', 'publish'),
(11, 1, '_wp_trash_meta_time', '1569822800'),
(12, 1, '_wp_desired_post_slug', 'hello-world'),
(13, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(14, 5, '_wp_trash_meta_status', 'publish'),
(15, 5, '_wp_trash_meta_time', '1569823064'),
(16, 5, '_wp_desired_post_slug', 'test'),
(17, 11, '_edit_last', '1'),
(18, 11, '_wp_page_template', 'default'),
(19, 11, '_edit_lock', '1570554076:1'),
(20, 13, '_edit_last', '1'),
(21, 13, '_wp_page_template', 'default'),
(22, 13, '_edit_lock', '1570522755:1'),
(23, 15, '_edit_last', '1'),
(24, 15, '_wp_page_template', 'default'),
(25, 15, '_edit_lock', '1570521656:1'),
(26, 17, '_edit_last', '1'),
(27, 17, '_wp_page_template', 'default'),
(28, 17, '_edit_lock', '1570521669:1'),
(29, 19, '_edit_last', '1'),
(30, 19, '_wp_page_template', 'default'),
(31, 19, '_edit_lock', '1569822974:1'),
(32, 21, '_edit_last', '1'),
(33, 21, '_wp_page_template', 'default'),
(34, 21, '_edit_lock', '1570521662:1'),
(35, 23, '_edit_last', '1'),
(36, 23, '_wp_page_template', 'default'),
(37, 23, '_edit_lock', '1570522995:1'),
(38, 25, '_edit_last', '1'),
(39, 25, '_wp_page_template', 'default'),
(40, 25, '_edit_lock', '1570598228:1'),
(41, 27, '_menu_item_type', 'custom'),
(42, 27, '_menu_item_menu_item_parent', '0'),
(43, 27, '_menu_item_object_id', '27'),
(44, 27, '_menu_item_object', 'custom'),
(45, 27, '_menu_item_target', ''),
(46, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 27, '_menu_item_xfn', ''),
(48, 27, '_menu_item_url', 'http://western-sizzling-corporate.lndo.site/'),
(49, 27, '_menu_item_orphaned', '1569823205'),
(50, 28, '_menu_item_type', 'post_type'),
(51, 28, '_menu_item_menu_item_parent', '0'),
(52, 28, '_menu_item_object_id', '13'),
(53, 28, '_menu_item_object', 'page'),
(54, 28, '_menu_item_target', ''),
(55, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 28, '_menu_item_xfn', ''),
(57, 28, '_menu_item_url', ''),
(59, 29, '_menu_item_type', 'post_type'),
(60, 29, '_menu_item_menu_item_parent', '0'),
(61, 29, '_menu_item_object_id', '23'),
(62, 29, '_menu_item_object', 'page'),
(63, 29, '_menu_item_target', ''),
(64, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 29, '_menu_item_xfn', ''),
(66, 29, '_menu_item_url', ''),
(68, 30, '_menu_item_type', 'post_type'),
(69, 30, '_menu_item_menu_item_parent', '0'),
(70, 30, '_menu_item_object_id', '15'),
(71, 30, '_menu_item_object', 'page'),
(72, 30, '_menu_item_target', ''),
(73, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(74, 30, '_menu_item_xfn', ''),
(75, 30, '_menu_item_url', ''),
(77, 31, '_menu_item_type', 'post_type'),
(78, 31, '_menu_item_menu_item_parent', '0'),
(79, 31, '_menu_item_object_id', '11'),
(80, 31, '_menu_item_object', 'page'),
(81, 31, '_menu_item_target', ''),
(82, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(83, 31, '_menu_item_xfn', ''),
(84, 31, '_menu_item_url', ''),
(86, 32, '_menu_item_type', 'post_type'),
(87, 32, '_menu_item_menu_item_parent', '0'),
(88, 32, '_menu_item_object_id', '25'),
(89, 32, '_menu_item_object', 'page'),
(90, 32, '_menu_item_target', ''),
(91, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 32, '_menu_item_xfn', ''),
(93, 32, '_menu_item_url', ''),
(95, 33, '_menu_item_type', 'post_type'),
(96, 33, '_menu_item_menu_item_parent', '0'),
(97, 33, '_menu_item_object_id', '21'),
(98, 33, '_menu_item_object', 'page'),
(99, 33, '_menu_item_target', ''),
(100, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(101, 33, '_menu_item_xfn', ''),
(102, 33, '_menu_item_url', ''),
(104, 34, '_menu_item_type', 'post_type'),
(105, 34, '_menu_item_menu_item_parent', '0'),
(106, 34, '_menu_item_object_id', '17'),
(107, 34, '_menu_item_object', 'page'),
(108, 34, '_menu_item_target', ''),
(109, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(110, 34, '_menu_item_xfn', ''),
(111, 34, '_menu_item_url', ''),
(122, 36, '_wp_trash_meta_status', 'publish'),
(123, 36, '_wp_trash_meta_time', '1569823337'),
(124, 37, '_menu_item_type', 'post_type'),
(125, 37, '_menu_item_menu_item_parent', '0'),
(126, 37, '_menu_item_object_id', '11'),
(127, 37, '_menu_item_object', 'page'),
(128, 37, '_menu_item_target', ''),
(129, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(130, 37, '_menu_item_xfn', ''),
(131, 37, '_menu_item_url', ''),
(133, 38, '_menu_item_type', 'post_type'),
(134, 38, '_menu_item_menu_item_parent', '0'),
(135, 38, '_menu_item_object_id', '13'),
(136, 38, '_menu_item_object', 'page'),
(137, 38, '_menu_item_target', ''),
(138, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(139, 38, '_menu_item_xfn', ''),
(140, 38, '_menu_item_url', ''),
(151, 40, '_menu_item_type', 'post_type'),
(152, 40, '_menu_item_menu_item_parent', '0'),
(153, 40, '_menu_item_object_id', '15'),
(154, 40, '_menu_item_object', 'page'),
(155, 40, '_menu_item_target', ''),
(156, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(157, 40, '_menu_item_xfn', ''),
(158, 40, '_menu_item_url', ''),
(178, 43, '_menu_item_type', 'post_type'),
(179, 43, '_menu_item_menu_item_parent', '0'),
(180, 43, '_menu_item_object_id', '17'),
(181, 43, '_menu_item_object', 'page'),
(182, 43, '_menu_item_target', ''),
(183, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(184, 43, '_menu_item_xfn', ''),
(185, 43, '_menu_item_url', ''),
(196, 45, '_menu_item_type', 'post_type'),
(197, 45, '_menu_item_menu_item_parent', '0'),
(198, 45, '_menu_item_object_id', '25'),
(199, 45, '_menu_item_object', 'page'),
(200, 45, '_menu_item_target', ''),
(201, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(202, 45, '_menu_item_xfn', ''),
(203, 45, '_menu_item_url', ''),
(205, 46, '_menu_item_type', 'post_type'),
(206, 46, '_menu_item_menu_item_parent', '0'),
(207, 46, '_menu_item_object_id', '23'),
(208, 46, '_menu_item_object', 'page'),
(209, 46, '_menu_item_target', ''),
(210, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(211, 46, '_menu_item_xfn', ''),
(212, 46, '_menu_item_url', ''),
(214, 47, '_menu_item_type', 'post_type'),
(215, 47, '_menu_item_menu_item_parent', '0'),
(216, 47, '_menu_item_object_id', '21'),
(217, 47, '_menu_item_object', 'page'),
(218, 47, '_menu_item_target', ''),
(219, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(220, 47, '_menu_item_xfn', ''),
(221, 47, '_menu_item_url', ''),
(231, 19, '_wp_trash_meta_status', 'publish'),
(232, 19, '_wp_trash_meta_time', '1570452865'),
(233, 19, '_wp_desired_post_slug', 'review-us'),
(234, 51, '_menu_item_type', 'custom'),
(235, 51, '_menu_item_menu_item_parent', '0'),
(236, 51, '_menu_item_object_id', '51'),
(237, 51, '_menu_item_object', 'custom'),
(238, 51, '_menu_item_target', ''),
(239, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(240, 51, '_menu_item_xfn', ''),
(241, 51, '_menu_item_url', '#'),
(243, 52, '_menu_item_type', 'custom'),
(244, 52, '_menu_item_menu_item_parent', '0'),
(245, 52, '_menu_item_object_id', '52'),
(246, 52, '_menu_item_object', 'custom'),
(247, 52, '_menu_item_target', ''),
(248, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(249, 52, '_menu_item_xfn', ''),
(250, 52, '_menu_item_url', '#'),
(260, 64, '_wp_attached_file', '2019/10/about2.jpg'),
(261, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:881;s:4:\"file\";s:18:\"2019/10/about2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"about2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"about2-300x129.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"about2-768x330.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"about2-1024x441.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:441;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(262, 13, '_thumbnail_id', '64'),
(263, 65, '_wp_attached_file', '2019/10/buffet_hero.jpg'),
(264, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2100;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2019/10/buffet_hero.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"buffet_hero-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"buffet_hero-300x143.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"buffet_hero-768x366.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:366;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"buffet_hero-1024x488.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:488;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:23:\"Copyright: Kevin Chelko\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(265, 23, '_thumbnail_id', '65'),
(266, 15, '_thumbnail_id', '65'),
(267, 21, '_thumbnail_id', '65'),
(268, 17, '_thumbnail_id', '65'),
(269, 66, '_wp_attached_file', '2019/10/about-us-page.jpg'),
(270, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1640;s:6:\"height\";i:1536;s:4:\"file\";s:25:\"2019/10/about-us-page.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"about-us-page-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"about-us-page-300x281.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:281;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"about-us-page-768x719.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:719;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"about-us-page-1024x959.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:959;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(271, 78, '_edit_lock', '1570556462:1'),
(272, 78, '_edit_last', '1'),
(273, 98, '_wp_attached_file', '2019/10/hero.jpg'),
(274, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:888;s:4:\"file\";s:16:\"2019/10/hero.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"hero-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"hero-300x139.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"hero-768x355.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:355;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"hero-1024x474.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(275, 11, 'background_image', ''),
(276, 11, '_background_image', 'field_5d9c5b0425224'),
(277, 11, 'heading', ''),
(278, 11, '_heading', 'field_5d9c5b3225225'),
(279, 11, 'subheading', ''),
(280, 11, '_subheading', 'field_5d9c5b6a25226'),
(281, 11, 'logos', '5'),
(282, 11, '_logos', 'field_5d9c5ab025222'),
(283, 11, 'verbiage_heading', 'Western Sizzlin Mission'),
(284, 11, '_verbiage_heading', 'field_5d9c5c7925227'),
(285, 11, 'verbiage_text', '<h2 class=\"mb-4\">Western Sizzlin Brand Concept</h2>\r\nThe Western Sizzlin brand concept is based on great steaks. They’re seasoned with our unique Gold Dust and cooked using our famous Flamekist process for a one of a kind juiciness and flavor that keeps folks coming back for more than 50 years. We also serve up chicken, seafood, and buffets of garden goodness to satisfy any appetite in the family. Couple this high quality with an outstanding price and you have what has made us a success. We are the price value leader.'),
(286, 11, '_verbiage_text', 'field_5d9c5ce725228'),
(287, 11, 'card_image', '2'),
(288, 11, '_card_image', 'field_5d9cb6ba240ee'),
(289, 11, 'statement_bg_image', '127'),
(290, 11, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(291, 11, 'statement_text', 'Our goal is to provide everyone a great dining experience at a great price!'),
(292, 11, '_statement_text', 'field_5d9c9482f7ca7'),
(293, 11, 'store_finder_background_image', '130'),
(294, 11, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(295, 11, 'store_finder_text', 'Find Western Sizzling Location Near You'),
(296, 11, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(297, 99, 'background_image', ''),
(298, 99, '_background_image', 'field_5d9c5b0425224'),
(299, 99, 'heading', ''),
(300, 99, '_heading', 'field_5d9c5b3225225'),
(301, 99, 'subheading', ''),
(302, 99, '_subheading', 'field_5d9c5b6a25226'),
(303, 99, 'logos', ''),
(304, 99, '_logos', 'field_5d9c5ab025222'),
(305, 99, 'verbiage_heading', ''),
(306, 99, '_verbiage_heading', 'field_5d9c5c7925227'),
(307, 99, 'verbiage_text', ''),
(308, 99, '_verbiage_text', 'field_5d9c5ce725228'),
(309, 99, 'card_image', ''),
(310, 99, '_card_image', 'field_5d9c5d531eb3c'),
(311, 99, 'statement_bg_image', ''),
(312, 99, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(313, 99, 'statement_text', ''),
(314, 99, '_statement_text', 'field_5d9c9482f7ca7'),
(315, 99, 'store_finder_background_image', ''),
(316, 99, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(317, 99, 'store_finder_text', ''),
(318, 99, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(319, 11, 'hero_background_image', '98'),
(320, 11, '_hero_background_image', 'field_5d9c5b0425224'),
(321, 11, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(322, 11, '_hero_heading', 'field_5d9c5b3225225'),
(323, 11, 'hero_subheading', 'SINCE 1962'),
(324, 11, '_hero_subheading', 'field_5d9c5b6a25226'),
(325, 100, 'background_image', ''),
(326, 100, '_background_image', 'field_5d9c5b0425224'),
(327, 100, 'heading', ''),
(328, 100, '_heading', 'field_5d9c5b3225225'),
(329, 100, 'subheading', ''),
(330, 100, '_subheading', 'field_5d9c5b6a25226'),
(331, 100, 'logos', ''),
(332, 100, '_logos', 'field_5d9c5ab025222'),
(333, 100, 'verbiage_heading', ''),
(334, 100, '_verbiage_heading', 'field_5d9c5c7925227'),
(335, 100, 'verbiage_text', ''),
(336, 100, '_verbiage_text', 'field_5d9c5ce725228'),
(337, 100, 'card_image', ''),
(338, 100, '_card_image', 'field_5d9c5d531eb3c'),
(339, 100, 'statement_bg_image', ''),
(340, 100, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(341, 100, 'statement_text', ''),
(342, 100, '_statement_text', 'field_5d9c9482f7ca7'),
(343, 100, 'store_finder_background_image', ''),
(344, 100, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(345, 100, 'store_finder_text', ''),
(346, 100, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(347, 100, 'hero_background_image', '98'),
(348, 100, '_hero_background_image', 'field_5d9c5b0425224'),
(349, 100, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(350, 100, '_hero_heading', 'field_5d9c5b3225225'),
(351, 100, 'hero_subheading', 'SINCE 1962'),
(352, 100, '_hero_subheading', 'field_5d9c5b6a25226'),
(353, 101, '_wp_attached_file', '2019/10/NewGAlogoColor.png'),
(354, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:26:\"2019/10/NewGAlogoColor.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"NewGAlogoColor-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"NewGAlogoColor-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(355, 102, '_wp_attached_file', '2019/10/QuincysLogoNoGrill.png'),
(356, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:30:\"2019/10/QuincysLogoNoGrill.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"QuincysLogoNoGrill-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"QuincysLogoNoGrill-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(357, 103, '_wp_attached_file', '2019/10/WGLogo.png'),
(358, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:18:\"2019/10/WGLogo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"WGLogo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"WGLogo-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(359, 104, '_wp_attached_file', '2019/10/WSEXPRESS7.png'),
(360, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:22:\"2019/10/WSEXPRESS7.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"WSEXPRESS7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"WSEXPRESS7-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(361, 105, '_wp_attached_file', '2019/10/WSLogo3D.png'),
(362, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2019/10/WSLogo3D.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"WSLogo3D-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"WSLogo3D-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(363, 11, 'logos_0_logo', '101'),
(364, 11, '_logos_0_logo', 'field_5d9c5abe25223'),
(365, 11, 'logos_1_logo', '102'),
(366, 11, '_logos_1_logo', 'field_5d9c5abe25223'),
(367, 11, 'logos_2_logo', '103'),
(368, 11, '_logos_2_logo', 'field_5d9c5abe25223'),
(369, 11, 'logos_3_logo', '104'),
(370, 11, '_logos_3_logo', 'field_5d9c5abe25223'),
(371, 11, 'logos_4_logo', '105'),
(372, 11, '_logos_4_logo', 'field_5d9c5abe25223'),
(373, 106, 'background_image', ''),
(374, 106, '_background_image', 'field_5d9c5b0425224'),
(375, 106, 'heading', ''),
(376, 106, '_heading', 'field_5d9c5b3225225'),
(377, 106, 'subheading', ''),
(378, 106, '_subheading', 'field_5d9c5b6a25226'),
(379, 106, 'logos', '5'),
(380, 106, '_logos', 'field_5d9c5ab025222'),
(381, 106, 'verbiage_heading', ''),
(382, 106, '_verbiage_heading', 'field_5d9c5c7925227'),
(383, 106, 'verbiage_text', ''),
(384, 106, '_verbiage_text', 'field_5d9c5ce725228'),
(385, 106, 'card_image', ''),
(386, 106, '_card_image', 'field_5d9c5d531eb3c'),
(387, 106, 'statement_bg_image', ''),
(388, 106, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(389, 106, 'statement_text', ''),
(390, 106, '_statement_text', 'field_5d9c9482f7ca7'),
(391, 106, 'store_finder_background_image', ''),
(392, 106, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(393, 106, 'store_finder_text', ''),
(394, 106, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(395, 106, 'hero_background_image', '98'),
(396, 106, '_hero_background_image', 'field_5d9c5b0425224'),
(397, 106, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(398, 106, '_hero_heading', 'field_5d9c5b3225225'),
(399, 106, 'hero_subheading', 'SINCE 1962'),
(400, 106, '_hero_subheading', 'field_5d9c5b6a25226'),
(401, 106, 'logos_0_logo', '101'),
(402, 106, '_logos_0_logo', 'field_5d9c5abe25223'),
(403, 106, 'logos_1_logo', '102'),
(404, 106, '_logos_1_logo', 'field_5d9c5abe25223'),
(405, 106, 'logos_2_logo', '103'),
(406, 106, '_logos_2_logo', 'field_5d9c5abe25223'),
(407, 106, 'logos_3_logo', '104'),
(408, 106, '_logos_3_logo', 'field_5d9c5abe25223'),
(409, 106, 'logos_4_logo', '105'),
(410, 106, '_logos_4_logo', 'field_5d9c5abe25223'),
(411, 101, '_wp_attachment_image_alt', 'Great American Buffet'),
(412, 107, 'background_image', ''),
(413, 107, '_background_image', 'field_5d9c5b0425224'),
(414, 107, 'heading', ''),
(415, 107, '_heading', 'field_5d9c5b3225225'),
(416, 107, 'subheading', ''),
(417, 107, '_subheading', 'field_5d9c5b6a25226'),
(418, 107, 'logos', '5'),
(419, 107, '_logos', 'field_5d9c5ab025222'),
(420, 107, 'verbiage_heading', ''),
(421, 107, '_verbiage_heading', 'field_5d9c5c7925227'),
(422, 107, 'verbiage_text', ''),
(423, 107, '_verbiage_text', 'field_5d9c5ce725228'),
(424, 107, 'card_image', ''),
(425, 107, '_card_image', 'field_5d9c5d531eb3c'),
(426, 107, 'statement_bg_image', ''),
(427, 107, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(428, 107, 'statement_text', ''),
(429, 107, '_statement_text', 'field_5d9c9482f7ca7'),
(430, 107, 'store_finder_background_image', ''),
(431, 107, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(432, 107, 'store_finder_text', ''),
(433, 107, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(434, 107, 'hero_background_image', '98'),
(435, 107, '_hero_background_image', 'field_5d9c5b0425224'),
(436, 107, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(437, 107, '_hero_heading', 'field_5d9c5b3225225'),
(438, 107, 'hero_subheading', 'SINCE 1962'),
(439, 107, '_hero_subheading', 'field_5d9c5b6a25226'),
(440, 107, 'logos_0_logo', '101'),
(441, 107, '_logos_0_logo', 'field_5d9c5abe25223'),
(442, 107, 'logos_1_logo', '102'),
(443, 107, '_logos_1_logo', 'field_5d9c5abe25223'),
(444, 107, 'logos_2_logo', '103'),
(445, 107, '_logos_2_logo', 'field_5d9c5abe25223'),
(446, 107, 'logos_3_logo', '104'),
(447, 107, '_logos_3_logo', 'field_5d9c5abe25223'),
(448, 107, 'logos_4_logo', '105'),
(449, 107, '_logos_4_logo', 'field_5d9c5abe25223'),
(450, 11, 'verbiage_subheading', '“We are committed to value by providing our guests with a high-quality products, excellent service, and clean environment. We share a mutual dedication to high standards through training, hard work and integrity.”'),
(451, 11, '_verbiage_subheading', 'field_5d9ca4c978fb3'),
(452, 109, 'background_image', ''),
(453, 109, '_background_image', 'field_5d9c5b0425224'),
(454, 109, 'heading', ''),
(455, 109, '_heading', 'field_5d9c5b3225225'),
(456, 109, 'subheading', ''),
(457, 109, '_subheading', 'field_5d9c5b6a25226'),
(458, 109, 'logos', '5'),
(459, 109, '_logos', 'field_5d9c5ab025222'),
(460, 109, 'verbiage_heading', 'Western Sizzlin Mission'),
(461, 109, '_verbiage_heading', 'field_5d9c5c7925227'),
(462, 109, 'verbiage_text', '<h2 class=\"mb-4\">Western Sizzlin Brand Concept</h2>\r\nThe Western Sizzlin brand concept is based on great steaks. They’re seasoned with our unique Gold Dust and cooked using our famous Flamekist process for a one of a kind juiciness and flavor that keeps folks coming back for more than 50 years. We also serve up chicken, seafood and buffets of garden goodness to satisfy any appetite in the family. Couple this high quality with an outstanding price and you have what has made us a success. We are the the price value leader.'),
(463, 109, '_verbiage_text', 'field_5d9c5ce725228'),
(464, 109, 'card_image', ''),
(465, 109, '_card_image', 'field_5d9c5d531eb3c'),
(466, 109, 'statement_bg_image', ''),
(467, 109, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(468, 109, 'statement_text', ''),
(469, 109, '_statement_text', 'field_5d9c9482f7ca7'),
(470, 109, 'store_finder_background_image', ''),
(471, 109, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(472, 109, 'store_finder_text', ''),
(473, 109, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(474, 109, 'hero_background_image', '98'),
(475, 109, '_hero_background_image', 'field_5d9c5b0425224'),
(476, 109, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(477, 109, '_hero_heading', 'field_5d9c5b3225225'),
(478, 109, 'hero_subheading', 'SINCE 1962'),
(479, 109, '_hero_subheading', 'field_5d9c5b6a25226'),
(480, 109, 'logos_0_logo', '101'),
(481, 109, '_logos_0_logo', 'field_5d9c5abe25223'),
(482, 109, 'logos_1_logo', '102'),
(483, 109, '_logos_1_logo', 'field_5d9c5abe25223'),
(484, 109, 'logos_2_logo', '103'),
(485, 109, '_logos_2_logo', 'field_5d9c5abe25223'),
(486, 109, 'logos_3_logo', '104'),
(487, 109, '_logos_3_logo', 'field_5d9c5abe25223'),
(488, 109, 'logos_4_logo', '105'),
(489, 109, '_logos_4_logo', 'field_5d9c5abe25223'),
(490, 109, 'verbiage_subheading', '“We are committed to value by providing our guests with a high-quality products, excellent service, and clean environment. We share a mutual dedication to high standards through training, hard work and integrity.”'),
(491, 109, '_verbiage_subheading', 'field_5d9ca4c978fb3'),
(492, 110, 'background_image', ''),
(493, 110, '_background_image', 'field_5d9c5b0425224'),
(494, 110, 'heading', ''),
(495, 110, '_heading', 'field_5d9c5b3225225'),
(496, 110, 'subheading', ''),
(497, 110, '_subheading', 'field_5d9c5b6a25226'),
(498, 110, 'logos', '5'),
(499, 110, '_logos', 'field_5d9c5ab025222'),
(500, 110, 'verbiage_heading', 'Western Sizzlin Mission'),
(501, 110, '_verbiage_heading', 'field_5d9c5c7925227'),
(502, 110, 'verbiage_text', ''),
(503, 110, '_verbiage_text', 'field_5d9c5ce725228'),
(504, 110, 'card_image', ''),
(505, 110, '_card_image', 'field_5d9c5d531eb3c'),
(506, 110, 'statement_bg_image', ''),
(507, 110, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(508, 110, 'statement_text', ''),
(509, 110, '_statement_text', 'field_5d9c9482f7ca7'),
(510, 110, 'store_finder_background_image', ''),
(511, 110, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(512, 110, 'store_finder_text', ''),
(513, 110, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(514, 110, 'hero_background_image', '98'),
(515, 110, '_hero_background_image', 'field_5d9c5b0425224'),
(516, 110, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(517, 110, '_hero_heading', 'field_5d9c5b3225225'),
(518, 110, 'hero_subheading', 'SINCE 1962'),
(519, 110, '_hero_subheading', 'field_5d9c5b6a25226'),
(520, 110, 'logos_0_logo', '101'),
(521, 110, '_logos_0_logo', 'field_5d9c5abe25223'),
(522, 110, 'logos_1_logo', '102'),
(523, 110, '_logos_1_logo', 'field_5d9c5abe25223'),
(524, 110, 'logos_2_logo', '103'),
(525, 110, '_logos_2_logo', 'field_5d9c5abe25223'),
(526, 110, 'logos_3_logo', '104'),
(527, 110, '_logos_3_logo', 'field_5d9c5abe25223'),
(528, 110, 'logos_4_logo', '105'),
(529, 110, '_logos_4_logo', 'field_5d9c5abe25223'),
(530, 110, 'verbiage_subheading', '“We are committed to value by providing our guests with a high-quality products, excellent service, and clean environment. We share a mutual dedication to high standards through training, hard work and integrity.”'),
(531, 110, '_verbiage_subheading', 'field_5d9ca4c978fb3'),
(532, 111, 'background_image', ''),
(533, 111, '_background_image', 'field_5d9c5b0425224'),
(534, 111, 'heading', ''),
(535, 111, '_heading', 'field_5d9c5b3225225'),
(536, 111, 'subheading', ''),
(537, 111, '_subheading', 'field_5d9c5b6a25226'),
(538, 111, 'logos', '5'),
(539, 111, '_logos', 'field_5d9c5ab025222'),
(540, 111, 'verbiage_heading', 'Western Sizzlin Mission'),
(541, 111, '_verbiage_heading', 'field_5d9c5c7925227'),
(542, 111, 'verbiage_text', '<h2 class=\"mb-4\">Western Sizzlin Brand Concept</h2>\r\nThe Western Sizzlin brand concept is based on great steaks. They’re seasoned with our unique Gold Dust and cooked using our famous Flamekist process for a one of a kind juiciness and flavor that keeps folks coming back for more than 50 years. We also serve up chicken, seafood, and buffets of garden goodness to satisfy any appetite in the family. Couple this high quality with an outstanding price and you have what has made us a success. We are the price value leader.'),
(543, 111, '_verbiage_text', 'field_5d9c5ce725228'),
(544, 111, 'card_image', ''),
(545, 111, '_card_image', 'field_5d9c5d531eb3c'),
(546, 111, 'statement_bg_image', ''),
(547, 111, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(548, 111, 'statement_text', ''),
(549, 111, '_statement_text', 'field_5d9c9482f7ca7'),
(550, 111, 'store_finder_background_image', ''),
(551, 111, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(552, 111, 'store_finder_text', ''),
(553, 111, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(554, 111, 'hero_background_image', '98'),
(555, 111, '_hero_background_image', 'field_5d9c5b0425224'),
(556, 111, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(557, 111, '_hero_heading', 'field_5d9c5b3225225'),
(558, 111, 'hero_subheading', 'SINCE 1962'),
(559, 111, '_hero_subheading', 'field_5d9c5b6a25226'),
(560, 111, 'logos_0_logo', '101'),
(561, 111, '_logos_0_logo', 'field_5d9c5abe25223'),
(562, 111, 'logos_1_logo', '102'),
(563, 111, '_logos_1_logo', 'field_5d9c5abe25223'),
(564, 111, 'logos_2_logo', '103'),
(565, 111, '_logos_2_logo', 'field_5d9c5abe25223'),
(566, 111, 'logos_3_logo', '104'),
(567, 111, '_logos_3_logo', 'field_5d9c5abe25223'),
(568, 111, 'logos_4_logo', '105'),
(569, 111, '_logos_4_logo', 'field_5d9c5abe25223'),
(570, 111, 'verbiage_subheading', '“We are committed to value by providing our guests with a high-quality products, excellent service, and clean environment. We share a mutual dedication to high standards through training, hard work and integrity.”'),
(571, 111, '_verbiage_subheading', 'field_5d9ca4c978fb3'),
(572, 11, 'card_image_0_card_image_single', '113'),
(573, 11, '_card_image_0_card_image_single', 'field_5d9cb6d0240ef'),
(574, 11, 'card_image_0_card_page_link', 'a:3:{s:5:\"title\";s:10:\"Gift Cards\";s:3:\"url\";s:43:\"http://western-sizzling-corporate.lndo.site/gift-cards/\";s:6:\"target\";s:0:\"\";}'),
(575, 11, '_card_image_0_card_page_link', 'field_5d9cb6fa13ae1'),
(576, 112, 'background_image', ''),
(577, 112, '_background_image', 'field_5d9c5b0425224'),
(578, 112, 'heading', ''),
(579, 112, '_heading', 'field_5d9c5b3225225'),
(580, 112, 'subheading', ''),
(581, 112, '_subheading', 'field_5d9c5b6a25226'),
(582, 112, 'logos', '5'),
(583, 112, '_logos', 'field_5d9c5ab025222'),
(584, 112, 'verbiage_heading', 'Western Sizzlin Mission'),
(585, 112, '_verbiage_heading', 'field_5d9c5c7925227'),
(586, 112, 'verbiage_text', '<h2 class=\"mb-4\">Western Sizzlin Brand Concept</h2>\r\nThe Western Sizzlin brand concept is based on great steaks. They’re seasoned with our unique Gold Dust and cooked using our famous Flamekist process for a one of a kind juiciness and flavor that keeps folks coming back for more than 50 years. We also serve up chicken, seafood, and buffets of garden goodness to satisfy any appetite in the family. Couple this high quality with an outstanding price and you have what has made us a success. We are the price value leader.'),
(587, 112, '_verbiage_text', 'field_5d9c5ce725228'),
(588, 112, 'card_image', '1'),
(589, 112, '_card_image', 'field_5d9c5d531eb3c'),
(590, 112, 'statement_bg_image', ''),
(591, 112, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(592, 112, 'statement_text', ''),
(593, 112, '_statement_text', 'field_5d9c9482f7ca7'),
(594, 112, 'store_finder_background_image', ''),
(595, 112, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(596, 112, 'store_finder_text', ''),
(597, 112, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(598, 112, 'hero_background_image', '98'),
(599, 112, '_hero_background_image', 'field_5d9c5b0425224'),
(600, 112, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(601, 112, '_hero_heading', 'field_5d9c5b3225225'),
(602, 112, 'hero_subheading', 'SINCE 1962'),
(603, 112, '_hero_subheading', 'field_5d9c5b6a25226'),
(604, 112, 'logos_0_logo', '101'),
(605, 112, '_logos_0_logo', 'field_5d9c5abe25223'),
(606, 112, 'logos_1_logo', '102'),
(607, 112, '_logos_1_logo', 'field_5d9c5abe25223'),
(608, 112, 'logos_2_logo', '103'),
(609, 112, '_logos_2_logo', 'field_5d9c5abe25223'),
(610, 112, 'logos_3_logo', '104'),
(611, 112, '_logos_3_logo', 'field_5d9c5abe25223'),
(612, 112, 'logos_4_logo', '105'),
(613, 112, '_logos_4_logo', 'field_5d9c5abe25223'),
(614, 112, 'verbiage_subheading', '“We are committed to value by providing our guests with a high-quality products, excellent service, and clean environment. We share a mutual dedication to high standards through training, hard work and integrity.”'),
(615, 112, '_verbiage_subheading', 'field_5d9ca4c978fb3'),
(616, 112, 'card_image_0_card_image_single', ''),
(617, 112, '_card_image_0_card_image_single', 'field_5d9c5d801eb3d'),
(618, 112, 'card_image_0_card_page_link', ''),
(619, 112, '_card_image_0_card_page_link', 'field_5d9c5df81eb3f'),
(620, 113, '_wp_attached_file', '2019/10/GiftCard.jpg'),
(621, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:20:\"2019/10/GiftCard.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"GiftCard-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"GiftCard-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"GiftCard-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"GiftCard-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(622, 113, '_wp_attachment_image_alt', 'Purchase'),
(623, 114, 'background_image', ''),
(624, 114, '_background_image', 'field_5d9c5b0425224'),
(625, 114, 'heading', ''),
(626, 114, '_heading', 'field_5d9c5b3225225'),
(627, 114, 'subheading', ''),
(628, 114, '_subheading', 'field_5d9c5b6a25226'),
(629, 114, 'logos', '5'),
(630, 114, '_logos', 'field_5d9c5ab025222'),
(631, 114, 'verbiage_heading', 'Western Sizzlin Mission'),
(632, 114, '_verbiage_heading', 'field_5d9c5c7925227'),
(633, 114, 'verbiage_text', '<h2 class=\"mb-4\">Western Sizzlin Brand Concept</h2>\r\nThe Western Sizzlin brand concept is based on great steaks. They’re seasoned with our unique Gold Dust and cooked using our famous Flamekist process for a one of a kind juiciness and flavor that keeps folks coming back for more than 50 years. We also serve up chicken, seafood, and buffets of garden goodness to satisfy any appetite in the family. Couple this high quality with an outstanding price and you have what has made us a success. We are the price value leader.'),
(634, 114, '_verbiage_text', 'field_5d9c5ce725228'),
(635, 114, 'card_image', '1'),
(636, 114, '_card_image', 'field_5d9c5d531eb3c'),
(637, 114, 'statement_bg_image', ''),
(638, 114, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(639, 114, 'statement_text', ''),
(640, 114, '_statement_text', 'field_5d9c9482f7ca7'),
(641, 114, 'store_finder_background_image', ''),
(642, 114, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(643, 114, 'store_finder_text', ''),
(644, 114, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(645, 114, 'hero_background_image', '98'),
(646, 114, '_hero_background_image', 'field_5d9c5b0425224'),
(647, 114, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(648, 114, '_hero_heading', 'field_5d9c5b3225225'),
(649, 114, 'hero_subheading', 'SINCE 1962'),
(650, 114, '_hero_subheading', 'field_5d9c5b6a25226'),
(651, 114, 'logos_0_logo', '101'),
(652, 114, '_logos_0_logo', 'field_5d9c5abe25223'),
(653, 114, 'logos_1_logo', '102'),
(654, 114, '_logos_1_logo', 'field_5d9c5abe25223'),
(655, 114, 'logos_2_logo', '103'),
(656, 114, '_logos_2_logo', 'field_5d9c5abe25223'),
(657, 114, 'logos_3_logo', '104'),
(658, 114, '_logos_3_logo', 'field_5d9c5abe25223'),
(659, 114, 'logos_4_logo', '105'),
(660, 114, '_logos_4_logo', 'field_5d9c5abe25223'),
(661, 114, 'verbiage_subheading', '“We are committed to value by providing our guests with a high-quality products, excellent service, and clean environment. We share a mutual dedication to high standards through training, hard work and integrity.”'),
(662, 114, '_verbiage_subheading', 'field_5d9ca4c978fb3'),
(663, 114, 'card_image_0_card_image_single', '113'),
(664, 114, '_card_image_0_card_image_single', 'field_5d9c5d801eb3d'),
(665, 114, 'card_image_0_card_page_link', ''),
(666, 114, '_card_image_0_card_page_link', 'field_5d9c5df81eb3f'),
(667, 115, 'background_image', ''),
(668, 115, '_background_image', 'field_5d9c5b0425224'),
(669, 115, 'heading', ''),
(670, 115, '_heading', 'field_5d9c5b3225225'),
(671, 115, 'subheading', ''),
(672, 115, '_subheading', 'field_5d9c5b6a25226'),
(673, 115, 'logos', '5'),
(674, 115, '_logos', 'field_5d9c5ab025222'),
(675, 115, 'verbiage_heading', 'Western Sizzlin Mission'),
(676, 115, '_verbiage_heading', 'field_5d9c5c7925227'),
(677, 115, 'verbiage_text', '<h2 class=\"mb-4\">Western Sizzlin Brand Concept</h2>\r\nThe Western Sizzlin brand concept is based on great steaks. They’re seasoned with our unique Gold Dust and cooked using our famous Flamekist process for a one of a kind juiciness and flavor that keeps folks coming back for more than 50 years. We also serve up chicken, seafood, and buffets of garden goodness to satisfy any appetite in the family. Couple this high quality with an outstanding price and you have what has made us a success. We are the price value leader.'),
(678, 115, '_verbiage_text', 'field_5d9c5ce725228'),
(679, 115, 'card_image', '1'),
(680, 115, '_card_image', 'field_5d9c5d531eb3c'),
(681, 115, 'statement_bg_image', ''),
(682, 115, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(683, 115, 'statement_text', ''),
(684, 115, '_statement_text', 'field_5d9c9482f7ca7'),
(685, 115, 'store_finder_background_image', ''),
(686, 115, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(687, 115, 'store_finder_text', ''),
(688, 115, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(689, 115, 'hero_background_image', '98'),
(690, 115, '_hero_background_image', 'field_5d9c5b0425224'),
(691, 115, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(692, 115, '_hero_heading', 'field_5d9c5b3225225'),
(693, 115, 'hero_subheading', 'SINCE 1962'),
(694, 115, '_hero_subheading', 'field_5d9c5b6a25226'),
(695, 115, 'logos_0_logo', '101'),
(696, 115, '_logos_0_logo', 'field_5d9c5abe25223'),
(697, 115, 'logos_1_logo', '102'),
(698, 115, '_logos_1_logo', 'field_5d9c5abe25223'),
(699, 115, 'logos_2_logo', '103'),
(700, 115, '_logos_2_logo', 'field_5d9c5abe25223'),
(701, 115, 'logos_3_logo', '104'),
(702, 115, '_logos_3_logo', 'field_5d9c5abe25223'),
(703, 115, 'logos_4_logo', '105'),
(704, 115, '_logos_4_logo', 'field_5d9c5abe25223'),
(705, 115, 'verbiage_subheading', '“We are committed to value by providing our guests with a high-quality products, excellent service, and clean environment. We share a mutual dedication to high standards through training, hard work and integrity.”'),
(706, 115, '_verbiage_subheading', 'field_5d9ca4c978fb3'),
(707, 115, 'card_image_0_card_image_single', '113'),
(708, 115, '_card_image_0_card_image_single', 'field_5d9c5d801eb3d'),
(709, 115, 'card_image_0_card_page_link', 'a:3:{s:5:\"title\";s:10:\"Gift Cards\";s:3:\"url\";s:43:\"http://western-sizzling-corporate.lndo.site/gift-cards/\";s:6:\"target\";s:0:\"\";}'),
(710, 115, '_card_image_0_card_page_link', 'field_5d9c5df81eb3f'),
(711, 11, 'card_image_1_card_image_single', '113'),
(712, 11, '_card_image_1_card_image_single', 'field_5d9cb6d0240ef'),
(713, 11, 'card_image_1_card_page_link', 'a:3:{s:5:\"title\";s:8:\"Purchase\";s:3:\"url\";s:41:\"http://western-sizzling-corporate.lndo.site/purchase/\";s:6:\"target\";s:0:\"\";}'),
(714, 11, '_card_image_1_card_page_link', 'field_5d9cb6fa13ae1'),
(715, 116, 'background_image', ''),
(716, 116, '_background_image', 'field_5d9c5b0425224'),
(717, 116, 'heading', ''),
(718, 116, '_heading', 'field_5d9c5b3225225'),
(719, 116, 'subheading', ''),
(720, 116, '_subheading', 'field_5d9c5b6a25226'),
(721, 116, 'logos', '5'),
(722, 116, '_logos', 'field_5d9c5ab025222'),
(723, 116, 'verbiage_heading', 'Western Sizzlin Mission'),
(724, 116, '_verbiage_heading', 'field_5d9c5c7925227'),
(725, 116, 'verbiage_text', '<h2 class=\"mb-4\">Western Sizzlin Brand Concept</h2>\r\nThe Western Sizzlin brand concept is based on great steaks. They’re seasoned with our unique Gold Dust and cooked using our famous Flamekist process for a one of a kind juiciness and flavor that keeps folks coming back for more than 50 years. We also serve up chicken, seafood, and buffets of garden goodness to satisfy any appetite in the family. Couple this high quality with an outstanding price and you have what has made us a success. We are the price value leader.'),
(726, 116, '_verbiage_text', 'field_5d9c5ce725228'),
(727, 116, 'card_image', '2'),
(728, 116, '_card_image', 'field_5d9c5d531eb3c'),
(729, 116, 'statement_bg_image', ''),
(730, 116, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(731, 116, 'statement_text', ''),
(732, 116, '_statement_text', 'field_5d9c9482f7ca7'),
(733, 116, 'store_finder_background_image', ''),
(734, 116, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(735, 116, 'store_finder_text', ''),
(736, 116, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(737, 116, 'hero_background_image', '98'),
(738, 116, '_hero_background_image', 'field_5d9c5b0425224'),
(739, 116, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(740, 116, '_hero_heading', 'field_5d9c5b3225225'),
(741, 116, 'hero_subheading', 'SINCE 1962'),
(742, 116, '_hero_subheading', 'field_5d9c5b6a25226'),
(743, 116, 'logos_0_logo', '101'),
(744, 116, '_logos_0_logo', 'field_5d9c5abe25223'),
(745, 116, 'logos_1_logo', '102'),
(746, 116, '_logos_1_logo', 'field_5d9c5abe25223'),
(747, 116, 'logos_2_logo', '103'),
(748, 116, '_logos_2_logo', 'field_5d9c5abe25223'),
(749, 116, 'logos_3_logo', '104'),
(750, 116, '_logos_3_logo', 'field_5d9c5abe25223'),
(751, 116, 'logos_4_logo', '105'),
(752, 116, '_logos_4_logo', 'field_5d9c5abe25223'),
(753, 116, 'verbiage_subheading', '“We are committed to value by providing our guests with a high-quality products, excellent service, and clean environment. We share a mutual dedication to high standards through training, hard work and integrity.”'),
(754, 116, '_verbiage_subheading', 'field_5d9ca4c978fb3'),
(755, 116, 'card_image_0_card_image_single', '113'),
(756, 116, '_card_image_0_card_image_single', 'field_5d9c5d801eb3d'),
(757, 116, 'card_image_0_card_page_link', 'a:3:{s:5:\"title\";s:10:\"Gift Cards\";s:3:\"url\";s:43:\"http://western-sizzling-corporate.lndo.site/gift-cards/\";s:6:\"target\";s:0:\"\";}'),
(758, 116, '_card_image_0_card_page_link', 'field_5d9c5df81eb3f'),
(759, 116, 'card_image_1_card_image_single', '113'),
(760, 116, '_card_image_1_card_image_single', 'field_5d9c5d801eb3d'),
(761, 116, 'card_image_1_card_page_link', 'a:3:{s:5:\"title\";s:8:\"Purchase\";s:3:\"url\";s:41:\"http://western-sizzling-corporate.lndo.site/purchase/\";s:6:\"target\";s:0:\"\";}'),
(762, 116, '_card_image_1_card_page_link', 'field_5d9c5df81eb3f'),
(763, 117, 'background_image', ''),
(764, 117, '_background_image', 'field_5d9c5b0425224'),
(765, 117, 'heading', ''),
(766, 117, '_heading', 'field_5d9c5b3225225'),
(767, 117, 'subheading', ''),
(768, 117, '_subheading', 'field_5d9c5b6a25226'),
(769, 117, 'logos', '5'),
(770, 117, '_logos', 'field_5d9c5ab025222'),
(771, 117, 'verbiage_heading', 'Western Sizzlin Mission'),
(772, 117, '_verbiage_heading', 'field_5d9c5c7925227'),
(773, 117, 'verbiage_text', '<h2 class=\"mb-4\">Western Sizzlin Brand Concept</h2>\r\nThe Western Sizzlin brand concept is based on great steaks. They’re seasoned with our unique Gold Dust and cooked using our famous Flamekist process for a one of a kind juiciness and flavor that keeps folks coming back for more than 50 years. We also serve up chicken, seafood, and buffets of garden goodness to satisfy any appetite in the family. Couple this high quality with an outstanding price and you have what has made us a success. We are the price value leader.'),
(774, 117, '_verbiage_text', 'field_5d9c5ce725228'),
(775, 117, 'card_image', '2'),
(776, 117, '_card_image', 'field_5d9c5d531eb3c'),
(777, 117, 'statement_bg_image', ''),
(778, 117, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(779, 117, 'statement_text', ''),
(780, 117, '_statement_text', 'field_5d9c9482f7ca7'),
(781, 117, 'store_finder_background_image', ''),
(782, 117, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(783, 117, 'store_finder_text', ''),
(784, 117, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(785, 117, 'hero_background_image', '98'),
(786, 117, '_hero_background_image', 'field_5d9c5b0425224'),
(787, 117, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(788, 117, '_hero_heading', 'field_5d9c5b3225225'),
(789, 117, 'hero_subheading', 'SINCE 1962'),
(790, 117, '_hero_subheading', 'field_5d9c5b6a25226'),
(791, 117, 'logos_0_logo', '101'),
(792, 117, '_logos_0_logo', 'field_5d9c5abe25223'),
(793, 117, 'logos_1_logo', '102'),
(794, 117, '_logos_1_logo', 'field_5d9c5abe25223'),
(795, 117, 'logos_2_logo', '103'),
(796, 117, '_logos_2_logo', 'field_5d9c5abe25223'),
(797, 117, 'logos_3_logo', '104'),
(798, 117, '_logos_3_logo', 'field_5d9c5abe25223'),
(799, 117, 'logos_4_logo', '105'),
(800, 117, '_logos_4_logo', 'field_5d9c5abe25223'),
(801, 117, 'verbiage_subheading', '“We are committed to value by providing our guests with a high-quality products, excellent service, and clean environment. We share a mutual dedication to high standards through training, hard work and integrity.”'),
(802, 117, '_verbiage_subheading', 'field_5d9ca4c978fb3'),
(803, 117, 'card_image_0_card_image_single', '113'),
(804, 117, '_card_image_0_card_image_single', 'field_5d9c5d801eb3d'),
(805, 117, 'card_image_0_card_page_link', 'a:3:{s:5:\"title\";s:10:\"Gift Cards\";s:3:\"url\";s:43:\"http://western-sizzling-corporate.lndo.site/gift-cards/\";s:6:\"target\";s:0:\"\";}'),
(806, 117, '_card_image_0_card_page_link', 'field_5d9c5df81eb3f'),
(807, 117, 'card_image_1_card_image_single', '113'),
(808, 117, '_card_image_1_card_image_single', 'field_5d9c5d801eb3d'),
(809, 117, 'card_image_1_card_page_link', 'a:3:{s:5:\"title\";s:8:\"Purchase\";s:3:\"url\";s:41:\"http://western-sizzling-corporate.lndo.site/purchase/\";s:6:\"target\";s:0:\"\";}'),
(810, 117, '_card_image_1_card_page_link', 'field_5d9c5df81eb3f'),
(811, 119, 'background_image', ''),
(812, 119, '_background_image', 'field_5d9c5b0425224'),
(813, 119, 'heading', ''),
(814, 119, '_heading', 'field_5d9c5b3225225'),
(815, 119, 'subheading', ''),
(816, 119, '_subheading', 'field_5d9c5b6a25226'),
(817, 119, 'logos', '5'),
(818, 119, '_logos', 'field_5d9c5ab025222'),
(819, 119, 'verbiage_heading', 'Western Sizzlin Mission'),
(820, 119, '_verbiage_heading', 'field_5d9c5c7925227'),
(821, 119, 'verbiage_text', '<h2 class=\"mb-4\">Western Sizzlin Brand Concept</h2>\r\nThe Western Sizzlin brand concept is based on great steaks. They’re seasoned with our unique Gold Dust and cooked using our famous Flamekist process for a one of a kind juiciness and flavor that keeps folks coming back for more than 50 years. We also serve up chicken, seafood, and buffets of garden goodness to satisfy any appetite in the family. Couple this high quality with an outstanding price and you have what has made us a success. We are the price value leader.'),
(822, 119, '_verbiage_text', 'field_5d9c5ce725228'),
(823, 119, 'card_image', '2'),
(824, 119, '_card_image', 'field_5d9c5d531eb3c'),
(825, 119, 'statement_bg_image', ''),
(826, 119, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(827, 119, 'statement_text', ''),
(828, 119, '_statement_text', 'field_5d9c9482f7ca7'),
(829, 119, 'store_finder_background_image', ''),
(830, 119, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(831, 119, 'store_finder_text', ''),
(832, 119, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(833, 119, 'hero_background_image', '98'),
(834, 119, '_hero_background_image', 'field_5d9c5b0425224'),
(835, 119, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(836, 119, '_hero_heading', 'field_5d9c5b3225225'),
(837, 119, 'hero_subheading', 'SINCE 1962'),
(838, 119, '_hero_subheading', 'field_5d9c5b6a25226'),
(839, 119, 'logos_0_logo', '101'),
(840, 119, '_logos_0_logo', 'field_5d9c5abe25223'),
(841, 119, 'logos_1_logo', '102'),
(842, 119, '_logos_1_logo', 'field_5d9c5abe25223'),
(843, 119, 'logos_2_logo', '103');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(844, 119, '_logos_2_logo', 'field_5d9c5abe25223'),
(845, 119, 'logos_3_logo', '104'),
(846, 119, '_logos_3_logo', 'field_5d9c5abe25223'),
(847, 119, 'logos_4_logo', '105'),
(848, 119, '_logos_4_logo', 'field_5d9c5abe25223'),
(849, 119, 'verbiage_subheading', '“We are committed to value by providing our guests with a high-quality products, excellent service, and clean environment. We share a mutual dedication to high standards through training, hard work and integrity.”'),
(850, 119, '_verbiage_subheading', 'field_5d9ca4c978fb3'),
(851, 119, 'card_image_0_card_image_single', '113'),
(852, 119, '_card_image_0_card_image_single', 'field_5d9c5d801eb3d'),
(853, 119, 'card_image_0_card_page_link', 'a:3:{s:5:\"title\";s:10:\"Gift Cards\";s:3:\"url\";s:43:\"http://western-sizzling-corporate.lndo.site/gift-cards/\";s:6:\"target\";s:0:\"\";}'),
(854, 119, '_card_image_0_card_page_link', 'field_5d9c5df81eb3f'),
(855, 119, 'card_image_1_card_image_single', '113'),
(856, 119, '_card_image_1_card_image_single', 'field_5d9c5d801eb3d'),
(857, 119, 'card_image_1_card_page_link', 'a:3:{s:5:\"title\";s:8:\"Purchase\";s:3:\"url\";s:41:\"http://western-sizzling-corporate.lndo.site/purchase/\";s:6:\"target\";s:0:\"\";}'),
(858, 119, '_card_image_1_card_page_link', 'field_5d9c5df81eb3f'),
(859, 11, 'card_image_0_texttext', ''),
(860, 11, '_card_image_0_texttext', 'field_5d9cb60aec4e7'),
(861, 11, 'card_image_1_texttext', ''),
(862, 11, '_card_image_1_texttext', 'field_5d9cb60aec4e7'),
(863, 120, 'background_image', ''),
(864, 120, '_background_image', 'field_5d9c5b0425224'),
(865, 120, 'heading', ''),
(866, 120, '_heading', 'field_5d9c5b3225225'),
(867, 120, 'subheading', ''),
(868, 120, '_subheading', 'field_5d9c5b6a25226'),
(869, 120, 'logos', '5'),
(870, 120, '_logos', 'field_5d9c5ab025222'),
(871, 120, 'verbiage_heading', 'Western Sizzlin Mission'),
(872, 120, '_verbiage_heading', 'field_5d9c5c7925227'),
(873, 120, 'verbiage_text', '<h2 class=\"mb-4\">Western Sizzlin Brand Concept</h2>\r\nThe Western Sizzlin brand concept is based on great steaks. They’re seasoned with our unique Gold Dust and cooked using our famous Flamekist process for a one of a kind juiciness and flavor that keeps folks coming back for more than 50 years. We also serve up chicken, seafood, and buffets of garden goodness to satisfy any appetite in the family. Couple this high quality with an outstanding price and you have what has made us a success. We are the price value leader.'),
(874, 120, '_verbiage_text', 'field_5d9c5ce725228'),
(875, 120, 'card_image', '2'),
(876, 120, '_card_image', 'field_5d9c5d531eb3c'),
(877, 120, 'statement_bg_image', ''),
(878, 120, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(879, 120, 'statement_text', ''),
(880, 120, '_statement_text', 'field_5d9c9482f7ca7'),
(881, 120, 'store_finder_background_image', ''),
(882, 120, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(883, 120, 'store_finder_text', ''),
(884, 120, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(885, 120, 'hero_background_image', '98'),
(886, 120, '_hero_background_image', 'field_5d9c5b0425224'),
(887, 120, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(888, 120, '_hero_heading', 'field_5d9c5b3225225'),
(889, 120, 'hero_subheading', 'SINCE 1962'),
(890, 120, '_hero_subheading', 'field_5d9c5b6a25226'),
(891, 120, 'logos_0_logo', '101'),
(892, 120, '_logos_0_logo', 'field_5d9c5abe25223'),
(893, 120, 'logos_1_logo', '102'),
(894, 120, '_logos_1_logo', 'field_5d9c5abe25223'),
(895, 120, 'logos_2_logo', '103'),
(896, 120, '_logos_2_logo', 'field_5d9c5abe25223'),
(897, 120, 'logos_3_logo', '104'),
(898, 120, '_logos_3_logo', 'field_5d9c5abe25223'),
(899, 120, 'logos_4_logo', '105'),
(900, 120, '_logos_4_logo', 'field_5d9c5abe25223'),
(901, 120, 'verbiage_subheading', '“We are committed to value by providing our guests with a high-quality products, excellent service, and clean environment. We share a mutual dedication to high standards through training, hard work and integrity.”'),
(902, 120, '_verbiage_subheading', 'field_5d9ca4c978fb3'),
(903, 120, 'card_image_0_card_image_single', '113'),
(904, 120, '_card_image_0_card_image_single', 'field_5d9c5d801eb3d'),
(905, 120, 'card_image_0_card_page_link', '{\"title\":\"Gift Cards\",\"url\":\"http:\\/\\/western-sizzling-corporate.lndo.site\\/gift-cards\\/\",\"target\":\"\"}'),
(906, 120, '_card_image_0_card_page_link', 'field_5d9c5df81eb3f'),
(907, 120, 'card_image_1_card_image_single', '113'),
(908, 120, '_card_image_1_card_image_single', 'field_5d9c5d801eb3d'),
(909, 120, 'card_image_1_card_page_link', '{\"title\":\"Purchase\",\"url\":\"http:\\/\\/western-sizzling-corporate.lndo.site\\/purchase\\/\",\"target\":\"\"}'),
(910, 120, '_card_image_1_card_page_link', 'field_5d9c5df81eb3f'),
(911, 120, 'card_image_0_texttext', 'asdasddasddsa'),
(912, 120, '_card_image_0_texttext', 'field_5d9cb60aec4e7'),
(913, 120, 'card_image_1_texttext', ''),
(914, 120, '_card_image_1_texttext', 'field_5d9cb60aec4e7'),
(915, 121, 'background_image', ''),
(916, 121, '_background_image', 'field_5d9c5b0425224'),
(917, 121, 'heading', ''),
(918, 121, '_heading', 'field_5d9c5b3225225'),
(919, 121, 'subheading', ''),
(920, 121, '_subheading', 'field_5d9c5b6a25226'),
(921, 121, 'logos', '5'),
(922, 121, '_logos', 'field_5d9c5ab025222'),
(923, 121, 'verbiage_heading', 'Western Sizzlin Mission'),
(924, 121, '_verbiage_heading', 'field_5d9c5c7925227'),
(925, 121, 'verbiage_text', '<h2 class=\"mb-4\">Western Sizzlin Brand Concept</h2>\r\nThe Western Sizzlin brand concept is based on great steaks. They’re seasoned with our unique Gold Dust and cooked using our famous Flamekist process for a one of a kind juiciness and flavor that keeps folks coming back for more than 50 years. We also serve up chicken, seafood, and buffets of garden goodness to satisfy any appetite in the family. Couple this high quality with an outstanding price and you have what has made us a success. We are the price value leader.'),
(926, 121, '_verbiage_text', 'field_5d9c5ce725228'),
(927, 121, 'card_image', '2'),
(928, 121, '_card_image', 'field_5d9c5d531eb3c'),
(929, 121, 'statement_bg_image', ''),
(930, 121, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(931, 121, 'statement_text', ''),
(932, 121, '_statement_text', 'field_5d9c9482f7ca7'),
(933, 121, 'store_finder_background_image', ''),
(934, 121, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(935, 121, 'store_finder_text', ''),
(936, 121, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(937, 121, 'hero_background_image', '98'),
(938, 121, '_hero_background_image', 'field_5d9c5b0425224'),
(939, 121, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(940, 121, '_hero_heading', 'field_5d9c5b3225225'),
(941, 121, 'hero_subheading', 'SINCE 1962'),
(942, 121, '_hero_subheading', 'field_5d9c5b6a25226'),
(943, 121, 'logos_0_logo', '101'),
(944, 121, '_logos_0_logo', 'field_5d9c5abe25223'),
(945, 121, 'logos_1_logo', '102'),
(946, 121, '_logos_1_logo', 'field_5d9c5abe25223'),
(947, 121, 'logos_2_logo', '103'),
(948, 121, '_logos_2_logo', 'field_5d9c5abe25223'),
(949, 121, 'logos_3_logo', '104'),
(950, 121, '_logos_3_logo', 'field_5d9c5abe25223'),
(951, 121, 'logos_4_logo', '105'),
(952, 121, '_logos_4_logo', 'field_5d9c5abe25223'),
(953, 121, 'verbiage_subheading', '“We are committed to value by providing our guests with a high-quality products, excellent service, and clean environment. We share a mutual dedication to high standards through training, hard work and integrity.”'),
(954, 121, '_verbiage_subheading', 'field_5d9ca4c978fb3'),
(955, 121, 'card_image_0_card_image_single', ''),
(956, 121, '_card_image_0_card_image_single', 'field_5d9c5d801eb3d'),
(957, 121, 'card_image_0_card_page_link', ''),
(958, 121, '_card_image_0_card_page_link', 'field_5d9c5df81eb3f'),
(959, 121, 'card_image_1_card_image_single', ''),
(960, 121, '_card_image_1_card_image_single', 'field_5d9c5d801eb3d'),
(961, 121, 'card_image_1_card_page_link', ''),
(962, 121, '_card_image_1_card_page_link', 'field_5d9c5df81eb3f'),
(963, 121, 'card_image_0_texttext', ''),
(964, 121, '_card_image_0_texttext', 'field_5d9cb60aec4e7'),
(965, 121, 'card_image_1_texttext', ''),
(966, 121, '_card_image_1_texttext', 'field_5d9cb60aec4e7'),
(967, 125, 'background_image', ''),
(968, 125, '_background_image', 'field_5d9c5b0425224'),
(969, 125, 'heading', ''),
(970, 125, '_heading', 'field_5d9c5b3225225'),
(971, 125, 'subheading', ''),
(972, 125, '_subheading', 'field_5d9c5b6a25226'),
(973, 125, 'logos', '5'),
(974, 125, '_logos', 'field_5d9c5ab025222'),
(975, 125, 'verbiage_heading', 'Western Sizzlin Mission'),
(976, 125, '_verbiage_heading', 'field_5d9c5c7925227'),
(977, 125, 'verbiage_text', '<h2 class=\"mb-4\">Western Sizzlin Brand Concept</h2>\r\nThe Western Sizzlin brand concept is based on great steaks. They’re seasoned with our unique Gold Dust and cooked using our famous Flamekist process for a one of a kind juiciness and flavor that keeps folks coming back for more than 50 years. We also serve up chicken, seafood, and buffets of garden goodness to satisfy any appetite in the family. Couple this high quality with an outstanding price and you have what has made us a success. We are the price value leader.'),
(978, 125, '_verbiage_text', 'field_5d9c5ce725228'),
(979, 125, 'card_image', '2'),
(980, 125, '_card_image', 'field_5d9cb6ba240ee'),
(981, 125, 'statement_bg_image', ''),
(982, 125, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(983, 125, 'statement_text', ''),
(984, 125, '_statement_text', 'field_5d9c9482f7ca7'),
(985, 125, 'store_finder_background_image', ''),
(986, 125, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(987, 125, 'store_finder_text', ''),
(988, 125, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(989, 125, 'hero_background_image', '98'),
(990, 125, '_hero_background_image', 'field_5d9c5b0425224'),
(991, 125, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(992, 125, '_hero_heading', 'field_5d9c5b3225225'),
(993, 125, 'hero_subheading', 'SINCE 1962'),
(994, 125, '_hero_subheading', 'field_5d9c5b6a25226'),
(995, 125, 'logos_0_logo', '101'),
(996, 125, '_logos_0_logo', 'field_5d9c5abe25223'),
(997, 125, 'logos_1_logo', '102'),
(998, 125, '_logos_1_logo', 'field_5d9c5abe25223'),
(999, 125, 'logos_2_logo', '103'),
(1000, 125, '_logos_2_logo', 'field_5d9c5abe25223'),
(1001, 125, 'logos_3_logo', '104'),
(1002, 125, '_logos_3_logo', 'field_5d9c5abe25223'),
(1003, 125, 'logos_4_logo', '105'),
(1004, 125, '_logos_4_logo', 'field_5d9c5abe25223'),
(1005, 125, 'verbiage_subheading', '“We are committed to value by providing our guests with a high-quality products, excellent service, and clean environment. We share a mutual dedication to high standards through training, hard work and integrity.”'),
(1006, 125, '_verbiage_subheading', 'field_5d9ca4c978fb3'),
(1007, 125, 'card_image_0_card_image_single', '113'),
(1008, 125, '_card_image_0_card_image_single', 'field_5d9cb6d0240ef'),
(1009, 125, 'card_image_0_card_page_link', 'a:3:{s:5:\"title\";s:10:\"Gift Cards\";s:3:\"url\";s:43:\"http://western-sizzling-corporate.lndo.site/gift-cards/\";s:6:\"target\";s:0:\"\";}'),
(1010, 125, '_card_image_0_card_page_link', 'field_5d9cb6fa13ae1'),
(1011, 125, 'card_image_1_card_image_single', ''),
(1012, 125, '_card_image_1_card_image_single', 'field_5d9cb6d0240ef'),
(1013, 125, 'card_image_1_card_page_link', ''),
(1014, 125, '_card_image_1_card_page_link', 'field_5d9cb6fa13ae1'),
(1015, 125, 'card_image_0_texttext', ''),
(1016, 125, '_card_image_0_texttext', 'field_5d9cb60aec4e7'),
(1017, 125, 'card_image_1_texttext', ''),
(1018, 125, '_card_image_1_texttext', 'field_5d9cb60aec4e7'),
(1019, 126, 'background_image', ''),
(1020, 126, '_background_image', 'field_5d9c5b0425224'),
(1021, 126, 'heading', ''),
(1022, 126, '_heading', 'field_5d9c5b3225225'),
(1023, 126, 'subheading', ''),
(1024, 126, '_subheading', 'field_5d9c5b6a25226'),
(1025, 126, 'logos', '5'),
(1026, 126, '_logos', 'field_5d9c5ab025222'),
(1027, 126, 'verbiage_heading', 'Western Sizzlin Mission'),
(1028, 126, '_verbiage_heading', 'field_5d9c5c7925227'),
(1029, 126, 'verbiage_text', '<h2 class=\"mb-4\">Western Sizzlin Brand Concept</h2>\r\nThe Western Sizzlin brand concept is based on great steaks. They’re seasoned with our unique Gold Dust and cooked using our famous Flamekist process for a one of a kind juiciness and flavor that keeps folks coming back for more than 50 years. We also serve up chicken, seafood, and buffets of garden goodness to satisfy any appetite in the family. Couple this high quality with an outstanding price and you have what has made us a success. We are the price value leader.'),
(1030, 126, '_verbiage_text', 'field_5d9c5ce725228'),
(1031, 126, 'card_image', '2'),
(1032, 126, '_card_image', 'field_5d9cb6ba240ee'),
(1033, 126, 'statement_bg_image', ''),
(1034, 126, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(1035, 126, 'statement_text', ''),
(1036, 126, '_statement_text', 'field_5d9c9482f7ca7'),
(1037, 126, 'store_finder_background_image', ''),
(1038, 126, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(1039, 126, 'store_finder_text', ''),
(1040, 126, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(1041, 126, 'hero_background_image', '98'),
(1042, 126, '_hero_background_image', 'field_5d9c5b0425224'),
(1043, 126, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(1044, 126, '_hero_heading', 'field_5d9c5b3225225'),
(1045, 126, 'hero_subheading', 'SINCE 1962'),
(1046, 126, '_hero_subheading', 'field_5d9c5b6a25226'),
(1047, 126, 'logos_0_logo', '101'),
(1048, 126, '_logos_0_logo', 'field_5d9c5abe25223'),
(1049, 126, 'logos_1_logo', '102'),
(1050, 126, '_logos_1_logo', 'field_5d9c5abe25223'),
(1051, 126, 'logos_2_logo', '103'),
(1052, 126, '_logos_2_logo', 'field_5d9c5abe25223'),
(1053, 126, 'logos_3_logo', '104'),
(1054, 126, '_logos_3_logo', 'field_5d9c5abe25223'),
(1055, 126, 'logos_4_logo', '105'),
(1056, 126, '_logos_4_logo', 'field_5d9c5abe25223'),
(1057, 126, 'verbiage_subheading', '“We are committed to value by providing our guests with a high-quality products, excellent service, and clean environment. We share a mutual dedication to high standards through training, hard work and integrity.”'),
(1058, 126, '_verbiage_subheading', 'field_5d9ca4c978fb3'),
(1059, 126, 'card_image_0_card_image_single', '113'),
(1060, 126, '_card_image_0_card_image_single', 'field_5d9cb6d0240ef'),
(1061, 126, 'card_image_0_card_page_link', 'a:3:{s:5:\"title\";s:10:\"Gift Cards\";s:3:\"url\";s:43:\"http://western-sizzling-corporate.lndo.site/gift-cards/\";s:6:\"target\";s:0:\"\";}'),
(1062, 126, '_card_image_0_card_page_link', 'field_5d9cb6fa13ae1'),
(1063, 126, 'card_image_1_card_image_single', '113'),
(1064, 126, '_card_image_1_card_image_single', 'field_5d9cb6d0240ef'),
(1065, 126, 'card_image_1_card_page_link', 'a:3:{s:5:\"title\";s:8:\"Purchase\";s:3:\"url\";s:41:\"http://western-sizzling-corporate.lndo.site/purchase/\";s:6:\"target\";s:0:\"\";}'),
(1066, 126, '_card_image_1_card_page_link', 'field_5d9cb6fa13ae1'),
(1067, 126, 'card_image_0_texttext', ''),
(1068, 126, '_card_image_0_texttext', 'field_5d9cb60aec4e7'),
(1069, 126, 'card_image_1_texttext', ''),
(1070, 126, '_card_image_1_texttext', 'field_5d9cb60aec4e7'),
(1071, 127, '_wp_attached_file', '2019/10/buffet_hero-1.jpg'),
(1072, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2100;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2019/10/buffet_hero-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"buffet_hero-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"buffet_hero-1-300x143.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"buffet_hero-1-768x366.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:366;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"buffet_hero-1-1024x488.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:488;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:23:\"Copyright: Kevin Chelko\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1073, 128, 'background_image', ''),
(1074, 128, '_background_image', 'field_5d9c5b0425224'),
(1075, 128, 'heading', ''),
(1076, 128, '_heading', 'field_5d9c5b3225225'),
(1077, 128, 'subheading', ''),
(1078, 128, '_subheading', 'field_5d9c5b6a25226'),
(1079, 128, 'logos', '5'),
(1080, 128, '_logos', 'field_5d9c5ab025222'),
(1081, 128, 'verbiage_heading', 'Western Sizzlin Mission'),
(1082, 128, '_verbiage_heading', 'field_5d9c5c7925227'),
(1083, 128, 'verbiage_text', '<h2 class=\"mb-4\">Western Sizzlin Brand Concept</h2>\r\nThe Western Sizzlin brand concept is based on great steaks. They’re seasoned with our unique Gold Dust and cooked using our famous Flamekist process for a one of a kind juiciness and flavor that keeps folks coming back for more than 50 years. We also serve up chicken, seafood, and buffets of garden goodness to satisfy any appetite in the family. Couple this high quality with an outstanding price and you have what has made us a success. We are the price value leader.'),
(1084, 128, '_verbiage_text', 'field_5d9c5ce725228'),
(1085, 128, 'card_image', '2'),
(1086, 128, '_card_image', 'field_5d9cb6ba240ee'),
(1087, 128, 'statement_bg_image', '127'),
(1088, 128, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(1089, 128, 'statement_text', ''),
(1090, 128, '_statement_text', 'field_5d9c9482f7ca7'),
(1091, 128, 'store_finder_background_image', ''),
(1092, 128, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(1093, 128, 'store_finder_text', ''),
(1094, 128, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(1095, 128, 'hero_background_image', '98'),
(1096, 128, '_hero_background_image', 'field_5d9c5b0425224'),
(1097, 128, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(1098, 128, '_hero_heading', 'field_5d9c5b3225225'),
(1099, 128, 'hero_subheading', 'SINCE 1962'),
(1100, 128, '_hero_subheading', 'field_5d9c5b6a25226'),
(1101, 128, 'logos_0_logo', '101'),
(1102, 128, '_logos_0_logo', 'field_5d9c5abe25223'),
(1103, 128, 'logos_1_logo', '102'),
(1104, 128, '_logos_1_logo', 'field_5d9c5abe25223'),
(1105, 128, 'logos_2_logo', '103'),
(1106, 128, '_logos_2_logo', 'field_5d9c5abe25223'),
(1107, 128, 'logos_3_logo', '104'),
(1108, 128, '_logos_3_logo', 'field_5d9c5abe25223'),
(1109, 128, 'logos_4_logo', '105'),
(1110, 128, '_logos_4_logo', 'field_5d9c5abe25223'),
(1111, 128, 'verbiage_subheading', '“We are committed to value by providing our guests with a high-quality products, excellent service, and clean environment. We share a mutual dedication to high standards through training, hard work and integrity.”'),
(1112, 128, '_verbiage_subheading', 'field_5d9ca4c978fb3'),
(1113, 128, 'card_image_0_card_image_single', '113'),
(1114, 128, '_card_image_0_card_image_single', 'field_5d9cb6d0240ef'),
(1115, 128, 'card_image_0_card_page_link', 'a:3:{s:5:\"title\";s:10:\"Gift Cards\";s:3:\"url\";s:43:\"http://western-sizzling-corporate.lndo.site/gift-cards/\";s:6:\"target\";s:0:\"\";}'),
(1116, 128, '_card_image_0_card_page_link', 'field_5d9cb6fa13ae1'),
(1117, 128, 'card_image_1_card_image_single', '113'),
(1118, 128, '_card_image_1_card_image_single', 'field_5d9cb6d0240ef'),
(1119, 128, 'card_image_1_card_page_link', 'a:3:{s:5:\"title\";s:8:\"Purchase\";s:3:\"url\";s:41:\"http://western-sizzling-corporate.lndo.site/purchase/\";s:6:\"target\";s:0:\"\";}'),
(1120, 128, '_card_image_1_card_page_link', 'field_5d9cb6fa13ae1'),
(1121, 128, 'card_image_0_texttext', ''),
(1122, 128, '_card_image_0_texttext', 'field_5d9cb60aec4e7'),
(1123, 128, 'card_image_1_texttext', ''),
(1124, 128, '_card_image_1_texttext', 'field_5d9cb60aec4e7'),
(1125, 129, 'background_image', ''),
(1126, 129, '_background_image', 'field_5d9c5b0425224'),
(1127, 129, 'heading', ''),
(1128, 129, '_heading', 'field_5d9c5b3225225'),
(1129, 129, 'subheading', ''),
(1130, 129, '_subheading', 'field_5d9c5b6a25226'),
(1131, 129, 'logos', '5'),
(1132, 129, '_logos', 'field_5d9c5ab025222'),
(1133, 129, 'verbiage_heading', 'Western Sizzlin Mission'),
(1134, 129, '_verbiage_heading', 'field_5d9c5c7925227'),
(1135, 129, 'verbiage_text', '<h2 class=\"mb-4\">Western Sizzlin Brand Concept</h2>\r\nThe Western Sizzlin brand concept is based on great steaks. They’re seasoned with our unique Gold Dust and cooked using our famous Flamekist process for a one of a kind juiciness and flavor that keeps folks coming back for more than 50 years. We also serve up chicken, seafood, and buffets of garden goodness to satisfy any appetite in the family. Couple this high quality with an outstanding price and you have what has made us a success. We are the price value leader.'),
(1136, 129, '_verbiage_text', 'field_5d9c5ce725228'),
(1137, 129, 'card_image', '2'),
(1138, 129, '_card_image', 'field_5d9cb6ba240ee'),
(1139, 129, 'statement_bg_image', '127'),
(1140, 129, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(1141, 129, 'statement_text', 'Our goal is to provide everyone a great dining experience at a great price!'),
(1142, 129, '_statement_text', 'field_5d9c9482f7ca7'),
(1143, 129, 'store_finder_background_image', ''),
(1144, 129, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(1145, 129, 'store_finder_text', ''),
(1146, 129, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(1147, 129, 'hero_background_image', '98'),
(1148, 129, '_hero_background_image', 'field_5d9c5b0425224'),
(1149, 129, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(1150, 129, '_hero_heading', 'field_5d9c5b3225225'),
(1151, 129, 'hero_subheading', 'SINCE 1962'),
(1152, 129, '_hero_subheading', 'field_5d9c5b6a25226'),
(1153, 129, 'logos_0_logo', '101'),
(1154, 129, '_logos_0_logo', 'field_5d9c5abe25223'),
(1155, 129, 'logos_1_logo', '102'),
(1156, 129, '_logos_1_logo', 'field_5d9c5abe25223'),
(1157, 129, 'logos_2_logo', '103'),
(1158, 129, '_logos_2_logo', 'field_5d9c5abe25223'),
(1159, 129, 'logos_3_logo', '104'),
(1160, 129, '_logos_3_logo', 'field_5d9c5abe25223'),
(1161, 129, 'logos_4_logo', '105'),
(1162, 129, '_logos_4_logo', 'field_5d9c5abe25223'),
(1163, 129, 'verbiage_subheading', '“We are committed to value by providing our guests with a high-quality products, excellent service, and clean environment. We share a mutual dedication to high standards through training, hard work and integrity.”'),
(1164, 129, '_verbiage_subheading', 'field_5d9ca4c978fb3'),
(1165, 129, 'card_image_0_card_image_single', '113'),
(1166, 129, '_card_image_0_card_image_single', 'field_5d9cb6d0240ef'),
(1167, 129, 'card_image_0_card_page_link', 'a:3:{s:5:\"title\";s:10:\"Gift Cards\";s:3:\"url\";s:43:\"http://western-sizzling-corporate.lndo.site/gift-cards/\";s:6:\"target\";s:0:\"\";}'),
(1168, 129, '_card_image_0_card_page_link', 'field_5d9cb6fa13ae1'),
(1169, 129, 'card_image_1_card_image_single', '113'),
(1170, 129, '_card_image_1_card_image_single', 'field_5d9cb6d0240ef'),
(1171, 129, 'card_image_1_card_page_link', 'a:3:{s:5:\"title\";s:8:\"Purchase\";s:3:\"url\";s:41:\"http://western-sizzling-corporate.lndo.site/purchase/\";s:6:\"target\";s:0:\"\";}'),
(1172, 129, '_card_image_1_card_page_link', 'field_5d9cb6fa13ae1'),
(1173, 129, 'card_image_0_texttext', ''),
(1174, 129, '_card_image_0_texttext', 'field_5d9cb60aec4e7'),
(1175, 129, 'card_image_1_texttext', ''),
(1176, 129, '_card_image_1_texttext', 'field_5d9cb60aec4e7'),
(1177, 130, '_wp_attached_file', '2019/10/location-finder.jpg'),
(1178, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:824;s:4:\"file\";s:27:\"2019/10/location-finder.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"location-finder-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"location-finder-300x129.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"location-finder-768x330.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"location-finder-1024x439.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:439;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1179, 131, 'background_image', ''),
(1180, 131, '_background_image', 'field_5d9c5b0425224'),
(1181, 131, 'heading', ''),
(1182, 131, '_heading', 'field_5d9c5b3225225'),
(1183, 131, 'subheading', ''),
(1184, 131, '_subheading', 'field_5d9c5b6a25226'),
(1185, 131, 'logos', '5'),
(1186, 131, '_logos', 'field_5d9c5ab025222'),
(1187, 131, 'verbiage_heading', 'Western Sizzlin Mission'),
(1188, 131, '_verbiage_heading', 'field_5d9c5c7925227'),
(1189, 131, 'verbiage_text', '<h2 class=\"mb-4\">Western Sizzlin Brand Concept</h2>\r\nThe Western Sizzlin brand concept is based on great steaks. They’re seasoned with our unique Gold Dust and cooked using our famous Flamekist process for a one of a kind juiciness and flavor that keeps folks coming back for more than 50 years. We also serve up chicken, seafood, and buffets of garden goodness to satisfy any appetite in the family. Couple this high quality with an outstanding price and you have what has made us a success. We are the price value leader.'),
(1190, 131, '_verbiage_text', 'field_5d9c5ce725228'),
(1191, 131, 'card_image', '2'),
(1192, 131, '_card_image', 'field_5d9cb6ba240ee'),
(1193, 131, 'statement_bg_image', '127'),
(1194, 131, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(1195, 131, 'statement_text', 'Our goal is to provide everyone a great dining experience at a great price!'),
(1196, 131, '_statement_text', 'field_5d9c9482f7ca7'),
(1197, 131, 'store_finder_background_image', '130'),
(1198, 131, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(1199, 131, 'store_finder_text', 'Find Western Sizzling Location Near You'),
(1200, 131, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(1201, 131, 'hero_background_image', '98'),
(1202, 131, '_hero_background_image', 'field_5d9c5b0425224'),
(1203, 131, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(1204, 131, '_hero_heading', 'field_5d9c5b3225225'),
(1205, 131, 'hero_subheading', 'SINCE 1962'),
(1206, 131, '_hero_subheading', 'field_5d9c5b6a25226'),
(1207, 131, 'logos_0_logo', '101'),
(1208, 131, '_logos_0_logo', 'field_5d9c5abe25223'),
(1209, 131, 'logos_1_logo', '102'),
(1210, 131, '_logos_1_logo', 'field_5d9c5abe25223'),
(1211, 131, 'logos_2_logo', '103'),
(1212, 131, '_logos_2_logo', 'field_5d9c5abe25223'),
(1213, 131, 'logos_3_logo', '104'),
(1214, 131, '_logos_3_logo', 'field_5d9c5abe25223'),
(1215, 131, 'logos_4_logo', '105'),
(1216, 131, '_logos_4_logo', 'field_5d9c5abe25223'),
(1217, 131, 'verbiage_subheading', '“We are committed to value by providing our guests with a high-quality products, excellent service, and clean environment. We share a mutual dedication to high standards through training, hard work and integrity.”'),
(1218, 131, '_verbiage_subheading', 'field_5d9ca4c978fb3'),
(1219, 131, 'card_image_0_card_image_single', '113'),
(1220, 131, '_card_image_0_card_image_single', 'field_5d9cb6d0240ef'),
(1221, 131, 'card_image_0_card_page_link', 'a:3:{s:5:\"title\";s:10:\"Gift Cards\";s:3:\"url\";s:43:\"http://western-sizzling-corporate.lndo.site/gift-cards/\";s:6:\"target\";s:0:\"\";}'),
(1222, 131, '_card_image_0_card_page_link', 'field_5d9cb6fa13ae1'),
(1223, 131, 'card_image_1_card_image_single', '113'),
(1224, 131, '_card_image_1_card_image_single', 'field_5d9cb6d0240ef'),
(1225, 131, 'card_image_1_card_page_link', 'a:3:{s:5:\"title\";s:8:\"Purchase\";s:3:\"url\";s:41:\"http://western-sizzling-corporate.lndo.site/purchase/\";s:6:\"target\";s:0:\"\";}'),
(1226, 131, '_card_image_1_card_page_link', 'field_5d9cb6fa13ae1'),
(1227, 131, 'card_image_0_texttext', ''),
(1228, 131, '_card_image_0_texttext', 'field_5d9cb60aec4e7'),
(1229, 131, 'card_image_1_texttext', ''),
(1230, 131, '_card_image_1_texttext', 'field_5d9cb60aec4e7'),
(1231, 11, 'store_finder_bg_image', '130'),
(1232, 11, '_store_finder_bg_image', 'field_5d9c94a4f7ca8'),
(1233, 132, 'background_image', ''),
(1234, 132, '_background_image', 'field_5d9c5b0425224'),
(1235, 132, 'heading', ''),
(1236, 132, '_heading', 'field_5d9c5b3225225'),
(1237, 132, 'subheading', ''),
(1238, 132, '_subheading', 'field_5d9c5b6a25226'),
(1239, 132, 'logos', '5'),
(1240, 132, '_logos', 'field_5d9c5ab025222'),
(1241, 132, 'verbiage_heading', 'Western Sizzlin Mission'),
(1242, 132, '_verbiage_heading', 'field_5d9c5c7925227'),
(1243, 132, 'verbiage_text', '<h2 class=\"mb-4\">Western Sizzlin Brand Concept</h2>\r\nThe Western Sizzlin brand concept is based on great steaks. They’re seasoned with our unique Gold Dust and cooked using our famous Flamekist process for a one of a kind juiciness and flavor that keeps folks coming back for more than 50 years. We also serve up chicken, seafood, and buffets of garden goodness to satisfy any appetite in the family. Couple this high quality with an outstanding price and you have what has made us a success. We are the price value leader.'),
(1244, 132, '_verbiage_text', 'field_5d9c5ce725228'),
(1245, 132, 'card_image', '2'),
(1246, 132, '_card_image', 'field_5d9cb6ba240ee'),
(1247, 132, 'statement_bg_image', '127'),
(1248, 132, '_statement_bg_image', 'field_5d9c9452f7ca6'),
(1249, 132, 'statement_text', 'Our goal is to provide everyone a great dining experience at a great price!'),
(1250, 132, '_statement_text', 'field_5d9c9482f7ca7'),
(1251, 132, 'store_finder_background_image', '130'),
(1252, 132, '_store_finder_background_image', 'field_5d9c94a4f7ca8'),
(1253, 132, 'store_finder_text', 'Find Western Sizzling Location Near You'),
(1254, 132, '_store_finder_text', 'field_5d9c94c7f7ca9'),
(1255, 132, 'hero_background_image', '98'),
(1256, 132, '_hero_background_image', 'field_5d9c5b0425224'),
(1257, 132, 'hero_heading', 'SERVING FLAMEKIST STEAK'),
(1258, 132, '_hero_heading', 'field_5d9c5b3225225'),
(1259, 132, 'hero_subheading', 'SINCE 1962'),
(1260, 132, '_hero_subheading', 'field_5d9c5b6a25226'),
(1261, 132, 'logos_0_logo', '101'),
(1262, 132, '_logos_0_logo', 'field_5d9c5abe25223'),
(1263, 132, 'logos_1_logo', '102'),
(1264, 132, '_logos_1_logo', 'field_5d9c5abe25223'),
(1265, 132, 'logos_2_logo', '103'),
(1266, 132, '_logos_2_logo', 'field_5d9c5abe25223'),
(1267, 132, 'logos_3_logo', '104'),
(1268, 132, '_logos_3_logo', 'field_5d9c5abe25223'),
(1269, 132, 'logos_4_logo', '105'),
(1270, 132, '_logos_4_logo', 'field_5d9c5abe25223'),
(1271, 132, 'verbiage_subheading', '“We are committed to value by providing our guests with a high-quality products, excellent service, and clean environment. We share a mutual dedication to high standards through training, hard work and integrity.”'),
(1272, 132, '_verbiage_subheading', 'field_5d9ca4c978fb3'),
(1273, 132, 'card_image_0_card_image_single', '113'),
(1274, 132, '_card_image_0_card_image_single', 'field_5d9cb6d0240ef'),
(1275, 132, 'card_image_0_card_page_link', 'a:3:{s:5:\"title\";s:10:\"Gift Cards\";s:3:\"url\";s:43:\"http://western-sizzling-corporate.lndo.site/gift-cards/\";s:6:\"target\";s:0:\"\";}'),
(1276, 132, '_card_image_0_card_page_link', 'field_5d9cb6fa13ae1'),
(1277, 132, 'card_image_1_card_image_single', '113'),
(1278, 132, '_card_image_1_card_image_single', 'field_5d9cb6d0240ef'),
(1279, 132, 'card_image_1_card_page_link', 'a:3:{s:5:\"title\";s:8:\"Purchase\";s:3:\"url\";s:41:\"http://western-sizzling-corporate.lndo.site/purchase/\";s:6:\"target\";s:0:\"\";}'),
(1280, 132, '_card_image_1_card_page_link', 'field_5d9cb6fa13ae1'),
(1281, 132, 'card_image_0_texttext', ''),
(1282, 132, '_card_image_0_texttext', 'field_5d9cb60aec4e7'),
(1283, 132, 'card_image_1_texttext', ''),
(1284, 132, '_card_image_1_texttext', 'field_5d9cb60aec4e7'),
(1285, 132, 'store_finder_bg_image', '130'),
(1286, 132, '_store_finder_bg_image', 'field_5d9c94a4f7ca8'),
(1287, 134, '_map_location_map', '0'),
(1288, 134, '_map_location_tooltip_enabled', 'yes'),
(1289, 134, '_map_location_tooltip_show', 'yes'),
(1290, 134, '_map_location_tooltip_close', 'auto'),
(1291, 134, '_map_location_popup_location_information', 'yes'),
(1292, 134, '_map_location_popup_directions', 'yes'),
(1293, 134, '_map_location_tooltip', ''),
(1294, 134, '_map_location_mll_include', 'y'),
(1295, 134, '_map_location_mll_description', ''),
(1296, 134, '_map_location_video_embed', ''),
(1297, 134, '_map_location_phone', '(706) 282-1953'),
(1298, 134, '_map_location_address', '605 Big A Road'),
(1299, 134, '_map_location_state', 'Georgia'),
(1300, 134, '_map_location_city', 'Toccoa'),
(1301, 134, '_map_location_zip', '30577'),
(1302, 134, '_map_location_country', 'US'),
(1303, 134, '_map_location_external_url_enable', 'no'),
(1304, 134, '_map_location_external_url_url', 'https://quincy-of-toccoa.business.site/?utm_source=gmb&utm_medium=referral'),
(1305, 134, '_map_location_share', 'a:5:{i:0;s:8:\"facebook\";i:1;s:9:\"pinterest\";i:2;s:7:\"twitter\";i:3;s:10:\"googleplus\";i:4;s:5:\"email\";}'),
(1306, 135, '_map_location_map', '0'),
(1307, 135, '_map_location_tooltip_enabled', 'yes'),
(1308, 135, '_map_location_tooltip_show', 'yes'),
(1309, 135, '_map_location_tooltip_close', 'auto'),
(1310, 135, '_map_location_popup_location_information', 'yes'),
(1311, 135, '_map_location_popup_directions', 'yes'),
(1312, 135, '_map_location_tooltip', ''),
(1313, 135, '_map_location_mll_include', 'y'),
(1314, 135, '_map_location_mll_description', ''),
(1315, 135, '_map_location_video_embed', ''),
(1316, 135, '_map_location_phone', '(704) 238-1983'),
(1317, 135, '_map_location_address', '502 West Roosevelt Blvd.'),
(1318, 135, '_map_location_state', 'North Carolina'),
(1319, 135, '_map_location_city', 'Monroe'),
(1320, 135, '_map_location_zip', '28110'),
(1321, 135, '_map_location_country', 'US'),
(1322, 135, '_map_location_external_url_enable', 'no'),
(1323, 135, '_map_location_external_url_url', 'http://www.western-sizzlin.com'),
(1324, 135, '_map_location_share', 'a:5:{i:0;s:8:\"facebook\";i:1;s:9:\"pinterest\";i:2;s:7:\"twitter\";i:3;s:10:\"googleplus\";i:4;s:5:\"email\";}'),
(1325, 135, '_map_location_google_location', '34.9871976160331,-80.5298124739864'),
(1326, 135, '_map_location_google_location-lat', '34.9871976160331'),
(1327, 135, '_map_location_google_location-lng', '-80.5298124739864'),
(1328, 135, '_map_location_google_location-address', '502 West Roosevelt Blvd., Monroe, North Carolina, 28110, US'),
(1329, 136, '_map_location_map', ''),
(1330, 136, '_map_location_tooltip_enabled', 'yes'),
(1331, 136, '_map_location_tooltip_show', 'yes'),
(1332, 136, '_map_location_tooltip_close', 'auto'),
(1333, 136, '_map_location_popup_location_information', 'yes'),
(1334, 136, '_map_location_popup_directions', 'yes'),
(1335, 136, '_map_location_tooltip', ''),
(1336, 136, '_map_location_mll_include', 'y'),
(1337, 136, '_map_location_mll_description', ''),
(1338, 136, '_map_location_video_embed', ''),
(1339, 136, '_map_location_phone', '(434) 975-5613'),
(1340, 136, '_map_location_address', '576 Branch Lands Boulevard'),
(1341, 136, '_map_location_state', 'Virginia'),
(1342, 136, '_map_location_city', 'Charlottesville'),
(1343, 136, '_map_location_zip', '22901'),
(1344, 136, '_map_location_country', 'US'),
(1345, 136, '_map_location_external_url_enable', 'no'),
(1346, 136, '_map_location_external_url_url', 'https://www.woodgrillbuffetva.com'),
(1347, 136, '_map_location_share', 'a:5:{i:0;s:8:\"facebook\";i:1;s:9:\"pinterest\";i:2;s:7:\"twitter\";i:3;s:10:\"googleplus\";i:4;s:5:\"email\";}'),
(1348, 136, '_map_location_google_location', '35.800756,-83.571219'),
(1349, 136, '_map_location_google_location-lat', '35.800756'),
(1350, 136, '_map_location_google_location-lng', '-83.571219'),
(1351, 136, '_map_location_google_location-address', '2385 Parkway, Pigeon Forge, Tennessee, 37863, US'),
(1352, 137, '_map_location_map', ''),
(1353, 137, '_map_location_tooltip_enabled', 'yes'),
(1354, 137, '_map_location_tooltip_show', 'yes'),
(1355, 137, '_map_location_tooltip_close', 'auto'),
(1356, 137, '_map_location_popup_location_information', 'yes'),
(1357, 137, '_map_location_popup_directions', 'yes'),
(1358, 137, '_map_location_tooltip', ''),
(1359, 137, '_map_location_mll_include', 'y'),
(1360, 137, '_map_location_mll_description', ''),
(1361, 137, '_map_location_video_embed', ''),
(1362, 137, '_map_location_phone', '(703) 369-6791'),
(1363, 137, '_map_location_address', '8365 Sudley Road'),
(1364, 137, '_map_location_state', 'Virginia'),
(1365, 137, '_map_location_city', 'Manassas'),
(1366, 137, '_map_location_zip', '20109'),
(1367, 137, '_map_location_country', 'US'),
(1368, 137, '_map_location_external_url_enable', 'no'),
(1369, 137, '_map_location_external_url_url', 'http://www.western-sizzlin.com'),
(1370, 137, '_map_location_share', 'a:5:{i:0;s:8:\"facebook\";i:1;s:9:\"pinterest\";i:2;s:7:\"twitter\";i:3;s:10:\"googleplus\";i:4;s:5:\"email\";}'),
(1371, 137, '_map_location_google_location', '38.774973877551,-77.5021980612245'),
(1372, 137, '_map_location_google_location-lat', '38.774973877551'),
(1373, 137, '_map_location_google_location-lng', '-77.5021980612245'),
(1374, 137, '_map_location_google_location-address', '8365 Sudley Road, Manassas, Virginia, 20109, US'),
(1375, 138, '_map_location_map', ''),
(1376, 138, '_map_location_tooltip_enabled', 'yes'),
(1377, 138, '_map_location_tooltip_show', 'yes'),
(1378, 138, '_map_location_tooltip_close', 'auto'),
(1379, 138, '_map_location_popup_location_information', 'yes'),
(1380, 138, '_map_location_popup_directions', 'yes'),
(1381, 138, '_map_location_tooltip', ''),
(1382, 138, '_map_location_mll_include', 'y'),
(1383, 138, '_map_location_mll_description', ''),
(1384, 138, '_map_location_video_embed', ''),
(1385, 138, '_map_location_phone', '(334) 749-2950'),
(1386, 138, '_map_location_address', '920 Columbus Parkway'),
(1387, 138, '_map_location_state', 'Alabama'),
(1388, 138, '_map_location_city', 'Opelika'),
(1389, 138, '_map_location_zip', '36801'),
(1390, 138, '_map_location_country', 'US'),
(1391, 138, '_map_location_external_url_enable', 'no'),
(1392, 138, '_map_location_external_url_url', 'http://www.western-sizzlin.com'),
(1393, 138, '_map_location_share', 'a:5:{i:0;s:8:\"facebook\";i:1;s:9:\"pinterest\";i:2;s:7:\"twitter\";i:3;s:10:\"googleplus\";i:4;s:5:\"email\";}'),
(1394, 138, '_map_location_google_location', '32.6435233939394,-85.3551880606061'),
(1395, 138, '_map_location_google_location-lat', '32.6435233939394'),
(1396, 138, '_map_location_google_location-lng', '-85.3551880606061'),
(1397, 138, '_map_location_google_location-address', '920 Columbus Parkway, Opelika, Alabama, 36801, US'),
(1398, 139, '_map_location_map', '0'),
(1399, 139, '_map_location_tooltip_enabled', 'yes'),
(1400, 139, '_map_location_tooltip_show', 'yes'),
(1401, 139, '_map_location_tooltip_close', 'auto'),
(1402, 139, '_map_location_popup_location_information', 'yes'),
(1403, 139, '_map_location_popup_directions', 'yes'),
(1404, 139, '_map_location_tooltip', ''),
(1405, 139, '_map_location_mll_include', 'y'),
(1406, 139, '_map_location_mll_description', ''),
(1407, 139, '_map_location_video_embed', ''),
(1408, 139, '_map_location_phone', '(843) 667-6996'),
(1409, 139, '_map_location_address', '1924 W Lucas St'),
(1410, 139, '_map_location_state', 'South Carolina'),
(1411, 139, '_map_location_city', 'Florence'),
(1412, 139, '_map_location_zip', '29501'),
(1413, 139, '_map_location_country', 'US'),
(1414, 139, '_map_location_external_url_enable', 'no'),
(1415, 139, '_map_location_external_url_url', 'https://florencequincys.com'),
(1416, 139, '_map_location_share', 'a:5:{i:0;s:8:\"facebook\";i:1;s:9:\"pinterest\";i:2;s:7:\"twitter\";i:3;s:10:\"googleplus\";i:4;s:5:\"email\";}'),
(1417, 139, '_map_location_google_location', '34.2322832909091,-79.8028214545455'),
(1418, 139, '_map_location_google_location-lat', '34.2322832909091'),
(1419, 139, '_map_location_google_location-lng', '-79.8028214545455'),
(1420, 139, '_map_location_google_location-address', '1924 W Lucas St, Florence, South Carolina, 29501, US'),
(1425, 142, '_edit_lock', '1570581131:2'),
(1432, 146, '_edit_lock', '1570581635:2'),
(1433, 148, '_edit_lock', '1570581724:2'),
(1434, 149, 'wpsl_address', '1924 W Lucas St'),
(1435, 149, 'wpsl_city', 'Florence'),
(1436, 149, 'wpsl_state', 'South Carolina'),
(1437, 149, 'wpsl_zip', '29501'),
(1438, 149, 'wpsl_country', 'United States'),
(1439, 149, 'wpsl_country_iso', 'US\n'),
(1440, 149, 'wpsl_phone', '(843) 667-6996'),
(1441, 149, 'wpsl_url', 'https://florencequincys.com'),
(1442, 149, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1443, 150, 'wpsl_address', '920 Columbus Parkway'),
(1444, 150, 'wpsl_city', 'Opelika'),
(1445, 150, 'wpsl_state', 'Alabama'),
(1446, 150, 'wpsl_zip', '36801'),
(1447, 150, 'wpsl_country', 'United States'),
(1448, 150, 'wpsl_country_iso', 'US\n'),
(1449, 150, 'wpsl_phone', '(334) 749-2950'),
(1450, 150, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1451, 150, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1452, 151, 'wpsl_address', '209 West Grand Avenue'),
(1453, 151, 'wpsl_city', 'Rainbow City'),
(1454, 151, 'wpsl_state', 'Alabama'),
(1455, 151, 'wpsl_zip', '35901'),
(1456, 151, 'wpsl_country', 'United States'),
(1457, 151, 'wpsl_country_iso', 'US\n'),
(1458, 151, 'wpsl_phone', '(256) 442-5061'),
(1459, 151, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1460, 151, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1461, 152, 'wpsl_address', '200 Hamric Drive'),
(1462, 152, 'wpsl_city', 'Oxford'),
(1463, 152, 'wpsl_state', 'Alabama'),
(1464, 152, 'wpsl_zip', '36203'),
(1465, 152, 'wpsl_country', 'United States'),
(1466, 152, 'wpsl_country_iso', 'US\n'),
(1467, 152, 'wpsl_phone', '(256) 835-2500'),
(1468, 152, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1469, 152, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1470, 153, 'wpsl_address', '23980 John T. Reid Parkway'),
(1471, 153, 'wpsl_city', 'Scottsboro'),
(1472, 153, 'wpsl_state', 'Alabama'),
(1473, 153, 'wpsl_zip', '35768'),
(1474, 153, 'wpsl_country', 'United States'),
(1475, 153, 'wpsl_country_iso', 'US\n'),
(1476, 153, 'wpsl_phone', '(256) 259-6888'),
(1477, 153, 'wpsl_url', 'http://www.westernsizzlin.net'),
(1478, 153, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1479, 154, 'wpsl_address', '1114 Glenn Blvd S.W.'),
(1480, 154, 'wpsl_city', 'Fort Payne'),
(1481, 154, 'wpsl_state', 'Alabama'),
(1482, 154, 'wpsl_zip', '35967'),
(1483, 154, 'wpsl_country', 'United States'),
(1484, 154, 'wpsl_country_iso', 'US\n'),
(1485, 154, 'wpsl_phone', '(256) 844-2286'),
(1486, 154, 'wpsl_url', 'http://www.westernsizzlin.net'),
(1487, 154, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1488, 155, 'wpsl_address', '568 US Highway 431'),
(1489, 155, 'wpsl_city', 'Boaz'),
(1490, 155, 'wpsl_state', 'Alabama'),
(1491, 155, 'wpsl_zip', '35067'),
(1492, 155, 'wpsl_country', 'United States'),
(1493, 155, 'wpsl_country_iso', 'US\n'),
(1494, 155, 'wpsl_phone', '(256) 840-2822'),
(1495, 155, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1496, 155, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1497, 156, 'wpsl_address', '5200 Towson Avenue'),
(1498, 156, 'wpsl_city', 'Fort Smith'),
(1499, 156, 'wpsl_state', 'Arkansas'),
(1500, 156, 'wpsl_zip', '72901'),
(1501, 156, 'wpsl_country', 'United States'),
(1502, 156, 'wpsl_country_iso', 'US\n'),
(1503, 156, 'wpsl_phone', '(479) 646-7715'),
(1504, 156, 'wpsl_url', 'https://www.westernsizzlinfortsmith.com/#/'),
(1505, 156, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1506, 157, 'wpsl_address', '5720 Rogers Ave'),
(1507, 157, 'wpsl_city', 'Fort Smith'),
(1508, 157, 'wpsl_state', 'Arkansas'),
(1509, 157, 'wpsl_zip', '72903'),
(1510, 157, 'wpsl_country', 'United States'),
(1511, 157, 'wpsl_country_iso', 'US\n'),
(1512, 157, 'wpsl_phone', '(479) 452-9050'),
(1513, 157, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1514, 157, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1515, 158, 'wpsl_address', '3120 Alma Highway'),
(1516, 158, 'wpsl_city', 'Van Buren'),
(1517, 158, 'wpsl_state', 'Arkansas'),
(1518, 158, 'wpsl_zip', '72956'),
(1519, 158, 'wpsl_country', 'United States'),
(1520, 158, 'wpsl_country_iso', 'US\n'),
(1521, 158, 'wpsl_phone', '(501) 474-2357'),
(1522, 158, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1523, 158, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1524, 159, 'wpsl_address', '905 Hwy 62 65 North'),
(1525, 159, 'wpsl_city', 'Harrison'),
(1526, 159, 'wpsl_state', 'Arkansas'),
(1527, 159, 'wpsl_zip', '72602'),
(1528, 159, 'wpsl_country', 'United States'),
(1529, 159, 'wpsl_country_iso', 'US\n'),
(1530, 159, 'wpsl_phone', '(870) 741-1545'),
(1531, 159, 'wpsl_url', 'http://mywesternsizzlin.com'),
(1532, 159, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1533, 160, 'wpsl_address', '621 Martin Luther King Blvd'),
(1534, 160, 'wpsl_city', 'Malvern'),
(1535, 160, 'wpsl_state', 'Arkansas'),
(1536, 160, 'wpsl_zip', '72104'),
(1537, 160, 'wpsl_country', 'United States'),
(1538, 160, 'wpsl_country_iso', 'US\n'),
(1539, 160, 'wpsl_phone', '(501) 337-4933'),
(1540, 160, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1541, 160, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1542, 161, 'wpsl_address', 'Highway 65 South'),
(1543, 161, 'wpsl_city', 'Clinton'),
(1544, 161, 'wpsl_state', 'Arkansas'),
(1545, 161, 'wpsl_zip', '72031'),
(1546, 161, 'wpsl_country', 'United States'),
(1547, 161, 'wpsl_country_iso', 'US\n'),
(1548, 161, 'wpsl_phone', '(501) 745-5222'),
(1549, 161, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1550, 161, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1551, 162, 'wpsl_address', '3210 East Race Street'),
(1552, 162, 'wpsl_city', 'Searcy'),
(1553, 162, 'wpsl_state', 'Arkansas'),
(1554, 162, 'wpsl_zip', '72143'),
(1555, 162, 'wpsl_country', 'United States'),
(1556, 162, 'wpsl_country_iso', 'US\n'),
(1557, 162, 'wpsl_phone', '(501) 268-2464'),
(1558, 162, 'wpsl_url', 'https://www.westernsizzlinsearcy.com'),
(1559, 162, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1560, 163, 'wpsl_address', '1105 East Main Street'),
(1561, 163, 'wpsl_city', 'Russellville'),
(1562, 163, 'wpsl_state', 'Arkansas'),
(1563, 163, 'wpsl_zip', '72801'),
(1564, 163, 'wpsl_country', 'United States'),
(1565, 163, 'wpsl_country_iso', 'US\n'),
(1566, 163, 'wpsl_phone', '(479) 968-1757'),
(1567, 163, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1568, 163, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1569, 164, 'wpsl_address', '106 W. P. Malone'),
(1570, 164, 'wpsl_city', 'Arkadelphia'),
(1571, 164, 'wpsl_state', 'Arkansas'),
(1572, 164, 'wpsl_zip', '71923'),
(1573, 164, 'wpsl_country', 'United States');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1574, 164, 'wpsl_country_iso', 'US\n'),
(1575, 164, 'wpsl_phone', '(870) 246-5866'),
(1576, 164, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1577, 164, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1578, 165, 'wpsl_address', '3492 West Sunset'),
(1579, 165, 'wpsl_city', 'Springdale'),
(1580, 165, 'wpsl_state', 'Arkansas'),
(1581, 165, 'wpsl_zip', '72762'),
(1582, 165, 'wpsl_country', 'United States'),
(1583, 165, 'wpsl_country_iso', 'US\n'),
(1584, 165, 'wpsl_phone', '(479) 750-3663'),
(1585, 165, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1586, 165, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1587, 166, 'wpsl_address', 'Highway 27 South & Highway 27 Bypass'),
(1588, 166, 'wpsl_city', 'Nashville'),
(1589, 166, 'wpsl_state', 'Arkansas'),
(1590, 166, 'wpsl_zip', '71852'),
(1591, 166, 'wpsl_country', 'United States'),
(1592, 166, 'wpsl_country_iso', 'US\n'),
(1593, 166, 'wpsl_phone', '(870) 845-1994'),
(1594, 166, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1595, 166, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1596, 167, 'wpsl_address', '436 Hwy 425 North [P. O. Box 1320]'),
(1597, 167, 'wpsl_city', 'Monticello'),
(1598, 167, 'wpsl_state', 'Arkansas'),
(1599, 167, 'wpsl_zip', '71657'),
(1600, 167, 'wpsl_country', 'United States'),
(1601, 167, 'wpsl_country_iso', 'US\n'),
(1602, 167, 'wpsl_phone', '(870) 367-8282'),
(1603, 167, 'wpsl_url', 'https://www.thewesternsizzlin.com'),
(1604, 167, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1605, 168, 'wpsl_address', '1502 Highway 62 East'),
(1606, 168, 'wpsl_city', 'Mountain Home'),
(1607, 168, 'wpsl_state', 'Arkansas'),
(1608, 168, 'wpsl_zip', '72653'),
(1609, 168, 'wpsl_country', 'United States'),
(1610, 168, 'wpsl_country_iso', 'US\n'),
(1611, 168, 'wpsl_phone', '(870) 425-2505'),
(1612, 168, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1613, 168, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1614, 169, 'wpsl_address', '230 Highway 80 East'),
(1615, 169, 'wpsl_city', 'Pooler'),
(1616, 169, 'wpsl_state', 'Georgia'),
(1617, 169, 'wpsl_zip', '31322'),
(1618, 169, 'wpsl_country', 'United States'),
(1619, 169, 'wpsl_country_iso', 'US\n'),
(1620, 169, 'wpsl_phone', '(912) 748-5396'),
(1621, 169, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1622, 169, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1623, 170, 'wpsl_address', '501 Legion Drive'),
(1624, 170, 'wpsl_city', 'Dalton'),
(1625, 170, 'wpsl_state', 'Georgia'),
(1626, 170, 'wpsl_zip', '30722'),
(1627, 170, 'wpsl_country', 'United States'),
(1628, 170, 'wpsl_country_iso', 'US\n'),
(1629, 170, 'wpsl_phone', '(706) 279-1799'),
(1630, 170, 'wpsl_url', 'https://www.daltonwesternsizzlin.com/#/'),
(1631, 170, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1632, 171, 'wpsl_address', '1500 West 4th Street'),
(1633, 171, 'wpsl_city', 'Adel'),
(1634, 171, 'wpsl_state', 'Georgia'),
(1635, 171, 'wpsl_zip', '31620'),
(1636, 171, 'wpsl_country', 'United States'),
(1637, 171, 'wpsl_country_iso', 'US\n'),
(1638, 171, 'wpsl_phone', '(229) 896-3663'),
(1639, 171, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1640, 171, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1641, 172, 'wpsl_address', '997 South Sunset Blvd'),
(1642, 172, 'wpsl_city', 'Jesup'),
(1643, 172, 'wpsl_state', 'Georgia'),
(1644, 172, 'wpsl_zip', '31545'),
(1645, 172, 'wpsl_country', 'United States'),
(1646, 172, 'wpsl_country_iso', 'US\n'),
(1647, 172, 'wpsl_phone', '(912) 588-1000'),
(1648, 172, 'wpsl_url', 'http://westernsizzlinjesup.com'),
(1649, 172, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1650, 173, 'wpsl_address', '17567 York Road'),
(1651, 173, 'wpsl_city', 'Hagerstown'),
(1652, 173, 'wpsl_state', 'Maryland'),
(1653, 173, 'wpsl_zip', '21740'),
(1654, 173, 'wpsl_country', 'United States'),
(1655, 173, 'wpsl_country_iso', 'US\n'),
(1656, 173, 'wpsl_phone', '(301) 791-7560'),
(1657, 173, 'wpsl_url', 'https://westernsizzlinhagerstown.com'),
(1658, 173, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1659, 174, 'wpsl_address', '1100 North Frontage Road'),
(1660, 174, 'wpsl_city', 'Meridian'),
(1661, 174, 'wpsl_state', 'Mississippi'),
(1662, 174, 'wpsl_zip', '39301'),
(1663, 174, 'wpsl_country', 'United States'),
(1664, 174, 'wpsl_country_iso', 'US\n'),
(1665, 174, 'wpsl_phone', '(601) 693-3972'),
(1666, 174, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1667, 174, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1668, 175, 'wpsl_address', '1041 N. Wesleyan Blvd [P.O. Box 4345]'),
(1669, 175, 'wpsl_city', 'Rocky Mount'),
(1670, 175, 'wpsl_state', 'North Carolina'),
(1671, 175, 'wpsl_zip', '27803'),
(1672, 175, 'wpsl_country', 'United States'),
(1673, 175, 'wpsl_country_iso', 'US\n'),
(1674, 175, 'wpsl_phone', '(252) 446-3262'),
(1675, 175, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1676, 175, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1677, 176, 'wpsl_address', '100 N. Berkeley Blvd'),
(1678, 176, 'wpsl_city', 'Goldsboro'),
(1679, 176, 'wpsl_state', 'North Carolina'),
(1680, 176, 'wpsl_zip', '27530'),
(1681, 176, 'wpsl_country', 'United States'),
(1682, 176, 'wpsl_country_iso', 'US\n'),
(1683, 176, 'wpsl_phone', '(919) 778-7444'),
(1684, 176, 'wpsl_url', 'https://sizzlinofgoldsboro.com'),
(1685, 176, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1686, 177, 'wpsl_address', '101 North Bruton Street'),
(1687, 177, 'wpsl_city', 'Wilson'),
(1688, 177, 'wpsl_state', 'North Carolina'),
(1689, 177, 'wpsl_zip', '27893'),
(1690, 177, 'wpsl_country', 'United States'),
(1691, 177, 'wpsl_country_iso', 'US\n'),
(1692, 177, 'wpsl_phone', '(252) 291-6100'),
(1693, 177, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1694, 177, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1695, 178, 'wpsl_address', '1810 West Cumberland'),
(1696, 178, 'wpsl_city', 'Dunn'),
(1697, 178, 'wpsl_state', 'North Carolina'),
(1698, 178, 'wpsl_zip', '28334'),
(1699, 178, 'wpsl_country', 'United States'),
(1700, 178, 'wpsl_country_iso', 'US\n'),
(1701, 178, 'wpsl_phone', '(910) 892-8901'),
(1702, 178, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1703, 178, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1704, 179, 'wpsl_address', '11961 South 226 Hwy'),
(1705, 179, 'wpsl_city', 'Spruce Pine'),
(1706, 179, 'wpsl_state', 'North Carolina'),
(1707, 179, 'wpsl_zip', '28777'),
(1708, 179, 'wpsl_country', 'United States'),
(1709, 179, 'wpsl_country_iso', 'US\n'),
(1710, 179, 'wpsl_phone', '(828) 765-9151'),
(1711, 179, 'wpsl_url', 'https://www.westernsizzlinnc.com/#/'),
(1712, 179, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1713, 180, 'wpsl_address', '2110 S.W. 74th Street'),
(1714, 180, 'wpsl_city', 'Oklahoma City'),
(1715, 180, 'wpsl_state', 'Oklahoma'),
(1716, 180, 'wpsl_zip', '73159'),
(1717, 180, 'wpsl_country', 'United States'),
(1718, 180, 'wpsl_country_iso', 'US\n'),
(1719, 180, 'wpsl_phone', '(405) 682-2425'),
(1720, 180, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1721, 180, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1722, 181, 'wpsl_address', '1317 Moore Avenue'),
(1723, 181, 'wpsl_city', 'Moore'),
(1724, 181, 'wpsl_state', 'Oklahoma'),
(1725, 181, 'wpsl_zip', '73160'),
(1726, 181, 'wpsl_country', 'United States'),
(1727, 181, 'wpsl_country_iso', 'US\n'),
(1728, 181, 'wpsl_phone', '(405) 799-7831'),
(1729, 181, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1730, 181, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1731, 182, 'wpsl_address', '3001 South Fourth'),
(1732, 182, 'wpsl_city', 'Chickasha'),
(1733, 182, 'wpsl_state', 'Oklahoma'),
(1734, 182, 'wpsl_zip', '73018'),
(1735, 182, 'wpsl_country', 'United States'),
(1736, 182, 'wpsl_country_iso', 'US\n'),
(1737, 182, 'wpsl_phone', '(405) 224-9382'),
(1738, 182, 'wpsl_url', 'http://westernsizzlinoklahoma.com'),
(1739, 182, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1740, 183, 'wpsl_address', '2107 South Main Street'),
(1741, 183, 'wpsl_city', 'Elk City'),
(1742, 183, 'wpsl_state', 'Oklahoma'),
(1743, 183, 'wpsl_zip', '73644'),
(1744, 183, 'wpsl_country', 'United States'),
(1745, 183, 'wpsl_country_iso', 'US\n'),
(1746, 183, 'wpsl_phone', '(580) 243-2100'),
(1747, 183, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1748, 183, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1749, 184, 'wpsl_address', '3200 North Main Street'),
(1750, 184, 'wpsl_city', 'Altus'),
(1751, 184, 'wpsl_state', 'Oklahoma'),
(1752, 184, 'wpsl_zip', '73521'),
(1753, 184, 'wpsl_country', 'United States'),
(1754, 184, 'wpsl_country_iso', 'US\n'),
(1755, 184, 'wpsl_phone', '(580) 477-1717'),
(1756, 184, 'wpsl_url', 'https://www.westernsizzlinok.com'),
(1757, 184, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1758, 185, 'wpsl_address', '2210 North Broadway'),
(1759, 185, 'wpsl_city', 'Poteau'),
(1760, 185, 'wpsl_state', 'Oklahoma'),
(1761, 185, 'wpsl_zip', '74953'),
(1762, 185, 'wpsl_country', 'United States'),
(1763, 185, 'wpsl_country_iso', 'US\n'),
(1764, 185, 'wpsl_phone', '(918) 647-4999'),
(1765, 185, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1766, 185, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1767, 186, 'wpsl_address', '2688 David McLeod Blvd.'),
(1768, 186, 'wpsl_city', 'Florence'),
(1769, 186, 'wpsl_state', 'South Carolina'),
(1770, 186, 'wpsl_zip', '29501'),
(1771, 186, 'wpsl_country', 'United States'),
(1772, 186, 'wpsl_country_iso', 'US\n'),
(1773, 186, 'wpsl_phone', '(843) 665-5965'),
(1774, 186, 'wpsl_url', 'http://www.florencewesternsizzlin.com'),
(1775, 186, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1776, 187, 'wpsl_address', '1804 Decatur Pike'),
(1777, 187, 'wpsl_city', 'Athens'),
(1778, 187, 'wpsl_state', 'Tennessee'),
(1779, 187, 'wpsl_zip', '37303'),
(1780, 187, 'wpsl_country', 'United States'),
(1781, 187, 'wpsl_country_iso', 'US\n'),
(1782, 187, 'wpsl_phone', '(423) 745-2626'),
(1783, 187, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1784, 187, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1785, 188, 'wpsl_address', '1130 Highway 28'),
(1786, 188, 'wpsl_city', 'Jasper'),
(1787, 188, 'wpsl_state', 'Tennessee'),
(1788, 188, 'wpsl_zip', '37347'),
(1789, 188, 'wpsl_country', 'United States'),
(1790, 188, 'wpsl_country_iso', 'US\n'),
(1791, 188, 'wpsl_phone', '(423) 942-5777'),
(1792, 188, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1793, 188, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1794, 189, 'wpsl_address', '1-20 Hiway 1219'),
(1795, 189, 'wpsl_city', 'Wickett'),
(1796, 189, 'wpsl_state', 'Texas'),
(1797, 189, 'wpsl_zip', '79788'),
(1798, 189, 'wpsl_country', 'United States'),
(1799, 189, 'wpsl_country_iso', 'US\n'),
(1800, 189, 'wpsl_phone', '(432) 943-2173'),
(1801, 189, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1802, 189, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1803, 190, 'wpsl_address', '3211 Riverside Drive'),
(1804, 190, 'wpsl_city', 'Danville'),
(1805, 190, 'wpsl_state', 'Virginia'),
(1806, 190, 'wpsl_zip', '24541'),
(1807, 190, 'wpsl_country', 'United States'),
(1808, 190, 'wpsl_country_iso', 'US\n'),
(1809, 190, 'wpsl_phone', '(434) 792-4000'),
(1810, 190, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1811, 190, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1812, 191, 'wpsl_address', '37 Neal Run Boulevard'),
(1813, 191, 'wpsl_city', 'Parkersburg'),
(1814, 191, 'wpsl_state', 'West Virginia'),
(1815, 191, 'wpsl_zip', '26101'),
(1816, 191, 'wpsl_country', 'United States'),
(1817, 191, 'wpsl_country_iso', 'US\n'),
(1818, 191, 'wpsl_phone', '(304) 893-5444'),
(1819, 191, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1820, 191, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1821, 192, 'wpsl_address', '8365 Sudley Road'),
(1822, 192, 'wpsl_city', 'Manassas'),
(1823, 192, 'wpsl_state', 'Virginia'),
(1824, 192, 'wpsl_zip', '20109'),
(1825, 192, 'wpsl_country', 'United States'),
(1826, 192, 'wpsl_country_iso', 'US\n'),
(1827, 192, 'wpsl_phone', '(703) 369-6791'),
(1828, 192, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1829, 192, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1830, 193, 'wpsl_address', '1780 Carl d Silver Pkway'),
(1831, 193, 'wpsl_city', 'Fredricksburg'),
(1832, 193, 'wpsl_state', 'Virginia'),
(1833, 193, 'wpsl_zip', '22401'),
(1834, 193, 'wpsl_country', 'United States'),
(1835, 193, 'wpsl_country_iso', 'US\n'),
(1836, 193, 'wpsl_phone', '(540) 548-9162'),
(1837, 193, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1838, 193, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1839, 194, 'wpsl_address', '5902 Richmond Highway'),
(1840, 194, 'wpsl_city', 'Alexandria'),
(1841, 194, 'wpsl_state', 'Virginia'),
(1842, 194, 'wpsl_zip', '22303'),
(1843, 194, 'wpsl_country', 'United States'),
(1844, 194, 'wpsl_country_iso', 'US\n'),
(1845, 194, 'wpsl_phone', '(703) 329-1555'),
(1846, 194, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1847, 194, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1848, 195, 'wpsl_address', '576 Branch Lands Boulevard'),
(1849, 195, 'wpsl_city', 'Charlottesville'),
(1850, 195, 'wpsl_state', 'Virginia'),
(1851, 195, 'wpsl_zip', '22901'),
(1852, 195, 'wpsl_country', 'United States'),
(1853, 195, 'wpsl_country_iso', 'US\n'),
(1854, 195, 'wpsl_phone', '(434) 975-5613'),
(1855, 195, 'wpsl_url', 'https://www.woodgrillbuffetva.com'),
(1856, 195, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1857, 196, 'wpsl_address', '1711 Resevoir Street'),
(1858, 196, 'wpsl_city', 'Harrisonburg'),
(1859, 196, 'wpsl_state', 'Virginia'),
(1860, 196, 'wpsl_zip', '22801'),
(1861, 196, 'wpsl_country', 'United States'),
(1862, 196, 'wpsl_country_iso', 'US\n'),
(1863, 196, 'wpsl_phone', '(540) 432-9303'),
(1864, 196, 'wpsl_url', 'http://woodgrillbuffet.com'),
(1865, 196, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1866, 197, 'wpsl_address', '2385 Parkway'),
(1867, 197, 'wpsl_city', 'Pigeon Forge'),
(1868, 197, 'wpsl_state', 'Tennessee'),
(1869, 197, 'wpsl_zip', '37863'),
(1870, 197, 'wpsl_country', 'United States'),
(1871, 197, 'wpsl_country_iso', 'US\n'),
(1872, 197, 'wpsl_phone', '(865) 429-3120'),
(1873, 197, 'wpsl_url', 'https://www.smokieslodge.com'),
(1874, 197, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1875, 198, 'wpsl_address', '14135 Main Street,Building D'),
(1876, 198, 'wpsl_city', 'Hesperia'),
(1877, 198, 'wpsl_state', 'California'),
(1878, 198, 'wpsl_zip', '92345'),
(1879, 198, 'wpsl_country', 'United States'),
(1880, 198, 'wpsl_country_iso', 'US\n'),
(1881, 198, 'wpsl_phone', '(760) 981-4418'),
(1882, 198, 'wpsl_url', 'http://woodgrillbuffethesperia.com'),
(1883, 198, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1884, 199, 'wpsl_address', '1916 Congo Road'),
(1885, 199, 'wpsl_city', 'Benton'),
(1886, 199, 'wpsl_state', 'Arkansas'),
(1887, 199, 'wpsl_zip', '72015'),
(1888, 199, 'wpsl_country', 'United States'),
(1889, 199, 'wpsl_country_iso', 'US\n'),
(1890, 199, 'wpsl_phone', '(501) 778-9656'),
(1891, 199, 'wpsl_url', 'https://www.woodgrillbuffetbenton.com/home'),
(1892, 199, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1893, 200, 'wpsl_address', '502 West Roosevelt Blvd.'),
(1894, 200, 'wpsl_city', 'Monroe'),
(1895, 200, 'wpsl_state', 'North Carolina'),
(1896, 200, 'wpsl_zip', '28110'),
(1897, 200, 'wpsl_country', 'United States'),
(1898, 200, 'wpsl_country_iso', 'US\n'),
(1899, 200, 'wpsl_phone', '(704) 238-1983'),
(1900, 200, 'wpsl_url', 'http://www.western-sizzlin.com'),
(1901, 200, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1902, 201, 'wpsl_address', '605 Big A Road'),
(1903, 201, 'wpsl_city', 'Toccoa'),
(1904, 201, 'wpsl_state', 'Georgia'),
(1905, 201, 'wpsl_zip', '30577'),
(1906, 201, 'wpsl_country', 'United States'),
(1907, 201, 'wpsl_country_iso', 'US\n'),
(1908, 201, 'wpsl_phone', '(706) 282-1953'),
(1909, 201, 'wpsl_url', 'https://quincy-of-toccoa.business.site/?utm_source=gmb&utm_medium=referral'),
(1910, 201, 'wpsl_hours', 'a:7:{s:6:\"monday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:7:\"tuesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:9:\"wednesday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"thursday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:6:\"friday\";a:1:{i:0;s:15:\"9:00 AM,5:00 PM\";}s:8:\"saturday\";s:0:\"\";s:6:\"sunday\";s:0:\"\";}'),
(1911, 198, '_edit_lock', '1570582351:2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-09-27 16:43:45', '2019-09-27 16:43:45', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2019-09-30 05:53:20', '2019-09-30 05:53:20', '', 0, 'http://western-sizzling-corporate.lndo.site/?p=1', 0, 'post', '', 1),
(2, 1, '2019-09-27 16:43:45', '2019-09-27 16:43:45', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://western-sizzling-corporate.lndo.site/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2019-09-30 05:52:09', '2019-09-30 05:52:09', '', 0, 'http://western-sizzling-corporate.lndo.site/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-09-27 16:43:45', '2019-09-27 16:43:45', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://western-sizzling-corporate.lndo.site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2019-09-30 05:52:07', '2019-09-30 05:52:07', '', 0, 'http://western-sizzling-corporate.lndo.site/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-09-27 16:54:47', '2019-09-27 16:54:47', '<!-- wp:html -->\n<div id=\'product-component-1569603240030\'></div>\n<script type=\"text/javascript\">\n/*<![CDATA[*/\n(function () {\n  var scriptURL = \'https://sdks.shopifycdn.com/buy-button/latest/buy-button-storefront.min.js\';\n  if (window.ShopifyBuy) {\n    if (window.ShopifyBuy.UI) {\n      ShopifyBuyInit();\n    } else {\n      loadScript();\n    }\n  } else {\n    loadScript();\n  }\n  function loadScript() {\n    var script = document.createElement(\'script\');\n    script.async = true;\n    script.src = scriptURL;\n    (document.getElementsByTagName(\'head\')[0] || document.getElementsByTagName(\'body\')[0]).appendChild(script);\n    script.onload = ShopifyBuyInit;\n  }\n  function ShopifyBuyInit() {\n    var client = ShopifyBuy.buildClient({\n      domain: \'western-sizzlincom.myshopify.com\',\n      storefrontAccessToken: \'6028fe1ca8de3281b79b25d14bd42dcb\',\n    });\n    ShopifyBuy.UI.onReady(client).then(function (ui) {\n      ui.createComponent(\'product\', {\n        id: \'89771515\',\n        node: document.getElementById(\'product-component-1569603240030\'),\n        moneyFormat: \'%24%7B%7Bamount%7D%7D\',\n        options: {\n  \"product\": {\n    \"styles\": {\n      \"product\": {\n        \"@media (min-width: 601px)\": {\n          \"max-width\": \"calc(25% - 20px)\",\n          \"margin-left\": \"20px\",\n          \"margin-bottom\": \"50px\"\n        }\n      }\n    },\n    \"text\": {\n      \"button\": \"Add to cart\"\n    }\n  },\n  \"productSet\": {\n    \"styles\": {\n      \"products\": {\n        \"@media (min-width: 601px)\": {\n          \"margin-left\": \"-20px\"\n        }\n      }\n    }\n  },\n  \"modalProduct\": {\n    \"contents\": {\n      \"img\": false,\n      \"imgWithCarousel\": true,\n      \"button\": false,\n      \"buttonWithQuantity\": true\n    },\n    \"styles\": {\n      \"product\": {\n        \"@media (min-width: 601px)\": {\n          \"max-width\": \"100%\",\n          \"margin-left\": \"0px\",\n          \"margin-bottom\": \"0px\"\n        }\n      }\n    },\n    \"text\": {\n      \"button\": \"Add to cart\"\n    }\n  },\n  \"cart\": {\n    \"text\": {\n      \"total\": \"Subtotal\",\n      \"button\": \"Checkout\"\n    }\n  }\n},\n      });\n    });\n  }\n})();\n/*]]>*/\n</script>\n<!-- /wp:html -->', 'test', '', 'trash', 'closed', 'closed', '', 'test__trashed', '', '', '2019-09-30 05:57:44', '2019-09-30 05:57:44', '', 0, 'http://western-sizzling-corporate.lndo.site/?page_id=5', 0, 'page', '', 0),
(6, 1, '2019-09-27 16:54:47', '2019-09-27 16:54:47', '<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>&lt;div id=\'product-component-1569603240030\'>&lt;/div>\n&lt;script type=\"text/javascript\">\n/*&lt;![CDATA[*/\n(function () {\n  var scriptURL = \'https://sdks.shopifycdn.com/buy-button/latest/buy-button-storefront.min.js\';\n  if (window.ShopifyBuy) {\n    if (window.ShopifyBuy.UI) {\n      ShopifyBuyInit();\n    } else {\n      loadScript();\n    }\n  } else {\n    loadScript();\n  }\n  function loadScript() {\n    var script = document.createElement(\'script\');\n    script.async = true;\n    script.src = scriptURL;\n    (document.getElementsByTagName(\'head\')[0] || document.getElementsByTagName(\'body\')[0]).appendChild(script);\n    script.onload = ShopifyBuyInit;\n  }\n  function ShopifyBuyInit() {\n    var client = ShopifyBuy.buildClient({\n      domain: \'western-sizzlincom.myshopify.com\',\n      storefrontAccessToken: \'6028fe1ca8de3281b79b25d14bd42dcb\',\n    });\n    ShopifyBuy.UI.onReady(client).then(function (ui) {\n      ui.createComponent(\'product\', {\n        id: \'89771515\',\n        node: document.getElementById(\'product-component-1569603240030\'),\n        moneyFormat: \'%24%7B%7Bamount%7D%7D\',\n        options: {\n  \"product\": {\n    \"styles\": {\n      \"product\": {\n        \"@media (min-width: 601px)\": {\n          \"max-width\": \"calc(25% - 20px)\",\n          \"margin-left\": \"20px\",\n          \"margin-bottom\": \"50px\"\n        }\n      }\n    },\n    \"text\": {\n      \"button\": \"Add to cart\"\n    }\n  },\n  \"productSet\": {\n    \"styles\": {\n      \"products\": {\n        \"@media (min-width: 601px)\": {\n          \"margin-left\": \"-20px\"\n        }\n      }\n    }\n  },\n  \"modalProduct\": {\n    \"contents\": {\n      \"img\": false,\n      \"imgWithCarousel\": true,\n      \"button\": false,\n      \"buttonWithQuantity\": true\n    },\n    \"styles\": {\n      \"product\": {\n        \"@media (min-width: 601px)\": {\n          \"max-width\": \"100%\",\n          \"margin-left\": \"0px\",\n          \"margin-bottom\": \"0px\"\n        }\n      }\n    },\n    \"text\": {\n      \"button\": \"Add to cart\"\n    }\n  },\n  \"cart\": {\n    \"text\": {\n      \"total\": \"Subtotal\",\n      \"button\": \"Checkout\"\n    }\n  }\n},\n      });\n    });\n  }\n})();\n/*]]>*/\n&lt;/script></code></pre>\n<!-- /wp:code -->', 'test', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-09-27 16:54:47', '2019-09-27 16:54:47', '', 5, 'http://western-sizzling-corporate.lndo.site/2019/09/27/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-09-27 16:56:10', '2019-09-27 16:56:10', '<!-- wp:html -->\n<div id=\'product-component-1569603240030\'></div>\n<script type=\"text/javascript\">\n/*<![CDATA[*/\n(function () {\n  var scriptURL = \'https://sdks.shopifycdn.com/buy-button/latest/buy-button-storefront.min.js\';\n  if (window.ShopifyBuy) {\n    if (window.ShopifyBuy.UI) {\n      ShopifyBuyInit();\n    } else {\n      loadScript();\n    }\n  } else {\n    loadScript();\n  }\n  function loadScript() {\n    var script = document.createElement(\'script\');\n    script.async = true;\n    script.src = scriptURL;\n    (document.getElementsByTagName(\'head\')[0] || document.getElementsByTagName(\'body\')[0]).appendChild(script);\n    script.onload = ShopifyBuyInit;\n  }\n  function ShopifyBuyInit() {\n    var client = ShopifyBuy.buildClient({\n      domain: \'western-sizzlincom.myshopify.com\',\n      storefrontAccessToken: \'6028fe1ca8de3281b79b25d14bd42dcb\',\n    });\n    ShopifyBuy.UI.onReady(client).then(function (ui) {\n      ui.createComponent(\'product\', {\n        id: \'89771515\',\n        node: document.getElementById(\'product-component-1569603240030\'),\n        moneyFormat: \'%24%7B%7Bamount%7D%7D\',\n        options: {\n  \"product\": {\n    \"styles\": {\n      \"product\": {\n        \"@media (min-width: 601px)\": {\n          \"max-width\": \"calc(25% - 20px)\",\n          \"margin-left\": \"20px\",\n          \"margin-bottom\": \"50px\"\n        }\n      }\n    },\n    \"text\": {\n      \"button\": \"Add to cart\"\n    }\n  },\n  \"productSet\": {\n    \"styles\": {\n      \"products\": {\n        \"@media (min-width: 601px)\": {\n          \"margin-left\": \"-20px\"\n        }\n      }\n    }\n  },\n  \"modalProduct\": {\n    \"contents\": {\n      \"img\": false,\n      \"imgWithCarousel\": true,\n      \"button\": false,\n      \"buttonWithQuantity\": true\n    },\n    \"styles\": {\n      \"product\": {\n        \"@media (min-width: 601px)\": {\n          \"max-width\": \"100%\",\n          \"margin-left\": \"0px\",\n          \"margin-bottom\": \"0px\"\n        }\n      }\n    },\n    \"text\": {\n      \"button\": \"Add to cart\"\n    }\n  },\n  \"cart\": {\n    \"text\": {\n      \"total\": \"Subtotal\",\n      \"button\": \"Checkout\"\n    }\n  }\n},\n      });\n    });\n  }\n})();\n/*]]>*/\n</script>\n<!-- /wp:html -->', 'test', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-09-27 16:56:10', '2019-09-27 16:56:10', '', 5, 'http://western-sizzling-corporate.lndo.site/2019/09/27/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-09-30 05:52:07', '2019-09-30 05:52:07', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://western-sizzling-corporate.lndo.site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-09-30 05:52:07', '2019-09-30 05:52:07', '', 3, 'http://western-sizzling-corporate.lndo.site/2019/09/30/3-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-09-30 05:52:09', '2019-09-30 05:52:09', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://western-sizzling-corporate.lndo.site/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-09-30 05:52:09', '2019-09-30 05:52:09', '', 2, 'http://western-sizzling-corporate.lndo.site/2019/09/30/2-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-09-30 05:53:20', '2019-09-30 05:53:20', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-09-30 05:53:20', '2019-09-30 05:53:20', '', 1, 'http://western-sizzling-corporate.lndo.site/2019/09/30/1-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-09-30 05:57:52', '2019-09-30 05:57:52', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-10-08 16:50:15', '2019-10-08 16:50:15', '', 0, 'http://western-sizzling-corporate.lndo.site/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-09-30 05:57:52', '2019-09-30 05:57:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-09-30 05:57:52', '2019-09-30 05:57:52', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/09/30/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-09-30 05:57:57', '2019-09-30 05:57:57', '<div style=\"font-size: 1.1em;\">\r\n<strong>Western Sizzlin</strong> was founded in 1962, in Augusta, GA, by Nick Pascarella.  Nick discovered a unique way of grilling steaks. He used a special steak seasoning called Gold Dust®, and a special process of grilling the bottom and top of the steaks simultaneously; thus, our FlameKist® steak was born!  This unique process locks in the flavor as the steak is seared to a savory perfection.</div>\r\n&nbsp;\r\n<strong>Western Sizzlin</strong> Steaks and More also offers a variety of other tasty entrees like chicken, seafood, vegetables, and fresh-baked breads and desserts.  \r\n&nbsp; \r\nOur new <strong>Western Sizzlin</strong> Express is a small footprint concept that features freshly breaded chicken tenders, FlameKist® steaks, grilled burgers, and hot dogs, fresh garden salads, desserts and more.\r\n&nbsp;\r\nFor a delicious buffet, please visit our franchised owned Wood Grill Buffet or our corporately owned Great American Buffet.  \r\nThe Great American Buffet was founded in 1993 and the Wood Grill Buffet in 1997.  Our buffets feature homemade foods displayed in a buffet setting with carving stations, exhibition cooking, hot and cold buffets, and bakery. From mouth-watering desserts, vegetables, and salads to delectable meat and seafood. The offerings are an enormous selection of high-quality offerings. All served in a warm friendly atmosphere at an incredible value.\r\n&nbsp;\r\nWhen it comes to delicious steaks and/or fresh buffet, there is no doubt that Western Sizzlin has it all!\r\n</div>', 'About Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-10-08 08:15:02', '2019-10-08 08:15:02', '', 0, 'http://western-sizzling-corporate.lndo.site/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-09-30 05:57:57', '2019-09-30 05:57:57', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-09-30 05:57:57', '2019-09-30 05:57:57', '', 13, 'http://western-sizzling-corporate.lndo.site/2019/09/30/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-09-30 05:58:10', '2019-09-30 05:58:10', '', 'Gift Cards', '', 'publish', 'closed', 'closed', '', 'gift-cards', '', '', '2019-10-08 08:03:19', '2019-10-08 08:03:19', '', 0, 'http://western-sizzling-corporate.lndo.site/?page_id=15', 0, 'page', '', 0),
(16, 1, '2019-09-30 05:58:10', '2019-09-30 05:58:10', '', 'Gift Card', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-09-30 05:58:10', '2019-09-30 05:58:10', '', 15, 'http://western-sizzling-corporate.lndo.site/2019/09/30/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-09-30 05:58:24', '2019-09-30 05:58:24', '', 'Purchase', '', 'publish', 'closed', 'closed', '', 'purchase', '', '', '2019-10-08 08:03:32', '2019-10-08 08:03:32', '', 0, 'http://western-sizzling-corporate.lndo.site/?page_id=17', 0, 'page', '', 0),
(18, 1, '2019-09-30 05:58:24', '2019-09-30 05:58:24', '', 'Purchase', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-09-30 05:58:24', '2019-09-30 05:58:24', '', 17, 'http://western-sizzling-corporate.lndo.site/2019/09/30/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-09-30 05:58:33', '2019-09-30 05:58:33', '', 'Review Us', '', 'trash', 'closed', 'closed', '', 'review-us__trashed', '', '', '2019-10-07 12:54:25', '2019-10-07 12:54:25', '', 0, 'http://western-sizzling-corporate.lndo.site/?page_id=19', 0, 'page', '', 0),
(20, 1, '2019-09-30 05:58:33', '2019-09-30 05:58:33', '', 'Review Us', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-09-30 05:58:33', '2019-09-30 05:58:33', '', 19, 'http://western-sizzling-corporate.lndo.site/2019/09/30/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-09-30 05:58:41', '2019-09-30 05:58:41', '', 'Nutrition', '', 'publish', 'closed', 'closed', '', 'nutrition', '', '', '2019-10-08 08:03:25', '2019-10-08 08:03:25', '', 0, 'http://western-sizzling-corporate.lndo.site/?page_id=21', 0, 'page', '', 0),
(22, 1, '2019-09-30 05:58:41', '2019-09-30 05:58:41', '', 'Nutrition', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2019-09-30 05:58:41', '2019-09-30 05:58:41', '', 21, 'http://western-sizzling-corporate.lndo.site/2019/09/30/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2019-09-30 05:58:49', '2019-09-30 05:58:49', '<div style=\"font-size: 1.1em;\">\r\n<strong>Our business philosophy is:</strong>\r\nTo operate attractive, well-maintained restaurants in high-traffic locations that serve great food at a great price. This philosophy has served Western Sizzlin well for more than 50 years with high-quality offerings and smiling faces.</div>\r\n&nbsp;\r\n<strong>Our goal is also simple:</strong>\r\nTo provide everyone a great dining experience at a great price they can afford.\r\n \r\n<strong>We can’t do it without the dedicated success of each of our franchisees. We understand that your success is our success.</strong>\r\n \r\nWe offer three different business models to choose from: a traditional family steakhouse, a small footprint Express, and a full-service buffet concept, allowing you to perfectly marry our brand to your personal and business goals. Regardless of the path you choose, you’ll find yourself backed by a leadership team that is not only well seasoned but fully committed to your success.\r\n \r\nWe value each member of our franchise family and provide them with a clear path to growth. We offer initial training, site and design assistance to get them up and running.  We stay with them after the grand opening offering ongoing marketing, purchasing, and management support. \r\n\r\n<span class=\"text-danger\"><strong>Ready to Get Started?</strong></span> Form goes here --> CHAD. ', 'Franchise Focus', '', 'publish', 'closed', 'closed', '', 'franchise', '', '', '2019-10-08 08:23:02', '2019-10-08 08:23:02', '', 0, 'http://western-sizzling-corporate.lndo.site/?page_id=23', 0, 'page', '', 0),
(24, 1, '2019-09-30 05:58:49', '2019-09-30 05:58:49', '', 'Franchise', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-09-30 05:58:49', '2019-09-30 05:58:49', '', 23, 'http://western-sizzling-corporate.lndo.site/2019/09/30/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2019-09-30 05:59:02', '2019-09-30 05:59:02', '[wpsl template=\"default\" map_type=\"roadmap\" auto_locate=\"false\" start_marker=\"red\" store_marker=\"blue\"]', 'Locations', '', 'publish', 'closed', 'closed', '', 'locations', '', '', '2019-10-09 05:18:41', '2019-10-09 05:18:41', '', 0, 'http://western-sizzling-corporate.lndo.site/?page_id=25', 0, 'page', '', 0),
(26, 1, '2019-09-30 05:59:02', '2019-09-30 05:59:02', '', 'Locations', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-09-30 05:59:02', '2019-09-30 05:59:02', '', 25, 'http://western-sizzling-corporate.lndo.site/2019/09/30/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2019-09-30 06:00:05', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-09-30 06:00:05', '0000-00-00 00:00:00', '', 0, 'http://western-sizzling-corporate.lndo.site/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2019-09-30 06:01:12', '2019-09-30 06:01:12', '', 'About Us', '', 'publish', 'closed', 'closed', '', '28', '', '', '2019-10-08 08:17:46', '2019-10-08 08:17:46', '', 0, 'http://western-sizzling-corporate.lndo.site/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2019-09-30 06:01:12', '2019-09-30 06:01:12', '', 'Franchise', '', 'publish', 'closed', 'closed', '', '29', '', '', '2019-10-08 08:17:46', '2019-10-08 08:17:46', '', 0, 'http://western-sizzling-corporate.lndo.site/?p=29', 7, 'nav_menu_item', '', 0),
(30, 1, '2019-09-30 06:01:12', '2019-09-30 06:01:12', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2019-10-08 08:17:46', '2019-10-08 08:17:46', '', 0, 'http://western-sizzling-corporate.lndo.site/?p=30', 3, 'nav_menu_item', '', 0),
(31, 1, '2019-09-30 06:01:12', '2019-09-30 06:01:12', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2019-10-08 08:17:46', '2019-10-08 08:17:46', '', 0, 'http://western-sizzling-corporate.lndo.site/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2019-09-30 06:01:12', '2019-09-30 06:01:12', '', '<i class=\"fas fa-map-marker-alt\"></i> Locations', '', 'publish', 'closed', 'closed', '', '32', '', '', '2019-10-08 08:17:46', '2019-10-08 08:17:46', '', 0, 'http://western-sizzling-corporate.lndo.site/?p=32', 8, 'nav_menu_item', '', 0),
(33, 1, '2019-09-30 06:01:12', '2019-09-30 06:01:12', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2019-10-08 08:17:46', '2019-10-08 08:17:46', '', 0, 'http://western-sizzling-corporate.lndo.site/?p=33', 6, 'nav_menu_item', '', 0),
(34, 1, '2019-09-30 06:01:12', '2019-09-30 06:01:12', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2019-10-08 08:17:46', '2019-10-08 08:17:46', '', 0, 'http://western-sizzling-corporate.lndo.site/?p=34', 4, 'nav_menu_item', '', 0),
(36, 1, '2019-09-30 06:02:17', '2019-09-30 06:02:17', '{\"show_on_front\":{\"value\":\"page\",\"type\":\"option\",\"user_id\":1,\"date_modified_gmt\":\"2019-09-30 06:02:17\"},\"page_on_front\":{\"value\":\"11\",\"type\":\"option\",\"user_id\":1,\"date_modified_gmt\":\"2019-09-30 06:02:17\"}}', '', '', 'trash', 'closed', 'closed', '', '2f0f408f-15e4-4823-bee4-0f19d5aae0bb', '', '', '2019-09-30 06:02:17', '2019-09-30 06:02:17', '', 0, 'http://western-sizzling-corporate.lndo.site/2019/09/30/2f0f408f-15e4-4823-bee4-0f19d5aae0bb/', 0, 'customize_changeset', '', 0),
(37, 1, '2019-10-03 15:13:49', '2019-10-03 15:13:49', '', '<i class=\"fas fa-angle-right\"></i> Home', '', 'publish', 'closed', 'closed', '', '37', '', '', '2019-10-07 13:52:25', '2019-10-07 13:52:25', '', 0, 'http://western-sizzling-corporate.lndo.site/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2019-10-03 15:13:49', '2019-10-03 15:13:49', '', '<i class=\"fas fa-angle-right\"></i> About Us', '', 'publish', 'closed', 'closed', '', '38', '', '', '2019-10-07 13:52:25', '2019-10-07 13:52:25', '', 0, 'http://western-sizzling-corporate.lndo.site/?p=38', 2, 'nav_menu_item', '', 0),
(40, 1, '2019-10-03 15:13:49', '2019-10-03 15:13:49', '', '<i class=\"fas fa-angle-right\"></i> Gift Cards', '', 'publish', 'closed', 'closed', '', '40', '', '', '2019-10-07 13:52:25', '2019-10-07 13:52:25', '', 0, 'http://western-sizzling-corporate.lndo.site/?p=40', 3, 'nav_menu_item', '', 0),
(43, 1, '2019-10-03 15:13:49', '2019-10-03 15:13:49', '', '<i class=\"fas fa-angle-right\"></i> Purchase', '', 'publish', 'closed', 'closed', '', '43', '', '', '2019-10-07 13:52:25', '2019-10-07 13:52:25', '', 0, 'http://western-sizzling-corporate.lndo.site/?p=43', 4, 'nav_menu_item', '', 0),
(45, 1, '2019-10-03 15:36:00', '2019-10-03 15:36:00', '', '<i class=\"fas fa-angle-right\"></i> Locations', '', 'publish', 'closed', 'closed', '', '45', '', '', '2019-10-07 12:55:15', '2019-10-07 12:55:15', '', 0, 'http://western-sizzling-corporate.lndo.site/?p=45', 4, 'nav_menu_item', '', 0),
(46, 1, '2019-10-03 15:36:00', '2019-10-03 15:36:00', '', '<i class=\"fas fa-angle-right\"></i> Franchise', '', 'publish', 'closed', 'closed', '', '46', '', '', '2019-10-07 12:55:15', '2019-10-07 12:55:15', '', 0, 'http://western-sizzling-corporate.lndo.site/?p=46', 3, 'nav_menu_item', '', 0),
(47, 1, '2019-10-03 15:36:00', '2019-10-03 15:36:00', '', '<i class=\"fas fa-angle-right\"></i> Nutrition', '', 'publish', 'closed', 'closed', '', '47', '', '', '2019-10-07 12:55:15', '2019-10-07 12:55:15', '', 0, 'http://western-sizzling-corporate.lndo.site/?p=47', 2, 'nav_menu_item', '', 0),
(49, 1, '2019-10-04 04:49:30', '2019-10-04 04:49:30', '', 'Gift Cards', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-10-04 04:49:30', '2019-10-04 04:49:30', '', 15, 'http://western-sizzling-corporate.lndo.site/2019/10/04/15-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-10-07 12:54:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-07 12:54:05', '0000-00-00 00:00:00', '', 0, 'http://western-sizzling-corporate.lndo.site/?p=50', 0, 'post', '', 0),
(51, 1, '2019-10-07 12:55:15', '2019-10-07 12:55:15', '', '<i class=\"fas fa-angle-right\"></i> Review Us', '', 'publish', 'closed', 'closed', '', 'review-us', '', '', '2019-10-07 12:55:15', '2019-10-07 12:55:15', '', 0, 'http://western-sizzling-corporate.lndo.site/?p=51', 1, 'nav_menu_item', '', 0),
(52, 1, '2019-10-07 12:55:38', '2019-10-07 12:55:38', '', 'Review Us', '', 'publish', 'closed', 'closed', '', 'review-us-2', '', '', '2019-10-08 08:17:46', '2019-10-08 08:17:46', '', 0, 'http://western-sizzling-corporate.lndo.site/?p=52', 5, 'nav_menu_item', '', 0),
(53, 1, '2019-10-07 12:56:30', '2019-10-07 12:56:30', '<span style=\"font-weight: 400;\">Western Sizzlin was founded in 1962, in Augusta, GA, by Nick Pascarella.  Nick discovered a unique way of grilling steaks. He used a special steak seasoning called Gold Dust®, and a special process of grilling the bottom and top of the steaks simultaneously; thus, our FlameKist® steak was born!  This unique process locks in the flavor as the steak is seared to a savory perfection.  </span>\r\n\r\n&nbsp;\r\n\r\n<span style=\"font-weight: 400;\">Western Sizzlin Steaks and More also offers a variety of other tasty entrees like chicken, seafood, vegetables and fresh baked breads and desserts.  </span>\r\n\r\n&nbsp;\r\n\r\n<span style=\"font-weight: 400;\">Our new Western Sizzlin Express is a small footprint concept that features freshly breaded chicken tenders, FlameKist® steaks, grilled burgers and hot dogs, fresh garden salads, desserts and more.</span>\r\n\r\n&nbsp;\r\n\r\n<span style=\"font-weight: 400;\">For a delicious buffet, please visit our franchised owned Wood Grill Buffet or our corporately owned Great American Buffet.  </span>\r\n\r\n<span style=\"font-weight: 400;\">The Great American Buffet was founded in 1993 and the Wood Grill  Buffet in 1997. Our buffets feature homemade foods displayed in a buffet setting with carving stations, exhibition cooking, hot and cold buffets and bakery. From mouth-watering desserts, vegetables, and salads to delectable meat and seafood. The offerings are an enormous selection of high-quality offerings. All served in a warm friendly atmosphere at an incredible value.</span>\r\n\r\n&nbsp;\r\n\r\n<span style=\"font-weight: 400;\">When it comes to delicious steaks and/or fresh buffet, there is no doubt that Western Sizzlin has it all!</span>', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-10-07 12:56:30', '2019-10-07 12:56:30', '', 13, 'http://western-sizzling-corporate.lndo.site/2019/10/07/13-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-10-07 13:52:06', '2019-10-07 13:52:06', '<div style=\"font-size: 1.1em;\">\n<strong>Western Sizzlin</strong> was founded in 1962, in Augusta, GA, by Nick Pascarella.  Nick discovered a unique way of grilling steaks. He used a special steak seasoning called Gold Dust®, and a special process of grilling the bottom and top of the steaks simultaneously; thus, our FlameKist® steak was born!  This unique process locks in the flavor as the steak is seared to a savory perfection.</div>\n&nbsp;\n<strong>Western Sizzlin</strong> Steaks and More also offers a variety of other tasty entrees like chicken, seafood, vegetables, and fresh-baked breads and desserts.  \n&nbsp; \nOur new <strong>Western Sizzlin</strong> Express is a small footprint concept that features freshly breaded chicken tenders, FlameKist® steaks, grilled burgers, and hot dogs, fresh garden salads, desserts and more.\n&nbsp;\nFor a delicious buffet, please visit our franchised owned Wood Grill Buffet or our corporately owned Great American Buffet.  \nThe Great American Buffet was founded in 1993 and the Wood Grill Buffet in 1997.  Our buffets feature homemade foods displayed in a buffet setting with carving stations, exhibition cooking, hot and cold buffets, and bakery. From mouth-watering desserts, vegetables, and salads to delectable meat and seafood. The offerings are an enormous selection of high-quality offerings. All served in a warm friendly atmosphere at an incredible value.\n&nbsp;\nWhen it comes to delicious steaks and/or fresh buffet, there is no doubt that Western Sizzlin has it all!\n', 'About Western Sizzlin', '', 'inherit', 'closed', 'closed', '', '13-autosave-v1', '', '', '2019-10-07 13:52:06', '2019-10-07 13:52:06', '', 13, 'http://western-sizzling-corporate.lndo.site/2019/10/07/13-autosave-v1/', 0, 'revision', '', 0),
(55, 1, '2019-10-07 13:13:42', '2019-10-07 13:13:42', 'Western Sizzlin was founded in 1962, in Augusta, GA, by Nick Pascarella.  Nick discovered a unique way of grilling steaks. He used a special steak seasoning called Gold Dust®, and a special process of grilling the bottom and top of the steaks simultaneously; thus, our FlameKist® steak was born!  This unique process locks in the flavor as the steak is seared to a savory perfection.  \r\n \r\nWestern Sizzlin Steaks and More also offers a variety of other tasty entrees like chicken, seafood, vegetables, and fresh baked breads and desserts.  \r\n \r\nOur new Western Sizzlin Express is a small footprint concept that features freshly breaded chicken tenders, FlameKist® steaks, grilled burgers and hot dogs, fresh garden salads, desserts and more.\r\n \r\nFor a delicious buffet, please visit our franchised owned Wood Grill Buffet or our corporately owned Great American Buffet.  \r\nThe Great American Buffet was founded in 1993 and the Wood Grill Buffet in 1997.  Our buffets feature homemade foods displayed in a buffet setting with carving stations, exhibition cooking, hot and cold buffets, and bakery. From mouth-watering desserts, vegetables, and salads to delectable meat and seafood. The offerings are an enormous selection of high-quality offerings. All served in a warm friendly atmosphere at an incredible value.\r\n \r\nWhen it comes to delicious steaks and/or fresh buffet, there is no doubt that Western Sizzlin has it all!\r\n', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-10-07 13:13:42', '2019-10-07 13:13:42', '', 13, 'http://western-sizzling-corporate.lndo.site/2019/10/07/13-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-10-07 13:34:31', '2019-10-07 13:34:31', '<div style=\"font-size: 1.1em;\">\r\nWestern Sizzlin was founded in 1962, in Augusta, GA, by Nick Pascarella.  Nick discovered a unique way of grilling steaks. He used a special steak seasoning called Gold Dust®, and a special process of grilling the bottom and top of the steaks simultaneously; thus, our FlameKist® steak was born!  This unique process locks in the flavor as the steak is seared to a savory perfection.\r\n</div>\r\n \r\nWestern Sizzlin Steaks and More also offers a variety of other tasty entrees like chicken, seafood, vegetables, and fresh baked breads and desserts.  \r\n \r\nOur new Western Sizzlin Express is a small footprint concept that features freshly breaded chicken tenders, FlameKist® steaks, grilled burgers and hot dogs, fresh garden salads, desserts and more.\r\n \r\nFor a delicious buffet, please visit our franchised owned Wood Grill Buffet or our corporately owned Great American Buffet.  \r\nThe Great American Buffet was founded in 1993 and the Wood Grill Buffet in 1997.  Our buffets feature homemade foods displayed in a buffet setting with carving stations, exhibition cooking, hot and cold buffets, and bakery. From mouth-watering desserts, vegetables, and salads to delectable meat and seafood. The offerings are an enormous selection of high-quality offerings. All served in a warm friendly atmosphere at an incredible value.\r\n \r\nWhen it comes to delicious steaks and/or fresh buffet, there is no doubt that Western Sizzlin has it all!\r\n', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-10-07 13:34:31', '2019-10-07 13:34:31', '', 13, 'http://western-sizzling-corporate.lndo.site/2019/10/07/13-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-10-07 13:35:29', '2019-10-07 13:35:29', '<div style=\"font-size: 1.1em;\">\r\n<strong>Western Sizzlin</strong> was founded in 1962, in Augusta, GA, by Nick Pascarella.  Nick discovered a unique way of grilling steaks. He used a special steak seasoning called Gold Dust®, and a special process of grilling the bottom and top of the steaks simultaneously; thus, our FlameKist® steak was born!  This unique process locks in the flavor as the steak is seared to a savory perfection.\r\n</div>\r\n \r\n<strong>Western Sizzlin</strong> Steaks and More also offers a variety of other tasty entrees like chicken, seafood, vegetables, and fresh-baked breads and desserts.  \r\n \r\nOur new <strong>Western Sizzlin</strong> Express is a small footprint concept that features freshly breaded chicken tenders, FlameKist® steaks, grilled burgers, and hot dogs, fresh garden salads, desserts and more.\r\n \r\nFor a delicious buffet, please visit our franchised owned Wood Grill Buffet or our corporately owned Great American Buffet.  \r\nThe Great American Buffet was founded in 1993 and the Wood Grill Buffet in 1997.  Our buffets feature homemade foods displayed in a buffet setting with carving stations, exhibition cooking, hot and cold buffets, and bakery. From mouth-watering desserts, vegetables, and salads to delectable meat and seafood. The offerings are an enormous selection of high-quality offerings. All served in a warm friendly atmosphere at an incredible value.\r\n \r\nWhen it comes to delicious steaks and/or fresh buffet, there is no doubt that Western Sizzlin has it all!\r\n', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-10-07 13:35:29', '2019-10-07 13:35:29', '', 13, 'http://western-sizzling-corporate.lndo.site/2019/10/07/13-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-10-07 13:36:51', '2019-10-07 13:36:51', '<div style=\"font-size: 1.1em;\">\r\n<strong>Western Sizzlin</strong> was founded in 1962, in Augusta, GA, by Nick Pascarella.  Nick discovered a unique way of grilling steaks. He used a special steak seasoning called Gold Dust®, and a special process of grilling the bottom and top of the steaks simultaneously; thus, our FlameKist® steak was born!  This unique process locks in the flavor as the steak is seared to a savory perfection.</div>\r\n \r\n<strong>Western Sizzlin</strong> Steaks and More also offers a variety of other tasty entrees like chicken, seafood, vegetables, and fresh-baked breads and desserts.  \r\n \r\nOur new <strong>Western Sizzlin</strong> Express is a small footprint concept that features freshly breaded chicken tenders, FlameKist® steaks, grilled burgers, and hot dogs, fresh garden salads, desserts and more.\r\n \r\nFor a delicious buffet, please visit our franchised owned Wood Grill Buffet or our corporately owned Great American Buffet.  \r\nThe Great American Buffet was founded in 1993 and the Wood Grill Buffet in 1997.  Our buffets feature homemade foods displayed in a buffet setting with carving stations, exhibition cooking, hot and cold buffets, and bakery. From mouth-watering desserts, vegetables, and salads to delectable meat and seafood. The offerings are an enormous selection of high-quality offerings. All served in a warm friendly atmosphere at an incredible value.\r\n \r\nWhen it comes to delicious steaks and/or fresh buffet, there is no doubt that Western Sizzlin has it all!\r\n', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-10-07 13:36:51', '2019-10-07 13:36:51', '', 13, 'http://western-sizzling-corporate.lndo.site/2019/10/07/13-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2019-10-07 13:37:19', '2019-10-07 13:37:19', '<div style=\"font-size: 1.1em;\">\r\n<strong>Western Sizzlin</strong> was founded in 1962, in Augusta, GA, by Nick Pascarella.  Nick discovered a unique way of grilling steaks. He used a special steak seasoning called Gold Dust®, and a special process of grilling the bottom and top of the steaks simultaneously; thus, our FlameKist® steak was born!  This unique process locks in the flavor as the steak is seared to a savory perfection.</div>\r\n&nbsp;\r\n<strong>Western Sizzlin</strong> Steaks and More also offers a variety of other tasty entrees like chicken, seafood, vegetables, and fresh-baked breads and desserts.  \r\n&nbsp; \r\nOur new <strong>Western Sizzlin</strong> Express is a small footprint concept that features freshly breaded chicken tenders, FlameKist® steaks, grilled burgers, and hot dogs, fresh garden salads, desserts and more.\r\n&nbsp;\r\nFor a delicious buffet, please visit our franchised owned Wood Grill Buffet or our corporately owned Great American Buffet.  \r\nThe Great American Buffet was founded in 1993 and the Wood Grill Buffet in 1997.  Our buffets feature homemade foods displayed in a buffet setting with carving stations, exhibition cooking, hot and cold buffets, and bakery. From mouth-watering desserts, vegetables, and salads to delectable meat and seafood. The offerings are an enormous selection of high-quality offerings. All served in a warm friendly atmosphere at an incredible value.\r\n&nbsp;\r\nWhen it comes to delicious steaks and/or fresh buffet, there is no doubt that Western Sizzlin has it all!\r\n', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-10-07 13:37:19', '2019-10-07 13:37:19', '', 13, 'http://western-sizzling-corporate.lndo.site/2019/10/07/13-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(62, 1, '2019-10-07 13:52:07', '2019-10-07 13:52:07', '<div style=\"font-size: 1.1em;\">\r\n<strong>Western Sizzlin</strong> was founded in 1962, in Augusta, GA, by Nick Pascarella.  Nick discovered a unique way of grilling steaks. He used a special steak seasoning called Gold Dust®, and a special process of grilling the bottom and top of the steaks simultaneously; thus, our FlameKist® steak was born!  This unique process locks in the flavor as the steak is seared to a savory perfection.</div>\r\n&nbsp;\r\n<strong>Western Sizzlin</strong> Steaks and More also offers a variety of other tasty entrees like chicken, seafood, vegetables, and fresh-baked breads and desserts.  \r\n&nbsp; \r\nOur new <strong>Western Sizzlin</strong> Express is a small footprint concept that features freshly breaded chicken tenders, FlameKist® steaks, grilled burgers, and hot dogs, fresh garden salads, desserts and more.\r\n&nbsp;\r\nFor a delicious buffet, please visit our franchised owned Wood Grill Buffet or our corporately owned Great American Buffet.  \r\nThe Great American Buffet was founded in 1993 and the Wood Grill Buffet in 1997.  Our buffets feature homemade foods displayed in a buffet setting with carving stations, exhibition cooking, hot and cold buffets, and bakery. From mouth-watering desserts, vegetables, and salads to delectable meat and seafood. The offerings are an enormous selection of high-quality offerings. All served in a warm friendly atmosphere at an incredible value.\r\n&nbsp;\r\nWhen it comes to delicious steaks and/or fresh buffet, there is no doubt that Western Sizzlin has it all!\r\n', 'About Western Sizzlin', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-10-07 13:52:07', '2019-10-07 13:52:07', '', 13, 'http://western-sizzling-corporate.lndo.site/2019/10/07/13-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-10-08 08:01:10', '2019-10-08 08:01:10', '', 'about2', '', 'inherit', 'open', 'closed', '', 'about2', '', '', '2019-10-08 08:01:10', '2019-10-08 08:01:10', '', 13, 'http://western-sizzling-corporate.lndo.site/wp-content/uploads/2019/10/about2.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2019-10-08 08:02:13', '2019-10-08 08:02:13', '', 'buffet_hero', '', 'inherit', 'open', 'closed', '', 'buffet_hero', '', '', '2019-10-08 08:02:13', '2019-10-08 08:02:13', '', 13, 'http://western-sizzling-corporate.lndo.site/wp-content/uploads/2019/10/buffet_hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2019-10-08 08:09:28', '2019-10-08 08:09:28', '', 'about-us-page', '', 'inherit', 'open', 'closed', '', 'about-us-page', '', '', '2019-10-08 08:09:28', '2019-10-08 08:09:28', '', 13, 'http://western-sizzling-corporate.lndo.site/wp-content/uploads/2019/10/about-us-page.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2019-10-08 08:09:41', '2019-10-08 08:09:41', '<img src=\"http://western-sizzling-corporate.lndo.site/wp-content/uploads/2019/10/about-us-page-1024x959.jpg\" alt=\"\" width=\"1024\" height=\"959\" class=\"alignnone size-large wp-image-66\" />\r\n<div style=\"font-size: 1.1em;\">\r\n<strong>Western Sizzlin</strong> was founded in 1962, in Augusta, GA, by Nick Pascarella.  Nick discovered a unique way of grilling steaks. He used a special steak seasoning called Gold Dust®, and a special process of grilling the bottom and top of the steaks simultaneously; thus, our FlameKist® steak was born!  This unique process locks in the flavor as the steak is seared to a savory perfection.</div>\r\n&nbsp;\r\n<strong>Western Sizzlin</strong> Steaks and More also offers a variety of other tasty entrees like chicken, seafood, vegetables, and fresh-baked breads and desserts.  \r\n&nbsp; \r\nOur new <strong>Western Sizzlin</strong> Express is a small footprint concept that features freshly breaded chicken tenders, FlameKist® steaks, grilled burgers, and hot dogs, fresh garden salads, desserts and more.\r\n&nbsp;\r\nFor a delicious buffet, please visit our franchised owned Wood Grill Buffet or our corporately owned Great American Buffet.  \r\nThe Great American Buffet was founded in 1993 and the Wood Grill Buffet in 1997.  Our buffets feature homemade foods displayed in a buffet setting with carving stations, exhibition cooking, hot and cold buffets, and bakery. From mouth-watering desserts, vegetables, and salads to delectable meat and seafood. The offerings are an enormous selection of high-quality offerings. All served in a warm friendly atmosphere at an incredible value.\r\n&nbsp;\r\nWhen it comes to delicious steaks and/or fresh buffet, there is no doubt that Western Sizzlin has it all!\r\n', 'About Western Sizzlin', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-10-08 08:09:41', '2019-10-08 08:09:41', '', 13, 'http://western-sizzling-corporate.lndo.site/2019/10/08/13-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2019-10-08 08:10:52', '2019-10-08 08:10:52', '<div class=\"row\">\r\n<div class=\"col-md-md\">\r\n<div style=\"font-size: 1.1em;\">\r\n<strong>Western Sizzlin</strong> was founded in 1962, in Augusta, GA, by Nick Pascarella.  Nick discovered a unique way of grilling steaks. He used a special steak seasoning called Gold Dust®, and a special process of grilling the bottom and top of the steaks simultaneously; thus, our FlameKist® steak was born!  This unique process locks in the flavor as the steak is seared to a savory perfection.</div>\r\n&nbsp;\r\n<strong>Western Sizzlin</strong> Steaks and More also offers a variety of other tasty entrees like chicken, seafood, vegetables, and fresh-baked breads and desserts.  \r\n&nbsp; \r\nOur new <strong>Western Sizzlin</strong> Express is a small footprint concept that features freshly breaded chicken tenders, FlameKist® steaks, grilled burgers, and hot dogs, fresh garden salads, desserts and more.\r\n&nbsp;\r\nFor a delicious buffet, please visit our franchised owned Wood Grill Buffet or our corporately owned Great American Buffet.  \r\nThe Great American Buffet was founded in 1993 and the Wood Grill Buffet in 1997.  Our buffets feature homemade foods displayed in a buffet setting with carving stations, exhibition cooking, hot and cold buffets, and bakery. From mouth-watering desserts, vegetables, and salads to delectable meat and seafood. The offerings are an enormous selection of high-quality offerings. All served in a warm friendly atmosphere at an incredible value.\r\n&nbsp;\r\nWhen it comes to delicious steaks and/or fresh buffet, there is no doubt that Western Sizzlin has it all!\r\n</div>\r\n<div class=\"col-md-4\">\r\n<img src=\"http://western-sizzling-corporate.lndo.site/wp-content/uploads/2019/10/about-us-page.jpg\" alt=\"\" width=\"1640\" height=\"1536\" class=\"img-fluid\" />\r\n</div>\r\n</div>\r\n\r\n', 'About Western Sizzlin', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-10-08 08:10:52', '2019-10-08 08:10:52', '', 13, 'http://western-sizzling-corporate.lndo.site/2019/10/08/13-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-10-08 08:11:16', '2019-10-08 08:11:16', '<div class=\"row\">\r\n<div class=\"col-md\">\r\n<div style=\"font-size: 1.1em;\">\r\n<strong>Western Sizzlin</strong> was founded in 1962, in Augusta, GA, by Nick Pascarella.  Nick discovered a unique way of grilling steaks. He used a special steak seasoning called Gold Dust®, and a special process of grilling the bottom and top of the steaks simultaneously; thus, our FlameKist® steak was born!  This unique process locks in the flavor as the steak is seared to a savory perfection.</div>\r\n&nbsp;\r\n<strong>Western Sizzlin</strong> Steaks and More also offers a variety of other tasty entrees like chicken, seafood, vegetables, and fresh-baked breads and desserts.  \r\n&nbsp; \r\nOur new <strong>Western Sizzlin</strong> Express is a small footprint concept that features freshly breaded chicken tenders, FlameKist® steaks, grilled burgers, and hot dogs, fresh garden salads, desserts and more.\r\n&nbsp;\r\nFor a delicious buffet, please visit our franchised owned Wood Grill Buffet or our corporately owned Great American Buffet.  \r\nThe Great American Buffet was founded in 1993 and the Wood Grill Buffet in 1997.  Our buffets feature homemade foods displayed in a buffet setting with carving stations, exhibition cooking, hot and cold buffets, and bakery. From mouth-watering desserts, vegetables, and salads to delectable meat and seafood. The offerings are an enormous selection of high-quality offerings. All served in a warm friendly atmosphere at an incredible value.\r\n&nbsp;\r\nWhen it comes to delicious steaks and/or fresh buffet, there is no doubt that Western Sizzlin has it all!\r\n</div>\r\n<div class=\"col-md-4\">\r\n<img src=\"http://western-sizzling-corporate.lndo.site/wp-content/uploads/2019/10/about-us-page.jpg\" alt=\"\" width=\"1640\" height=\"1536\" class=\"img-fluid\" />\r\n</div>\r\n</div>\r\n\r\n', 'About Western Sizzlin', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-10-08 08:11:16', '2019-10-08 08:11:16', '', 13, 'http://western-sizzling-corporate.lndo.site/2019/10/08/13-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-10-08 08:12:37', '2019-10-08 08:12:37', '<div class=\"row\">\r\n<div class=\"col-md\">\r\n<div style=\"font-size: 1.1em;\">\r\n<strong>Western Sizzlin</strong> was founded in 1962, in Augusta, GA, by Nick Pascarella.  Nick discovered a unique way of grilling steaks. He used a special steak seasoning called Gold Dust®, and a special process of grilling the bottom and top of the steaks simultaneously; thus, our FlameKist® steak was born!  This unique process locks in the flavor as the steak is seared to a savory perfection.</div>\r\n&nbsp;\r\n<strong>Western Sizzlin</strong> Steaks and More also offers a variety of other tasty entrees like chicken, seafood, vegetables, and fresh-baked breads and desserts.  \r\n&nbsp; \r\nOur new <strong>Western Sizzlin</strong> Express is a small footprint concept that features freshly breaded chicken tenders, FlameKist® steaks, grilled burgers, and hot dogs, fresh garden salads, desserts and more.\r\n&nbsp;\r\nFor a delicious buffet, please visit our franchised owned Wood Grill Buffet or our corporately owned Great American Buffet.  \r\nThe Great American Buffet was founded in 1993 and the Wood Grill Buffet in 1997.  Our buffets feature homemade foods displayed in a buffet setting with carving stations, exhibition cooking, hot and cold buffets, and bakery. From mouth-watering desserts, vegetables, and salads to delectable meat and seafood. The offerings are an enormous selection of high-quality offerings. All served in a warm friendly atmosphere at an incredible value.\r\n&nbsp;\r\nWhen it comes to delicious steaks and/or fresh buffet, there is no doubt that Western Sizzlin has it all!\r\n</div>\r\n<div class=\"col-md-4\">\r\n<img src=\"http://western-sizzling-corporate.lndo.site/wp-content/uploads/2019/10/about-us-page.jpg\" alt=\"\" width=\"1640\" height=\"1536\" class=\"img-fluid img-thumbnail\" />\r\n</div>\r\n</div>\r\n\r\n', 'About Western Sizzlin', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-10-08 08:12:37', '2019-10-08 08:12:37', '', 13, 'http://western-sizzling-corporate.lndo.site/2019/10/08/13-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-10-08 08:15:02', '2019-10-08 08:15:02', '<div style=\"font-size: 1.1em;\">\r\n<strong>Western Sizzlin</strong> was founded in 1962, in Augusta, GA, by Nick Pascarella.  Nick discovered a unique way of grilling steaks. He used a special steak seasoning called Gold Dust®, and a special process of grilling the bottom and top of the steaks simultaneously; thus, our FlameKist® steak was born!  This unique process locks in the flavor as the steak is seared to a savory perfection.</div>\r\n&nbsp;\r\n<strong>Western Sizzlin</strong> Steaks and More also offers a variety of other tasty entrees like chicken, seafood, vegetables, and fresh-baked breads and desserts.  \r\n&nbsp; \r\nOur new <strong>Western Sizzlin</strong> Express is a small footprint concept that features freshly breaded chicken tenders, FlameKist® steaks, grilled burgers, and hot dogs, fresh garden salads, desserts and more.\r\n&nbsp;\r\nFor a delicious buffet, please visit our franchised owned Wood Grill Buffet or our corporately owned Great American Buffet.  \r\nThe Great American Buffet was founded in 1993 and the Wood Grill Buffet in 1997.  Our buffets feature homemade foods displayed in a buffet setting with carving stations, exhibition cooking, hot and cold buffets, and bakery. From mouth-watering desserts, vegetables, and salads to delectable meat and seafood. The offerings are an enormous selection of high-quality offerings. All served in a warm friendly atmosphere at an incredible value.\r\n&nbsp;\r\nWhen it comes to delicious steaks and/or fresh buffet, there is no doubt that Western Sizzlin has it all!\r\n</div>', 'About Western Sizzlin', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-10-08 08:15:02', '2019-10-08 08:15:02', '', 13, 'http://western-sizzling-corporate.lndo.site/2019/10/08/13-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-10-08 08:17:20', '2019-10-08 08:17:20', '', 'Franchise Focus', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-08 08:17:20', '2019-10-08 08:17:20', '', 23, 'http://western-sizzling-corporate.lndo.site/2019/10/08/23-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2019-10-08 08:21:04', '2019-10-08 08:21:04', '<strong>Our business philosophy is:</strong>\r\nTo operate attractive, well maintained restaurants in high-traffic locations that serve great food at a great price. This philosophy has served Western Sizzlin well for more than 50 years with high quality offerings and smiling faces.\r\n \r\n<strong>Our goal is also simple:</strong>\r\nTo provide everyone  a great dining experience at a great price they can afford.\r\n \r\n<strong>We can’t do it without the dedicated success of each of our franchisees. We understand that your success is our success.</strong>\r\n \r\nWe offer three different business models to choose from: a traditional family steakhouse, a small footprint Express and a full-service buffet concept, allowing you to perfectly marry our brand to your personal and business goals. Regardless of the path you choose, you’ll find yourself backed by a leadership team that is not only well seasoned, but fully committed to your success.\r\n \r\nWe value each member of our franchise family and provide them with a clear path to growth. We offer initial training, site and design assistance to get them up and running.  We stay with them after the grand opening offering ongoing marketing, purchasing and management support. \r\n\r\nReady to Get Started? Form goes here --> CHAD. ', 'Franchise Focus', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-08 08:21:04', '2019-10-08 08:21:04', '', 23, 'http://western-sizzling-corporate.lndo.site/2019/10/08/23-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2019-10-08 08:22:03', '2019-10-08 08:22:03', '<div style=\"font-size: 1.1em;\">\r\n<strong>Our business philosophy is:</strong>\r\nTo operate attractive, well-maintained restaurants in high-traffic locations that serve great food at a great price. This philosophy has served Western Sizzlin well for more than 50 years with high-quality offerings and smiling faces.</div>\r\n \r\n<strong>Our goal is also simple:</strong>\r\nTo provide everyone a great dining experience at a great price they can afford.\r\n \r\n<strong>We can’t do it without the dedicated success of each of our franchisees. We understand that your success is our success.</strong>\r\n \r\nWe offer three different business models to choose from: a traditional family steakhouse, a small footprint Express, and a full-service buffet concept, allowing you to perfectly marry our brand to your personal and business goals. Regardless of the path you choose, you’ll find yourself backed by a leadership team that is not only well seasoned but fully committed to your success.\r\n \r\nWe value each member of our franchise family and provide them with a clear path to growth. We offer initial training, site and design assistance to get them up and running.  We stay with them after the grand opening offering ongoing marketing, purchasing, and management support. \r\n\r\nReady to Get Started? Form goes here --> CHAD. ', 'Franchise Focus', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-08 08:22:03', '2019-10-08 08:22:03', '', 23, 'http://western-sizzling-corporate.lndo.site/2019/10/08/23-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2019-10-08 08:22:23', '2019-10-08 08:22:23', '<div style=\"font-size: 1.1em;\">\r\n<strong>Our business philosophy is:</strong>\r\nTo operate attractive, well-maintained restaurants in high-traffic locations that serve great food at a great price. This philosophy has served Western Sizzlin well for more than 50 years with high-quality offerings and smiling faces.</div>\r\n&nbsp;\r\n<strong>Our goal is also simple:</strong>\r\nTo provide everyone a great dining experience at a great price they can afford.\r\n \r\n<strong>We can’t do it without the dedicated success of each of our franchisees. We understand that your success is our success.</strong>\r\n \r\nWe offer three different business models to choose from: a traditional family steakhouse, a small footprint Express, and a full-service buffet concept, allowing you to perfectly marry our brand to your personal and business goals. Regardless of the path you choose, you’ll find yourself backed by a leadership team that is not only well seasoned but fully committed to your success.\r\n \r\nWe value each member of our franchise family and provide them with a clear path to growth. We offer initial training, site and design assistance to get them up and running.  We stay with them after the grand opening offering ongoing marketing, purchasing, and management support. \r\n\r\nReady to Get Started? Form goes here --> CHAD. ', 'Franchise Focus', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-08 08:22:23', '2019-10-08 08:22:23', '', 23, 'http://western-sizzling-corporate.lndo.site/2019/10/08/23-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-10-08 08:22:50', '2019-10-08 08:22:50', '<div style=\"font-size: 1.1em;\">\r\n<strong>Our business philosophy is:</strong>\r\nTo operate attractive, well-maintained restaurants in high-traffic locations that serve great food at a great price. This philosophy has served Western Sizzlin well for more than 50 years with high-quality offerings and smiling faces.</div>\r\n&nbsp;\r\n<strong>Our goal is also simple:</strong>\r\nTo provide everyone a great dining experience at a great price they can afford.\r\n \r\n<strong>We can’t do it without the dedicated success of each of our franchisees. We understand that your success is our success.</strong>\r\n \r\nWe offer three different business models to choose from: a traditional family steakhouse, a small footprint Express, and a full-service buffet concept, allowing you to perfectly marry our brand to your personal and business goals. Regardless of the path you choose, you’ll find yourself backed by a leadership team that is not only well seasoned but fully committed to your success.\r\n \r\nWe value each member of our franchise family and provide them with a clear path to growth. We offer initial training, site and design assistance to get them up and running.  We stay with them after the grand opening offering ongoing marketing, purchasing, and management support. \r\n\r\n<span class=\"text-danger\">Ready to Get Started?</span> Form goes here --> CHAD. ', 'Franchise Focus', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-08 08:22:50', '2019-10-08 08:22:50', '', 23, 'http://western-sizzling-corporate.lndo.site/2019/10/08/23-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2019-10-08 08:23:02', '2019-10-08 08:23:02', '<div style=\"font-size: 1.1em;\">\r\n<strong>Our business philosophy is:</strong>\r\nTo operate attractive, well-maintained restaurants in high-traffic locations that serve great food at a great price. This philosophy has served Western Sizzlin well for more than 50 years with high-quality offerings and smiling faces.</div>\r\n&nbsp;\r\n<strong>Our goal is also simple:</strong>\r\nTo provide everyone a great dining experience at a great price they can afford.\r\n \r\n<strong>We can’t do it without the dedicated success of each of our franchisees. We understand that your success is our success.</strong>\r\n \r\nWe offer three different business models to choose from: a traditional family steakhouse, a small footprint Express, and a full-service buffet concept, allowing you to perfectly marry our brand to your personal and business goals. Regardless of the path you choose, you’ll find yourself backed by a leadership team that is not only well seasoned but fully committed to your success.\r\n \r\nWe value each member of our franchise family and provide them with a clear path to growth. We offer initial training, site and design assistance to get them up and running.  We stay with them after the grand opening offering ongoing marketing, purchasing, and management support. \r\n\r\n<span class=\"text-danger\"><strong>Ready to Get Started?</strong></span> Form goes here --> CHAD. ', 'Franchise Focus', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-10-08 08:23:02', '2019-10-08 08:23:02', '', 23, 'http://western-sizzling-corporate.lndo.site/2019/10/08/23-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-10-08 09:41:09', '2019-10-08 09:41:09', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"11\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:3:{i:0;s:11:\"the_content\";i:1;s:15:\"page_attributes\";i:2;s:14:\"featured_image\";}s:11:\"description\";s:0:\"\";}', 'Homepage', 'homepage', 'publish', 'closed', 'closed', '', 'group_5d9c5982aa082', '', '', '2019-10-08 16:51:12', '2019-10-08 16:51:12', '', 0, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field-group&#038;p=78', 0, 'acf-field-group', '', 0),
(79, 1, '2019-10-08 09:41:09', '2019-10-08 09:41:09', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Hero Section', 'hero_section', 'publish', 'closed', 'closed', '', 'field_5d9c599055caf', '', '', '2019-10-08 09:41:09', '2019-10-08 09:41:09', '', 78, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field&p=79', 0, 'acf-field', '', 0),
(80, 1, '2019-10-08 09:43:35', '2019-10-08 09:43:35', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Verbiage', 'verbiage', 'publish', 'closed', 'closed', '', 'field_5d9c59dd7a470', '', '', '2019-10-08 09:55:55', '2019-10-08 09:55:55', '', 78, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field&#038;p=80', 5, 'acf-field', '', 0),
(81, 1, '2019-10-08 09:43:35', '2019-10-08 09:43:35', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Cards', 'cards', 'publish', 'closed', 'closed', '', 'field_5d9c5a0b7a471', '', '', '2019-10-08 15:01:52', '2019-10-08 15:01:52', '', 78, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field&#038;p=81', 9, 'acf-field', '', 0),
(82, 1, '2019-10-08 09:43:35', '2019-10-08 09:43:35', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Statement', 'statement', 'publish', 'closed', 'closed', '', 'field_5d9c5a3c7a472', '', '', '2019-10-08 16:19:37', '2019-10-08 16:19:37', '', 78, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field&#038;p=82', 11, 'acf-field', '', 0),
(83, 1, '2019-10-08 09:44:07', '2019-10-08 09:44:07', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Location finder', 'location_finder', 'publish', 'closed', 'closed', '', 'field_5d9c5a4954994', '', '', '2019-10-08 16:51:12', '2019-10-08 16:51:12', '', 78, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field&#038;p=83', 14, 'acf-field', '', 0),
(84, 1, '2019-10-08 09:55:55', '2019-10-08 09:55:55', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Background image', 'hero_background_image', 'publish', 'closed', 'closed', '', 'field_5d9c5b0425224', '', '', '2019-10-08 14:29:22', '2019-10-08 14:29:22', '', 78, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field&#038;p=84', 1, 'acf-field', '', 0),
(85, 1, '2019-10-08 09:55:55', '2019-10-08 09:55:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Heading', 'hero_heading', 'publish', 'closed', 'closed', '', 'field_5d9c5b3225225', '', '', '2019-10-08 14:29:22', '2019-10-08 14:29:22', '', 78, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field&#038;p=85', 2, 'acf-field', '', 0),
(86, 1, '2019-10-08 09:55:55', '2019-10-08 09:55:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Subheading', 'hero_subheading', 'publish', 'closed', 'closed', '', 'field_5d9c5b6a25226', '', '', '2019-10-08 14:29:22', '2019-10-08 14:29:22', '', 78, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field&#038;p=86', 3, 'acf-field', '', 0),
(87, 1, '2019-10-08 09:55:55', '2019-10-08 09:55:55', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:8:\"Add Logo\";}', 'Logos', 'logos', 'publish', 'closed', 'closed', '', 'field_5d9c5ab025222', '', '', '2019-10-08 14:47:01', '2019-10-08 14:47:01', '', 78, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field&#038;p=87', 4, 'acf-field', '', 0),
(88, 1, '2019-10-08 09:55:55', '2019-10-08 09:55:55', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5d9c5abe25223', '', '', '2019-10-08 09:55:55', '2019-10-08 09:55:55', '', 87, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field&p=88', 0, 'acf-field', '', 0),
(89, 1, '2019-10-08 09:55:55', '2019-10-08 09:55:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Heading', 'verbiage_heading', 'publish', 'closed', 'closed', '', 'field_5d9c5c7925227', '', '', '2019-10-08 15:01:52', '2019-10-08 15:01:52', '', 78, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field&#038;p=89', 6, 'acf-field', '', 0),
(90, 1, '2019-10-08 09:55:55', '2019-10-08 09:55:55', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Text', 'verbiage_text', 'publish', 'closed', 'closed', '', 'field_5d9c5ce725228', '', '', '2019-10-08 15:07:14', '2019-10-08 15:07:14', '', 78, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field&#038;p=90', 8, 'acf-field', '', 0),
(94, 1, '2019-10-08 13:53:38', '2019-10-08 13:53:38', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Background Image', 'statement_bg_image', 'publish', 'closed', 'closed', '', 'field_5d9c9452f7ca6', '', '', '2019-10-08 16:19:37', '2019-10-08 16:19:37', '', 78, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field&#038;p=94', 12, 'acf-field', '', 0),
(95, 1, '2019-10-08 13:53:38', '2019-10-08 13:53:38', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Text', 'statement_text', 'publish', 'closed', 'closed', '', 'field_5d9c9482f7ca7', '', '', '2019-10-08 16:38:26', '2019-10-08 16:38:26', '', 78, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field&#038;p=95', 13, 'acf-field', '', 0),
(96, 1, '2019-10-08 13:53:38', '2019-10-08 13:53:38', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Background Image', 'store_finder_bg_image', 'publish', 'closed', 'closed', '', 'field_5d9c94a4f7ca8', '', '', '2019-10-08 16:49:30', '2019-10-08 16:49:30', '', 78, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field&#038;p=96', 15, 'acf-field', '', 0),
(97, 1, '2019-10-08 13:53:38', '2019-10-08 13:53:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Text', 'store_finder_text', 'publish', 'closed', 'closed', '', 'field_5d9c94c7f7ca9', '', '', '2019-10-08 16:19:37', '2019-10-08 16:19:37', '', 78, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field&#038;p=97', 16, 'acf-field', '', 0),
(98, 1, '2019-10-08 14:19:32', '2019-10-08 14:19:32', '', 'hero', '', 'inherit', 'open', 'closed', '', 'hero', '', '', '2019-10-08 14:29:41', '2019-10-08 14:29:41', '', 11, 'http://western-sizzling-corporate.lndo.site/wp-content/uploads/2019/10/hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2019-10-08 14:28:57', '2019-10-08 14:28:57', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 14:28:57', '2019-10-08 14:28:57', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2019-10-08 14:29:41', '2019-10-08 14:29:41', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 14:29:41', '2019-10-08 14:29:41', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2019-10-08 14:47:15', '2019-10-08 14:47:15', '', 'NewGAlogoColor', '', 'inherit', 'open', 'closed', '', 'newgalogocolor', '', '', '2019-10-08 14:56:35', '2019-10-08 14:56:35', '', 11, 'http://western-sizzling-corporate.lndo.site/wp-content/uploads/2019/10/NewGAlogoColor.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2019-10-08 14:47:15', '2019-10-08 14:47:15', '', 'QuincysLogoNoGrill', '', 'inherit', 'open', 'closed', '', 'quincyslogonogrill', '', '', '2019-10-08 14:47:15', '2019-10-08 14:47:15', '', 11, 'http://western-sizzling-corporate.lndo.site/wp-content/uploads/2019/10/QuincysLogoNoGrill.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2019-10-08 14:47:16', '2019-10-08 14:47:16', '', 'WGLogo', '', 'inherit', 'open', 'closed', '', 'wglogo', '', '', '2019-10-08 14:47:16', '2019-10-08 14:47:16', '', 11, 'http://western-sizzling-corporate.lndo.site/wp-content/uploads/2019/10/WGLogo.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2019-10-08 14:47:16', '2019-10-08 14:47:16', '', 'WSEXPRESS7', '', 'inherit', 'open', 'closed', '', 'wsexpress7', '', '', '2019-10-08 14:47:16', '2019-10-08 14:47:16', '', 11, 'http://western-sizzling-corporate.lndo.site/wp-content/uploads/2019/10/WSEXPRESS7.png', 0, 'attachment', 'image/png', 0),
(105, 1, '2019-10-08 14:47:16', '2019-10-08 14:47:16', '', 'WSLogo3D', '', 'inherit', 'open', 'closed', '', 'wslogo3d', '', '', '2019-10-08 14:47:16', '2019-10-08 14:47:16', '', 11, 'http://western-sizzling-corporate.lndo.site/wp-content/uploads/2019/10/WSLogo3D.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2019-10-08 14:48:06', '2019-10-08 14:48:06', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 14:48:06', '2019-10-08 14:48:06', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2019-10-08 14:56:38', '2019-10-08 14:56:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 14:56:38', '2019-10-08 14:56:38', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2019-10-08 15:01:52', '2019-10-08 15:01:52', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Subheading', 'verbiage_subheading', 'publish', 'closed', 'closed', '', 'field_5d9ca4c978fb3', '', '', '2019-10-08 15:01:52', '2019-10-08 15:01:52', '', 78, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field&p=108', 7, 'acf-field', '', 0),
(109, 1, '2019-10-08 15:04:35', '2019-10-08 15:04:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 15:04:35', '2019-10-08 15:04:35', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2019-10-08 15:06:58', '2019-10-08 15:06:58', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 15:06:58', '2019-10-08 15:06:58', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2019-10-08 15:09:19', '2019-10-08 15:09:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 15:09:19', '2019-10-08 15:09:19', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2019-10-08 15:17:35', '2019-10-08 15:17:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 15:17:35', '2019-10-08 15:17:35', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2019-10-08 15:17:51', '2019-10-08 15:17:51', '', 'GiftCard', '', 'inherit', 'open', 'closed', '', 'giftcard', '', '', '2019-10-08 15:30:42', '2019-10-08 15:30:42', '', 11, 'http://western-sizzling-corporate.lndo.site/wp-content/uploads/2019/10/GiftCard.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2019-10-08 15:18:45', '2019-10-08 15:18:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 15:18:45', '2019-10-08 15:18:45', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2019-10-08 15:18:57', '2019-10-08 15:18:57', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 15:18:57', '2019-10-08 15:18:57', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2019-10-08 15:19:16', '2019-10-08 15:19:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 15:19:16', '2019-10-08 15:19:16', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2019-10-08 15:30:43', '2019-10-08 15:30:43', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 15:30:43', '2019-10-08 15:30:43', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2019-10-08 16:15:25', '2019-10-08 16:15:25', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 16:15:25', '2019-10-08 16:15:25', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2019-10-08 16:16:52', '2019-10-08 16:16:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 16:16:52', '2019-10-08 16:16:52', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2019-10-08 16:17:42', '2019-10-08 16:17:42', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 16:17:42', '2019-10-08 16:17:42', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2019-10-08 16:18:51', '2019-10-08 16:18:51', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Card Image', 'card_image', 'publish', 'closed', 'closed', '', 'field_5d9cb6ba240ee', '', '', '2019-10-08 16:19:37', '2019-10-08 16:19:37', '', 78, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field&#038;p=122', 10, 'acf-field', '', 0),
(123, 1, '2019-10-08 16:18:51', '2019-10-08 16:18:51', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'card_image_single', 'publish', 'closed', 'closed', '', 'field_5d9cb6d0240ef', '', '', '2019-10-08 16:18:51', '2019-10-08 16:18:51', '', 122, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field&p=123', 0, 'acf-field', '', 0),
(124, 1, '2019-10-08 16:19:37', '2019-10-08 16:19:37', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'Page Link', 'card_page_link', 'publish', 'closed', 'closed', '', 'field_5d9cb6fa13ae1', '', '', '2019-10-08 16:19:37', '2019-10-08 16:19:37', '', 122, 'http://western-sizzling-corporate.lndo.site/?post_type=acf-field&p=124', 1, 'acf-field', '', 0),
(125, 1, '2019-10-08 16:20:32', '2019-10-08 16:20:32', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 16:20:32', '2019-10-08 16:20:32', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2019-10-08 16:25:27', '2019-10-08 16:25:27', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 16:25:27', '2019-10-08 16:25:27', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2019-10-08 16:32:31', '2019-10-08 16:32:31', '', 'buffet_hero', '', 'inherit', 'open', 'closed', '', 'buffet_hero-2', '', '', '2019-10-08 16:32:31', '2019-10-08 16:32:31', '', 11, 'http://western-sizzling-corporate.lndo.site/wp-content/uploads/2019/10/buffet_hero-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2019-10-08 16:32:42', '2019-10-08 16:32:42', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 16:32:42', '2019-10-08 16:32:42', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2019-10-08 16:33:36', '2019-10-08 16:33:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 16:33:36', '2019-10-08 16:33:36', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2019-10-08 16:39:15', '2019-10-08 16:39:15', '', 'location-finder', '', 'inherit', 'open', 'closed', '', 'location-finder', '', '', '2019-10-08 16:39:15', '2019-10-08 16:39:15', '', 11, 'http://western-sizzling-corporate.lndo.site/wp-content/uploads/2019/10/location-finder.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2019-10-08 16:39:47', '2019-10-08 16:39:47', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 16:39:47', '2019-10-08 16:39:47', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2019-10-08 16:50:15', '2019-10-08 16:50:15', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-10-08 16:50:15', '2019-10-08 16:50:15', '', 11, 'http://western-sizzling-corporate.lndo.site/2019/10/08/11-revision-v1/', 0, 'revision', '', 0),
(133, 2, '2019-10-08 17:52:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-08 17:52:47', '0000-00-00 00:00:00', '', 0, 'http://western-sizzling-corporate.lndo.site/?p=133', 0, 'post', '', 0),
(134, 2, '2019-10-08 18:06:51', '2019-10-08 18:06:51', '', 'Quincy\'s', '', 'publish', 'closed', 'closed', '', 'quincys', '', '', '2019-10-08 18:06:51', '2019-10-08 18:06:51', '', 0, 'http://western-sizzling-corporate.lndo.site/map-location/quincys/', 0, 'map-location', '', 0),
(135, 2, '2019-10-08 18:06:53', '2019-10-08 18:06:53', '', 'Quincy\'s', '', 'publish', 'closed', 'closed', '', 'quincys-2', '', '', '2019-10-08 18:06:53', '2019-10-08 18:06:53', '', 0, 'http://western-sizzling-corporate.lndo.site/map-location/quincys-2/', 0, 'map-location', '', 0),
(136, 2, '2019-10-08 18:06:54', '2019-10-08 18:06:54', '', 'Wood Grill', '', 'publish', 'closed', 'closed', '', 'wood-grill', '', '', '2019-10-08 18:06:54', '2019-10-08 18:06:54', '', 0, 'http://western-sizzling-corporate.lndo.site/map-location/wood-grill/', 0, 'map-location', '', 0),
(137, 2, '2019-10-08 18:07:00', '2019-10-08 18:07:00', '', 'Great American', '', 'publish', 'closed', 'closed', '', 'great-american', '', '', '2019-10-08 18:07:00', '2019-10-08 18:07:00', '', 0, 'http://western-sizzling-corporate.lndo.site/map-location/great-american/', 0, 'map-location', '', 0),
(138, 2, '2019-10-08 18:07:04', '2019-10-08 18:07:04', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin', '', '', '2019-10-08 18:07:04', '2019-10-08 18:07:04', '', 0, 'http://western-sizzling-corporate.lndo.site/map-location/western-sizzlin/', 0, 'map-location', '', 0),
(139, 2, '2019-10-08 18:07:55', '2019-10-08 18:07:55', '', 'Quincy\'s', '', 'publish', 'closed', 'closed', '', 'quincys-3', '', '', '2019-10-08 18:07:55', '2019-10-08 18:07:55', '', 0, 'http://western-sizzling-corporate.lndo.site/map-location/quincys-3/', 0, 'map-location', '', 0),
(142, 2, '2019-10-09 00:31:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-09 00:31:52', '0000-00-00 00:00:00', '', 0, 'http://western-sizzling-corporate.lndo.site/?post_type=wpsl_stores&p=142', 0, 'wpsl_stores', '', 0),
(146, 2, '2019-10-09 00:40:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-09 00:40:18', '0000-00-00 00:00:00', '', 0, 'http://western-sizzling-corporate.lndo.site/?post_type=wpsl_stores&p=146', 0, 'wpsl_stores', '', 0),
(147, 2, '2019-10-09 00:40:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-09 00:40:41', '0000-00-00 00:00:00', '', 0, 'http://western-sizzling-corporate.lndo.site/?post_type=wpsl_stores&p=147', 0, 'wpsl_stores', '', 0),
(148, 2, '2019-10-09 00:41:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-09 00:41:47', '0000-00-00 00:00:00', '', 0, 'http://western-sizzling-corporate.lndo.site/?post_type=wpsl_stores&p=148', 0, 'wpsl_stores', '', 0),
(149, 0, '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 'Quincy\'s', '', 'publish', 'closed', 'closed', '', 'quincys', '', '', '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=quincys', 0, 'wpsl_stores', '', 0),
(150, 0, '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin', '', '', '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin', 0, 'wpsl_stores', '', 0),
(151, 0, '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-2', '', '', '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-2', 0, 'wpsl_stores', '', 0),
(152, 0, '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-3', '', '', '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-3', 0, 'wpsl_stores', '', 0),
(153, 0, '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-4', '', '', '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-4', 0, 'wpsl_stores', '', 0),
(154, 0, '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-5', '', '', '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-5', 0, 'wpsl_stores', '', 0),
(155, 0, '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-6', '', '', '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-6', 0, 'wpsl_stores', '', 0),
(156, 0, '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-7', '', '', '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-7', 0, 'wpsl_stores', '', 0),
(157, 0, '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-8', '', '', '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-8', 0, 'wpsl_stores', '', 0),
(158, 0, '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-9', '', '', '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-9', 0, 'wpsl_stores', '', 0),
(159, 0, '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-10', '', '', '2019-10-09 00:54:03', '2019-10-09 00:54:03', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-10', 0, 'wpsl_stores', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(160, 0, '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-11', '', '', '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-11', 0, 'wpsl_stores', '', 0),
(161, 0, '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-12', '', '', '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-12', 0, 'wpsl_stores', '', 0),
(162, 0, '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-13', '', '', '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-13', 0, 'wpsl_stores', '', 0),
(163, 0, '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-14', '', '', '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-14', 0, 'wpsl_stores', '', 0),
(164, 0, '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-15', '', '', '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-15', 0, 'wpsl_stores', '', 0),
(165, 0, '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-16', '', '', '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-16', 0, 'wpsl_stores', '', 0),
(166, 0, '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-17', '', '', '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-17', 0, 'wpsl_stores', '', 0),
(167, 0, '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-18', '', '', '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-18', 0, 'wpsl_stores', '', 0),
(168, 0, '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-19', '', '', '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-19', 0, 'wpsl_stores', '', 0),
(169, 0, '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-20', '', '', '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-20', 0, 'wpsl_stores', '', 0),
(170, 0, '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-21', '', '', '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-21', 0, 'wpsl_stores', '', 0),
(171, 0, '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-22', '', '', '2019-10-09 00:54:04', '2019-10-09 00:54:04', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-22', 0, 'wpsl_stores', '', 0),
(172, 0, '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-23', '', '', '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-23', 0, 'wpsl_stores', '', 0),
(173, 0, '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-24', '', '', '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-24', 0, 'wpsl_stores', '', 0),
(174, 0, '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-25', '', '', '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-25', 0, 'wpsl_stores', '', 0),
(175, 0, '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-26', '', '', '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-26', 0, 'wpsl_stores', '', 0),
(176, 0, '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-27', '', '', '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-27', 0, 'wpsl_stores', '', 0),
(177, 0, '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-28', '', '', '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-28', 0, 'wpsl_stores', '', 0),
(178, 0, '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-29', '', '', '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-29', 0, 'wpsl_stores', '', 0),
(179, 0, '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-30', '', '', '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-30', 0, 'wpsl_stores', '', 0),
(180, 0, '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-31', '', '', '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-31', 0, 'wpsl_stores', '', 0),
(181, 0, '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-32', '', '', '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-32', 0, 'wpsl_stores', '', 0),
(182, 0, '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-33', '', '', '2019-10-09 00:54:05', '2019-10-09 00:54:05', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-33', 0, 'wpsl_stores', '', 0),
(183, 0, '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-34', '', '', '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-34', 0, 'wpsl_stores', '', 0),
(184, 0, '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-35', '', '', '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-35', 0, 'wpsl_stores', '', 0),
(185, 0, '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-36', '', '', '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-36', 0, 'wpsl_stores', '', 0),
(186, 0, '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-37', '', '', '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-37', 0, 'wpsl_stores', '', 0),
(187, 0, '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-38', '', '', '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-38', 0, 'wpsl_stores', '', 0),
(188, 0, '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-39', '', '', '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-39', 0, 'wpsl_stores', '', 0),
(189, 0, '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-40', '', '', '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-40', 0, 'wpsl_stores', '', 0),
(190, 0, '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-41', '', '', '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-41', 0, 'wpsl_stores', '', 0),
(191, 0, '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 'Western Sizzlin', '', 'publish', 'closed', 'closed', '', 'western-sizzlin-42', '', '', '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=western-sizzlin-42', 0, 'wpsl_stores', '', 0),
(192, 0, '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 'Great American', '', 'publish', 'closed', 'closed', '', 'great-american', '', '', '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=great-american', 0, 'wpsl_stores', '', 0),
(193, 0, '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 'Great American', '', 'publish', 'closed', 'closed', '', 'great-american-2', '', '', '2019-10-09 00:54:06', '2019-10-09 00:54:06', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=great-american-2', 0, 'wpsl_stores', '', 0),
(194, 0, '2019-10-09 00:54:07', '2019-10-09 00:54:07', '', 'Great American', '', 'publish', 'closed', 'closed', '', 'great-american-3', '', '', '2019-10-09 00:54:07', '2019-10-09 00:54:07', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=great-american-3', 0, 'wpsl_stores', '', 0),
(195, 0, '2019-10-09 00:54:07', '2019-10-09 00:54:07', '', 'Wood Grill', '', 'publish', 'closed', 'closed', '', 'wood-grill', '', '', '2019-10-09 00:54:07', '2019-10-09 00:54:07', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=wood-grill', 0, 'wpsl_stores', '', 0),
(196, 0, '2019-10-09 00:54:07', '2019-10-09 00:54:07', '', 'Wood Grill', '', 'publish', 'closed', 'closed', '', 'wood-grill-2', '', '', '2019-10-09 00:54:07', '2019-10-09 00:54:07', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=wood-grill-2', 0, 'wpsl_stores', '', 0),
(197, 0, '2019-10-09 00:54:07', '2019-10-09 00:54:07', '', 'Wood Grill', '', 'publish', 'closed', 'closed', '', 'wood-grill-3', '', '', '2019-10-09 00:54:07', '2019-10-09 00:54:07', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=wood-grill-3', 0, 'wpsl_stores', '', 0),
(198, 0, '2019-10-09 00:54:07', '2019-10-09 00:54:07', '', 'Wood Grill', '', 'publish', 'closed', 'closed', '', 'wood-grill-4', '', '', '2019-10-09 00:54:07', '2019-10-09 00:54:07', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=wood-grill-4', 0, 'wpsl_stores', '', 0),
(199, 0, '2019-10-09 00:54:07', '2019-10-09 00:54:07', '', 'Wood Grill', '', 'publish', 'closed', 'closed', '', 'wood-grill-5', '', '', '2019-10-09 00:54:07', '2019-10-09 00:54:07', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=wood-grill-5', 0, 'wpsl_stores', '', 0),
(200, 0, '2019-10-09 00:54:07', '2019-10-09 00:54:07', '', 'Quincy\'s', '', 'publish', 'closed', 'closed', '', 'quincys-2', '', '', '2019-10-09 00:54:07', '2019-10-09 00:54:07', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=quincys-2', 0, 'wpsl_stores', '', 0),
(201, 0, '2019-10-09 00:54:07', '2019-10-09 00:54:07', '', 'Quincy\'s', '', 'publish', 'closed', 'closed', '', 'quincys-3', '', '', '2019-10-09 00:54:07', '2019-10-09 00:54:07', '', 0, 'http://western-sizzling-corporate.lndo.site/?wpsl_stores=quincys-3', 0, 'wpsl_stores', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'Footer1', 'footer1', 0),
(4, 'Footer2', 'footer2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(34, 2, 0),
(37, 3, 0),
(38, 3, 0),
(40, 3, 0),
(43, 3, 0),
(45, 4, 0),
(46, 4, 0),
(47, 4, 0),
(51, 4, 0),
(52, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'andrzej@zelmandesign.com'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wpsl_signup_pointer'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"428f4de98904ac0b76fd31f800d7a143a2a31139c3f0e32b66eca1063389e89e\";a:4:{s:10:\"expiration\";i:1570625644;s:2:\"ip\";s:10:\"172.19.0.2\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36\";s:5:\"login\";i:1570452844;}s:64:\"eb475dca1314a00fddb844764ba118405cf2ee6a777bd7a0c310c37abc230522\";a:4:{s:10:\"expiration\";i:1570729498;s:2:\"ip\";s:12:\"83.30.128.24\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36\";s:5:\"login\";i:1570556698;}s:64:\"154c35e183c8ec222541b093b214213190283d92ddd11be5131994e46b2fd553\";a:4:{s:10:\"expiration\";i:1570771067;s:2:\"ip\";s:12:\"83.30.128.24\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1570598267;}s:64:\"d031c7a1a35f94c5986c2cb4ae23f409b6faefd5809b1080a9e80ca570333cf0\";a:4:{s:10:\"expiration\";i:1570784412;s:2:\"ip\";s:12:\"83.30.128.24\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36\";s:5:\"login\";i:1570611612;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '50'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"83.30.128.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_user-settings', 'editor=html&libraryContent=browse&imgsize=full'),
(23, 1, 'wp_user-settings-time', '1570522248'),
(24, 2, 'nickname', 'chad'),
(25, 2, 'first_name', ''),
(26, 2, 'last_name', ''),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'syntax_highlighting', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(36, 2, 'wp_user_level', '10'),
(37, 2, 'dismissed_wp_pointers', 'wpsl_signup_pointer'),
(38, 1, 'closedpostboxes_page', 'a:0:{}'),
(39, 1, 'metaboxhidden_page', 'a:6:{i:0;s:13:\"pageparentdiv\";i:1;s:12:\"postimagediv\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(40, 2, 'session_tokens', 'a:1:{s:64:\"7a1d87f5a12df8fdf0196841f39e441c5e74de252013a79d988fb154a009447d\";a:4:{s:10:\"expiration\";i:1570729967;s:2:\"ip\";s:13:\"98.28.131.103\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1570557167;}}'),
(41, 2, 'wp_dashboard_quick_press_last_post_id', '133'),
(42, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"98.28.131.0\";}'),
(43, 2, 'wp_user-settings', 'editor='),
(44, 2, 'wp_user-settings-time', '1570557254');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'andrzej@zelmandesign.com', '$P$B2nMlIM3NVGxdncllI2lrjjn41UO7U1', 'andrzejzelmandesign-com', 'andrzej@zelmandesign.com', '', '2019-09-27 16:43:45', '', 0, 'andrzej@zelmandesign.com'),
(2, 'chad', '$P$BTIoywTYqZ3PkxcXjlCHpPIOXcMvlH/', 'chad', 'cdmiddle@gmail.com', '', '2019-10-08 08:26:05', '1570523165:$P$BHS7oZj4t0Kuh5OOZPTUxrmkjuYLK1/', 0, 'chad');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza`
--

CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(2083) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `sticky` tinyint(1) DEFAULT '0',
  `other_data` longtext NOT NULL,
  `latlng` point DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wpgmza`
--

INSERT INTO `wp_wpgmza` (`id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `sticky`, `other_data`, `latlng`) VALUES
(1, 1, 'California', '', '', '', '', '36.778261', '-119.4179324', '0', '', '', '', 1, 0, 0, '', 0, '', 0x0000000001010000004a60730e9e63424098608967bfda5dc0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_circles`
--

CREATE TABLE `wp_wpgmza_circles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `center` point DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_maps`
--

CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL,
  `map_title` varchar(55) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wpgmza_maps`
--

INSERT INTO `wp_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'My first map', '100', '400', '45.950464', '-109.815505', '45.950464398418106,-109.81550500000003', 2, '0', 1, 1, 1, 0, '', 0, '', 2, 2, 1, '100', 0, 0, 0, 0, 0, '', '\\%', 'px', 1, 0, 1, 2, 0, '', 'a:13:{s:21:\"store_locator_enabled\";i:1;s:22:\"store_locator_distance\";i:1;s:28:\"store_locator_default_radius\";i:10;s:31:\"store_locator_not_found_message\";s:52:\"No results found in this location. Please try again.\";s:20:\"store_locator_bounce\";i:1;s:26:\"store_locator_query_string\";s:14:\"ZIP / Address:\";s:29:\"wpgmza_store_locator_restrict\";s:2:\"us\";s:33:\"wpgmza_store_locator_radius_style\";s:6:\"modern\";s:12:\"map_max_zoom\";s:1:\"1\";s:15:\"transport_layer\";i:2;s:17:\"wpgmza_theme_data\";s:0:\"\";s:30:\"wpgmza_show_points_of_interest\";i:1;s:17:\"wpgmza_auto_night\";i:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_polygon`
--

CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `description` text NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_polylines`
--

CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_rectangles`
--

CREATE TABLE `wp_wpgmza_rectangles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wps_collections_custom`
--

CREATE TABLE `wp_wps_collections_custom` (
  `id` bigint(100) UNSIGNED NOT NULL,
  `collection_id` bigint(100) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` bigint(100) UNSIGNED DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `handle` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `post_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `body_html` longtext COLLATE utf8mb4_unicode_520_ci,
  `image` longtext COLLATE utf8mb4_unicode_520_ci,
  `metafield` longtext COLLATE utf8mb4_unicode_520_ci,
  `published` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `published_scope` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `sort_order` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `published_at` datetime DEFAULT '2019-09-27 16:48:04',
  `updated_at` datetime DEFAULT '2019-09-27 16:48:04'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wps_collections_smart`
--

CREATE TABLE `wp_wps_collections_smart` (
  `id` bigint(100) UNSIGNED NOT NULL,
  `collection_id` bigint(100) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` bigint(100) UNSIGNED DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `handle` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `post_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `body_html` longtext COLLATE utf8mb4_unicode_520_ci,
  `image` longtext COLLATE utf8mb4_unicode_520_ci,
  `rules` longtext COLLATE utf8mb4_unicode_520_ci,
  `disjunctive` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `sort_order` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `published_at` datetime DEFAULT '2019-09-27 16:48:04',
  `updated_at` datetime DEFAULT '2019-09-27 16:48:04'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wps_collects`
--

CREATE TABLE `wp_wps_collects` (
  `id` bigint(100) UNSIGNED NOT NULL,
  `collect_id` bigint(100) UNSIGNED NOT NULL DEFAULT '0',
  `product_id` bigint(100) DEFAULT '0',
  `collection_id` bigint(100) DEFAULT '0',
  `featured` tinyint(1) DEFAULT '0',
  `position` int(20) DEFAULT '0',
  `sort_value` int(20) DEFAULT '0',
  `created_at` datetime DEFAULT '2019-09-27 16:48:04',
  `updated_at` datetime DEFAULT '2019-09-27 16:48:04'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wps_images`
--

CREATE TABLE `wp_wps_images` (
  `id` bigint(100) UNSIGNED NOT NULL,
  `image_id` bigint(100) UNSIGNED NOT NULL DEFAULT '0',
  `product_id` bigint(100) DEFAULT '0',
  `variant_ids` longtext COLLATE utf8mb4_unicode_520_ci,
  `src` longtext COLLATE utf8mb4_unicode_520_ci,
  `alt` longtext COLLATE utf8mb4_unicode_520_ci,
  `position` int(20) DEFAULT '0',
  `created_at` datetime DEFAULT '2019-09-27 16:48:04',
  `updated_at` datetime DEFAULT '2019-09-27 16:48:04'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wps_options`
--

CREATE TABLE `wp_wps_options` (
  `id` bigint(100) UNSIGNED NOT NULL,
  `option_id` bigint(100) UNSIGNED NOT NULL DEFAULT '0',
  `product_id` bigint(100) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `position` int(20) DEFAULT '0',
  `values` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wps_products`
--

CREATE TABLE `wp_wps_products` (
  `id` bigint(100) UNSIGNED NOT NULL,
  `product_id` bigint(255) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` bigint(100) UNSIGNED DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `body_html` longtext COLLATE utf8mb4_unicode_520_ci,
  `handle` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `post_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `image` longtext COLLATE utf8mb4_unicode_520_ci,
  `images` longtext COLLATE utf8mb4_unicode_520_ci,
  `vendor` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `product_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `published_scope` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `published_at` datetime DEFAULT '2019-09-27 16:48:04',
  `updated_at` datetime DEFAULT '2019-09-27 16:48:04',
  `created_at` datetime DEFAULT '2019-09-27 16:48:04',
  `admin_graphql_api_id` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wps_settings_connection`
--

CREATE TABLE `wp_wps_settings_connection` (
  `id` bigint(100) UNSIGNED NOT NULL,
  `api_key` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `api_password` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `shared_secret` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `storefront_access_token` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `access_token` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `domain` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `nonce` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wps_settings_general`
--

CREATE TABLE `wp_wps_settings_general` (
  `id` bigint(100) NOT NULL,
  `url_products` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'products',
  `url_collections` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'collections',
  `url_webhooks` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'https://western-sizzling-corporate.lndo.site',
  `disable_default_pages` tinyint(1) DEFAULT '0',
  `num_posts` bigint(100) DEFAULT NULL,
  `styles_all` tinyint(1) DEFAULT '1',
  `styles_core` tinyint(1) DEFAULT '0',
  `styles_grid` tinyint(1) DEFAULT '0',
  `plugin_name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'WP Shopify',
  `plugin_textdomain` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'wpshopify',
  `plugin_version` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '2.0.16',
  `plugin_author` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'WP Shopify',
  `price_with_currency` tinyint(1) DEFAULT '0',
  `currency_display_style` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'symbol',
  `cart_loaded` tinyint(1) DEFAULT '1',
  `title_as_alt` tinyint(1) DEFAULT '0',
  `selective_sync_all` tinyint(1) DEFAULT '0',
  `selective_sync_products` tinyint(1) DEFAULT '1',
  `sync_by_collections` longtext COLLATE utf8mb4_unicode_520_ci,
  `selective_sync_collections` tinyint(1) DEFAULT '1',
  `selective_sync_customers` tinyint(1) DEFAULT '0',
  `selective_sync_orders` tinyint(1) DEFAULT '0',
  `selective_sync_shop` tinyint(1) DEFAULT '1',
  `products_link_to_shopify` tinyint(1) DEFAULT '0',
  `show_breadcrumbs` tinyint(1) DEFAULT '0',
  `hide_pagination` tinyint(1) DEFAULT '0',
  `align_height` tinyint(1) DEFAULT '0',
  `is_free` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `is_pro` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `related_products_show` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `related_products_sort` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'random',
  `related_products_amount` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `allow_insecure_webhooks` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `save_connection_only` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `app_uninstalled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `items_per_request` bigint(10) NOT NULL DEFAULT '250',
  `enable_beta` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `enable_cart_terms` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `enable_customer_accounts` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `cart_terms_content` longtext COLLATE utf8mb4_unicode_520_ci,
  `enable_cart_notes` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `cart_notes_placeholder` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Enter note for checkout',
  `add_to_cart_color` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '#14273b',
  `variant_color` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '#52a7a6',
  `checkout_color` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '#52a7a6',
  `cart_counter_color` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '#6ae06a',
  `cart_icon_color` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '#000',
  `products_heading_toggle` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `products_heading` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Products',
  `collections_heading_toggle` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `collections_heading` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Collections',
  `related_products_heading_toggle` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `related_products_heading` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Related Products',
  `products_images_sizing_toggle` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `products_images_sizing_width` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `products_images_sizing_height` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `products_images_sizing_crop` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'center',
  `products_images_sizing_scale` int(1) NOT NULL DEFAULT '0',
  `products_images_show_zoom` int(1) NOT NULL DEFAULT '0',
  `products_thumbnail_images_sizing_toggle` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `products_thumbnail_images_sizing_width` int(5) UNSIGNED NOT NULL DEFAULT '70',
  `products_thumbnail_images_sizing_height` int(5) UNSIGNED NOT NULL DEFAULT '70',
  `products_thumbnail_images_sizing_crop` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'center',
  `products_thumbnail_images_sizing_scale` int(1) NOT NULL DEFAULT '0',
  `collections_images_sizing_toggle` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `collections_images_sizing_width` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `collections_images_sizing_height` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `collections_images_sizing_crop` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'center',
  `collections_images_sizing_scale` int(1) NOT NULL DEFAULT '0',
  `related_products_images_sizing_toggle` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `related_products_images_sizing_width` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `related_products_images_sizing_height` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `related_products_images_sizing_crop` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'center',
  `related_products_images_sizing_scale` int(1) NOT NULL DEFAULT '0',
  `enable_custom_checkout_domain` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `products_compare_at` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `products_show_price_range` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `checkout_button_target` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '_self',
  `show_fixed_cart_tab` tinyint(1) NOT NULL DEFAULT '1',
  `cart_icon_fixed_color` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '#FFF',
  `cart_counter_fixed_color` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '#FFF',
  `cart_fixed_background_color` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '#52a7a6',
  `pricing_local_currency_toggle` tinyint(1) NOT NULL DEFAULT '0',
  `pricing_local_currency_with_base` tinyint(1) NOT NULL DEFAULT '0',
  `synchronous_sync` tinyint(1) NOT NULL DEFAULT '0',
  `is_lite_sync` tinyint(1) NOT NULL DEFAULT '1',
  `is_syncing_posts` tinyint(1) NOT NULL DEFAULT '1',
  `search_by` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'title',
  `search_exact_match` tinyint(1) NOT NULL DEFAULT '0',
  `plugin_free_basename` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'wpshopify/wp-shopify.php',
  `account_page_login` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `account_page_register` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `account_page_account` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `account_page_forgot_password` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `account_page_set_password` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wps_settings_general`
--

INSERT INTO `wp_wps_settings_general` (`id`, `url_products`, `url_collections`, `url_webhooks`, `disable_default_pages`, `num_posts`, `styles_all`, `styles_core`, `styles_grid`, `plugin_name`, `plugin_textdomain`, `plugin_version`, `plugin_author`, `price_with_currency`, `currency_display_style`, `cart_loaded`, `title_as_alt`, `selective_sync_all`, `selective_sync_products`, `sync_by_collections`, `selective_sync_collections`, `selective_sync_customers`, `selective_sync_orders`, `selective_sync_shop`, `products_link_to_shopify`, `show_breadcrumbs`, `hide_pagination`, `align_height`, `is_free`, `is_pro`, `related_products_show`, `related_products_sort`, `related_products_amount`, `allow_insecure_webhooks`, `save_connection_only`, `app_uninstalled`, `items_per_request`, `enable_beta`, `enable_cart_terms`, `enable_customer_accounts`, `cart_terms_content`, `enable_cart_notes`, `cart_notes_placeholder`, `add_to_cart_color`, `variant_color`, `checkout_color`, `cart_counter_color`, `cart_icon_color`, `products_heading_toggle`, `products_heading`, `collections_heading_toggle`, `collections_heading`, `related_products_heading_toggle`, `related_products_heading`, `products_images_sizing_toggle`, `products_images_sizing_width`, `products_images_sizing_height`, `products_images_sizing_crop`, `products_images_sizing_scale`, `products_images_show_zoom`, `products_thumbnail_images_sizing_toggle`, `products_thumbnail_images_sizing_width`, `products_thumbnail_images_sizing_height`, `products_thumbnail_images_sizing_crop`, `products_thumbnail_images_sizing_scale`, `collections_images_sizing_toggle`, `collections_images_sizing_width`, `collections_images_sizing_height`, `collections_images_sizing_crop`, `collections_images_sizing_scale`, `related_products_images_sizing_toggle`, `related_products_images_sizing_width`, `related_products_images_sizing_height`, `related_products_images_sizing_crop`, `related_products_images_sizing_scale`, `enable_custom_checkout_domain`, `products_compare_at`, `products_show_price_range`, `checkout_button_target`, `show_fixed_cart_tab`, `cart_icon_fixed_color`, `cart_counter_fixed_color`, `cart_fixed_background_color`, `pricing_local_currency_toggle`, `pricing_local_currency_with_base`, `synchronous_sync`, `is_lite_sync`, `is_syncing_posts`, `search_by`, `search_exact_match`, `plugin_free_basename`, `account_page_login`, `account_page_register`, `account_page_account`, `account_page_forgot_password`, `account_page_set_password`) VALUES
(1, 'products', 'collections', 'https://western-sizzling-corporate.lndo.site', 0, 10, 1, 0, 0, 'WP Shopify', 'wpshopify', '2.0.16', 'WP Shopify', 0, 'symbol', 1, 0, 0, 1, '', 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 'random', 4, 0, 0, 0, 250, 0, 0, 0, 'I agree with the terms and conditions.', 0, 'Enter note for checkout', '#14273b', '#52a7a6', '#52a7a6', '#6ae06a', '#000', 1, 'Products', 1, 'Collections', 1, 'Related Products', 0, 0, 0, 'center', 0, 0, 1, 70, 70, 'center', 0, 0, 0, 0, 'center', 0, 0, 0, 0, 'center', 0, 0, 0, 1, '_self', 1, '#FFF', '#FFF', '#52a7a6', 0, 0, 0, 1, 1, 'title', 0, 'wpshopify/wp-shopify.php', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wps_settings_license`
--

CREATE TABLE `wp_wps_settings_license` (
  `license_key` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `is_local` tinyint(1) UNSIGNED DEFAULT '0',
  `expires` datetime DEFAULT '2019-09-27 16:48:04',
  `site_count` int(20) UNSIGNED DEFAULT '0',
  `checksum` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `customer_email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `customer_name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `item_name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `license` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `license_limit` int(20) DEFAULT '0',
  `payment_id` int(20) DEFAULT '0',
  `success` tinyint(1) DEFAULT '0',
  `nonce` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `activations_left` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `is_free` tinyint(1) UNSIGNED DEFAULT '0',
  `is_pro` tinyint(1) UNSIGNED DEFAULT '0',
  `beta_access` tinyint(1) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wps_settings_syncing`
--

CREATE TABLE `wp_wps_settings_syncing` (
  `id` bigint(100) UNSIGNED NOT NULL,
  `is_syncing` tinyint(1) DEFAULT '0',
  `syncing_totals_shop` bigint(100) UNSIGNED DEFAULT '1',
  `syncing_totals_smart_collections` bigint(100) UNSIGNED DEFAULT '0',
  `syncing_totals_custom_collections` bigint(100) UNSIGNED DEFAULT '0',
  `syncing_totals_products` bigint(100) UNSIGNED DEFAULT '0',
  `syncing_totals_collects` bigint(100) UNSIGNED DEFAULT '0',
  `syncing_totals_orders` bigint(100) UNSIGNED DEFAULT '0',
  `syncing_totals_customers` bigint(100) UNSIGNED DEFAULT '0',
  `syncing_totals_webhooks` bigint(100) UNSIGNED DEFAULT '0',
  `syncing_step_total` bigint(100) UNSIGNED DEFAULT '0',
  `syncing_step_current` bigint(100) UNSIGNED DEFAULT '0',
  `syncing_current_amounts_shop` bigint(100) UNSIGNED DEFAULT '0',
  `syncing_current_amounts_smart_collections` bigint(100) UNSIGNED DEFAULT '0',
  `syncing_current_amounts_custom_collections` bigint(100) UNSIGNED DEFAULT '0',
  `syncing_current_amounts_products` bigint(100) UNSIGNED DEFAULT '0',
  `syncing_current_amounts_collects` bigint(100) UNSIGNED DEFAULT '0',
  `syncing_current_amounts_orders` bigint(100) UNSIGNED DEFAULT '0',
  `syncing_current_amounts_customers` bigint(100) UNSIGNED DEFAULT '0',
  `syncing_current_amounts_webhooks` bigint(100) UNSIGNED DEFAULT '0',
  `syncing_start_time` bigint(100) UNSIGNED DEFAULT '0',
  `syncing_end_time` bigint(100) UNSIGNED DEFAULT '0',
  `syncing_errors` longtext COLLATE utf8mb4_unicode_520_ci,
  `syncing_warnings` longtext COLLATE utf8mb4_unicode_520_ci,
  `finished_webhooks_deletions` tinyint(1) DEFAULT '0',
  `finished_product_posts_relationships` tinyint(1) DEFAULT '0',
  `finished_collection_posts_relationships` tinyint(1) DEFAULT '0',
  `finished_data_deletions` tinyint(1) DEFAULT '0',
  `published_product_ids` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wps_settings_syncing`
--

INSERT INTO `wp_wps_settings_syncing` (`id`, `is_syncing`, `syncing_totals_shop`, `syncing_totals_smart_collections`, `syncing_totals_custom_collections`, `syncing_totals_products`, `syncing_totals_collects`, `syncing_totals_orders`, `syncing_totals_customers`, `syncing_totals_webhooks`, `syncing_step_total`, `syncing_step_current`, `syncing_current_amounts_shop`, `syncing_current_amounts_smart_collections`, `syncing_current_amounts_custom_collections`, `syncing_current_amounts_products`, `syncing_current_amounts_collects`, `syncing_current_amounts_orders`, `syncing_current_amounts_customers`, `syncing_current_amounts_webhooks`, `syncing_start_time`, `syncing_end_time`, `syncing_errors`, `syncing_warnings`, `finished_webhooks_deletions`, `finished_product_posts_relationships`, `finished_collection_posts_relationships`, `finished_data_deletions`, `published_product_ids`) VALUES
(1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wps_shop`
--

CREATE TABLE `wp_wps_shop` (
  `id` bigint(100) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `myshopify_domain` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `shop_owner` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `phone` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `address1` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `address2` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `city` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `zip` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `country` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `country_code` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `country_name` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `currency` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `latitude` smallint(20) DEFAULT '0',
  `longitude` smallint(20) DEFAULT '0',
  `money_format` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `money_with_currency_format` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `weight_unit` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `primary_locale` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `province` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `province_code` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `timezone` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `created_at` datetime DEFAULT '2019-09-27 16:48:04',
  `updated_at` datetime DEFAULT '2019-09-27 16:48:04',
  `domain` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `source` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `customer_email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `iana_timezone` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `taxes_included` tinyint(1) DEFAULT '0',
  `tax_shipping` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `county_taxes` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `plan_display_name` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `plan_name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `has_discounts` tinyint(1) DEFAULT '0',
  `has_gift_cards` tinyint(1) DEFAULT '0',
  `google_apps_domain` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `google_apps_login_enabled` tinyint(1) DEFAULT '0',
  `money_in_emails_format` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `money_with_currency_in_emails_format` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `eligible_for_payments` tinyint(1) DEFAULT '0',
  `requires_extra_payments_agreement` tinyint(1) DEFAULT '0',
  `password_enabled` tinyint(1) DEFAULT '0',
  `has_storefront` tinyint(1) DEFAULT '0',
  `eligible_for_card_reader_giveaway` tinyint(1) DEFAULT '0',
  `finances` tinyint(1) DEFAULT '0',
  `primary_location_id` tinyint(1) DEFAULT '0',
  `checkout_api_supported` tinyint(1) DEFAULT '0',
  `multi_location_enabled` tinyint(1) DEFAULT '0',
  `setup_required` tinyint(1) DEFAULT '0',
  `force_ssl` tinyint(1) DEFAULT '0',
  `pre_launch_enabled` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wps_tags`
--

CREATE TABLE `wp_wps_tags` (
  `id` bigint(100) UNSIGNED NOT NULL,
  `tag_id` bigint(100) DEFAULT '0',
  `product_id` bigint(100) DEFAULT '0',
  `post_id` bigint(100) DEFAULT '0',
  `tag` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wps_variants`
--

CREATE TABLE `wp_wps_variants` (
  `id` bigint(100) UNSIGNED NOT NULL,
  `variant_id` bigint(100) UNSIGNED NOT NULL DEFAULT '0',
  `product_id` bigint(100) DEFAULT '0',
  `image_id` bigint(100) DEFAULT '0',
  `title` longtext COLLATE utf8mb4_unicode_520_ci,
  `price` decimal(12,2) DEFAULT '0.00',
  `compare_at_price` decimal(12,2) DEFAULT '0.00',
  `position` int(20) DEFAULT '0',
  `option1` longtext COLLATE utf8mb4_unicode_520_ci,
  `option2` longtext COLLATE utf8mb4_unicode_520_ci,
  `option3` longtext COLLATE utf8mb4_unicode_520_ci,
  `option_values` longtext COLLATE utf8mb4_unicode_520_ci,
  `taxable` tinyint(1) DEFAULT '0',
  `sku` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `inventory_policy` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `inventory_quantity` bigint(20) DEFAULT '0',
  `old_inventory_quantity` bigint(20) DEFAULT '0',
  `inventory_management` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `fulfillment_service` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `barcode` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `weight` decimal(20,4) DEFAULT '0.0000',
  `weight_unit` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `requires_shipping` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT '2019-09-27 16:48:04',
  `updated_at` datetime DEFAULT '2019-09-27 16:48:04',
  `admin_graphql_api_id` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_gf_draft_submissions`
--
ALTER TABLE `wp_gf_draft_submissions`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_gf_entry`
--
ALTER TABLE `wp_gf_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `form_id_status` (`form_id`,`status`);

--
-- Indexes for table `wp_gf_entry_meta`
--
ALTER TABLE `wp_gf_entry_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `entry_id` (`entry_id`),
  ADD KEY `meta_value` (`meta_value`(191));

--
-- Indexes for table `wp_gf_entry_notes`
--
ALTER TABLE `wp_gf_entry_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entry_id` (`entry_id`),
  ADD KEY `entry_user_key` (`entry_id`,`user_id`);

--
-- Indexes for table `wp_gf_form`
--
ALTER TABLE `wp_gf_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_gf_form_meta`
--
ALTER TABLE `wp_gf_form_meta`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_gf_form_revisions`
--
ALTER TABLE `wp_gf_form_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_gf_form_view`
--
ALTER TABLE `wp_gf_form_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_lctr2_conf`
--
ALTER TABLE `wp_lctr2_conf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_lctr2_locations`
--
ALTER TABLE `wp_lctr2_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_lctr2_relations`
--
ALTER TABLE `wp_lctr2_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relation_name` (`relation_name`),
  ADD KEY `from_id` (`from_id`),
  ADD KEY `to_id` (`to_id`);

--
-- Indexes for table `wp_lctr2_searchlog`
--
ALTER TABLE `wp_lctr2_searchlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_circles`
--
ALTER TABLE `wp_wpgmza_circles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_rectangles`
--
ALTER TABLE `wp_wpgmza_rectangles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wps_collections_custom`
--
ALTER TABLE `wp_wps_collections_custom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wps_collections_smart`
--
ALTER TABLE `wp_wps_collections_smart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wps_collects`
--
ALTER TABLE `wp_wps_collects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wps_images`
--
ALTER TABLE `wp_wps_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wps_options`
--
ALTER TABLE `wp_wps_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wps_products`
--
ALTER TABLE `wp_wps_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wps_settings_connection`
--
ALTER TABLE `wp_wps_settings_connection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wps_settings_general`
--
ALTER TABLE `wp_wps_settings_general`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wps_settings_license`
--
ALTER TABLE `wp_wps_settings_license`
  ADD PRIMARY KEY (`license_key`);

--
-- Indexes for table `wp_wps_settings_syncing`
--
ALTER TABLE `wp_wps_settings_syncing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wps_shop`
--
ALTER TABLE `wp_wps_shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wps_tags`
--
ALTER TABLE `wp_wps_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wps_variants`
--
ALTER TABLE `wp_wps_variants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_gf_entry`
--
ALTER TABLE `wp_gf_entry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_gf_entry_meta`
--
ALTER TABLE `wp_gf_entry_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_gf_entry_notes`
--
ALTER TABLE `wp_gf_entry_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_gf_form`
--
ALTER TABLE `wp_gf_form`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_gf_form_revisions`
--
ALTER TABLE `wp_gf_form_revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_gf_form_view`
--
ALTER TABLE `wp_gf_form_view`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_lctr2_conf`
--
ALTER TABLE `wp_lctr2_conf`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_lctr2_locations`
--
ALTER TABLE `wp_lctr2_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_lctr2_relations`
--
ALTER TABLE `wp_lctr2_relations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_lctr2_searchlog`
--
ALTER TABLE `wp_lctr2_searchlog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1912;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpgmza_circles`
--
ALTER TABLE `wp_wpgmza_circles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_rectangles`
--
ALTER TABLE `wp_wpgmza_rectangles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wps_collections_custom`
--
ALTER TABLE `wp_wps_collections_custom`
  MODIFY `id` bigint(100) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wps_collections_smart`
--
ALTER TABLE `wp_wps_collections_smart`
  MODIFY `id` bigint(100) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wps_collects`
--
ALTER TABLE `wp_wps_collects`
  MODIFY `id` bigint(100) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wps_images`
--
ALTER TABLE `wp_wps_images`
  MODIFY `id` bigint(100) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wps_options`
--
ALTER TABLE `wp_wps_options`
  MODIFY `id` bigint(100) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wps_products`
--
ALTER TABLE `wp_wps_products`
  MODIFY `id` bigint(100) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wps_settings_connection`
--
ALTER TABLE `wp_wps_settings_connection`
  MODIFY `id` bigint(100) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wps_settings_general`
--
ALTER TABLE `wp_wps_settings_general`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wps_settings_syncing`
--
ALTER TABLE `wp_wps_settings_syncing`
  MODIFY `id` bigint(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wps_shop`
--
ALTER TABLE `wp_wps_shop`
  MODIFY `id` bigint(100) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wps_tags`
--
ALTER TABLE `wp_wps_tags`
  MODIFY `id` bigint(100) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wps_variants`
--
ALTER TABLE `wp_wps_variants`
  MODIFY `id` bigint(100) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
