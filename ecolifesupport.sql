-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 2020 年 4 月 24 日 11:28
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
(104, 'cron', 'a:7:{i:1587728206;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1587735406;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1587778606;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587778619;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587778620;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588124689;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
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
(375, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1587727037;s:7:\"checked\";a:1:{s:15:\"ECO-LifeSupport\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(379, '_transient_health-check-site-status-result', '{\"good\":\"12\",\"recommended\":\"5\",\"critical\":\"0\"}', 'yes'),
(385, 'db_upgraded', '', 'yes'),
(387, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/ja/wordpress-5.4.zip\";s:6:\"locale\";s:2:\"ja\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/ja/wordpress-5.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1587711123;s:15:\"version_checked\";s:3:\"5.4\";s:12:\"translations\";a:0:{}}', 'no'),
(417, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1587714796;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"what-the-file/what-the-file.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/what-the-file\";s:4:\"slug\";s:13:\"what-the-file\";s:6:\"plugin\";s:31:\"what-the-file/what-the-file.php\";s:11:\"new_version\";s:5:\"1.5.4\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/what-the-file/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/what-the-file.1.5.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/what-the-file/assets/icon-256x256.png?rev=1223609\";s:2:\"1x\";s:66:\"https://ps.w.org/what-the-file/assets/icon-128x128.png?rev=1223609\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/what-the-file/assets/banner-772x250.jpg?rev=685200\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"wp-svg-images/wp-svg-images.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wp-svg-images\";s:4:\"slug\";s:13:\"wp-svg-images\";s:6:\"plugin\";s:31:\"wp-svg-images/wp-svg-images.php\";s:11:\"new_version\";s:3:\"3.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wp-svg-images/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/wp-svg-images.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-svg-images/assets/icon-256x256.png?rev=1483917\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-svg-images/assets/icon-128x128.png?rev=1483917\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-svg-images/assets/banner-772x250.png?rev=1483917\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(418, '_site_transient_timeout_php_check_78e1776a2900a8656cebe7d7ea2a07cc', '1588315927', 'no'),
(419, '_site_transient_php_check_78e1776a2900a8656cebe7d7ea2a07cc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(420, '_site_transient_timeout_browser_db66764158ad735dc8956813bb7e178d', '1588316191', 'no'),
(421, '_site_transient_browser_db66764158ad735dc8956813bb7e178d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"81.0.4044.113\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(422, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1587770234', 'no'),
(423, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:3:{i:0;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:37:\"羽田 WordPress Meetup (2020年4月)\";s:3:\"url\";s:63:\"https://www.meetup.com/Tokyo-WordPress-Meetup/events/269867838/\";s:6:\"meetup\";s:22:\"Tokyo WordPress Meetup\";s:10:\"meetup_url\";s:46:\"https://www.meetup.com/Tokyo-WordPress-Meetup/\";s:4:\"date\";s:19:\"2020-04-26 10:00:00\";s:8:\"end_date\";s:19:\"2020-04-26 17:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"online\";s:7:\"country\";s:2:\"JP\";s:8:\"latitude\";d:35.669998168945;s:9:\"longitude\";d:139.77000427246;}}i:1;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:86:\"三鷹・吉祥寺 WordPress Meetup「オンラインゆるもく会 + LT」(2020/5/2)\";s:3:\"url\";s:63:\"https://www.meetup.com/Tokyo-WordPress-Meetup/events/269867870/\";s:6:\"meetup\";s:22:\"Tokyo WordPress Meetup\";s:10:\"meetup_url\";s:46:\"https://www.meetup.com/Tokyo-WordPress-Meetup/\";s:4:\"date\";s:19:\"2020-05-02 15:00:00\";s:8:\"end_date\";s:19:\"2020-05-02 18:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"online\";s:7:\"country\";s:2:\"JP\";s:8:\"latitude\";d:35.669998168945;s:9:\"longitude\";d:139.77000427246;}}i:2;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:81:\"八王子WordPressミートアップ（旧・八王子WordPressもくもく会）\";s:3:\"url\";s:67:\"https://www.meetup.com/Tokyo-WordPress-Meetup/events/wrfjprybchbmb/\";s:6:\"meetup\";s:22:\"Tokyo WordPress Meetup\";s:10:\"meetup_url\";s:46:\"https://www.meetup.com/Tokyo-WordPress-Meetup/\";s:4:\"date\";s:19:\"2020-05-09 14:00:00\";s:8:\"end_date\";s:19:\"2020-05-09 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:15:\"Hachioji, Japan\";s:7:\"country\";s:2:\"jp\";s:8:\"latitude\";d:35.657875061035;s:9:\"longitude\";d:139.34031677246;}}}}', 'no'),
(424, 'can_compress_scripts', '1', 'no'),
(425, '_transient_timeout_feed_992efac292246ae35bf235a03417a202', '1587754597', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(426, '_transient_feed_992efac292246ae35bf235a03417a202', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"ブログ | WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://ja.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"WordPress 日本語ローカルサイトブログ\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 01 Apr 2020 10:38:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"ja\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.5-alpha-47616\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:58:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"WordPress 5.4 “アダレイ”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://ja.wordpress.org/2020/04/01/adderley/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 01 Apr 2020 10:38:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5826\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:234:\"以下は、Matt Mullenweg が書いた WordPress.org 公式ブログの記事「WordPress 5.4 “Adderley”」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせくださ [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:54:\"https://wordpress.org/news/files/2020/03/textcolor.mp4\";s:6:\"length\";s:6:\"440616\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:10499:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/matt/\">Matt Mullenweg</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/03/adderley/\">WordPress 5.4 “Adderley”</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>お待たせしました！ナット・アダレイにちなんで「アダレイ」と名付けられた最新で最高なバージョンの WordPress を<a href=\"https://ja.wordpress.org/download/\">ダウンロード</a>、または、ダッシュボードから更新いただけます。</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i0.wp.com/wordpress.org/news/files/2020/03/5-4_album-cover.png?resize=768%2C768&amp;ssl=1\" alt=\"\" /></figure>\n\n\n\n<div class=\"wp-block-cover has-background-dim\" style=\"background-color:#0400e0\"><div class=\"wp-block-cover__inner-container\">\n<p style=\"font-size:32px\" class=\"has-text-align-center\"><strong>Hello, さらなる機能と向上</strong></p>\n\n\n\n<p class=\"has-text-align-center\">ページを生き生きと見せる方法が増えました。より簡単な方法で、いまだかつてなく美しく、感じるスピードも向上します。</p>\n</div></div>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h2><strong>WordPress 5.4 へようこそ</strong></h2>\n\n\n\n<p style=\"font-size:15px\"><strong>メジャーリリースのたびにブロックエディターにさらに機能を追加。</strong></p>\n\n\n\n<p>最高の画像で、投稿やページをさらに活かす方法。 人気の Web サービスからのリッチな埋め込みメディアにより、さまざまな方法で訪問者を引き寄せ、サイトのファンにします。</p>\n\n\n\n<p>ビジョンを実現し、完璧な場所にブロックを配置するより多くの方法 — ある種類のブロックを使うのが初めてでも。さらに効率的なプロセス。</p>\n\n\n\n<p>そしてあらゆる場面でより速く。セクションやギャラリーを作成したり、文章をただ入力するだけでも作業レスポンスの向上を体感するでしょう。</p>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/03/Squares.jpg?resize=768%2C384&amp;ssl=1\" alt=\"\" /></figure>\n\n\n\n<h3>2つの新しいブロック。そしてあらゆるブロックの改善。</h3>\n\n\n\n<ul><li>2つの新ブロック「ソーシャルアイコン」と「(複数追加可能な) ボタン」を使って、早く、簡単に、インタラクティブな機能を追加できます。</li><li>色の新しい使い方。ボタンブロックとカバーブロックのグラデーション、リッチテキストブロックで初の色設定へのツールバーアクセス、グループおよびカラムブロックでの色設定。</li><li>分かりづらい操作が減りました。バージョン5.4では、マルチメディアの配置や置換のプロセス全体を各ブロックで効率化。ほぼすべてのブロックで同じように動作します。</li><li>「メディア」と「テキスト」ブロック内の画像を何か他のもの (例えばパンフレットの画像) にリンクして、そのパンフレットをドキュメントとしてダウンロードできたらいいのに、と思ったことはありませんか ? これができるようになりました。</li></ul>\n\n\n\n<figure class=\"wp-block-video\"><video controls src=\"https://wordpress.org/news/files/2020/03/textcolor.mp4\"></video></figure>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h3>クリーンな UI、明快なナビゲーション—簡単なタブ移動 !</h3>\n\n\n\n<ul><li>ブロックパンくずリストによる明快なブロックナビゲーション。そして一度いた場所へ簡単に戻れます。</li><li>キーボード操作が必要な場合のタブ移動とフォーカスを改善。加えて、ほぼすべてのブロックでのタブキーを使ったサイドバーへの移動。</li><li>エディターの読み込みが14％、入力にかかる時間が51％速くなりました！</li><li>「ヒント」はなくなりました。代わりに、必要に応じて「ウェルカムガイド」を表示できます。必要な場合のみに、何度でもです。</li><li>ブロックの「編集」モードにいるのか「移動」モードにいるのかが一瞬でわかります。視覚的に難しい場合も、スクリーンリーダーがモードを知らせます。</li></ul>\n\n\n\n<p style=\"background-color:#f8f8f9\" class=\"has-background\">ブロックエディターの最新のツールや機能を使用したければ <a href=\"https://ja.wordpress.org/plugins/gutenberg/\">Gutenberg プラグイン</a>をインストールしてください。まだ誰も使っていない新しくエキサイティングな機能を試すことができます。</p>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i0.wp.com/wordpress.org/news/files/2020/03/Rectangles-and-circles.jpg?resize=768%2C384&amp;ssl=1\" alt=\"\" /></figure>\n\n\n\n<h3>基本的な権利: プライバシー</h3>\n\n\n\n<p>5.4 は世界中のさまざまなプライバシー問題の解決を支援します。ユーザーや関係者がコンプライアンス遵守を求めてきたり、チームでのユーザーデータの取り扱いに悩む場合も、より簡単に正しい答えを導きます。</p>\n\n\n\n<p>詳細:</p>\n\n\n\n<ul><li>個人データのエクスポートに、ユーザーセッション情報と、コミュニティイベントウィジェットからのユーザーの位置データが含まれるようになりました。また、目次も追加しました。</li><li>プライバシーツールを使用してエクスポートおよび消去のリクエストを処理する際の進捗を確認してください。</li><li>さらに、プライバシーツール全体に細かな拡張を加えて見た感じをかなりスッキリさせました。</li></ul>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2020/03/Mixed.jpg?resize=768%2C384&amp;ssl=1\" alt=\"\" /></figure>\n\n\n\n<h2>開発者向け情報</h2>\n\n\n\n<h3>メニュー項目へのカスタムフィールド追加をネイティブサポート</h3>\n\n\n\n<p>新しい2つのアクションにより、メニュー項目にカスタムフィールドを追加できます—プラグインもカスタムウォーカーを書く必要もありません。</p>\n\n\n\n<p>メニュー管理画面では、メニューエディターのナビゲーションメニュー項目移動ボタンの直前で <code>wp_nav_menu_item_custom_fields</code> が発火します。</p>\n\n\n\n<p>カスタマイザー内では、メニュー項目フォームフィールドテンプレートの最後で <code>wp_nav_menu_item_custom_fields_customize_template</code> が発火します。</p>\n\n\n\n<p>コードを確認し、この新しいアクションで置換できるカスタムコードを見つけてください。重複が嫌なら WordPress のバージョンチェックを追加してください。</p>\n\n\n\n<h3>ブロック: よりシンプルなスタイル、新しい API と埋め込み</h3>\n\n\n\n<ul><li>ブロックのスタイリングが徹底的に簡単になりました。マイナス値のマージンやデフォルトのパディングはなくなりました。必要に応じて、ブロックに自由にスタイルを当てられます。さらにリファクタリングにより、4段階の冗長なラッパー div を取り除きました。</li><li>プラグインを作成すると、カテゴリーの名前空間ごとにブロックのコレクションを登録できるようになりました。これにより、ブランドの認知度を高めることができます。</li><li>ブロックバリエーションとグラデーションの2つの新しい API を使用して、ユーザーがさらに多くのことを行えるようにしましょう。</li><li>埋め込みでは、ブロックエディターが TikTok をサポートするようになり、CollegeHumor はなくなりました。</li></ul>\n\n\n\n<p style=\"background-color:#f8f8f9\" class=\"has-background\">開発者が気に入る変更点が WordPress 5.4 にはまだ沢山あります。サイトやテーマ、プラグインなどでこれらの変更をさらに発見する方法を学ぶには、 <a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 フィールドガイド</a>を確認してください。</p>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h2>The Squad</h2>\n\n\n\n<p>（訳注: このセクションの内容は<a href=\"https://wordpress.org/news/2020/03/adderley/\">元記事</a>を参照してください）</p>\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p><a href=\"https://ja.wordpress.org/support/\">サポートフォーラム</a>に貢献されているコミュニティボランティアの皆さんに感謝します。彼らは WordPress を初めて使う人であれ、最初のリリースから使っている人であれ、世界中の人々からの質問に答えてくれています。リリースは、その努力のおかげで成功をおさめています。</p>\n\n\n\n<p>最後に、WordPress 5.4 に取り組んでくれたコミュニティ翻訳者の皆さんに感謝します。彼らの努力により、リリース時に WordPress は、46言語に完全翻訳され、さらに多くの言語に翻訳されるでしょう。</p>\n\n\n\n<p>WordPress のボランティア活動について詳しく知りたい方は、<a href=\"https://make.wordpress.org/\">Make WordPress</a> や<a href=\"https://make.wordpress.org/core/\">コア開発ブログ</a>をチェックしてみてください。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.4 RC5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://ja.wordpress.org/2020/03/29/wordpress-5-4-rc5/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 29 Mar 2020 12:45:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5824\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:234:\"以下は、David Baumwald が書いた WordPress.org 公式ブログの記事「WordPress 5.4 RC5」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせください。 Word [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2889:\"<p>以下は、<a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-rc5/\">WordPress 5.4 RC5</a>」を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n<hr>\n<p>WordPress 5.4 の5つ目のリリース候補がご利用いただけるようになりました。</p>\n<p>WordPress 5.4 は、<strong><a href=\"https://make.wordpress.org/core/5-4/\">2020年3月31日</a></strong>に公開が予定されていますが、そのためには皆様からの助けが必要です。まだ 5.4 を試していないなら今がその時です！</p>\n<p>WordPress 5.4 リリース候補は、次の2通りの方法でテストすることができます。</p>\n<ul>\n<li><a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインを使う（「最新版ナイトリービルド」を選択）。</li>\n<li><a href=\"https://wordpress.org/wordpress-5.4-RC5.zip\">リリース候補の zip ファイルをダウンロード</a>する。</li>\n</ul>\n<p>WordPress 5.4 の詳細については、<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\">最初のリリース候補の投稿</a>を参照してください。</p>\n<h2>プラグイン・テーマ開発者の方へ</h2>\n<p>WordPress 5.4 でプラグインやテーマのテストを行い、readme の <em>Tested up to</em> バージョンを 5.4 に更新してください。テストで優先すべきは互換性です。もしも問題を見つけた場合は、最終リリース前に解決できるよう必ず<a href=\"https://wordpress.org/support/forum/alphabeta/\">サポートフォーラム</a>に投稿してください。</p>\n<p><a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 フィールドガイド</a>が公開されています！主要変更点の詳細についてはこちらを参照してください。</p>\n<h2>リリースに協力する</h2>\n<p>英語以外の言語が話せますか？ <a href=\"https://translate.wordpress.org/projects/wp/dev\">WordPress の100言語を超す翻訳にご協力ください</a>！</p>\n<p><strong>バグを見つけた場合</strong>は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta\">アルファ・ベータエリア</a>に投稿してください。情報をお待ちしています！再現可能なバグのレポートが書ける方は <a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac に報告</a>してください。こちらでは<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ</a>を確認できます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.4 RC4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://ja.wordpress.org/2020/03/25/wordpress-5-4-rc4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Mar 2020 12:56:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5821\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:234:\"以下は、Francesca Marano が書いた WordPress.org 公式ブログの記事「WordPress 5.4 RC4」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせください。 Wo [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3149:\"<p>以下は、<a href=\"https://profiles.wordpress.org/francina/\">Francesca Marano</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-rc4/\">WordPress 5.4 RC4</a>」を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n<hr>\n<p>WordPress 5.4 の4つ目のリリース候補がご利用いただけるようになりました。</p>\n<p>WordPress 5.4 は、<strong><a href=\"https://make.wordpress.org/core/5-4/\">2020年3月31日</a></strong>に公開が予定されていますが、そのためには皆様からの助けが必要です。まだ 5.4 を試していないなら今がその時です！</p>\n<p>WordPress 5.4 リリース候補は、次の2通りの方法でテストすることができます。</p>\n<ul>\n<li><a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインを使う（「最新版ナイトリービルド」を選択）。</li>\n<li><a href=\"https://wordpress.org/wordpress-5.4-RC4.zip\">リリース候補の zip ファイルをダウンロード</a>する。</li>\n</ul>\n<p>WordPress 5.4 の詳細については、<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\">最初のリリース候補の投稿</a>を参照してください。</p>\n<p>RC4 では、新しい<a href=\"https://core.trac.wordpress.org/ticket/49295\">「WordPress について」ページ</a>をコミットし、<a href=\"https://core.trac.wordpress.org/ticket/49688\">エディターパッケージを更新</a>しています。</p>\n<h2>プラグイン・テーマ開発者の方へ</h2>\n<p>WordPress 5.4 でプラグインやテーマのテストを行い、readme の <em>Tested up to</em> バージョンを 5.4 に更新してください。テストで優先すべきは互換性です。もしも問題を見つけた場合は、最終リリース前に解決できるよう必ず<a href=\"https://wordpress.org/support/forum/alphabeta/\">サポートフォーラム</a>に投稿してください。</p>\n<p><a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 フィールドガイド</a>が公開されています！主要変更点の詳細についてはこちらを参照してください。</p>\n<h2>リリースに協力する</h2>\n<p>英語以外の言語が話せますか？ <a href=\"https://translate.wordpress.org/projects/wp/dev\">WordPress の100言語を超す翻訳にご協力ください</a>！</p>\n<p><strong>バグを見つけた場合</strong>は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta\">アルファ・ベータエリア</a>に投稿してください。情報をお待ちしています！再現可能なバグのレポートが書ける方は <a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac に報告</a>してください。こちらでは<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ</a>を確認できます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.4 RC3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://ja.wordpress.org/2020/03/20/wordpress-5-4-rc3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Mar 2020 12:47:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5818\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:234:\"以下は、David Baumwald が書いた WordPress.org 公式ブログの記事「WordPress 5.4 RC3」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせください。 Word [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4832:\"<p>以下は、<a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-rc3/\">WordPress 5.4 RC3</a>」を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n<hr>\n<p>WordPress 5.4 の3つ目のリリース候補がご利用いただけるようになりました。</p>\n<p>WordPress 5.4 は、<strong><a href=\"https://make.wordpress.org/core/5-4/\">2020年3月31日</a></strong>に公開が予定されていますが、そのためには皆様からの助けが必要です。まだ 5.4 を試していないなら今がその時です!</p>\n<p>WordPress 5.4 リリース候補をテストするには、次の2通りの方法があります。</p>\n<ul>\n<li><a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインを使う（「最新版ナイトリービルド」を選択）。</li>\n<li><a href=\"https://wordpress.org/wordpress-5.4-RC3.zip\">リリース候補の zip ファイルをダウンロード</a>する。</li>\n</ul>\n<p>WordPress 5.4 の詳細については、<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\">最初のリリース候補の投稿</a>を参照してください。</p>\n<p>RC3 では、新しい「WordPress について」ページの改善と、次のバグとリグレッションについて<a href=\"https://core.trac.wordpress.org/query?id=49657%2C49621%2C48164%2C49577%2C47053%2C48303%2C49374%2C49619&amp;milestone=5.4&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">8つの修正</a>を行いました。</p>\n<ul>\n<li><a href=\"https://core.trac.wordpress.org/ticket/49657\">49657 – ブロックエディター: WordPress パッケージの更新 WordPress 5.4 RC 3</a></li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/49621\">49621 – Travis: E2E テストの場合のみ Chromium をダウンロード</a></li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/48164\">48164 – media_sideload_image では元の URL を保存してオプションで重複をチェックするべき</a></li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/49577\">49577 – サイトヘルスステータスダッシュボードが初期読み込み時に誤ったアイテム数を表示する</a></li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/47053\">47053 – アクセシビリティ: 「ツールバーへスキップ」の HTML には適切な tabindex を設定する必要がある</a></li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/48303\">48303 – 5.4 向け Docblock 改善</a></li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/49374\">49374 – get_post_states を利用して追加されたメニュー項目のアコーディオンで特別なページを表示</a></li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/49619\">49619 – 「自由について」ページでマージンの代わりに &lt;hr /&gt; を使用する</a></li>\n</ul>\n<p>（訳注: 上記はチケット番号とそのタイトルの訳です。実際の修正内容については個々のチケットを参照してください。）</p>\n<h2>プラグイン・テーマ開発者の方へ</h2>\n<p>WordPress 5.4 であなたのプラグインやテーマのテストを行い、readme の <em>Tested up to</em> バージョンを 5.4 に更新してください。もしも互換性の問題が見つかった場合は、最終リリース前に問題解決できるよう必ず<a href=\"https://wordpress.org/support/forum/alphabeta/\">サポートフォーラム</a>に投稿してください。</p>\n<p>主な変更点が詳しく説明されている <a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 フィールドガイド</a>が公開されています。</p>\n<h2>リリースに協力する</h2>\n<p>英語以外の言語が話せますか？ <a href=\"https://translate.wordpress.org/projects/wp/dev\">WordPress の100言語を超す翻訳にご協力ください</a>！</p>\n<p><strong>バグを見つけた場合</strong>は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta\">アルファ・ベータエリア</a>に投稿してください。情報をお待ちしています！再現可能なバグのレポートが書ける方は <a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac に報告</a>してください。こちらでは<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ</a>を確認できます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.4 RC2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://ja.wordpress.org/2020/03/14/wordpress-5-4-rc2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 14 Mar 2020 07:38:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5815\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:234:\"以下は、Francesca Marano が書いた WordPress.org 公式ブログの記事「WordPress 5.4 RC2」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせください。 Wo [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4128:\"<p>以下は、<a href=\"https://profiles.wordpress.org/francina/\">Francesca Marano</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-rc2/\">WordPress 5.4 RC2</a>」を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n<hr>\n<p>WordPress 5.4 の2つ目のリリース候補がご利用いただけるようになりました。</p>\n<p>WordPress 5.4 は、<strong><a href=\"https://make.wordpress.org/core/5-4/\">2020年3月31日</a></strong>に公開が予定されていますが、そのためには皆様からの助けが必要です。まだ 5.4 を試していないなら今がその時です!</p>\n<p>WordPress 5.4 リリース候補をテストするには、次の2通りの方法があります。</p>\n<ul>\n<li><a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインを使う（「最新版ナイトリービルド」を選択）。</li>\n<li><a href=\"https://wordpress.org/wordpress-5.4-RC2.zip\">リリース候補の zip ファイルをダウンロード</a>する。</li>\n</ul>\n<p>WordPress 5.4 の詳細については、<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\">最初のリリース候補の投稿</a>を参照してください。</p>\n<p>RC2 では、新しい「WordPress について」ページの改善と、次のバグとリグレッションについて<a href=\"https://core.trac.wordpress.org/query?id=49611%2C49318%2C49295%2C49585%2C49568%2C49549&amp;milestone=5.4&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">5つの修正</a>を行いました。</p>\n<ul>\n<li><a href=\"https://core.trac.wordpress.org/ticket/49611\">49611</a> – ブロックエディター: WordPress パッケージの更新 WordPress 5.4 RC 2</li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/49318\">49318</a> – 同梱テーマ: Twenty Twenty コンテンツフォントの CSS セレクターの重要度が高すぎる問題</li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/49585\">49585</a> – REST API: disable-custom-gradients のテーマ機能説明の誤字修正</li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/49568\">49568</a> – ブロックエディター: エディターカラーピッカーの視覚的リグレッションの修正</li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/49549\">49549</a> – 同梱テーマ: 同梱テーマにおけるカレンダーウィジェットの CSS 修正</li>\n</ul>\n<h2>プラグイン・テーマ開発者の方へ</h2>\n<p>WordPress 5.4 であなたのプラグインやテーマのテストを行い、readme の Tested up to バージョンを 5.4 に更新してください。もしも互換性の問題が見つかった場合は、最終リリース前に問題解決できるよう必ず<a href=\"https://wordpress.org/support/forum/alphabeta/\">サポートフォーラム</a>に投稿してください。</p>\n<p>主な変更点が詳しく説明されている <a href=\"https://make.wordpress.org/core/2020/03/03/wordpress-5-4-field-guide/\">WordPress 5.4 フィールドガイド</a>が公開されています。</p>\n<h2>リリースに協力する</h2>\n<p>英語以外の言語が話せますか？ <a href=\"https://translate.wordpress.org/projects/wp/dev\">WordPress の100言語を超す翻訳にご協力ください</a>！</p>\n<p><strong>バグを見つけた場合</strong>は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta\">アルファ・ベータエリア</a>に投稿してください。情報をお待ちしています！再現可能なバグのレポートが書ける方は <a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac に報告</a>してください。こちらでは<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ</a>を確認できます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"WordPress 5.4 リリース候補\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://ja.wordpress.org/2020/03/07/wordpress-5-4-release-candidate/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 06 Mar 2020 16:15:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5813\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:216:\"以下は、David Baumwald が書いた WordPress.org 公式ブログの記事「WordPress 5.4 Release Candidate」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまで [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3675:\"<p>以下は、<a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/03/wordpress-5-4-release-candidate/\">WordPress 5.4 Release Candidate</a>」を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n<hr>\n<p>WordPress 5.4 の最初のリリース候補がご利用いただけるようになりました。</p>\n<p>これは WordPress 5.4 公開日へと向かう重要なマイルストーンです。「リリース候補」とは、この新しいバージョンは公開可能なレベルではあるが多くのユーザーや様々なプラグイン・テーマで使うには何らかの見落としがあるかもしれない、といった意味合いのものとなります。WordPress 5.4 は、<strong>2020年3月31日</strong>に公開が予定されていますが、そのためには皆様からの助けが必要です。まだ 5.4 を試していないなら<strong>今がその時です</strong>!</p>\n<p>WordPress 5.4 リリース候補をテストするには、次の2通りの方法があります。</p>\n<ul>\n<li><a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインを使う（「最新版ナイトリービルド」を選択）。</li>\n<li><a href=\"https://wordpress.org/wordpress-5.4-RC1.zip\">リリース候補の zip ファイルをダウンロード</a>する。</li>\n</ul>\n<h2>WordPress 5.4 の詳細</h2>\n<p>WordPress 5.4 には、開発体験向上のための多くの改良が加えられています。最新情報を知るには <a href=\"https://make.wordpress.org/core/\">Make WordPress Core ブログ</a>を購読して、あなたのプロダクトに影響を与える可能性のある変更がないか、<a href=\"https://make.wordpress.org/core/tag/5-4+dev-notes/\">デベロッパーノート</a>のタグを注意深く確認してください。</p>\n<h2>プラグイン・テーマ開発者の方へ</h2>\n<p>WordPress 5.4 であなたのプラグインやテーマのテストを行い、readme ファイルの Tested up to バージョンを 5.4 に更新してください。もしも互換性の問題が見つかった場合は、最終リリース前に問題解決できるよう必ず<a href=\"https://wordpress.org/support/forum/alphabeta/\">サポートフォーラム</a>に投稿してください。</p>\n<p>主要変更点のより詳しい情報が載っている WordPress 5.4 フィールドガイドが24時間以内に公開される予定です。</p>\n<h2>リリースに協力する</h2>\n<p>英語以外の言語が話せますか？ <a href=\"https://translate.wordpress.org/projects/wp/dev\">WordPress の100言語を超す翻訳にご協力ください</a>！このリリースは 5.4 リリーススケジュールにおける<a href=\"https://make.wordpress.org/polyglots/handbook/glossary/#hard-freeze\">翻訳語句のハードフリーズ（凍結）</a>ポイントとなります。</p>\n<p><strong>バグを見つけた場合</strong>は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta\">アルファ・ベータエリア</a>に投稿してください。情報をお待ちしています！再現可能なバグのレポートが書ける方は <a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac に報告</a>してください。こちらでは<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ</a>を確認できます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"WordPress 5.4 ベータ 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ja.wordpress.org/2020/02/26/wordpress-5-4-beta-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 26 Feb 2020 12:15:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5810\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:234:\"以下は、David Baumwald が書いた WordPress.org 公式ブログの記事「WordPress 5.4 Beta 3」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせください。 W [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3733:\"<p>以下は、<a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/02/wordpress-5-4-beta-3/\">WordPress 5.4 Beta 3</a>」を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n<hr>\n<p>WordPress 5.4 ベータ 3 がご利用いただけるようになりました。</p>\n<p><strong>このソフトウェアはまだ開発中</strong>ですので、実運用中のサイトでの使用はおすすめしません。テストサイトを立ち上げてこの新しいバージョンを試すことを検討してください。</p>\n<p>WordPress 5.4 ベータ版をテストする方法は次の二通りです:</p>\n<ul>\n<li><a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインを使う（「最新版ナイトリービルド」または「Beta/RC – Bleeding edge」オプションをプラグインバージョン 2.2.0 以上で選択）。*「Beta/RC – Bleeding edge」オプションを利用するには、サイトを「最新版ナイトリービルド」に更新する必要があります。</li>\n<li><a href=\"https://wordpress.org/wordpress-5.4-beta3.zip\">ベータ版の zip ファイル</a>をダウンロードする。</li>\n</ul>\n<p>WordPress 5.4 の正式リリースは、<a href=\"https://make.wordpress.org/core/5-4/\">2020年3月31日</a>を予定していますが、そこに至るには皆様の助けが必要です。</p>\n<p>先週<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=02%2F18%2F2020..02%2F25%2F2020&amp;milestone=5.4&amp;col=id&amp;col=summary&amp;col=status&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=priority&amp;order=priority\">閉じられた24件のチケット</a>について、<a href=\"https://wordpress.org/news/2020/02/wordpress-5-4-beta-2/\">ベータ 2</a>（と<a href=\"https://wordpress.org/news/2020/02/wordpress-5-4-beta-1/\">ベータ 1</a>）をテストしてくださった方々のテストとフィードバックに感謝します。</p>\n<h2>いくつかのハイライト</h2>\n<ul>\n<li><a href=\"https://github.com/WordPress/gutenberg/pull/20424\">グーテンベルク修正のまとめ</a></li>\n<li><a href=\"https://core.trac.wordpress.org/ticket/47606\">サイトヘルススコアのダッシュボード表示</a></li>\n</ul>\n<h2>開発者向け情報</h2>\n<p>WordPress 5.4 には、開発体験向上のための多くの改良が加えられています。最新情報を知るには <a href=\"https://make.wordpress.org/core/\">Make WordPress Core ブログ</a>を購読して、あなたのプロダクトに影響を与える可能性のある変更がないか、<a href=\"https://make.wordpress.org/core/tag/5-4+dev-notes/\">デベロッパーノート</a>のタグを注意深く確認してください。</p>\n<h2>リリースに協力する</h2>\n<p>英語以外の言語が話せますか？ <a href=\"https://translate.wordpress.org/projects/wp/dev/\">WordPress の100言語を超す翻訳にご協力ください</a>！</p>\n<p>バグを見つけた場合は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta/\">アルファ・ベータエリア</a>に投稿してください。情報をお待ちしています！再現可能なバグのレポートが書ける方は <a href=\"https://core.trac.wordpress.org/newticket\">WordPress Trac に報告</a>してください。こちらでは<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ</a>を確認できます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"WordPress 5.4 ベータ 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ja.wordpress.org/2020/02/21/wordpress-5-4-beta-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 21 Feb 2020 08:18:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5807\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:234:\"以下は、Francesca Marano が書いた WordPress.org 公式ブログの記事「WordPress 5.4 Beta 2」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせください。 [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4549:\"<p>以下は、<a href=\"https://profiles.wordpress.org/francina/\">Francesca Marano</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/02/wordpress-5-4-beta-2/\">WordPress 5.4 Beta 2</a>」を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n<hr>\n<p>WordPress 5.4 ベータ 2 がご利用いただけるようになりました。</p>\n<p><strong>このソフトウェアはまだ開発中</strong>ですので、実運用中のサイトでの使用はおすすめしません。テストサイトを立ち上げてこの新しいバージョンを試すことを検討してください。</p>\n<p>WordPress 5.4 ベータ 2 をテストする方法は次の二通りです:</p>\n<ul>\n<li><a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインを使う（「最新版ナイトリービルド」を選択）。</li>\n<li><a href=\"https://wordpress.org/wordpress-5.4-beta2.zip\">ベータ版の zip ファイル</a>をダウンロードする。</li>\n</ul>\n<p>WordPress 5.4 の正式リリースは、<a href=\"https://make.wordpress.org/core/5-4/\">2020年3月31日</a>を予定していますが、そこに至るには<strong>皆様の助けが必要です</strong>！</p>\n<p><a href=\"https://wordpress.org/news/2020/02/wordpress-5-4-beta-1/\">ベータ 1</a> 開発版をテストし、フィードバックを提供してくれたすべての貢献者に感謝します。ベータ段階でバグがないかテストを行うことは、リリースの完成度を高める重要な部分であり WordPress に貢献する素晴らしい方法です。</p>\n<h2 id=\"いくつかのハイライト\">いくつかのハイライト</h2>\n<p><a href=\"https://wordpress.org/news/2020/02/wordpress-5-4-beta-1/\">ベータ 1</a> 以降、<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=02%2F12%2F2020..&amp;milestone=5.4&amp;group=component&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">27個</a>のバグが修正されました。以下は、ベータ 2 に含まれるいくつかの変更の概要です。</p>\n<ul>\n<li>ブロックエディター: 幅が割り当てられていないブロックライブラリのカラムは、均等に伸長します。</li>\n<li>ブロックエディター: カスタムグラデーションピッカーが英語以外の言語でも動作するようになりました。</li>\n<li>ブロックエディター: 色を選択できない場合、カラーフォーマッターは表示されなくなりました。</li>\n<li>プライバシー: プライバシーリクエストフォームのフィールドが、モバイルでより一貫性を持つように調整されました。</li>\n<li>プライバシー: プライバシーポリシーページ編集のヘルプ通知は、管理画面のすべてのページ上部で表示されなくなりました。</li>\n<li>サイトヘルス: 失敗した REST API テストのエラーコードが正しく表示されるようになりました。</li>\n</ul>\n<h2 id=\"開発者向け情報\">開発者向け情報</h2>\n<p>WordPress 5.4 には、開発体験向上のための多くの改良が加えられています。最新情報を知るには <a href=\"https://make.wordpress.org/core/\">Make WordPress Core ブログ</a>を購読して、あなたのプロダクトに影響を与える可能性のある変更がないか、<a href=\"https://make.wordpress.org/core/tag/5-4+dev-notes/\">デベロッパーノート</a>を注意深く確認してください。</p>\n<h2 id=\"リリースに協力する\">リリースに協力する</h2>\n<p>英語以外の言語が話せますか？ <a href=\"https://translate.wordpress.org/projects/wp/dev/\">WordPress の100言語を超す翻訳にご協力ください</a>！</p>\n<p>バグを見つけた場合は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta/\">アルファ・ベータエリア</a>に投稿してください。情報をお待ちしています！</p>\n<p>再現可能なバグのレポートが書ける方は <a href=\"https://core.trac.wordpress.org/newticket\">WordPress Trac に報告</a>してください。こちらでは<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ</a>を確認できます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"WordPress 5.4 ベータ 1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ja.wordpress.org/2020/02/19/wordpress-5-4-beta-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 19 Feb 2020 12:12:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5804\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:234:\"以下は、Francesca Marano が書いた WordPress.org 公式ブログの記事、「WordPress 5.4 Beta 1」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせください [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Seisuke Kuraishi (tenpura)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9680:\"<p>以下は、<a href=\"https://profiles.wordpress.org/francina/\">Francesca Marano</a> が書いた WordPress.org 公式ブログの記事、「<a href=\"https://wordpress.org/news/2020/02/wordpress-5-4-beta-1/\">WordPress 5.4 Beta 1</a>」を訳したものです。</p>\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n<hr>\n<p>WordPress 5.4 ベータ 1 がご利用いただけるようになりました。</p>\n<p><strong>このソフトウェアはまだ開発中</strong>ですので、実運用中のサイトでの使用はおすすめしません。テストサイトを立ち上げて新しいバージョンを試すことを検討してください。</p>\n<p>WordPress 5.4 ベータ版をテストする方法は次の二通りです:</p>\n<ul>\n<li><a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインを使う（「最新版ナイトリービルド」を選択）。</li>\n<li><a href=\"https://wordpress.org/wordpress-5.4-beta1.zip\">ベータ版の zip ファイル</a>をダウンロードする。</li>\n</ul>\n<p>WordPress 5.4 の正式リリースは、<a href=\"https://make.wordpress.org/core/5-4/\">2020年3月31日</a>を予定していますが、そこに至るには<strong>皆様の助けが必要です</strong>！</p>\n<p><strong>2020年の主な目標はブロックを使用したフルサイト編集</strong>ですが、WordPress の貢献者達はソフトウェアが前進し続けるようプロジェクトの様々な分野に取り組んでいます。</p>\n<p>ベータ段階でバグがないかテストを行うことは、リリースの完成度を高める重要な部分であり WordPress に貢献する素晴らしい方法です。テストに際し注意を払うべき大きな変更点と機能を以下に示します。</p>\n<h2>ブロックエディター: 新機能と改善点</h2>\n<p>WordPress 5.4 のコアには Gutenberg プラグイン10回分のリリースがマージされます。これは、たくさんのエキサイティングな新機能があることを意味します。次にそのほんの一部を紹介します。</p>\n<ul>\n<li>2つの新ブロック: ソーシャルリンクとボタン</li>\n<li>ボタン、カバー、グループ、カラムのブロックへの色オプション追加</li>\n<li>ウェルカムガイドモーダル</li>\n<li>最新の記事ブロックにアイキャッチ画像を追加するためのツール</li>\n<li>より簡単なパンくずリストブロックのナビゲーション</li>\n</ul>\n<p>いくつかの変更点:</p>\n<ul>\n<li>モバイルではツールバーが上に留まるため見失うことはありません。</li>\n<li>ギャラリーブロックでの画像サイズ変更が簡単に。</li>\n<li>アイキャッチ画像ボックスへの画像のドラッグアンドドロップ</li>\n<li>いくつかの新しい API</li>\n<li>REST API リクエストが失敗した際のわかりやすいオフラインエラーメッセージ</li>\n<li>テーブルブロックのキャプション</li>\n<li>リッチテキストブロックでテキストの一部だけに色を付けることが可能に。</li>\n</ul>\n<h3>アクセシビリティの改善点</h3>\n<ul>\n<li>複数ブロックの選択が簡単に。</li>\n<li>画像ブロック内での画像タイトル属性の変更サポート</li>\n<li>より簡単なタブ移動。これはエディター最大のアクセシビリティの問題でしたが、ブロックのサイドバーでタブ移動ができるようになりました。</li>\n<li>編集モードとナビゲーションモードの視覚的切り替え、スクリーンリーダーのアナウンスの有効化</li>\n</ul>\n<p>各リリースのすべての機能の詳細についてはリリースの投稿をご覧ください: <a href=\"https://make.wordpress.org/core/2019/10/02/whats-new-in-gutenberg-2-october/\">6.6</a>、<a href=\"https://make.wordpress.org/core/2019/10/16/whats-new-in-gutenberg-16-october/\">6.7</a>、<a href=\"https://make.wordpress.org/core/2019/10/30/whats-new-in-gutenberg-30-october/\">6.8</a>、<a href=\"https://make.wordpress.org/core/2019/11/13/whats-new-in-gutenberg-13-november/\">6.9</a>、<a href=\"https://make.wordpress.org/core/2019/11/27/whats-new-in-gutenberg-27-november/\">7.0</a>、<a href=\"https://make.wordpress.org/core/2019/12/11/whats-new-in-gutenberg-11-december/\">7.1</a>、<a href=\"https://make.wordpress.org/core/2020/01/09/whats-new-in-gutenberg-8-january/\">7.2</a>、<a href=\"https://make.wordpress.org/core/2020/01/22/whats-new-in-gutenberg-22-january/\">7.3</a>、<a href=\"https://make.wordpress.org/core/2020/02/05/whats-new-in-gutenberg-5-february/\">7.4</a>、7.5</p>\n<h3>パフォーマンス向上への継続的な取り組み</h3>\n<p>ブロックエディターチームは WordPress 5.3 以降、特にサイズの大きい投稿（〜36,000語、〜1,000ブロック）において、読み込み時間を14%、入力時間を51%短縮することに成功しました。</p>\n<h2>その他</h2>\n<h3>サイトヘルス</h3>\n<p>WordPress プロジェクトが世界のウェブサイトの34％を支えている以上、セキュリティにも注視しなくてはなりません。これが貢献者達がサイトヘルスプロジェクトに熱心に取り組んでいる理由となっています。</p>\n<p>WordPress 5.4 では、サイトのパフォーマンスやセキュリティに影響を与える可能性のある潜在的な問題について管理者に警告するウィジェットがダッシュ​​ボードに追加されます。行動を促すボタンをクリックすると、サイトヘルス画面に移動して詳細と修正案を確認できます。</p>\n<h3>アクセシビリティの改善点</h3>\n<p>WordPress はリリースごとにアクセシビリティの向上に努めていますが、このリリースも例外ではありません。バージョン 5.4 には、次のアクセシビリティ強化が含まれています。</p>\n<ul>\n<li>メニュー、カスタマイザー、サイトヘルス画面でのフォーカス管理を改善し、キーボードナビゲーションの既知の問題を修正。</li>\n<li>メディアモーダルのセマンティクス向上のためキーボードナビゲーションを簡易化。</li>\n<li>分かりやすいプライバシーポリシーガイド</li>\n</ul>\n<h2>開発者向け情報</h2>\n<p>5.4 には、開発者向けの変更も数多く含まれています。</p>\n<h3>カレンダーウィジェット</h3>\n<p>HTML 5.1 の仕様では <code>&lt;tfoot&gt;</code> タグは <code>&lt;tbody&gt;</code> タグの後に続く必要があります（カレンダーウィジェットではそのようになっていなかった）。 WordPress 5.4 では valid な HTML を生成するためにナビゲーションリンクを <code>&lt;table&gt;</code> 要素の直後に続く <code>&lt;nav&gt;</code> 要素に移動します。</p>\n<h3>apply_shortcodes() を do_shortcode() のエイリアスに</h3>\n<p><code>do_shortcode()</code> の代わりに <code>apply_shortcodes()</code> を使用してください。 <code>do_shortcode()</code> は非推奨にはなりませんが、新しい関数はより良いセマンティクスを提供します。</p>\n<h3>favicon の取り扱いを改善</h3>\n<p>favicon のリクエストをより柔軟に管理できるようになりました。管理者は、カスタマイザーで favicon を選択、または、<code>favicon.ico</code> ファイルをアップロードできます。 フォールバックとして WordPress ロゴが常に読み込まれます。</p>\n<h3>開発者向けのその他の変更点</h3>\n<ul>\n<li><code>wp_login_failed</code> でのエラー情報の明確化</li>\n<li>マルチサイトインストール用の <code>newblog_notify_siteadmin</code> フィルターにサイト ID が追加されました。</li>\n<li>テーマで要件となる WordPress と PHP バージョンのヘッダーのサポートが追加されました。</li>\n<li>TikTok の埋め込みサポートが追加されました。</li>\n</ul>\n<p><a href=\"https://make.wordpress.org/core/tag/5-4+dev-notes/\">5.4 関連のデベロッパーノート</a>については、今後数週間の <a href=\"https://make.wordpress.org/core/\">Make WordPress Core ブログ</a>をご覧ください。変更点についてより詳細に説明しています。</p>\n<p>WordPress 5.4 では、貢献者達の手によってこれまでに<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=5.4&amp;group=component&amp;max=500&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">255個以上のチケット</a>が修正されました。</p>\n<h2>リリースに協力する</h2>\n<p>英語以外の言語が話せますか？ <a href=\"https://translate.wordpress.org/projects/wp/dev/\">WordPress の100言語を超す翻訳にご協力ください</a>！</p>\n<p>バグを見つけた場合は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta/\">アルファ・ベータエリア</a>に投稿してください。情報をお待ちしています！再現可能なバグのレポートが書ける方は <a href=\"https://core.trac.wordpress.org/newticket\">WordPress Trac に報告</a>してください。こちらでは<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ</a>を確認できます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"State of the Word: Gutenberg ベースのプレゼンスライド\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://ja.wordpress.org/2019/12/20/state-of-the-word-the-story-of-the-slides/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Dec 2019 14:05:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"General\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5784\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:164:\"以下は、Ella van Durpe が書いた WordPress.org 公式ブログの記事、「State of the Word: the story of the slides」を @mimitips、@nao、@n [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Akira Tachibana\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:12192:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/ellatrix/\">Ella van Durpe</a> が書いた WordPress.org 公式ブログの記事、「<a href=\"https://wordpress.org/news/2019/12/state-of-the-word-the-story-of-the-slides/\">State of the Word: the story of the slides</a>」を <a href=\"https://wordpress.org/support/users/mimitips/\">@mimitips</a>、<a href=\"https://wordpress.org/support/users/nao/\">@nao</a>、<a href=\"https://wordpress.org/support/users/nukaga/\">@nukaga</a>、<a href=\"https://wordpress.org/support/users/atachibana/\">@atachibana</a> で訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>WordCamp US 2019 で行われた マット・マレンウェッグ (Matt Mullenweg) 氏による State of the Word (訳注: マット・マレンウェッグが毎年行う基調講演) の中で、プレゼンテーションに使用したスライドが、Slides プラグインを使用した Gutenberg で作られていることが明かされました。WordPress を使ってスライドを作成するのは誰にでも当たり前の選択肢とは言えないので、この記事では、その過程を紹介し、Gutenberg を使ってスライドのレイアウトを作成するためのコツを提供したいと思います。</p>\n\n\n\n<p>この記事は エラ (Ella) と <a href=\"https://profiles.wordpress.org/karmatosed/\">タミー (Tammie)</a> の共同執筆によるもので、2人は今年の State of the Word スライドの作成に (<a href=\"https://profiles.wordpress.org/melchoyce/\">Mel</a>、<a href=\"https://profiles.wordpress.org/mapk/\">Mark</a>、<a href=\"https://profiles.wordpress.org/nrqsnchz/\">Enrique</a>、<a href=\"https://profiles.wordpress.org/itsjonq/\">Q</a> 、そしてサポーターとともに) 協力しました。</p>\n\n\n\n<h2>はじまりの経緯</h2>\n\n\n\n<p>エラ・ヴァン・ドゥールプ (<a href=\"https://profiles.wordpress.org/ellatrix/\">Ella Van Durpe)</a> が <a href=\"https://www.youtube.com/watch?v=ZNWNhUPrqB4\">JSConf</a> と ReactEurope で登壇者として選出され、プレゼンのスライドを作りたいと考えました。</p>\n\n\n\n<p>過去には Reveal.js を使ってスライドを作ったことがあり、HTML/CSS/JavaScript を使って何でも作れる自由さを楽しく感じていました。エラにとってこれらの言語は使いやすく、手慣れていましたし、ネイティブな形式で Web に公開することができるからです。</p>\n\n\n\n<p>新たにプレゼンを作るにあたって Reveal.js をまた使おうと思ったものの、HTML を手書きで書きたくはありませんでした。「コードを実際にまったく書くことなく、Web 上にネイティブな形で公開できるコンテンツブロックを視覚的に作る」というのは、まさに Gutenberg が作られた目的でした。</p>\n\n\n\n<p>エラは、スライド内にスタイルをハードコードし、追加設定はできないというプロトタイプのプラグインをすばやく作りました。各プレゼンの最後に、Gutenberg ベースのスライドについての簡単なデモを含めると、観客は驚きました。</p>\n\n\n\n<figure class=\"wp-block-embed-twitter wp-block-embed is-type-rich is-provider-twitter\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\" data-width=\"550\" data-dnt=\"true\"><p lang=\"en\" dir=\"ltr\">.<a href=\"https://twitter.com/ellatrx?ref_src=twsrc%5Etfw\">@ellatrx</a> any chance you might open source this? <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> <a href=\"https://t.co/6hygMpBqUA\">https://t.co/6hygMpBqUA</a></p>&mdash; Pascal Birchler (@swissspidy) <a href=\"https://twitter.com/swissspidy/status/1131573525612048385?ref_src=twsrc%5Etfw\">May 23, 2019</a></blockquote><script async src=\"https://platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>\n</div></figure>\n\n\n\n<p>WordCamp US 2019 が近づいてきたとき、エラはプラグインを State of the Word で使うように勧めました。これまでの登壇で、彼女の観客の反応がとても良かったので、WordPress コミュニティ全体にもこれを共有するのはいい機会だと思ったのです。</p>\n\n\n\n<h2>Gutenberg スライドの仕組み</h2>\n\n\n\n<h3>技術情報</h3>\n\n\n\n<p>プラグインはカスタム投稿タイプ “presentation” と新しいブロック “slide” を登録します。slide ブロックは拡張 “Group” ブロックの一種です。投稿のルートにしか配置できませんが、内部にはどのブロックでも置くことができます。結果、投稿のルートにはスライドがあり、スライドにはコンテンツがあります。この構造は HTML セクション要素内にコンテンツを必要とする Reveal.js マークアップと完璧に合致します。</p>\n\n\n\n<p>それぞれのスライドには固有のデザインがあるため、テーマのスタイルは無効化され、各スライドからスタイルを設定しています。プラグインで提供されるカスタムプレゼンテーションテンプレートが、フロントエンドにカスタム投稿をレンダリングします。</p>\n\n\n\n<p>ここでエラは、スライドをスタイリングするオプションを追加しました。例えば、ドキュメント全体、または個々のスライドレベルで背景やフォントを設定するオプションや、スライドの遷移方法や速度を変更可能な Reveal.js オプションを追加しました。最後にスタイルを上書きするカスタム CSS フィールドを追加しました。</p>\n\n\n\n<p>また State of the Word 用にスピーカーノートとスピーカービューも追加しました。</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://ja.wordpress.org/files/2019/12/img_1939.png\" alt=\"\" class=\"wp-image-5791\" srcset=\"https://ja.wordpress.org/files/2019/12/img_1939.png 1024w, https://ja.wordpress.org/files/2019/12/img_1939-300x172.png 300w, https://ja.wordpress.org/files/2019/12/img_1939-768x441.png 768w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure>\n\n\n\n<h3>デザインの過程</h3>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i0.wp.com/wordpress.org/news/files/2019/12/01.png?w=1114&amp;ssl=1\" alt=\"\" /></figure>\n\n\n\n<p>スライドデザインのインスピレーションは、Blue Note のアルバム・ジャケットから生まれました (<a href=\"https://www.slideshare.net/photomatt/state-of-the-word-2011/\">2011年の State of the Word スライド</a>のインスピレーションでもありました)。これらのアルバム・ジャケットは、WordPress コアの最近の “About” ページと、新しい Twenty Twenty テーマのスターターコンテンツに影響を与えました。このスタイルは、力強く幾何学的な形状と、明瞭なラインのシンプルなフォームで構成されています。写真と大胆なタイポグラフィは、この意匠の本質です。</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2019/12/image-17.png?w=1264&amp;ssl=1\" alt=\"\" /></figure>\n\n\n\n<p>プレゼンテーションに最適な組み合わせを選択する前に、さまざまなカラーパレットとフォントの組み合わせが検討されました。</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i0.wp.com/wordpress.org/news/files/2019/12/03.png?w=1311&amp;ssl=1\" alt=\"\" /></figure>\n\n\n\n<p>スライドには強力な写真の要素が必要でした。過去の WordCamp は優れた写真のソースなので、適切な写真を見つけるために何年ものフォトギャラリーを掘り下げました。色、フォント、写真を使用し、一連のプレゼンスライドを構築するための基礎を築きました。</p>\n\n\n\n<h2>Gutenberg スライドを作る上でのコツ</h2>\n\n\n\n<h3>コツその1: カラムと仲良くなろう</h3>\n\n\n\n<p>正確なレイアウトのスライドが必要な場合は、カラムを活用しましょう。以下の例では、3列レイアウトを使ってスライド内のコンテンツを中央に配置しました。</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i0.wp.com/wordpress.org/news/files/2019/12/3.png?w=874&amp;ssl=1\" alt=\"\" /></figure>\n\n\n\n<h3>コツその2: スペーサーブロックの便利さを知る</h3>\n\n\n\n<p>カラムを最大限に活用するには、スペーサーブロックと組み合わせましょう。以下のスライドでは、スペーサーブロックを使って背景画像の上にコンテンツを配置しました。</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i2.wp.com/wordpress.org/news/files/2019/12/6.png?w=865&amp;ssl=1\" alt=\"\" /></figure>\n\n\n\n<h3>コツその3: 大画面でテストする</h3>\n\n\n\n<p>スライドをプレビューしながら進めていくことが大切です。使用するプロジェクターのサイズとアスペクト比に合わせて設計し、時々プレゼンテーションモード上で視覚的に確認してください。</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" src=\"https://i0.wp.com/wordpress.org/news/files/2019/12/notes.png?w=1096&amp;ssl=1\" alt=\"\" /></figure>\n\n\n\n<h3>コツその4: 動画を確認</h3>\n\n\n\n<p>新機能を紹介するにはよくできたデモ動画が欠かせません。ヨエン・アスムッセンが<a href=\"https://automattic.design/2019/11/12/good-ui-demo-videos/\">効果的なデモ動画についての記事</a>を書いています。</p>\n\n\n\n<h2>学んだこと</h2>\n\n\n\n<blockquote class=\"wp-block-quote is-style-default\"><p>アートディレクションを適用した構成をもっと簡単に作れるようにできればいいのに！</p><cite><em>メル・チョイス-ドゥワン (Mel Choyce-Dwan)</em></cite></blockquote>\n\n\n\n<p>Gutenberg の進化にともなった大きな改善点のひとつとして、「アートディレクション」が簡単になったということが挙げられます。しかし、今年の間に加えられた改善をもってしても、Gutenberg でいくつかのレイアウトを作成することは予想以上にトリッキーでした。より複雑な構成については、SVG に依存しました。将来、最終的にはこういったハックの必要性は解消され、わくわくする可能性の新しい世界がすべての人に開かれるでしょう。</p>\n\n\n\n<p>ブラウザーを通して、例えば (多くの人が使うツールである) Keynote や Powerpoint を使用する場合よりも、このプレゼンテーションにおける最大の学びを得ることができました。多くの場合、フルスクリーンで表示すると、エディターで作成したものとは表示が異なることが分かりました。ブラウザーウィンドウ全体を使う代わりに、固定サイズを使用するようにプラグインをアップデートすることで、これを和らげることができました。</p>\n\n\n\n<h2>まとめ</h2>\n\n\n\n<p>もし State of the Word をチェックしたい方がいましたら、ぜひ<a href=\"https://wordpress.tv/2019/11/03/2019-state-of-the-word/\">録画</a>を見て<a href=\"https://ma.tt/2019/11/state-of-the-word-2019/\">記事</a>を読んでください。</p>\n\n\n\n<p>Slides プラグインはプラグインリポジトリから利用できるだけでなく、コードを <a href=\"https://github.com/WordPress/slides\">GitHub</a> から入手できますし、<a href=\"https://translate.wordpress.org/projects/wp-plugins/slide/\">翻訳</a>の手助けをすることもできます。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://ja.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Fri, 24 Apr 2020 06:56:36 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Wed, 18 Jul 2012 08:25:33 GMT\";s:4:\"link\";s:61:\"<https://ja.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";}}s:5:\"build\";s:14:\"20130910190210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(427, '_transient_timeout_feed_mod_992efac292246ae35bf235a03417a202', '1587754597', 'no'),
(428, '_transient_feed_mod_992efac292246ae35bf235a03417a202', '1587711397', 'no'),
(429, '_transient_timeout_feed_6f409681938158427d2ded6eb1b9ea27', '1587754597', 'no'),
(430, '_transient_feed_6f409681938158427d2ded6eb1b9ea27', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n\n	\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:141:\"\n\n		\n		\n		\n				\n		\n		\n\n		\n		\n					\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n					\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WordPress | サポートフォーラム » 返信一覧\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"https://ja.wordpress.org/support/forums/feed\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 24 Apr 2020 06:56:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"https://bbpress.org/?v=2.7.0-alpha-1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"ja\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:146:\"https://ja.wordpress.org/support/topic/%e3%83%90%e3%83%83%e3%82%af%e3%82%a2%e3%83%83%e3%83%97%e3%81%ab%e3%81%a4%e3%81%84%e3%81%a6-2/#post-11663919\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"返信先: バックアップについて\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:146:\"https://ja.wordpress.org/support/topic/%e3%83%90%e3%83%83%e3%82%af%e3%82%a2%e3%83%83%e3%83%97%e3%81%ab%e3%81%a4%e3%81%84%e3%81%a6-2/#post-11663919\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 24 Apr 2020 05:48:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"\n						\n						<p>かしこまりました。<br />\n問い合わせしてみます。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"fountain1104\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:225:\"https://ja.wordpress.org/support/topic/%e3%82%ab%e3%83%86%e3%82%b4%e3%83%aa%e3%83%9a%e3%83%bc%e3%82%b8%e3%82%84%e3%82%bf%e3%82%b0%e3%83%9a%e3%83%bc%e3%82%b8%e3%81%8c%e6%a9%9f%e8%83%bd%e3%81%97%e3%81%aa%e3%81%84/#post-11663918\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"カテゴリページやタグページが機能しない\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:225:\"https://ja.wordpress.org/support/topic/%e3%82%ab%e3%83%86%e3%82%b4%e3%83%aa%e3%83%9a%e3%83%bc%e3%82%b8%e3%82%84%e3%82%bf%e3%82%b0%e3%83%9a%e3%83%bc%e3%82%b8%e3%81%8c%e6%a9%9f%e8%83%bd%e3%81%97%e3%81%aa%e3%81%84/#post-11663918\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 24 Apr 2020 02:26:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2459:\"\n						\n						<p>お知恵をお願いします…！<br />\n　<br />\n<strong>カテゴリページやタグページが機能しません。（検索は機能します）</strong><br />\n<a href=\"http://example.com/category/your-cat/\" rel=\"nofollow ugc\">http://example.com/category/your-cat/</a> ➡︎動かない（your-cat以外も全部表示される）<br />\n問題をシンプルにするため、archive.phpを消し、index.phpのみにしました。</p>\n<ul>\n<li>WP_DEBUG を TRUE にしたが問題なし</li>\n<li>プラグイン全部オフ➡︎変わらず</li>\n<li>functions.php の中身を空にしてみた➡︎変わらず</li>\n<li>WP_Query でカテゴリ指定すると反映される</li>\n<li>テーマファイルを別のに変えてみる➡︎動いた</li>\n</ul>\n<p>なので、テーマファイルに問題があるのは明らかなんですが、</p>\n<pre><code>&lt;?php get_header(); ?&gt;\n&lt;article role=&quot;main&quot;&gt;\n    &lt;div class=&quot;section-inner meidum&quot;&gt;\n        &lt;h1 class=&quot;title search_title&quot;&gt;タイトル&lt;/h1&gt;\n        &lt;!-- loop --&gt;\n        &lt;?php get_template_part( &#039;content-loop&#039; ); ?&gt;\n        &lt;!-- /loop --&gt;\n&lt;/article&gt;&lt;!-- #content --&gt;\n&lt;?php get_footer(); ?&gt;</code></pre>\n<p>これのどこに問題があるかわかりません…<br />\n　<br />\nなお、 <code>content-loop</code> の中身はこんな感じです⬇︎</p>\n<pre><code>&lt;ul&gt;\n&lt;?php $args = array(\n    &#039;posts_per_page&#039; =&gt; 12,\n    &#039;post_type&#039; =&gt; &#039;post&#039;,\n    &#039;s&#039; =&gt; $s,\n);?&gt;\n&lt;?php\n$the_query = new WP_Query( $args );\nif ( $the_query-&gt;have_posts()) :\nwhile ( $the_query-&gt;have_posts() ) : $the_query-&gt;the_post(); ?&gt;\n\n    &lt;li id=&quot;post-&lt;?php the_ID(); ?&gt;&quot;&gt;\n        &lt;h3&gt;&lt;a href=&quot;&lt;?php the_permalink(); ?&gt;&quot;&gt;タイトル&lt;/a&gt;&lt;/h3&gt;\n    &lt;/li&gt;\n\n&lt;?php endwhile; ?&gt;\n&lt;/ul&gt;\n&lt;?php wp_reset_postdata(); ?&gt;\n&lt;?php else: ?&gt;\n&lt;div class=&quot;post&quot;&gt;\n    &lt;p&gt;該当する記事がありませんでした。&lt;/p&gt;\n&lt;/div&gt;\n&lt;?php endif; ?&gt;\n</code></pre>\n<p>ここで行き詰ってしまいました…<br />\n検索しても同様の状態を見つけられなかったので、こちらで質問させていただきます！<br />\nよろしくお願いします。　</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"bissy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:216:\"https://ja.wordpress.org/support/topic/5-4%e6%9b%b4%e6%96%b0%e5%be%8c%e3%80%81chrome%e3%81%a7%e3%81%ae%e3%81%bf%e4%b8%80%e9%83%a8%e7%94%bb%e5%83%8f%e3%81%ae%e8%a1%a8%e7%a4%ba%e4%b8%8d%e5%85%b7%e5%90%88/#post-11663917\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"5.4更新後、Chromeでのみ一部画像の表示不具合\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:216:\"https://ja.wordpress.org/support/topic/5-4%e6%9b%b4%e6%96%b0%e5%be%8c%e3%80%81chrome%e3%81%a7%e3%81%ae%e3%81%bf%e4%b8%80%e9%83%a8%e7%94%bb%e5%83%8f%e3%81%ae%e8%a1%a8%e7%a4%ba%e4%b8%8d%e5%85%b7%e5%90%88/#post-11663917\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 24 Apr 2020 01:36:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1901:\"\n						\n						<p>はじめて投稿します。<br />\n個人でWorPressによるサイトの制作・運営を行っています。</p>\n<p>5.4更新後、WordPressで作成している固有のサイトで、（私が普段から制作に使用している）Chromeでのみ以下の現象が起きていて原因を知りたいと思います。もし何か知見をお持ちの方がいらっしゃればアドバイスをいただければ幸いです。</p>\n<p>1. 自分の制作に使用しているMac（iOS最新版）Chromeでのみ、固有サイトの一部画像が表示されない/サイズ指定が効かない</p>\n<p>　・リンク切れの表示ではない<br />\n　・WordPressの管理画面では問題なく表示されている<br />\n　・同一端末のChromeシークレットウインドウ及びSafariでは問題なく表示される<br />\n　・同一ネット環境、家族の別のMac/Chromeブラウザでは問題なく表示される<br />\n　・同一ネット環境、自分のiPhone/Safariでも問題なく表示される</p>\n<p>2. ここに記載されている処理はすべてクリアしたが現象は変わらない</p>\n<p>　https://support.google.com/websearch/answer/112568?hl=ja<br />\n　また、デベロッパーツールを使用し「キャッシュとハードの再読み込み」も試し済み</p>\n<p>3. 以前も同じサイト/環境で、一定期間開発環境のサブドメインにリダイレクトされてしまう現象があったので、（数ヶ月後自然と解決していた）なんらかのハードの接続の問題、もしくはChromeの問題？の可能性も考え、Chromeフォーラムでも同一の質問を行っていますが、もしこちらで知見をお持ちの方がいればと思い投稿させていただきました。</p>\n<p>どうぞよろしくお願いいたします。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"minbo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:146:\"https://ja.wordpress.org/support/topic/%e3%83%90%e3%83%83%e3%82%af%e3%82%a2%e3%83%83%e3%83%97%e3%81%ab%e3%81%a4%e3%81%84%e3%81%a6-2/#post-11663916\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"返信先: バックアップについて\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:146:\"https://ja.wordpress.org/support/topic/%e3%83%90%e3%83%83%e3%82%af%e3%82%a2%e3%83%83%e3%83%97%e3%81%ab%e3%81%a4%e3%81%84%e3%81%a6-2/#post-11663916\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 23 Apr 2020 14:50:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:467:\"\n						\n						<p>レンタルサーバーであれば、先にも以下のように書きましたがサーバー会社に問い合わせるなどしてみて下さい。</p>\n<blockquote><p>レンタルサーバーをご利用の場合はコントロールパネルなどから php.ini を変更する方法が提供されていると思います。<br />\n具体的な方法についてはサーバー会社にお問合せください。</p></blockquote>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"munyagu\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:110:\"https://ja.wordpress.org/support/topic/fontawesome%e3%81%ae%e5%91%bc%e3%81%b3%e5%87%ba%e3%81%97/#post-11663915\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"返信先: FontAwesomeの呼び出し\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:110:\"https://ja.wordpress.org/support/topic/fontawesome%e3%81%ae%e5%91%bc%e3%81%b3%e5%87%ba%e3%81%97/#post-11663915\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 23 Apr 2020 11:08:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:354:\"\n						\n						<p>こんにちは</p>\n<p>お使いのテーマは何でしょうか？<br />\nSTINGER PLUS2 テーマでしょうか？このテーマであれば、FontAwesome はデフォルトで組み込まれるため、別途組み込む必要はないと思います。テーマのマニュアルを確認してみてください。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"ishitaka\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:110:\"https://ja.wordpress.org/support/topic/fontawesome%e3%81%ae%e5%91%bc%e3%81%b3%e5%87%ba%e3%81%97/#post-11663913\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"FontAwesomeの呼び出し\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:110:\"https://ja.wordpress.org/support/topic/fontawesome%e3%81%ae%e5%91%bc%e3%81%b3%e5%87%ba%e3%81%97/#post-11663913\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 23 Apr 2020 10:40:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2228:\"\n						\n						<p>こんにちは。FontAwesomeを使用して目次を作成したいと考えています。<br />\n参考サイト様によると、FontAwesomeの呼び出しを行う必要があるとのことです。<br />\n以下が詳細です。<br />\n&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;<br />\n<a href=\"https://blog.minimal-green.com/entry/table-of-contents-for-hatenablog\" rel=\"nofollow ugc\">https://blog.minimal-green.com/entry/table-of-contents-for-hatenablog</a></p>\n<p>「呼び出しのコードを貼っていない方は&lt;link rel=&#8221;stylesheet&#8221; href=&#8221;<a href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css&#8221;&#038;gt\" rel=\"nofollow ugc\">https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css&#8221;&#038;gt</a>;<br />\n追加してください。<br />\nheadに貼り付けて下さい。既にどこかに記述済みの場合は必要ありません。管理画面→設定→詳細設定→「headに要素を追加に」」<br />\n&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;</p>\n<p>スタイルシートは使用せず、プラグインの「Insert Headers and Footers」を使用したいと考えています。しかし、Scripts in Headerの部分にコードを貼りつけしてもできませんでした。どうやってコードの貼り付けをすればいいか教えてください。<br />\nよろしくお願いします。</p>\n\n\n<ul id=\"bbp-topic-revision-log-11663913\" class=\"bbp-topic-revision-log\">\n\n	<li id=\"bbp-topic-revision-log-11663913-item-11663914\" class=\"bbp-topic-revision-log-item\">\n		このトピックは<a href=\"https://ja.wordpress.org/support/users/856rcf6a/\" title=\"経理女子ココ のプロフィールを表示\" class=\"bbp-author-link\"><span  class=\"bbp-author-name\">経理女子ココ</span></a>が20時間、 13分前に変更しました。\n	</li>\n\n</ul>\n\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"経理女子ココ\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:142:\"https://ja.wordpress.org/support/topic/twitter%e3%81%ae%e5%9f%8b%e3%82%81%e8%be%bc%e3%81%bf%e3%81%ab%e3%81%a4%e3%81%84%e3%81%a6/#post-11663912\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Twitterの埋め込みについて\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:142:\"https://ja.wordpress.org/support/topic/twitter%e3%81%ae%e5%9f%8b%e3%82%81%e8%be%bc%e3%81%bf%e3%81%ab%e3%81%a4%e3%81%84%e3%81%a6/#post-11663912\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 23 Apr 2020 10:30:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:412:\"\n						\n						<p>こんにちは。Twitterの埋め込みについて質問します。<br />\nTwitterの埋め込みをサイドバーに載せたのですが、タイムラインでリツートしたものばかり流れてしまいます。<br />\n自分のツイートのみを載せたいのですが、HTMLはどうすればいいのでしょうか。<br />\nよろしくお願いします。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"経理女子ココ\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:146:\"https://ja.wordpress.org/support/topic/%e3%83%90%e3%83%83%e3%82%af%e3%82%a2%e3%83%83%e3%83%97%e3%81%ab%e3%81%a4%e3%81%84%e3%81%a6-2/#post-11663911\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"返信先: バックアップについて\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:146:\"https://ja.wordpress.org/support/topic/%e3%83%90%e3%83%83%e3%82%af%e3%82%a2%e3%83%83%e3%83%97%e3%81%ab%e3%81%a4%e3%81%84%e3%81%a6-2/#post-11663911\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 23 Apr 2020 09:10:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:503:\"\n						\n						<p>&gt;ホームディレクトリに php.ini が存在することはまれだと思います。</p>\n<p>そうなのですね。</p>\n<p>&gt; どういった環境で WordPress を動かしているのでしょうか？</p>\n<p>環境は下記になります。</p>\n<p>①さくらインターネットのレンタルサーバ、ドメイン取得<br />\n②MacOSバージョン10.15.4<br />\n③WordPressバージョン5.4<br />\n④テーマは現在はTCDテーマを使用</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"fountain1104\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:146:\"https://ja.wordpress.org/support/topic/%e3%83%90%e3%83%83%e3%82%af%e3%82%a2%e3%83%83%e3%83%97%e3%81%ab%e3%81%a4%e3%81%84%e3%81%a6-2/#post-11663910\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"返信先: バックアップについて\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:146:\"https://ja.wordpress.org/support/topic/%e3%83%90%e3%83%83%e3%82%af%e3%82%a2%e3%83%83%e3%83%97%e3%81%ab%e3%81%a4%e3%81%84%e3%81%a6-2/#post-11663910\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 23 Apr 2020 05:47:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:208:\"\n						\n						<p>ホームディレクトリに php.ini が存在することはまれだと思います。<br />\nどういった環境で WordPress を動かしているのでしょうか？</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"munyagu\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:167:\"https://ja.wordpress.org/support/topic/%e3%83%86%e3%83%bc%e3%83%9e%ef%bc%9abusinesspress-%e3%81%ae%e3%83%88%e3%83%83%e3%83%97%e3%83%9a%e3%83%bc%e3%82%b8/#post-11663909\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"返信先: テーマ：BusinessPress のトップページ\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:167:\"https://ja.wordpress.org/support/topic/%e3%83%86%e3%83%bc%e3%83%9e%ef%bc%9abusinesspress-%e3%81%ae%e3%83%88%e3%83%83%e3%83%97%e3%83%9a%e3%83%bc%e3%82%b8/#post-11663909\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 23 Apr 2020 05:08:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:383:\"\n						\n						<p>ishitaka様</p>\n<p>こんにちは。</p>\n<p>早速設定をしてみたところ、無事トップページを作成することができました。<br />\nご教授いただき、本当にありがとうございました。</p>\n<p>こちらのトピックは解決済みにさせていただきます。<br />\nありがとうございました。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"wts8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:44:\"https://ja.wordpress.org/support/forums/feed\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:7:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Fri, 24 Apr 2020 06:56:37 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:12:\"x-robots-tag\";s:15:\"noindex, follow\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20130910190210\";}', 'no'),
(431, '_transient_timeout_feed_mod_6f409681938158427d2ded6eb1b9ea27', '1587754597', 'no'),
(432, '_transient_feed_mod_6f409681938158427d2ded6eb1b9ea27', '1587711397', 'no'),
(433, '_transient_timeout_dash_v2_45827e8e892dd0b85803a110fad8690f', '1587754597', 'no'),
(434, '_transient_dash_v2_45827e8e892dd0b85803a110fad8690f', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/2020/04/01/adderley/\'>WordPress 5.4 “アダレイ”</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/support/topic/%E3%83%90%E3%83%83%E3%82%AF%E3%82%A2%E3%83%83%E3%83%97%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6-2/#post-11663919\'>返信先: バックアップについて</a></li><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/support/topic/%E3%82%AB%E3%83%86%E3%82%B4%E3%83%AA%E3%83%9A%E3%83%BC%E3%82%B8%E3%82%84%E3%82%BF%E3%82%B0%E3%83%9A%E3%83%BC%E3%82%B8%E3%81%8C%E6%A9%9F%E8%83%BD%E3%81%97%E3%81%AA%E3%81%84/#post-11663918\'>カテゴリページやタグページが機能しない</a></li><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/support/topic/5-4%E6%9B%B4%E6%96%B0%E5%BE%8C%E3%80%81chrome%E3%81%A7%E3%81%AE%E3%81%BF%E4%B8%80%E9%83%A8%E7%94%BB%E5%83%8F%E3%81%AE%E8%A1%A8%E7%A4%BA%E4%B8%8D%E5%85%B7%E5%90%88/#post-11663917\'>5.4更新後、Chromeでのみ一部画像の表示不具合</a></li></ul></div>', 'no'),
(436, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1587725604', 'no'),
(437, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4681;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4046;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2667;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2548;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1961;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1804;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1787;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1482;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1472;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1470;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1447;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1418;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1404;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1301;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1184;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1183;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1121;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1110;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1088;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:987;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:875;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:871;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:868;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:855;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:787;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:768;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:766;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:761;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:749;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:743;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:715;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:711;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:704;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:698;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:684;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:658;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:648;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:647;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:644;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:635;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:625;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:622;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:583;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:580;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:577;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:572;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:571;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:564;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:552;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:546;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:546;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:537;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:534;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:532;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:529;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:520;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:510;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:504;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:498;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:497;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:493;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:487;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:485;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:475;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:474;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:471;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:465;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:438;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:435;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:435;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:429;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:426;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:425;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:422;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:422;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:421;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:409;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:405;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:402;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:395;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:395;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:393;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:383;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:382;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:378;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:377;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:372;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:370;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:368;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:357;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:356;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:354;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:350;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:342;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:341;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:337;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:335;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:334;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:333;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:332;}}', 'no'),
(441, '_site_transient_timeout_theme_roots', '1587728836', 'no'),
(442, '_site_transient_theme_roots', 'a:1:{s:15:\"ECO-LifeSupport\";s:7:\"/themes\";}', 'no');

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
(3, 5, '_edit_lock', '1587727391:1'),
(4, 7, '_edit_lock', '1587727099:1'),
(5, 9, '_edit_lock', '1587727472:1'),
(6, 11, '_edit_lock', '1587727176:1'),
(7, 13, '_edit_lock', '1587711458:1'),
(8, 15, '_edit_lock', '1587727149:1'),
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
(86, 27, '_edit_lock', '1587727326:1'),
(87, 29, '_edit_lock', '1587727494:1'),
(88, 31, '_edit_lock', '1587727345:1'),
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
(219, 54, '_menu_item_url', ''),
(220, 7, '_wp_page_template', 'service-price.php'),
(221, 13, '_wp_page_template', 'faq.php'),
(222, 31, '_wp_page_template', ' privacy-policy.php'),
(223, 15, '_wp_page_template', 'page-custom.php'),
(224, 11, '_wp_page_template', 'page-custom.php'),
(225, 27, '_wp_page_template', 'page-custom.php'),
(226, 5, '_wp_page_template', 'page-custom.php'),
(227, 9, '_wp_page_template', 'page-custom.php'),
(228, 29, '_wp_page_template', 'page-custom.php');

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
(5, 1, '2020-03-31 11:43:34', '2020-03-31 02:43:34', '', 'サービス', '', 'publish', 'closed', 'closed', '', '%e3%82%b5%e3%83%bc%e3%83%93%e3%82%b9', '', '', '2020-04-24 20:25:31', '2020-04-24 11:25:31', '', 0, 'http://localhost/wordpress_ecolifesupport/?page_id=5', 0, 'page', '', 0),
(6, 1, '2020-03-31 11:43:34', '2020-03-31 02:43:34', '', 'サービス', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-03-31 11:43:34', '2020-03-31 02:43:34', '', 5, 'http://localhost/wordpress_ecolifesupport/2020/03/31/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2020-03-31 11:43:48', '2020-03-31 02:43:48', '', 'サービス料金', '', 'publish', 'closed', 'closed', '', '%e6%96%99%e9%87%91%e3%83%97%e3%83%a9%e3%83%b3', '', '', '2020-04-24 15:56:58', '2020-04-24 06:56:58', '', 0, 'http://localhost/wordpress_ecolifesupport/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-03-31 11:43:48', '2020-03-31 02:43:48', '', '料金プラン', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-03-31 11:43:48', '2020-03-31 02:43:48', '', 7, 'http://localhost/wordpress_ecolifesupport/2020/03/31/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-03-31 11:43:56', '2020-03-31 02:43:56', '', '対応エリア', '', 'publish', 'closed', 'closed', '', '%e5%af%be%e5%bf%9c%e3%82%a8%e3%83%aa%e3%82%a2', '', '', '2020-04-24 20:26:25', '2020-04-24 11:26:25', '', 0, 'http://localhost/wordpress_ecolifesupport/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-03-31 11:43:56', '2020-03-31 02:43:56', '', '対応エリア', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-03-31 11:43:56', '2020-03-31 02:43:56', '', 9, 'http://localhost/wordpress_ecolifesupport/2020/03/31/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-03-31 11:44:09', '2020-03-31 02:44:09', '', 'お客様の声', '', 'publish', 'closed', 'closed', '', '%e3%81%8a%e5%ae%a2%e6%a7%98%e3%81%ae%e5%a3%b0', '', '', '2020-04-24 20:21:48', '2020-04-24 11:21:48', '', 0, 'http://localhost/wordpress_ecolifesupport/?page_id=11', 0, 'page', '', 0),
(12, 1, '2020-03-31 11:44:09', '2020-03-31 02:44:09', '', 'お客様の声', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-03-31 11:44:09', '2020-03-31 02:44:09', '', 11, 'http://localhost/wordpress_ecolifesupport/2020/03/31/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-03-31 11:44:21', '2020-03-31 02:44:21', '', 'よくある質問', '', 'publish', 'closed', 'closed', '', '%e3%82%88%e3%81%8f%e3%81%82%e3%82%8b%e8%b3%aa%e5%95%8f', '', '', '2020-04-24 15:59:38', '2020-04-24 06:59:38', '', 0, 'http://localhost/wordpress_ecolifesupport/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-03-31 11:44:21', '2020-03-31 02:44:21', '', 'よくある質問', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-03-31 11:44:21', '2020-03-31 02:44:21', '', 13, 'http://localhost/wordpress_ecolifesupport/2020/03/31/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-03-31 11:44:33', '2020-03-31 02:44:33', '', 'お問い合わせ', '', 'publish', 'closed', 'closed', '', '%e3%81%8a%e5%95%8f%e3%81%84%e5%90%88%e3%82%8f%e3%81%9b', '', '', '2020-04-24 20:21:09', '2020-04-24 11:21:09', '', 0, 'http://localhost/wordpress_ecolifesupport/?page_id=15', 0, 'page', '', 0),
(16, 1, '2020-03-31 11:44:33', '2020-03-31 02:44:33', '', 'お問い合わせ', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-03-31 11:44:33', '2020-03-31 02:44:33', '', 15, 'http://localhost/wordpress_ecolifesupport/2020/03/31/15-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-03-31 11:45:27', '2020-03-31 02:45:27', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2020-04-10 10:35:50', '2020-04-10 01:35:50', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=18', 6, 'nav_menu_item', '', 0),
(19, 1, '2020-03-31 11:45:27', '2020-03-31 02:45:27', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2020-04-10 10:35:50', '2020-04-10 01:35:50', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=19', 4, 'nav_menu_item', '', 0),
(21, 1, '2020-03-31 11:45:27', '2020-03-31 02:45:27', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2020-04-10 10:35:50', '2020-04-10 01:35:50', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=21', 5, 'nav_menu_item', '', 0),
(22, 1, '2020-03-31 11:45:27', '2020-03-31 02:45:27', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2020-04-10 10:35:50', '2020-04-10 01:35:50', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=22', 3, 'nav_menu_item', '', 0),
(24, 1, '2020-03-31 12:59:14', '2020-03-31 03:59:14', '', 'HOME', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-04-10 10:35:50', '2020-04-10 01:35:50', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=24', 1, 'nav_menu_item', '', 0),
(27, 1, '2020-03-31 19:05:23', '2020-03-31 10:05:23', '', 'サイトマップ', '', 'publish', 'closed', 'closed', '', '%e3%82%b5%e3%82%a4%e3%83%88%e3%83%9e%e3%83%83%e3%83%97', '', '', '2020-04-24 20:24:25', '2020-04-24 11:24:25', '', 0, 'http://localhost/wordpress_ecolifesupport/?page_id=27', 0, 'page', '', 0),
(28, 1, '2020-03-31 19:05:23', '2020-03-31 10:05:23', '', 'サイトマップ', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2020-03-31 19:05:23', '2020-03-31 10:05:23', '', 27, 'http://localhost/wordpress_ecolifesupport/2020/03/31/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-03-31 19:05:34', '2020-03-31 10:05:34', '', '採用情報', '', 'publish', 'closed', 'closed', '', '%e6%8e%a1%e7%94%a8%e6%83%85%e5%a0%b1', '', '', '2020-04-24 20:27:11', '2020-04-24 11:27:11', '', 0, 'http://localhost/wordpress_ecolifesupport/?page_id=29', 0, 'page', '', 0),
(30, 1, '2020-03-31 19:05:34', '2020-03-31 10:05:34', '', '採用情報', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-03-31 19:05:34', '2020-03-31 10:05:34', '', 29, 'http://localhost/wordpress_ecolifesupport/2020/03/31/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-03-31 19:05:45', '2020-03-31 10:05:45', '', 'プライバシーポリシー', '', 'publish', 'closed', 'closed', '', '%e3%83%97%e3%83%a9%e3%82%a4%e3%83%90%e3%82%b7%e3%83%bc%e3%83%9d%e3%83%aa%e3%82%b7%e3%83%bc', '', '', '2020-04-24 16:01:30', '2020-04-24 07:01:30', '', 0, 'http://localhost/wordpress_ecolifesupport/?page_id=31', 0, 'page', '', 0),
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
(54, 1, '2020-04-10 10:35:50', '2020-04-10 01:35:50', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2020-04-10 10:35:50', '2020-04-10 01:35:50', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=54', 2, 'nav_menu_item', '', 0),
(55, 1, '2020-04-24 15:56:31', '0000-00-00 00:00:00', '', '自動下書き', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-24 15:56:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_ecolifesupport/?p=55', 0, 'post', '', 0),
(57, 1, '2020-04-24 15:59:42', '2020-04-24 06:59:42', '', 'よくある質問', '', 'inherit', 'closed', 'closed', '', '13-autosave-v1', '', '', '2020-04-24 15:59:42', '2020-04-24 06:59:42', '', 13, 'http://localhost/wordpress_ecolifesupport/2020/04/24/13-autosave-v1/', 0, 'revision', '', 0),
(58, 1, '2020-04-24 16:01:32', '2020-04-24 07:01:32', '', 'プライバシーポリシー', '', 'inherit', 'closed', 'closed', '', '31-autosave-v1', '', '', '2020-04-24 16:01:32', '2020-04-24 07:01:32', '', 31, 'http://localhost/wordpress_ecolifesupport/2020/04/24/31-autosave-v1/', 0, 'revision', '', 0),
(59, 1, '2020-04-24 20:21:22', '2020-04-24 11:21:22', '', 'お問い合わせ', '', 'inherit', 'closed', 'closed', '', '15-autosave-v1', '', '', '2020-04-24 20:21:22', '2020-04-24 11:21:22', '', 15, 'http://localhost/wordpress_ecolifesupport/2020/04/24/15-autosave-v1/', 0, 'revision', '', 0),
(60, 1, '2020-04-24 20:21:52', '2020-04-24 11:21:52', '', 'お客様の声', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2020-04-24 20:21:52', '2020-04-24 11:21:52', '', 11, 'http://localhost/wordpress_ecolifesupport/2020/04/24/11-autosave-v1/', 0, 'revision', '', 0);

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
(17, 1, 'wp_dashboard_quick_press_last_post_id', '55'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:25:\"add-post-type-custom_type\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:14:\"add-custom_cat\";i:4;s:14:\"add-custom_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1585642375'),
(23, 1, 'session_tokens', 'a:1:{s:64:\"dcf81b003d3280a4da75dd0f3fbd34fc130467f77063185c39c3e6b733f6c9ba\";a:4:{s:10:\"expiration\";i:1587887584;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587714784;}}');

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- テーブルのAUTO_INCREMENT `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- テーブルのAUTO_INCREMENT `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

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
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- テーブルのAUTO_INCREMENT `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
