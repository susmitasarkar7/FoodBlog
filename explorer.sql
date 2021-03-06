-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2019 at 08:57 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `explorer`
--

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_commentmeta`
--

CREATE TABLE `dbbs_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_comments`
--

CREATE TABLE `dbbs_comments` (
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
-- Dumping data for table `dbbs_comments`
--

INSERT INTO `dbbs_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-05-23 00:14:36', '2019-05-23 00:14:36', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 1, 'Susmita Sarkar', 'sarkarsusmita253@gmail.com', '', '::1', '2019-05-27 07:29:57', '2019-05-27 07:29:57', 'Hey there! What\'s up?', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '', 0, 1),
(3, 1, 'Susmita Sarkar', 'sarkarsusmita253@gmail.com', '', '::1', '2019-05-27 07:45:56', '2019-05-27 07:45:56', 'ALL Good', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '', 1, 1),
(4, 183, 'ActionScheduler', '', '', '', '2019-06-03 20:29:51', '2019-06-03 20:29:51', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(5, 183, 'ActionScheduler', '', '', '', '2019-06-03 20:31:06', '2019-06-03 20:31:06', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(6, 183, 'ActionScheduler', '', '', '', '2019-06-03 20:31:07', '2019-06-03 20:31:07', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(7, 198, 'WooCommerce', '', '', '', '2019-06-03 22:34:00', '2019-06-03 22:34:00', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(8, 198, 'Susmita Sarkar', 'sarkarsusmita253@gmail.com', '', '', '2019-06-03 22:35:10', '2019-06-03 22:35:10', 'Order status changed from Processing to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_links`
--

CREATE TABLE `dbbs_links` (
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
-- Table structure for table `dbbs_options`
--

CREATE TABLE `dbbs_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dbbs_options`
--

INSERT INTO `dbbs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/foodblog', 'yes'),
(2, 'home', 'http://localhost/foodblog', 'yes'),
(3, 'blogname', 'Food Blog', 'yes'),
(4, 'blogdescription', 'Recipes &amp; More', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'sarkarsusmita253@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:218:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"hero_slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"hero_slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"hero_slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"hero_slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"hero_slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"hero_slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"hero_slider/([^/]+)/embed/?$\";s:44:\"index.php?hero_slider=$matches[1]&embed=true\";s:32:\"hero_slider/([^/]+)/trackback/?$\";s:38:\"index.php?hero_slider=$matches[1]&tb=1\";s:40:\"hero_slider/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?hero_slider=$matches[1]&paged=$matches[2]\";s:47:\"hero_slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?hero_slider=$matches[1]&cpage=$matches[2]\";s:37:\"hero_slider/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?hero_slider=$matches[1]&wc-api=$matches[3]\";s:43:\"hero_slider/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:54:\"hero_slider/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:36:\"hero_slider/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?hero_slider=$matches[1]&page=$matches[2]\";s:28:\"hero_slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"hero_slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"hero_slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"hero_slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"hero_slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"hero_slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"latest_recipe/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"latest_recipe/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"latest_recipe/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"latest_recipe/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"latest_recipe/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"latest_recipe/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"latest_recipe/([^/]+)/embed/?$\";s:46:\"index.php?latest_recipe=$matches[1]&embed=true\";s:34:\"latest_recipe/([^/]+)/trackback/?$\";s:40:\"index.php?latest_recipe=$matches[1]&tb=1\";s:42:\"latest_recipe/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?latest_recipe=$matches[1]&paged=$matches[2]\";s:49:\"latest_recipe/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?latest_recipe=$matches[1]&cpage=$matches[2]\";s:39:\"latest_recipe/([^/]+)/wc-api(/(.*))?/?$\";s:54:\"index.php?latest_recipe=$matches[1]&wc-api=$matches[3]\";s:45:\"latest_recipe/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:56:\"latest_recipe/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:38:\"latest_recipe/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?latest_recipe=$matches[1]&page=$matches[2]\";s:30:\"latest_recipe/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"latest_recipe/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"latest_recipe/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"latest_recipe/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"latest_recipe/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"latest_recipe/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"gallery/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"gallery/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"gallery/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"gallery/([^/]+)/embed/?$\";s:40:\"index.php?gallery=$matches[1]&embed=true\";s:28:\"gallery/([^/]+)/trackback/?$\";s:34:\"index.php?gallery=$matches[1]&tb=1\";s:36:\"gallery/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?gallery=$matches[1]&paged=$matches[2]\";s:43:\"gallery/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?gallery=$matches[1]&cpage=$matches[2]\";s:33:\"gallery/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?gallery=$matches[1]&wc-api=$matches[3]\";s:39:\"gallery/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"gallery/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"gallery/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?gallery=$matches[1]&page=$matches[2]\";s:24:\"gallery/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"gallery/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"gallery/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=12&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:32:\"(.?.+?)/edit-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&edit-password=$matches[3]\";s:31:\"(.?.+?)/edit-profile(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-profile=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:30:\"(.?.+?)/user-logout(/(.*))?/?$\";s:54:\"index.php?pagename=$matches[1]&user-logout=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:31:\"(.+?)/([^/]+)/wc-api(/(.*))?/?$\";s:71:\"index.php?category_name=$matches[1]&name=$matches[2]&wc-api=$matches[4]\";s:35:\".+?/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:46:\".+?/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:23:\"(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:12:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:24:\"example-plugin/index.php\";i:4;s:19:\"jetpack/jetpack.php\";i:5;s:27:\"updraftplus/updraftplus.php\";i:6;s:39:\"user-registration/user-registration.php\";i:7;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:8;s:45:\"woocommerce-services/woocommerce-services.php\";i:9;s:27:\"woocommerce/woocommerce.php\";i:10;s:23:\"wp-smushit/wp-smush.php\";i:11;s:27:\"wp-super-cache/wp-cache.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'foodblog', 'yes'),
(41, 'stylesheet', 'foodblog', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:27:\"wp-super-cache/wp-cache.php\";s:22:\"wpsupercache_uninstall\";s:45:\"woocommerce-services/woocommerce-services.php\";a:2:{i:0;s:17:\"WC_Connect_Loader\";i:1;s:16:\"plugin_uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '134', 'yes'),
(84, 'page_on_front', '12', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'dbbs_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:132:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:24:\"manage_user_registration\";b:1;s:22:\"edit_user_registration\";b:1;s:22:\"read_user_registration\";b:1;s:24:\"delete_user_registration\";b:1;s:23:\"edit_user_registrations\";b:1;s:30:\"edit_others_user_registrations\";b:1;s:26:\"publish_user_registrations\";b:1;s:31:\"read_private_user_registrations\";b:1;s:25:\"delete_user_registrations\";b:1;s:33:\"delete_private_user_registrations\";b:1;s:35:\"delete_published_user_registrations\";b:1;s:32:\"delete_others_user_registrations\";b:1;s:31:\"edit_private_user_registrations\";b:1;s:33:\"edit_published_user_registrations\";b:1;s:30:\"manage_user_registration_terms\";b:1;s:28:\"edit_user_registration_terms\";b:1;s:30:\"delete_user_registration_terms\";b:1;s:30:\"assign_user_registration_terms\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:6:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:12:\"upload_files\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:12:\"upload_files\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:12:\"upload_files\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:4:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;i:5;a:0:{}}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:4;a:0:{}}', 'yes'),
(101, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:4:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";}s:9:\"sidebar-2\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:19:{i:1560322580;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1560322674;a:1:{s:11:\"wp_cache_gc\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1560323678;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1560325083;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1560325449;a:1:{s:19:\"wp_cache_gc_watcher\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1560325675;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1560341678;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1560350341;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1560371941;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1560371951;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1560382741;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1560384000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1560384877;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1560385034;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1560385036;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1560424967;a:1:{s:14:\"updraft_backup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1560424968;a:1:{s:23:\"updraft_backup_database\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1562025600;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2592000;}}}s:7:\"version\";i:2;}', 'yes'),
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
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1560322077;s:15:\"version_checked\";s:5:\"5.2.1\";s:12:\"translations\";a:0:{}}', 'no'),
(115, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1558570994;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(128, 'can_compress_scripts', '1', 'no'),
(139, 'current_theme', 'Food BLog', 'yes'),
(140, 'theme_mods_explorer', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1558634909;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(142, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(163, 'theme_mods_foodblog', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:6:{s:6:\"menu-3\";i:7;s:6:\"menu-1\";i:2;s:6:\"menu-2\";i:3;s:9:\"topheader\";i:7;s:6:\"footer\";i:3;s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:150;}', 'yes'),
(175, 'WPLANG', '', 'yes'),
(176, 'new_admin_email', 'sarkarsusmita253@gmail.com', 'yes'),
(185, 'recently_activated', 'a:1:{s:19:\"akismet/akismet.php\";i:1559215945;}', 'yes'),
(186, 'acf_version', '5.8.0', 'yes'),
(193, 'cptui_new_install', 'false', 'yes'),
(196, 'cptui_post_types', 'a:3:{s:11:\"hero_slider\";a:29:{s:4:\"name\";s:11:\"hero_slider\";s:5:\"label\";s:12:\"Hero Sliders\";s:14:\"singular_label\";s:11:\"Hero Slider\";s:11:\"description\";s:61:\"These are the contents you want to add for your hero slider. \";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:4:\"true\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:13:\"latest_recipe\";a:29:{s:4:\"name\";s:13:\"latest_recipe\";s:5:\"label\";s:14:\"Latest recipes\";s:14:\"singular_label\";s:13:\"Latest recipe\";s:11:\"description\";s:24:\"Add Latest Recipes Here.\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:4:\"true\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:7:\"gallery\";a:29:{s:4:\"name\";s:7:\"gallery\";s:5:\"label\";s:14:\"Gallery Images\";s:14:\"singular_label\";s:13:\"Gallery Image\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:4:\"true\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes');
INSERT INTO `dbbs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(250, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1558743795;s:7:\"version\";s:5:\"5.1.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(290, 'category_children', 'a:0:{}', 'yes'),
(347, 'footer_text', '', 'yes'),
(348, 'recovery_mode_email_last_sent', '1559124549', 'yes'),
(373, 'user_registration_general_setting_login_options', 'default', 'yes'),
(374, 'user_registration_general_setting_disabled_user_roles', 'a:1:{i:0;s:10:\"subscriber\";}', 'yes'),
(375, 'user_registration_general_setting_uninstall_option', 'no', 'yes'),
(376, 'user_registration_myaccount_page_id', '160', 'yes'),
(377, 'user_registration_my_account_layout', 'vertical', 'yes'),
(378, 'user_registration_myaccount_edit_profile_endpoint', 'edit-profile', 'yes'),
(379, 'user_registration_myaccount_change_password_endpoint', 'edit-password', 'yes'),
(380, 'user_registration_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(381, 'user_registration_logout_endpoint', 'user-logout', 'yes'),
(382, 'user_registration_integration_setting_recaptcha_version', 'v2', 'yes'),
(383, 'user_registration_integration_setting_recaptcha_site_key', '', 'yes'),
(384, 'user_registration_integration_setting_recaptcha_site_secret', '', 'yes'),
(385, 'user_registration_integration_setting_recaptcha_site_key_v3', '', 'yes'),
(386, 'user_registration_integration_setting_recaptcha_site_secret_v3', '', 'yes'),
(387, 'user_registration_email_setting_disable_email', 'no', 'no'),
(388, 'user_registration_email_from_name', 'Food Blog', 'no'),
(389, 'user_registration_email_from_address', 'sarkarsusmita253@gmail.com', 'no'),
(390, 'user_registration_default_form_page_id', '158', 'yes'),
(396, 'user_registration_admin_notices', 'a:0:{}', 'yes'),
(397, 'user_registration_registration_page_id', '161', 'yes'),
(403, 'user_registration_version', '1.6.0.1', 'yes'),
(404, 'user_registration_db_version', '1.6.0.1', 'yes'),
(405, 'user_registration_activated', '2019-05-30', 'yes'),
(407, 'user_registration_login_options_form_template', 'default', 'yes'),
(408, 'user_registration_login_options_remember_me', 'yes', 'yes'),
(409, 'user_registration_login_option_hide_show_password', 'yes', 'yes'),
(410, 'user_registration_login_options_lost_password', 'yes', 'yes'),
(411, 'user_registration_login_options_enable_recaptcha', 'no', 'yes'),
(412, 'user_registration_general_setting_registration_url_options', '', 'yes'),
(413, 'user_registration_general_setting_registration_label', 'Not a member yet? Register now.', 'yes'),
(414, 'user_registration_login_options_prevent_core_login', 'no', 'yes'),
(431, 'wp-smush-settings', 'a:19:{s:11:\"networkwide\";b:0;s:4:\"auto\";b:1;s:5:\"lossy\";b:0;s:10:\"strip_exif\";b:1;s:6:\"resize\";b:0;s:9:\"detection\";b:0;s:8:\"original\";b:0;s:6:\"backup\";b:0;s:10:\"png_to_jpg\";b:0;s:7:\"nextgen\";b:0;s:2:\"s3\";b:0;s:9:\"gutenberg\";b:0;s:3:\"cdn\";b:0;s:11:\"auto_resize\";b:0;s:4:\"webp\";b:1;s:5:\"usage\";b:1;s:17:\"accessible_colors\";b:0;s:9:\"keep_data\";b:1;s:9:\"lazy_load\";b:0;}', 'yes'),
(432, 'wdev-frash', 'a:3:{s:7:\"plugins\";a:1:{s:23:\"wp-smushit/wp-smush.php\";i:1559211631;}s:5:\"queue\";a:1:{s:32:\"fc50097023d0d34c5a66f6cddcf77694\";a:4:{s:6:\"plugin\";s:23:\"wp-smushit/wp-smush.php\";s:4:\"type\";s:4:\"rate\";s:7:\"show_at\";i:1559816431;s:6:\"sticky\";b:1;}}s:4:\"done\";a:1:{i:0;a:6:{s:6:\"plugin\";s:23:\"wp-smushit/wp-smush.php\";s:4:\"type\";s:5:\"email\";s:7:\"show_at\";i:1559211631;s:5:\"state\";s:6:\"ignore\";s:4:\"hash\";s:32:\"fc50097023d0d34c5a66f6cddcf77694\";s:10:\"handled_at\";i:1559372642;}}}', 'no'),
(433, 'wp-smush-install-type', 'existing', 'no'),
(434, 'wp-smush-version', '3.2.0.1', 'no'),
(437, 'smush_global_stats', 'a:9:{s:11:\"size_before\";i:836752;s:10:\"size_after\";i:789196;s:7:\"percent\";d:5.7;s:5:\"human\";s:7:\"46.4 KB\";s:5:\"bytes\";i:47556;s:12:\"total_images\";i:52;s:12:\"resize_count\";i:0;s:14:\"resize_savings\";i:0;s:18:\"conversion_savings\";i:0;}', 'no'),
(438, 'dir_smush_stats', 'a:2:{s:9:\"dir_smush\";a:2:{s:5:\"total\";s:1:\"0\";s:9:\"optimised\";i:0;}s:14:\"combined_stats\";a:0:{}}', 'no'),
(439, 'skip-smush-setup', '1', 'yes'),
(465, 'wp-smush-hide_upgrade_notice', '1', 'no'),
(468, 'wp_super_cache_index_detected', '1', 'no'),
(469, 'wpsupercache_start', '1559212080', 'yes'),
(470, 'wpsupercache_count', '0', 'yes'),
(472, 'wpsupercache_gc_time', '1560321484', 'yes'),
(473, 'ossdl_off_blog_url', 'http://localhost/foodblog', 'yes'),
(474, 'ossdl_off_cdn_url', 'http://localhost/foodblog', 'yes'),
(475, 'ossdl_off_include_dirs', 'wp-content,wp-includes', 'yes'),
(476, 'ossdl_off_exclude', '.php', 'yes'),
(477, 'ossdl_cname', '', 'yes'),
(478, 'supercache_stats', 'a:3:{s:9:\"generated\";i:1559212621;s:10:\"supercache\";a:5:{s:7:\"expired\";i:0;s:6:\"cached\";i:0;s:5:\"fsize\";i:0;s:11:\"cached_list\";a:0:{}s:12:\"expired_list\";a:0:{}}s:7:\"wpcache\";a:5:{s:7:\"expired\";i:0;s:6:\"cached\";i:0;s:5:\"fsize\";i:0;s:11:\"cached_list\";a:0:{}s:12:\"expired_list\";a:0:{}}}', 'yes'),
(479, 'preload_cache_counter', 'a:2:{s:1:\"c\";i:100;s:1:\"t\";i:1560322098;}', 'yes'),
(490, 'updraftplus_version', '1.16.14', 'yes'),
(491, 'updraft_updraftvault', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-b7dbb1981e73336610a403d2aae13083\";a:3:{s:5:\"token\";s:0:\"\";s:5:\"email\";s:0:\"\";s:5:\"quota\";i:-1;}}}', 'yes'),
(492, 'updraft_dropbox', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-9cdacb344bd684c54a49e2fccb9170b3\";a:4:{s:6:\"appkey\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:6:\"folder\";s:0:\"\";s:15:\"tk_access_token\";s:0:\"\";}}}', 'yes'),
(493, 'updraft_s3', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-bd8444b68a59bc4ea65176c26fd382fe\";a:3:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";}}}', 'yes'),
(494, 'updraft_cloudfiles', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-64a8e4c0d130859ca62f0689deaa868c\";a:5:{s:7:\"authurl\";s:35:\"https://auth.api.rackspacecloud.com\";s:6:\"region\";s:3:\"DFW\";s:4:\"user\";s:21:\"adminportal@qtsin.net\";s:6:\"apikey\";s:0:\"\";s:4:\"path\";s:0:\"\";}}}', 'yes'),
(495, 'updraft_googledrive', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-e27a9af1fff11b0f91a6e70592e3151e\";a:4:{s:8:\"clientid\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:5:\"token\";s:0:\"\";s:6:\"folder\";s:11:\"UpdraftPlus\";}}}', 'yes'),
(496, 'updraft_onedrive', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'yes'),
(497, 'updraft_ftp', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-e22b1e36ba5414f0cbfc7d18dbcca6f0\";a:5:{s:4:\"host\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";s:4:\"path\";s:0:\"\";s:7:\"passive\";s:1:\"1\";}}}', 'yes'),
(498, 'updraft_azure', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'yes'),
(499, 'updraft_sftp', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'yes'),
(500, 'updraft_googlecloud', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'yes'),
(501, 'updraft_backblaze', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'yes'),
(502, 'updraft_webdav', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'yes'),
(503, 'updraft_s3generic', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-e6618e40b14503ee5331966632ec9442\";a:4:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:8:\"endpoint\";s:0:\"\";}}}', 'yes'),
(504, 'updraft_openstack', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-82077330c03edd7ef69f3fd4b337d576\";a:6:{s:7:\"authurl\";s:0:\"\";s:6:\"tenant\";s:0:\"\";s:6:\"region\";s:0:\"\";s:4:\"user\";s:0:\"\";s:8:\"password\";s:0:\"\";s:4:\"path\";s:0:\"\";}}}', 'yes'),
(505, 'updraft_dreamobjects', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-09e8fccef3e8882b83af0b18cd5fff6d\";a:4:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:8:\"endpoint\";s:26:\"objects-us-east-1.dream.io\";}}}', 'yes'),
(506, 'updraftplus-addons_siteid', 'c288929c398dd1e36534dfe03117b951', 'no'),
(508, 'updraft_retain_extrarules', 'a:0:{}', 'yes'),
(509, 'updraft_email', 'sarkarsusmita253@gmail.com', 'yes'),
(510, 'updraft_report_warningsonly', 'a:0:{}', 'yes'),
(511, 'updraft_report_wholebackup', 'a:0:{}', 'yes'),
(512, 'updraft_extradbs', 'a:0:{}', 'yes'),
(513, 'updraft_include_more_path', 'a:0:{}', 'yes'),
(514, 'updraft_interval', 'weekly', 'yes'),
(515, 'updraft_retain', '2', 'yes'),
(518, 'updraft_interval_database', 'weekly', 'yes'),
(519, 'updraft_retain_db', '2', 'yes'),
(520, 'updraft_include_plugins', '1', 'yes'),
(521, 'updraft_include_themes', '1', 'yes'),
(522, 'updraft_include_uploads', '1', 'yes'),
(523, 'updraft_include_uploads_exclude', 'backup*,*backups,backwpup*,wp-clone,snapshots', 'yes'),
(524, 'updraft_include_others', '1', 'yes'),
(525, 'updraft_include_others_exclude', 'upgrade,cache,updraft,backup*,*backups,mysql.sql,debug.log', 'yes'),
(526, 'updraft_split_every', '400', 'yes'),
(527, 'updraft_delete_local', '1', 'yes'),
(528, 'updraft_dir', 'updraft', 'yes'),
(529, 'updraft_service', '', 'yes'),
(530, 'updraft_debug_mode', '0', 'yes'),
(531, 'updraft_ssl_useservercerts', '0', 'yes'),
(532, 'updraft_ssl_disableverify', '0', 'yes'),
(533, 'updraft_ssl_nossl', '0', 'yes'),
(534, 'updraft_auto_updates', '0', 'yes'),
(535, 'updraft_lastmessage', 'The backup apparently succeeded and is now complete (Jun 12 06:52:31)', 'yes'),
(536, 'updraftplus_unlocked_fd', '1', 'no'),
(537, 'updraftplus_last_lock_time_fd', '2019-06-12 06:49:07', 'no'),
(538, 'updraftplus_semaphore_fd', '0', 'no'),
(539, 'updraft_last_scheduled_fd', '1560322147', 'yes'),
(541, 'updraft_backup_history', 'a:2:{i:1560322147;a:19:{s:7:\"plugins\";a:1:{i:0;s:57:\"backup_2019-06-12-0649_Food_Blog_6308ebe3abcd-plugins.zip\";}s:12:\"plugins-size\";i:30110920;s:6:\"themes\";a:1:{i:0;s:56:\"backup_2019-06-12-0649_Food_Blog_6308ebe3abcd-themes.zip\";}s:11:\"themes-size\";i:10939850;s:7:\"uploads\";a:1:{i:0;s:57:\"backup_2019-06-12-0649_Food_Blog_6308ebe3abcd-uploads.zip\";}s:12:\"uploads-size\";i:4110559;s:6:\"others\";a:1:{i:0;s:56:\"backup_2019-06-12-0649_Food_Blog_6308ebe3abcd-others.zip\";}s:11:\"others-size\";i:2994;s:2:\"db\";s:51:\"backup_2019-06-12-0649_Food_Blog_6308ebe3abcd-db.gz\";s:7:\"db-size\";i:53818;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:5:{s:8:\"plugins0\";s:40:\"cf8066c3b63c4d508a72fa7838baa9a1e4e4cf09\";s:7:\"themes0\";s:40:\"f03d622ea5ec7b82eebb817812aaca24c261247d\";s:8:\"uploads0\";s:40:\"3d723418c2d518d823b129eda6991abfd6d933bf\";s:7:\"others0\";s:40:\"98329eeb41ba93cc074684df72f2f0198d389e1d\";s:3:\"db0\";s:40:\"96a6fe62fc7e129e09c0c439577e57a0ba6d79f6\";}s:6:\"sha256\";a:5:{s:8:\"plugins0\";s:64:\"0cc1d34204269bae6da95ea2b9f97d6a429f80b5e3dc328c252ad7115caa1afe\";s:7:\"themes0\";s:64:\"cb3931b0242d2ceceb058efc59dad887b24b9722e10ec7a03f02c417718aea66\";s:8:\"uploads0\";s:64:\"e207426fa1e3f59f9f5b83c6410a9c190591ea1afcdca408d6dae77a6f3c5476\";s:7:\"others0\";s:64:\"6ee34431462eb313e869b84cad64a0658783cf16294c6e47b9eaf33d6cbc6f43\";s:3:\"db0\";s:64:\"d87333ef17f9599cd52b01a52b6cd8897da95c06734103b82929c89c7cb0f7ea\";}}s:5:\"nonce\";s:12:\"6308ebe3abcd\";s:7:\"service\";a:1:{i:0;s:4:\"none\";}s:20:\"service_instance_ids\";a:0:{}s:11:\"always_keep\";b:0;s:19:\"files_enumerated_at\";a:4:{s:7:\"plugins\";i:1560322148;s:6:\"themes\";i:1560322182;s:7:\"uploads\";i:1560322190;s:6:\"others\";i:1560322198;}s:18:\"created_by_version\";s:7:\"1.16.14\";s:21:\"last_saved_by_version\";s:7:\"1.16.14\";s:12:\"is_multisite\";b:0;}i:1559215300;a:19:{s:7:\"plugins\";a:1:{i:0;s:57:\"backup_2019-05-30-1121_Food_Blog_3b36b8d0aec9-plugins.zip\";}s:12:\"plugins-size\";i:14535970;s:6:\"themes\";a:1:{i:0;s:56:\"backup_2019-05-30-1121_Food_Blog_3b36b8d0aec9-themes.zip\";}s:11:\"themes-size\";i:10939842;s:7:\"uploads\";a:1:{i:0;s:57:\"backup_2019-05-30-1121_Food_Blog_3b36b8d0aec9-uploads.zip\";}s:12:\"uploads-size\";i:1791241;s:6:\"others\";a:1:{i:0;s:56:\"backup_2019-05-30-1121_Food_Blog_3b36b8d0aec9-others.zip\";}s:11:\"others-size\";i:2994;s:2:\"db\";s:51:\"backup_2019-05-30-1121_Food_Blog_3b36b8d0aec9-db.gz\";s:7:\"db-size\";i:36580;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:5:{s:8:\"plugins0\";s:40:\"845e49f58cebda0da1edc1482a008746d890e647\";s:7:\"themes0\";s:40:\"934720a0b26fed00776f8d16de2d220c6fe469f0\";s:8:\"uploads0\";s:40:\"fcc6d387bde07e84a63853f4b62276a237a73a46\";s:7:\"others0\";s:40:\"98329eeb41ba93cc074684df72f2f0198d389e1d\";s:3:\"db0\";s:40:\"f1367796b2eb91c7d37a8bc04d93bfdd435db167\";}s:6:\"sha256\";a:5:{s:8:\"plugins0\";s:64:\"294a06c025b10257c650964c10d41d8cb47b6059c694d4ac7320c9815f7d8add\";s:7:\"themes0\";s:64:\"8120fc16fdf128e2f75b7e7e8e44b91f2c7706858601c8a645a56d8d4adf0fac\";s:8:\"uploads0\";s:64:\"b2fa7a5e2abc92e13f1d5eeb2c0f105a781898a43230a16e796733848ec7a828\";s:7:\"others0\";s:64:\"6ee34431462eb313e869b84cad64a0658783cf16294c6e47b9eaf33d6cbc6f43\";s:3:\"db0\";s:64:\"d26c9b042c24c4f5144e762e1d2cfef43cf795591c49ee150fdc2750e2d73320\";}}s:5:\"nonce\";s:12:\"3b36b8d0aec9\";s:7:\"service\";a:1:{i:0;s:4:\"none\";}s:20:\"service_instance_ids\";a:0:{}s:11:\"always_keep\";b:0;s:19:\"files_enumerated_at\";a:4:{s:7:\"plugins\";i:1559215301;s:6:\"themes\";i:1559215311;s:7:\"uploads\";i:1559215316;s:6:\"others\";i:1559215318;}s:18:\"created_by_version\";s:7:\"1.16.14\";s:21:\"last_saved_by_version\";s:7:\"1.16.14\";s:12:\"is_multisite\";b:0;}}', 'no'),
(542, 'updraft_last_backup', 'a:5:{s:11:\"backup_time\";i:1560322147;s:12:\"backup_array\";a:11:{s:7:\"plugins\";a:1:{i:0;s:57:\"backup_2019-06-12-0649_Food_Blog_6308ebe3abcd-plugins.zip\";}s:12:\"plugins-size\";i:30110920;s:6:\"themes\";a:1:{i:0;s:56:\"backup_2019-06-12-0649_Food_Blog_6308ebe3abcd-themes.zip\";}s:11:\"themes-size\";i:10939850;s:7:\"uploads\";a:1:{i:0;s:57:\"backup_2019-06-12-0649_Food_Blog_6308ebe3abcd-uploads.zip\";}s:12:\"uploads-size\";i:4110559;s:6:\"others\";a:1:{i:0;s:56:\"backup_2019-06-12-0649_Food_Blog_6308ebe3abcd-others.zip\";}s:11:\"others-size\";i:2994;s:2:\"db\";s:51:\"backup_2019-06-12-0649_Food_Blog_6308ebe3abcd-db.gz\";s:7:\"db-size\";i:53818;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:5:{s:8:\"plugins0\";s:40:\"cf8066c3b63c4d508a72fa7838baa9a1e4e4cf09\";s:7:\"themes0\";s:40:\"f03d622ea5ec7b82eebb817812aaca24c261247d\";s:8:\"uploads0\";s:40:\"3d723418c2d518d823b129eda6991abfd6d933bf\";s:7:\"others0\";s:40:\"98329eeb41ba93cc074684df72f2f0198d389e1d\";s:3:\"db0\";s:40:\"96a6fe62fc7e129e09c0c439577e57a0ba6d79f6\";}s:6:\"sha256\";a:5:{s:8:\"plugins0\";s:64:\"0cc1d34204269bae6da95ea2b9f97d6a429f80b5e3dc328c252ad7115caa1afe\";s:7:\"themes0\";s:64:\"cb3931b0242d2ceceb058efc59dad887b24b9722e10ec7a03f02c417718aea66\";s:8:\"uploads0\";s:64:\"e207426fa1e3f59f9f5b83c6410a9c190591ea1afcdca408d6dae77a6f3c5476\";s:7:\"others0\";s:64:\"6ee34431462eb313e869b84cad64a0658783cf16294c6e47b9eaf33d6cbc6f43\";s:3:\"db0\";s:64:\"d87333ef17f9599cd52b01a52b6cd8897da95c06734103b82929c89c7cb0f7ea\";}}}s:7:\"success\";i:1;s:6:\"errors\";a:0:{}s:12:\"backup_nonce\";s:12:\"6308ebe3abcd\";}', 'yes'),
(547, 'updraftplus_tour_cancelled_on', 'backup_now', 'yes'),
(551, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(580, 'woocommerce_store_address', 'Kolkata', 'yes'),
(581, 'woocommerce_store_address_2', 'Kolkata', 'yes'),
(582, 'woocommerce_store_city', 'kolkata', 'yes'),
(583, 'woocommerce_default_country', 'IN:WB', 'yes'),
(584, 'woocommerce_store_postcode', '700056', 'yes'),
(585, 'woocommerce_allowed_countries', 'all', 'yes'),
(586, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(587, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(588, 'woocommerce_ship_to_countries', '', 'yes'),
(589, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(590, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(591, 'woocommerce_calc_taxes', 'yes', 'yes'),
(592, 'woocommerce_enable_coupons', 'yes', 'yes'),
(593, 'woocommerce_calc_discounts_sequentially', 'yes', 'no'),
(594, 'woocommerce_currency', 'INR', 'yes'),
(595, 'woocommerce_currency_pos', 'left', 'yes'),
(596, 'woocommerce_price_thousand_sep', ',', 'yes'),
(597, 'woocommerce_price_decimal_sep', '.', 'yes'),
(598, 'woocommerce_price_num_decimals', '2', 'yes'),
(599, 'woocommerce_shop_page_id', '184', 'yes'),
(600, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(601, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(602, 'woocommerce_placeholder_image', '182', 'yes'),
(603, 'woocommerce_weight_unit', 'kg', 'yes'),
(604, 'woocommerce_dimension_unit', 'cm', 'yes'),
(605, 'woocommerce_enable_reviews', 'yes', 'yes'),
(606, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(607, 'woocommerce_review_rating_verification_required', 'yes', 'no'),
(608, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(609, 'woocommerce_review_rating_required', 'yes', 'no'),
(610, 'woocommerce_manage_stock', 'yes', 'yes'),
(611, 'woocommerce_hold_stock_minutes', '60', 'no'),
(612, 'woocommerce_notify_low_stock', 'yes', 'no'),
(613, 'woocommerce_notify_no_stock', 'yes', 'no'),
(614, 'woocommerce_stock_email_recipient', 'sarkarsusmita253@gmail.com', 'no'),
(615, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(616, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(617, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(618, 'woocommerce_stock_format', '', 'yes'),
(619, 'woocommerce_file_download_method', 'force', 'no'),
(620, 'woocommerce_downloads_require_login', 'no', 'no'),
(621, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(622, 'woocommerce_prices_include_tax', 'no', 'yes'),
(623, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(624, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(625, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(626, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(627, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(628, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(629, 'woocommerce_price_display_suffix', '', 'yes'),
(630, 'woocommerce_tax_total_display', 'itemized', 'no'),
(631, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(632, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(633, 'woocommerce_ship_to_destination', 'billing', 'no'),
(634, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(635, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(636, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(637, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(638, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(639, 'woocommerce_registration_generate_username', 'yes', 'no'),
(640, 'woocommerce_registration_generate_password', 'yes', 'no'),
(641, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(642, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(643, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(644, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(645, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(646, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(647, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(648, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(649, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(650, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(651, 'woocommerce_email_from_name', 'Food Blog', 'no'),
(652, 'woocommerce_email_from_address', 'admin@mail.com', 'no'),
(653, 'woocommerce_email_header_image', '', 'no'),
(654, 'woocommerce_email_footer_text', '{site_title}<br />Built with <a href=\"https://woocommerce.com/\">WooCommerce</a>', 'no'),
(655, 'woocommerce_email_base_color', '#96588a', 'no'),
(656, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(657, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(658, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(659, 'woocommerce_cart_page_id', '185', 'yes'),
(660, 'woocommerce_checkout_page_id', '186', 'yes'),
(661, 'woocommerce_myaccount_page_id', '187', 'yes'),
(662, 'woocommerce_terms_page_id', '188', 'no'),
(663, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(664, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(665, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(666, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(667, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(668, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(669, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(670, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(671, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(672, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(673, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(674, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(675, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(676, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(677, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(678, 'woocommerce_api_enabled', 'no', 'yes'),
(679, 'woocommerce_allow_tracking', 'yes', 'no'),
(680, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(681, 'woocommerce_single_image_width', '600', 'yes'),
(682, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(683, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(684, 'woocommerce_demo_store', 'no', 'no'),
(685, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(686, 'current_theme_supports_woocommerce', 'no', 'yes'),
(687, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(689, 'product_cat_children', 'a:0:{}', 'yes'),
(690, 'default_product_cat', '21', 'yes'),
(692, 'smush-in-progress-182', '1', 'yes'),
(693, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(694, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(695, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(696, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(697, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(698, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(699, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(700, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(701, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(702, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(703, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(704, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(705, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(706, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(710, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(714, '_transient_product_query-transient-version', '1560322075', 'yes'),
(718, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:114:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:98:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:103:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1559593867;}', 'no'),
(725, 'woocommerce_obw_last_completed_step', 'activate', 'yes'),
(728, 'woocommerce_product_type', 'physical', 'yes'),
(731, 'woocommerce_tracker_last_send', '1560322135', 'yes'),
(735, 'woocommerce_ppec_paypal_settings', 'a:3:{s:7:\"enabled\";s:3:\"yes\";s:16:\"reroute_requests\";s:3:\"yes\";s:5:\"email\";s:14:\"admin@mail.com\";}', 'yes'),
(736, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(737, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(738, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(741, 'jetpack_activated', '1', 'yes'),
(744, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(745, 'jetpack_options', 'a:4:{s:7:\"version\";s:16:\"7.3.1:1559594283\";s:11:\"old_version\";s:16:\"7.3.1:1559594283\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:43213;}', 'yes'),
(746, 'wc_ppec_version', '1.6.14', 'yes'),
(747, 'jetpack_sync_settings_disable', '0', 'yes'),
(752, 'woocommerce_version', '3.6.4', 'yes'),
(753, 'woocommerce_db_version', '3.6.4', 'yes'),
(756, 'jetpack_testimonial', '0', 'yes'),
(763, 'do_activate', '0', 'yes'),
(770, '_transient_shipping-transient-version', '1559598034', 'yes'),
(771, 'woocommerce_flat_rate_1_settings', 'a:6:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:0:\"\";s:13:\"class_cost_22\";s:3:\"200\";s:13:\"no_class_cost\";s:3:\"100\";s:4:\"type\";s:5:\"class\";}', 'yes'),
(772, '_transient_timeout_jetpack_file_data_7.3.1', '1562099949', 'no');
INSERT INTO `dbbs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(773, '_transient_jetpack_file_data_7.3.1', 'a:62:{s:32:\"c22c48d7cfe9d38dff2864cfea64636a\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"933d4f6d290580156e0652ce850af1b2\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"fb5c4814ddc3946a3f22cc838fcb2af3\";a:15:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5813eda53235a9a81a69b1f6a4a15db6\";a:15:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7ef4ca32a1c84fc10ef50c8293cae5df\";a:15:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:80:\"Let readers use WordPress.com, Twitter, Facebook, or Google+ accounts to comment\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"c5331bfc2648dfeeebe486736d79a72c\";a:15:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:81:\"Add a customizable contact form to any post or page using the Jetpack Form Block.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:214:\"contact, form, grunion, feedback, submission, contact form, email, feedback, contact form plugin, custom form, custom form plugin, form builder, forms, form maker, survey, contact by jetpack, contact us, forms free\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"275642ae868612fff9f668ce23aef464\";a:15:{s:4:\"name\";s:9:\"Copy Post\";s:11:\"description\";s:53:\"Copy an existing post\'s content into a new draft post\";s:14:\"jumpstart_desc\";s:53:\"Copy an existing post\'s content into a new draft post\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"7.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:15:\"copy, duplicate\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"707c77d2e8cb0c12d094e5423c8beda8\";a:15:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cd499b1678cfe3aabfc8ca0d3eb7e8b9\";a:15:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:88:\"Adds options for CSS preprocessor use, disabling the theme\'s CSS, or custom image width.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7d266d6546645f42cf52a66387699c50\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5d436678d5e010ac6b0f157aa1021554\";a:15:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2c9ff765b826940496a65c0f927a594a\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"092b94702bb483a5472578283c2103d6\";a:15:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"6bd77e09440df2b63044cf8cb7963773\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ee1a10e2ef5733ab19eb1eb552d5ecb3\";a:15:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"284c08538b0bdc266315b2cf80b9c044\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0ce5c3ac630dea9f41215e48bb0f52f3\";a:15:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"87da2858d4f9cadb6a44fdcf32e8d2b5\";a:15:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"004962cb7cb9ec2b64769ac4df509217\";a:15:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:75:\"Use the LaTeX markup language to write mathematical equations and formulas.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7f408184bee8850d439c01322867e72c\";a:15:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:137:\"Speed up your site and create a smoother viewing experience by loading images as visitors scroll down the screen, instead of all at once.\";s:14:\"jumpstart_desc\";s:164:\"Lazy-loading images improve your site\'s speed and create a smoother viewing experience. Images will load as visitors scroll down the screen, instead of all at once.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:150:\"mobile, theme, fast images, fast image, image, lazy, lazy load, lazyload, images, lazy images, thumbnail, image lazy load, lazy loading, load, loading\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2ad914b747f382ae918ed3b37077d4a1\";a:15:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b347263e3470979442ebf0514e41e893\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"589982245aa6f495b72ab7cf57a1a48e\";a:15:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d3bec8e063d637bc285018241b783725\";a:15:{s:4:\"name\";s:21:\"WordPress.com Toolbar\";s:11:\"description\";s:91:\"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:19:\"adminbar, masterbar\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"6ab1c3e749bcfba2dedbaebe6c9fc614\";a:15:{s:4:\"name\";s:12:\"Mobile Theme\";s:11:\"description\";s:31:\"Enable the Jetpack Mobile theme\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"21\";s:20:\"recommendation_order\";s:2:\"11\";s:10:\"introduced\";s:3:\"1.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:31:\"Appearance, Mobile, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:24:\"mobile, theme, minileven\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b7be7da643ec641511839ecc6afb6def\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d54f83ff429a8a37ace796de98459411\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0f8b373fa12c825162c0b0bc20b8bbdd\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5d7b0750cb34a4a72a44fa67790de639\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f07fde8db279ffb0116c727df72c6374\";a:15:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:118:\"Jetpack’s downtime monitoring will continuously watch your site, and alert you the moment that downtime is detected.\";s:14:\"jumpstart_desc\";s:61:\"Receive immediate notifications if your site goes down, 24/7.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:123:\"monitor, uptime, downtime, monitoring, maintenance, maintenance mode, offline, site is down, site down, down, repair, error\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"136a5445a49150db75472862f3d3aefb\";a:15:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"395d8ae651afabb54d1e98440674b384\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0b7b5e3ff80355a67c5485b0d00cd1a2\";a:15:{s:4:\"name\";s:9:\"Asset CDN\";s:11:\"description\";s:154:\"Jetpack’s Site Accelerator loads your site faster by optimizing your images and serving your images and static files from our global network of servers.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"6.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:34:\"Recommended, Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:160:\"site accelerator, accelerate, static, assets, javascript, css, files, performance, cdn, bandwidth, content delivery network, pagespeed, combine js, optimize css\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4484ac68583fbbaab0ef698cdc986950\";a:15:{s:4:\"name\";s:9:\"Image CDN\";s:11:\"description\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:14:\"jumpstart_desc\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:34:\"Recommended, Jumpstart, Appearance\";s:25:\"additional_search_queries\";s:171:\"photon, photo cdn, image cdn, speed, compression, resize, responsive images, responsive, content distribution network, optimize, page speed, image optimize, photon jetpack\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"509aac35e28ac722a331f67613cd27ec\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"6f30193afa5b1360e3fa2676501b5e3a\";a:15:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"3e9f8bd3755d92e8e5d06966a957beb8\";a:15:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:135:\"Protect yourself from brute force and distributed brute force attacks, which are the most common way for hackers to get into your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:173:\"security, jetpack protect, secure, protection, botnet, brute force, protect, login, bot, password, passwords, strong passwords, strong password, wp-login.php,  protect admin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0cacc8ab2145ad11cb54d181a98aa550\";a:15:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:128:\"Publicize makes it easy to share your site’s posts on several social media networks automatically when you publish a new post.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:220:\"facebook, jetpack publicize, twitter, tumblr, linkedin, social, tweet, connections, sharing, social media, automated, automated sharing, auto publish, auto tweet and like, auto tweet, facebook auto post, facebook posting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"a528c2f803a92c5c2effa67cd33ab33a\";a:15:{s:4:\"name\";s:20:\"Progressive Web Apps\";s:11:\"description\";s:85:\"Speed up and improve the reliability of your site using the latest in web technology.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"18\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:26:\"manifest, pwa, progressive\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"329b8efce059081d46936ece0c6736b3\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5fdd42d482712fbdaf000b28ea7adce9\";a:15:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:360:\"related, jetpack related posts, related posts for wordpress, related posts, popular posts, popular, related content, related post, contextual, context, contextual related posts, related articles, similar posts, easy related posts, related page, simple related posts, free related posts, related thumbnails, similar, engagement, yet another related posts plugin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2c5096ef610018e98a8bcccfbea4471e\";a:15:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:87:\"Enhanced search, powered by Elasticsearch, a powerful replacement for WordPress search.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:110:\"search, elastic, elastic search, elasticsearch, fast search, search results, search performance, google search\";s:12:\"plan_classes\";s:8:\"business\";}s:32:\"0d81dd7df3ad2f245e84fd4fb66bf829\";a:15:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"32aaa676b3b6c9f3ef22430e1e0bca24\";a:15:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:120:\"Add Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:229:\"share, sharing, sharedaddy, social buttons, buttons, share facebook, share twitter, social media sharing, social media share, social share, icons, email, facebook, twitter, linkedin, pinterest, pocket, social widget, social media\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"948472b453cda59b38bb7c37af889af0\";a:15:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:177:\"Shortcodes are WordPress-specific markup that let you add media from popular sites. This feature is no longer necessary as the editor now handles media embeds rather gracefully.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7d00a6ca0a79fbe893275aaf6ed6ae42\";a:15:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:82:\"Generates shorter links so you can have more space to write on social media sites.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"372e711395f23c466e04d4fd07f73099\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2ea687cec293289a2a3e5f0459e79768\";a:15:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:11:\"Recommended\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2fe9dc2c7389d4f0825a0b23bc8b19d1\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e7cf8a7e0f151ccf7cbdc6d8f118f316\";a:15:{s:4:\"name\";s:14:\"Secure Sign On\";s:11:\"description\";s:62:\"Allow users to log into this site using WordPress.com accounts\";s:14:\"jumpstart_desc\";s:98:\"Lets you log in to all your Jetpack-enabled sites with one click using your WordPress.com account.\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:34:\"sso, single sign on, login, log in\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"34fb073ed896af853ed48bd5739240cb\";a:15:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"8de0dfff24a17cf0fa0011dfc691a3f3\";a:15:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:87:\"Allow users to subscribe to your posts and comments and receive notifications via email\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4744f348db095538d3edcacb0ed99c89\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d89db0d934b39f86065ff58e73594070\";a:15:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"01987a7ba5e19786f2992501add8181a\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"20459cc462babfc5a82adf6b34f6e8b1\";a:15:{s:4:\"name\";s:20:\"Backups and Scanning\";s:11:\"description\";s:100:\"Protect your site with daily or real-time backups and automated virus scanning and threat detection.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:386:\"backup, cloud backup, database backup, restore, wordpress backup, backup plugin, wordpress backup plugin, back up, backup wordpress, backwpup, vaultpress, backups, off-site backups, offsite backup, offsite, off-site, antivirus, malware scanner, security, virus, viruses, prevent viruses, scan, anti-virus, antimalware, protection, safe browsing, malware, wp security, wordpress security\";s:12:\"plan_classes\";s:27:\"personal, business, premium\";}s:32:\"836245eb0a8f0c5272542305a88940c1\";a:15:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e94397a5c47c1be995eff613e65a674f\";a:15:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:101:\"Save on hosting storage and bandwidth costs by streaming fast, ad-free video from our global network.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:118:\"video, videos, videopress, video gallery, video player, videoplayer, mobile video, vimeo, youtube, html5 video, stream\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"032cd76e08467c732ccb026efda0c9cd\";a:15:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"9b3e84beedf2e96f1ac5dd6498d2b1aa\";a:15:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:49:\"Provides additional widgets for use on your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7724fd9600745cf93e37cc09282e1a37\";a:15:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";s:12:\"plan_classes\";s:17:\"premium, business\";}s:32:\"5b8f8e5b5a1887e3c0393cb78d5143a3\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}}', 'no'),
(774, 'jetpack_available_modules', 'a:1:{s:5:\"7.3.1\";a:43:{s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:9:\"copy-post\";s:3:\"7.0\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"photon-cdn\";s:3:\"6.6\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:3:\"pwa\";s:5:\"5.6.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(775, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"20\";}', 'yes'),
(781, 'jetpack_tos_agreed', '1', 'yes'),
(782, 'jetpack_secrets', 'a:1:{s:18:\"jetpack_register_1\";a:3:{s:8:\"secret_1\";s:32:\"NeZBR733UeVJqev4TbymIi2ODeqmVz2H\";s:8:\"secret_2\";s:32:\"N8EwUkPUgFCCgRqftvyUJbsIkFNtedbd\";s:3:\"exp\";i:1559595027;}}', 'no'),
(783, 'wc_connect_options', 'a:1:{s:12:\"tos_accepted\";b:1;}', 'yes'),
(827, 'wc_gateway_ppec_spb_notice_dismissed', 'yes', 'yes'),
(830, '_transient_timeout_wc_shipping_method_count', '1562189866', 'no'),
(831, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1559597437\";s:5:\"value\";i:2;}', 'no'),
(848, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:14:\"admin@mail.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:14:\"admin@mail.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:10:\"page_style\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:7:\"susmita\";s:12:\"api_password\";s:6:\"123456\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";}', 'yes'),
(849, 'woocommerce_gateway_order', 'a:5:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;s:11:\"ppec_paypal\";i:4;}', 'yes'),
(858, 'wpsc_feed_list', 'a:0:{}', 'yes'),
(869, '_transient_product-transient-version', '1560322076', 'yes'),
(872, '_transient_timeout_wc_shipping_method_count_legacy', '1562191245', 'no'),
(873, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1559598034\";s:5:\"value\";i:2;}', 'no'),
(897, '_transient_timeout_wc_product_children_195', '1562191808', 'no'),
(898, '_transient_wc_product_children_195', 'a:2:{s:3:\"all\";a:1:{i:0;i:196;}s:7:\"visible\";a:1:{i:0;i:196;}}', 'no'),
(899, '_transient_timeout_wc_var_prices_195', '1562914112', 'no'),
(900, '_transient_wc_var_prices_195', '{\"version\":\"1560322076\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"196\":\"245.00\"},\"regular_price\":{\"196\":\"250.00\"},\"sale_price\":{\"196\":\"245.00\"}},\"e1b88e1c9a8573a0fff4a38a491fcd6d\":{\"price\":{\"196\":\"245.00\"},\"regular_price\":{\"196\":\"250.00\"},\"sale_price\":{\"196\":\"245.00\"}}}', 'no'),
(907, '_transient_wc_attribute_taxonomies', 'a:1:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:4:\"size\";s:15:\"attribute_label\";s:4:\"Size\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(928, '_transient_orders-transient-version', '1559601323', 'yes'),
(931, '_transient_timeout_wc_term_counts', '1562193241', 'no'),
(932, '_transient_wc_term_counts', 'a:1:{i:21;s:1:\"3\";}', 'no'),
(936, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:6;s:3:\"all\";i:6;s:8:\"approved\";s:1:\"6\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(937, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"3\";s:14:\"total_comments\";i:3;s:3:\"all\";i:3;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(945, '_transient_timeout_external_ip_address_::1', '1560926872', 'no'),
(946, '_transient_external_ip_address_::1', '103.75.160.46', 'no'),
(949, '_site_transient_timeout_theme_roots', '1560323881', 'no'),
(950, '_site_transient_theme_roots', 'a:5:{s:8:\"explorer\";s:7:\"/themes\";s:8:\"foodblog\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(951, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1560322084;s:7:\"checked\";a:5:{s:8:\"explorer\";s:5:\"1.0.0\";s:8:\"foodblog\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:1:{s:8:\"explorer\";a:6:{s:5:\"theme\";s:8:\"explorer\";s:11:\"new_version\";s:5:\"2.3.0\";s:3:\"url\";s:38:\"https://wordpress.org/themes/explorer/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/explorer.2.3.0.zip\";s:8:\"requires\";s:3:\"4.1\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `dbbs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(952, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1560322086;s:7:\"checked\";a:14:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.0\";s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.3\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.6.2\";s:24:\"example-plugin/index.php\";s:3:\"0.1\";s:9:\"hello.php\";s:5:\"1.7.2\";s:19:\"jetpack/jetpack.php\";s:5:\"7.3.1\";s:23:\"wp-smushit/wp-smush.php\";s:7:\"3.2.0.1\";s:27:\"updraftplus/updraftplus.php\";s:7:\"1.16.14\";s:39:\"user-registration/user-registration.php\";s:7:\"1.6.0.1\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.4\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:6:\"1.6.14\";s:45:\"woocommerce-services/woocommerce-services.php\";s:6:\"1.20.0\";s:27:\"wp-super-cache/wp-cache.php\";s:5:\"1.6.6\";}s:8:\"response\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.1\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:3:\"7.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/jetpack.7.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.1\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"wp-smushit/wp-smush.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:24:\"w.org/plugins/wp-smushit\";s:4:\"slug\";s:10:\"wp-smushit\";s:6:\"plugin\";s:23:\"wp-smushit/wp-smush.php\";s:11:\"new_version\";s:5:\"3.2.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/wp-smushit/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wp-smushit.3.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/wp-smushit/assets/icon-256x256.jpg?rev=1513049\";s:2:\"1x\";s:63:\"https://ps.w.org/wp-smushit/assets/icon-128x128.jpg?rev=1513049\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-smushit/assets/banner-1544x500.png?rev=1863697\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-smushit/assets/banner-772x250.png?rev=1863697\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.1\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"updraftplus/updraftplus.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/updraftplus\";s:4:\"slug\";s:11:\"updraftplus\";s:6:\"plugin\";s:27:\"updraftplus/updraftplus.php\";s:11:\"new_version\";s:7:\"1.16.15\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/updraftplus/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/updraftplus.1.16.15.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/updraftplus/assets/icon-256x256.jpg?rev=1686200\";s:2:\"1x\";s:64:\"https://ps.w.org/updraftplus/assets/icon-128x128.jpg?rev=1686200\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/updraftplus/assets/banner-1544x500.png?rev=1686200\";s:2:\"1x\";s:66:\"https://ps.w.org/updraftplus/assets/banner-772x250.png?rev=1686200\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:39:\"user-registration/user-registration.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/user-registration\";s:4:\"slug\";s:17:\"user-registration\";s:6:\"plugin\";s:39:\"user-registration/user-registration.php\";s:11:\"new_version\";s:5:\"1.6.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/user-registration/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/user-registration.1.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/user-registration/assets/icon-256x256.png?rev=1761761\";s:2:\"1x\";s:70:\"https://ps.w.org/user-registration/assets/icon-128x128.png?rev=1761761\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/user-registration/assets/banner-772x250.jpg?rev=1691813\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.1\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"wp-super-cache/wp-cache.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/wp-super-cache\";s:4:\"slug\";s:14:\"wp-super-cache\";s:6:\"plugin\";s:27:\"wp-super-cache/wp-cache.php\";s:11:\"new_version\";s:5:\"1.6.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-super-cache/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-super-cache.1.6.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-128x128.png?rev=1095422\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-super-cache/assets/banner-772x250.png?rev=1082414\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.1\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.6.4\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.6.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:57:\"w.org/plugins/woocommerce-gateway-paypal-express-checkout\";s:4:\"slug\";s:43:\"woocommerce-gateway-paypal-express-checkout\";s:6:\"plugin\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:11:\"new_version\";s:6:\"1.6.14\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/\";s:7:\"package\";s:93:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.6.14.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1900204\";s:2:\"1x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1900204\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1948167\";s:2:\"1x\";s:98:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1948167\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"woocommerce-services/woocommerce-services.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-services\";s:4:\"slug\";s:20:\"woocommerce-services\";s:6:\"plugin\";s:45:\"woocommerce-services/woocommerce-services.php\";s:11:\"new_version\";s:6:\"1.20.0\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-services/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-services.1.20.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1910075\";s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1910075\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1962920\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1962920\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(954, '_transient_timeout_jetpack_idc_allowed', '1560325736', 'no'),
(955, '_transient_jetpack_idc_allowed', '1', 'no'),
(966, '_transient_timeout_feed_3a39ef5d0240c40133252ada9b3c6e81', '1560365415', 'no');
INSERT INTO `dbbs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(967, '_transient_feed_3a39ef5d0240c40133252ada9b3c6e81', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"UpdraftPlus\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"https://updraftplus.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WordPress\'s leading backup plugin - backup, restore and clone WordPress sites\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"\n	Tue, 11 Jun 2019 23:01:35 +0000	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wordpress.org/?v=5.1.1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:67:\"\n		\n		\n				\n				\n		\n				\n		\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"UpdraftPlus release new update: Includes time-saving option to use existing local backups with UpdraftClone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"http://feedproxy.google.com/~r/UpdraftPlus/~3/yLkUX2OuGWM/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:139:\"https://updraftplus.com/updraftplus-release-new-update-includes-time-saving-option-to-use-existing-local-backups-with-updraftclone/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 05 Jun 2019 10:03:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:28:\"UpdraftPlus development news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:23:\"UpdraftPlus development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:18:\"updraftplus update\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://updraftplus.com/?p=396282\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:932:\"<p>UpdraftPlus have released the latest update for all our users that includes a host of new features, fixes, translation and tweak updates. As part of our drive to develop our services and continually improve on them, the newest exciting feature &#8230; <a href=\"https://updraftplus.com/updraftplus-release-new-update-includes-time-saving-option-to-use-existing-local-backups-with-updraftclone/\">Continue reading <span class=\"meta-nav\">&#8594;</span></a></p>\n<p>The post <a rel=\"nofollow\" href=\"https://updraftplus.com/updraftplus-release-new-update-includes-time-saving-option-to-use-existing-local-backups-with-updraftclone/\">UpdraftPlus release new update: Includes time-saving option to use existing local backups with UpdraftClone</a> appeared first on <a rel=\"nofollow\" href=\"https://updraftplus.com\">UpdraftPlus</a>. <a href=\"http://updraftplus.com\">UpdraftPlus - Backup, restore and migration plugin for WordPress.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"wmullins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5572:\"<p><span style=\"font-weight: 400;\">UpdraftPlus have released the latest update for all our users that includes a host of new features, fixes, translation and tweak updates. As part of our drive to develop our services and continually improve on them, the newest exciting feature we have added allows users to use an already existing local backup (one that is not in remote storage) to create a clone in <a href=\"https://updraftplus.com/updraftclone/\">UpdraftClone</a>. </span></p>\n<p><span style=\"font-weight: 400;\">This means that should you wish to create a new clone, the whole process can now be completed much more quickly as you no longer have to create a new backup of your site first. With this latest update you can now send one of your already existing backups to be cloned and skip straight to the sending stage instead. This feature will be of particular benefit to users that have a large site that could take hours, or even days to backup and shortens the whole cloning process; getting your clone running much sooner than might have been possible previously.</span></p>\n<p><span style=\"font-weight: 400;\">As well as these new changes, the latest update also come with several other updates to hopefully help improve your overall UpdraftPlus experience, including an Italian translation and the option to now delete old directories from the restore progress page</span><span style=\"font-weight: 400;\">.</span></p>\n<p><span style=\"font-weight: 400;\">The changelog for UpdraftPlus Free (1.16.15) and UpdraftPlus Premium (2.16.15) is as follows. </span></p>\n<p><span style=\"font-weight: 400;\">We recommend the update for all users.</span></p>\n<ul>\n<li><span style=\"font-weight: 400;\">FEATURE: Added the ability to use already existing local backups with UpdraftClone</span></li>\n<li>FIX: Prevent PHP fatal error (regression) when WP_Filesystem credentials were needed and wrong ones were supplied</li>\n<li>FIX: Issue where you could not delete old directories from the restore progress page</li>\n<li>FIX: Issue where restore would not run over AJAX if wrong credentials were entered when WordPress requested filesystem credentials</li>\n<li><span style=\"font-weight: 400;\">FIX: Fix incorrect refusal to accept valid email addresses in the UpdraftCentral wizard</span></li>\n<li><span style=\"font-weight: 400;\">TRANSLATION: The Italian translation is now complete and supplied from wordpress.org, so can be removed from the free plugin zip (saves 424KB disk space &#8211; if your mother tongue is not English and you want to improve UpdraftPlus, take a look at: https://translate.wordpress.org/projects/wp-plugins/updraftplus).</span></li>\n<li><span style=\"font-weight: 400;\">TWEAK: Update UpdraftCentral theme module handler to support themes without a name header</span></li>\n<li><span style=\"font-weight: 400;\">TWEAK: Prevent PHP log notice when fetching available theme updates via UpdraftCentral</span></li>\n<li><span style=\"font-weight: 400;\">TWEAK: Add more scheduling options to the built-in list (you can still further add whatever other arbitrary options you like: https://updraftplus.com/faqs/how-can-i-add-any-new-scheduling-interval-to-updraftplus/)</span></li>\n<li><span style=\"font-weight: 400;\">TWEAK: Abstract the code for handling maintenance mode to allow future improvements</span></li>\n<li><span style=\"font-weight: 400;\">TWEAK: Fix a potential wrong file path in an error message</span></li>\n<li><span style=\"font-weight: 400;\">TWEAK: If there is more than one Google Drive folder of the same name, now the selection is deterministic: the oldest one is always used</span></li>\n<li><span style=\"font-weight: 400;\">TWEAK: Infer phpseclib class path from the class name, instead of hard-coding it</span></li>\n<li><span style=\"font-weight: 400;\">TWEAK: Some lines that were meant to include HTML bold in the browser output had lost that effect</span></li>\n<li><span style=\"font-weight: 400;\">TWEAK: Add what entity caused the automatic backup to the logfile</span></li>\n<li><span style=\"font-weight: 400;\">TWEAK: Upon restoration, a couple of known plugin cache directories will be emptied to prevent serving up an intermediate page</span></li>\n<li><span style=\"font-weight: 400;\">TWEAK: Fix a bug in the &#8220;fail on resume&#8221; error-trapping logic which could cause it too resume too many times</span></li>\n<li><span style=\"font-weight: 400;\">TWEAK: Prevent a bogus error message being logged at the end of a successful direct site-to-site transfer</span></li>\n<li><span style=\"font-weight: 400;\">TWEAK: Add backup size information when hovering at the backup data buttons (excluding database button) </span></li>\n<li><span style=\"font-weight: 400;\">TWEAK: Allow the plugin to connect to account and activate Premium licence if no more UpdraftCentral Cloud licences remain and the user enables the &#8216;Add this website to UpdraftCentral&#8217; option in the Premium/Extensions tab</span></li>\n<li><span style=\"font-weight: 400;\">TWEAK: During a restore send structured data to the front end. This is preparing the way for future UX improvements.</span></li>\n</ul>\n<p>The post <a rel=\"nofollow\" href=\"https://updraftplus.com/updraftplus-release-new-update-includes-time-saving-option-to-use-existing-local-backups-with-updraftclone/\">UpdraftPlus release new update: Includes time-saving option to use existing local backups with UpdraftClone</a> appeared first on <a rel=\"nofollow\" href=\"https://updraftplus.com\">UpdraftPlus</a>. <a href=\"http://updraftplus.com\">UpdraftPlus - Backup, restore and migration plugin for WordPress.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:136:\"https://updraftplus.com/updraftplus-release-new-update-includes-time-saving-option-to-use-existing-local-backups-with-updraftclone/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:131:\"https://updraftplus.com/updraftplus-release-new-update-includes-time-saving-option-to-use-existing-local-backups-with-updraftclone/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:76:\"\n		\n		\n				\n				\n		\n				\n		\n		\n		\n		\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"Why WordPress security is so important?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"http://feedproxy.google.com/~r/UpdraftPlus/~3/LScwjovnXEI/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://updraftplus.com/why-wordpress-security-is-so-important/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 30 May 2019 10:48:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:6:{i:0;a:5:{s:4:\"data\";s:20:\"Other WordPress news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:6:\"Backup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:4:\"hack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:8:\"security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://updraftplus.com/?p=393962\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:765:\"<p>Whether WordPress or not, your website is potentially vulnerable to attacks. Recent reports have shown that Google blacklists thousand of websites containing malware and phishing attacks every week. Given how serious potential WordPress security breaches can be for your business, &#8230; <a href=\"https://updraftplus.com/why-wordpress-security-is-so-important/\">Continue reading <span class=\"meta-nav\">&#8594;</span></a></p>\n<p>The post <a rel=\"nofollow\" href=\"https://updraftplus.com/why-wordpress-security-is-so-important/\">Why WordPress security is so important?</a> appeared first on <a rel=\"nofollow\" href=\"https://updraftplus.com\">UpdraftPlus</a>. <a href=\"http://updraftplus.com\">UpdraftPlus - Backup, restore and migration plugin for WordPress.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"wmullins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6386:\"<p><span style=\"font-weight: 400;\">Whether WordPress or not, your website is potentially vulnerable to attacks. </span></p>\n<p><span style=\"font-weight: 400;\">Recent </span><a href=\"https://www.wpbeginner.com/wordpress-security/\"><span style=\"font-weight: 400;\">reports</span></a><span style=\"font-weight: 400;\"> have shown that Google blacklists thousand of websites containing malware and phishing attacks every week. </span></p>\n<p><span style=\"font-weight: 400;\">Given how serious potential WordPress security breaches can be for your business, we hope this article will inform you why you should always closely monitor how secure your website is. </span></p>\n<p><b>Why WordPress security is so important</b></p>\n<p><span style=\"font-weight: 400;\">There may  be many smaller business owners who think their site is in no danger as they do not consider their business big enough to be at threat from hackers. Given that there is money to be made from selling personal information, </span><a href=\"https://wpplugins.tips/why-wordpress-security-is-important-for-your-business/\"><span style=\"font-weight: 400;\">hackers typically don’t care </span></a><span style=\"font-weight: 400;\">how big or small your business is. As you never know when or how your business is going to be attacked, it is essential you protect your site and use the necessary WordPress plugins to increase your security. </span></p>\n<p><span style=\"font-weight: 400;\">Mark Ronso; Marketing Manager at </span><a href=\"http://www.topwritersreview.com/top-10-essay-writing-services/\"><span style=\"font-weight: 400;\">Top Writers Review</span></a><span style=\"font-weight: 400;\"> stated that a business’s reputation can be seriously damaged due to a hacked website. Hackers commonly install malicious software or viruses in order to extract the data in the background, which can result in a loss of trust in your business and customers turning to a competitor. </span></p>\n<p><span style=\"font-weight: 400;\">When your site is attacked, the most immediate threats are the theft of customer’s personal and billing formation. As a result of the theft of customer information, the damage to your company’s reputation could also mean the loss of future income, not just the short term, but also the long term as you will need to invest extra money to rebuild your reputation and restore customer confidence. </span></p>\n<p><b>How to Protect Your WordPress Website from Hackers</b><b></b></p>\n<ul>\n<li><b>Strengthen your passwords – <span style=\"font-weight: 400;\">Always remember to use a strong password, even though it can sometimes be difficult to manage a long list of different passwords, it is absolutely necessary to do so. To make sure you have a strong password, you can use a password generator which respects the rules of password setting. Also remember to change it every two or three months and have it written down in a secure place. </span></b></li>\n<li><b>Change your username – <span style=\"font-weight: 400;\">By default WordPress sets the administrator’s username as “admin”. All hackers knows this and it is the first username they will try when attacking your website. If you want to increase your website’s security, always personalize your username. </span></b></li>\n<li><b>Two-Factor Authentication &#8211; </b><span style=\"font-weight: 400;\">WordPress is compatible with various additional security features such </span><a href=\"https://updraftplus.com/two-factor-authentication-the-two-simplest-and-best-ways-to-enable-it-for-wordpress/\"><span style=\"font-weight: 400;\">two-factor authentication</span></a><span style=\"font-weight: 400;\">, which requires the admins mobile phone to login and gives an extra level of security. </span></li>\n<li><b>Constantly update your website – </b><span style=\"font-weight: 400;\">One of the biggest reasons hackers succeed in hacking a WordPress site is due to the software used to run it  becoming outdated. Whenever your website sends you an alert to update your software, it should be done as a priority. WordPress puts a lot of effort into improving it’s security features and sends constant updates as proof of their work in defending your website from hackers and unwanted attacks. </span></li>\n<li><b>Perform regular backups on your website – <span style=\"font-weight: 400;\">Your car may have a lock, but it doesn’t mean it shouldn’t also be insured against theft.  </span></b></li>\n</ul>\n<p><span style=\"font-weight: 400;\">Backups are like that insurance policy if your security should fail. </span></p>\n<p><span style=\"font-weight: 400;\">You should always have your backup data stored on an external device (such as cloud storage). Having a secure, recently scheduled backup can be achieved by using </span><a href=\"https://updraftplus.com/\"><span style=\"font-weight: 400;\">UpdraftPlus</span></a><span style=\"font-weight: 400;\">. While a backup isn’t necessarily going to protect you from hacking threats, it will help you restore your site should it be maliciously hacked or defaced. Having an </span><a href=\"https://updraftplus.com/\"><span style=\"font-weight: 400;\">UpdraftPlus </span></a><span style=\"font-weight: 400;\">backup of your site can also be extremely helpful if a virus infects your PC, or an employee commits a negligent or malicious act.</span></p>\n<p><span style=\"font-weight: 400;\">Hackers can attack multiple sites at once, at any time and without reason. It doesn’t matter if you are a huge company that delivers financial services or small start-up selling handcrafted gifts, you need to invest in improving your WordPress website security. </span></p>\n<p><span style=\"font-weight: 400;\">Hopefully if you follow these recommendations, your website and your customers financial information will be protected and you will retain the trust and confidence of your customers for years to come. </span></p>\n<p><i><span style=\"font-weight: 400;\">Steven Mehler is a professional writer, experienced in the areas of web development and systems security. </span></i></p>\n<p>The post <a rel=\"nofollow\" href=\"https://updraftplus.com/why-wordpress-security-is-so-important/\">Why WordPress security is so important?</a> appeared first on <a rel=\"nofollow\" href=\"https://updraftplus.com\">UpdraftPlus</a>. <a href=\"http://updraftplus.com\">UpdraftPlus - Backup, restore and migration plugin for WordPress.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://updraftplus.com/why-wordpress-security-is-so-important/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://updraftplus.com/why-wordpress-security-is-so-important/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:82:\"\n		\n		\n				\n				\n		\n				\n		\n		\n		\n		\n		\n		\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"UpdraftVault release new 250GB additional storage option\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"http://feedproxy.google.com/~r/UpdraftPlus/~3/HccMVVBOtdQ/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://updraftplus.com/updraftvault-release-new-250gb-additional-storage-option/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 24 May 2019 13:44:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:8:{i:0;a:5:{s:4:\"data\";s:28:\"UpdraftPlus development news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:18:\"UpdraftPlus growth\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:7:\"backups\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:12:\"cloud backup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:7:\"storage\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:11:\"UpdraftPlus\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:12:\"UpdraftVault\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://updraftplus.com/?p=391865\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:785:\"<p>The team at UpdraftPlus are pleased to share the latest update with our users &#8211; We have released a new 250GB storage upgrade option for your UpdraftVault backups. Alongside the 5GB, 15GB and 50GB UpdraftVault storage options that are already &#8230; <a href=\"https://updraftplus.com/updraftvault-release-new-250gb-additional-storage-option/\">Continue reading <span class=\"meta-nav\">&#8594;</span></a></p>\n<p>The post <a rel=\"nofollow\" href=\"https://updraftplus.com/updraftvault-release-new-250gb-additional-storage-option/\">UpdraftVault release new 250GB additional storage option</a> appeared first on <a rel=\"nofollow\" href=\"https://updraftplus.com\">UpdraftPlus</a>. <a href=\"http://updraftplus.com\">UpdraftPlus - Backup, restore and migration plugin for WordPress.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"wmullins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2780:\"<p><span style=\"font-weight: 400;\">The team at UpdraftPlus are pleased to share the latest update with our users &#8211; We have released a new <a href=\"https://updraftplus.com/shop/updraftplus-vault-storage-250-gb/\">250GB</a> storage upgrade option for your UpdraftVault backups. </span></p>\n<p><span style=\"font-weight: 400;\">Alongside the 5GB, 15GB and 50GB UpdraftVault storage options that are already available, the 250GB option allows users to add additional capacity to any storage space you currently have with UpdraftVault.  </span></p>\n<p><span style=\"font-weight: 400;\">When you sign up for UpdraftPlus Premium, you automatically get 1GB of free backup space as standard. However we know that for some websites, this is not going to be enough to contain all the data that builds up over time. By purchasing a subscription to the additional <a href=\"https://updraftplus.com/shop/updraftplus-vault-storage-250-gb/\">UpdraftVault 250GB</a>, users will be provided the extra space needed that will help prevent any issues that can come from running out of storage space on your site. </span></p>\n<p><span style=\"font-weight: 400;\">Customers also have the option to either pay quarterly, or gain a discount and choose to pay annually instead. </span></p>\n<p><span style=\"font-weight: 400;\">To see the full product description and user agreement, please check out the </span><a href=\"https://updraftplus.com/support/updraftplus-vault-faqs/\"><span style=\"font-weight: 400;\">FAQ page</span></a><span style=\"font-weight: 400;\">. Further information on this and other products can also be viewed at the UpdraftVault </span><a href=\"https://updraftplus.com/updraftvault/\"><span style=\"font-weight: 400;\">Homepage</span></a><span style=\"font-weight: 400;\">.</span></p>\n<p><a href=\"https://updraftplus.com/wp-content/uploads/2019/05/New-Project-51.jpg\"><img class=\"alignnone size-full wp-image-391872\" src=\"https://updraftplus.com/wp-content/uploads/2019/05/New-Project-51.jpg\" alt=\"\" width=\"781\" height=\"153\" srcset=\"https://updraftplus.com/wp-content/uploads/2019/05/New-Project-51.jpg 781w, https://updraftplus.com/wp-content/uploads/2019/05/New-Project-51-300x59.jpg 300w, https://updraftplus.com/wp-content/uploads/2019/05/New-Project-51-768x150.jpg 768w, https://updraftplus.com/wp-content/uploads/2019/05/New-Project-51-510x100.jpg 510w\" sizes=\"(max-width: 781px) 100vw, 781px\" /></a></p>\n<p>&nbsp;</p>\n<p>The post <a rel=\"nofollow\" href=\"https://updraftplus.com/updraftvault-release-new-250gb-additional-storage-option/\">UpdraftVault release new 250GB additional storage option</a> appeared first on <a rel=\"nofollow\" href=\"https://updraftplus.com\">UpdraftPlus</a>. <a href=\"http://updraftplus.com\">UpdraftPlus - Backup, restore and migration plugin for WordPress.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://updraftplus.com/updraftvault-release-new-250gb-additional-storage-option/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://updraftplus.com/updraftvault-release-new-250gb-additional-storage-option/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:76:\"\n		\n		\n				\n				\n		\n				\n		\n		\n		\n		\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"How to take an automatic backup before an update using UpdraftPlus Premium\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"http://feedproxy.google.com/~r/UpdraftPlus/~3/pCYPD-xmdsI/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"https://updraftplus.com/how-to-take-an-automatic-backup-before-an-update-using-updraftplus-premium/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 24 May 2019 08:50:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:6:{i:0;a:5:{s:4:\"data\";s:7:\"Support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:18:\"Training materials\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:16:\"automatic backup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"UpdraftPlus\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:18:\"updraftplus backup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:16:\"UpdraftPlus save\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://updraftplus.com/?p=373156\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:835:\"<p>When updating your WordPress core, plugin or theme, at some point you probably thought, “will these new updates break my site?” The answer to this question is maybe. Confused? It largely depends on the plugins and themes that you currently &#8230; <a href=\"https://updraftplus.com/how-to-take-an-automatic-backup-before-an-update-using-updraftplus-premium/\">Continue reading <span class=\"meta-nav\">&#8594;</span></a></p>\n<p>The post <a rel=\"nofollow\" href=\"https://updraftplus.com/how-to-take-an-automatic-backup-before-an-update-using-updraftplus-premium/\">How to take an automatic backup before an update using UpdraftPlus Premium</a> appeared first on <a rel=\"nofollow\" href=\"https://updraftplus.com\">UpdraftPlus</a>. <a href=\"http://updraftplus.com\">UpdraftPlus - Backup, restore and migration plugin for WordPress.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"wmullins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8775:\"<p><span style=\"font-weight: 400;\">When updating your WordPress core, plugin or theme, at some point you probably thought, “will these new updates break my site?” </span></p>\n<p><span style=\"font-weight: 400;\">The answer to this question is </span><i><span style=\"font-weight: 400;\">maybe.</span></i><span style=\"font-weight: 400;\"> Confused? It largely depends on the plugins and themes that you currently have installed. If they are compatible with the latest version of WordPress, then updating them should not break your site. But if a core, plugin or theme is not compatible; post update, the chances of a broken site increase. As such, it is always best to always take a backup before updating.</span></p>\n<p><span style=\"font-weight: 400;\">You <em>could</em> choose to take your backups manually. However, this is not recommended as it is all too easy to simply forget to take regular backups or to mistakenly skip a step in the process. Instead we recommend making your backups automatic, so you are always up to date. When trying to update something on your site like a plugin or the WordPress core, you should first take a backup of the current plugins/core on your WordPress site before executing the update. UpdraftPlus has been designed to have a system that does just that &#8211; we call it &#8216;Automatic Backups.&#8217;</span></p>\n<p><span style=\"font-weight: 400;\">If you do decide to turn on automatic updates, then all your updates will run in the background and will no longer require permission. Our </span><a href=\"https://updraftplus.com/shop/autobackup\"><span style=\"font-weight: 400;\">Automatic Backups</span></a><span style=\"font-weight: 400;\"> add-on gives you additional peace of mind as It will take a backup before your updates automatically install.</span></p>\n<p><span style=\"font-weight: 400;\">Backups should be an essential part of a WordPress site as the site can be quickly restored if an updates causes unexpected errors. Should you ever need to restore your site, we highly recommend keeping your backup in a remote storage location. This has the additional benefit of saving you from any server crash or hosting issues. In the worst case scenario, this will enable you to quickly get your backups from the cloud and restore your site.</span></p>\n<p><b>Automatic backup before an update using UpdraftPlus Premium</b></p>\n<p><span style=\"font-weight: 400;\">If you are using </span><a href=\"https://updraftplus.com/shop/updraftplus-premium\"><span style=\"font-weight: 400;\">UpdraftPlus Premium</span></a><span style=\"font-weight: 400;\"> then you don&#8217;t need to get the separate </span><a href=\"https://updraftplus.com/shop/autobackup\"><span style=\"font-weight: 400;\">Automatic Backups</span></a><span style=\"font-weight: 400;\"> add-on as it already comes with this time-saving feature.</span></p>\n<p><span style=\"font-weight: 400;\">Once you have a copy of UpdraftPlus Premium installed on your WordPress site, you can start the automatic backup directly. There is no configuration setup needed for this feature.</span></p>\n<p><span style=\"font-weight: 400;\">Head over to your plugins page and select the plugin that you wish to update. For this example, we will update the Contact Form 7 plugin.</span></p>\n<p><a href=\"https://updraftplus.com/wp-content/uploads/2019/04/1-1.png\"><img class=\"alignnone size-full wp-image-373157\" src=\"https://updraftplus.com/wp-content/uploads/2019/04/1-1.png\" alt=\"\" width=\"1110\" height=\"162\" srcset=\"https://updraftplus.com/wp-content/uploads/2019/04/1-1.png 1110w, https://updraftplus.com/wp-content/uploads/2019/04/1-1-300x44.png 300w, https://updraftplus.com/wp-content/uploads/2019/04/1-1-768x112.png 768w, https://updraftplus.com/wp-content/uploads/2019/04/1-1-1024x149.png 1024w, https://updraftplus.com/wp-content/uploads/2019/04/1-1-1080x158.png 1080w, https://updraftplus.com/wp-content/uploads/2019/04/1-1-510x74.png 510w\" sizes=\"(max-width: 1110px) 100vw, 1110px\" /></a></p>\n<p><span style=\"font-weight: 400;\">As soon as you hit the &#8216;update now&#8217; link, you will see a pop-up. Keep the default options as they are and press the &#8216;Proceed with the update&#8217; button.</span></p>\n<p><a href=\"https://updraftplus.com/wp-content/uploads/2019/04/2-1.png\"><img class=\"alignnone size-full wp-image-373158\" src=\"https://updraftplus.com/wp-content/uploads/2019/04/2-1.png\" alt=\"\" width=\"770\" height=\"495\" srcset=\"https://updraftplus.com/wp-content/uploads/2019/04/2-1.png 770w, https://updraftplus.com/wp-content/uploads/2019/04/2-1-300x193.png 300w, https://updraftplus.com/wp-content/uploads/2019/04/2-1-768x494.png 768w, https://updraftplus.com/wp-content/uploads/2019/04/2-1-510x328.png 510w\" sizes=\"(max-width: 770px) 100vw, 770px\" /></a></p>\n<p><span style=\"font-weight: 400;\">UpdraftPlus will now start the process of carrying out an automatic backup. In this scenario, UpdraftPlus will first take a backup of all plugins before the Contact Form 7 plugin is updated. Similarly, when you update the WordPress core, UpdraftPlus first takes a backup of the existing WordPress core files and themes to ensure there is a secure backup should you need it. With every type of update a database backup is included, as this is an essential process.</span></p>\n<p><a href=\"https://updraftplus.com/wp-content/uploads/2019/04/3-1.png\"><img class=\"alignnone size-full wp-image-373159\" src=\"https://updraftplus.com/wp-content/uploads/2019/04/3-1.png\" alt=\"\" width=\"766\" height=\"504\" srcset=\"https://updraftplus.com/wp-content/uploads/2019/04/3-1.png 766w, https://updraftplus.com/wp-content/uploads/2019/04/3-1-300x197.png 300w, https://updraftplus.com/wp-content/uploads/2019/04/3-1-510x336.png 510w\" sizes=\"(max-width: 766px) 100vw, 766px\" /></a></p>\n<p><span style=\"font-weight: 400;\">While the backup is processing the WordPress update schedule will go on hold, but once the backup is complete, the update schedule will continue. In the next step, you will see your plugin updated to the latest version upon the completion of the process.</span></p>\n<p><a href=\"https://updraftplus.com/wp-content/uploads/2019/04/4-1.png\"><img class=\"alignnone size-full wp-image-373160\" src=\"https://updraftplus.com/wp-content/uploads/2019/04/4-1.png\" alt=\"\" width=\"1115\" height=\"179\" srcset=\"https://updraftplus.com/wp-content/uploads/2019/04/4-1.png 1115w, https://updraftplus.com/wp-content/uploads/2019/04/4-1-300x48.png 300w, https://updraftplus.com/wp-content/uploads/2019/04/4-1-768x123.png 768w, https://updraftplus.com/wp-content/uploads/2019/04/4-1-1024x164.png 1024w, https://updraftplus.com/wp-content/uploads/2019/04/4-1-1080x173.png 1080w, https://updraftplus.com/wp-content/uploads/2019/04/4-1-510x82.png 510w\" sizes=\"(max-width: 1115px) 100vw, 1115px\" /></a></p>\n<p><span style=\"font-weight: 400;\">In the UpdraftPlus settings page, you will now see this new backup listed under the &#8216;Existing Backups&#8217; list.</span></p>\n<p><a href=\"https://updraftplus.com/wp-content/uploads/2019/04/5-1.png\"><img class=\"alignnone size-full wp-image-373161\" src=\"https://updraftplus.com/wp-content/uploads/2019/04/5-1.png\" alt=\"\" width=\"1600\" height=\"250\" srcset=\"https://updraftplus.com/wp-content/uploads/2019/04/5-1.png 1600w, https://updraftplus.com/wp-content/uploads/2019/04/5-1-300x47.png 300w, https://updraftplus.com/wp-content/uploads/2019/04/5-1-768x120.png 768w, https://updraftplus.com/wp-content/uploads/2019/04/5-1-1024x160.png 1024w, https://updraftplus.com/wp-content/uploads/2019/04/5-1-1080x169.png 1080w, https://updraftplus.com/wp-content/uploads/2019/04/5-1-510x80.png 510w\" sizes=\"(max-width: 1600px) 100vw, 1600px\" /></a></p>\n<p><span style=\"font-weight: 400;\">To differentiate this kind of backup from other regular backups, UpdraftPlus have added an &#8216;Automatic backup before update&#8217; label below the backup date. </span></p>\n<p><span style=\"font-weight: 400;\">The overall idea is simple, take an update automatically before you update plugins, WordPress core or theme.</span></p>\n<p><span style=\"font-weight: 400;\">We hope this explains the importance of the </span><a href=\"https://updraftplus.com/shop/autobackup/\"><span style=\"font-weight: 400;\">Automatic Backup</span></a><span style=\"font-weight: 400;\"> feature in UpdraftPlus. Try it today and let us know your feedback in the comment section below.</span></p>\n<p>Bye Sajid Sayyad</p>\n<p>The post <a rel=\"nofollow\" href=\"https://updraftplus.com/how-to-take-an-automatic-backup-before-an-update-using-updraftplus-premium/\">How to take an automatic backup before an update using UpdraftPlus Premium</a> appeared first on <a rel=\"nofollow\" href=\"https://updraftplus.com\">UpdraftPlus</a>. <a href=\"http://updraftplus.com\">UpdraftPlus - Backup, restore and migration plugin for WordPress.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://updraftplus.com/how-to-take-an-automatic-backup-before-an-update-using-updraftplus-premium/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://updraftplus.com/how-to-take-an-automatic-backup-before-an-update-using-updraftplus-premium/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:79:\"\n		\n		\n				\n				\n		\n				\n		\n		\n		\n		\n		\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"Trust No One: Retired FBI agent reveals how site was hacked; but quickly restored using UpdraftPlus\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"http://feedproxy.google.com/~r/UpdraftPlus/~3/_R5w6Mkl18M/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:130:\"https://updraftplus.com/trust-no-one-retired-fbi-agent-reveals-how-site-was-hacked-but-quickly-restored-using-updraftplus/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 22 May 2019 10:22:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:7:{i:0;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:12:\"Testimonials\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:8:\"FBI hack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:14:\"Jerri Williams\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:11:\"Testimonial\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:18:\"updraftplus backup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:19:\"updraftplus restore\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://updraftplus.com/?p=390963\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:879:\"<p>As an organisation that is dedicated to backing up WordPress sites all over the world, one of the best parts of the job is when we receive emails and messages letting us know about the issues and problems people have &#8230; <a href=\"https://updraftplus.com/trust-no-one-retired-fbi-agent-reveals-how-site-was-hacked-but-quickly-restored-using-updraftplus/\">Continue reading <span class=\"meta-nav\">&#8594;</span></a></p>\n<p>The post <a rel=\"nofollow\" href=\"https://updraftplus.com/trust-no-one-retired-fbi-agent-reveals-how-site-was-hacked-but-quickly-restored-using-updraftplus/\">Trust No One: Retired FBI agent reveals how site was hacked; but quickly restored using UpdraftPlus</a> appeared first on <a rel=\"nofollow\" href=\"https://updraftplus.com\">UpdraftPlus</a>. <a href=\"http://updraftplus.com\">UpdraftPlus - Backup, restore and migration plugin for WordPress.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"wmullins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5770:\"<p><span style=\"font-weight: 400;\">As an organisation that is dedicated to backing up WordPress sites all over the world, one of the best parts of the job is when we receive emails and messages letting us know about the issues and problems people have faced, and how UpdraftPlus has saved them from losing everything they have spent years working on. </span></p>\n<p><span style=\"font-weight: 400;\">One such instance that was reported to us recently concerned the website of retired FBI agent Jerri Williams. Having served 26 years as a Special Agent with the FBI, Jerri is now a successful </span><span style=\"font-weight: 400;\">author</span><span style=\"font-weight: 400;\"> of <a href=\"https://www.amazon.com/Jerri-Williams/e/B01LXJQ4O1\">several books</a> and creator of the “FBI Retired Case File Review” </span><a href=\"https://www.stitcher.com/podcast/jerri-williams/fbi-retired-case-file-review\"><span style=\"font-weight: 400;\">podcast</span></a><span style=\"font-weight: 400;\">. </span></p>\n<p><span style=\"font-weight: 400;\">Jerri’s </span><a href=\"https://jerriwilliams.com/\"><span style=\"font-weight: 400;\">website</span></a><span style=\"font-weight: 400;\"> is a hugely important point of contact that allows her to communicate and share her work with listeners and readers, so it must have come as something of a shock when it was recently hacked. As someone who has spent her professional career dealing with scams and schemers, this malicious act of sabotage could have potentially destroyed everything she had put years of work into. </span><span style=\"font-weight: 400;\">After initially reaching out to us via our </span><a href=\"https://twitter.com/UpdraftPlus\"><span style=\"font-weight: 400;\">Twitter account</span></a><span style=\"font-weight: 400;\">, Jerri was kind enough to share the details of not just her incredibly interesting past career, but also the events surround the hack of her website and the aftermath. </span></p>\n<p><b>Hi Jerri, please could you tell us a little bit about yourself and your background.</b></p>\n<p><span style=\"font-weight: 400;\">I&#8217;m a retired FBI agent, author and podcaster. I&#8217;ve been showcasing my crime novels and podcast on my website since January of 2016. Because I have a website that prominently features the FBI, I assumed that at some point someone might be challenged to hack my site. </span></p>\n<p><span style=\"font-weight: 400;\">To prevent that nightmare, I purchased UpdraftPlus, just in case. </span></p>\n<p><b>Can you tell us the nature of your website and what happened regarding the hack?</b></p>\n<p><span style=\"font-weight: 400;\">On the morning of the hack, I received a message from a regular listener saying that he couldn&#8217;t access the podcast and blog carousel on my website. He thought I might have been hacked. I went to my site and everything looked fine, until I tried to click on an episode or post. I was sent to a strange sales support page. I don&#8217;t remember what is was, because Norton security service immediately sent me a warning and blocked the site, noting it did so to prevent an intrusion and computer attack. For a few minutes I went into panic mode and then I remembered I had installed UpdraftPlus. </span></p>\n<p><span style=\"font-weight: 400;\">I quickly accessed my website dashboard, located the UpdraftPlus backups in the the settings menu, and clicked the button to restore my files to the most recent backup before the hack. </span></p>\n<p><b>How long did it take for you to restore your site using UpdraftPlus and was the process straightforward and easy to do?</b></p>\n<p><span style=\"font-weight: 400;\">The process to restore my site was straightforward and easy to do. After I clicked on the restore button I was up and running again in less than 30 minutes. The next thing I did was change my website account password.</span></p>\n<p><b>What advice would you give to other website owners who may be at risk (such as backup and security)?</b></p>\n<p><span style=\"font-weight: 400;\">Having UpdraftPlus is like having an insurance policy for your website. You hope nothing will ever happen, but if it does, you&#8217;re safe. It was one of the best decisions I&#8217;ve made for my business. It&#8217;s always better to be safe than sorry. The one thing I would have done differently is I wish I had been backing up my website every week instead of every other week. I had to manually recreate a week and a half worth of work because the backup preceded my most recently posted show notes and blog posts. I&#8217;ve changed the frequency so, if it happens again, I will have a more recent backup to restore.</span></p>\n<p>&nbsp;</p>\n<p><span style=\"font-weight: 400;\">As Jerri’s story shows, anyone and any kind site can potentially be targeted. Without adequate security, protection and backups, years of work could be lost. We were happy to hear that in this case there were no lasting issues, but often sadly this is not the case. </span></p>\n<p><span style=\"font-weight: 400;\">With 2 million+ active installs, </span><a href=\"https://updraftplus.com/\"><span style=\"font-weight: 400;\">UpdraftPlus</span></a><span style=\"font-weight: 400;\"> is one of the most popular and trusted WordPress backup plugins currently on the market. Download and install your copy today.</span></p>\n<p>The post <a rel=\"nofollow\" href=\"https://updraftplus.com/trust-no-one-retired-fbi-agent-reveals-how-site-was-hacked-but-quickly-restored-using-updraftplus/\">Trust No One: Retired FBI agent reveals how site was hacked; but quickly restored using UpdraftPlus</a> appeared first on <a rel=\"nofollow\" href=\"https://updraftplus.com\">UpdraftPlus</a>. <a href=\"http://updraftplus.com\">UpdraftPlus - Backup, restore and migration plugin for WordPress.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:127:\"https://updraftplus.com/trust-no-one-retired-fbi-agent-reveals-how-site-was-hacked-but-quickly-restored-using-updraftplus/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:122:\"https://updraftplus.com/trust-no-one-retired-fbi-agent-reveals-how-site-was-hacked-but-quickly-restored-using-updraftplus/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:73:\"\n		\n		\n				\n				\n		\n				\n		\n		\n		\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"How restoring a WordPress website can be more difficult than you think\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"http://feedproxy.google.com/~r/UpdraftPlus/~3/c_CVblIRBS0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"https://updraftplus.com/how-restoring-a-wordpress-website-can-be-more-difficult-than-you-think/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 15 May 2019 09:32:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:15:\"Tips and tricks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:19:\"updraftplus restore\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:20:\"website hack restore\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:17:\"WordPress restore\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://updraftplus.com/?p=387388\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:804:\"<p>A website’s security, continued success and even its very existence is of fundamental importance for a site owner. What happens when you need to restore a site due to damage that can be caused by any number of factors, but &#8230; <a href=\"https://updraftplus.com/how-restoring-a-wordpress-website-can-be-more-difficult-than-you-think/\">Continue reading <span class=\"meta-nav\">&#8594;</span></a></p>\n<p>The post <a rel=\"nofollow\" href=\"https://updraftplus.com/how-restoring-a-wordpress-website-can-be-more-difficult-than-you-think/\">How restoring a WordPress website can be more difficult than you think</a> appeared first on <a rel=\"nofollow\" href=\"https://updraftplus.com\">UpdraftPlus</a>. <a href=\"http://updraftplus.com\">UpdraftPlus - Backup, restore and migration plugin for WordPress.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"wmullins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4660:\"<p>A website’s security, continued success and even its very existence is of fundamental importance for a site owner. What happens when you need to restore a site due to damage that can be caused by any number of factors, but then discover the data you thought was being backed-up and stored safely doesn’t actually exist? Sometimes the best case scenario can be only having a woefully out of date site that does not contain your most recent changes, data and information. The worst case scenario is that you encounter the ultimate site restore horror story and discover you do not have any backups at all!</p>\n<p>That won&#8217;t happen to you though right? Everyone probably thinks this as they have taken steps to prevent such a scenario and</p>\n<p>That won’t happen to you though right? Everyone probably thinks this as they have taken steps to prevent such a scenario and protect them from any potential misfortune. We’ve all heard a story of someone who installed something as simple as a WordPress update, which then crashed the site and took any chance of a restore with it. Often these scenarios can cost tens of thousand of dollars in lost business, valuable time and a loss of reputation while site owners attempt to rebuild a shattered site.</p>\n<p>As was seen in a <a href=\"https://www.theregister.co.uk/2019/05/01/a2_hosting_down/\">recent article</a>, the hosting service A2 endured major issues related to a security breach that resulted in a shut-down of all Windows services. A malware attack resulted in A2 coming to the decision that the only way to recover the corrupted data it hosted was to do a full restore from the site backups. In theory, this should have caused very few problems as full and incremental backups should be taken regularly to ensure the most recent version of the website is always available for a restore.</p>\n<p>Unfortunately it seems that in many cases, A2 were only able to restore from old versions of customer sites, which were very different from the latest and most recent versions their customers were anticipating.</p>\n<p>While losing information on your site/business from just a few days or even a week ago might be bad enough, some A2 customers were faced with the prospect of having a restored site that was several months out of date. It is easy to imagine the embarrassment and issues this caused businesses that rely solely on their site to make sales. A loss of reputation and an outdated site would have been a best case scenario for many though, as some were even faced with the loss of their entire site due to the lack of security and updates in place.</p>\n<p>This isn’t an isolated case limited to A2 however. While in a previous job, Marc Lacroix (a member of our team) experienced a situation where a client had a website with an older version of PHP hosted on an old server. The client was encouraged to contact their hosting company to find out if they could upgrade to PHP 7, to which the hosting company obliged and transferred the site to a new server, with the latest version of PHP.</p>\n<p>When checking the website afterwards, it was noticed the content were no just old and out of date, but also had parts missing. It was discovered that the latest update for the site was dated from 2 months earlier, with no sign of all the changes that had been made since then. It remains a mystery why the hosting company used a 2 month old backup instead of migrating the live site directly. Thankfully the site owner had made a fresh backup with UpdraftPlus, which was quickly uploaded and restored. Problem solved!</p>\n<p>While many customers depend on their hosting services to make regular backups and deal with security, the examples above clearly show that there is a massive need to<b> take control of your own backups </b>after investing so much time and money in your website.</p>\n<p>That is why UpdraftPlus is the leading WordPress backup software and is used by companies and individuals all over the world. Should the very worst happen and your site gets completely wiped due to a hack or malware, you can rest easy knowing that you can fully restore your site simply and easily with UpdraftPlus.</p>\n<p><a href=\"https://updraftplus.com/\">Download UpdraftPlus</a> today</p>\n<p>The post <a rel=\"nofollow\" href=\"https://updraftplus.com/how-restoring-a-wordpress-website-can-be-more-difficult-than-you-think/\">How restoring a WordPress website can be more difficult than you think</a> appeared first on <a rel=\"nofollow\" href=\"https://updraftplus.com\">UpdraftPlus</a>. <a href=\"http://updraftplus.com\">UpdraftPlus - Backup, restore and migration plugin for WordPress.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"https://updraftplus.com/how-restoring-a-wordpress-website-can-be-more-difficult-than-you-think/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://updraftplus.com/how-restoring-a-wordpress-website-can-be-more-difficult-than-you-think/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:76:\"\n		\n		\n				\n				\n		\n				\n		\n		\n		\n		\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"The role of HTTPS in SEO and the increasing significance of SSL for better ranking\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"http://feedproxy.google.com/~r/UpdraftPlus/~3/xic4sAj1A38/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:116:\"https://updraftplus.com/the-role-of-https-in-seo-and-the-increasing-significance-of-ssl-for-better-ranking/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 09 May 2019 11:02:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:6:{i:0;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:15:\"Tips and tricks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:27:\"how to make website quicker\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:4:\"HTTP\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:5:\"HTTPS\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:18:\"WordPress security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://updraftplus.com/?p=385304\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:847:\"<p>If you’ve ever done any kind of search on how to improve your SEO and website rankings then you have probably stumbled upon the “HTTP vs HTTPS” argument. Digital marketers and website owners often want to know if switching to &#8230; <a href=\"https://updraftplus.com/the-role-of-https-in-seo-and-the-increasing-significance-of-ssl-for-better-ranking/\">Continue reading <span class=\"meta-nav\">&#8594;</span></a></p>\n<p>The post <a rel=\"nofollow\" href=\"https://updraftplus.com/the-role-of-https-in-seo-and-the-increasing-significance-of-ssl-for-better-ranking/\">The role of HTTPS in SEO and the increasing significance of SSL for better ranking</a> appeared first on <a rel=\"nofollow\" href=\"https://updraftplus.com\">UpdraftPlus</a>. <a href=\"http://updraftplus.com\">UpdraftPlus - Backup, restore and migration plugin for WordPress.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"wmullins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9306:\"<p><span style=\"font-weight: 400;\">If you’ve ever done any kind of search on how to improve your SEO and website rankings then you have probably stumbled upon the “HTTP vs HTTPS” argument. Digital marketers and website owners often want to know if switching to HTTPS will help their website’s SEO.</span></p>\n<p><span style=\"font-weight: 400;\">Worry not, because we are going to tell you everything you need to know about HTTPS, its role in SEO and how it affects your overall search engine rankings.</span></p>\n<p><b>Let’s get started</b></p>\n<p><span style=\"font-weight: 400;\">First things first, what does HTTPS actually stand for?</span></p>\n<p><span style=\"font-weight: 400;\">HTTPS = <strong>Hypertext Transfer Protocol </strong></span><b>Secure</b></p>\n<p><span style=\"font-weight: 400;\">HTTPS sites work by including an SSL 2048-bit key that protects users’ connection to the site through encryption and authentication. When an SSL certificate is installed on a website’s server, it activates a padlock (visible in the address bar) which allows secure connections between a website and a browser.</span></p>\n<p><span style=\"font-weight: 400;\">If your website doesn’t have HTTPS then a user’s connection is not secure and their information is constantly at risk of being leaked.</span></p>\n<p><span style=\"font-weight: 400;\">A secure website protects a user’s information by securing it in three different layers.</span><b></b></p>\n<ul>\n<li><b>Encryption: <span style=\"font-weight: 400;\">Helps keep the user’s activity hidden so it can not be tracked.</span></b></li>\n<li><b>Data Integrity: <span style=\"font-weight: 400;\">Keeps the files from being corrupted or manipulated during transfers.</span></b></li>\n<li><strong>Authentication</strong>: <span style=\"font-weight: 400;\">Protects against attacks to build user trust.</span></li>\n</ul>\n<p><span style=\"font-weight: 400;\">But how do these factors impact SEO and rankings?</span></p>\n<h2><span style=\"font-weight: 400;\">Impact of HTTPS on SEO</span></h2>\n<p><span style=\"font-weight: 400;\">The big question is:</span></p>\n<p><span style=\"font-weight: 400;\">What’s the actual impact of HTTPS on SEO and rankings?</span></p>\n<p><span style=\"font-weight: 400;\">Karen Paulsen from </span><a href=\"https://www.consumersbase.com/\"><span style=\"font-weight: 400;\">consumersbase.com</span></a><span style=\"font-weight: 400;\"> stated, “</span><i><span style=\"font-weight: 400;\">You never know the inner workings of Google’s algorithms, but there’s ample evidence to support the claim that HTTPS is crucial for better search rankings.</span></i><span style=\"font-weight: 400;\">” </span></p>\n<p><span style=\"font-weight: 400;\">Here’s how HTTPS affects each aspect of your website.</span></p>\n<h3><span style=\"font-weight: 400;\">Rankings</span></h3>\n<p><span style=\"font-weight: 400;\">Back in 2015, Google announced that the ranking of two similar sites could be decided in a tie-breaking situation by which one had HTTPS. If you and your competitor have the same quality signals for your search results, then Google may use the HTTPS as a deciding factor for which sites is ranked higher. So if your website does not use HTTPS while your competitor’s website does, then Google will probably rank their search results higher than yours.</span></p>\n<p><span style=\"font-weight: 400;\">If you do a quick Google search for a specific keyword, you will notice that more than 50% of Google’s first page results feature HTTPS sites. We are not saying that HTTPS alone is enough to get those sites on the first page of Google, but it does play an important role alongside other SEO best practices.</span></p>\n<p><span style=\"font-weight: 400;\">In a study by </span><a href=\"https://backlinko.com/search-engine-ranking\"><span style=\"font-weight: 400;\">Backlinko</span></a><span style=\"font-weight: 400;\">, a moderate correlation between higher search engine rankings and HTTPS was found after a million Google search results were analyzed. Other studies have also found a minor correlation between HTTPS and higher search rankings.</span></p>\n<h3><span style=\"font-weight: 400;\">Conversions</span></h3>\n<p><span style=\"font-weight: 400;\">When undertaking in depth SEO to get your website to the top of search results, it is fair to assume that should you be at the top of the search results, you could expect to see a higher conversion rate as a result. However, according to GlobalSign survey, more than </span><a href=\"https://www.globalsign.com/en/blog/why-integrate-ssl/\"><span style=\"font-weight: 400;\">80% of users will abandon a purchase</span></a><span style=\"font-weight: 400;\"> if the connection isn’t secure due to the lack of HTTPS.</span></p>\n<p><span style=\"font-weight: 400;\">Given the inherent risks associated with online identity and banking detail theft, most online users are worried about their information being intercepted and misused online, and as such rarely trust websites without secure connections. </span></p>\n<p><span style=\"font-weight: 400;\">Not having HTTPS on your website could potentially drive most of your buyers away. It’s never too late to secure your website and provide your users with a secure platform that they can trust with their personal and sensitive information, without them having to worry about data interception or leaks. </span></p>\n<h3><span style=\"font-weight: 400;\">Traffic</span></h3>\n<p><span style=\"font-weight: 400;\">As well as offering extra security, the ultimate goal of getting your website to rank higher in search results is to bring in extra traffic, and hopefully customers who feel comfortable making a purchase now that they can see your site has HTTPS.  </span></p>\n<p><span style=\"font-weight: 400;\">People often click sites that are secure while avoiding non-secure ones. Additionally, </span><a href=\"https://security.googleblog.com/2016/09/moving-towards-more-secure-web.html\"><span style=\"font-weight: 400;\">Google Chrome has started labeling non-HTTPS sites as “Non-Secure”</span></a><span style=\"font-weight: 400;\">, which definitely gives off warning signals and will drive potential customers away from non-HTTPS websites. </span></p>\n<p><span style=\"font-weight: 400;\">As an internet user and shopper yourself, if you saw a website that had “Non-Secure” next to its name in your browser, would you even visit it, let alone make a purchase on it? </span></p>\n<h3><span style=\"font-weight: 400;\">Site Speed</span></h3>\n<p><span style=\"font-weight: 400;\">As one of the major signals used by Google to rank websites, a slow site with high load times will result in Google ranking it below faster loading websites, providing they have similar quality signals.</span></p>\n<p><span style=\"font-weight: 400;\">HTTPS websites have been found to be considerably faster when compared to HTTP websites. Check out </span><a href=\"https://www.httpvshttps.com/\"><span style=\"font-weight: 400;\">HTTPvsHTTPS</span></a><span style=\"font-weight: 400;\"> to see how much of a speed difference a secure protocol can make. </span></p>\n<p><span style=\"font-weight: 400;\">Not only does HTTPS make your website secure, increase confidence in customers and directly help your page ranking, we can see from the presented evidence that it can also indirectly improve other SEO aspects, such as site speed.</span></p>\n<h2><span style=\"font-weight: 400;\">In Summary</span></h2>\n<p><span style=\"font-weight: 400;\">Ultimately, we can see there is considerable evidence that moving your website to HTTPS will help the page rank higher with Google. Not only does HTTPS help improve your website’s overall SEO, but it is also a much more secure system for your website.</span></p>\n<p><span style=\"font-weight: 400;\">Security is one of the most important factors in the digital world today and making the switch from a non-secure HTTP site to a secure HTTPS site not only makes your website secure, but will also help protect your users’ data and sensitive information.</span></p>\n<p><span style=\"font-weight: 400;\">As you may have summarised from this blog, we highly recommend that you switch to HTTPS as soon as possible, not just for the security, but for the potential additional SEO benefits the change could have.</span></p>\n<p><span style=\"font-weight: 400;\">If your website is already using HTTPS, then we recommend that you test it’s security level by using </span><a href=\"https://www.ssllabs.com/ssltest/\"><span style=\"font-weight: 400;\">Google’s Qualys Lab tool</span></a><span style=\"font-weight: 400;\">.</span></p>\n<p><b>Do you know what’s so great about making the switch?</b></p>\n<p><span style=\"font-weight: 400;\">There’s nothing to lose at all. Making the switch to HTTPS does not cost you anything and will not affect your website in any negative way. So do it right now!</span></p>\n<p><em>By Sharon Lliff</em></p>\n<p>The post <a rel=\"nofollow\" href=\"https://updraftplus.com/the-role-of-https-in-seo-and-the-increasing-significance-of-ssl-for-better-ranking/\">The role of HTTPS in SEO and the increasing significance of SSL for better ranking</a> appeared first on <a rel=\"nofollow\" href=\"https://updraftplus.com\">UpdraftPlus</a>. <a href=\"http://updraftplus.com\">UpdraftPlus - Backup, restore and migration plugin for WordPress.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:112:\"https://updraftplus.com/the-role-of-https-in-seo-and-the-increasing-significance-of-ssl-for-better-ranking/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"https://updraftplus.com/the-role-of-https-in-seo-and-the-increasing-significance-of-ssl-for-better-ranking/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:64:\"\n		\n		\n				\n				\n		\n				\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"Keyy is for sale – we’re looking for its new owners\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"http://feedproxy.google.com/~r/UpdraftPlus/~3/GVWtArSGOzE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://updraftplus.com/keyy-is-for-sale-were-looking-for-new-owners/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 07 May 2019 14:22:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Keyy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:18:\"WordPress for sale\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://updraftplus.com/?p=384911\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:750:\"<p>We would like to take this opportunity to thank everyone who has ever been a customer of Keyy and we hope you are all continuing to enjoy the product. The team here at UpdraftPlus loves Keyy, however we&#8217;re currently looking &#8230; <a href=\"https://updraftplus.com/keyy-is-for-sale-were-looking-for-new-owners/\">Continue reading <span class=\"meta-nav\">&#8594;</span></a></p>\n<p>The post <a rel=\"nofollow\" href=\"https://updraftplus.com/keyy-is-for-sale-were-looking-for-new-owners/\">Keyy is for sale &#8211; we&#8217;re looking for its new owners</a> appeared first on <a rel=\"nofollow\" href=\"https://updraftplus.com\">UpdraftPlus</a>. <a href=\"http://updraftplus.com\">UpdraftPlus - Backup, restore and migration plugin for WordPress.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"wmullins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2031:\"<p>We would like to take this opportunity to thank everyone who has ever been a customer of Keyy and we hope you are all continuing to enjoy the product.</p>\n<p>The team here at UpdraftPlus loves Keyy, however we&#8217;re currently looking to sell this side of the business to someone who has the vision to invest in the product and grow the business.</p>\n<p>We have chosen to sell Keyy as we&#8217;ve decided to re-focus on our bigger products, and Keyy is quite small by comparison.</p>\n<p>If you or anyone you know is interested in buying this WordPress plugin and app business, then we&#8217;ll consider any offer. Please leave a comment below if you would like more information about sales.*</p>\n<p>Please be assured that we&#8217;d like to see Keyy thrive in the future, and we will be keen to find a buyer who will commit to this. The <a href=\"https://getkeyy.com/\">Keyy website</a> is still open for new customers and renewals. We will give users at least 1 month&#8217;s notice of a new buyer before it changes hands, and we or the new owners will commit to honour any license subscription period you have purchased.</p>\n<p>We will keep everyone informed of any updates as and when they become available.</p>\n<p>* Current subscription sales were $5.3k in the financial year ending March 2019 and there are 1000+ active installs &#8211; however, Clef, the product which inspired Keyy before it was sun-setted, achieved active installs of over 1 million with good PR and a series of deals with hosts. Running costs are trivial, so there&#8217;s potential for any entrepreneurs willing to invest in partnerships, promotion and developing the software.</p>\n<p>The post <a rel=\"nofollow\" href=\"https://updraftplus.com/keyy-is-for-sale-were-looking-for-new-owners/\">Keyy is for sale &#8211; we&#8217;re looking for its new owners</a> appeared first on <a rel=\"nofollow\" href=\"https://updraftplus.com\">UpdraftPlus</a>. <a href=\"http://updraftplus.com\">UpdraftPlus - Backup, restore and migration plugin for WordPress.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://updraftplus.com/keyy-is-for-sale-were-looking-for-new-owners/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://updraftplus.com/keyy-is-for-sale-were-looking-for-new-owners/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:76:\"\n		\n		\n				\n				\n		\n				\n		\n		\n		\n		\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WP-Optimize release new ‘how-to’ video for image optimization\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"http://feedproxy.google.com/~r/UpdraftPlus/~3/RT8mFaIhXk8/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://updraftplus.com/wp-optimize-release-new-how-to-video-for-image-optimization/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 03 May 2019 13:14:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:6:{i:0;a:5:{s:4:\"data\";s:11:\"WP Optimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:18:\"Image optimization\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:5:\"Smush\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:8:\"Smushing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:28:\"wordpress image optimization\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:11:\"WP-Optimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://updraftplus.com/?p=383490\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:799:\"<p>As you may have noticed, WP-Optimize has gone through several changes recently. We have been busy adding exciting new features to the plugin to meet our goal of making it the best WordPress optimization plugin possible. Part of the recent &#8230; <a href=\"https://updraftplus.com/wp-optimize-release-new-how-to-video-for-image-optimization/\">Continue reading <span class=\"meta-nav\">&#8594;</span></a></p>\n<p>The post <a rel=\"nofollow\" href=\"https://updraftplus.com/wp-optimize-release-new-how-to-video-for-image-optimization/\">WP-Optimize release new &#8216;how-to&#8217; video for image optimization</a> appeared first on <a rel=\"nofollow\" href=\"https://updraftplus.com\">UpdraftPlus</a>. <a href=\"http://updraftplus.com\">UpdraftPlus - Backup, restore and migration plugin for WordPress.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"wmullins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1591:\"<p><span style=\"font-weight: 400;\">As you may have noticed, WP-Optimize has gone through several changes recently. We have been busy adding exciting new features to the plugin to meet our goal of making it the best WordPress optimization plugin possible.</span></p>\n<p><span style=\"font-weight: 400;\">Part of the recent update has been the added ability to optimize (commonly known as “smushing”) any and all images you have on your website, as well as giving you the option to automatically optimize any future images that may be uploaded.</span></p>\n<p><span style=\"font-weight: 400;\">To help our users better understand the new feature and how it works, we have put together a short “how-to” video that takes you through the image optimization process, step-by-step.</span></p>\n<p><span style=\"font-weight: 400;\">If there are any other WP-Optimize features you would like to see videos of, be sure to let us know in the comments section below;</span></p>\n<p><iframe src=\"https://player.vimeo.com/video/333938451?dnt=1&#038;app_id=122963\" width=\"1080\" height=\"608\" frameborder=\"0\" title=\"How to use WP-Optimize image optimization\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe></p>\n<p>The post <a rel=\"nofollow\" href=\"https://updraftplus.com/wp-optimize-release-new-how-to-video-for-image-optimization/\">WP-Optimize release new &#8216;how-to&#8217; video for image optimization</a> appeared first on <a rel=\"nofollow\" href=\"https://updraftplus.com\">UpdraftPlus</a>. <a href=\"http://updraftplus.com\">UpdraftPlus - Backup, restore and migration plugin for WordPress.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://updraftplus.com/wp-optimize-release-new-how-to-video-for-image-optimization/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://updraftplus.com/wp-optimize-release-new-how-to-video-for-image-optimization/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:67:\"\n		\n		\n				\n				\n		\n				\n		\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"UpdraftPlus have released a new update: Includes tweaks to make UpdraftClone more user friendly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"http://feedproxy.google.com/~r/UpdraftPlus/~3/EJY9PhFgMaA/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:127:\"https://updraftplus.com/updraftplus-have-released-a-new-update-includes-tweaks-to-make-updraftclone-more-user-friendly/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 01 May 2019 10:16:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:28:\"UpdraftPlus development news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:23:\"UpdraftPlus development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:18:\"updraftplus update\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://updraftplus.com/?p=382603\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:847:\"<p>Some of the tweaks we have been working on that we feel will be of particular note to our users are as follows: To start, we have added WP 5.2 support for UpdraftClone to ensure it is up to date &#8230; <a href=\"https://updraftplus.com/updraftplus-have-released-a-new-update-includes-tweaks-to-make-updraftclone-more-user-friendly/\">Continue reading <span class=\"meta-nav\">&#8594;</span></a></p>\n<p>The post <a rel=\"nofollow\" href=\"https://updraftplus.com/updraftplus-have-released-a-new-update-includes-tweaks-to-make-updraftclone-more-user-friendly/\">UpdraftPlus have released a new update: Includes tweaks to make UpdraftClone more user friendly</a> appeared first on <a rel=\"nofollow\" href=\"https://updraftplus.com\">UpdraftPlus</a>. <a href=\"http://updraftplus.com\">UpdraftPlus - Backup, restore and migration plugin for WordPress.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"wmullins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2904:\"<p><span style=\"font-weight: 400;\">Some of the tweaks we have been working on that we feel will be of particular note to our users are as follows: To start, we have added WP 5.2 support for UpdraftClone to ensure it is up to date with the latest WP release. </span></p>\n<p><span style=\"font-weight: 400;\">Additionally, we have made an update to the UpdraftClone suggestion sentences options, which are now dismissible. Some users are known to not be overly keen on these messages on their dashboard, so we have now given you the option to delete these if you so wish. We hope these new changes to UpdraftPlus will make your experience using our plugin even better and more user friendly than ever before. </span></p>\n<p><span style=\"font-weight: 400;\">As well as these new changes, the latest update also come with several other tweaks to hopefully help improve your overall UpdraftPlus experience. </span></p>\n<p><span style=\"font-weight: 400;\">The changelog for UpdraftPlus Free (1.16.14) and UpdraftPlus Premium (2.16.14). is as follows. We recommend the update for all users.</span></p>\n<h4><b>1.16.14 – 30/Apr/2019</b></h4>\n<ul>\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">TWEAK: Make UpdraftVault trial more discoverable</span></li>\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">TWEAK: Fix stray JavaScript in the short-lived version 1.16.13</span></li>\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">TWEAK: Add support to translation updates</span></li>\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">TWEAK: Add WP 5.2 support in UpdraftClone</span></li>\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">TWEAK: Prevent PHP notice in remotesend method</span></li>\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">TWEAK: Restorations are now started over AJAX instead of in-page. This is preparing the way for future UX improvements.</span></li>\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">TWEAK: Upgraded the ‘site-to-site’ remote sending code to use the more recent UDRPC message format</span></li>\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">TWEAK: Make the UpdraftClone suggestion sentences dismissible</span></li>\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">TWEAK: Improve JSON-reparser to cope with even more exotic junk from some setups with problems elsewhere in their stack</span></li>\n</ul>\n<p>The post <a rel=\"nofollow\" href=\"https://updraftplus.com/updraftplus-have-released-a-new-update-includes-tweaks-to-make-updraftclone-more-user-friendly/\">UpdraftPlus have released a new update: Includes tweaks to make UpdraftClone more user friendly</a> appeared first on <a rel=\"nofollow\" href=\"https://updraftplus.com\">UpdraftPlus</a>. <a href=\"http://updraftplus.com\">UpdraftPlus - Backup, restore and migration plugin for WordPress.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:124:\"https://updraftplus.com/updraftplus-have-released-a-new-update-includes-tweaks-to-make-updraftclone-more-user-friendly/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:119:\"https://updraftplus.com/updraftplus-have-released-a-new-update-includes-tweaks-to-make-updraftclone-more-user-friendly/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:39:\"http://feeds.feedburner.com/UpdraftPlus\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:11:\"updraftplus\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:10:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"i+y9u+oQdcYvQyn1nGyz8cBbue8\";s:13:\"last-modified\";s:29:\"Wed, 12 Jun 2019 06:37:08 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Wed, 12 Jun 2019 06:50:12 GMT\";s:7:\"expires\";s:29:\"Wed, 12 Jun 2019 06:50:12 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no');
INSERT INTO `dbbs_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(968, '_transient_timeout_feed_mod_3a39ef5d0240c40133252ada9b3c6e81', '1560365416', 'no'),
(969, '_transient_feed_mod_3a39ef5d0240c40133252ada9b3c6e81', '1560322216', 'no'),
(970, 'woocommerce_tracker_ua', 'a:1:{i:0;s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36\";}', 'yes'),
(971, '_transient_timeout_jetpack_https_test', '1560408622', 'no'),
(972, '_transient_jetpack_https_test', '1', 'no'),
(973, '_transient_timeout_jetpack_https_test_message', '1560408622', 'no'),
(974, '_transient_jetpack_https_test_message', '', 'no'),
(975, '_site_transient_timeout_browser_8438cb84460429d96bee757af6bbe094', '1560927024', 'no'),
(976, '_site_transient_browser_8438cb84460429d96bee757af6bbe094', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.169\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(977, '_site_transient_timeout_php_check_568c4f02c24a897087ad9bf8c9a2e42b', '1560927027', 'no'),
(978, '_site_transient_php_check_568c4f02c24a897087ad9bf8c9a2e42b', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(979, '_transient_timeout_wc_report_sales_by_date', '1560408628', 'no'),
(980, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"d165a85cd3ed8dadd3f50da2fea5ee6c\";a:1:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2019-06-03 22:33:55\";}}s:32:\"a2b3bf81e65539c4401f7dca482cd5b1\";a:0:{}s:32:\"577f43905a5b0b5080e805f2bf45138e\";a:1:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"2\";s:9:\"post_date\";s:19:\"2019-06-03 22:33:55\";}}s:32:\"5a0c5692eff83b530b576549d077613b\";N;s:32:\"beb189ac9b5498bed7aeea68c7fc8ed9\";a:1:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"1098\";s:14:\"total_shipping\";s:3:\"100\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2019-06-03 22:33:55\";}}s:32:\"44b6cd0ede1deb2aac62bf3873767628\";a:0:{}s:32:\"1e29bb0592377d6500f9b9367ef9ed07\";a:0:{}s:32:\"efafd4ff2b14db62f9c8e50c6ba1d4ef\";a:0:{}}', 'no'),
(981, '_transient_timeout_wc_admin_report', '1560408628', 'no'),
(982, '_transient_wc_admin_report', 'a:2:{s:32:\"a78c60adef39412a0a5a7845cc9e4b0b\";a:1:{i:0;O:8:\"stdClass\":2:{s:15:\"sparkline_value\";s:4:\"1098\";s:9:\"post_date\";s:19:\"2019-06-03 22:33:55\";}}s:32:\"fbd0604c201d153899ca3f3d9fd91647\";a:1:{i:0;O:8:\"stdClass\":3:{s:10:\"product_id\";s:3:\"191\";s:15:\"sparkline_value\";s:1:\"2\";s:9:\"post_date\";s:19:\"2019-06-03 22:33:55\";}}}', 'no'),
(983, '_transient_timeout_wc_low_stock_count', '1562914228', 'no'),
(984, '_transient_wc_low_stock_count', '0', 'no'),
(985, '_transient_timeout_wc_outofstock_count', '1562914228', 'no'),
(986, '_transient_wc_outofstock_count', '0', 'no'),
(987, 'updraft_combine_jobs_around', '1560424967', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_postmeta`
--

CREATE TABLE `dbbs_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dbbs_postmeta`
--

INSERT INTO `dbbs_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(27, 9, '_edit_lock', '1558637851:1'),
(28, 9, '_wp_page_template', 'default'),
(29, 11, '_wp_trash_meta_status', 'publish'),
(30, 11, '_wp_trash_meta_time', '1558575209'),
(31, 9, '_wp_trash_meta_status', 'publish'),
(32, 9, '_wp_trash_meta_time', '1558637850'),
(33, 9, '_wp_desired_post_slug', 'home'),
(34, 12, '_edit_lock', '1558952390:1'),
(35, 14, '_wp_trash_meta_status', 'publish'),
(36, 14, '_wp_trash_meta_time', '1558637895'),
(37, 15, '_edit_lock', '1558642007:1'),
(38, 17, '_menu_item_type', 'post_type'),
(39, 17, '_menu_item_menu_item_parent', '0'),
(40, 17, '_menu_item_object_id', '15'),
(41, 17, '_menu_item_object', 'page'),
(42, 17, '_menu_item_target', ''),
(43, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 17, '_menu_item_xfn', ''),
(45, 17, '_menu_item_url', ''),
(47, 19, '_edit_last', '1'),
(48, 19, '_edit_lock', '1558656991:1'),
(51, 28, '_wp_attached_file', '2019/05/slider-bg-2.jpg'),
(52, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:694;s:4:\"file\";s:23:\"2019/05/slider-bg-2.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"slider-bg-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"slider-bg-2-300x108.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"slider-bg-2-768x278.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:278;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"slider-bg-2-1024x370.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"slider-bg-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"slider-bg-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"slider-bg-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"slider-bg-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 12, '_edit_last', '1'),
(54, 12, 'image_1', '27'),
(55, 12, '_image_1', 'field_5ce711518c6c5'),
(56, 12, 'image_2', '28'),
(57, 12, '_image_2', 'field_5ce71c39092c0'),
(58, 12, 'title_1', 'Healthy Recipes'),
(59, 12, '_title_1', 'field_5ce712658c6c8'),
(60, 12, 'title_2', 'from the best chefs'),
(61, 12, '_title_2', 'field_5ce712928c6c9'),
(62, 12, 'title_3', 'for all the foodies'),
(63, 12, '_title_3', 'field_5ce712a58c6ca'),
(64, 29, 'image_1', '27'),
(65, 29, '_image_1', 'field_5ce711518c6c5'),
(66, 29, 'image_2', '28'),
(67, 29, '_image_2', 'field_5ce711c68c6c6'),
(68, 29, 'title_1', 'Healthy Recipes'),
(69, 29, '_title_1', 'field_5ce712658c6c8'),
(70, 29, 'title_2', 'from the best chefs'),
(71, 29, '_title_2', 'field_5ce712928c6c9'),
(72, 29, 'title_3', 'for all the foodies'),
(73, 29, '_title_3', 'field_5ce712a58c6ca'),
(74, 12, 'slider_image', '28'),
(75, 12, '_slider_image', 'field_5ce711c68c6c6'),
(76, 33, 'image_1', '27'),
(77, 33, '_image_1', 'field_5ce711518c6c5'),
(78, 33, 'image_2', '28'),
(79, 33, '_image_2', 'field_5ce711c68c6c6'),
(80, 33, 'title_1', 'Healthy Recipes'),
(81, 33, '_title_1', 'field_5ce712658c6c8'),
(82, 33, 'title_2', 'from the best chefs'),
(83, 33, '_title_2', 'field_5ce712928c6c9'),
(84, 33, 'title_3', 'for all the foodies'),
(85, 33, '_title_3', 'field_5ce712a58c6ca'),
(86, 33, 'slider_image', '28'),
(87, 33, '_slider_image', 'field_5ce711c68c6c6'),
(88, 34, 'image_1', '27'),
(89, 34, '_image_1', 'field_5ce711518c6c5'),
(90, 34, 'image_2', '28'),
(91, 34, '_image_2', 'field_5ce71c39092c0'),
(92, 34, 'title_1', 'Healthy Recipes'),
(93, 34, '_title_1', 'field_5ce712658c6c8'),
(94, 34, 'title_2', 'from the best chefs'),
(95, 34, '_title_2', 'field_5ce712928c6c9'),
(96, 34, 'title_3', 'for all the foodies'),
(97, 34, '_title_3', 'field_5ce712a58c6ca'),
(98, 34, 'slider_image', '28'),
(99, 34, '_slider_image', 'field_5ce711c68c6c6'),
(100, 36, 'image_1', '27'),
(101, 36, '_image_1', 'field_5ce711518c6c5'),
(102, 36, 'image_2', '28'),
(103, 36, '_image_2', 'field_5ce71c39092c0'),
(104, 36, 'title_1', 'Unhealthy Recipes'),
(105, 36, '_title_1', 'field_5ce712658c6c8'),
(106, 36, 'title_2', 'from the best chefs'),
(107, 36, '_title_2', 'field_5ce712928c6c9'),
(108, 36, 'title_3', 'for all the foodies'),
(109, 36, '_title_3', 'field_5ce712a58c6ca'),
(110, 36, 'slider_image', '28'),
(111, 36, '_slider_image', 'field_5ce711c68c6c6'),
(112, 37, 'image_1', '27'),
(113, 37, '_image_1', 'field_5ce711518c6c5'),
(114, 37, 'image_2', '28'),
(115, 37, '_image_2', 'field_5ce71c39092c0'),
(116, 37, 'title_1', 'Healthy Recipes'),
(117, 37, '_title_1', 'field_5ce712658c6c8'),
(118, 37, 'title_2', 'from the best chefs'),
(119, 37, '_title_2', 'field_5ce712928c6c9'),
(120, 37, 'title_3', 'for all the foodies'),
(121, 37, '_title_3', 'field_5ce712a58c6ca'),
(122, 37, 'slider_image', '28'),
(123, 37, '_slider_image', 'field_5ce711c68c6c6'),
(124, 38, '_edit_last', '1'),
(125, 38, '_edit_lock', '1558747009:1'),
(126, 48, '_wp_attached_file', '2019/05/1.jpg'),
(127, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:759;s:6:\"height\";i:283;s:4:\"file\";s:13:\"2019/05/1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x112.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:112;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 12, 'amazing_deserts_title', 'Amazing deserts'),
(129, 12, '_amazing_deserts_title', 'field_5ce720ce53409'),
(130, 12, 'desc_1', 'Easy to make'),
(131, 12, '_desc_1', 'field_5ce721c05340b'),
(132, 12, 'desc_2', 'Step by Step Video Tutorial'),
(133, 12, '_desc_2', 'field_5ce721f45340c'),
(134, 12, 'desc_3', 'Gluten Free'),
(135, 12, '_desc_3', 'field_5ce722155340d'),
(136, 12, 'desc_4', 'Healthy Ingredients'),
(137, 12, '_desc_4', 'field_5ce722345340e'),
(138, 12, 'img_1', '48'),
(139, 12, '_img_1', 'field_5ce722d492a4d'),
(140, 12, 'img_2', '50'),
(141, 12, '_img_2', 'field_5ce722f992a4e'),
(142, 49, 'image_1', '27'),
(143, 49, '_image_1', 'field_5ce711518c6c5'),
(144, 49, 'image_2', '28'),
(145, 49, '_image_2', 'field_5ce71c39092c0'),
(146, 49, 'title_1', 'Healthy Recipes'),
(147, 49, '_title_1', 'field_5ce712658c6c8'),
(148, 49, 'title_2', 'from the best chefs'),
(149, 49, '_title_2', 'field_5ce712928c6c9'),
(150, 49, 'title_3', 'for all the foodies'),
(151, 49, '_title_3', 'field_5ce712a58c6ca'),
(152, 49, 'slider_image', '28'),
(153, 49, '_slider_image', 'field_5ce711c68c6c6'),
(154, 49, 'amazing_deserts_title', ''),
(155, 49, '_amazing_deserts_title', 'field_5ce720ce53409'),
(156, 49, 'desc_1', ''),
(157, 49, '_desc_1', 'field_5ce721c05340b'),
(158, 49, 'desc_2', ''),
(159, 49, '_desc_2', 'field_5ce721f45340c'),
(160, 49, 'desc_3', ''),
(161, 49, '_desc_3', 'field_5ce722155340d'),
(162, 49, 'desc_4', ''),
(163, 49, '_desc_4', 'field_5ce722345340e'),
(164, 49, 'img_1', '48'),
(165, 49, '_img_1', 'field_5ce722d492a4d'),
(166, 49, 'img_2', ''),
(167, 49, '_img_2', 'field_5ce722f992a4e'),
(168, 50, '_wp_attached_file', '2019/05/2.jpg'),
(169, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:759;s:6:\"height\";i:283;s:4:\"file\";s:13:\"2019/05/2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x112.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:112;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(170, 52, '_wp_attached_file', '2019/05/3.jpg'),
(171, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:759;s:6:\"height\";i:283;s:4:\"file\";s:13:\"2019/05/3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x112.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:112;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 12, 'img_3', '52'),
(173, 12, '_img_3', 'field_5ce723df66754'),
(174, 53, 'image_1', '27'),
(175, 53, '_image_1', 'field_5ce711518c6c5'),
(176, 53, 'image_2', '28'),
(177, 53, '_image_2', 'field_5ce71c39092c0'),
(178, 53, 'title_1', 'Healthy Recipes'),
(179, 53, '_title_1', 'field_5ce712658c6c8'),
(180, 53, 'title_2', 'from the best chefs'),
(181, 53, '_title_2', 'field_5ce712928c6c9'),
(182, 53, 'title_3', 'for all the foodies'),
(183, 53, '_title_3', 'field_5ce712a58c6ca'),
(184, 53, 'slider_image', '28'),
(185, 53, '_slider_image', 'field_5ce711c68c6c6'),
(186, 53, 'amazing_deserts_title', ''),
(187, 53, '_amazing_deserts_title', 'field_5ce720ce53409'),
(188, 53, 'desc_1', ''),
(189, 53, '_desc_1', 'field_5ce721c05340b'),
(190, 53, 'desc_2', ''),
(191, 53, '_desc_2', 'field_5ce721f45340c'),
(192, 53, 'desc_3', ''),
(193, 53, '_desc_3', 'field_5ce722155340d'),
(194, 53, 'desc_4', ''),
(195, 53, '_desc_4', 'field_5ce722345340e'),
(196, 53, 'img_1', '48'),
(197, 53, '_img_1', 'field_5ce722d492a4d'),
(198, 53, 'img_2', '50'),
(199, 53, '_img_2', 'field_5ce722f992a4e'),
(200, 53, 'img_3', '52'),
(201, 53, '_img_3', 'field_5ce723df66754'),
(202, 54, 'image_1', '27'),
(203, 54, '_image_1', 'field_5ce711518c6c5'),
(204, 54, 'image_2', '28'),
(205, 54, '_image_2', 'field_5ce71c39092c0'),
(206, 54, 'title_1', 'Healthy Recipes'),
(207, 54, '_title_1', 'field_5ce712658c6c8'),
(208, 54, 'title_2', 'from the best chefs'),
(209, 54, '_title_2', 'field_5ce712928c6c9'),
(210, 54, 'title_3', 'for all the foodies'),
(211, 54, '_title_3', 'field_5ce712a58c6ca'),
(212, 54, 'slider_image', '28'),
(213, 54, '_slider_image', 'field_5ce711c68c6c6'),
(214, 54, 'amazing_deserts_title', ''),
(215, 54, '_amazing_deserts_title', 'field_5ce720ce53409'),
(216, 54, 'desc_1', 'Easy to make'),
(217, 54, '_desc_1', 'field_5ce721c05340b'),
(218, 54, 'desc_2', 'Step by Step Video Tutorial'),
(219, 54, '_desc_2', 'field_5ce721f45340c'),
(220, 54, 'desc_3', 'Gluten Free'),
(221, 54, '_desc_3', 'field_5ce722155340d'),
(222, 54, 'desc_4', 'Healty Ingredients'),
(223, 54, '_desc_4', 'field_5ce722345340e'),
(224, 54, 'img_1', '48'),
(225, 54, '_img_1', 'field_5ce722d492a4d'),
(226, 54, 'img_2', '50'),
(227, 54, '_img_2', 'field_5ce722f992a4e'),
(228, 54, 'img_3', '52'),
(229, 54, '_img_3', 'field_5ce723df66754'),
(230, 55, 'image_1', '27'),
(231, 55, '_image_1', 'field_5ce711518c6c5'),
(232, 55, 'image_2', '28'),
(233, 55, '_image_2', 'field_5ce71c39092c0'),
(234, 55, 'title_1', 'Healthy Recipes'),
(235, 55, '_title_1', 'field_5ce712658c6c8'),
(236, 55, 'title_2', 'from the best chefs'),
(237, 55, '_title_2', 'field_5ce712928c6c9'),
(238, 55, 'title_3', 'for all the foodies'),
(239, 55, '_title_3', 'field_5ce712a58c6ca'),
(240, 55, 'slider_image', '28'),
(241, 55, '_slider_image', 'field_5ce711c68c6c6'),
(242, 55, 'amazing_deserts_title', ''),
(243, 55, '_amazing_deserts_title', 'field_5ce720ce53409'),
(244, 55, 'desc_1', 'Easy to make'),
(245, 55, '_desc_1', 'field_5ce721c05340b'),
(246, 55, 'desc_2', 'Step by Step Video Tutorial'),
(247, 55, '_desc_2', 'field_5ce721f45340c'),
(248, 55, 'desc_3', 'Gluten Free'),
(249, 55, '_desc_3', 'field_5ce722155340d'),
(250, 55, 'desc_4', 'Healthy Ingredients'),
(251, 55, '_desc_4', 'field_5ce722345340e'),
(252, 55, 'img_1', '48'),
(253, 55, '_img_1', 'field_5ce722d492a4d'),
(254, 55, 'img_2', '50'),
(255, 55, '_img_2', 'field_5ce722f992a4e'),
(256, 55, 'img_3', '52'),
(257, 55, '_img_3', 'field_5ce723df66754'),
(258, 56, 'image_1', '27'),
(259, 56, '_image_1', 'field_5ce711518c6c5'),
(260, 56, 'image_2', '28'),
(261, 56, '_image_2', 'field_5ce71c39092c0'),
(262, 56, 'title_1', 'Healthy Recipes'),
(263, 56, '_title_1', 'field_5ce712658c6c8'),
(264, 56, 'title_2', 'from the best chefs'),
(265, 56, '_title_2', 'field_5ce712928c6c9'),
(266, 56, 'title_3', 'for all the foodies'),
(267, 56, '_title_3', 'field_5ce712a58c6ca'),
(268, 56, 'slider_image', '28'),
(269, 56, '_slider_image', 'field_5ce711c68c6c6'),
(270, 56, 'amazing_deserts_title', 'Amazing deserts'),
(271, 56, '_amazing_deserts_title', 'field_5ce720ce53409'),
(272, 56, 'desc_1', 'Easy to make'),
(273, 56, '_desc_1', 'field_5ce721c05340b'),
(274, 56, 'desc_2', 'Step by Step Video Tutorial'),
(275, 56, '_desc_2', 'field_5ce721f45340c'),
(276, 56, 'desc_3', 'Gluten Free'),
(277, 56, '_desc_3', 'field_5ce722155340d'),
(278, 56, 'desc_4', 'Healthy Ingredients'),
(279, 56, '_desc_4', 'field_5ce722345340e'),
(280, 56, 'img_1', '48'),
(281, 56, '_img_1', 'field_5ce722d492a4d'),
(282, 56, 'img_2', '50'),
(283, 56, '_img_2', 'field_5ce722f992a4e'),
(284, 56, 'img_3', '52'),
(285, 56, '_img_3', 'field_5ce723df66754'),
(286, 57, 'image_1', '27'),
(287, 57, '_image_1', 'field_5ce711518c6c5'),
(288, 57, 'image_2', '28'),
(289, 57, '_image_2', 'field_5ce71c39092c0'),
(290, 57, 'title_1', 'Healthy Recipes'),
(291, 57, '_title_1', 'field_5ce712658c6c8'),
(292, 57, 'title_2', 'from the best chefs'),
(293, 57, '_title_2', 'field_5ce712928c6c9'),
(294, 57, 'title_3', 'for all the foodies'),
(295, 57, '_title_3', 'field_5ce712a58c6ca'),
(296, 57, 'slider_image', '28'),
(297, 57, '_slider_image', 'field_5ce711c68c6c6'),
(298, 57, 'amazing_deserts_title', 'Amazing deserts'),
(299, 57, '_amazing_deserts_title', 'field_5ce720ce53409'),
(300, 57, 'desc_1', 'not Easy to make'),
(301, 57, '_desc_1', 'field_5ce721c05340b'),
(302, 57, 'desc_2', 'Step by Step Video Tutorial'),
(303, 57, '_desc_2', 'field_5ce721f45340c'),
(304, 57, 'desc_3', 'Gluten Free'),
(305, 57, '_desc_3', 'field_5ce722155340d'),
(306, 57, 'desc_4', 'Healthy Ingredients'),
(307, 57, '_desc_4', 'field_5ce722345340e'),
(308, 57, 'img_1', '48'),
(309, 57, '_img_1', 'field_5ce722d492a4d'),
(310, 57, 'img_2', '50'),
(311, 57, '_img_2', 'field_5ce722f992a4e'),
(312, 57, 'img_3', '52'),
(313, 57, '_img_3', 'field_5ce723df66754'),
(314, 58, 'image_1', '27'),
(315, 58, '_image_1', 'field_5ce711518c6c5'),
(316, 58, 'image_2', '28'),
(317, 58, '_image_2', 'field_5ce71c39092c0'),
(318, 58, 'title_1', 'Healthy Recipes'),
(319, 58, '_title_1', 'field_5ce712658c6c8'),
(320, 58, 'title_2', 'from the best chefs'),
(321, 58, '_title_2', 'field_5ce712928c6c9'),
(322, 58, 'title_3', 'for all the foodies'),
(323, 58, '_title_3', 'field_5ce712a58c6ca'),
(324, 58, 'slider_image', '28'),
(325, 58, '_slider_image', 'field_5ce711c68c6c6'),
(326, 58, 'amazing_deserts_title', 'Amazing deserts'),
(327, 58, '_amazing_deserts_title', 'field_5ce720ce53409'),
(328, 58, 'desc_1', 'Easy to make'),
(329, 58, '_desc_1', 'field_5ce721c05340b'),
(330, 58, 'desc_2', 'Step by Step Video Tutorial'),
(331, 58, '_desc_2', 'field_5ce721f45340c'),
(332, 58, 'desc_3', 'Gluten Free'),
(333, 58, '_desc_3', 'field_5ce722155340d'),
(334, 58, 'desc_4', 'Healthy Ingredients'),
(335, 58, '_desc_4', 'field_5ce722345340e'),
(336, 58, 'img_1', '48'),
(337, 58, '_img_1', 'field_5ce722d492a4d'),
(338, 58, 'img_2', '50'),
(339, 58, '_img_2', 'field_5ce722f992a4e'),
(340, 58, 'img_3', '52'),
(341, 58, '_img_3', 'field_5ce723df66754'),
(342, 59, 'image_1', '27'),
(343, 59, '_image_1', 'field_5ce711518c6c5'),
(344, 59, 'image_2', '28'),
(345, 59, '_image_2', 'field_5ce71c39092c0'),
(346, 59, 'title_1', 'Healthy Recipes'),
(347, 59, '_title_1', 'field_5ce712658c6c8'),
(348, 59, 'title_2', 'from the best chefs'),
(349, 59, '_title_2', 'field_5ce712928c6c9'),
(350, 59, 'title_3', 'for all the foodies'),
(351, 59, '_title_3', 'field_5ce712a58c6ca'),
(352, 59, 'slider_image', '28'),
(353, 59, '_slider_image', 'field_5ce711c68c6c6'),
(354, 59, 'amazing_deserts_title', 'Amazing deserts'),
(355, 59, '_amazing_deserts_title', 'field_5ce720ce53409'),
(356, 59, 'desc_1', 'Easy to make'),
(357, 59, '_desc_1', 'field_5ce721c05340b'),
(358, 59, 'desc_2', 'Step by Step Video Tutorial'),
(359, 59, '_desc_2', 'field_5ce721f45340c'),
(360, 59, 'desc_3', 'Gluten Free'),
(361, 59, '_desc_3', 'field_5ce722155340d'),
(362, 59, 'desc_4', 'Healthy Ingredients'),
(363, 59, '_desc_4', 'field_5ce722345340e'),
(364, 59, 'img_1', '48'),
(365, 59, '_img_1', 'field_5ce722d492a4d'),
(366, 59, 'img_2', '50'),
(367, 59, '_img_2', 'field_5ce722f992a4e'),
(368, 59, 'img_3', '52'),
(369, 59, '_img_3', 'field_5ce723df66754'),
(370, 60, '_edit_last', '1'),
(372, 60, '_edit_lock', '1558656600:1'),
(373, 61, '_edit_last', '1'),
(374, 61, '_thumbnail_id', '28'),
(375, 61, '_edit_lock', '1558654045:1'),
(376, 60, 'image_1', '27'),
(377, 60, '_image_1', 'field_5ce711518c6c5'),
(378, 60, 'image_2', '28'),
(379, 60, '_image_2', 'field_5ce71c39092c0'),
(380, 60, 'title_1', 'Healthy Recipes'),
(381, 60, '_title_1', 'field_5ce712658c6c8'),
(382, 60, 'title_2', 'from the best chefs'),
(383, 60, '_title_2', 'field_5ce712928c6c9'),
(384, 60, 'title_3', 'for all the foodies'),
(385, 60, '_title_3', 'field_5ce712a58c6ca'),
(386, 61, '_wp_trash_meta_status', 'publish'),
(387, 61, '_wp_trash_meta_time', '1558654195'),
(388, 61, '_wp_desired_post_slug', 'auto-draft-2'),
(389, 60, 'slider_image', '28'),
(390, 60, '_slider_image', 'field_5ce71c39092c0'),
(391, 60, '_thumbnail_id', '52'),
(392, 60, '_wp_trash_meta_status', 'publish'),
(393, 60, '_wp_trash_meta_time', '1558656780'),
(394, 60, '_wp_desired_post_slug', 'auto-draft'),
(395, 66, '_edit_last', '1'),
(396, 66, 'hero_slider_image', '132'),
(397, 66, '_hero_slider_image', 'field_5ce711518c6c5'),
(398, 66, 'title_1', 'Healthy Recipes'),
(399, 66, '_title_1', 'field_5ce712658c6c8'),
(400, 66, 'title_2', 'from the best chefs'),
(401, 66, '_title_2', 'field_5ce712928c6c9'),
(402, 66, 'title_3', 'for all the foodies'),
(403, 66, '_title_3', 'field_5ce712a58c6ca'),
(404, 66, '_edit_lock', '1558747170:1'),
(405, 67, '_edit_last', '1'),
(406, 67, 'hero_slider_image', '28'),
(407, 67, '_hero_slider_image', 'field_5ce711518c6c5'),
(408, 67, 'title_1', 'Healthy Recipes'),
(409, 67, '_title_1', 'field_5ce712658c6c8'),
(410, 67, 'title_2', 'from the best chefs'),
(411, 67, '_title_2', 'field_5ce712928c6c9'),
(412, 67, 'title_3', 'for all the foodies'),
(413, 67, '_title_3', 'field_5ce712a58c6ca'),
(414, 67, '_edit_lock', '1558738559:1'),
(441, 74, '_edit_last', '1'),
(442, 74, '_edit_lock', '1558747547:1'),
(443, 75, '_wp_attached_file', '2019/05/1-1.jpg'),
(444, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:430;s:4:\"file\";s:15:\"2019/05/1-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-1-300x258.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(445, 74, '_thumbnail_id', '75'),
(446, 76, '_edit_last', '1'),
(447, 76, '_edit_lock', '1558725142:1'),
(448, 77, '_wp_attached_file', '2019/05/2-1.jpg'),
(449, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:430;s:4:\"file\";s:15:\"2019/05/2-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-1-300x258.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(450, 76, '_thumbnail_id', '77'),
(451, 78, '_edit_last', '1'),
(452, 78, '_edit_lock', '1558725215:1'),
(453, 79, '_wp_attached_file', '2019/05/3-1.jpg'),
(454, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:430;s:4:\"file\";s:15:\"2019/05/3-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"3-1-300x258.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"3-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(455, 78, '_thumbnail_id', '79'),
(456, 80, '_edit_last', '1'),
(457, 80, '_edit_lock', '1558725231:1'),
(458, 81, '_wp_attached_file', '2019/05/4.jpg'),
(459, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:430;s:4:\"file\";s:13:\"2019/05/4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x258.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(460, 80, '_thumbnail_id', '81'),
(461, 82, '_edit_last', '1'),
(462, 82, '_edit_lock', '1558725254:1'),
(463, 83, '_wp_attached_file', '2019/05/5.jpg'),
(464, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:430;s:4:\"file\";s:13:\"2019/05/5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-300x258.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(465, 82, '_thumbnail_id', '83'),
(466, 84, '_edit_last', '1'),
(467, 84, '_edit_lock', '1558726236:1'),
(468, 85, '_wp_attached_file', '2019/05/6.jpg'),
(469, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:429;s:4:\"file\";s:13:\"2019/05/6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-300x257.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(470, 84, '_thumbnail_id', '85'),
(471, 89, '_wp_attached_file', '2019/05/11.jpg'),
(472, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:430;s:4:\"file\";s:14:\"2019/05/11.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"11-300x258.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(473, 88, '_edit_last', '1'),
(474, 88, 'hero_slider_image', '89'),
(475, 88, '_hero_slider_image', 'field_5ce711518c6c5'),
(476, 88, 'title_1', 'unHealthy Recipes'),
(477, 88, '_title_1', 'field_5ce712658c6c8'),
(478, 88, 'title_2', 'from the best chefs'),
(479, 88, '_title_2', 'field_5ce712928c6c9'),
(480, 88, 'title_3', 'for all the foodies'),
(481, 88, '_title_3', 'field_5ce712a58c6ca'),
(482, 88, '_edit_lock', '1558727361:1'),
(483, 88, '_wp_trash_meta_status', 'publish'),
(484, 88, '_wp_trash_meta_time', '1558727512'),
(485, 88, '_wp_desired_post_slug', 'auto-draft-3'),
(486, 90, '_menu_item_type', 'post_type'),
(487, 90, '_menu_item_menu_item_parent', '0'),
(488, 90, '_menu_item_object_id', '12'),
(489, 90, '_menu_item_object', 'page'),
(490, 90, '_menu_item_target', ''),
(491, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(492, 90, '_menu_item_xfn', ''),
(493, 90, '_menu_item_url', ''),
(495, 91, '_edit_lock', '1559202007:1'),
(496, 93, '_menu_item_type', 'post_type'),
(497, 93, '_menu_item_menu_item_parent', '0'),
(498, 93, '_menu_item_object_id', '91'),
(499, 93, '_menu_item_object', 'page'),
(500, 93, '_menu_item_target', ''),
(501, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(502, 93, '_menu_item_xfn', ''),
(503, 93, '_menu_item_url', ''),
(505, 94, '_edit_last', '1'),
(506, 94, '_edit_lock', '1558737131:1'),
(507, 95, '_wp_attached_file', '2019/05/7.jpg'),
(508, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:430;s:4:\"file\";s:13:\"2019/05/7.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"7-300x258.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(509, 94, '_thumbnail_id', '95'),
(510, 96, '_edit_last', '1'),
(511, 96, '_edit_lock', '1558737185:1'),
(512, 97, '_wp_attached_file', '2019/05/8.jpg'),
(513, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:430;s:4:\"file\";s:13:\"2019/05/8.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"8-300x258.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(514, 96, '_thumbnail_id', '97'),
(515, 98, '_edit_last', '1'),
(516, 98, '_edit_lock', '1558737241:1'),
(517, 99, '_wp_attached_file', '2019/05/9.jpg'),
(518, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:430;s:4:\"file\";s:13:\"2019/05/9.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"9-300x258.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(519, 98, '_thumbnail_id', '99'),
(520, 100, '_edit_last', '1'),
(521, 100, '_edit_lock', '1558737269:1'),
(522, 101, '_wp_attached_file', '2019/05/10.jpg'),
(523, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:430;s:4:\"file\";s:14:\"2019/05/10.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"10-300x258.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(524, 100, '_thumbnail_id', '101'),
(525, 102, '_edit_last', '1'),
(526, 102, '_edit_lock', '1558737335:1'),
(527, 102, '_thumbnail_id', '89'),
(528, 103, '_edit_last', '1'),
(529, 103, '_edit_lock', '1558738431:1'),
(530, 104, '_wp_attached_file', '2019/05/12.jpg'),
(531, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:430;s:4:\"file\";s:14:\"2019/05/12.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"12-300x258.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(532, 103, '_thumbnail_id', '104'),
(533, 105, '_edit_last', '1'),
(534, 105, '_edit_lock', '1558747115:1'),
(535, 106, '_wp_attached_file', '2019/05/1-2.jpg'),
(536, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2019/05/1-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(537, 105, '_thumbnail_id', '106'),
(538, 107, '_edit_last', '1'),
(539, 107, '_edit_lock', '1558738748:1'),
(540, 108, '_wp_attached_file', '2019/05/2-2.jpg'),
(541, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:498;s:4:\"file\";s:15:\"2019/05/2-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(542, 107, '_thumbnail_id', '108'),
(543, 109, '_edit_last', '1'),
(544, 109, '_edit_lock', '1558738768:1'),
(545, 110, '_wp_attached_file', '2019/05/3-2.jpg'),
(546, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:497;s:4:\"file\";s:15:\"2019/05/3-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"3-2-300x298.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:298;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(547, 109, '_thumbnail_id', '110'),
(548, 111, '_edit_last', '1'),
(549, 111, '_edit_lock', '1558738785:1'),
(550, 112, '_wp_attached_file', '2019/05/4-1.jpg'),
(551, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:502;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2019/05/4-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"4-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"4-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(552, 111, '_thumbnail_id', '112'),
(553, 113, '_edit_last', '1'),
(554, 113, '_edit_lock', '1558738805:1'),
(555, 114, '_wp_attached_file', '2019/05/5-1.jpg'),
(556, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:502;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2019/05/5-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"5-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"5-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(557, 113, '_thumbnail_id', '114'),
(558, 115, '_edit_last', '1'),
(559, 115, '_edit_lock', '1558747306:1'),
(563, 117, '_edit_lock', '1558744472:1'),
(564, 119, '_menu_item_type', 'post_type'),
(565, 119, '_menu_item_menu_item_parent', '0'),
(566, 119, '_menu_item_object_id', '117'),
(567, 119, '_menu_item_object', 'page'),
(568, 119, '_menu_item_target', ''),
(569, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(570, 119, '_menu_item_xfn', ''),
(571, 119, '_menu_item_url', ''),
(573, 120, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(574, 120, '_mail', 'a:8:{s:7:\"subject\";s:26:\"Food Blog \"[your-subject]\"\";s:6:\"sender\";s:38:\"Food Blog <sarkarsusmita253@gmail.com>\";s:4:\"body\";s:173:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Food Blog (http://localhost/foodblog)\";s:9:\"recipient\";s:26:\"sarkarsusmita253@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(575, 120, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\"Food Blog \"[your-subject]\"\";s:6:\"sender\";s:38:\"Food Blog <sarkarsusmita253@gmail.com>\";s:4:\"body\";s:115:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Food Blog (http://localhost/foodblog)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:36:\"Reply-To: sarkarsusmita253@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(576, 120, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(577, 120, '_additional_settings', NULL),
(578, 120, '_locale', 'en_US'),
(579, 121, '_form', '<div class=\"row\">\n    <div class=\"col-md-6\">\n        [text* your-name placeholder \"Name\"] \n    </div>\n    <div class=\"col-md-6\">\n        [email* your-email placeholder \"E-mail\"]\n    </div>\n    <div class=\"col-md-12\">\n        [text* your-subject placeholder \"Subject\"] \n        [textarea* your-message *3 placeholder \"Message\"]\n        <button class=\"site-btn\">Send</button>\n    </div>\n</div>'),
(580, 121, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:26:\"Food Blog \"[your-subject]\"\";s:6:\"sender\";s:38:\"Food Blog <sarkarsusmita253@gmail.com>\";s:9:\"recipient\";s:26:\"sarkarsusmita253@gmail.com\";s:4:\"body\";s:173:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Food Blog (http://localhost/foodblog)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(581, 121, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\"Food Blog \"[your-subject]\"\";s:6:\"sender\";s:38:\"Food Blog <sarkarsusmita253@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:115:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Food Blog (http://localhost/foodblog)\";s:18:\"additional_headers\";s:36:\"Reply-To: sarkarsusmita253@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(582, 121, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(583, 121, '_additional_settings', ''),
(584, 121, '_locale', 'en_US'),
(585, 124, '_menu_item_type', 'post_type'),
(586, 124, '_menu_item_menu_item_parent', '0'),
(587, 124, '_menu_item_object_id', '117'),
(588, 124, '_menu_item_object', 'page'),
(589, 124, '_menu_item_target', ''),
(590, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(591, 124, '_menu_item_xfn', ''),
(592, 124, '_menu_item_url', ''),
(594, 125, '_menu_item_type', 'post_type'),
(595, 125, '_menu_item_menu_item_parent', '0'),
(596, 125, '_menu_item_object_id', '91'),
(597, 125, '_menu_item_object', 'page'),
(598, 125, '_menu_item_target', ''),
(599, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(600, 125, '_menu_item_xfn', ''),
(601, 125, '_menu_item_url', ''),
(603, 126, '_menu_item_type', 'post_type'),
(604, 126, '_menu_item_menu_item_parent', '0'),
(605, 126, '_menu_item_object_id', '15'),
(606, 126, '_menu_item_object', 'page'),
(607, 126, '_menu_item_target', ''),
(608, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(609, 126, '_menu_item_xfn', ''),
(610, 126, '_menu_item_url', ''),
(612, 127, '_menu_item_type', 'post_type'),
(613, 127, '_menu_item_menu_item_parent', '0'),
(614, 127, '_menu_item_object_id', '12'),
(615, 127, '_menu_item_object', 'page'),
(616, 127, '_menu_item_target', ''),
(617, 127, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(618, 127, '_menu_item_xfn', ''),
(619, 127, '_menu_item_url', ''),
(640, 132, '_wp_attached_file', '2019/05/slider-bg-1.jpg'),
(641, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:694;s:4:\"file\";s:23:\"2019/05/slider-bg-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"slider-bg-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"slider-bg-1-300x108.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"slider-bg-1-768x278.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:278;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"slider-bg-1-1024x370.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"slider-bg-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"slider-bg-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"slider-bg-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"slider-bg-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(645, 133, '_wp_attached_file', '2019/05/6-1.jpg'),
(646, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:494;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2019/05/6-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"6-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"6-1-296x300.jpg\";s:5:\"width\";i:296;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(647, 115, '_thumbnail_id', '133'),
(648, 134, '_edit_lock', '1558944565:1'),
(649, 136, '_menu_item_type', 'post_type'),
(650, 136, '_menu_item_menu_item_parent', '0'),
(651, 136, '_menu_item_object_id', '134'),
(652, 136, '_menu_item_object', 'page'),
(653, 136, '_menu_item_target', ''),
(654, 136, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(655, 136, '_menu_item_xfn', ''),
(656, 136, '_menu_item_url', ''),
(658, 1, '_edit_lock', '1558950178:1'),
(661, 138, '_wp_attached_file', '2019/05/1-3.jpg'),
(662, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:451;s:4:\"file\";s:15:\"2019/05/1-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-3-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(665, 1, '_thumbnail_id', '138'),
(670, 140, '_wp_trash_meta_status', 'publish'),
(671, 140, '_wp_trash_meta_time', '1558945499'),
(672, 141, '_wp_trash_meta_status', 'publish'),
(673, 141, '_wp_trash_meta_time', '1558945545'),
(674, 142, '_wp_trash_meta_status', 'publish'),
(675, 142, '_wp_trash_meta_time', '1558945606'),
(676, 143, '_wp_trash_meta_status', 'publish'),
(677, 143, '_wp_trash_meta_time', '1558945663'),
(678, 144, '_wp_trash_meta_status', 'publish'),
(679, 144, '_wp_trash_meta_time', '1558945768'),
(681, 146, '_edit_lock', '1558950425:1'),
(684, 146, '_thumbnail_id', '95'),
(686, 149, '_wp_trash_meta_status', 'publish'),
(687, 149, '_wp_trash_meta_time', '1559025462'),
(688, 152, '_wp_trash_meta_status', 'publish'),
(689, 152, '_wp_trash_meta_time', '1559025845'),
(718, 170, '_edit_lock', '1559200835:1'),
(722, 161, '_edit_lock', '1559202021:1'),
(723, 160, '_edit_lock', '1559202324:1'),
(724, 170, '_wp_trash_meta_status', 'publish'),
(725, 170, '_wp_trash_meta_time', '1559204726'),
(726, 170, '_wp_desired_post_slug', 'register'),
(745, 178, '_menu_item_type', 'post_type'),
(746, 178, '_menu_item_menu_item_parent', '0'),
(747, 178, '_menu_item_object_id', '161'),
(748, 178, '_menu_item_object', 'page'),
(749, 178, '_menu_item_target', ''),
(750, 178, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(751, 178, '_menu_item_xfn', ''),
(752, 178, '_menu_item_url', '');
INSERT INTO `dbbs_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(754, 179, '_menu_item_type', 'post_type'),
(755, 179, '_menu_item_menu_item_parent', '0'),
(756, 179, '_menu_item_object_id', '160'),
(757, 179, '_menu_item_object', 'page'),
(758, 179, '_menu_item_target', ''),
(759, 179, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(760, 179, '_menu_item_xfn', ''),
(761, 179, '_menu_item_url', ''),
(773, 138, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.876068376068376;s:5:\"bytes\";i:1375;s:11:\"size_before\";i:23400;s:10:\"size_after\";i:22025;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.74;s:5:\"bytes\";i:521;s:11:\"size_before\";i:7731;s:10:\"size_after\";i:7210;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.45;s:5:\"bytes\";i:854;s:11:\"size_before\";i:15669;s:10:\"size_after\";i:14815;s:4:\"time\";d:0.01;}}}'),
(774, 133, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:4.930427374698282;s:5:\"bytes\";i:1389;s:11:\"size_before\";i:28172;s:10:\"size_after\";i:26783;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.92;s:5:\"bytes\";i:439;s:11:\"size_before\";i:7414;s:10:\"size_after\";i:6975;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.58;s:5:\"bytes\";i:950;s:11:\"size_before\";i:20758;s:10:\"size_after\";i:19808;s:4:\"time\";d:0.01;}}}'),
(775, 132, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:4.8679057280062;s:5:\"bytes\";i:7035;s:11:\"size_before\";i:144518;s:10:\"size_after\";i:137483;s:4:\"time\";d:0.08;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:4:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.23;s:5:\"bytes\";i:444;s:11:\"size_before\";i:7131;s:10:\"size_after\";i:6687;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.71;s:5:\"bytes\";i:523;s:11:\"size_before\";i:9158;s:10:\"size_after\";i:8635;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.97;s:5:\"bytes\";i:2398;s:11:\"size_before\";i:48269;s:10:\"size_after\";i:45871;s:4:\"time\";d:0.02;}s:5:\"large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.59;s:5:\"bytes\";i:3670;s:11:\"size_before\";i:79960;s:10:\"size_after\";i:76290;s:4:\"time\";d:0.04;}}}'),
(776, 114, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.242138470315803;s:5:\"bytes\";i:1562;s:11:\"size_before\";i:29797;s:10:\"size_after\";i:28235;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.21;s:5:\"bytes\";i:457;s:11:\"size_before\";i:7355;s:10:\"size_after\";i:6898;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.92;s:5:\"bytes\";i:1105;s:11:\"size_before\";i:22442;s:10:\"size_after\";i:21337;s:4:\"time\";d:0.01;}}}'),
(777, 112, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:6.879318349400551;s:5:\"bytes\";i:2519;s:11:\"size_before\";i:36617;s:10:\"size_after\";i:34098;s:4:\"time\";d:0.03;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.48;s:5:\"bytes\";i:659;s:11:\"size_before\";i:8814;s:10:\"size_after\";i:8155;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.69;s:5:\"bytes\";i:1860;s:11:\"size_before\";i:27803;s:10:\"size_after\";i:25943;s:4:\"time\";d:0.02;}}}'),
(778, 110, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.858937382308774;s:5:\"bytes\";i:2458;s:11:\"size_before\";i:41953;s:10:\"size_after\";i:39495;s:4:\"time\";d:0.03;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.53;s:5:\"bytes\";i:640;s:11:\"size_before\";i:9797;s:10:\"size_after\";i:9157;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.65;s:5:\"bytes\";i:1818;s:11:\"size_before\";i:32156;s:10:\"size_after\";i:30338;s:4:\"time\";d:0.02;}}}'),
(779, 108, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.160241008390936;s:5:\"bytes\";i:1396;s:11:\"size_before\";i:27053;s:10:\"size_after\";i:25657;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.92;s:5:\"bytes\";i:416;s:11:\"size_before\";i:7024;s:10:\"size_after\";i:6608;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.89;s:5:\"bytes\";i:980;s:11:\"size_before\";i:20029;s:10:\"size_after\";i:19049;s:4:\"time\";d:0.01;}}}'),
(780, 106, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.640318627450981;s:5:\"bytes\";i:1841;s:11:\"size_before\";i:32640;s:10:\"size_after\";i:30799;s:4:\"time\";d:0.03;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.77;s:5:\"bytes\";i:573;s:11:\"size_before\";i:8464;s:10:\"size_after\";i:7891;s:4:\"time\";d:0.02;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.24;s:5:\"bytes\";i:1268;s:11:\"size_before\";i:24176;s:10:\"size_after\";i:22908;s:4:\"time\";d:0.01;}}}'),
(781, 104, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:6.432391138273491;s:5:\"bytes\";i:1684;s:11:\"size_before\";i:26180;s:10:\"size_after\";i:24496;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.74;s:5:\"bytes\";i:595;s:11:\"size_before\";i:7691;s:10:\"size_after\";i:7096;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.89;s:5:\"bytes\";i:1089;s:11:\"size_before\";i:18489;s:10:\"size_after\";i:17400;s:4:\"time\";d:0.01;}}}'),
(782, 101, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:4.993252361673414;s:5:\"bytes\";i:1073;s:11:\"size_before\";i:21489;s:10:\"size_after\";i:20416;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.7;s:5:\"bytes\";i:362;s:11:\"size_before\";i:6351;s:10:\"size_after\";i:5989;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.7;s:5:\"bytes\";i:711;s:11:\"size_before\";i:15138;s:10:\"size_after\";i:14427;s:4:\"time\";d:0.01;}}}'),
(783, 99, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:8.32538287722822;s:5:\"bytes\";i:3316;s:11:\"size_before\";i:39830;s:10:\"size_after\";i:36514;s:4:\"time\";d:0.03;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:8.92;s:5:\"bytes\";i:950;s:11:\"size_before\";i:10649;s:10:\"size_after\";i:9699;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:8.11;s:5:\"bytes\";i:2366;s:11:\"size_before\";i:29181;s:10:\"size_after\";i:26815;s:4:\"time\";d:0.02;}}}'),
(784, 97, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:4.843559146857089;s:5:\"bytes\";i:1031;s:11:\"size_before\";i:21286;s:10:\"size_after\";i:20255;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.67;s:5:\"bytes\";i:352;s:11:\"size_before\";i:6209;s:10:\"size_after\";i:5857;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.5;s:5:\"bytes\";i:679;s:11:\"size_before\";i:15077;s:10:\"size_after\";i:14398;s:4:\"time\";d:0.01;}}}'),
(785, 95, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.028761459644077;s:5:\"bytes\";i:1119;s:11:\"size_before\";i:22252;s:10:\"size_after\";i:21133;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.16;s:5:\"bytes\";i:401;s:11:\"size_before\";i:6505;s:10:\"size_after\";i:6104;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.56;s:5:\"bytes\";i:718;s:11:\"size_before\";i:15747;s:10:\"size_after\";i:15029;s:4:\"time\";d:0.01;}}}'),
(786, 89, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:8.138981437410758;s:5:\"bytes\";i:3078;s:11:\"size_before\";i:37818;s:10:\"size_after\";i:34740;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:9.39;s:5:\"bytes\";i:937;s:11:\"size_before\";i:9983;s:10:\"size_after\";i:9046;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.69;s:5:\"bytes\";i:2141;s:11:\"size_before\";i:27835;s:10:\"size_after\";i:25694;s:4:\"time\";d:0.01;}}}'),
(787, 85, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:4.684950045774788;s:5:\"bytes\";i:1177;s:11:\"size_before\";i:25123;s:10:\"size_after\";i:23946;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.84;s:5:\"bytes\";i:423;s:11:\"size_before\";i:7244;s:10:\"size_after\";i:6821;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.22;s:5:\"bytes\";i:754;s:11:\"size_before\";i:17879;s:10:\"size_after\";i:17125;s:4:\"time\";d:0.01;}}}'),
(788, 83, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:4.68187274909964;s:5:\"bytes\";i:1092;s:11:\"size_before\";i:23324;s:10:\"size_after\";i:22232;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.27;s:5:\"bytes\";i:351;s:11:\"size_before\";i:6666;s:10:\"size_after\";i:6315;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.45;s:5:\"bytes\";i:741;s:11:\"size_before\";i:16658;s:10:\"size_after\";i:15917;s:4:\"time\";d:0.01;}}}'),
(789, 81, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.800752146455687;s:5:\"bytes\";i:1635;s:11:\"size_before\";i:28186;s:10:\"size_after\";i:26551;s:4:\"time\";d:0.03;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.2;s:5:\"bytes\";i:490;s:11:\"size_before\";i:7907;s:10:\"size_after\";i:7417;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.65;s:5:\"bytes\";i:1145;s:11:\"size_before\";i:20279;s:10:\"size_after\";i:19134;s:4:\"time\";d:0.02;}}}'),
(790, 79, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.0896234172011185;s:5:\"bytes\";i:1238;s:11:\"size_before\";i:24324;s:10:\"size_after\";i:23086;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.68;s:5:\"bytes\";i:397;s:11:\"size_before\";i:6991;s:10:\"size_after\";i:6594;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.85;s:5:\"bytes\";i:841;s:11:\"size_before\";i:17333;s:10:\"size_after\";i:16492;s:4:\"time\";d:0.01;}}}'),
(791, 77, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:7.421590080233406;s:5:\"bytes\";i:2442;s:11:\"size_before\";i:32904;s:10:\"size_after\";i:30462;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.37;s:5:\"bytes\";i:673;s:11:\"size_before\";i:9132;s:10:\"size_after\";i:8459;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.44;s:5:\"bytes\";i:1769;s:11:\"size_before\";i:23772;s:10:\"size_after\";i:22003;s:4:\"time\";d:0.01;}}}'),
(792, 75, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:8.638315030478404;s:5:\"bytes\";i:3642;s:11:\"size_before\";i:42161;s:10:\"size_after\";i:38519;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:9.42;s:5:\"bytes\";i:1020;s:11:\"size_before\";i:10828;s:10:\"size_after\";i:9808;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:8.37;s:5:\"bytes\";i:2622;s:11:\"size_before\";i:31333;s:10:\"size_after\";i:28711;s:4:\"time\";d:0.01;}}}'),
(793, 52, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.488277754578537;s:5:\"bytes\";i:920;s:11:\"size_before\";i:16763;s:10:\"size_after\";i:15843;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.94;s:5:\"bytes\";i:445;s:11:\"size_before\";i:7486;s:10:\"size_after\";i:7041;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.12;s:5:\"bytes\";i:475;s:11:\"size_before\";i:9277;s:10:\"size_after\";i:8802;s:4:\"time\";d:0.01;}}}'),
(794, 50, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:4.008887171561051;s:5:\"bytes\";i:415;s:11:\"size_before\";i:10352;s:10:\"size_after\";i:9937;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.99;s:5:\"bytes\";i:171;s:11:\"size_before\";i:4285;s:10:\"size_after\";i:4114;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.02;s:5:\"bytes\";i:244;s:11:\"size_before\";i:6067;s:10:\"size_after\";i:5823;s:4:\"time\";d:0.01;}}}'),
(795, 48, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:5.7682523530908165;s:5:\"bytes\";i:907;s:11:\"size_before\";i:15724;s:10:\"size_after\";i:14817;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.66;s:5:\"bytes\";i:350;s:11:\"size_before\";i:6184;s:10:\"size_after\";i:5834;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.84;s:5:\"bytes\";i:557;s:11:\"size_before\";i:9540;s:10:\"size_after\";i:8983;s:4:\"time\";d:0.01;}}}'),
(796, 28, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.783898404919539;s:5:\"bytes\";i:3212;s:11:\"size_before\";i:84886;s:10:\"size_after\";i:81674;s:4:\"time\";d:0.1;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:4:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.18;s:5:\"bytes\";i:382;s:11:\"size_before\";i:6184;s:10:\"size_after\";i:5802;s:4:\"time\";d:0.01;}s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.98;s:5:\"bytes\";i:371;s:11:\"size_before\";i:7448;s:10:\"size_after\";i:7077;s:4:\"time\";d:0.01;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.63;s:5:\"bytes\";i:1014;s:11:\"size_before\";i:27950;s:10:\"size_after\";i:26936;s:4:\"time\";d:0.02;}s:5:\"large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.34;s:5:\"bytes\";i:1445;s:11:\"size_before\";i:43304;s:10:\"size_after\";i:41859;s:4:\"time\";d:0.06;}}}'),
(799, 182, '_wp_attached_file', 'woocommerce-placeholder.png'),
(800, 183, '_action_manager_schedule', 'O:30:\"ActionScheduler_SimpleSchedule\":1:{s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1559593791;}'),
(801, 188, '_edit_lock', '1559598576:1'),
(802, 191, '_edit_lock', '1559599190:1'),
(803, 191, '_edit_last', '1'),
(804, 191, '_thumbnail_id', '75'),
(805, 191, '_regular_price', '499'),
(806, 191, '_sale_price', '5'),
(808, 191, '_sale_price_dates_to', '1561766399'),
(809, 191, 'total_sales', '2'),
(810, 191, '_tax_status', 'shipping'),
(811, 191, '_tax_class', ''),
(812, 191, '_manage_stock', 'no'),
(813, 191, '_backorders', 'no'),
(814, 191, '_sold_individually', 'no'),
(815, 191, '_virtual', 'no'),
(816, 191, '_downloadable', 'no'),
(817, 191, '_download_limit', '-1'),
(818, 191, '_download_expiry', '-1'),
(819, 191, '_stock', NULL),
(820, 191, '_stock_status', 'instock'),
(821, 191, '_wc_average_rating', '0'),
(822, 191, '_wc_review_count', '0'),
(823, 191, '_product_version', '3.6.4'),
(824, 191, '_price', '5'),
(825, 191, '_product_image_gallery', '108'),
(853, 195, '_edit_lock', '1559599889:1'),
(854, 195, '_edit_last', '1'),
(855, 195, 'total_sales', '0'),
(856, 195, '_tax_status', 'taxable'),
(857, 195, '_tax_class', ''),
(858, 195, '_manage_stock', 'no'),
(859, 195, '_backorders', 'no'),
(860, 195, '_sold_individually', 'no'),
(861, 195, '_virtual', 'no'),
(862, 195, '_downloadable', 'no'),
(863, 195, '_download_limit', '-1'),
(864, 195, '_download_expiry', '-1'),
(865, 195, '_stock', NULL),
(866, 195, '_stock_status', 'instock'),
(867, 195, '_wc_average_rating', '0'),
(868, 195, '_wc_review_count', '0'),
(869, 195, '_product_attributes', 'a:1:{s:4:\"size\";a:6:{s:4:\"name\";s:4:\"Size\";s:5:\"value\";s:22:\"Small | Medium | Large\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"1\";s:11:\"is_taxonomy\";s:1:\"0\";}}'),
(870, 195, '_product_version', '3.6.4'),
(871, 196, '_variation_description', ''),
(872, 196, 'total_sales', '0'),
(873, 196, '_tax_status', 'taxable'),
(874, 196, '_tax_class', 'parent'),
(875, 196, '_manage_stock', 'no'),
(876, 196, '_backorders', 'no'),
(877, 196, '_sold_individually', 'no'),
(878, 196, '_virtual', 'no'),
(879, 196, '_downloadable', 'no'),
(880, 196, '_download_limit', '-1'),
(881, 196, '_download_expiry', '-1'),
(882, 196, '_stock', NULL),
(883, 196, '_stock_status', 'instock'),
(884, 196, '_wc_average_rating', '0'),
(885, 196, '_wc_review_count', '0'),
(886, 196, 'attribute_size', ''),
(887, 196, '_product_version', '3.6.4'),
(888, 196, '_regular_price', '250'),
(889, 196, '_sale_price', '245'),
(890, 196, '_price', '245'),
(891, 195, '_price', '245'),
(892, 195, '_thumbnail_id', '79'),
(893, 195, '_product_image_gallery', '52'),
(894, 197, '_edit_lock', '1559601031:1'),
(895, 197, '_edit_last', '1'),
(896, 197, '_thumbnail_id', '77'),
(897, 197, '_children', 'a:0:{}'),
(898, 197, 'total_sales', '0'),
(899, 197, '_tax_status', 'taxable'),
(900, 197, '_tax_class', ''),
(901, 197, '_manage_stock', 'no'),
(902, 197, '_backorders', 'no'),
(903, 197, '_sold_individually', 'no'),
(904, 197, '_virtual', 'no'),
(905, 197, '_downloadable', 'no'),
(906, 197, '_download_limit', '-1'),
(907, 197, '_download_expiry', '-1'),
(908, 197, '_stock', NULL),
(909, 197, '_stock_status', 'instock'),
(910, 197, '_wc_average_rating', '0'),
(911, 197, '_wc_review_count', '0'),
(912, 197, '_product_version', '3.6.4'),
(913, 197, '_product_image_gallery', '81'),
(914, 197, '_regular_price', '299.99'),
(915, 197, '_sale_price', '255.99'),
(916, 197, '_product_url', 'https://www.zomato.com/hyderabad/kolkata-food-plaza-kondapur/menu'),
(917, 197, '_price', '255.99'),
(918, 198, '_order_key', 'wc_order_uFgFup9o1F0M5'),
(919, 198, '_customer_user', '1'),
(920, 198, '_payment_method', 'cod'),
(921, 198, '_payment_method_title', 'Cash on delivery'),
(922, 198, '_customer_ip_address', '::1'),
(923, 198, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36'),
(924, 198, '_created_via', 'checkout'),
(925, 198, '_cart_hash', 'fd30586c1d98b6cb3afc791758088471'),
(926, 198, '_billing_first_name', 'Ram'),
(927, 198, '_billing_last_name', 'Das'),
(928, 198, '_billing_address_1', 'Ram Chand Mukherjee Lane'),
(929, 198, '_billing_city', 'Kolkata'),
(930, 198, '_billing_state', 'WB'),
(931, 198, '_billing_postcode', '700036'),
(932, 198, '_billing_country', 'IN'),
(933, 198, '_billing_email', 'ram@ram.com'),
(934, 198, '_billing_phone', '+918240505123'),
(935, 198, '_shipping_first_name', 'Ram'),
(936, 198, '_shipping_last_name', 'Das'),
(937, 198, '_shipping_address_1', 'Ram Chand Mukherjee Lane'),
(938, 198, '_shipping_city', 'Kolkata'),
(939, 198, '_shipping_state', 'WB'),
(940, 198, '_shipping_postcode', '700036'),
(941, 198, '_shipping_country', 'IN'),
(942, 198, '_order_currency', 'INR'),
(943, 198, '_cart_discount', '0'),
(944, 198, '_cart_discount_tax', '0'),
(945, 198, '_order_shipping', '100'),
(946, 198, '_order_shipping_tax', '0'),
(947, 198, '_order_tax', '0'),
(948, 198, '_order_total', '1098.00'),
(949, 198, '_order_version', '3.6.4'),
(950, 198, '_prices_include_tax', 'no'),
(951, 198, '_billing_address_index', 'Ram Das  Ram Chand Mukherjee Lane  Kolkata WB 700036 IN ram@ram.com +918240505123'),
(952, 198, '_shipping_address_index', 'Ram Das  Ram Chand Mukherjee Lane  Kolkata WB 700036 IN'),
(953, 198, 'is_vat_exempt', 'no'),
(954, 198, '_download_permissions_granted', 'yes'),
(955, 198, '_recorded_sales', 'yes'),
(956, 198, '_recorded_coupon_usage_counts', 'yes'),
(957, 198, '_order_stock_reduced', 'yes'),
(958, 198, '_edit_lock', '1559601185:1'),
(959, 198, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_posts`
--

CREATE TABLE `dbbs_posts` (
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
-- Dumping data for table `dbbs_posts`
--

INSERT INTO `dbbs_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-05-23 00:14:36', '2019-05-23 00:14:36', '<!-- wp:paragraph -->\n<p> Donec quam felis, ultricies nec, pellente sque eu, pretium quis, sem. Nulla conseq uat massa quis enim. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing! </p>\n<!-- /wp:paragraph -->', 'Italian restaurant Review', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-05-27 08:08:02', '2019-05-27 08:08:02', '', 0, 'http://localhost/explorer/?p=1', 0, 'post', '', 3),
(3, 1, '2019-05-23 00:14:36', '2019-05-23 00:14:36', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/explorer.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-06-03 21:46:41', '2019-06-03 21:46:41', '', 0, 'http://localhost/explorer/?page_id=3', 0, 'page', '', 0),
(7, 1, '2019-05-23 01:32:37', '2019-05-23 01:32:37', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/explorer.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-05-23 01:32:37', '2019-05-23 01:32:37', '', 3, 'http://localhost/explorer/2019/05/23/3-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-05-23 01:32:59', '2019-05-23 01:32:59', '', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2019-05-23 18:57:30', '2019-05-23 18:57:30', '', 0, 'http://localhost/explorer/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-05-23 01:32:59', '2019-05-23 01:32:59', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-05-23 01:32:59', '2019-05-23 01:32:59', '', 9, 'http://localhost/explorer/2019/05/23/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-05-23 01:33:29', '2019-05-23 01:33:29', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-23 01:33:29\"\n    },\n    \"page_on_front\": {\n        \"value\": \"9\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-23 01:33:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a6c0406a-d988-47c3-a96b-ccee4d695b33', '', '', '2019-05-23 01:33:29', '2019-05-23 01:33:29', '', 0, 'http://localhost/explorer/2019/05/23/a6c0406a-d988-47c3-a96b-ccee4d695b33/', 0, 'customize_changeset', '', 0),
(12, 1, '2019-05-23 18:57:45', '2019-05-23 18:57:45', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-05-24 01:06:59', '2019-05-24 01:06:59', '', 0, 'http://localhost/explorer/?page_id=12', 0, 'page', '', 0),
(13, 1, '2019-05-23 18:57:45', '2019-05-23 18:57:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-05-23 18:57:45', '2019-05-23 18:57:45', '', 12, 'http://localhost/explorer/2019/05/23/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2019-05-23 18:58:14', '2019-05-23 18:58:14', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-23 18:58:14\"\n    },\n    \"page_on_front\": {\n        \"value\": \"12\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-23 18:58:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '03f4f95e-6e1f-4104-9feb-060eee01d6dc', '', '', '2019-05-23 18:58:14', '2019-05-23 18:58:14', '', 0, 'http://localhost/explorer/2019/05/23/03f4f95e-6e1f-4104-9feb-060eee01d6dc/', 0, 'customize_changeset', '', 0),
(15, 1, '2019-05-23 20:01:20', '2019-05-23 20:01:20', '', 'Features', '', 'publish', 'closed', 'closed', '', 'features', '', '', '2019-05-23 20:04:46', '2019-05-23 20:04:46', '', 0, 'http://localhost/explorer/?page_id=15', 0, 'page', '', 0),
(16, 1, '2019-05-23 20:01:20', '2019-05-23 20:01:20', '', 'About', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-05-23 20:01:20', '2019-05-23 20:01:20', '', 15, 'http://localhost/explorer/2019/05/23/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-05-23 20:01:43', '2019-05-23 20:01:43', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2019-06-03 22:42:33', '2019-06-03 22:42:33', '', 0, 'http://localhost/explorer/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2019-05-23 20:03:46', '2019-05-23 20:03:46', '', 'Features', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-05-23 20:03:46', '2019-05-23 20:03:46', '', 15, 'http://localhost/explorer/2019/05/23/15-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-05-23 21:41:28', '2019-05-23 21:41:28', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"hero_slider\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Hero Slider', 'hero-slider', 'publish', 'closed', 'closed', '', 'group_5ce7104600b0b', '', '', '2019-05-24 00:12:13', '2019-05-24 00:12:13', '', 0, 'http://localhost/foodblog/?post_type=acf-field-group&#038;p=19', 0, 'acf-field-group', '', 0),
(21, 1, '2019-05-23 21:41:28', '2019-05-23 21:41:28', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:16:\"Add Slider Image\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:5:\"large\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Hero Slider Image', 'hero_slider_image', 'publish', 'closed', 'closed', '', 'field_5ce711518c6c5', '', '', '2019-05-24 00:12:12', '2019-05-24 00:12:12', '', 19, 'http://localhost/foodblog/?post_type=acf-field&#038;p=21', 0, 'acf-field', '', 0),
(24, 1, '2019-05-23 21:41:28', '2019-05-23 21:41:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title 1', 'title_1', 'publish', 'closed', 'closed', '', 'field_5ce712658c6c8', '', '', '2019-05-24 00:12:13', '2019-05-24 00:12:13', '', 19, 'http://localhost/foodblog/?post_type=acf-field&#038;p=24', 1, 'acf-field', '', 0),
(25, 1, '2019-05-23 21:41:28', '2019-05-23 21:41:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title 2', 'title_2', 'publish', 'closed', 'closed', '', 'field_5ce712928c6c9', '', '', '2019-05-24 00:12:13', '2019-05-24 00:12:13', '', 19, 'http://localhost/foodblog/?post_type=acf-field&#038;p=25', 2, 'acf-field', '', 0),
(26, 1, '2019-05-23 21:41:29', '2019-05-23 21:41:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title 3', 'title_3', 'publish', 'closed', 'closed', '', 'field_5ce712a58c6ca', '', '', '2019-05-24 00:12:13', '2019-05-24 00:12:13', '', 19, 'http://localhost/foodblog/?post_type=acf-field&#038;p=26', 3, 'acf-field', '', 0),
(28, 1, '2019-05-23 21:45:01', '2019-05-23 21:45:01', '', 'slider-bg-2', '', 'inherit', 'open', 'closed', '', 'slider-bg-2', '', '', '2019-05-23 21:45:01', '2019-05-23 21:45:01', '', 12, 'http://localhost/foodblog/wp-content/uploads/2019/05/slider-bg-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2019-05-23 21:45:36', '2019-05-23 21:45:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-05-23 21:45:36', '2019-05-23 21:45:36', '', 12, 'http://localhost/foodblog/uncategorized/12-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-05-23 22:04:17', '2019-05-23 22:04:17', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-05-23 22:04:17', '2019-05-23 22:04:17', '', 12, 'http://localhost/foodblog/uncategorized/12-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-05-23 22:04:21', '2019-05-23 22:04:21', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-05-23 22:04:21', '2019-05-23 22:04:21', '', 12, 'http://localhost/foodblog/uncategorized/12-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-05-23 22:21:55', '2019-05-23 22:21:55', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-05-23 22:21:55', '2019-05-23 22:21:55', '', 12, 'http://localhost/foodblog/uncategorized/12-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-05-23 22:30:33', '2019-05-23 22:30:33', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-05-23 22:30:33', '2019-05-23 22:30:33', '', 12, 'http://localhost/foodblog/uncategorized/12-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-05-23 22:45:21', '2019-05-23 22:45:21', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"12\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Amazing deserts', 'amazing-deserts', 'publish', 'closed', 'closed', '', 'group_5ce720bdf2e98', '', '', '2019-05-23 22:51:50', '2019-05-23 22:51:50', '', 0, 'http://localhost/foodblog/?post_type=acf-field-group&#038;p=38', 0, 'acf-field-group', '', 0),
(39, 1, '2019-05-23 22:45:21', '2019-05-23 22:45:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Amazing deserts title', 'amazing_deserts_title', 'publish', 'closed', 'closed', '', 'field_5ce720ce53409', '', '', '2019-05-23 22:45:21', '2019-05-23 22:45:21', '', 38, 'http://localhost/foodblog/?post_type=acf-field&p=39', 0, 'acf-field', '', 0),
(40, 1, '2019-05-23 22:45:21', '2019-05-23 22:45:21', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Amazing deserts description', 'amazing_deserts_description_1', 'publish', 'closed', 'closed', '', 'field_5ce720e95340a', '', '', '2019-05-23 22:45:21', '2019-05-23 22:45:21', '', 38, 'http://localhost/foodblog/?post_type=acf-field&p=40', 1, 'acf-field', '', 0),
(41, 1, '2019-05-23 22:45:21', '2019-05-23 22:45:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Description 1', 'desc_1', 'publish', 'closed', 'closed', '', 'field_5ce721c05340b', '', '', '2019-05-23 22:45:21', '2019-05-23 22:45:21', '', 38, 'http://localhost/foodblog/?post_type=acf-field&p=41', 2, 'acf-field', '', 0),
(42, 1, '2019-05-23 22:45:21', '2019-05-23 22:45:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Description 2', 'desc_2', 'publish', 'closed', 'closed', '', 'field_5ce721f45340c', '', '', '2019-05-23 22:45:21', '2019-05-23 22:45:21', '', 38, 'http://localhost/foodblog/?post_type=acf-field&p=42', 3, 'acf-field', '', 0),
(43, 1, '2019-05-23 22:45:21', '2019-05-23 22:45:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Description 3', 'desc_3', 'publish', 'closed', 'closed', '', 'field_5ce722155340d', '', '', '2019-05-23 22:45:21', '2019-05-23 22:45:21', '', 38, 'http://localhost/foodblog/?post_type=acf-field&p=43', 4, 'acf-field', '', 0),
(44, 1, '2019-05-23 22:45:21', '2019-05-23 22:45:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Description 4', 'desc_4', 'publish', 'closed', 'closed', '', 'field_5ce722345340e', '', '', '2019-05-23 22:45:21', '2019-05-23 22:45:21', '', 38, 'http://localhost/foodblog/?post_type=acf-field&p=44', 5, 'acf-field', '', 0),
(45, 1, '2019-05-23 22:47:39', '2019-05-23 22:47:39', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Amazing deserts Images', 'amazing_deserts_images', 'publish', 'closed', 'closed', '', 'field_5ce7228992a4b', '', '', '2019-05-23 22:47:39', '2019-05-23 22:47:39', '', 38, 'http://localhost/foodblog/?post_type=acf-field&p=45', 6, 'acf-field', '', 0),
(46, 1, '2019-05-23 22:47:39', '2019-05-23 22:47:39', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image 1', 'img_1', 'publish', 'closed', 'closed', '', 'field_5ce722d492a4d', '', '', '2019-05-23 22:47:39', '2019-05-23 22:47:39', '', 38, 'http://localhost/foodblog/?post_type=acf-field&p=46', 7, 'acf-field', '', 0),
(47, 1, '2019-05-23 22:47:39', '2019-05-23 22:47:39', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image 2', 'img_2', 'publish', 'closed', 'closed', '', 'field_5ce722f992a4e', '', '', '2019-05-23 22:50:16', '2019-05-23 22:50:16', '', 38, 'http://localhost/foodblog/?post_type=acf-field&#038;p=47', 8, 'acf-field', '', 0),
(48, 1, '2019-05-23 22:49:46', '2019-05-23 22:49:46', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2019-05-23 22:49:46', '2019-05-23 22:49:46', '', 12, 'http://localhost/foodblog/wp-content/uploads/2019/05/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2019-05-23 22:50:00', '2019-05-23 22:50:00', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-05-23 22:50:00', '2019-05-23 22:50:00', '', 12, 'http://localhost/foodblog/uncategorized/12-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-05-23 22:50:35', '2019-05-23 22:50:35', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2019-05-23 22:50:35', '2019-05-23 22:50:35', '', 12, 'http://localhost/foodblog/wp-content/uploads/2019/05/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2019-05-23 22:51:50', '2019-05-23 22:51:50', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image 3', 'img_3', 'publish', 'closed', 'closed', '', 'field_5ce723df66754', '', '', '2019-05-23 22:51:50', '2019-05-23 22:51:50', '', 38, 'http://localhost/foodblog/?post_type=acf-field&p=51', 9, 'acf-field', '', 0),
(52, 1, '2019-05-23 22:52:09', '2019-05-23 22:52:09', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2019-05-23 22:52:09', '2019-05-23 22:52:09', '', 12, 'http://localhost/foodblog/wp-content/uploads/2019/05/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2019-05-23 22:52:13', '2019-05-23 22:52:13', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-05-23 22:52:13', '2019-05-23 22:52:13', '', 12, 'http://localhost/foodblog/uncategorized/12-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-05-23 22:52:57', '2019-05-23 22:52:57', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-05-23 22:52:57', '2019-05-23 22:52:57', '', 12, 'http://localhost/foodblog/uncategorized/12-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-05-23 22:53:08', '2019-05-23 22:53:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-05-23 22:53:08', '2019-05-23 22:53:08', '', 12, 'http://localhost/foodblog/uncategorized/12-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-05-23 22:53:24', '2019-05-23 22:53:24', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-05-23 22:53:24', '2019-05-23 22:53:24', '', 12, 'http://localhost/foodblog/uncategorized/12-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-05-23 23:00:48', '2019-05-23 23:00:48', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-05-23 23:00:48', '2019-05-23 23:00:48', '', 12, 'http://localhost/foodblog/uncategorized/12-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-05-23 23:01:23', '2019-05-23 23:01:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-05-23 23:01:23', '2019-05-23 23:01:23', '', 12, 'http://localhost/foodblog/uncategorized/12-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-05-23 23:01:32', '2019-05-23 23:01:32', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-05-23 23:01:32', '2019-05-23 23:01:32', '', 12, 'http://localhost/foodblog/uncategorized/12-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2019-05-23 23:10:05', '2019-05-23 23:10:05', '', 'Auto Draft', '', 'trash', 'closed', 'closed', '', 'auto-draft__trashed', '', '', '2019-05-24 00:13:00', '2019-05-24 00:13:00', '', 0, 'http://localhost/foodblog/?post_type=hero_slider&#038;p=60', 0, 'hero_slider', '', 0),
(61, 1, '2019-05-23 23:10:18', '2019-05-23 23:10:18', '', 'Auto Draft', '', 'trash', 'closed', 'closed', '', 'auto-draft-2__trashed', '', '', '2019-05-23 23:29:55', '2019-05-23 23:29:55', '', 0, 'http://localhost/foodblog/?post_type=hero_slider&#038;p=61', 0, 'hero_slider', '', 0),
(66, 1, '2019-05-24 00:13:40', '2019-05-24 00:13:40', '', 'Slider 2', '', 'publish', 'closed', 'closed', '', 'auto-draft', '', '', '2019-05-25 01:20:00', '2019-05-25 01:20:00', '', 0, 'http://localhost/foodblog/?post_type=hero_slider&#038;p=66', 0, 'hero_slider', '', 0),
(67, 1, '2019-05-24 00:46:20', '2019-05-24 00:46:20', '', 'Slider 1', '', 'publish', 'closed', 'closed', '', 'auto-draft-2', '', '', '2019-05-24 22:58:20', '2019-05-24 22:58:20', '', 0, 'http://localhost/foodblog/?post_type=hero_slider&#038;p=67', 0, 'hero_slider', '', 0),
(74, 1, '2019-05-24 19:14:13', '2019-05-24 19:14:13', '', 'Indian Baked Corn', '', 'publish', 'closed', 'closed', '', 'traditional-pizza', '', '', '2019-05-25 01:21:23', '2019-05-25 01:21:23', '', 0, 'http://localhost/foodblog/?post_type=latest_recipe&#038;p=74', 0, 'latest_recipe', '', 0),
(75, 1, '2019-05-24 19:13:57', '2019-05-24 19:13:57', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2019-05-24 19:13:57', '2019-05-24 19:13:57', '', 74, 'http://localhost/foodblog/wp-content/uploads/2019/05/1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2019-05-24 19:14:43', '2019-05-24 19:14:43', '', 'Italian home-made pasta', '', 'publish', 'closed', 'closed', '', 'italian-home-made-pasta', '', '', '2019-05-24 19:14:43', '2019-05-24 19:14:43', '', 0, 'http://localhost/foodblog/?post_type=latest_recipe&#038;p=76', 0, 'latest_recipe', '', 0),
(77, 1, '2019-05-24 19:14:38', '2019-05-24 19:14:38', '', '2', '', 'inherit', 'open', 'closed', '', '2-2', '', '', '2019-05-24 19:14:38', '2019-05-24 19:14:38', '', 76, 'http://localhost/foodblog/wp-content/uploads/2019/05/2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2019-05-24 19:15:24', '2019-05-24 19:15:24', '', 'Chesse Cake Tart', '', 'publish', 'closed', 'closed', '', 'chesse-cake-tart', '', '', '2019-05-24 19:15:57', '2019-05-24 19:15:57', '', 0, 'http://localhost/foodblog/?post_type=latest_recipe&#038;p=78', 0, 'latest_recipe', '', 0),
(79, 1, '2019-05-24 19:15:21', '2019-05-24 19:15:21', '', '3', '', 'inherit', 'open', 'closed', '', '3-2', '', '', '2019-05-24 19:15:21', '2019-05-24 19:15:21', '', 78, 'http://localhost/foodblog/wp-content/uploads/2019/05/3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2019-05-24 19:16:13', '2019-05-24 19:16:13', '', 'Traditional Pizza', '', 'publish', 'closed', 'closed', '', 'traditional-pizza-2', '', '', '2019-05-24 19:16:13', '2019-05-24 19:16:13', '', 0, 'http://localhost/foodblog/?post_type=latest_recipe&#038;p=80', 0, 'latest_recipe', '', 0),
(81, 1, '2019-05-24 19:16:10', '2019-05-24 19:16:10', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2019-05-24 19:16:10', '2019-05-24 19:16:10', '', 80, 'http://localhost/foodblog/wp-content/uploads/2019/05/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2019-05-24 19:16:37', '2019-05-24 19:16:37', '', 'Italian home-made pasta', '', 'publish', 'closed', 'closed', '', 'italian-home-made-pasta-2', '', '', '2019-05-24 19:16:37', '2019-05-24 19:16:37', '', 0, 'http://localhost/foodblog/?post_type=latest_recipe&#038;p=82', 0, 'latest_recipe', '', 0),
(83, 1, '2019-05-24 19:16:33', '2019-05-24 19:16:33', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2019-05-24 19:16:33', '2019-05-24 19:16:33', '', 82, 'http://localhost/foodblog/wp-content/uploads/2019/05/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2019-05-24 19:17:04', '2019-05-24 19:17:04', '', 'Chesse Cake Tart', '', 'publish', 'closed', 'closed', '', 'chesse-cake-tart-2', '', '', '2019-05-24 19:17:04', '2019-05-24 19:17:04', '', 0, 'http://localhost/foodblog/?post_type=latest_recipe&#038;p=84', 0, 'latest_recipe', '', 0),
(85, 1, '2019-05-24 19:17:01', '2019-05-24 19:17:01', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2019-05-24 19:17:01', '2019-05-24 19:17:01', '', 84, 'http://localhost/foodblog/wp-content/uploads/2019/05/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2019-05-24 19:50:20', '2019-05-24 19:50:20', '', 'Auto Draft', '', 'trash', 'closed', 'closed', '', 'auto-draft-3__trashed', '', '', '2019-05-24 19:51:52', '2019-05-24 19:51:52', '', 0, 'http://localhost/foodblog/?post_type=hero_slider&#038;p=88', 0, 'hero_slider', '', 0),
(89, 1, '2019-05-24 19:50:04', '2019-05-24 19:50:04', '', '11', '', 'inherit', 'open', 'closed', '', '11', '', '', '2019-05-24 19:50:04', '2019-05-24 19:50:04', '', 88, 'http://localhost/foodblog/wp-content/uploads/2019/05/11.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2019-05-24 21:58:02', '2019-05-24 21:58:02', ' ', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2019-06-03 22:42:32', '2019-06-03 22:42:32', '', 0, 'http://localhost/foodblog/?p=90', 1, 'nav_menu_item', '', 0),
(91, 1, '2019-05-24 22:11:16', '2019-05-24 22:11:16', '', 'Receipies', '', 'publish', 'closed', 'closed', '', 'receipies', '', '', '2019-05-24 22:11:16', '2019-05-24 22:11:16', '', 0, 'http://localhost/foodblog/?page_id=91', 0, 'page', '', 0),
(92, 1, '2019-05-24 22:11:16', '2019-05-24 22:11:16', '', 'Receipies', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2019-05-24 22:11:16', '2019-05-24 22:11:16', '', 91, 'http://localhost/foodblog/uncategorized/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2019-05-24 22:11:29', '2019-05-24 22:11:29', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2019-06-03 22:42:33', '2019-06-03 22:42:33', '', 0, 'http://localhost/foodblog/?p=93', 3, 'nav_menu_item', '', 0),
(94, 1, '2019-05-24 22:34:32', '2019-05-24 22:34:32', '', 'Traditional Pizza', '', 'publish', 'closed', 'closed', '', 'traditional-pizza-3', '', '', '2019-05-24 22:34:32', '2019-05-24 22:34:32', '', 0, 'http://localhost/foodblog/?post_type=latest_recipe&#038;p=94', 0, 'latest_recipe', '', 0),
(95, 1, '2019-05-24 22:34:27', '2019-05-24 22:34:27', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2019-05-24 22:34:27', '2019-05-24 22:34:27', '', 94, 'http://localhost/foodblog/wp-content/uploads/2019/05/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2019-05-24 22:35:23', '2019-05-24 22:35:23', '', 'Italian home-made pasta', '', 'publish', 'closed', 'closed', '', 'italian-home-made-pasta-3', '', '', '2019-05-24 22:35:23', '2019-05-24 22:35:23', '', 0, 'http://localhost/foodblog/?post_type=latest_recipe&#038;p=96', 0, 'latest_recipe', '', 0),
(97, 1, '2019-05-24 22:35:20', '2019-05-24 22:35:20', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2019-05-24 22:35:20', '2019-05-24 22:35:20', '', 96, 'http://localhost/foodblog/wp-content/uploads/2019/05/8.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2019-05-24 22:36:23', '2019-05-24 22:36:23', '', 'Chesse Cake Tart', '', 'publish', 'closed', 'closed', '', 'chesse-cake-tart-3', '', '', '2019-05-24 22:36:23', '2019-05-24 22:36:23', '', 0, 'http://localhost/foodblog/?post_type=latest_recipe&#038;p=98', 0, 'latest_recipe', '', 0),
(99, 1, '2019-05-24 22:36:19', '2019-05-24 22:36:19', '', '9', '', 'inherit', 'open', 'closed', '', '9', '', '', '2019-05-24 22:36:19', '2019-05-24 22:36:19', '', 98, 'http://localhost/foodblog/wp-content/uploads/2019/05/9.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2019-05-24 22:36:50', '2019-05-24 22:36:50', '', 'Traditional Pizza', '', 'publish', 'closed', 'closed', '', 'traditional-pizza-4', '', '', '2019-05-24 22:36:50', '2019-05-24 22:36:50', '', 0, 'http://localhost/foodblog/?post_type=latest_recipe&#038;p=100', 0, 'latest_recipe', '', 0),
(101, 1, '2019-05-24 22:36:45', '2019-05-24 22:36:45', '', '10', '', 'inherit', 'open', 'closed', '', '10', '', '', '2019-05-24 22:36:45', '2019-05-24 22:36:45', '', 100, 'http://localhost/foodblog/wp-content/uploads/2019/05/10.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2019-05-24 22:37:48', '2019-05-24 22:37:48', '', 'Italian home-made pasta', '', 'publish', 'closed', 'closed', '', 'italian-home-made-pasta-4', '', '', '2019-05-24 22:37:48', '2019-05-24 22:37:48', '', 0, 'http://localhost/foodblog/?post_type=latest_recipe&#038;p=102', 0, 'latest_recipe', '', 0),
(103, 1, '2019-05-24 22:38:46', '2019-05-24 22:38:46', '', 'Chesse Cake Tart', '', 'publish', 'closed', 'closed', '', 'chesse-cake-tart-4', '', '', '2019-05-24 22:38:46', '2019-05-24 22:38:46', '', 0, 'http://localhost/foodblog/?post_type=latest_recipe&#038;p=103', 0, 'latest_recipe', '', 0),
(104, 1, '2019-05-24 22:38:40', '2019-05-24 22:38:40', '', '12', '', 'inherit', 'open', 'closed', '', '12', '', '', '2019-05-24 22:38:40', '2019-05-24 22:38:40', '', 103, 'http://localhost/foodblog/wp-content/uploads/2019/05/12.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2019-05-24 23:01:12', '2019-05-24 23:01:12', '', 'Gallery Image 1', '', 'publish', 'closed', 'closed', '', 'gallery-image-1', '', '', '2019-05-24 23:41:17', '2019-05-24 23:41:17', '', 0, 'http://localhost/foodblog/?post_type=gallery&#038;p=105', 0, 'gallery', '', 0),
(106, 1, '2019-05-24 23:00:57', '2019-05-24 23:00:57', '', '1', '', 'inherit', 'open', 'closed', '', '1-3', '', '', '2019-05-24 23:00:57', '2019-05-24 23:00:57', '', 105, 'http://localhost/foodblog/wp-content/uploads/2019/05/1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2019-05-24 23:01:30', '2019-05-24 23:01:30', '', 'Gallery Image 2', '', 'publish', 'closed', 'closed', '', 'gallery-image-2', '', '', '2019-05-24 23:01:30', '2019-05-24 23:01:30', '', 0, 'http://localhost/foodblog/?post_type=gallery&#038;p=107', 0, 'gallery', '', 0),
(108, 1, '2019-05-24 23:01:26', '2019-05-24 23:01:26', '', '2', '', 'inherit', 'open', 'closed', '', '2-3', '', '', '2019-05-24 23:01:26', '2019-05-24 23:01:26', '', 107, 'http://localhost/foodblog/wp-content/uploads/2019/05/2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2019-05-24 23:01:50', '2019-05-24 23:01:50', '', 'Gallery Image 3', '', 'publish', 'closed', 'closed', '', 'gallery-image-3', '', '', '2019-05-24 23:01:50', '2019-05-24 23:01:50', '', 0, 'http://localhost/foodblog/?post_type=gallery&#038;p=109', 0, 'gallery', '', 0),
(110, 1, '2019-05-24 23:01:45', '2019-05-24 23:01:45', '', '3', '', 'inherit', 'open', 'closed', '', '3-3', '', '', '2019-05-24 23:01:45', '2019-05-24 23:01:45', '', 109, 'http://localhost/foodblog/wp-content/uploads/2019/05/3-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2019-05-24 23:02:07', '2019-05-24 23:02:07', '', 'Gallery Image 4', '', 'publish', 'closed', 'closed', '', 'gallery-image-4', '', '', '2019-05-24 23:02:07', '2019-05-24 23:02:07', '', 0, 'http://localhost/foodblog/?post_type=gallery&#038;p=111', 0, 'gallery', '', 0),
(112, 1, '2019-05-24 23:02:05', '2019-05-24 23:02:05', '', '4', '', 'inherit', 'open', 'closed', '', '4-2', '', '', '2019-05-24 23:02:05', '2019-05-24 23:02:05', '', 111, 'http://localhost/foodblog/wp-content/uploads/2019/05/4-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2019-05-24 23:02:27', '2019-05-24 23:02:27', '', 'Gallery Image 5', '', 'publish', 'closed', 'closed', '', 'gallery-image-5', '', '', '2019-05-24 23:02:27', '2019-05-24 23:02:27', '', 0, 'http://localhost/foodblog/?post_type=gallery&#038;p=113', 0, 'gallery', '', 0),
(114, 1, '2019-05-24 23:02:23', '2019-05-24 23:02:23', '', '5', '', 'inherit', 'open', 'closed', '', '5-2', '', '', '2019-05-24 23:02:23', '2019-05-24 23:02:23', '', 113, 'http://localhost/foodblog/wp-content/uploads/2019/05/5-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2019-05-24 23:02:45', '2019-05-24 23:02:45', '', 'Gallery Image 6', '', 'publish', 'closed', 'closed', '', 'gallery-image-6', '', '', '2019-05-25 01:23:28', '2019-05-25 01:23:28', '', 0, 'http://localhost/foodblog/?post_type=gallery&#038;p=115', 0, 'gallery', '', 0),
(117, 1, '2019-05-25 00:16:30', '2019-05-25 00:16:30', '<!-- wp:shortcode -->\n[contact-form-7 id=\"121\" title=\"Primary Contact Form\"]\n<!-- /wp:shortcode -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-05-25 00:34:49', '2019-05-25 00:34:49', '', 0, 'http://localhost/foodblog/?page_id=117', 0, 'page', '', 0),
(118, 1, '2019-05-25 00:16:30', '2019-05-25 00:16:30', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2019-05-25 00:16:30', '2019-05-25 00:16:30', '', 117, 'http://localhost/foodblog/uncategorized/117-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2019-05-25 00:17:02', '2019-05-25 00:17:02', ' ', '', '', 'publish', 'closed', 'closed', '', '119', '', '', '2019-06-03 22:42:33', '2019-06-03 22:42:33', '', 0, 'http://localhost/foodblog/?p=119', 4, 'nav_menu_item', '', 0),
(120, 1, '2019-05-25 00:23:14', '2019-05-25 00:23:14', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nFood Blog \"[your-subject]\"\nFood Blog <sarkarsusmita253@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Food Blog (http://localhost/foodblog)\nsarkarsusmita253@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nFood Blog \"[your-subject]\"\nFood Blog <sarkarsusmita253@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Food Blog (http://localhost/foodblog)\n[your-email]\nReply-To: sarkarsusmita253@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-05-25 00:23:14', '2019-05-25 00:23:14', '', 0, 'http://localhost/foodblog/?post_type=wpcf7_contact_form&p=120', 0, 'wpcf7_contact_form', '', 0),
(121, 1, '2019-05-25 00:31:39', '2019-05-25 00:31:39', '<div class=\"row\">\r\n    <div class=\"col-md-6\">\r\n        [text* your-name placeholder \"Name\"] \r\n    </div>\r\n    <div class=\"col-md-6\">\r\n        [email* your-email placeholder \"E-mail\"]\r\n    </div>\r\n    <div class=\"col-md-12\">\r\n        [text* your-subject placeholder \"Subject\"] \r\n        [textarea* your-message *3 placeholder \"Message\"]\r\n        <button class=\"site-btn\">Send</button>\r\n    </div>\r\n</div>\n1\nFood Blog \"[your-subject]\"\nFood Blog <sarkarsusmita253@gmail.com>\nsarkarsusmita253@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Food Blog (http://localhost/foodblog)\nReply-To: [your-email]\n\n\n\n\nFood Blog \"[your-subject]\"\nFood Blog <sarkarsusmita253@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Food Blog (http://localhost/foodblog)\nReply-To: sarkarsusmita253@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Primary Contact Form', '', 'publish', 'closed', 'closed', '', 'primary-contact-form', '', '', '2019-05-25 00:41:46', '2019-05-25 00:41:46', '', 0, 'http://localhost/foodblog/?post_type=wpcf7_contact_form&#038;p=121', 0, 'wpcf7_contact_form', '', 0),
(122, 1, '2019-05-25 00:33:58', '2019-05-25 00:33:58', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '117-autosave-v1', '', '', '2019-05-25 00:33:58', '2019-05-25 00:33:58', '', 117, 'http://localhost/foodblog/uncategorized/117-autosave-v1/', 0, 'revision', '', 0),
(123, 1, '2019-05-25 00:34:49', '2019-05-25 00:34:49', '<!-- wp:shortcode -->\n[contact-form-7 id=\"121\" title=\"Primary Contact Form\"]\n<!-- /wp:shortcode -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2019-05-25 00:34:49', '2019-05-25 00:34:49', '', 117, 'http://localhost/foodblog/uncategorized/117-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2019-05-25 00:50:10', '2019-05-25 00:50:10', ' ', '', '', 'publish', 'closed', 'closed', '', '124', '', '', '2019-05-30 12:30:15', '2019-05-30 12:30:15', '', 0, 'http://localhost/foodblog/?p=124', 5, 'nav_menu_item', '', 0),
(125, 1, '2019-05-25 00:50:10', '2019-05-25 00:50:10', ' ', '', '', 'publish', 'closed', 'closed', '', '125', '', '', '2019-05-30 12:30:15', '2019-05-30 12:30:15', '', 0, 'http://localhost/foodblog/?p=125', 3, 'nav_menu_item', '', 0),
(126, 1, '2019-05-25 00:50:10', '2019-05-25 00:50:10', ' ', '', '', 'publish', 'closed', 'closed', '', '126', '', '', '2019-05-30 12:30:15', '2019-05-30 12:30:15', '', 0, 'http://localhost/foodblog/?p=126', 2, 'nav_menu_item', '', 0),
(127, 1, '2019-05-25 00:50:09', '2019-05-25 00:50:09', ' ', '', '', 'publish', 'closed', 'closed', '', '127', '', '', '2019-05-30 12:30:15', '2019-05-30 12:30:15', '', 0, 'http://localhost/foodblog/?p=127', 1, 'nav_menu_item', '', 0);
INSERT INTO `dbbs_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(132, 1, '2019-05-25 01:19:56', '2019-05-25 01:19:56', '', 'slider-bg-1', '', 'inherit', 'open', 'closed', '', 'slider-bg-1', '', '', '2019-05-25 01:19:56', '2019-05-25 01:19:56', '', 66, 'http://localhost/foodblog/wp-content/uploads/2019/05/slider-bg-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2019-05-25 01:23:24', '2019-05-25 01:23:24', '', '6', '', 'inherit', 'open', 'closed', '', '6-2', '', '', '2019-05-25 01:23:24', '2019-05-25 01:23:24', '', 115, 'http://localhost/foodblog/wp-content/uploads/2019/05/6-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2019-05-27 05:40:24', '2019-05-27 05:40:24', '', 'Reviews', '', 'publish', 'closed', 'closed', '', 'reviews', '', '', '2019-05-27 05:40:24', '2019-05-27 05:40:24', '', 0, 'http://localhost/foodblog/?page_id=134', 0, 'page', '', 0),
(135, 1, '2019-05-27 05:40:24', '2019-05-27 05:40:24', '', 'Reviews', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2019-05-27 05:40:24', '2019-05-27 05:40:24', '', 134, 'http://localhost/foodblog/uncategorized/134-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2019-05-27 05:41:21', '2019-05-27 05:41:21', ' ', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2019-05-30 12:30:15', '2019-05-30 12:30:15', '', 0, 'http://localhost/foodblog/?p=136', 4, 'nav_menu_item', '', 0),
(137, 1, '2019-05-27 06:57:22', '2019-05-27 06:57:22', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing! </p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-05-27 06:57:22', '2019-05-27 06:57:22', '', 1, 'http://localhost/foodblog/uncategorized/1-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2019-05-27 07:00:47', '2019-05-27 07:00:47', '', '1', '', 'inherit', 'open', 'closed', '', '1-4', '', '', '2019-05-27 07:00:47', '2019-05-27 07:00:47', '', 1, 'http://localhost/foodblog/wp-content/uploads/2019/05/1-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2019-05-27 08:08:02', '2019-05-27 08:08:02', '<!-- wp:paragraph -->\n<p> Donec quam felis, ultricies nec, pellente sque eu, pretium quis, sem. Nulla conseq uat massa quis enim. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing!  Welcome to WordPress. This is your first post. Edit or delete it, then start writing! </p>\n<!-- /wp:paragraph -->', 'Italian restaurant Review', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-05-27 08:08:02', '2019-05-27 08:08:02', '', 1, 'http://localhost/foodblog/uncategorized/1-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2019-05-27 08:24:59', '2019-05-27 08:24:59', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"recent-posts-2\",\n            \"recent-comments-2\",\n            \"archives-2\",\n            \"categories-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-27 08:24:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '36e3780c-12b8-4c8b-b525-226210307a48', '', '', '2019-05-27 08:24:59', '2019-05-27 08:24:59', '', 0, 'http://localhost/foodblog/uncategorized/36e3780c-12b8-4c8b-b525-226210307a48/', 0, 'customize_changeset', '', 0),
(141, 1, '2019-05-27 08:25:44', '2019-05-27 08:25:44', '{\n    \"sidebars_widgets[sidebar-2]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-27 08:25:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b0f84c15-adbc-4118-85e1-8ed1fab7742d', '', '', '2019-05-27 08:25:44', '2019-05-27 08:25:44', '', 0, 'http://localhost/foodblog/uncategorized/b0f84c15-adbc-4118-85e1-8ed1fab7742d/', 0, 'customize_changeset', '', 0),
(142, 1, '2019-05-27 08:26:46', '2019-05-27 08:26:46', '{\n    \"sidebars_widgets[sidebar-2]\": {\n        \"value\": [\n            \"recent-posts-5\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-27 08:26:46\"\n    },\n    \"widget_recent-posts[5]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-27 08:26:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd0e9eef3-61cc-4fda-89e2-af1b0648e3a2', '', '', '2019-05-27 08:26:46', '2019-05-27 08:26:46', '', 0, 'http://localhost/foodblog/uncategorized/d0e9eef3-61cc-4fda-89e2-af1b0648e3a2/', 0, 'customize_changeset', '', 0),
(143, 1, '2019-05-27 08:27:43', '2019-05-27 08:27:43', '{\n    \"sidebars_widgets[sidebar-2]\": {\n        \"value\": [\n            \"recent-posts-5\",\n            \"meta-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-27 08:27:43\"\n    },\n    \"widget_meta[4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-27 08:27:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd7fb2090-884e-46fe-be22-809dac5cfd34', '', '', '2019-05-27 08:27:43', '2019-05-27 08:27:43', '', 0, 'http://localhost/foodblog/uncategorized/d7fb2090-884e-46fe-be22-809dac5cfd34/', 0, 'customize_changeset', '', 0),
(144, 1, '2019-05-27 08:29:28', '2019-05-27 08:29:28', '{\n    \"sidebars_widgets[sidebar-2]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-27 08:29:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b1004bb2-5869-496d-9c84-b68ca65d1be1', '', '', '2019-05-27 08:29:28', '2019-05-27 08:29:28', '', 0, 'http://localhost/foodblog/uncategorized/b1004bb2-5869-496d-9c84-b68ca65d1be1/', 0, 'customize_changeset', '', 0),
(146, 1, '2019-05-27 09:46:49', '2019-05-27 09:46:49', '<!-- wp:paragraph -->\n<p>The most appropriate use for get_posts is to create an array of posts based on a set of parameters. It retrieves a list of recent posts or posts matching this criteria. get_posts can also be used to create Multiple Loops, though a more direct reference to&nbsp;<a href=\"https://developer.wordpress.org/reference/classes/wp_query/\">WP_Query</a>&nbsp;using new&nbsp;<a href=\"https://developer.wordpress.org/reference/classes/wp_query/\">WP_Query</a>&nbsp;is preferred in this case.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The parameters of get_posts are similar to those of get_pages but are implemented quite differently, and should be used in appropriate scenarios. get_posts uses&nbsp;<a href=\"https://developer.wordpress.org/reference/classes/wp_query/\">WP_Query</a>, whereas get_pages queries the database more directly. Each have parameters that reflect this difference in implementation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>query_posts also uses&nbsp;<a href=\"https://developer.wordpress.org/reference/classes/wp_query/\">WP_Query</a>, but is not recommended because it directly alters the main loop by changing the variables of the global variable $wp_query. get_posts, on the other hand, simply references a new&nbsp;<a href=\"https://developer.wordpress.org/reference/classes/wp_query/\">WP_Query</a>&nbsp;object, and therefore does not affect or alter the main loop.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you would like to alter the main query before it is executed, you can hook into it using pre_get_posts. If you would just like to call an array of posts based on a small and simple set of parameters within a page, then get_posts is your best option.</p>\n<!-- /wp:paragraph -->', 'New Post', '', 'publish', 'open', 'open', '', 'new-post', '', '', '2019-05-27 09:49:09', '2019-05-27 09:49:09', '', 0, 'http://localhost/foodblog/?p=146', 0, 'post', '', 0),
(147, 1, '2019-05-27 09:46:49', '2019-05-27 09:46:49', '', 'New Post', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2019-05-27 09:46:49', '2019-05-27 09:46:49', '', 146, 'http://localhost/foodblog/uncategorized/146-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2019-05-27 09:49:09', '2019-05-27 09:49:09', '<!-- wp:paragraph -->\n<p>The most appropriate use for get_posts is to create an array of posts based on a set of parameters. It retrieves a list of recent posts or posts matching this criteria. get_posts can also be used to create Multiple Loops, though a more direct reference to&nbsp;<a href=\"https://developer.wordpress.org/reference/classes/wp_query/\">WP_Query</a>&nbsp;using new&nbsp;<a href=\"https://developer.wordpress.org/reference/classes/wp_query/\">WP_Query</a>&nbsp;is preferred in this case.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The parameters of get_posts are similar to those of get_pages but are implemented quite differently, and should be used in appropriate scenarios. get_posts uses&nbsp;<a href=\"https://developer.wordpress.org/reference/classes/wp_query/\">WP_Query</a>, whereas get_pages queries the database more directly. Each have parameters that reflect this difference in implementation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>query_posts also uses&nbsp;<a href=\"https://developer.wordpress.org/reference/classes/wp_query/\">WP_Query</a>, but is not recommended because it directly alters the main loop by changing the variables of the global variable $wp_query. get_posts, on the other hand, simply references a new&nbsp;<a href=\"https://developer.wordpress.org/reference/classes/wp_query/\">WP_Query</a>&nbsp;object, and therefore does not affect or alter the main loop.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you would like to alter the main query before it is executed, you can hook into it using pre_get_posts. If you would just like to call an array of posts based on a small and simple set of parameters within a page, then get_posts is your best option.</p>\n<!-- /wp:paragraph -->', 'New Post', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2019-05-27 09:49:09', '2019-05-27 09:49:09', '', 146, 'http://localhost/foodblog/uncategorized/146-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2019-05-28 06:37:41', '2019-05-28 06:37:41', '{\n    \"custom_css[foodblog]\": {\n        \"value\": \".header-top {\\n\\tbackground-color: #ddd;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-28 06:37:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2ef8dd33-6b57-411b-bff3-a2ef7298885c', '', '', '2019-05-28 06:37:41', '2019-05-28 06:37:41', '', 0, 'http://localhost/foodblog/uncategorized/2ef8dd33-6b57-411b-bff3-a2ef7298885c/', 0, 'customize_changeset', '', 0),
(150, 1, '2019-05-28 06:37:42', '2019-05-28 06:37:42', '', 'foodblog', '', 'publish', 'closed', 'closed', '', 'foodblog', '', '', '2019-05-28 06:44:04', '2019-05-28 06:44:04', '', 0, 'http://localhost/foodblog/uncategorized/foodblog/', 0, 'custom_css', '', 0),
(151, 1, '2019-05-28 06:37:42', '2019-05-28 06:37:42', '.header-top {\n	background-color: #ddd;\n}', 'foodblog', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2019-05-28 06:37:42', '2019-05-28 06:37:42', '', 150, 'http://localhost/foodblog/uncategorized/150-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2019-05-28 06:44:04', '2019-05-28 06:44:04', '{\n    \"custom_css[foodblog]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-28 06:44:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2838f07d-3110-4edf-955e-cc1982a85642', '', '', '2019-05-28 06:44:04', '2019-05-28 06:44:04', '', 0, 'http://localhost/foodblog/uncategorized/2838f07d-3110-4edf-955e-cc1982a85642/', 0, 'customize_changeset', '', 0),
(153, 1, '2019-05-28 06:44:04', '2019-05-28 06:44:04', '', 'foodblog', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2019-05-28 06:44:04', '2019-05-28 06:44:04', '', 150, 'http://localhost/foodblog/uncategorized/150-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2019-05-30 06:10:38', '2019-05-30 06:10:38', '[[[{\"field_key\":\"user_login\",\"general_setting\":{\"label\":\"Username\",\"field_name\":\"user_login\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}},{\"field_key\":\"user_pass\",\"general_setting\":{\"label\":\"User Password\",\"field_name\":\"user_pass\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}}],[{\"field_key\":\"user_email\",\"general_setting\":{\"label\":\"User Email\",\"field_name\":\"user_email\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}},{\"field_key\":\"user_confirm_password\",\"general_setting\":{\"label\":\"Confirm Password\",\"field_name\":\"user_confirm_password\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}}]]]', 'Default form', '', 'publish', 'closed', 'closed', '', 'default-form', '', '', '2019-05-30 06:10:38', '2019-05-30 06:10:38', '', 0, 'http://localhost/foodblog/?post_type=user_registration&p=158', 0, 'user_registration', '', 0),
(160, 1, '2019-05-30 06:11:48', '2019-05-30 06:11:48', '[user_registration_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2019-05-30 07:30:18', '2019-05-30 07:30:18', '', 0, 'http://localhost/foodblog/my-account/', 0, 'page', '', 0),
(161, 1, '2019-05-30 06:11:48', '2019-05-30 06:11:48', '[user_registration_form id=\"158\"]', 'Registration', '', 'publish', 'closed', 'closed', '', 'registration', '', '', '2019-05-30 07:40:42', '2019-05-30 07:40:42', '', 0, 'http://localhost/foodblog/registration/', 0, 'page', '', 0),
(166, 1, '2019-05-30 06:18:17', '2019-05-30 06:18:17', '[user_registration_form id=\"158\"]', 'Registration', '', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2019-05-30 06:18:17', '2019-05-30 06:18:17', '', 161, 'http://localhost/foodblog/uncategorized/161-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2019-05-30 06:23:04', '2019-05-30 06:23:04', '[user_registration_my_account]', 'My Account', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2019-05-30 06:23:04', '2019-05-30 06:23:04', '', 160, 'http://localhost/foodblog/uncategorized/160-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2019-05-30 06:37:48', '2019-05-30 06:37:48', '<!-- wp:shortcode -->\n[user_registration_form id=\"158\"]\n<!-- /wp:shortcode -->', 'Register', '', 'trash', 'closed', 'closed', '', 'register__trashed', '', '', '2019-05-30 08:25:27', '2019-05-30 08:25:27', '', 0, 'http://localhost/foodblog/?page_id=170', 0, 'page', '', 0),
(171, 1, '2019-05-30 06:37:48', '2019-05-30 06:37:48', '', 'Register', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2019-05-30 06:37:48', '2019-05-30 06:37:48', '', 170, 'http://localhost/foodblog/uncategorized/170-revision-v1/', 0, 'revision', '', 0),
(172, 1, '2019-05-30 06:39:46', '2019-05-30 06:39:46', '<!-- wp:shortcode -->\n[user_registration_form id=\"158\"]\n<!-- /wp:shortcode -->', 'Register', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2019-05-30 06:39:46', '2019-05-30 06:39:46', '', 170, 'http://localhost/foodblog/uncategorized/170-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2019-05-30 07:19:13', '2019-05-30 07:19:13', '<!-- wp:shortcode -->\n[user_registration_form id=\"158\"]\n<!-- /wp:shortcode -->', 'Loginregister', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2019-05-30 07:19:13', '2019-05-30 07:19:13', '', 170, 'http://localhost/foodblog/uncategorized/170-revision-v1/', 0, 'revision', '', 0),
(174, 1, '2019-05-30 07:19:29', '2019-05-30 07:19:29', '<!-- wp:shortcode -->\n[user_registration_form id=\"158\"]\n<!-- /wp:shortcode -->', 'abtysy', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2019-05-30 07:19:29', '2019-05-30 07:19:29', '', 170, 'http://localhost/foodblog/uncategorized/170-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2019-05-30 07:19:54', '2019-05-30 07:19:54', '<!-- wp:shortcode -->\n[user_registration_form id=\"158\"]\n<!-- /wp:shortcode -->', 'Register', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2019-05-30 07:19:54', '2019-05-30 07:19:54', '', 170, 'http://localhost/foodblog/uncategorized/170-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2019-05-30 08:37:11', '2019-05-30 08:37:11', ' ', '', '', 'publish', 'closed', 'closed', '', '178', '', '', '2019-05-30 12:31:50', '2019-05-30 12:31:50', '', 0, 'http://localhost/foodblog/?p=178', 1, 'nav_menu_item', '', 0),
(179, 1, '2019-05-30 08:37:11', '2019-05-30 08:37:11', ' ', '', '', 'publish', 'closed', 'closed', '', '179', '', '', '2019-05-30 12:31:51', '2019-05-30 12:31:51', '', 0, 'http://localhost/foodblog/?p=179', 2, 'nav_menu_item', '', 0),
(182, 1, '2019-06-03 20:28:35', '2019-06-03 20:28:35', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2019-06-03 20:28:35', '2019-06-03 20:28:35', '', 0, 'http://localhost/foodblog/wp-content/uploads/2019/06/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(183, 0, '2019-06-03 20:29:51', '2019-06-03 20:29:51', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'open', 'closed', '', 'scheduled-action-5cf5838b516c23.82895956-TaPXoNknYRpFlOH5988Eg0s4e8g78t6g', '', '', '2019-06-03 20:31:07', '2019-06-03 20:31:07', '', 0, 'http://localhost/foodblog/?post_type=scheduled-action&#038;p=183', 0, 'scheduled-action', '', 3),
(184, 1, '2019-06-03 20:35:50', '2019-06-03 20:35:50', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2019-06-03 20:35:50', '2019-06-03 20:35:50', '', 0, 'http://localhost/foodblog/shop/', 0, 'page', '', 0),
(185, 1, '2019-06-03 20:35:50', '2019-06-03 20:35:50', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2019-06-03 20:35:50', '2019-06-03 20:35:50', '', 0, 'http://localhost/foodblog/cart/', 0, 'page', '', 0),
(186, 1, '2019-06-03 20:35:50', '2019-06-03 20:35:50', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2019-06-03 20:35:50', '2019-06-03 20:35:50', '', 0, 'http://localhost/foodblog/checkout/', 0, 'page', '', 0),
(187, 1, '2019-06-03 20:35:50', '2019-06-03 20:35:50', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account-2', '', '', '2019-06-03 20:35:50', '2019-06-03 20:35:50', '', 0, 'http://localhost/foodblog/my-account-2/', 0, 'page', '', 0),
(188, 1, '2019-06-03 21:49:33', '2019-06-03 21:49:33', '', 'Terms and Conditions', '', 'publish', 'closed', 'closed', '', 'terms-and-conditions', '', '', '2019-06-03 21:50:07', '2019-06-03 21:50:07', '', 0, 'http://localhost/foodblog/?page_id=188', 0, 'page', '', 0),
(189, 1, '2019-06-03 21:49:33', '2019-06-03 21:49:33', '', 'Terms and conditions', '', 'inherit', 'closed', 'closed', '', '188-revision-v1', '', '', '2019-06-03 21:49:33', '2019-06-03 21:49:33', '', 188, 'http://localhost/foodblog/uncategorized/188-revision-v1/', 0, 'revision', '', 0),
(190, 1, '2019-06-03 21:50:07', '2019-06-03 21:50:07', '', 'Terms and Conditions', '', 'inherit', 'closed', 'closed', '', '188-revision-v1', '', '', '2019-06-03 21:50:07', '2019-06-03 21:50:07', '', 188, 'http://localhost/foodblog/uncategorized/188-revision-v1/', 0, 'revision', '', 0),
(191, 1, '2019-06-03 21:59:17', '2019-06-03 21:59:17', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Traditional Pizza', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'publish', 'open', 'closed', '', 'traditional-pizza', '', '', '2019-06-12 06:47:55', '2019-06-12 06:47:55', '', 0, 'http://localhost/foodblog/?post_type=product&#038;p=191', 0, 'product', '', 0),
(195, 1, '2019-06-03 22:09:56', '2019-06-03 22:09:56', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Chesse Cake Tart', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'publish', 'open', 'closed', '', 'chesse-cake-tart', '', '', '2019-06-03 22:09:57', '2019-06-03 22:09:57', '', 0, 'http://localhost/foodblog/?post_type=product&#038;p=195', 0, 'product', '', 0),
(196, 1, '2019-06-03 22:07:04', '2019-06-03 22:07:04', '', 'Chesse Cake Tart', '', 'publish', 'closed', 'closed', '', 'chesse-cake-tart', '', '', '2019-06-03 22:08:08', '2019-06-03 22:08:08', '', 195, 'http://localhost/foodblog/?post_type=product_variation&#038;p=196', 0, 'product_variation', '', 0),
(197, 1, '2019-06-03 22:28:10', '2019-06-03 22:28:10', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Italian home-made pasta', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'publish', 'open', 'closed', '', 'italian-home-made-pasta', '', '', '2019-06-03 22:31:19', '2019-06-03 22:31:19', '', 0, 'http://localhost/foodblog/?post_type=product&#038;p=197', 0, 'product', '', 0),
(198, 1, '2019-06-03 22:33:55', '2019-06-03 22:33:55', '', 'Order &ndash; June 3, 2019 @ 10:33 PM', '', 'wc-on-hold', 'closed', 'closed', 'wc_order_YReEjRvq3glFW', 'order-jun-03-2019-1033-pm', '', '', '2019-06-03 22:35:10', '2019-06-03 22:35:10', '', 0, 'http://localhost/foodblog/?post_type=shop_order&#038;p=198', 0, 'shop_order', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_smush_dir_images`
--

CREATE TABLE `dbbs_smush_dir_images` (
  `id` mediumint(9) NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_hash` char(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resize` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lossy` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int(10) UNSIGNED DEFAULT NULL,
  `orig_size` int(10) UNSIGNED DEFAULT NULL,
  `file_time` int(10) UNSIGNED DEFAULT NULL,
  `last_scan` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_termmeta`
--

CREATE TABLE `dbbs_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dbbs_termmeta`
--

INSERT INTO `dbbs_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 21, 'product_count_product_cat', '3'),
(2, 23, 'order_pa_size', '0'),
(3, 24, 'order_pa_size', '0'),
(4, 25, 'order_pa_size', '0'),
(5, 23, 'order', '1'),
(6, 25, 'order', '3'),
(7, 24, 'order', '2');

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_terms`
--

CREATE TABLE `dbbs_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dbbs_terms`
--

INSERT INTO `dbbs_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Footer Menu', 'footer-menu', 0),
(4, 'Food', 'food', 0),
(5, 'Foodies', 'foodies', 0),
(6, 'Italian Food', 'italian-food', 0),
(7, 'Topheader', 'topheader', 0),
(8, 'simple', 'simple', 0),
(9, 'grouped', 'grouped', 0),
(10, 'variable', 'variable', 0),
(11, 'external', 'external', 0),
(12, 'exclude-from-search', 'exclude-from-search', 0),
(13, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(14, 'featured', 'featured', 0),
(15, 'outofstock', 'outofstock', 0),
(16, 'rated-1', 'rated-1', 0),
(17, 'rated-2', 'rated-2', 0),
(18, 'rated-3', 'rated-3', 0),
(19, 'rated-4', 'rated-4', 0),
(20, 'rated-5', 'rated-5', 0),
(21, 'Uncategorized', 'uncategorized', 0),
(22, 'Bulky', 'bulky', 0),
(23, 'Small', 'small', 0),
(24, 'Medium', 'medium', 0),
(25, 'Large', 'large', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_term_relationships`
--

CREATE TABLE `dbbs_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dbbs_term_relationships`
--

INSERT INTO `dbbs_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(17, 2, 0),
(90, 2, 0),
(93, 2, 0),
(119, 2, 0),
(124, 3, 0),
(125, 3, 0),
(126, 3, 0),
(127, 3, 0),
(136, 3, 0),
(146, 1, 0),
(178, 7, 0),
(179, 7, 0),
(191, 8, 0),
(191, 21, 0),
(195, 10, 0),
(195, 21, 0),
(197, 11, 0),
(197, 21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_term_taxonomy`
--

CREATE TABLE `dbbs_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dbbs_term_taxonomy`
--

INSERT INTO `dbbs_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '	\r\n', 0, 2),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'post_tag', '', 0, 1),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'nav_menu', '', 0, 2),
(8, 8, 'product_type', '', 0, 1),
(9, 9, 'product_type', '', 0, 0),
(10, 10, 'product_type', '', 0, 1),
(11, 11, 'product_type', '', 0, 1),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_visibility', '', 0, 0),
(19, 19, 'product_visibility', '', 0, 0),
(20, 20, 'product_visibility', '', 0, 0),
(21, 21, 'product_cat', '', 0, 3),
(22, 22, 'product_shipping_class', 'Over 400Rs.', 0, 0),
(23, 23, 'pa_size', '', 0, 0),
(24, 24, 'pa_size', '', 0, 0),
(25, 25, 'pa_size', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_usermeta`
--

CREATE TABLE `dbbs_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dbbs_usermeta`
--

INSERT INTO `dbbs_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin@mail.com'),
(2, 1, 'first_name', 'Susmita'),
(3, 1, 'last_name', 'Sarkar'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'dbbs_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'dbbs_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"83d18681f87d2b7c328030334852acbff322615f66a336416e4b1661a84c19fa\";a:4:{s:10:\"expiration\";i:1560495020;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36\";s:5:\"login\";i:1560322220;}}'),
(17, 1, 'dbbs_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'dbbs_user-settings', 'libraryContent=browse&widgets_access=off'),
(22, 1, 'dbbs_user-settings-time', '1558728753'),
(23, 1, 'closedpostboxes_page', 'a:0:{}'),
(24, 1, 'metaboxhidden_page', 'a:0:{}'),
(25, 1, 'meta-box-order_page', 'a:4:{s:6:\"normal\";s:47:\"acf-group_5ce7104600b0b,acf-group_5ce720bdf2e98\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(26, 1, 'closedpostboxes_hero_slider', 'a:0:{}'),
(27, 1, 'metaboxhidden_hero_slider', 'a:2:{i:0;s:23:\"acf-group_5ce7104600b0b\";i:1;s:7:\"slugdiv\";}'),
(28, 1, 'meta-box-order_latest_recipe', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:22:\"submitdiv,postimagediv\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(29, 1, 'screen_layout_latest_recipe', '1'),
(30, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:41:\"dashboard_right_now,custom_contact_widget\";s:4:\"side\";s:18:\"dashboard_activity\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(31, 2, 'nickname', 'Test User'),
(32, 2, 'first_name', ''),
(33, 2, 'last_name', ''),
(34, 2, 'description', ''),
(35, 2, 'rich_editing', 'true'),
(36, 2, 'syntax_highlighting', 'true'),
(37, 2, 'comment_shortcuts', 'false'),
(38, 2, 'admin_color', 'fresh'),
(39, 2, 'use_ssl', '0'),
(40, 2, 'show_admin_bar_front', 'true'),
(41, 2, 'locale', ''),
(42, 2, 'dbbs_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(43, 2, 'dbbs_user_level', '0'),
(44, 2, 'default_password_nag', '1'),
(45, 3, 'nickname', 'New User'),
(46, 3, 'first_name', ''),
(47, 3, 'last_name', ''),
(48, 3, 'description', ''),
(49, 3, 'rich_editing', 'true'),
(50, 3, 'syntax_highlighting', 'true'),
(51, 3, 'comment_shortcuts', 'false'),
(52, 3, 'admin_color', 'fresh'),
(53, 3, 'use_ssl', '0'),
(54, 3, 'show_admin_bar_front', 'true'),
(55, 3, 'locale', ''),
(56, 3, 'dbbs_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(57, 3, 'dbbs_user_level', '0'),
(58, 3, 'dismissed_wp_pointers', ''),
(59, 3, 'ur_form_id', '158'),
(60, 1, '_woocommerce_tracks_anon_id', 'woo:CFhHiQJEO6G/JVc4QuPo2dwD'),
(62, 1, 'wc_last_active', '1560297600'),
(63, 1, 'jetpack_tracks_anon_id', 'jetpack:Jo8q74Vtr5N/Xv6Ohk36xi2p'),
(64, 1, 'dismissed_wc_admin_notice', '1'),
(65, 1, 'dismissed_no_secure_connection_notice', '1'),
(66, 1, 'last_update', '1559601235'),
(67, 1, 'billing_first_name', 'Ram'),
(68, 1, 'billing_last_name', 'Das'),
(69, 1, 'billing_address_1', 'Ram Chand Mukherjee Lane'),
(70, 1, 'billing_city', 'Kolkata'),
(71, 1, 'billing_state', 'WB'),
(72, 1, 'billing_postcode', '700036'),
(73, 1, 'billing_country', 'IN'),
(74, 1, 'billing_email', 'ram@ram.com'),
(75, 1, 'billing_phone', '+918240505123'),
(76, 1, 'shipping_first_name', 'Ram'),
(77, 1, 'shipping_last_name', 'Das'),
(78, 1, 'shipping_address_1', 'Ram Chand Mukherjee Lane'),
(79, 1, 'shipping_city', 'Kolkata'),
(80, 1, 'shipping_state', 'WB'),
(81, 1, 'shipping_postcode', '700036'),
(82, 1, 'shipping_country', 'IN'),
(83, 1, 'shipping_method', 'a:1:{i:0;s:11:\"flat_rate:1\";}'),
(86, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}');

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_users`
--

CREATE TABLE `dbbs_users` (
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
-- Dumping data for table `dbbs_users`
--

INSERT INTO `dbbs_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin@mail.com', '$P$BBS9n8IcXeT6YjbUjOdBHQlcZEiWjb.', 'adminmail-com', 'sarkarsusmita253@gmail.com', '', '2019-05-23 00:14:35', '', 0, 'Susmita Sarkar'),
(2, 'Test User', '$P$BD74af3Dm5.n8bS0KnePnyh5RmvGKR0', 'test-user', 'testUser@mail.com', '', '2019-05-30 05:46:56', '1559195218:$P$B07058pGU.uh3Lb6yaIRr49OeWiNDm.', 0, 'Test User'),
(3, 'New User', '$P$BNCj.cJduWkJlq7FOcxaXYOTudiE.Y0', 'new-user', 'user@mail.com', '', '2019-05-30 07:26:15', '', 0, 'New User');

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_user_registration_sessions`
--

CREATE TABLE `dbbs_user_registration_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_wc_download_log`
--

CREATE TABLE `dbbs_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_wc_product_meta_lookup`
--

CREATE TABLE `dbbs_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dbbs_wc_product_meta_lookup`
--

INSERT INTO `dbbs_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(191, '', 0, 0, '5.00', '5.00', 1, NULL, 'instock', 0, '0.00', 2),
(195, '', 0, 0, '245.00', '245.00', 0, NULL, 'instock', 0, '0.00', 0),
(196, '', 0, 0, '245.00', '245.00', 1, NULL, 'instock', 0, '0.00', 0),
(197, '', 0, 0, '255.99', '255.99', 1, NULL, 'instock', 0, '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_wc_webhooks`
--

CREATE TABLE `dbbs_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_woocommerce_api_keys`
--

CREATE TABLE `dbbs_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_woocommerce_attribute_taxonomies`
--

CREATE TABLE `dbbs_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dbbs_woocommerce_attribute_taxonomies`
--

INSERT INTO `dbbs_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'size', 'Size', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `dbbs_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_woocommerce_log`
--

CREATE TABLE `dbbs_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_woocommerce_order_itemmeta`
--

CREATE TABLE `dbbs_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dbbs_woocommerce_order_itemmeta`
--

INSERT INTO `dbbs_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '191'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '2'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '998'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '998'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, 'method_id', 'flat_rate'),
(11, 2, 'instance_id', '1'),
(12, 2, 'cost', '100.00'),
(13, 2, 'total_tax', '0'),
(14, 2, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(15, 2, 'Items', 'Traditional Pizza &times; 2');

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_woocommerce_order_items`
--

CREATE TABLE `dbbs_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dbbs_woocommerce_order_items`
--

INSERT INTO `dbbs_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Traditional Pizza', 'line_item', 198),
(2, 'Flat rate', 'shipping', 198);

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_woocommerce_payment_tokenmeta`
--

CREATE TABLE `dbbs_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_woocommerce_payment_tokens`
--

CREATE TABLE `dbbs_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_woocommerce_sessions`
--

CREATE TABLE `dbbs_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dbbs_woocommerce_sessions`
--

INSERT INTO `dbbs_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(2, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:881:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2019-06-03T22:33:55+00:00\";s:8:\"postcode\";s:6:\"700036\";s:4:\"city\";s:7:\"Kolkata\";s:9:\"address_1\";s:24:\"Ram Chand Mukherjee Lane\";s:7:\"address\";s:24:\"Ram Chand Mukherjee Lane\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"WB\";s:7:\"country\";s:2:\"IN\";s:17:\"shipping_postcode\";s:6:\"700036\";s:13:\"shipping_city\";s:7:\"Kolkata\";s:18:\"shipping_address_1\";s:24:\"Ram Chand Mukherjee Lane\";s:16:\"shipping_address\";s:24:\"Ram Chand Mukherjee Lane\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"WB\";s:16:\"shipping_country\";s:2:\"IN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:3:\"Ram\";s:9:\"last_name\";s:3:\"Das\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:13:\"+918240505123\";s:5:\"email\";s:11:\"ram@ram.com\";s:19:\"shipping_first_name\";s:3:\"Ram\";s:18:\"shipping_last_name\";s:3:\"Das\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1560495031);

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_woocommerce_shipping_zones`
--

CREATE TABLE `dbbs_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dbbs_woocommerce_shipping_zones`
--

INSERT INTO `dbbs_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'India', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_woocommerce_shipping_zone_locations`
--

CREATE TABLE `dbbs_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dbbs_woocommerce_shipping_zone_locations`
--

INSERT INTO `dbbs_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(5, 1, 'IN', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_woocommerce_shipping_zone_methods`
--

CREATE TABLE `dbbs_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dbbs_woocommerce_shipping_zone_methods`
--

INSERT INTO `dbbs_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_woocommerce_tax_rates`
--

CREATE TABLE `dbbs_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbbs_woocommerce_tax_rate_locations`
--

CREATE TABLE `dbbs_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dbbs_commentmeta`
--
ALTER TABLE `dbbs_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `dbbs_comments`
--
ALTER TABLE `dbbs_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `dbbs_links`
--
ALTER TABLE `dbbs_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `dbbs_options`
--
ALTER TABLE `dbbs_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `dbbs_postmeta`
--
ALTER TABLE `dbbs_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `dbbs_posts`
--
ALTER TABLE `dbbs_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `dbbs_smush_dir_images`
--
ALTER TABLE `dbbs_smush_dir_images`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `path_hash` (`path_hash`),
  ADD KEY `image_size` (`image_size`);

--
-- Indexes for table `dbbs_termmeta`
--
ALTER TABLE `dbbs_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `dbbs_terms`
--
ALTER TABLE `dbbs_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `dbbs_term_relationships`
--
ALTER TABLE `dbbs_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `dbbs_term_taxonomy`
--
ALTER TABLE `dbbs_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `dbbs_usermeta`
--
ALTER TABLE `dbbs_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `dbbs_users`
--
ALTER TABLE `dbbs_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `dbbs_user_registration_sessions`
--
ALTER TABLE `dbbs_user_registration_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `dbbs_wc_download_log`
--
ALTER TABLE `dbbs_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `dbbs_wc_product_meta_lookup`
--
ALTER TABLE `dbbs_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `dbbs_wc_webhooks`
--
ALTER TABLE `dbbs_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `dbbs_woocommerce_api_keys`
--
ALTER TABLE `dbbs_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `dbbs_woocommerce_attribute_taxonomies`
--
ALTER TABLE `dbbs_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `dbbs_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `dbbs_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `dbbs_woocommerce_log`
--
ALTER TABLE `dbbs_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `dbbs_woocommerce_order_itemmeta`
--
ALTER TABLE `dbbs_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `dbbs_woocommerce_order_items`
--
ALTER TABLE `dbbs_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `dbbs_woocommerce_payment_tokenmeta`
--
ALTER TABLE `dbbs_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `dbbs_woocommerce_payment_tokens`
--
ALTER TABLE `dbbs_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `dbbs_woocommerce_sessions`
--
ALTER TABLE `dbbs_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `dbbs_woocommerce_shipping_zones`
--
ALTER TABLE `dbbs_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `dbbs_woocommerce_shipping_zone_locations`
--
ALTER TABLE `dbbs_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `dbbs_woocommerce_shipping_zone_methods`
--
ALTER TABLE `dbbs_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `dbbs_woocommerce_tax_rates`
--
ALTER TABLE `dbbs_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `dbbs_woocommerce_tax_rate_locations`
--
ALTER TABLE `dbbs_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dbbs_commentmeta`
--
ALTER TABLE `dbbs_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbbs_comments`
--
ALTER TABLE `dbbs_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dbbs_links`
--
ALTER TABLE `dbbs_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbbs_options`
--
ALTER TABLE `dbbs_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=990;

--
-- AUTO_INCREMENT for table `dbbs_postmeta`
--
ALTER TABLE `dbbs_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=961;

--
-- AUTO_INCREMENT for table `dbbs_posts`
--
ALTER TABLE `dbbs_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `dbbs_smush_dir_images`
--
ALTER TABLE `dbbs_smush_dir_images`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbbs_termmeta`
--
ALTER TABLE `dbbs_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dbbs_terms`
--
ALTER TABLE `dbbs_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `dbbs_term_taxonomy`
--
ALTER TABLE `dbbs_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `dbbs_usermeta`
--
ALTER TABLE `dbbs_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `dbbs_users`
--
ALTER TABLE `dbbs_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dbbs_user_registration_sessions`
--
ALTER TABLE `dbbs_user_registration_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbbs_wc_download_log`
--
ALTER TABLE `dbbs_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbbs_wc_webhooks`
--
ALTER TABLE `dbbs_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbbs_woocommerce_api_keys`
--
ALTER TABLE `dbbs_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbbs_woocommerce_attribute_taxonomies`
--
ALTER TABLE `dbbs_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dbbs_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `dbbs_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbbs_woocommerce_log`
--
ALTER TABLE `dbbs_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbbs_woocommerce_order_itemmeta`
--
ALTER TABLE `dbbs_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dbbs_woocommerce_order_items`
--
ALTER TABLE `dbbs_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dbbs_woocommerce_payment_tokenmeta`
--
ALTER TABLE `dbbs_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbbs_woocommerce_payment_tokens`
--
ALTER TABLE `dbbs_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbbs_woocommerce_sessions`
--
ALTER TABLE `dbbs_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dbbs_woocommerce_shipping_zones`
--
ALTER TABLE `dbbs_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dbbs_woocommerce_shipping_zone_locations`
--
ALTER TABLE `dbbs_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dbbs_woocommerce_shipping_zone_methods`
--
ALTER TABLE `dbbs_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dbbs_woocommerce_tax_rates`
--
ALTER TABLE `dbbs_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbbs_woocommerce_tax_rate_locations`
--
ALTER TABLE `dbbs_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dbbs_wc_download_log`
--
ALTER TABLE `dbbs_wc_download_log`
  ADD CONSTRAINT `fk_dbbs_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `dbbs_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
