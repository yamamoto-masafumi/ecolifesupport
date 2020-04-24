-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 2020 年 4 月 21 日 04:16
-- サーバのバージョン： 5.7.26
-- PHP のバージョン: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `ecolifesupport`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'WordPress コメントの投稿者', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-03-31 10:36:45', '2020-03-31 01:36:45', 'こんにちは、これはコメントです。\nコメントの承認、編集、削除を始めるにはダッシュボードの「コメント画面」にアクセスしてください。\nコメントのアバターは「<a href=\"https://gravatar.com\">Gravatar</a>」から取得されます。', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress_ecolifesupport', 'yes'),
(2, 'home', 'http://localhost/wordpress_ecolifesupport', 'yes'),
(3, 'blogname', 'エコライフサポート', 'yes'),
(4, 'blogdescription', '素材ゴミ処分・不用品処分・ゴミ屋敷の片付け業者ならエコライフサポートへ', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'm.yamamoto@tomo-partners.jp', 'yes'),
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
(23, 'date_format', 'Y年n月j日', 'yes'),
(24, 'time_format', 'g:i A', 'yes'),
(25, 'links_updated_date_format', 'Y年n月j日 g:i A', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:122:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:14:\"custom_type/?$\";s:31:\"index.php?post_type=custom_type\";s:44:\"custom_type/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=custom_type&feed=$matches[1]\";s:39:\"custom_type/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=custom_type&feed=$matches[1]\";s:31:\"custom_type/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=custom_type&paged=$matches[1]\";s:52:\"custom-slug/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?custom_cat=$matches[1]&feed=$matches[2]\";s:47:\"custom-slug/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?custom_cat=$matches[1]&feed=$matches[2]\";s:28:\"custom-slug/([^/]+)/embed/?$\";s:43:\"index.php?custom_cat=$matches[1]&embed=true\";s:40:\"custom-slug/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?custom_cat=$matches[1]&paged=$matches[2]\";s:22:\"custom-slug/([^/]+)/?$\";s:32:\"index.php?custom_cat=$matches[1]\";s:51:\"custom_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?custom_tag=$matches[1]&feed=$matches[2]\";s:46:\"custom_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?custom_tag=$matches[1]&feed=$matches[2]\";s:27:\"custom_tag/([^/]+)/embed/?$\";s:43:\"index.php?custom_tag=$matches[1]&embed=true\";s:39:\"custom_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?custom_tag=$matches[1]&paged=$matches[2]\";s:21:\"custom_tag/([^/]+)/?$\";s:32:\"index.php?custom_tag=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"custom_type/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"custom_type/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"custom_type/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"custom_type/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"custom_type/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"custom_type/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"custom_type/([^/]+)/embed/?$\";s:44:\"index.php?custom_type=$matches[1]&embed=true\";s:32:\"custom_type/([^/]+)/trackback/?$\";s:38:\"index.php?custom_type=$matches[1]&tb=1\";s:52:\"custom_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?custom_type=$matches[1]&feed=$matches[2]\";s:47:\"custom_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?custom_type=$matches[1]&feed=$matches[2]\";s:40:\"custom_type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?custom_type=$matches[1]&paged=$matches[2]\";s:47:\"custom_type/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?custom_type=$matches[1]&cpage=$matches[2]\";s:36:\"custom_type/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?custom_type=$matches[1]&page=$matches[2]\";s:28:\"custom_type/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"custom_type/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"custom_type/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"custom_type/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"custom_type/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"custom_type/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:31:\"what-the-file/what-the-file.php\";i:1;s:31:\"wp-svg-images/wp-svg-images.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'ECO-LifeSupport', 'yes'),
(41, 'stylesheet', 'ECO-LifeSupport', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(66, 'image_default_link_type', '', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Asia/Tokyo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1601170605', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ja', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:8:\"sidebar1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:5:{i:1587433006;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1587433019;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587433020;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587519889;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'nonce_key', ']jV6=-~6VSWGSXYva>92 2C7WPt0Wjv7& >;YgeCDOSyfy67v/QU,=y+*CE6Se$j', 'no'),
(112, 'nonce_salt', '[F|PqAs s_KXHAEY9x]LySNPA]Su?foe*0WpS_S{H{c{^V{e*jHR]~0E+IG#YGOY', 'no'),
(113, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'recovery_keys', 'a:0:{}', 'yes'),
(128, 'auth_key', 'f?1o$h}sfQ__WFB#zwT+J,/; zV8kTRys;?s7f;`$1I{6j_M_#&^=-R>8 {)Pb^f', 'no'),
(129, 'auth_salt', 'inSr>^WG{(}2rZO`HuWn}y+?{~t4[qneeNR N:8+N0)b70F>DtU5aT%eLF{?o+tp', 'no'),
(130, 'logged_in_key', '`w6y/:23tolJbhxo=^}+2`.z6c[PNez>}E:6H`0v~df<?-G[<8G;36MKWu.jZv`&', 'no'),
(131, 'logged_in_salt', 'IyU0T-<%!*cN&+eWhd Bmrk^=@sa1fV$L&j1d5_i=n|RwW.`#=x a4/G?Bp59[<v', 'no'),
(150, 'theme_mods_twentytwenty', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1585618630;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(151, 'current_theme', 'ECO-LifeSupport', 'yes'),
(152, 'theme_mods_theme-bones-master', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1585618861;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:8:\"sidebar1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}}}}', 'yes'),
(153, 'theme_switched', '', 'yes'),
(157, 'theme_mods_ECO-LifeSupport', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(160, 'recently_activated', 'a:0:{}', 'yes'),
(165, 'whatthefile-install-date', '2020-03-31', 'no'),
(171, 'new_admin_email', 'm.yamamoto@tomo-partners.jp', 'yes'),
(174, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(224, 'recovery_mode_email_last_sent', '1585725851', 'yes'),
(375, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1587430766;s:7:\"checked\";a:1:{s:15:\"ECO-LifeSupport\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(377, '_site_transient_timeout_php_check_78e1776a2900a8656cebe7d7ea2a07cc', '1587544178', 'no'),
(378, '_site_transient_php_check_78e1776a2900a8656cebe7d7ea2a07cc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(379, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":5,\"critical\":0}', 'yes'),
(385, 'db_upgraded', '', 'yes'),
(387, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/ja/wordpress-5.4.zip\";s:6:\"locale\";s:2:\"ja\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/ja/wordpress-5.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1587430764;s:15:\"version_checked\";s:3:\"5.4\";s:12:\"translations\";a:0:{}}', 'no'),
(410, '_site_transient_timeout_theme_roots', '1587432565', 'no'),
(411, '_site_transient_theme_roots', 'a:1:{s:15:\"ECO-LifeSupport\";s:7:\"/themes\";}', 'no'),
(412, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1587430767;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:31:\"what-the-file/what-the-file.php\";s:5:\"1.5.4\";s:31:\"wp-svg-images/wp-svg-images.php\";s:3:\"3.2\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"what-the-file/what-the-file.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/what-the-file\";s:4:\"slug\";s:13:\"what-the-file\";s:6:\"plugin\";s:31:\"what-the-file/what-the-file.php\";s:11:\"new_version\";s:5:\"1.5.4\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/what-the-file/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/what-the-file.1.5.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/what-the-file/assets/icon-256x256.png?rev=1223609\";s:2:\"1x\";s:66:\"https://ps.w.org/what-the-file/assets/icon-128x128.png?rev=1223609\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/what-the-file/assets/banner-772x250.jpg?rev=685200\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"wp-svg-images/wp-svg-images.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wp-svg-images\";s:4:\"slug\";s:13:\"wp-svg-images\";s:6:\"plugin\";s:31:\"wp-svg-images/wp-svg-images.php\";s:11:\"new_version\";s:3:\"3.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wp-svg-images/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/wp-svg-images.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-svg-images/assets/icon-256x256.png?rev=1483917\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-svg-images/assets/icon-128x128.png?rev=1483917\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-svg-images/assets/banner-772x250.png?rev=1483917\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1585908518:1'),
(4, 7, '_edit_lock', '1586482372:1'),
(5, 9, '_edit_lock', '1585899742:1'),
(6, 11, '_edit_lock', '1585899654:1'),
(7, 13, '_edit_lock', '1585899713:1'),
(8, 15, '_edit_lock', '1585899665:1'),
(18, 18, '_menu_item_type', 'post_type'),
(19, 18, '_menu_item_menu_item_parent', '0'),
(20, 18, '_menu_item_object_id', '15'),
(21, 18, '_menu_item_object', 'page'),
(22, 18, '_menu_item_target', ''),
(23, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 18, '_menu_item_xfn', ''),
(25, 18, '_menu_item_url', ''),
(27, 19, '_menu_item_type', 'post_type'),
(28, 19, '_menu_item_menu_item_parent', '0'),
(29, 19, '_menu_item_object_id', '11'),
(30, 19, '_menu_item_object', 'page'),
(31, 19, '_menu_item_target', ''),
(32, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(33, 19, '_menu_item_xfn', ''),
(34, 19, '_menu_item_url', ''),
(45, 21, '_menu_item_type', 'post_type'),
(46, 21, '_menu_item_menu_item_parent', '0'),
(47, 21, '_menu_item_object_id', '13'),
(48, 21, '_menu_item_object', 'page'),
(49, 21, '_menu_item_target', ''),
(50, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 21, '_menu_item_xfn', ''),
(52, 21, '_menu_item_url', ''),
(54, 22, '_menu_item_type', 'post_type'),
(55, 22, '_menu_item_menu_item_parent', '0'),
(56, 22, '_menu_item_object_id', '9'),
(57, 22, '_menu_item_object', 'page'),
(58, 22, '_menu_item_target', ''),
(59, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 22, '_menu_item_xfn', ''),
(61, 22, '_menu_item_url', ''),
(72, 24, '_menu_item_type', 'custom'),
(73, 24, '_menu_item_menu_item_parent', '0'),
(74, 24, '_menu_item_object_id', '24'),
(75, 24, '_menu_item_object', 'custom'),
(76, 24, '_menu_item_target', ''),
(77, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(78, 24, '_menu_item_xfn', ''),
(79, 24, '_menu_item_url', 'http://localhost/wordperss_ecolifesupport/'),
(86, 27, '_edit_lock', '1585648982:1'),
(87, 29, '_edit_lock', '1585648992:1'),
(88, 31, '_edit_lock', '1585649009:1'),
(89, 33, '_menu_item_type', 'custom'),
(90, 33, '_menu_item_menu_item_parent', '0'),
(91, 33, '_menu_item_object_id', '33'),
(92, 33, '_menu_item_object', 'custom'),
(93, 33, '_menu_item_target', ''),
(94, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 33, '_menu_item_xfn', ''),
(96, 33, '_menu_item_url', 'http://localhost/wordpress_ecolifesupport/'),
(98, 34, '_menu_item_type', 'post_type'),
(99, 34, '_menu_item_menu_item_parent', '0'),
(100, 34, '_menu_item_object_id', '15'),
(101, 34, '_menu_item_object', 'page'),
(102, 34, '_menu_item_target', ''),
(103, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(104, 34, '_menu_item_xfn', ''),
(105, 34, '_menu_item_url', ''),
(107, 35, '_menu_item_type', 'post_type'),
(108, 35, '_menu_item_menu_item_parent', '0'),
(109, 35, '_menu_item_object_id', '11'),
(110, 35, '_menu_item_object', 'page'),
(111, 35, '_menu_item_target', ''),
(112, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(113, 35, '_menu_item_xfn', ''),
(114, 35, '_menu_item_url', ''),
(125, 37, '_menu_item_type', 'post_type'),
(126, 37, '_menu_item_menu_item_parent', '0'),
(127, 37, '_menu_item_object_id', '27'),
(128, 37, '_menu_item_object', 'page'),
(129, 37, '_menu_item_target', ''),
(130, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(131, 37, '_menu_item_xfn', ''),
(132, 37, '_menu_item_url', ''),
(134, 38, '_menu_item_type', 'post_type'),
(135, 38, '_menu_item_menu_item_parent', '0'),
(136, 38, '_menu_item_object_id', '2'),
(137, 38, '_menu_item_object', 'page'),
(138, 38, '_menu_item_target', ''),
(139, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(140, 38, '_menu_item_xfn', ''),
(141, 38, '_menu_item_url', ''),
(142, 38, '_menu_item_orphaned', '1585649169'),
(143, 39, '_menu_item_type', 'post_type'),
(144, 39, '_menu_item_menu_item_parent', '0'),
(145, 39, '_menu_item_object_id', '31'),
(146, 39, '_menu_item_object', 'page'),
(147, 39, '_menu_item_target', ''),
(148, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(149, 39, '_menu_item_xfn', ''),
(150, 39, '_menu_item_url', ''),
(152, 40, '_menu_item_type', 'post_type'),
(153, 40, '_menu_item_menu_item_parent', '0'),
(154, 40, '_menu_item_object_id', '13'),
(155, 40, '_menu_item_object', 'page'),
(156, 40, '_menu_item_target', ''),
(157, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(158, 40, '_menu_item_xfn', ''),
(159, 40, '_menu_item_url', ''),
(161, 41, '_menu_item_type', 'post_type'),
(162, 41, '_menu_item_menu_item_parent', '0'),
(163, 41, '_menu_item_object_id', '9'),
(164, 41, '_menu_item_object', 'page'),
(165, 41, '_menu_item_target', ''),
(166, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(167, 41, '_menu_item_xfn', ''),
(168, 41, '_menu_item_url', ''),
(170, 42, '_menu_item_type', 'post_type'),
(171, 42, '_menu_item_menu_item_parent', '0'),
(172, 42, '_menu_item_object_id', '29'),
(173, 42, '_menu_item_object', 'page'),
(174, 42, '_menu_item_target', ''),
(175, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(176, 42, '_menu_item_xfn', ''),
(177, 42, '_menu_item_url', ''),
(179, 43, '_menu_item_type', 'post_type'),
(180, 43, '_menu_item_menu_item_parent', '0'),
(181, 43, '_menu_item_object_id', '7'),
(182, 43, '_menu_item_object', 'page'),
(183, 43, '_menu_item_target', ''),
(184, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(185, 43, '_menu_item_xfn', ''),
(186, 43, '_menu_item_url', ''),
(188, 3, '_wp_trash_meta_status', 'draft'),
(189, 3, '_wp_trash_meta_time', '1585899730'),
(190, 3, '_wp_desired_post_slug', 'privacy-policy'),
(191, 2, '_wp_trash_meta_status', 'publish'),
(192, 2, '_wp_trash_meta_time', '1585899738'),
(193, 2, '_wp_desired_post_slug', 'sample-page'),
(194, 46, '_wp_attached_file', 'inquiry.svg'),
(195, 46, '_wp_attachment_metadata', 'a:2:{s:5:\"width\";d:451.62;s:6:\"height\";d:368.78;}'),
(196, 15, '_thumbnail_id', '46'),
(197, 47, '_wp_attached_file', 'speech-ballon.svg'),
(198, 47, '_wp_attachment_metadata', 'a:2:{s:5:\"width\";d:451.62;s:6:\"height\";d:447.67;}'),
(199, 11, '_thumbnail_id', '47'),
(200, 48, '_wp_attached_file', 'qa.svg'),
(201, 48, '_wp_attachment_metadata', 'a:2:{s:5:\"width\";d:471;s:6:\"height\";d:282.9;}'),
(202, 13, '_thumbnail_id', '48'),
(203, 49, '_wp_attached_file', 'corresponding-area.svg'),
(204, 49, '_wp_attachment_metadata', 'a:2:{s:5:\"width\";d:451.62;s:6:\"height\";d:447.67;}'),
(205, 9, '_thumbnail_id', '49'),
(206, 50, '_wp_attached_file', 'rate-plan.svg'),
(207, 50, '_wp_attachment_metadata', 'a:2:{s:5:\"width\";d:451.62;s:6:\"height\";d:447.67;}'),
(208, 7, '_thumbnail_id', '50'),
(209, 51, '_wp_attached_file', 'service.svg'),
(210, 51, '_wp_attachment_metadata', 'a:2:{s:5:\"width\";d:615.6;s:6:\"height\";d:613.03;}'),
(211, 5, '_thumbnail_id', '51'),
(212, 54, '_menu_item_type', 'post_type'),
(213, 54, '_menu_item_menu_item_parent', '0'),
(214, 54, '_menu_item_object_id', '7'),
(215, 54, '_menu_item_object', 'page'),
(216, 54, '_menu_item_target', ''),
(217, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(218, 54, '_menu_item_xfn', ''),
(219, 54, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-03-31 10:36:45', '2020-03-31 01:36:45', '<!-- wp:paragraph -->\n<p>WordPress へようこそ。こちらは最初の投稿です。編集または削除し、コンテンツ作成を始めてください。</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-03-31 10:36:45', '2020-03-31 01:36:45', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=1', 0, 'post', '', 1),
(2, 1, '2020-03-31 10:36:45', '2020-03-31 01:36:45', '<!-- wp:paragraph -->\n<p>これはサンプルページです。同じ位置に固定され、(多くのテーマでは) サイトナビゲーションメニューに含まれる点がブログ投稿とは異なります。まずは、サイト訪問者に対して自分のことを説明する自己紹介ページを作成するのが一般的です。たとえば以下のようなものです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>はじめまして。昼間はバイク便のメッセンジャーとして働いていますが、俳優志望でもあります。これは僕のサイトです。ロサンゼルスに住み、ジャックという名前のかわいい犬を飼っています。好きなものはピニャコラーダ、そして通り雨に濡れること。</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>または、このようなものです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>XYZ 小道具株式会社は1971年の創立以来、高品質の小道具を皆様にご提供させていただいています。ゴッサム・シティに所在する当社では2,000名以上の社員が働いており、様々な形で地域のコミュニティへ貢献しています。</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>新しく WordPress ユーザーになった方は、<a href=\"http://localhost/wordpress_ecolifesupport/wp-admin/\">ダッシュボード</a>へ行ってこのページを削除し、独自のコンテンツを含む新しいページを作成してください。それでは、お楽しみください !</p>\n<!-- /wp:paragraph -->', 'サンプルページ', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-04-03 16:42:18', '2020-04-03 07:42:18', '', 0, 'http://localhost/wordpress_ecolifesupport/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-03-31 10:36:45', '2020-03-31 01:36:45', '<!-- wp:heading --><h2>私たちについて</h2><!-- /wp:heading --><!-- wp:paragraph --><p>私たちのサイトアドレスは http://localhost/wordpress_ecolifesupport です。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>このサイトが収集する個人データと収集の理由</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>コメント</h3><!-- /wp:heading --><!-- wp:paragraph --><p>訪問者がこのサイトにコメントを残す際、コメントフォームに表示されているデータ、そしてスパム検出に役立てるための IP アドレスとブラウザーユーザーエージェント文字列を収集します。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>メールアドレスから作成される匿名化された (「ハッシュ」とも呼ばれる) 文字列は、あなたが Gravatar サービスを使用中かどうか確認するため同サービスに提供されることがあります。同サービスのプライバシーポリシーは https://automattic.com/privacy/ にあります。コメントが承認されると、プロフィール画像がコメントとともに一般公開されます。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>メディア</h3><!-- /wp:heading --><!-- wp:paragraph --><p>サイトに画像をアップロードする際、位置情報 (EXIF GPS) を含む画像をアップロードするべきではありません。サイトの訪問者は、サイトから画像をダウンロードして位置データを抽出することができます。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>お問い合わせフォーム</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookie</h3><!-- /wp:heading --><!-- wp:paragraph --><p>サイトにコメントを残す際、お名前、メールアドレス、サイトを Cookie に保存することにオプトインできます。これはあなたの便宜のためであり、他のコメントを残す際に詳細情報を再入力する手間を省きます。この Cookie は1年間保持されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>ログインページを訪問すると、お使いのブラウザーが Cookie を受け入れられるかを判断するために一時 Cookie を設定します。この Cookie は個人データを含んでおらず、ブラウザーを閉じると廃棄されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>ログインの際さらに、ログイン情報と画面表示情報を保持するため、私たちはいくつかの Cookie を設定します。ログイン Cookie は2日間、画面表示オプション Cookie は1年間保持されます。「ログイン状態を保存する」を選択した場合、ログイン情報は2週間維持されます。ログアウトするとログイン Cookie は消去されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>もし投稿を編集または公開すると、さらなる Cookie がブラウザーに保存されます。この Cookie は個人データを含まず、単に変更した投稿の ID を示すものです。1日で有効期限が切れます。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>他サイトからの埋め込みコンテンツ</h3><!-- /wp:heading --><!-- wp:paragraph --><p>このサイトの投稿には埋め込みコンテンツ (動画、画像、投稿など) が含まれます。他サイトからの埋め込みコンテンツは、訪問者がそのサイトを訪れた場合とまったく同じように振る舞います。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>これらのサイトは、あなたのデータの収集、Cookie の使用、サードパーティによる追加トラッキングの埋め込み、埋め込みコンテンツとのやりとりの監視を行うことがあります。アカウントを使ってそのサイトにログイン中の場合、埋め込みコンテンツとのやりとりのトラッキングも含まれます。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>アナリティクス</h3><!-- /wp:heading --><!-- wp:heading --><h2>あなたのデータの共有先</h2><!-- /wp:heading --><!-- wp:heading --><h2>データを保存する期間</h2><!-- /wp:heading --><!-- wp:paragraph --><p>あなたがコメントを残すと、コメントとそのメタデータが無期限に保持されます。これは、モデレーションキューにコメントを保持しておく代わりに、フォローアップのコメントを自動的に認識し承認できるようにするためです。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>このサイトに登録したユーザーがいる場合、その方がユーザープロフィールページで提供した個人情報を保存します。すべてのユーザーは自分の個人情報を表示、編集、削除することができます (ただしユーザー名は変更することができません)。サイト管理者もそれらの情報を表示、編集できます。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>データに対するあなたの権利</h2><!-- /wp:heading --><!-- wp:paragraph --><p>このサイトのアカウントを持っているか、サイトにコメントを残したことがある場合、私たちが保持するあなたについての個人データ (提供したすべてのデータを含む) をエクスポートファイルとして受け取るリクエストを行うことができます。また、個人データの消去リクエストを行うこともできます。これには、管理、法律、セキュリティ目的のために保持する義務があるデータは含まれません。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>あなたのデータの送信先</h2><!-- /wp:heading --><!-- wp:paragraph --><p>訪問者によるコメントは、自動スパム検出サービスを通じて確認を行う場合があります。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>あなたの連絡先情報</h2><!-- /wp:heading --><!-- wp:heading --><h2>追加情報</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>データの保護方法</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>データ漏洩対策手順</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>データ送信元のサードパーティ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>ユーザーデータに対して行う自動的な意思決定およびプロファイリング</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>業界規制の開示要件</h3><!-- /wp:heading -->', 'プライバシーポリシー', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2020-04-03 16:42:10', '2020-04-03 07:42:10', '', 0, 'http://localhost/wordpress_ecolifesupport/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-03-31 11:43:34', '2020-03-31 02:43:34', '', 'サービス', '', 'publish', 'closed', 'closed', '', '%e3%82%b5%e3%83%bc%e3%83%93%e3%82%b9', '', '', '2020-04-03 16:46:03', '2020-04-03 07:46:03', '', 0, 'http://localhost/wordpress_ecolifesupport/?page_id=5', 0, 'page', '', 0),
(6, 1, '2020-03-31 11:43:34', '2020-03-31 02:43:34', '', 'サービス', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-03-31 11:43:34', '2020-03-31 02:43:34', '', 5, 'http://localhost/wordpress_ecolifesupport/2020/03/31/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2020-03-31 11:43:48', '2020-03-31 02:43:48', '', 'サービス料金', '', 'publish', 'closed', 'closed', '', '%e6%96%99%e9%87%91%e3%83%97%e3%83%a9%e3%83%b3', '', '', '2020-04-10 10:35:13', '2020-04-10 01:35:13', '', 0, 'http://localhost/wordpress_ecolifesupport/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-03-31 11:43:48', '2020-03-31 02:43:48', '', '料金プラン', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-03-31 11:43:48', '2020-03-31 02:43:48', '', 7, 'http://localhost/wordpress_ecolifesupport/2020/03/31/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-03-31 11:43:56', '2020-03-31 02:43:56', '', '対応エリア', '', 'publish', 'closed', 'closed', '', '%e5%af%be%e5%bf%9c%e3%82%a8%e3%83%aa%e3%82%a2', '', '', '2020-04-03 16:44:45', '2020-04-03 07:44:45', '', 0, 'http://localhost/wordpress_ecolifesupport/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-03-31 11:43:56', '2020-03-31 02:43:56', '', '対応エリア', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-03-31 11:43:56', '2020-03-31 02:43:56', '', 9, 'http://localhost/wordpress_ecolifesupport/2020/03/31/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-03-31 11:44:09', '2020-03-31 02:44:09', '', 'お客様の声', '', 'publish', 'closed', 'closed', '', '%e3%81%8a%e5%ae%a2%e6%a7%98%e3%81%ae%e5%a3%b0', '', '', '2020-04-03 16:43:22', '2020-04-03 07:43:22', '', 0, 'http://localhost/wordpress_ecolifesupport/?page_id=11', 0, 'page', '', 0),
(12, 1, '2020-03-31 11:44:09', '2020-03-31 02:44:09', '', 'お客様の声', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-03-31 11:44:09', '2020-03-31 02:44:09', '', 11, 'http://localhost/wordpress_ecolifesupport/2020/03/31/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-03-31 11:44:21', '2020-03-31 02:44:21', '', 'よくある質問', '', 'publish', 'closed', 'closed', '', '%e3%82%88%e3%81%8f%e3%81%82%e3%82%8b%e8%b3%aa%e5%95%8f', '', '', '2020-04-03 16:44:13', '2020-04-03 07:44:13', '', 0, 'http://localhost/wordpress_ecolifesupport/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-03-31 11:44:21', '2020-03-31 02:44:21', '', 'よくある質問', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-03-31 11:44:21', '2020-03-31 02:44:21', '', 13, 'http://localhost/wordpress_ecolifesupport/2020/03/31/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-03-31 11:44:33', '2020-03-31 02:44:33', '', 'お問い合わせ', '', 'publish', 'closed', 'closed', '', '%e3%81%8a%e5%95%8f%e3%81%84%e5%90%88%e3%82%8f%e3%81%9b', '', '', '2020-04-03 16:42:54', '2020-04-03 07:42:54', '', 0, 'http://localhost/wordpress_ecolifesupport/?page_id=15', 0, 'page', '', 0),
(16, 1, '2020-03-31 11:44:33', '2020-03-31 02:44:33', '', 'お問い合わせ', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-03-31 11:44:33', '2020-03-31 02:44:33', '', 15, 'http://localhost/wordpress_ecolifesupport/2020/03/31/15-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-03-31 11:45:27', '2020-03-31 02:45:27', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2020-04-10 10:35:50', '2020-04-10 01:35:50', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=18', 6, 'nav_menu_item', '', 0),
(19, 1, '2020-03-31 11:45:27', '2020-03-31 02:45:27', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2020-04-10 10:35:50', '2020-04-10 01:35:50', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=19', 4, 'nav_menu_item', '', 0),
(21, 1, '2020-03-31 11:45:27', '2020-03-31 02:45:27', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2020-04-10 10:35:50', '2020-04-10 01:35:50', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=21', 5, 'nav_menu_item', '', 0),
(22, 1, '2020-03-31 11:45:27', '2020-03-31 02:45:27', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2020-04-10 10:35:50', '2020-04-10 01:35:50', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=22', 3, 'nav_menu_item', '', 0),
(24, 1, '2020-03-31 12:59:14', '2020-03-31 03:59:14', '', 'HOME', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-04-10 10:35:50', '2020-04-10 01:35:50', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=24', 1, 'nav_menu_item', '', 0),
(27, 1, '2020-03-31 19:05:23', '2020-03-31 10:05:23', '', 'サイトマップ', '', 'publish', 'closed', 'closed', '', '%e3%82%b5%e3%82%a4%e3%83%88%e3%83%9e%e3%83%83%e3%83%97', '', '', '2020-03-31 19:05:23', '2020-03-31 10:05:23', '', 0, 'http://localhost/wordpress_ecolifesupport/?page_id=27', 0, 'page', '', 0),
(28, 1, '2020-03-31 19:05:23', '2020-03-31 10:05:23', '', 'サイトマップ', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2020-03-31 19:05:23', '2020-03-31 10:05:23', '', 27, 'http://localhost/wordpress_ecolifesupport/2020/03/31/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-03-31 19:05:34', '2020-03-31 10:05:34', '', '採用情報', '', 'publish', 'closed', 'closed', '', '%e6%8e%a1%e7%94%a8%e6%83%85%e5%a0%b1', '', '', '2020-03-31 19:05:34', '2020-03-31 10:05:34', '', 0, 'http://localhost/wordpress_ecolifesupport/?page_id=29', 0, 'page', '', 0),
(30, 1, '2020-03-31 19:05:34', '2020-03-31 10:05:34', '', '採用情報', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-03-31 19:05:34', '2020-03-31 10:05:34', '', 29, 'http://localhost/wordpress_ecolifesupport/2020/03/31/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-03-31 19:05:45', '2020-03-31 10:05:45', '', 'プライバシーポリシー', '', 'publish', 'closed', 'closed', '', '%e3%83%97%e3%83%a9%e3%82%a4%e3%83%90%e3%82%b7%e3%83%bc%e3%83%9d%e3%83%aa%e3%82%b7%e3%83%bc', '', '', '2020-03-31 19:05:45', '2020-03-31 10:05:45', '', 0, 'http://localhost/wordpress_ecolifesupport/?page_id=31', 0, 'page', '', 0),
(32, 1, '2020-03-31 19:05:45', '2020-03-31 10:05:45', '', 'プライバシーポリシー', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-03-31 19:05:45', '2020-03-31 10:05:45', '', 31, 'http://localhost/wordpress_ecolifesupport/2020/03/31/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2020-03-31 19:07:00', '2020-03-31 10:07:00', '', 'HOME', '', 'publish', 'closed', 'closed', '', '%e3%83%9b%e3%83%bc%e3%83%a0', '', '', '2020-04-10 20:18:19', '2020-04-10 11:18:19', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2020-03-31 19:07:00', '2020-03-31 10:07:00', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2020-04-10 20:18:19', '2020-04-10 11:18:19', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=34', 6, 'nav_menu_item', '', 0),
(35, 1, '2020-03-31 19:07:00', '2020-03-31 10:07:00', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2020-04-10 20:18:19', '2020-04-10 11:18:19', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=35', 4, 'nav_menu_item', '', 0),
(37, 1, '2020-03-31 19:07:00', '2020-03-31 10:07:00', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2020-04-10 20:18:19', '2020-04-10 11:18:19', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=37', 7, 'nav_menu_item', '', 0),
(38, 1, '2020-03-31 19:06:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-03-31 19:06:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2020-03-31 19:07:00', '2020-03-31 10:07:00', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2020-04-10 20:18:19', '2020-04-10 11:18:19', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=39', 9, 'nav_menu_item', '', 0),
(40, 1, '2020-03-31 19:07:00', '2020-03-31 10:07:00', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2020-04-10 20:18:19', '2020-04-10 11:18:19', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=40', 5, 'nav_menu_item', '', 0),
(41, 1, '2020-03-31 19:07:00', '2020-03-31 10:07:00', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2020-04-10 20:18:19', '2020-04-10 11:18:19', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=41', 3, 'nav_menu_item', '', 0),
(42, 1, '2020-03-31 19:07:00', '2020-03-31 10:07:00', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2020-04-10 20:18:19', '2020-04-10 11:18:19', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=42', 8, 'nav_menu_item', '', 0),
(43, 1, '2020-03-31 19:07:00', '2020-03-31 10:07:00', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2020-04-10 20:18:19', '2020-04-10 11:18:19', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=43', 2, 'nav_menu_item', '', 0),
(44, 1, '2020-04-03 16:42:10', '2020-04-03 07:42:10', '<!-- wp:heading --><h2>私たちについて</h2><!-- /wp:heading --><!-- wp:paragraph --><p>私たちのサイトアドレスは http://localhost/wordpress_ecolifesupport です。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>このサイトが収集する個人データと収集の理由</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>コメント</h3><!-- /wp:heading --><!-- wp:paragraph --><p>訪問者がこのサイトにコメントを残す際、コメントフォームに表示されているデータ、そしてスパム検出に役立てるための IP アドレスとブラウザーユーザーエージェント文字列を収集します。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>メールアドレスから作成される匿名化された (「ハッシュ」とも呼ばれる) 文字列は、あなたが Gravatar サービスを使用中かどうか確認するため同サービスに提供されることがあります。同サービスのプライバシーポリシーは https://automattic.com/privacy/ にあります。コメントが承認されると、プロフィール画像がコメントとともに一般公開されます。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>メディア</h3><!-- /wp:heading --><!-- wp:paragraph --><p>サイトに画像をアップロードする際、位置情報 (EXIF GPS) を含む画像をアップロードするべきではありません。サイトの訪問者は、サイトから画像をダウンロードして位置データを抽出することができます。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>お問い合わせフォーム</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookie</h3><!-- /wp:heading --><!-- wp:paragraph --><p>サイトにコメントを残す際、お名前、メールアドレス、サイトを Cookie に保存することにオプトインできます。これはあなたの便宜のためであり、他のコメントを残す際に詳細情報を再入力する手間を省きます。この Cookie は1年間保持されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>ログインページを訪問すると、お使いのブラウザーが Cookie を受け入れられるかを判断するために一時 Cookie を設定します。この Cookie は個人データを含んでおらず、ブラウザーを閉じると廃棄されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>ログインの際さらに、ログイン情報と画面表示情報を保持するため、私たちはいくつかの Cookie を設定します。ログイン Cookie は2日間、画面表示オプション Cookie は1年間保持されます。「ログイン状態を保存する」を選択した場合、ログイン情報は2週間維持されます。ログアウトするとログイン Cookie は消去されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>もし投稿を編集または公開すると、さらなる Cookie がブラウザーに保存されます。この Cookie は個人データを含まず、単に変更した投稿の ID を示すものです。1日で有効期限が切れます。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>他サイトからの埋め込みコンテンツ</h3><!-- /wp:heading --><!-- wp:paragraph --><p>このサイトの投稿には埋め込みコンテンツ (動画、画像、投稿など) が含まれます。他サイトからの埋め込みコンテンツは、訪問者がそのサイトを訪れた場合とまったく同じように振る舞います。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>これらのサイトは、あなたのデータの収集、Cookie の使用、サードパーティによる追加トラッキングの埋め込み、埋め込みコンテンツとのやりとりの監視を行うことがあります。アカウントを使ってそのサイトにログイン中の場合、埋め込みコンテンツとのやりとりのトラッキングも含まれます。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>アナリティクス</h3><!-- /wp:heading --><!-- wp:heading --><h2>あなたのデータの共有先</h2><!-- /wp:heading --><!-- wp:heading --><h2>データを保存する期間</h2><!-- /wp:heading --><!-- wp:paragraph --><p>あなたがコメントを残すと、コメントとそのメタデータが無期限に保持されます。これは、モデレーションキューにコメントを保持しておく代わりに、フォローアップのコメントを自動的に認識し承認できるようにするためです。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>このサイトに登録したユーザーがいる場合、その方がユーザープロフィールページで提供した個人情報を保存します。すべてのユーザーは自分の個人情報を表示、編集、削除することができます (ただしユーザー名は変更することができません)。サイト管理者もそれらの情報を表示、編集できます。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>データに対するあなたの権利</h2><!-- /wp:heading --><!-- wp:paragraph --><p>このサイトのアカウントを持っているか、サイトにコメントを残したことがある場合、私たちが保持するあなたについての個人データ (提供したすべてのデータを含む) をエクスポートファイルとして受け取るリクエストを行うことができます。また、個人データの消去リクエストを行うこともできます。これには、管理、法律、セキュリティ目的のために保持する義務があるデータは含まれません。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>あなたのデータの送信先</h2><!-- /wp:heading --><!-- wp:paragraph --><p>訪問者によるコメントは、自動スパム検出サービスを通じて確認を行う場合があります。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>あなたの連絡先情報</h2><!-- /wp:heading --><!-- wp:heading --><h2>追加情報</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>データの保護方法</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>データ漏洩対策手順</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>データ送信元のサードパーティ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>ユーザーデータに対して行う自動的な意思決定およびプロファイリング</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>業界規制の開示要件</h3><!-- /wp:heading -->', 'プライバシーポリシー', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-04-03 16:42:10', '2020-04-03 07:42:10', '', 3, 'http://localhost/wordpress_ecolifesupport/2020/04/03/3-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-04-03 16:42:18', '2020-04-03 07:42:18', '<!-- wp:paragraph -->\n<p>これはサンプルページです。同じ位置に固定され、(多くのテーマでは) サイトナビゲーションメニューに含まれる点がブログ投稿とは異なります。まずは、サイト訪問者に対して自分のことを説明する自己紹介ページを作成するのが一般的です。たとえば以下のようなものです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>はじめまして。昼間はバイク便のメッセンジャーとして働いていますが、俳優志望でもあります。これは僕のサイトです。ロサンゼルスに住み、ジャックという名前のかわいい犬を飼っています。好きなものはピニャコラーダ、そして通り雨に濡れること。</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>または、このようなものです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>XYZ 小道具株式会社は1971年の創立以来、高品質の小道具を皆様にご提供させていただいています。ゴッサム・シティに所在する当社では2,000名以上の社員が働いており、様々な形で地域のコミュニティへ貢献しています。</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>新しく WordPress ユーザーになった方は、<a href=\"http://localhost/wordpress_ecolifesupport/wp-admin/\">ダッシュボード</a>へ行ってこのページを削除し、独自のコンテンツを含む新しいページを作成してください。それでは、お楽しみください !</p>\n<!-- /wp:paragraph -->', 'サンプルページ', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-04-03 16:42:18', '2020-04-03 07:42:18', '', 2, 'http://localhost/wordpress_ecolifesupport/2020/04/03/2-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2020-04-03 16:42:48', '2020-04-03 07:42:48', '', 'inquiry', '', 'inherit', 'open', 'closed', '', 'inquiry', '', '', '2020-04-03 16:42:48', '2020-04-03 07:42:48', '', 15, 'http://localhost/wordpress_ecolifesupport/wp-content/uploads/inquiry.svg', 0, 'attachment', 'image/svg+xml', 0),
(47, 1, '2020-04-03 16:43:14', '2020-04-03 07:43:14', '', 'speech-ballon', '', 'inherit', 'open', 'closed', '', 'speech-ballon', '', '', '2020-04-03 16:43:14', '2020-04-03 07:43:14', '', 11, 'http://localhost/wordpress_ecolifesupport/wp-content/uploads/speech-ballon.svg', 0, 'attachment', 'image/svg+xml', 0),
(48, 1, '2020-04-03 16:44:09', '2020-04-03 07:44:09', '', 'qa', '', 'inherit', 'open', 'closed', '', 'qa', '', '', '2020-04-03 16:44:09', '2020-04-03 07:44:09', '', 13, 'http://localhost/wordpress_ecolifesupport/wp-content/uploads/qa.svg', 0, 'attachment', 'image/svg+xml', 0),
(49, 1, '2020-04-03 16:44:40', '2020-04-03 07:44:40', '', 'corresponding-area', '', 'inherit', 'open', 'closed', '', 'corresponding-area', '', '', '2020-04-03 16:44:40', '2020-04-03 07:44:40', '', 9, 'http://localhost/wordpress_ecolifesupport/wp-content/uploads/corresponding-area.svg', 0, 'attachment', 'image/svg+xml', 0),
(50, 1, '2020-04-03 16:45:28', '2020-04-03 07:45:28', '', 'rate-plan', '', 'inherit', 'open', 'closed', '', 'rate-plan', '', '', '2020-04-03 16:45:28', '2020-04-03 07:45:28', '', 7, 'http://localhost/wordpress_ecolifesupport/wp-content/uploads/rate-plan.svg', 0, 'attachment', 'image/svg+xml', 0),
(51, 1, '2020-04-03 16:45:46', '2020-04-03 07:45:46', '', 'service', '', 'inherit', 'open', 'closed', '', 'service', '', '', '2020-04-03 16:45:46', '2020-04-03 07:45:46', '', 5, 'http://localhost/wordpress_ecolifesupport/wp-content/uploads/service.svg', 0, 'attachment', 'image/svg+xml', 0),
(53, 1, '2020-04-10 10:35:13', '2020-04-10 01:35:13', '', 'サービス料金', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-04-10 10:35:13', '2020-04-10 01:35:13', '', 7, 'http://localhost/wordpress_ecolifesupport/2020/04/10/7-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-04-10 10:35:50', '2020-04-10 01:35:50', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2020-04-10 10:35:50', '2020-04-10 01:35:50', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=54', 2, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, '未分類', '%e6%9c%aa%e5%88%86%e9%a1%9e', 0),
(2, 'MainMenu', 'mainmenu', 0),
(3, 'FooterMenu', 'footermenu', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(18, 2, 0),
(19, 2, 0),
(21, 2, 0),
(22, 2, 0),
(24, 2, 0),
(33, 3, 0),
(34, 3, 0),
(35, 3, 0),
(37, 3, 0),
(39, 3, 0),
(40, 3, 0),
(41, 3, 0),
(42, 3, 0),
(43, 3, 0),
(54, 2, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 9);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Admin'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"2c47f26beef469e9505b35086483d2ad8bc519d39da45e5b64dc8092796a2627\";a:4:{s:10:\"expiration\";i:1586655228;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36\";s:5:\"login\";i:1586482428;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '52'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:25:\"add-post-type-custom_type\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:14:\"add-custom_cat\";i:4;s:14:\"add-custom_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '3'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1585642375');

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Admin', '$P$B/NzQRssIMoDfwdRR7fubJmJj511Ov0', 'admin', 'm.yamamoto@tomo-partners.jp', '', '2020-03-31 01:36:45', '', 0, 'Admin');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- テーブルのインデックス `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- テーブルのインデックス `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- テーブルのインデックス `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- テーブルのインデックス `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- テーブルのインデックス `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- テーブルのインデックス `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- テーブルのインデックス `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- テーブルのインデックス `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- テーブルのインデックス `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- テーブルのインデックス `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- テーブルのインデックス `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- テーブルのAUTO_INCREMENT `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- テーブルのAUTO_INCREMENT `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- テーブルのAUTO_INCREMENT `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルのAUTO_INCREMENT `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルのAUTO_INCREMENT `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- テーブルのAUTO_INCREMENT `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
