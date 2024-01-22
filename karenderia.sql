-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2022 at 03:32 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kmrs2`
--

-- --------------------------------------------------------

--
-- Table structure for table `st_admin_meta`
--

CREATE TABLE `st_admin_meta` (
  `meta_id` int(14) NOT NULL,
  `meta_name` varchar(100) NOT NULL DEFAULT '',
  `meta_value` text,
  `meta_value1` text,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_admin_meta`
--

INSERT INTO `st_admin_meta` (`meta_id`, `meta_name`, `meta_value`, `meta_value1`, `date_modified`) VALUES
(1, 'rejection_list', 'Out of item(s)', '', '2022-01-26 22:46:48'),
(2, 'rejection_list', 'Kitchen closed', '', '2022-01-26 22:46:46'),
(3, 'rejection_list', 'There is no possibility of fullfilling the order.', '', '2022-01-26 22:46:44'),
(4, 'rejection_list', 'Today we are no longer delivering.', '', '2022-01-26 22:46:43'),
(5, 'rejection_list', 'Too long waiting time.', '', '2022-01-26 22:46:41'),
(6, 'rejection_list', 'No ingredient.', '', '2022-01-26 22:46:39'),
(7, 'rejection_list', 'Customer called to cancel', '', '2022-01-26 22:46:38'),
(8, 'rejection_list', 'Restaurant too busy', '', '2022-01-26 22:46:36'),
(9, 'rejection_list', 'other', '', '2022-01-26 22:46:32'),
(37, 'action_type', 'Notification to customer', 'notification_to_customer', '2022-01-26 22:47:25'),
(38, 'action_type', 'Notification to merchant', 'notification_to_merchant', '2022-01-26 22:47:24'),
(39, 'action_type', 'Notification to admin', 'notification_to_admin', '2022-01-26 22:47:22'),
(40, 'action_type', 'Notification to driver', 'notification_to_driver', '2022-01-26 22:47:20'),
(84, 'pause_reason', 'Store is too busy', '', '2022-01-26 22:47:10'),
(85, 'pause_reason', 'Problem in restaurant', '', '2022-01-26 22:47:08'),
(86, 'pause_reason', 'Store closed', '', '2022-01-26 22:47:07'),
(87, 'pause_reason', 'Out of item(s)', '', '2022-01-26 22:47:05'),
(133, 'payout_new_payout_template_id', '16', '', '2022-01-27 07:56:15'),
(134, 'payout_paid_template_id', '17', '', '2022-01-27 07:56:15'),
(135, 'payout_cancel_template_id', '18', '', '2022-01-27 07:56:15'),
(136, 'status_new_order', 'new', '', '2022-01-27 07:48:04'),
(137, 'status_cancel_order', 'cancelled', '', '2022-01-27 07:48:04'),
(138, 'status_delivered', 'delivered', '', '2022-01-27 07:48:04'),
(139, 'status_completed', 'complete', '', '2022-01-27 07:48:04'),
(140, 'status_rejection', 'rejected', '', '2022-01-27 07:48:05'),
(141, 'status_delivery_fail', 'delivery failed', '', '2022-01-27 07:48:05'),
(142, 'status_failed', 'cancelled', '', '2022-01-27 07:48:05'),
(143, 'tracking_status_receive', '', '', '2022-01-27 07:54:06'),
(144, 'tracking_status_process', 'accepted', '', '2022-01-27 07:54:06'),
(145, 'tracking_status_ready', 'ready for pickup', '', '2022-01-27 07:54:06'),
(146, 'tracking_status_in_transit', 'delivery on its way', '', '2022-01-27 07:54:06'),
(147, 'tracking_status_delivered', 'delivered', '', '2022-01-27 07:54:06'),
(148, 'tracking_status_delivery_failed', 'delivery failed', '', '2022-01-27 07:54:06'),
(149, 'tracking_status_completed', 'complete', '', '2022-01-27 07:54:06'),
(150, 'tracking_status_failed', 'cancelled', '', '2022-01-27 07:54:07'),
(151, 'invoice_create_template_id', '2', '', '2022-01-27 07:54:40'),
(152, 'refund_template_id', '3', '', '2022-01-27 07:54:40'),
(153, 'partial_refund_template_id', '11', '', '2022-01-27 07:54:40'),
(154, 'delayed_template_id', '8', '', '2022-01-27 07:54:40'),
(155, 'payout_request_auto_process', '1', '', '2022-01-27 07:55:53'),
(156, 'payout_request_enabled', '1', '', '2022-01-27 07:55:53'),
(157, 'payout_minimum_amount', '100', '', '2022-01-27 07:55:53'),
(158, 'payout_process_days', '5', '', '2022-01-27 07:55:53'),
(159, 'payout_number_can_request', '2', '', '2022-01-27 07:55:53'),
(160, 'theme_menu_active', '370', '', '2022-01-27 08:12:44'),
(161, 'tips', '3', NULL, NULL),
(162, 'tips', '4', NULL, NULL),
(163, 'tips', '5', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `st_admin_meta_translation`
--

CREATE TABLE `st_admin_meta_translation` (
  `id` int(14) NOT NULL,
  `meta_id` int(14) NOT NULL DEFAULT '0',
  `language` varchar(100) NOT NULL DEFAULT '',
  `meta_value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_admin_meta_translation`
--

INSERT INTO `st_admin_meta_translation` (`id`, `meta_id`, `language`, `meta_value`) VALUES
(1, 9, 'ja', ''),
(2, 9, 'ar', ''),
(3, 9, 'en', 'other'),
(4, 8, 'ja', ''),
(5, 8, 'ar', ''),
(6, 8, 'en', 'Restaurant too busy'),
(7, 7, 'ja', ''),
(8, 7, 'ar', ''),
(9, 7, 'en', 'Customer called to cancel'),
(10, 6, 'ja', ''),
(11, 6, 'ar', ''),
(12, 6, 'en', 'No ingredient.'),
(13, 5, 'ja', ''),
(14, 5, 'ar', ''),
(15, 5, 'en', 'Too long waiting time.'),
(16, 4, 'ja', ''),
(17, 4, 'ar', ''),
(18, 4, 'en', 'Today we are no longer delivering.'),
(19, 3, 'ja', ''),
(20, 3, 'ar', ''),
(21, 3, 'en', 'There is no possibility of fullfilling the order.'),
(22, 2, 'ja', ''),
(23, 2, 'ar', ''),
(24, 2, 'en', 'Kitchen closed'),
(25, 1, 'ja', ''),
(26, 1, 'ar', ''),
(27, 1, 'en', 'Out of item(s)'),
(28, 132, 'ja', ''),
(29, 132, 'ar', ''),
(30, 132, 'en', 'test reason'),
(31, 87, 'ja', ''),
(32, 87, 'ar', ''),
(33, 87, 'en', 'Out of item(s)'),
(34, 86, 'ja', ''),
(35, 86, 'ar', ''),
(36, 86, 'en', 'Store closed'),
(37, 85, 'ja', ''),
(38, 85, 'ar', ''),
(39, 85, 'en', 'Problem in restaurant'),
(40, 84, 'ja', ''),
(41, 84, 'ar', ''),
(42, 84, 'en', 'Store is too busy'),
(43, 40, 'ja', ''),
(44, 40, 'ar', ''),
(45, 40, 'en', 'Notification to driver'),
(46, 39, 'ja', ''),
(47, 39, 'ar', ''),
(48, 39, 'en', 'Notification to admin'),
(49, 38, 'ja', ''),
(50, 38, 'ar', ''),
(51, 38, 'en', 'Notification to merchant'),
(52, 37, 'ja', ''),
(53, 37, 'ar', ''),
(54, 37, 'en', 'Notification to customer');

-- --------------------------------------------------------

--
-- Table structure for table `st_admin_user`
--

CREATE TABLE `st_admin_user` (
  `admin_id` int(14) NOT NULL,
  `admin_id_token` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `contact_number` varchar(50) NOT NULL DEFAULT '',
  `profile_photo` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `role` varchar(100) NOT NULL DEFAULT '',
  `main_account` int(1) NOT NULL DEFAULT '1',
  `session_token` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `last_login` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_admin_user`
--

-- --------------------------------------------------------

--
-- Table structure for table `st_availability`
--

CREATE TABLE `st_availability` (
  `id` bigint(20) NOT NULL,
  `merchant_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_name` varchar(100) NOT NULL DEFAULT '',
  `meta_value` varchar(100) NOT NULL DEFAULT '',
  `day_of_week` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_cache`
--

CREATE TABLE `st_cache` (
  `id` int(14) NOT NULL,
  `date_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_cache`
--

INSERT INTO `st_cache` (`id`, `date_modified`) VALUES
(1, '2022-01-27 23:49:14');

-- --------------------------------------------------------

--
-- Table structure for table `st_cart`
--

CREATE TABLE `st_cart` (
  `id` int(11) NOT NULL,
  `cart_row` varchar(100) NOT NULL DEFAULT '',
  `cart_uuid` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `cat_id` int(14) NOT NULL DEFAULT '0',
  `item_token` varchar(255) NOT NULL DEFAULT '',
  `item_size_id` int(14) NOT NULL DEFAULT '0',
  `qty` int(14) NOT NULL DEFAULT '0',
  `special_instructions` varchar(255) NOT NULL DEFAULT '',
  `if_sold_out` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_cart_addons`
--

CREATE TABLE `st_cart_addons` (
  `id` int(11) NOT NULL,
  `cart_row` varchar(100) NOT NULL DEFAULT '',
  `cart_uuid` varchar(100) NOT NULL DEFAULT '',
  `subcat_id` int(14) NOT NULL DEFAULT '0',
  `sub_item_id` int(14) NOT NULL DEFAULT '0',
  `qty` int(14) NOT NULL DEFAULT '0',
  `multi_option` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_cart_attributes`
--

CREATE TABLE `st_cart_attributes` (
  `id` int(11) NOT NULL,
  `cart_row` varchar(100) NOT NULL DEFAULT '',
  `cart_uuid` varchar(100) NOT NULL DEFAULT '',
  `meta_name` varchar(255) NOT NULL DEFAULT '',
  `meta_id` text,
  `last_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_category`
--

CREATE TABLE `st_category` (
  `cat_id` int(14) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `category_name` varchar(255) NOT NULL DEFAULT '',
  `category_description` text,
  `photo` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `available_at_specific` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` varchar(50) NOT NULL DEFAULT '',
  `date_modified` varchar(50) DEFAULT '',
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_category_relationship_dish`
--

CREATE TABLE `st_category_relationship_dish` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `dish_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_category_translation`
--

CREATE TABLE `st_category_translation` (
  `id` int(11) NOT NULL,
  `cat_id` int(14) NOT NULL DEFAULT '0',
  `language` varchar(10) NOT NULL DEFAULT '',
  `category_name` varchar(255) NOT NULL DEFAULT '',
  `category_description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_client`
--

CREATE TABLE `st_client` (
  `client_id` int(14) NOT NULL,
  `client_uuid` varchar(100) NOT NULL DEFAULT '',
  `social_strategy` varchar(100) NOT NULL DEFAULT 'web',
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(200) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `phone_prefix` varchar(5) NOT NULL DEFAULT '',
  `contact_phone` varchar(20) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `social_id` varchar(255) NOT NULL DEFAULT '',
  `social_token` text,
  `token` varchar(255) NOT NULL DEFAULT '',
  `mobile_verification_code` int(14) NOT NULL DEFAULT '0',
  `account_verified` int(1) NOT NULL DEFAULT '0',
  `verify_code_requested` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reset_password_request` int(1) NOT NULL DEFAULT '0',
  `last_login` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_client_address`
--

CREATE TABLE `st_client_address` (
  `address_id` int(11) NOT NULL,
  `client_id` int(14) NOT NULL DEFAULT '0',
  `address_uuid` varchar(100) NOT NULL DEFAULT '',
  `place_id` varchar(255) NOT NULL DEFAULT '',
  `address1` varchar(255) NOT NULL DEFAULT '',
  `address2` varchar(255) NOT NULL DEFAULT '',
  `postal_code` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT '',
  `country_code` varchar(5) NOT NULL DEFAULT '',
  `formatted_address` text,
  `latitude` varchar(255) NOT NULL DEFAULT '',
  `longitude` varchar(255) NOT NULL DEFAULT '',
  `location_name` varchar(255) NOT NULL DEFAULT '',
  `delivery_options` varchar(255) NOT NULL DEFAULT '',
  `delivery_instructions` varchar(255) NOT NULL DEFAULT '',
  `address_label` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_client_cc`
--

CREATE TABLE `st_client_cc` (
  `cc_id` int(14) NOT NULL,
  `card_uuid` varchar(100) NOT NULL DEFAULT '',
  `client_id` int(14) NOT NULL DEFAULT '0',
  `card_name` varchar(255) NOT NULL DEFAULT '',
  `credit_card_number` varchar(20) NOT NULL DEFAULT '',
  `encrypted_card` binary(255) DEFAULT NULL,
  `expiration_month` varchar(5) NOT NULL DEFAULT '',
  `expiration_yr` varchar(5) NOT NULL DEFAULT '',
  `cvv` varchar(20) NOT NULL DEFAULT '',
  `billing_address` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_client_meta`
--

CREATE TABLE `st_client_meta` (
  `id` bigint(20) NOT NULL,
  `client_id` bigint(20) NOT NULL DEFAULT '0',
  `meta1` varchar(255) NOT NULL DEFAULT '',
  `meta2` varchar(255) NOT NULL DEFAULT '',
  `meta3` varchar(255) DEFAULT '',
  `meta4` varchar(255) NOT NULL DEFAULT '',
  `date_created` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_client_payment_method`
--

CREATE TABLE `st_client_payment_method` (
  `payment_method_id` int(11) NOT NULL,
  `payment_uuid` varchar(100) NOT NULL DEFAULT '',
  `client_id` int(14) NOT NULL DEFAULT '0',
  `merchant_id` bigint(20) DEFAULT '0',
  `payment_code` varchar(100) NOT NULL DEFAULT '',
  `as_default` int(1) NOT NULL DEFAULT '0',
  `reference_id` int(14) NOT NULL DEFAULT '0',
  `attr1` varchar(255) NOT NULL DEFAULT '',
  `attr2` varchar(255) NOT NULL DEFAULT '',
  `attr3` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_cooking_ref`
--

CREATE TABLE `st_cooking_ref` (
  `cook_id` int(14) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `cooking_name` varchar(255) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT 'published',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_cooking_ref_translation`
--

CREATE TABLE `st_cooking_ref_translation` (
  `id` int(11) NOT NULL,
  `cook_id` int(14) NOT NULL DEFAULT '0',
  `language` varchar(10) NOT NULL DEFAULT '',
  `cooking_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_cuisine`
--

CREATE TABLE `st_cuisine` (
  `cuisine_id` int(14) NOT NULL,
  `cuisine_name` varchar(255) NOT NULL DEFAULT '',
  `featured_image` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) NOT NULL DEFAULT '',
  `color_hex` varchar(10) NOT NULL DEFAULT '',
  `font_color_hex` varchar(10) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `status` varchar(100) NOT NULL DEFAULT 'publish',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_cuisine`
--

INSERT INTO `st_cuisine` (`cuisine_id`, `cuisine_name`, `featured_image`, `path`, `slug`, `color_hex`, `font_color_hex`, `sequence`, `status`, `date_created`, `date_modified`, `ip_address`) VALUES
(1, 'American', '', '', 'american', '#bad5f2', '#444444', 0, 'publish', '2022-01-26 22:15:29', '2022-01-26 22:15:29', ''),
(2, 'Deli', '', '', '', '#d87f22', 'white', 0, 'publish', '2022-01-27 07:56:53', '2022-01-27 08:02:10', '127.0.0.1'),
(3, 'Indian', '', '', '', '#e69138', '#999999', 0, 'publish', '2022-01-27 07:57:02', '2022-01-27 08:02:03', '127.0.0.1'),
(4, 'Mediterranean', '', '', '', '#ffd966', '#999999', 0, 'publish', '2022-01-27 07:57:08', '2022-01-27 08:01:58', '127.0.0.1'),
(5, 'Sandwiches', '', '', '', '#bf9000', 'white', 0, 'publish', '2022-01-27 07:57:14', '2022-01-27 08:01:51', '127.0.0.1'),
(6, 'Barbeque', '', '', '', '#b27c45', 'white', 0, 'publish', '2022-01-27 07:57:19', '2022-01-27 08:01:46', '127.0.0.1'),
(7, 'Diner', '', '', '', '#3d85c6', '#5b5b5b', 0, 'publish', '2022-01-27 07:57:29', '2022-01-27 08:01:37', '127.0.0.1'),
(8, 'Italian', '', '', '', '#a2c4c9', '#5b5b5b', 0, 'publish', '2022-01-27 07:57:35', '2022-01-27 08:01:28', '127.0.0.1'),
(9, 'Mexican', '', '', '', '#ea9999', 'white', 0, 'publish', '2022-01-27 07:57:39', '2022-01-27 08:01:21', '127.0.0.1'),
(10, 'Sushi', '', '', '', '#2986cc', 'white', 0, 'publish', '2022-01-27 07:57:45', '2022-01-27 08:01:14', '127.0.0.1'),
(11, 'Burgers', '', '', '', '#990000', 'white', 0, 'publish', '2022-01-27 07:57:51', '2022-01-27 08:01:09', '127.0.0.1'),
(12, 'Greek', '', '', '', '#b45f06', 'white', 0, 'publish', '2022-01-27 07:57:59', '2022-01-27 08:01:03', '127.0.0.1'),
(13, 'Japanese', '', '', '', '#38761d', 'white', 0, 'publish', '2022-01-27 07:58:05', '2022-01-27 08:00:58', '127.0.0.1'),
(14, 'Middle Eastern', '', '', '', '#45818e', 'white', 0, 'publish', '2022-01-27 07:58:12', '2022-01-27 08:00:51', '127.0.0.1'),
(15, 'Thai', '', '', '', '#a2c4c9', 'black', 0, 'publish', '2022-01-27 07:58:17', '2022-01-27 08:00:45', '127.0.0.1'),
(16, 'Chinese', '', '', '', '#f6b26b', 'white', 0, 'publish', '2022-01-27 07:58:26', '2022-01-27 08:00:38', '127.0.0.1'),
(17, 'Healthy', '', '', '', '#8fce00', '#eeeeee', 0, 'publish', '2022-01-27 07:58:32', '2022-01-27 08:00:30', '127.0.0.1'),
(18, 'Korean', '', '', '', '#f9cb9c', '#5b5b5b', 0, 'publish', '2022-01-27 07:58:39', '2022-01-27 08:00:21', '127.0.0.1'),
(19, 'Pizza', '', '', '', '#fedc78', '#999999', 0, 'publish', '2022-01-27 07:58:45', '2022-01-27 08:00:10', '127.0.0.1'),
(20, 'Vegetarian', '', '', '', '#efe5ee', 'black', 0, 'publish', '2022-01-27 07:58:50', '2022-01-27 07:59:27', '127.0.0.1'),
(21, 'Steak', '', '', '', '#bad5f2', 'black', 0, 'publish', '2022-01-27 07:58:56', '2022-01-27 07:59:14', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `st_cuisine_merchant`
--

CREATE TABLE `st_cuisine_merchant` (
  `id` int(14) NOT NULL,
  `merchant_id` varchar(14) NOT NULL DEFAULT '0',
  `cuisine_id` varchar(14) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_cuisine_translation`
--

CREATE TABLE `st_cuisine_translation` (
  `id` int(11) NOT NULL,
  `cuisine_id` int(14) NOT NULL DEFAULT '0',
  `language` varchar(100) NOT NULL DEFAULT '',
  `cuisine_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_cuisine_translation`
--

INSERT INTO `st_cuisine_translation` (`id`, `cuisine_id`, `language`, `cuisine_name`) VALUES
(61, 21, 'ja', ''),
(62, 21, 'ar', ''),
(63, 21, 'en', 'Steak'),
(64, 20, 'ja', ''),
(65, 20, 'ar', ''),
(66, 20, 'en', 'Vegetarian'),
(67, 19, 'ja', ''),
(68, 19, 'ar', ''),
(69, 19, 'en', 'Pizza'),
(73, 18, 'ja', ''),
(74, 18, 'ar', ''),
(75, 18, 'en', 'Korean'),
(76, 17, 'ja', ''),
(77, 17, 'ar', ''),
(78, 17, 'en', 'Healthy'),
(79, 16, 'ja', ''),
(80, 16, 'ar', ''),
(81, 16, 'en', 'Chinese'),
(82, 15, 'ja', ''),
(83, 15, 'ar', ''),
(84, 15, 'en', 'Thai'),
(85, 14, 'ja', ''),
(86, 14, 'ar', ''),
(87, 14, 'en', 'Middle Eastern'),
(88, 13, 'ja', ''),
(89, 13, 'ar', ''),
(90, 13, 'en', 'Japanese'),
(91, 12, 'ja', ''),
(92, 12, 'ar', ''),
(93, 12, 'en', 'Greek'),
(94, 11, 'ja', ''),
(95, 11, 'ar', ''),
(96, 11, 'en', 'Burgers'),
(97, 10, 'ja', ''),
(98, 10, 'ar', ''),
(99, 10, 'en', 'Sushi'),
(100, 9, 'ja', ''),
(101, 9, 'ar', ''),
(102, 9, 'en', 'Mexican'),
(103, 8, 'ja', ''),
(104, 8, 'ar', ''),
(105, 8, 'en', 'Italian'),
(106, 7, 'ja', ''),
(107, 7, 'ar', ''),
(108, 7, 'en', 'Diner'),
(109, 6, 'ja', ''),
(110, 6, 'ar', ''),
(111, 6, 'en', 'Barbeque'),
(112, 5, 'ja', ''),
(113, 5, 'ar', ''),
(114, 5, 'en', 'Sandwiches'),
(115, 4, 'ja', ''),
(116, 4, 'ar', ''),
(117, 4, 'en', 'Mediterranean'),
(118, 3, 'ja', ''),
(119, 3, 'ar', ''),
(120, 3, 'en', 'Indian'),
(121, 2, 'ja', ''),
(122, 2, 'ar', ''),
(123, 2, 'en', 'Deli');

-- --------------------------------------------------------

--
-- Table structure for table `st_currency`
--

CREATE TABLE `st_currency` (
  `id` int(14) NOT NULL,
  `currency_code` varchar(3) NOT NULL DEFAULT '',
  `currency_symbol` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `as_default` int(1) NOT NULL DEFAULT '0',
  `is_hidden` int(1) NOT NULL DEFAULT '0',
  `currency_position` varchar(100) NOT NULL DEFAULT 'left',
  `exchange_rate` float(14,4) NOT NULL DEFAULT '0.0000',
  `exchange_rate_fee` float(14,4) NOT NULL DEFAULT '0.0000',
  `number_decimal` int(14) NOT NULL DEFAULT '2',
  `decimal_separator` varchar(5) NOT NULL DEFAULT '.',
  `thousand_separator` varchar(5) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_currency`
--

INSERT INTO `st_currency` (`id`, `currency_code`, `currency_symbol`, `description`, `as_default`, `is_hidden`, `currency_position`, `exchange_rate`, `exchange_rate_fee`, `number_decimal`, `decimal_separator`, `thousand_separator`, `date_created`, `date_modified`, `ip_address`) VALUES
(1, 'USD', '$', 'United States Dollar', 1, 0, 'right', 1.0000, 0.0000, 2, '', '', '2021-01-20 08:00:54', '2022-01-26 22:41:48', '127.0.0.1'),
(2, 'JPY', '¥', 'Japan Yen', 0, 0, 'left', 104.5940, 0.0000, 2, '.', ',', '2021-01-20 08:02:20', '2021-05-18 23:33:26', '127.0.0.1'),
(13, 'PHP', '₱', 'Philippine Peso', 0, 0, 'left', 48.0425, 0.0000, 2, '.', ',', '2021-01-20 22:51:46', '2021-05-18 23:33:26', '127.0.0.1'),
(16, 'VND', '₫', 'Vietnamese Dong', 0, 0, 'left_space', 23028.3281, 0.0000, 2, '.', ',', '2021-01-21 07:38:41', '2021-05-18 23:33:26', '127.0.0.1'),
(21, 'SAR', '﷼', 'Saudi Riyal', 0, 0, 'left', 3.7511, 0.0000, 3, '.', ',', '2021-01-22 10:34:06', '2021-05-18 23:33:26', '127.0.0.1'),
(22, 'KRW', '₩', 'South Korean Won', 0, 0, 'left', 1106.2035, 0.0000, 2, '.', ',', '2021-01-22 18:08:45', '2021-05-18 23:33:26', '127.0.0.1'),
(23, 'AED', 'د.إ', 'UAE Dirham', 0, 0, 'left', 3.6732, 0.0000, 2, '.', ',', '2021-01-27 15:04:01', '2021-05-18 23:33:26', '127.0.0.1'),
(39, 'SGD', '$', 'Singapore Dollar', 0, 0, 'left', 1.3264, 0.0000, 2, '.', ',', '2021-02-05 10:51:33', '2021-05-18 23:33:26', '127.0.0.1'),
(40, 'EUR', '€', 'Euro', 0, 0, 'left', 0.8252, 0.0000, 2, '.', ',', '2021-02-05 23:20:31', '2021-05-18 23:33:26', '127.0.0.1'),
(41, 'BRL', 'R$', 'Brazilian Real', 0, 0, 'left', 5.3866, 0.0000, 2, '.', ',', '2021-02-05 23:21:54', '2021-05-18 23:33:26', '127.0.0.1'),
(42, 'INR', '₹', 'Indian Rupee', 0, 0, 'left', 72.8289, 0.0000, 2, '.', ',', '2021-02-09 09:52:18', '2021-05-18 23:33:26', '127.0.0.1'),
(43, 'ZWL', '', 'Zimbabwean Dollar', 0, 0, 'left', 322.0000, 0.0000, 2, '.', '', '2021-05-18 23:33:19', '2022-01-26 15:44:44', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `st_device`
--

CREATE TABLE `st_device` (
  `device_id` bigint(20) NOT NULL,
  `user_type` varchar(50) NOT NULL DEFAULT '',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `platform` varchar(50) NOT NULL DEFAULT '',
  `device_token` text,
  `device_uiid` varchar(255) NOT NULL DEFAULT '',
  `browser_agent` varchar(255) NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_device_meta`
--

CREATE TABLE `st_device_meta` (
  `id` bigint(20) NOT NULL,
  `device_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_name` varchar(100) NOT NULL DEFAULT '',
  `meta_value` text,
  `meta_value1` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_dishes`
--

CREATE TABLE `st_dishes` (
  `dish_id` int(14) NOT NULL,
  `dish_name` varchar(255) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_dishes_translation`
--

CREATE TABLE `st_dishes_translation` (
  `id` int(11) NOT NULL,
  `dish_id` int(14) NOT NULL DEFAULT '0',
  `language` varchar(100) NOT NULL DEFAULT '',
  `dish_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_email_logs`
--

CREATE TABLE `st_email_logs` (
  `id` int(14) NOT NULL,
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `sender` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `content` longtext,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `email_provider` varchar(100) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_email_provider`
--

CREATE TABLE `st_email_provider` (
  `id` int(11) NOT NULL,
  `provider_id` varchar(100) NOT NULL DEFAULT '',
  `provider_name` varchar(255) NOT NULL DEFAULT '',
  `as_default` int(1) NOT NULL DEFAULT '0',
  `sender_name` varchar(255) NOT NULL DEFAULT '',
  `sender` varchar(255) NOT NULL DEFAULT '',
  `api_key` varchar(255) NOT NULL DEFAULT '',
  `secret_key` varchar(255) NOT NULL DEFAULT '',
  `smtp_host` varchar(255) NOT NULL DEFAULT '',
  `smtp_port` varchar(255) NOT NULL DEFAULT '',
  `smtp_username` varchar(255) NOT NULL DEFAULT '',
  `smtp_password` varchar(255) NOT NULL DEFAULT '',
  `smtp_secure` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_email_provider`
--

INSERT INTO `st_email_provider` (`id`, `provider_id`, `provider_name`, `as_default`, `sender_name`, `sender`, `api_key`, `secret_key`, `smtp_host`, `smtp_port`, `smtp_username`, `smtp_password`, `smtp_secure`, `date_created`, `date_modified`, `ip_address`) VALUES
(1, 'phpmail', 'PHP Mail', 0, '', '', '', '', '', '', '', '', '', NULL, '2021-11-28 14:20:01', '127.0.0.1'),
(2, 'smtp', 'SMTP', 0, '', '', '', '', '', '', '', '', '', NULL, '2021-10-08 09:26:57', '::1'),
(4, 'sendgrid', 'SendGrid', 0, '', '', '', '', '', '', '', '', '', NULL, '2021-11-27 01:54:53', '127.0.0.1'),
(5, 'mailjet', 'MailJet', 0, '', '', '', '', '', '', '', '', '', NULL, '2021-10-08 09:27:48', '::1'),
(6, 'elastic', 'Elastic Email', 0, '', '', '', '', '', '', '', '', '', NULL, '2021-10-08 09:28:06', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `st_favorites`
--

CREATE TABLE `st_favorites` (
  `id` int(14) NOT NULL,
  `fav_type` varchar(100) NOT NULL DEFAULT 'restaurant',
  `client_id` int(14) NOT NULL DEFAULT '0',
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_featured_location`
--

CREATE TABLE `st_featured_location` (
  `id` int(11) NOT NULL,
  `featured_name` varchar(50) NOT NULL DEFAULT '',
  `location_name` varchar(255) NOT NULL DEFAULT '',
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT 'publish',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_gpdr_request`
--

CREATE TABLE `st_gpdr_request` (
  `id` int(11) NOT NULL,
  `request_type` varchar(255) NOT NULL DEFAULT '',
  `client_id` int(14) NOT NULL DEFAULT '0',
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `message` text,
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_ingredients`
--

CREATE TABLE `st_ingredients` (
  `ingredients_id` int(14) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `ingredients_name` varchar(255) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT 'published',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_ingredients_translation`
--

CREATE TABLE `st_ingredients_translation` (
  `id` int(11) NOT NULL,
  `ingredients_id` int(14) NOT NULL DEFAULT '0',
  `language` varchar(10) NOT NULL DEFAULT '',
  `ingredients_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_inventory_supplier`
--

CREATE TABLE `st_inventory_supplier` (
  `supplier_id` int(11) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `supplier_name` varchar(255) NOT NULL DEFAULT '',
  `contact_name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `phone_number` varchar(50) NOT NULL DEFAULT '',
  `address_1` varchar(255) NOT NULL DEFAULT '',
  `address_2` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(100) NOT NULL DEFAULT '',
  `postal_code` varchar(100) NOT NULL DEFAULT '',
  `country_code` varchar(5) NOT NULL DEFAULT '',
  `region` varchar(100) NOT NULL DEFAULT '',
  `notes` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_item`
--

CREATE TABLE `st_item` (
  `item_id` int(14) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `item_name` varchar(255) NOT NULL DEFAULT '',
  `item_description` text,
  `item_short_description` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(50) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `is_featured` varchar(1) NOT NULL DEFAULT '',
  `non_taxable` int(1) NOT NULL DEFAULT '1',
  `available` int(1) NOT NULL DEFAULT '1',
  `points_earned` int(14) NOT NULL DEFAULT '0',
  `points_enabled` int(1) NOT NULL DEFAULT '1',
  `packaging_fee` float(14,4) NOT NULL DEFAULT '0.0000',
  `packaging_incremental` int(1) NOT NULL DEFAULT '0',
  `item_token` varchar(50) NOT NULL DEFAULT '',
  `sku` varchar(255) NOT NULL DEFAULT '',
  `track_stock` int(1) NOT NULL DEFAULT '1',
  `supplier_id` int(14) NOT NULL DEFAULT '0',
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_description` text,
  `meta_keywords` text,
  `meta_image` varchar(255) NOT NULL DEFAULT '',
  `meta_image_path` varchar(255) NOT NULL DEFAULT '',
  `cooking_ref_required` smallint(1) NOT NULL DEFAULT '0',
  `available_at_specific` tinyint(1) NOT NULL DEFAULT '0',
  `not_for_sale` tinyint(1) NOT NULL DEFAULT '0',
  `color_hex` varchar(10) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_item_meta`
--

CREATE TABLE `st_item_meta` (
  `id` int(11) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `item_id` int(14) NOT NULL DEFAULT '0',
  `meta_name` varchar(255) NOT NULL DEFAULT '',
  `meta_id` varchar(255) NOT NULL DEFAULT '',
  `meta_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_item_promo`
--

CREATE TABLE `st_item_promo` (
  `promo_id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `promo_type` varchar(50) NOT NULL DEFAULT '',
  `buy_qty` int(14) DEFAULT '0',
  `get_qty` int(14) DEFAULT '0',
  `item_id_promo` int(14) NOT NULL DEFAULT '0',
  `discount_start` date DEFAULT NULL,
  `discount_end` date DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_item_relationship_category`
--

CREATE TABLE `st_item_relationship_category` (
  `id` int(11) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `item_id` int(14) NOT NULL DEFAULT '0',
  `cat_id` int(14) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_item_relationship_size`
--

CREATE TABLE `st_item_relationship_size` (
  `item_size_id` int(11) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `item_token` varchar(255) NOT NULL DEFAULT '',
  `item_id` int(14) NOT NULL DEFAULT '0',
  `size_id` int(14) NOT NULL DEFAULT '0',
  `price` float(14,4) NOT NULL DEFAULT '0.0000',
  `cost_price` float(14,4) NOT NULL DEFAULT '0.0000',
  `discount` float(14,4) NOT NULL DEFAULT '0.0000',
  `discount_type` varchar(50) NOT NULL DEFAULT 'fixed',
  `discount_start` date DEFAULT NULL,
  `discount_end` date DEFAULT NULL,
  `sequence` smallint(1) NOT NULL DEFAULT '0',
  `sku` varchar(255) NOT NULL DEFAULT '',
  `available` int(1) NOT NULL DEFAULT '1',
  `low_stock` float(14,2) NOT NULL DEFAULT '0.00',
  `created_at` varchar(50) NOT NULL DEFAULT '',
  `updated_at` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_item_relationship_subcategory`
--

CREATE TABLE `st_item_relationship_subcategory` (
  `id` int(11) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `item_id` int(14) NOT NULL DEFAULT '0',
  `item_size_id` int(14) NOT NULL DEFAULT '0',
  `subcat_id` int(14) NOT NULL DEFAULT '0',
  `multi_option` varchar(255) NOT NULL DEFAULT '',
  `multi_option_value` varchar(255) NOT NULL DEFAULT '',
  `require_addon` smallint(1) NOT NULL DEFAULT '0',
  `pre_selected` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_item_relationship_subcategory_item`
--

CREATE TABLE `st_item_relationship_subcategory_item` (
  `id` int(11) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `item_id` int(14) NOT NULL DEFAULT '0',
  `subcat_id` int(14) NOT NULL DEFAULT '0',
  `sub_item_id` int(14) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_item_translation`
--

CREATE TABLE `st_item_translation` (
  `id` int(11) NOT NULL,
  `item_id` int(14) NOT NULL DEFAULT '0',
  `language` varchar(10) NOT NULL DEFAULT '',
  `item_name` varchar(255) NOT NULL DEFAULT '',
  `item_description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_language`
--

CREATE TABLE `st_language` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `flag` varchar(100) NOT NULL DEFAULT '',
  `rtl` int(1) NOT NULL DEFAULT '0',
  `sequence` int(11) NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT 'publish',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_language`
--

INSERT INTO `st_language` (`id`, `code`, `title`, `description`, `flag`, `rtl`, `sequence`, `status`, `date_created`, `date_modified`, `ip_address`) VALUES
(1, 'ar', 'Arabic', 'al-\'arabiyyah, العربية', 'AE', 1, 3, 'publish', '2021-05-08 14:46:23', '2022-01-27 08:05:31', '127.0.0.1'),
(2, 'en', 'English', 'american english', 'US', 0, 1, 'publish', '2021-05-08 14:46:23', '2022-01-27 08:05:25', '127.0.0.1'),
(4, 'ja', 'Japanese', 'nihongo', 'JP', 0, 2, 'publish', '2021-05-08 14:46:23', '2022-01-27 08:05:19', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `st_location_area`
--

CREATE TABLE `st_location_area` (
  `area_id` int(14) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `city_id` int(14) NOT NULL DEFAULT '0',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_location_cities`
--

CREATE TABLE `st_location_cities` (
  `city_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `postal_code` varchar(255) NOT NULL DEFAULT '',
  `state_id` int(11) NOT NULL,
  `sequence` int(14) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_location_countries`
--

CREATE TABLE `st_location_countries` (
  `country_id` int(11) NOT NULL,
  `shortcode` varchar(3) NOT NULL DEFAULT '',
  `country_name` varchar(150) NOT NULL DEFAULT '',
  `phonecode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_location_countries`
--

INSERT INTO `st_location_countries` (`country_id`, `shortcode`, `country_name`, `phonecode`) VALUES
(1, 'AF', 'Afghanistan', 93),
(2, 'AL', 'Albania', 355),
(3, 'DZ', 'Algeria', 213),
(4, 'AS', 'American Samoa', 1684),
(5, 'AD', 'Andorra', 376),
(6, 'AO', 'Angola', 244),
(7, 'AI', 'Anguilla', 1264),
(8, 'AQ', 'Antarctica', 0),
(9, 'AG', 'Antigua And Barbuda', 1268),
(10, 'AR', 'Argentina', 54),
(11, 'AM', 'Armenia', 374),
(12, 'AW', 'Aruba', 297),
(13, 'AU', 'Australia', 61),
(14, 'AT', 'Austria', 43),
(15, 'AZ', 'Azerbaijan', 994),
(16, 'BS', 'Bahamas The', 1242),
(17, 'BH', 'Bahrain', 973),
(18, 'BD', 'Bangladesh', 880),
(19, 'BB', 'Barbados', 1246),
(20, 'BY', 'Belarus', 375),
(21, 'BE', 'Belgium', 32),
(22, 'BZ', 'Belize', 501),
(23, 'BJ', 'Benin', 229),
(24, 'BM', 'Bermuda', 1441),
(25, 'BT', 'Bhutan', 975),
(26, 'BO', 'Bolivia', 591),
(27, 'BA', 'Bosnia and Herzegovina', 387),
(28, 'BW', 'Botswana', 267),
(29, 'BV', 'Bouvet Island', 0),
(30, 'BR', 'Brazil', 55),
(31, 'IO', 'British Indian Ocean Territory', 246),
(32, 'BN', 'Brunei', 673),
(33, 'BG', 'Bulgaria', 359),
(34, 'BF', 'Burkina Faso', 226),
(35, 'BI', 'Burundi', 257),
(36, 'KH', 'Cambodia', 855),
(37, 'CM', 'Cameroon', 237),
(38, 'CA', 'Canada', 1),
(39, 'CV', 'Cape Verde', 238),
(40, 'KY', 'Cayman Islands', 1345),
(41, 'CF', 'Central African Republic', 236),
(42, 'TD', 'Chad', 235),
(43, 'CL', 'Chile', 56),
(44, 'CN', 'China', 86),
(45, 'CX', 'Christmas Island', 61),
(46, 'CC', 'Cocos (Keeling) Islands', 672),
(47, 'CO', 'Colombia', 57),
(48, 'KM', 'Comoros', 269),
(49, 'CG', 'Congo', 242),
(50, 'CD', 'Congo The Democratic Republic Of The', 242),
(51, 'CK', 'Cook Islands', 682),
(52, 'CR', 'Costa Rica', 506),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225),
(54, 'HR', 'Croatia (Hrvatska)', 385),
(55, 'CU', 'Cuba', 53),
(56, 'CY', 'Cyprus', 357),
(57, 'CZ', 'Czech Republic', 420),
(58, 'DK', 'Denmark', 45),
(59, 'DJ', 'Djibouti', 253),
(60, 'DM', 'Dominica', 1767),
(61, 'DO', 'Dominican Republic', 1809),
(62, 'TP', 'East Timor', 670),
(63, 'EC', 'Ecuador', 593),
(64, 'EG', 'Egypt', 20),
(65, 'SV', 'El Salvador', 503),
(66, 'GQ', 'Equatorial Guinea', 240),
(67, 'ER', 'Eritrea', 291),
(68, 'EE', 'Estonia', 372),
(69, 'ET', 'Ethiopia', 251),
(70, 'XA', 'External Territories of Australia', 61),
(71, 'FK', 'Falkland Islands', 500),
(72, 'FO', 'Faroe Islands', 298),
(73, 'FJ', 'Fiji Islands', 679),
(74, 'FI', 'Finland', 358),
(75, 'FR', 'France', 33),
(76, 'GF', 'French Guiana', 594),
(77, 'PF', 'French Polynesia', 689),
(78, 'TF', 'French Southern Territories', 0),
(79, 'GA', 'Gabon', 241),
(80, 'GM', 'Gambia The', 220),
(81, 'GE', 'Georgia', 995),
(82, 'DE', 'Germany', 49),
(83, 'GH', 'Ghana', 233),
(84, 'GI', 'Gibraltar', 350),
(85, 'GR', 'Greece', 30),
(86, 'GL', 'Greenland', 299),
(87, 'GD', 'Grenada', 1473),
(88, 'GP', 'Guadeloupe', 590),
(89, 'GU', 'Guam', 1671),
(90, 'GT', 'Guatemala', 502),
(91, 'XU', 'Guernsey and Alderney', 44),
(92, 'GN', 'Guinea', 224),
(93, 'GW', 'Guinea-Bissau', 245),
(94, 'GY', 'Guyana', 592),
(95, 'HT', 'Haiti', 509),
(96, 'HM', 'Heard and McDonald Islands', 0),
(97, 'HN', 'Honduras', 504),
(98, 'HK', 'Hong Kong S.A.R.', 852),
(99, 'HU', 'Hungary', 36),
(100, 'IS', 'Iceland', 354),
(101, 'IN', 'India', 91),
(102, 'ID', 'Indonesia', 62),
(103, 'IR', 'Iran', 98),
(104, 'IQ', 'Iraq', 964),
(105, 'IE', 'Ireland', 353),
(106, 'IL', 'Israel', 972),
(107, 'IT', 'Italy', 39),
(108, 'JM', 'Jamaica', 1876),
(109, 'JP', 'Japan', 81),
(110, 'XJ', 'Jersey', 44),
(111, 'JO', 'Jordan', 962),
(112, 'KZ', 'Kazakhstan', 7),
(113, 'KE', 'Kenya', 254),
(114, 'KI', 'Kiribati', 686),
(115, 'KP', 'Korea North', 850),
(116, 'KR', 'Korea South', 82),
(117, 'KW', 'Kuwait', 965),
(118, 'KG', 'Kyrgyzstan', 996),
(119, 'LA', 'Laos', 856),
(120, 'LV', 'Latvia', 371),
(121, 'LB', 'Lebanon', 961),
(122, 'LS', 'Lesotho', 266),
(123, 'LR', 'Liberia', 231),
(124, 'LY', 'Libya', 218),
(125, 'LI', 'Liechtenstein', 423),
(126, 'LT', 'Lithuania', 370),
(127, 'LU', 'Luxembourg', 352),
(128, 'MO', 'Macau S.A.R.', 853),
(129, 'MK', 'Macedonia', 389),
(130, 'MG', 'Madagascar', 261),
(131, 'MW', 'Malawi', 265),
(132, 'MY', 'Malaysia', 60),
(133, 'MV', 'Maldives', 960),
(134, 'ML', 'Mali', 223),
(135, 'MT', 'Malta', 356),
(136, 'XM', 'Man (Isle of)', 44),
(137, 'MH', 'Marshall Islands', 692),
(138, 'MQ', 'Martinique', 596),
(139, 'MR', 'Mauritania', 222),
(140, 'MU', 'Mauritius', 230),
(141, 'YT', 'Mayotte', 269),
(142, 'MX', 'Mexico', 52),
(143, 'FM', 'Micronesia', 691),
(144, 'MD', 'Moldova', 373),
(145, 'MC', 'Monaco', 377),
(146, 'MN', 'Mongolia', 976),
(147, 'MS', 'Montserrat', 1664),
(148, 'MA', 'Morocco', 212),
(149, 'MZ', 'Mozambique', 258),
(150, 'MM', 'Myanmar', 95),
(151, 'NA', 'Namibia', 264),
(152, 'NR', 'Nauru', 674),
(153, 'NP', 'Nepal', 977),
(154, 'AN', 'Netherlands Antilles', 599),
(155, 'NL', 'Netherlands The', 31),
(156, 'NC', 'New Caledonia', 687),
(157, 'NZ', 'New Zealand', 64),
(158, 'NI', 'Nicaragua', 505),
(159, 'NE', 'Niger', 227),
(160, 'NG', 'Nigeria', 234),
(161, 'NU', 'Niue', 683),
(162, 'NF', 'Norfolk Island', 672),
(163, 'MP', 'Northern Mariana Islands', 1670),
(164, 'NO', 'Norway', 47),
(165, 'OM', 'Oman', 968),
(166, 'PK', 'Pakistan', 92),
(167, 'PW', 'Palau', 680),
(168, 'PS', 'Palestinian Territory Occupied', 970),
(169, 'PA', 'Panama', 507),
(170, 'PG', 'Papua new Guinea', 675),
(171, 'PY', 'Paraguay', 595),
(172, 'PE', 'Peru', 51),
(173, 'PH', 'Philippines', 63),
(174, 'PN', 'Pitcairn Island', 0),
(175, 'PL', 'Poland', 48),
(176, 'PT', 'Portugal', 351),
(177, 'PR', 'Puerto Rico', 1787),
(178, 'QA', 'Qatar', 974),
(179, 'RE', 'Reunion', 262),
(180, 'RO', 'Romania', 40),
(181, 'RU', 'Russia', 70),
(182, 'RW', 'Rwanda', 250),
(183, 'SH', 'Saint Helena', 290),
(184, 'KN', 'Saint Kitts And Nevis', 1869),
(185, 'LC', 'Saint Lucia', 1758),
(186, 'PM', 'Saint Pierre and Miquelon', 508),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784),
(188, 'WS', 'Samoa', 684),
(189, 'SM', 'San Marino', 378),
(190, 'ST', 'Sao Tome and Principe', 239),
(191, 'SA', 'Saudi Arabia', 966),
(192, 'SN', 'Senegal', 221),
(193, 'RS', 'Serbia', 381),
(194, 'SC', 'Seychelles', 248),
(195, 'SL', 'Sierra Leone', 232),
(196, 'SG', 'Singapore', 65),
(197, 'SK', 'Slovakia', 421),
(198, 'SI', 'Slovenia', 386),
(199, 'XG', 'Smaller Territories of the UK', 44),
(200, 'SB', 'Solomon Islands', 677),
(201, 'SO', 'Somalia', 252),
(202, 'ZA', 'South Africa', 27),
(203, 'GS', 'South Georgia', 0),
(204, 'SS', 'South Sudan', 211),
(205, 'ES', 'Spain', 34),
(206, 'LK', 'Sri Lanka', 94),
(207, 'SD', 'Sudan', 249),
(208, 'SR', 'Suriname', 597),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47),
(210, 'SZ', 'Swaziland', 268),
(211, 'SE', 'Sweden', 46),
(212, 'CH', 'Switzerland', 41),
(213, 'SY', 'Syria', 963),
(214, 'TW', 'Taiwan', 886),
(215, 'TJ', 'Tajikistan', 992),
(216, 'TZ', 'Tanzania', 255),
(217, 'TH', 'Thailand', 66),
(218, 'TG', 'Togo', 228),
(219, 'TK', 'Tokelau', 690),
(220, 'TO', 'Tonga', 676),
(221, 'TT', 'Trinidad And Tobago', 1868),
(222, 'TN', 'Tunisia', 216),
(223, 'TR', 'Turkey', 90),
(224, 'TM', 'Turkmenistan', 7370),
(225, 'TC', 'Turks And Caicos Islands', 1649),
(226, 'TV', 'Tuvalu', 688),
(227, 'UG', 'Uganda', 256),
(228, 'UA', 'Ukraine', 380),
(229, 'AE', 'United Arab Emirates', 971),
(230, 'GB', 'United Kingdom', 44),
(231, 'US', 'United States', 1),
(232, 'UM', 'United States Minor Outlying Islands', 1),
(233, 'UY', 'Uruguay', 598),
(234, 'UZ', 'Uzbekistan', 998),
(235, 'VU', 'Vanuatu', 678),
(236, 'VA', 'Vatican City State (Holy See)', 39),
(237, 'VE', 'Venezuela', 58),
(238, 'VN', 'Vietnam', 84),
(239, 'VG', 'Virgin Islands (British)', 1284),
(240, 'VI', 'Virgin Islands (US)', 1340),
(241, 'WF', 'Wallis And Futuna Islands', 681),
(242, 'EH', 'Western Sahara', 212),
(243, 'YE', 'Yemen', 967),
(244, 'YU', 'Yugoslavia', 38),
(245, 'ZM', 'Zambia', 260),
(246, 'ZW', 'Zimbabwe', 263);

-- --------------------------------------------------------

--
-- Table structure for table `st_location_rate`
--

CREATE TABLE `st_location_rate` (
  `rate_id` int(14) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `country_id` int(14) NOT NULL DEFAULT '0',
  `state_id` int(14) NOT NULL DEFAULT '0',
  `city_id` int(14) DEFAULT '0',
  `area_id` int(14) NOT NULL DEFAULT '0',
  `fee` float(14,5) NOT NULL DEFAULT '0.00000',
  `minimum_order` float(14,5) NOT NULL DEFAULT '0.00000',
  `free_above_subtotal` float(14,5) NOT NULL DEFAULT '0.00000',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_location_states`
--

CREATE TABLE `st_location_states` (
  `state_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `country_id` int(11) NOT NULL DEFAULT '1',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_map_places`
--

CREATE TABLE `st_map_places` (
  `id` int(11) NOT NULL,
  `reference_type` varchar(50) NOT NULL DEFAULT '',
  `reference_id` varchar(255) NOT NULL DEFAULT '',
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `address1` varchar(255) NOT NULL DEFAULT '',
  `address2` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT '',
  `country_code` varchar(5) NOT NULL DEFAULT '',
  `postal_code` varchar(100) NOT NULL DEFAULT '',
  `formatted_address` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_media_files`
--

CREATE TABLE `st_media_files` (
  `id` int(11) NOT NULL,
  `upload_uuid` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(50) NOT NULL DEFAULT '',
  `media_type` varchar(100) NOT NULL DEFAULT '',
  `meta_name` varchar(100) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_menu`
--

CREATE TABLE `st_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_type` varchar(100) NOT NULL DEFAULT 'admin',
  `menu_name` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `action_name` varchar(255) NOT NULL DEFAULT '',
  `sequence` int(11) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1',
  `visible` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_menu`
--

INSERT INTO `st_menu` (`menu_id`, `menu_type`, `menu_name`, `parent_id`, `link`, `action_name`, `sequence`, `status`, `visible`) VALUES
(1, 'admin', 'Dashboard', 0, 'admin/dashboard', 'admin.dashboard', 1, 1, 1),
(2, 'admin', 'Merchant', 0, '', 'merchant', 3, 1, 1),
(3, 'admin', 'List', 2, 'vendor/list', 'vendor.list', 0, 1, 1),
(4, 'admin', 'Sponsored', 2, 'vendor/sponsored', 'vendor.sponsored', 11, 1, 1),
(5, 'admin', 'Users', 0, '', 'admin.user', 17, 1, 1),
(6, 'admin', 'Orders', 0, '', 'admin.orders', 5, 1, 1),
(7, 'admin', 'All order', 6, 'order/list', 'order.list', 1, 1, 1),
(8, 'admin', 'Order settings', 6, 'order/settings', 'order.settings', 4, 1, 1),
(9, 'admin', 'All User', 5, 'user/list', 'user.list', 1, 1, 1),
(10, 'admin', 'Add User', 5, 'user/create', 'user.create', 2, 1, 0),
(14, 'admin', 'Delete User', 5, 'user/delete', 'user.delete', 4, 1, 0),
(16, 'admin', 'Membership', 0, '', 'membership', 4, 1, 1),
(17, 'admin', 'Plans', 16, 'plans/list', 'plans.list', 1, 1, 1),
(18, 'admin', 'Add Plan', 16, 'plans/create', 'plans.create', 2, 1, 1),
(19, 'admin', 'Delete Plan', 16, 'admin/deleteplan', 'admin.deleteplan', 3, 1, 0),
(20, 'admin', 'Attributes', 0, '', 'attributes', 10, 1, 1),
(21, 'admin', 'Cuisine', 20, 'attributes/cuisine_list', 'attributes.cuisine_list', 1, 1, 1),
(22, 'admin', 'Dishes', 20, 'attributes/dish_list', 'attributes.dish_list', 2, 1, 1),
(23, 'admin', 'Tags', 20, 'attributes/tag_list', 'attributes.tag_list', 3, 1, 1),
(24, 'admin', 'All CSV Upload', 2, 'vendor/csvlist', 'vendor.csvlist', 9, 1, 0),
(25, 'admin', 'Order status', 20, 'attributes/order_status', 'attributes.order_status', 4, 1, 1),
(26, 'admin', 'Site configuration', 0, 'admin/site_information', 'admin.site_information', 2, 1, 1),
(27, 'admin', 'Currency', 20, 'attributes/currency', 'attributes.currency', 5, 1, 1),
(28, 'admin', 'Promo', 0, '', 'promo', 11, 1, 1),
(29, 'admin', 'Coupon', 28, 'promo/coupon', 'promo.coupon', 1, 1, 1),
(30, 'admin', 'Notifications', 0, '', 'notifications', 12, 1, 1),
(31, 'admin', 'Email provider', 30, 'notifications/provider', 'notifications.provider', 2, 1, 1),
(32, 'admin', 'Templates', 30, 'notifications/template', 'notifications.template', 6, 1, 1),
(34, 'admin', 'Email logs', 30, 'notifications/email_logs', 'notifications.email_logs', 10, 1, 1),
(35, 'admin', 'Pages', 20, 'attributes/pages_list', 'attributes.pages_list', 8, 1, 1),
(36, 'admin', 'Languages', 20, 'attributes/language_list', 'attributes.language_list', 9, 1, 1),
(37, 'admin', 'Buyers', 0, '', 'buyer', 13, 1, 1),
(38, 'admin', 'Customers', 37, 'buyer/customers', 'buyer.customers', 1, 1, 1),
(40, 'admin', 'All Roles', 5, 'user/roles_list', 'user.roles_list', 100, 1, 1),
(41, 'admin', 'Create Role', 5, 'user/role_create', 'user.role_create', 100, 1, 0),
(42, 'admin', 'Update Role', 5, 'user/role_update', 'user.role_update', 100, 1, 0),
(43, 'admin', 'Delete Role', 5, 'user/role_delete', 'user.role_delete', 100, 1, 0),
(44, 'admin', 'Reviews', 37, 'buyer/review_list', 'buyer.review_list', 12, 1, 1),
(45, 'admin', 'Manage Location', 20, 'location/country_list', 'location.country_list', 6, 1, 1),
(46, 'admin', 'SMS', 0, '', 'sms', 15, 1, 1),
(48, 'admin', 'Providers', 46, 'sms/settings', 'sms.settings', 1, 1, 1),
(50, 'admin', 'Logs', 46, 'sms/logs', 'sms.logs', 100, 1, 1),
(51, 'admin', 'Reports', 0, '', 'reports', 16, 1, 1),
(52, 'admin', 'Merchant Registration', 51, 'reports/merchant_registration', 'reports.merchant_registration', 1, 1, 1),
(53, 'admin', 'Membership Payment', 51, 'reports/merchant_payment', 'reports.merchant_payment', 2, 1, 1),
(54, 'admin', 'Merchant Sales', 51, 'reports/merchant_sales', 'reports.merchant_sales', 3, 1, 1),
(57, 'admin', 'Status Management', 20, 'attributes/status_mgt', 'attributes.status_mgt', 10, 1, 1),
(58, 'admin', 'Order Type', 20, 'attributes/services_list', 'attributes.services_list', 11, 1, 1),
(59, 'admin', 'Merchant Type', 20, 'attributes/merchant_type_list', 'attributes.merchant_type_list', 12, 1, 1),
(60, 'merchant', 'Dashboard', 0, 'merchant/dashboard', 'merchant.dashboard', 1, 1, 1),
(61, 'merchant', 'Merchant', 0, '', 'merchant', 2, 1, 1),
(62, 'merchant', 'Information', 61, 'merchant/edit', 'merchant.edit', 1, 1, 1),
(63, 'merchant', 'Settings', 61, 'merchant/settings', 'merchant.settings', 2, 1, 1),
(64, 'merchant', 'Orders', 0, '', 'merchant.orders', 3, 1, 1),
(65, 'merchant', 'New Orders', 64, 'orders/new', 'orders.new', 1, 1, 1),
(66, 'merchant', 'Orders Processing', 64, 'orders/processing', 'orders.processing', 2, 1, 1),
(69, 'merchant', 'Settings', 67, 'booking/settings', 'booking.settings', 2, 1, 1),
(70, 'merchant', 'Attributes', 0, '', 'attributes', 5, 1, 1),
(71, 'merchant', 'Order Limit', 61, 'merchant/time_management', 'merchant.time_management', 4, 1, 1),
(72, 'merchant', 'Size', 70, 'attrmerchant/size_list', 'attrmerchant.size_list', 1, 1, 1),
(73, 'merchant', 'Ingredients', 70, 'attrmerchant/ingredients_list', 'attrmerchant.ingredients_list', 5, 1, 1),
(74, 'merchant', 'Cooking Reference\r\n', 70, 'attrmerchant/cookingref_list', 'attrmerchant.cookingref_list', 9, 1, 1),
(75, 'merchant', 'Food', 0, '', 'food', 6, 1, 1),
(76, 'merchant', 'Category', 75, 'food/category', 'food.category', 1, 1, 1),
(77, 'merchant', 'Addon Category', 75, 'food/addoncategory', 'food.addoncategory', 6, 1, 1),
(78, 'merchant', 'Addon Items', 75, 'food/addonitem', 'food.addonitem', 10, 1, 1),
(79, 'merchant', 'Items', 75, 'food/items', 'food.items', 14, 1, 1),
(80, 'merchant', 'Order Type', 0, '', 'services.settings', 7, 1, 1),
(81, 'merchant', 'Delivery', 80, 'services/delivery_settings', 'services.delivery_settings', 1, 1, 1),
(82, 'merchant', 'Promo', 0, '', 'promo', 9, 1, 1),
(83, 'merchant', 'Coupon', 82, 'merchant/coupon', 'merchant.coupon', 1, 1, 1),
(84, 'merchant', 'Offers', 82, 'merchant/offers', 'merchant.offers', 5, 1, 1),
(85, 'merchant', 'Images', 0, '', 'merchant.images', 9, 1, 1),
(87, 'merchant', 'Account', 0, '', '', 10, 1, 1),
(88, 'merchant', 'Statement', 87, 'commission/statement', 'commission.statement', 1, 1, 1),
(89, 'merchant', 'Earnings', 87, 'commission/earnings', 'commission.earnings', 2, 0, 0),
(90, 'merchant', 'Withdrawals', 87, 'commission/withdrawals', 'commission.withdrawals', 3, 1, 1),
(91, 'merchant', 'SMS', 0, '', 'sms', 11, 1, 0),
(93, 'merchant', 'BroadCast', 91, 'smsmerchant/broadcast', 'smsmerchant.broadcast', 2, 1, 1),
(94, 'merchant', 'Buyers', 0, '', 'buyer', 12, 1, 1),
(96, 'merchant', 'Reviews', 94, 'customer/reviews', 'customer.reviews', 2, 1, 1),
(97, 'merchant', 'Users', 0, '', 'merchan.user', 13, 1, 1),
(98, 'merchant', 'All User', 97, 'usermerchant/user_list', 'usermerchant.user_list', 1, 1, 1),
(99, 'merchant', 'All Roles', 97, 'usermerchant/role_list', 'usermerchant.role_list', 5, 1, 1),
(100, 'merchant', 'Reports', 0, '', 'reports', 14, 1, 1),
(101, 'merchant', 'Sales Report', 100, 'merchantreport/sales', 'merchantreport.sales', 1, 1, 1),
(102, 'merchant', 'Sales Summary', 100, 'merchantreport/summary', 'merchantreport.summary', 2, 1, 1),
(104, 'merchant', 'Pickup', 80, 'services/settings_pickup', 'services.settings_pickup', 4, 1, 1),
(105, 'merchant', 'Dinein', 80, 'services/settings_dinein', 'services.settings_dinein', 6, 1, 1),
(106, 'merchant', 'Gallery', 85, 'images/gallery', 'images.gallery', 1, 1, 1),
(107, 'merchant', 'Media Library', 85, 'images/media_library', 'images.media_library', 2, 1, 1),
(108, 'merchant', 'Merchant information', 61, 'merchant/edit', 'merchant.edit', 2, 0, 0),
(109, 'merchant', 'Login information', 61, 'merchant/login', 'merchant.login', 3, 1, 0),
(110, 'merchant', 'Address', 61, 'merchant/address', 'merchant.address', 4, 1, 0),
(111, 'merchant', 'Merchant Type', 61, 'merchant/membership', 'merchant.membership', 5, 1, 0),
(112, 'merchant', 'Featured', 61, 'merchant/featured', 'merchant.featured', 6, 1, 0),
(113, 'merchant', 'Store Hours', 61, 'merchant/store_hours', 'merchant.store_hours', 9, 1, 0),
(114, 'merchant', 'Tracking Time', 61, 'merchant/tracking_estimation', 'merchant.tracking_estimation', 10, 1, 0),
(115, 'merchant', 'Add Store Hours', 61, 'merchant/store_hours_create', 'merchant.store_hours_create', 11, 1, 0),
(116, 'merchant', 'Payment history', 61, 'merchant/payment_history', 'merchant.payment_history', 12, 1, 0),
(117, 'merchant', 'Update Store Hours\r\n', 61, 'merchant/store_hours_update', 'merchant.store_hours_update', 13, 1, 0),
(118, 'merchant', 'Delete Store Hours', 61, 'merchant/store_hours_delete', 'merchant.store_hours_delete', 14, 1, 0),
(122, 'merchant', 'View Order', 64, 'orders/view', 'orders.view', 7, 1, 0),
(123, 'merchant', 'Delete Order', 64, 'merchant/delete', 'merchant.delete', 9, 1, 0),
(124, 'merchant', 'Create Time Management', 64, 'merchant/time_management_create', 'merchant.time_management_create', 10, 1, 0),
(125, 'merchant', 'Update Time Management', 64, 'merchant/time_management_update', 'merchant.time_management_update', 11, 1, 0),
(126, 'merchant', 'Delete Time Management', 64, 'merchant/time_mgt_delete', 'merchant.time_mgt_delete', 12, 1, 0),
(127, 'merchant', 'Inventory Management', 0, '', 'inventory.management', 15, 1, 1),
(128, 'merchant', 'Suppliers', 127, 'supplier/list', 'supplier.list', 1, 1, 1),
(132, 'merchant', 'Time Slot', 67, 'booking/time_slot', 'booking.time_slot', 6, 1, 0),
(133, 'merchant', 'Create Time Slot', 67, 'booking/timeslot_create', 'booking.timeslot_create', 7, 1, 0),
(134, 'merchant', 'Update Time Slot', 67, 'booking/timeslot_update', 'booking.timeslot_update', 8, 1, 0),
(135, 'merchant', 'Delete Time Slot', 67, 'booking/delete_timeslot', 'booking.delete_timeslot', 8, 1, 0),
(136, 'merchant', 'Create Size', 70, 'attrmerchant/size_create', 'attrmerchant.size_create', 2, 1, 0),
(137, 'merchant', 'Update Size', 70, 'attrmerchant/size_update', 'attrmerchant.size_update', 3, 1, 0),
(138, 'merchant', 'Delete Size', 70, 'attrmerchant/size_delete', 'attrmerchant.size_delete', 4, 1, 0),
(139, 'merchant', 'Ingredients create', 70, 'attrmerchant/ingredients_create', 'attrmerchant.ingredients_create', 6, 1, 0),
(140, 'admin', 'Featured Locations', 20, 'attributes/featured_loc', 'attributes.featured_loc', 7, 1, 1),
(141, 'admin', 'Payment gateway', 0, '', 'payment.gateway', 6, 1, 1),
(142, 'admin', 'All Payment', 141, 'payment_gateway/list', 'payment_gateway.list', 1, 1, 1),
(143, 'merchant', 'Payment gateway', 0, '', 'payment.gateway', 8, 1, 1),
(144, 'merchant', 'All payments', 143, 'merchant/payment_list', 'merchant.payment_list', 1, 1, 1),
(145, 'merchant', 'Archive', 0, '', 'archive', 16, 1, 1),
(146, 'merchant', 'All Orders', 145, 'archive_order/list', 'archive_order.list', 1, 1, 1),
(148, 'merchant', 'Orders Ready', 64, 'orders/ready', 'orders.ready', 3, 1, 1),
(149, 'merchant', 'Completed', 64, 'orders/completed', 'orders.completed', 4, 1, 1),
(150, 'admin', 'Rejection Reason', 20, 'attributes/rejection_list', 'attributes.rejection_list', 13, 1, 1),
(151, 'merchant', 'All Orders', 64, 'orders/history', 'orders.history', 6, 1, 1),
(152, 'admin', 'Account', 0, '', 'admin.account', 7, 1, 1),
(153, 'admin', 'Transactions', 152, 'account/transactions', 'account.transactions', 1, 1, 1),
(154, 'admin', 'Earnings', 0, '', 'admin.earnings', 8, 1, 1),
(155, 'admin', 'Merchant Earnings', 154, 'earnings/merchant', 'earnings.merchant', 1, 1, 1),
(156, 'admin', 'Withdrawals', 0, '', 'admin.withdrawals', 9, 1, 1),
(157, 'admin', 'Merchant withdrawals', 156, 'withdrawals/merchant', 'withdrawals.merchant', 1, 1, 1),
(159, 'admin', 'Settings', 156, 'withdrawals/settings', 'withdrawals.settings', 2, 1, 1),
(160, 'admin', 'Third Party App', 0, '', 'admin.thirdparty', 14, 1, 1),
(161, 'admin', 'Real time application', 160, 'thirdparty/realtime', 'thirdparty.realtime', 1, 1, 1),
(162, 'admin', 'Web push notification', 160, 'thirdparty/webpush', 'thirdparty.webpush', 2, 1, 1),
(163, 'admin', 'Push logs', 30, 'notifications/push_logs', 'notifications.push_logs', 12, 1, 1),
(164, 'merchant', 'Scheduled', 64, 'orders/scheduled', 'orders.scheduled', 5, 1, 1),
(165, 'admin', 'Media Library', 0, 'media/library', 'media.library', 18, 1, 1),
(166, 'admin', 'Zones', 20, 'attributes/zone_list', 'attributes.zone_list', 6, 1, 1),
(167, 'admin', 'Pause order reason', 20, 'attributes/pause_reason_list', 'attributes.pause_reason_list', 14, 1, 1),
(168, 'admin', 'Status Actions', 20, 'attributes/actions_list', 'attributes.actions_list', 15, 1, 1),
(169, 'admin', 'Order earnings', 51, 'reports/order_earnings', 'reports.order_earnings', 4, 1, 1),
(170, 'merchant', 'Refund Report', 100, 'merchantreport/refund', 'merchantreport.refund', 3, 1, 1),
(171, 'merchant', 'POS', 0, '', 'pos', 3, 1, 1),
(172, 'merchant', 'POS create order', 171, 'pos/create_order', 'pos.create_order', 1, 1, 1),
(173, 'merchant', 'Orders', 171, 'pos/orders', 'pos.orders', 2, 1, 1),
(174, 'admin', 'Refund Report', 51, 'reports/refund', 'reports.refund', 5, 1, 1),
(175, 'admin', 'Map API Keys', 26, 'admin/map_keys', 'admin.map_keys', 1, 1, 0),
(176, 'admin', 'Google Recaptcha', 26, 'admin/recaptcha', 'admin.recaptcha', 2, 1, 0),
(177, 'admin', 'Search mode', 26, 'admin/search_settings', 'admin.search_settings', 3, 1, 0),
(178, 'admin', 'Login & Signup', 26, 'admin/login_sigup', 'admin.login_sigup', 4, 1, 0),
(179, 'admin', 'Phone Settings', 26, 'admin/phone_settings', 'admin.phone_settings', 4, 1, 0),
(180, 'admin', 'Social Login', 26, 'admin/social_settings', 'admin.social_settings', 5, 1, 0),
(181, 'admin', 'Printing Settings', 26, 'admin/printing', 'admin.printing', 6, 1, 0),
(182, 'admin', 'Reviews', 26, 'admin/reviews', 'admin.reviews', 7, 1, 0),
(183, 'admin', 'Timezone', 26, 'admin/timezone', 'admin.timezone', 8, 1, 0),
(184, 'admin', 'Ordering', 26, 'admin/ordering', 'admin.ordering', 9, 1, 0),
(185, 'admin', 'Merchant Registration', 26, 'admin/merchant_registration', 'admin.merchant_registration', 10, 1, 0),
(186, 'admin', 'Notifications', 26, 'admin/notifications', 'admin.notifications', 11, 1, 0),
(187, 'admin', 'Contact Settings', 26, 'admin/contact_settings', 'admin.contact_settings', 12, 1, 0),
(188, 'admin', 'Analytics', 26, 'admin/analytics_settings', 'admin.analytics_settings', 13, 1, 0),
(189, 'admin', 'Merchant Information', 2, 'vendor/edit', 'vendor.edit', 1, 1, 0),
(190, 'admin', 'Login information', 2, 'vendor/login', 'vendor.login', 2, 1, 0),
(191, 'admin', 'Address', 2, 'vendor/address', 'vendor.address', 2, 1, 0),
(192, 'admin', 'Zone', 2, 'vendor/zone', 'vendor.zone', 3, 1, 0),
(193, 'admin', 'Merchant Type', 2, 'vendor/membership', 'vendor.membership', 4, 1, 0),
(194, 'admin', 'Featured', 2, 'vendor/featured', 'vendor.featured', 5, 1, 0),
(195, 'admin', 'Payment history', 2, 'vendor/payment_history', 'vendor.payment_history', 6, 1, 0),
(196, 'admin', 'Payment settings', 2, 'vendor/payment_settings', 'vendor.payment_settings', 7, 1, 0),
(197, 'admin', 'Others', 2, 'vendor/others', 'vendor.others', 8, 1, 0),
(198, 'admin', 'Upload CSV', 2, 'vendor/csv_upload', 'vendor.csv_upload', 10, 1, 0),
(199, 'admin', ' Add sponsored', 2, 'vendor/create_sponsored', 'vendor.create_sponsored', 12, 1, 0),
(200, 'admin', ' Update sponsored', 16, 'plans/update', 'plans.update', 4, 1, 0),
(201, 'admin', ' Update sponsored', 16, 'plans/features', 'plans.features', 5, 1, 0),
(202, 'admin', ' Update sponsored', 16, 'plans/payment_list', 'plans.payment_list', 6, 1, 0),
(203, 'admin', ' Update sponsored', 16, 'plans/feature_create', 'plans.feature_create', 7, 1, 0),
(204, 'admin', 'View order', 6, 'order/view', 'order.view', 2, 1, 0),
(205, 'admin', 'Print PDF', 6, 'preprint/pdf', 'preprint.pdf', 3, 1, 0),
(206, 'admin', 'Order Tabs', 6, 'order/settings_tabs', 'order.settings_tabs', 5, 1, 0),
(207, 'admin', 'Order Buttons', 6, 'order/settings_buttons', 'order.settings_buttons', 6, 1, 0),
(208, 'admin', 'Order Tracking', 6, 'order/settings_tracking', 'order.settings_tracking', 7, 1, 0),
(209, 'admin', 'Template', 6, 'order/settings_template', 'order.settings_template', 8, 1, 0),
(210, 'admin', 'Add Gateway', 141, 'payment_gateway/create', 'payment_gateway.create', 2, 1, 0),
(211, 'admin', 'Update Gateway', 141, 'payment_gateway/update', 'payment_gateway.update', 3, 1, 0),
(212, 'admin', 'Withdrawals Template', 156, 'withdrawals/settings_template', 'withdrawals.settings_template', 3, 1, 0),
(213, 'admin', 'Cuisine create', 20, 'attributes/cuisine_create', 'attributes.cuisine_create', 1, 1, 0),
(214, 'admin', 'Cuisine update', 20, 'attributes/cuisine_update', 'attributes.cuisine_update', 1, 1, 0),
(215, 'admin', 'Dishes create', 20, 'attributes/dish_create', 'attributes.dish_create', 2, 1, 0),
(216, 'admin', 'Dishes update', 20, 'attributes/dish_update', 'attributes.dish_update', 2, 1, 0),
(217, 'admin', 'Dishes delete', 20, 'attributes/dishes_delete', 'attributes.dishes_delete', 2, 1, 0),
(218, 'admin', 'Cuisine delete', 20, 'attributes/cuisine_delete', 'attributes.cuisine_delete', 1, 1, 0),
(219, 'admin', 'Tags create', 20, 'attributes/tags_create', 'attributes.tags_create', 3, 1, 0),
(220, 'admin', 'Tags update', 20, 'attributes/tags_update', 'attributes.tags_update', 3, 1, 0),
(221, 'admin', 'Tags delete', 20, 'attributes/tags_delete', 'attributes.tags_delete', 3, 1, 0),
(222, 'admin', 'Status create', 20, 'attributes/status_create', 'attributes.status_create', 4, 1, 0),
(223, 'admin', 'Status update', 20, 'attributes/status_update', 'attributes.status_update', 4, 1, 0),
(224, 'admin', 'Status delete', 20, 'attributes/status_delete', 'attributes.status_delete', 4, 1, 0),
(225, 'admin', 'Status actions', 20, 'attributes/status_actions', 'attributes.status_actions', 4, 1, 0),
(226, 'admin', 'Status actions create', 20, 'attributes/create_action', 'attributes.create_action', 4, 1, 0),
(227, 'admin', 'Status actions update', 20, 'attributes/update_action', 'attributes.update_action', 4, 1, 0),
(228, 'admin', 'Currency create', 20, 'attributes/currency_create', 'attributes.currency_create', 5, 1, 0),
(229, 'admin', 'Currency update', 20, 'attributes/currency_update', 'attributes.currency_update', 5, 1, 0),
(230, 'admin', 'Currency delete', 20, 'attributes/currency_delete', 'attributes.currency_delete', 5, 1, 0),
(231, 'admin', 'Country create', 20, 'location/country_create', 'location.country_create', 6, 1, 0),
(232, 'admin', 'Country update', 20, 'location/country_update', 'location.country_update', 6, 1, 0),
(233, 'admin', 'Currency delete', 20, 'location/delete_country', 'location.delete_country', 6, 1, 0),
(234, 'admin', 'State list', 20, 'location/state_list', 'location.state_list', 6, 1, 0),
(235, 'admin', 'State create', 20, 'location/state_create', 'location.state_create', 6, 1, 0),
(236, 'admin', 'State update', 20, 'location/state_update', 'location.state_update', 6, 1, 0),
(237, 'admin', 'State delete', 20, 'location/state_delete', 'location.state_delete', 6, 1, 0),
(238, 'admin', 'City list', 20, 'location/city_list', 'location.city_list', 6, 1, 0),
(239, 'admin', 'City create', 20, 'location/city_create', 'location.city_create', 6, 1, 0),
(240, 'admin', 'City delete', 20, 'location/city_delete', 'location.city_delete', 6, 1, 0),
(241, 'admin', 'Area list', 20, 'location/area_list', 'location.area_list', 6, 1, 0),
(242, 'admin', 'Area create', 20, 'location/area_create', 'location.area_create', 6, 1, 0),
(243, 'admin', 'Area update', 20, 'location/area_update', 'location.area_update', 6, 1, 0),
(244, 'admin', 'Area delete', 20, 'location/area_delete', 'location.area_delete', 6, 1, 0),
(245, 'admin', 'Zone create', 20, 'attributes/zone_create', 'attributes.zone_create', 6, 1, 0),
(246, 'admin', 'Zone update', 20, 'attributes/zone_update', 'attributes.zone_update', 6, 1, 0),
(247, 'admin', 'Zone delete', 20, 'attributes/zone_delete', 'attributes.zone_delete', 6, 1, 0),
(248, 'admin', 'Featured create', 20, 'attributes/featured_loc_create', 'attributes.featured_loc_create', 7, 1, 0),
(249, 'admin', 'Featured update', 20, 'attributes/featured_loc_update', 'attributes.featured_loc_update', 7, 1, 0),
(250, 'admin', 'Featured delete', 20, 'attributes/featured_loc_delete', 'attributes.featured_loc_delete', 7, 1, 0),
(254, 'admin', 'Pages create', 20, 'attributes/pages_create', 'attributes.pages_create', 8, 1, 0),
(255, 'admin', 'Pages update', 20, 'attributes/page_update', 'attributes.page_update', 8, 1, 0),
(256, 'admin', 'Pages delete', 20, 'attributes/pages_delete', 'attributes.pages_delete', 8, 1, 0),
(257, 'admin', 'Language create', 20, 'attributes/language_create', 'attributes.language_create', 9, 1, 0),
(258, 'admin', 'Language update', 20, 'attributes/language_update', 'attributes.language_update', 9, 1, 0),
(259, 'admin', 'Language delete', 20, 'attributes/language_delete', 'attributes.language_delete', 9, 1, 0),
(260, 'admin', 'Status Management create', 20, 'attributes/status_mgt_create', 'attributes.status_mgt_create', 10, 1, 0),
(261, 'admin', 'Status Management update', 20, 'attributes/status_mgt_update', 'attributes.status_mgt_update', 10, 1, 0),
(262, 'admin', 'Status Management delete', 20, 'attributes/status_mgt_delete', 'attributes.status_mgt_delete', 10, 1, 0),
(263, 'admin', 'Order type create', 20, 'attributes/services_create', 'attributes.services_create', 11, 1, 0),
(264, 'admin', 'Order type update', 20, 'attributes/services_update', 'attributes.services_update', 11, 1, 0),
(265, 'admin', 'Order type delete', 20, 'attributes/services_delete', 'attributes.services_delete', 11, 1, 0),
(266, 'admin', 'Merchant type create', 20, 'attributes/merchant_type_create', 'attributes.merchant_type_create', 12, 1, 0),
(267, 'admin', 'Merchant type update', 20, 'attributes/merchant_type_update', 'attributes.merchant_type_update', 12, 1, 0),
(268, 'admin', 'Merchant type delete', 20, 'attributes/merchant_type_delete', 'attributes.merchant_type_delete', 12, 1, 0),
(269, 'admin', 'Rejection reason create', 20, 'attributes/rejection_create', 'attributes.rejection_create', 13, 1, 0),
(270, 'admin', 'Rejection reason update', 20, 'attributes/rejection_update', 'attributes.rejection_update', 13, 1, 0),
(271, 'admin', 'Rejection reason delete', 20, 'attributes/rejection_reason_delete', 'attributes.rejection_reason_delete', 13, 1, 0),
(272, 'admin', 'Pause reason create', 20, 'attributes/pause_create', 'attributes.pause_create', 14, 1, 0),
(273, 'admin', 'Pause reason update', 20, 'attributes/pause_reason_update', 'attributes.pause_reason_update', 14, 1, 0),
(274, 'admin', 'Pause reason delete', 20, 'attributes/pause_reason_delete', 'attributes.pause_reason_delete', 14, 1, 0),
(275, 'admin', 'Status action create', 20, 'attributes/action_create', 'attributes.action_create', 15, 1, 0),
(276, 'admin', 'Status reason update', 20, 'attributes/action_update', 'attributes.action_update', 15, 1, 0),
(277, 'admin', 'Status reason delete', 20, 'attributes/action_delete', 'attributes.action_delete', 15, 1, 0),
(278, 'admin', 'Coupon create', 28, 'promo/coupon_create', 'promo.coupon_create', 2, 1, 0),
(279, 'admin', 'Coupon update', 28, 'promo/coupon_update', 'promo.coupon_update', 3, 1, 0),
(280, 'admin', 'Coupon delete', 28, 'promo/coupon_delete', 'promo.coupon_delete', 4, 1, 0),
(281, 'admin', 'Email Provider create', 30, 'notifications/provider_create', 'notifications.provider_create', 3, 1, 0),
(282, 'admin', 'Email Provider update', 30, 'notifications/provider_update', 'notifications.provider_update', 4, 1, 0),
(283, 'admin', 'Email Provider delete', 30, 'notifications/email_provider_delete', 'notifications.email_provider_delete', 5, 1, 0),
(284, 'admin', 'Templates create', 30, 'notifications/template_create', 'notifications.template_create', 7, 1, 0),
(285, 'admin', 'Templates update', 30, 'notifications/template_update', 'notifications.template_update', 8, 1, 0),
(286, 'admin', 'Templates delete', 30, 'notifications/template_delete', 'notifications.template_delete', 9, 1, 0),
(287, 'admin', 'Email Logs delete', 30, 'notifications/delete_email', 'notifications.delete_email', 11, 1, 0),
(288, 'admin', 'Push logs delete', 30, 'notifications/delete_push', 'notifications.delete_push', 13, 1, 0),
(289, 'admin', 'Customer create', 37, 'buyer/customer_create', 'buyer.customer_create', 2, 1, 0),
(290, 'admin', 'Customer update', 37, 'buyer/customer_update', 'buyer.customer_update', 3, 1, 0),
(291, 'admin', 'Customer delete', 37, 'buyer/customer_delete', 'buyer.customer_delete', 4, 1, 0),
(292, 'admin', 'Customer address', 37, 'buyer/address', 'buyer.address', 5, 1, 0),
(293, 'admin', 'Customer order history', 37, 'buyer/order_history', 'buyer.order_history', 6, 1, 0),
(294, 'admin', 'Address create', 37, 'buyer/address_create', 'buyer.address_create', 7, 1, 0),
(295, 'admin', 'Address delete', 37, 'buyer/address_delete', 'buyer.address_delete', 8, 1, 0),
(296, 'admin', 'Address update', 37, 'buyer/address_update', 'buyer.address_update', 9, 1, 0),
(298, 'admin', 'Review update', 37, 'buyer/review_update', 'buyer.review_update', 13, 1, 0),
(299, 'admin', 'Review delete', 37, 'buyer/review_delete', 'buyer.review_delete', 14, 1, 0),
(300, 'admin', 'SMS provider create', 46, 'sms/provider_create', 'sms.provider_create', 2, 1, 0),
(301, 'admin', 'SMS provider update', 46, 'sms/provider_update', 'sms.provider_update', 3, 1, 0),
(302, 'admin', 'SMS provider delete', 46, 'sms/provider_delete', 'sms.provider_delete', 4, 1, 0),
(303, 'admin', 'SMS delete logs', 46, 'sms/delete', 'sms.delete', 5, 1, 0),
(304, 'admin', 'Update User', 5, 'user/update', 'user.update', 3, 1, 0),
(305, 'admin', 'Change password', 5, 'user/change_password', 'user.change_password', 5, 1, 0),
(306, 'admin', 'Zone', 5, 'user/zone', 'user.zone', 6, 1, 0),
(307, 'merchant', 'Taxes', 61, 'merchant/taxes', 'merchant.taxes', 2, 1, 0),
(308, 'merchant', 'Social Settings', 61, 'merchant/social_settings', 'merchant.social_settings', 2, 1, 0),
(309, 'merchant', 'Notification Settings', 61, 'merchant/notification_settings', 'merchant.notification_settings', 2, 1, 0),
(310, 'merchant', 'Order Settings', 61, 'merchant/orders_settings', 'merchant.orders_settings', 2, 1, 0),
(311, 'merchant', 'Order limit create', 61, 'merchant/time_management_create', 'merchant.time_management_create', 4, 1, 0),
(312, 'merchant', 'Order view PDF', 64, 'print/pdf', 'print.pdf', 8, 1, 0),
(313, 'merchant', 'Ingredients update', 70, 'attrmerchant/ingredients_update', 'attrmerchant.ingredients_update', 7, 1, 0),
(314, 'merchant', 'Ingredients delete', 70, 'attrmerchant/ingredients_delete', 'attrmerchant.ingredients_delete', 8, 1, 0),
(315, 'merchant', 'Cooking create ', 70, 'attrmerchant/cookingref_create', 'attrmerchant.cookingref_create', 10, 1, 0),
(316, 'merchant', 'Cooking update', 70, 'attrmerchant/cookingref_update', 'attrmerchant.cookingref_update', 11, 1, 0),
(317, 'merchant', 'Cooking delete', 70, 'attrmerchant/cookingref_delete', 'attrmerchant.cookingref_delete', 12, 1, 0),
(318, 'merchant', 'Category create ', 75, 'food/category_create', 'food.category_create', 2, 1, 0),
(319, 'merchant', 'Category update', 75, 'food/category_update', 'food.category_update', 3, 1, 0),
(320, 'merchant', 'Category delete', 75, 'food/category_delete', 'food.category_delete', 4, 1, 0),
(321, 'merchant', 'Category availability', 75, 'food/category_availability', 'food.category_availability', 5, 1, 0),
(322, 'merchant', 'Addon Category create ', 75, 'food/addoncategory_create', 'food.addoncategory_create', 7, 1, 0),
(323, 'merchant', 'Addon Category update', 75, 'food/addoncategory_update', 'food.addoncategory_update', 8, 1, 0),
(324, 'merchant', 'Addon Category delete', 75, 'food/addoncategory_delete', 'food.addoncategory_delete', 9, 1, 0),
(325, 'merchant', 'Addon Item create ', 75, 'food/addonitem_create', 'food.addonitem_create', 11, 1, 0),
(326, 'merchant', 'Addon Item update', 75, 'food/addonitem_update', 'food.addonitem_update', 12, 1, 0),
(327, 'merchant', 'Addon Item delete', 75, 'food/addonitem_delete', 'food.addonitem_delete', 13, 1, 0),
(328, 'merchant', 'Item create ', 75, 'food/item_create', 'food.item_create', 15, 1, 0),
(329, 'merchant', 'Item update', 75, 'food/item_update', 'food.item_update', 16, 1, 0),
(330, 'merchant', 'Item delete', 75, 'food/item_delete', 'food.item_delete', 17, 1, 0),
(331, 'merchant', 'Item price', 75, 'food/item_price', 'food.item_price', 18, 1, 0),
(332, 'merchant', 'Item price delete', 75, 'food/itemprice_create', 'food.itemprice_create', 19, 1, 0),
(333, 'merchant', 'Item price update', 75, 'food/itemprice_update', 'food.itemprice_update', 20, 1, 0),
(334, 'merchant', 'Item price delete', 75, 'food/itemprice_delete', 'food.itemprice_delete', 21, 1, 0),
(335, 'merchant', 'Item addon', 75, 'food/item_addon', 'food.item_addon', 22, 1, 0),
(336, 'merchant', 'Item addon create', 75, 'food/itemaddon_create', 'food.itemaddon_create', 23, 1, 0),
(337, 'merchant', 'Item addon update', 75, 'food/itemaddon_update', 'food.itemaddon_update', 24, 1, 0),
(338, 'merchant', 'Item addon delete', 75, 'food/itemaddon_delete', 'food.itemaddon_delete', 25, 1, 0),
(339, 'merchant', 'Item attributes', 75, 'food/item_attributes', 'food.item_attributes', 26, 1, 0),
(340, 'merchant', 'Item availability', 75, 'food/item_availability', 'food.item_availability', 27, 1, 0),
(341, 'merchant', 'Item inventory', 75, 'food/item_inventory', 'food.item_inventory', 28, 1, 0),
(342, 'merchant', 'Item promo', 75, 'food/item_promos', 'food.item_promos', 29, 1, 0),
(343, 'merchant', 'Item promo create', 75, 'food/itempromo_create', 'food.itempromo_create', 30, 1, 0),
(344, 'merchant', 'Item promo update', 75, 'food/itempromo_update', 'food.itempromo_update', 31, 1, 0),
(345, 'merchant', 'Item promo delete', 75, 'food/itempromo_delete', 'food.itempromo_delete', 32, 1, 0),
(346, 'merchant', 'Item gallery', 75, 'food/item_gallery', 'food.item_gallery', 33, 1, 0),
(347, 'merchant', 'Item SEO', 75, 'food/item_seo', 'food.item_seo', 34, 1, 0),
(348, 'merchant', 'Dynamic Rates', 80, 'services/charges_table', 'services.charges_table', 2, 1, 0),
(349, 'merchant', 'Fixed Charge', 80, 'services/fixed_charge', 'services.fixed_charge', 3, 1, 0),
(350, 'merchant', 'Pickup instructions', 80, 'services/pickup_instructions', 'services.pickup_instructions', 5, 1, 0),
(351, 'merchant', 'Dinein instructions', 80, 'services/dinein_instructions', 'services.dinein_instructions', 7, 1, 0),
(352, 'merchant', 'Coupon create', 82, 'merchant/coupon_create', 'merchant.coupon_create', 2, 1, 0),
(353, 'merchant', 'Coupon update', 82, 'merchant/coupon_update', 'merchant.coupon_update', 3, 1, 0),
(354, 'merchant', 'Coupon delete', 82, 'merchant/coupon_delete', 'merchant.coupon_delete', 4, 1, 0),
(355, 'merchant', 'Offer create', 82, 'merchant/offer_create', 'merchant.offer_create', 6, 1, 0),
(356, 'merchant', 'Offer update', 82, 'merchant/offer_update', 'merchant.offer_update', 7, 1, 0),
(357, 'merchant', 'Offer delete', 82, 'merchant/offer_delete', 'merchant.offer_delete', 8, 1, 0),
(358, 'merchant', 'Review reply', 94, 'customer/review_reply', 'customer.review_reply', 3, 1, 0),
(359, 'merchant', 'User create', 97, 'usermerchant/user_create', 'usermerchant.user_create', 2, 1, 0),
(360, 'merchant', 'User update', 97, 'usermerchant/user_update', 'usermerchant.user_update', 3, 1, 0),
(361, 'merchant', 'User delete', 97, 'usermerchant/user_delete', 'usermerchant.user_delete', 4, 1, 0),
(362, 'merchant', 'Role create', 97, 'usermerchant/role_create', 'usermerchant.role_create', 6, 1, 0),
(363, 'merchant', 'Role update', 97, 'usermerchant/role_update', 'usermerchant.role_update', 7, 1, 0),
(364, 'merchant', 'Role delete', 97, 'usermerchant/role_delete', 'usermerchant.role_delete', 8, 1, 0),
(365, 'merchant', 'Supplier create', 127, 'supplier/create', 'supplier.create', 2, 1, 0),
(366, 'merchant', 'Supplier update', 127, 'supplier/update', 'supplier.update', 3, 1, 0),
(367, 'merchant', 'Supplier delete', 127, 'supplier/delete', 'supplier.delete', 4, 1, 0),
(368, 'admin', 'Website', 0, '', 'sales.channel', 17, 1, 1),
(369, 'admin', 'Theme', 368, 'theme/changer', 'theme.changer', 1, 1, 1),
(370, 'website', 'Company', 0, '', '', 0, 1, 1),
(371, 'website', 'Terms and conditions', 370, '{{site_url}}/terms-and-conditions', '', 0, 1, 1),
(372, 'website', 'Privacy policy', 370, '{{site_url}}/priva', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `st_merchant`
--

CREATE TABLE `st_merchant` (
  `merchant_id` int(14) NOT NULL,
  `merchant_uuid` varchar(100) NOT NULL DEFAULT '',
  `restaurant_slug` varchar(255) NOT NULL DEFAULT '',
  `restaurant_name` varchar(255) NOT NULL DEFAULT '',
  `restaurant_phone` varchar(100) NOT NULL DEFAULT '',
  `contact_name` varchar(255) NOT NULL DEFAULT '',
  `contact_phone` varchar(100) NOT NULL DEFAULT '',
  `contact_email` varchar(255) NOT NULL DEFAULT '',
  `address` text,
  `free_delivery` int(1) NOT NULL DEFAULT '2',
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `activation_key` varchar(50) NOT NULL DEFAULT '',
  `activation_token` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `date_activated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_featured` int(1) NOT NULL DEFAULT '1',
  `is_ready` int(1) NOT NULL DEFAULT '1',
  `is_sponsored` int(2) NOT NULL DEFAULT '1',
  `sponsored_expiration` date DEFAULT NULL,
  `lost_password_code` varchar(50) NOT NULL DEFAULT '',
  `is_commission` int(1) NOT NULL DEFAULT '1',
  `percent_commision` decimal(10,2) NOT NULL DEFAULT '0.00',
  `commision_based` varchar(50) NOT NULL DEFAULT '',
  `latitude` varchar(50) NOT NULL DEFAULT '',
  `lontitude` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `merchant_type` int(1) NOT NULL DEFAULT '1',
  `membership_expired` date DEFAULT NULL,
  `commision_type` varchar(50) NOT NULL DEFAULT '',
  `package_id` int(14) NOT NULL DEFAULT '0',
  `distance_unit` varchar(20) NOT NULL DEFAULT 'mi',
  `delivery_distance_covered` float(14,2) NOT NULL DEFAULT '0.00',
  `header_image` varchar(255) NOT NULL DEFAULT '',
  `path2` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `short_description` text,
  `close_store` int(1) NOT NULL DEFAULT '0',
  `disabled_ordering` tinyint(1) NOT NULL DEFAULT '0',
  `pause_ordering` tinyint(1) NOT NULL DEFAULT '0',
  `last_login` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_merchant_meta`
--

CREATE TABLE `st_merchant_meta` (
  `meta_id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL DEFAULT '0',
  `meta_name` varchar(255) NOT NULL DEFAULT '',
  `meta_value` text,
  `meta_value1` text,
  `meta_value2` text,
  `meta_value3` text,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_merchant_payment_method`
--

CREATE TABLE `st_merchant_payment_method` (
  `payment_method_id` int(11) NOT NULL,
  `payment_uuid` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` bigint(20) DEFAULT '0',
  `payment_code` varchar(100) NOT NULL DEFAULT '',
  `as_default` int(1) NOT NULL DEFAULT '0',
  `attr1` varchar(255) NOT NULL DEFAULT '',
  `attr2` varchar(255) NOT NULL DEFAULT '',
  `attr3` varchar(255) NOT NULL DEFAULT '',
  `attr4` varchar(255) NOT NULL DEFAULT '',
  `attr5` varchar(255) NOT NULL DEFAULT '',
  `payment_refence` text,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_merchant_type`
--

CREATE TABLE `st_merchant_type` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `type_name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `commision_type` varchar(50) NOT NULL DEFAULT 'percentage',
  `commission` float(14,2) NOT NULL DEFAULT '0.00',
  `based_on` varchar(50) NOT NULL DEFAULT 'subtotal',
  `color_hex` varchar(10) NOT NULL DEFAULT '',
  `font_color_hex` varchar(10) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT 'publish',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_merchant_type`
--

INSERT INTO `st_merchant_type` (`id`, `type_id`, `type_name`, `description`, `commision_type`, `commission`, `based_on`, `color_hex`, `font_color_hex`, `status`, `date_created`, `date_modified`, `ip_address`) VALUES
(1, 1, 'Membership', 'Membership', 'percentage', 0.00, 'subtotal', '#ffd6c4', '', 'publish', '2021-10-06 07:48:02', '2022-01-27 07:45:01', '127.0.0.1'),
(2, 2, 'Commission', 'Commission', 'percentage', 5.00, 'subtotal', '#e8989b', '', 'publish', '2021-10-06 07:48:02', '2022-01-27 07:44:56', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `st_merchant_type_translation`
--

CREATE TABLE `st_merchant_type_translation` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(100) NOT NULL DEFAULT '',
  `type_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_merchant_type_translation`
--

INSERT INTO `st_merchant_type_translation` (`id`, `type_id`, `language`, `type_name`) VALUES
(1, 2, 'ja', ''),
(2, 2, 'ar', ''),
(3, 2, 'en', 'Commission'),
(4, 1, 'ja', ''),
(5, 1, 'ar', ''),
(6, 1, 'en', 'Membership');

-- --------------------------------------------------------

--
-- Table structure for table `st_merchant_user`
--

CREATE TABLE `st_merchant_user` (
  `merchant_user_id` int(14) NOT NULL,
  `user_uuid` varchar(50) NOT NULL DEFAULT '',
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `role` int(14) NOT NULL DEFAULT '0',
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `contact_email` varchar(255) NOT NULL DEFAULT '',
  `session_token` varchar(255) NOT NULL DEFAULT '',
  `contact_number` varchar(20) NOT NULL DEFAULT '',
  `main_account` int(1) NOT NULL DEFAULT '0',
  `profile_photo` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `last_login` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_multicurrency_list`
--

CREATE TABLE `st_multicurrency_list` (
  `id` int(11) NOT NULL,
  `currency_name` varchar(50) NOT NULL DEFAULT '',
  `symbol` varchar(5) NOT NULL DEFAULT '',
  `code` varchar(50) NOT NULL DEFAULT '',
  `country_code` varchar(5) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_multicurrency_list`
--

INSERT INTO `st_multicurrency_list` (`id`, `currency_name`, `symbol`, `code`, `country_code`) VALUES
(1, 'Albanian Lek', 'Lek', 'ALL', 'AL'),
(2, 'East Caribbean Dollar', '$', 'XCD', 'LC'),
(3, 'Euro', '€', 'EUR', 'EU'),
(4, 'Barbadian Dollar', '$', 'BBD', 'BB'),
(5, 'Bhutanese Ngultrum', '', 'BTN', 'BT'),
(6, 'Brunei Dollar', '$', 'BND', 'BN'),
(7, 'Central African CFA Franc', '', 'XAF', 'CM'),
(8, 'Cuban Peso', '$', 'CUP', 'CU'),
(9, 'United States Dollar', '$', 'USD', 'US'),
(10, 'Falkland Islands Pound', '£', 'FKP', 'FK'),
(11, 'Gibraltar Pound', '£', 'GIP', 'GI'),
(12, 'Hungarian Forint', 'Ft', 'HUF', 'HU'),
(13, 'Iranian Rial', '﷼', 'IRR', 'IR'),
(14, 'Jamaican Dollar', 'J$', 'JMD', 'JM'),
(15, 'Australian Dollar', '$', 'AUD', 'AU'),
(16, 'Lao Kip', '₭', 'LAK', 'LA'),
(17, 'Libyan Dinar', '', 'LYD', 'LY'),
(18, 'Macedonian Denar', 'ден', 'MKD', 'MK'),
(19, 'West African CFA Franc', '', 'XOF', 'BJ'),
(20, 'New Zealand Dollar', '$', 'NZD', 'NZ'),
(21, 'Omani Rial', '﷼', 'OMR', 'OM'),
(22, 'Papua New Guinean Kina', '', 'PGK', 'PG'),
(23, 'Rwandan Franc', '', 'RWF', 'RW'),
(24, 'Samoan Tala', '', 'WST', 'WS'),
(25, 'Serbian Dinar', 'Дин.', 'RSD', 'RS'),
(26, 'Swedish Krona', 'kr', 'SEK', 'SE'),
(27, 'Tanzanian Shilling', 'TSh', 'TZS', 'TZ'),
(28, 'Armenian Dram', '', 'AMD', 'AM'),
(29, 'Bahamian Dollar', '$', 'BSD', 'BS'),
(30, 'Bosnia And Herzegovina Konvertibilna Marka', 'KM', 'BAM', 'BA'),
(31, 'Cape Verdean Escudo', '', 'CVE', 'CV'),
(32, 'Chinese Yuan', '¥', 'CNY', 'CN'),
(33, 'Costa Rican Colon', '₡', 'CRC', 'CR'),
(34, 'Czech Koruna', 'K�?', 'CZK', 'CZ'),
(35, 'Eritrean Nakfa', '', 'ERN', 'ER'),
(36, 'Georgian Lari', '', 'GEL', 'GE'),
(37, 'Haitian Gourde', '', 'HTG', 'HT'),
(38, 'Indian Rupee', '₹', 'INR', 'IN'),
(39, 'Jordanian Dinar', '', 'JOD', 'JO'),
(40, 'South Korean Won', '₩', 'KRW', 'KR'),
(41, 'Lebanese Lira', '£', 'LBP', 'LB'),
(42, 'Malawian Kwacha', '', 'MWK', 'MW'),
(43, 'Mauritanian Ouguiya', '', 'MRO', 'MR'),
(44, 'Mozambican Metical', '', 'MZN', 'MZ'),
(45, 'Netherlands Antillean Gulden', 'ƒ', 'ANG', 'AN'),
(46, 'Peruvian Nuevo Sol', 'S/.', 'PEN', 'PE'),
(47, 'Qatari Riyal', '﷼', 'QAR', 'QA'),
(48, 'Sao Tome And Principe Dobra', '', 'STD', 'ST'),
(49, 'Sierra Leonean Leone', '', 'SLL', 'SL'),
(50, 'Somali Shilling', 'S', 'SOS', 'SO'),
(51, 'Sudanese Pound', '', 'SDG', 'SD'),
(52, 'Syrian Pound', '£', 'SYP', 'SY'),
(53, 'Angolan Kwanza', '', 'AOA', 'AO'),
(54, 'Aruban Florin', 'ƒ', 'AWG', 'AW'),
(55, 'Bahraini Dinar', '', 'BHD', 'BH'),
(56, 'Belize Dollar', 'BZ$', 'BZD', 'BZ'),
(57, 'Botswana Pula', 'P', 'BWP', 'BW'),
(58, 'Burundi Franc', '', 'BIF', 'BI'),
(59, 'Cayman Islands Dollar', '$', 'KYD', 'KY'),
(60, 'Colombian Peso', '$', 'COP', 'CO'),
(61, 'Danish Krone', 'kr', 'DKK', 'DK'),
(62, 'Guatemalan Quetzal', 'Q', 'GTQ', ''),
(63, 'Honduran Lempira', 'L', 'HNL', 'HN'),
(64, 'Indonesian Rupiah', 'Rp', 'IDR', 'ID'),
(65, 'Israeli New Sheqel', '₪', 'ILS', 'IL'),
(66, 'Kazakhstani Tenge', 'лв', 'KZT', 'KZ'),
(67, 'Kuwaiti Dinar', '', 'KWD', 'KW'),
(68, 'Lesotho Loti', '', 'LSL', 'LS'),
(69, 'Malaysian Ringgit', 'RM', 'MYR', 'MY'),
(70, 'Mauritian Rupee', '₨', 'MUR', 'MU'),
(71, 'Mongolian Tugrik', '₮', 'MNT', 'MN'),
(72, 'Myanma Kyat', '', 'MMK', 'MM'),
(73, 'Nigerian Naira', '₦', 'NGN', 'NG'),
(74, 'Panamanian Balboa', 'B/.', 'PAB', 'PA'),
(75, 'Philippine Peso', '₱', 'PHP', 'PH'),
(76, 'Romanian Leu', 'lei', 'RON', 'RO'),
(77, 'Saudi Riyal', '﷼', 'SAR', 'SA'),
(78, 'Singapore Dollar', '$', 'SGD', 'SG'),
(79, 'South African Rand', 'R', 'ZAR', 'ZA'),
(80, 'Surinamese Dollar', '$', 'SRD', 'SR'),
(81, 'New Taiwan Dollar', 'NT$', 'TWD', 'TW'),
(82, 'Paanga', '', 'TOP', 'TO'),
(83, 'Venezuelan Bolivar', '', 'VEF', 'VE'),
(84, 'Algerian Dinar', '', 'DZD', 'DZ'),
(85, 'Argentine Peso', '$', 'ARS', 'AR'),
(86, 'Azerbaijani Manat', 'ман', 'AZN', 'AZ'),
(87, 'Belarusian Ruble', 'p.', 'BYR', 'BY'),
(88, 'Bolivian Boliviano', '$ b', 'BOB', 'BO'),
(89, 'Bulgarian Lev', 'лв', 'BGN', 'BG'),
(90, 'Canadian Dollar', '$', 'CAD', 'CA'),
(91, 'Chilean Peso', '$', 'CLP', 'CL'),
(92, 'Congolese Franc', '', 'CDF', 'CD'),
(93, 'Dominican Peso', 'RD$', 'DOP', 'DO'),
(94, 'Fijian Dollar', '$', 'FJD', 'FJ'),
(95, 'Gambian Dalasi', '', 'GMD', 'GM'),
(96, 'Guyanese Dollar', '$', 'GYD', 'GY'),
(97, 'Icelandic Króna', 'kr', 'ISK', 'IS'),
(98, 'Iraqi Dinar', '', 'IQD', 'IQ'),
(99, 'Japanese Yen', '¥', 'JPY', 'JP'),
(100, 'North Korean Won', '₩', 'KPW', 'KP'),
(101, 'Latvian Lats', 'Ls', 'LVL', ''),
(102, 'Swiss Franc', 'Fr.', 'CHF', 'CH'),
(103, 'Malagasy Ariary', '', 'MGA', ''),
(104, 'Moldovan Leu', '', 'MDL', 'MD'),
(105, 'Moroccan Dirham', '', 'MAD', 'MA'),
(106, 'Nepalese Rupee', '₨', 'NPR', 'NP'),
(107, 'Nicaraguan Cordoba', 'C$', 'NIO', 'NI'),
(108, 'Pakistani Rupee', '₨', 'PKR', 'PK'),
(109, 'Paraguayan Guarani', 'Gs', 'PYG', 'PY'),
(110, 'Saint Helena Pound', '£', 'SHP', 'SH'),
(111, 'Seychellois Rupee', '₨', 'SCR', 'SC'),
(112, 'Solomon Islands Dollar', '$', 'SBD', 'SB'),
(113, 'Sri Lankan Rupee', '₨', 'LKR', 'LK'),
(114, 'Thai Baht', '฿', 'THB', 'TH'),
(115, 'Turkish New Lira', '', 'TRY', 'TR'),
(116, 'UAE Dirham', '', 'AED', 'AE'),
(117, 'Vanuatu Vatu', '', 'VUV', 'VU'),
(118, 'Yemeni Rial', '﷼', 'YER', 'YE'),
(119, 'Afghan Afghani', '؋', 'AFN', 'AF'),
(120, 'Bangladeshi Taka', '', 'BDT', 'BD'),
(121, 'Brazilian Real', 'R$', 'BRL', 'BR'),
(122, 'Cambodian Riel', '៛', 'KHR', 'KH'),
(123, 'Comorian Franc', '', 'KMF', 'KM'),
(124, 'Croatian Kuna', 'kn', 'HRK', 'HR'),
(125, 'Djiboutian Franc', '', 'DJF', 'DJ'),
(126, 'Egyptian Pound', '£', 'EGP', 'EG'),
(127, 'Ethiopian Birr', '', 'ETB', 'ET'),
(128, 'CFP Franc', '', 'XPF', 'WF'),
(129, 'Ghanaian Cedi', '', 'GHS', 'GH'),
(130, 'Guinean Franc', '', 'GNF', 'GN'),
(131, 'Hong Kong Dollar', '$', 'HKD', 'HK'),
(132, 'Special Drawing Rights', '', 'XDR', ''),
(133, 'Kenyan Shilling', 'KSh', 'KES', 'KE'),
(134, 'Kyrgyzstani Som', 'лв', 'KGS', 'KG'),
(135, 'Liberian Dollar', '$', 'LRD', 'LR'),
(136, 'Macanese Pataca', '', 'MOP', ''),
(137, 'Maldivian Rufiyaa', '', 'MVR', 'MV'),
(138, 'Mexican Peso', '$', 'MXN', 'MX'),
(139, 'Namibian Dollar', '$', 'NAD', 'NA'),
(140, 'Norwegian Krone', 'kr', 'NOK', 'NO'),
(141, 'Polish Zloty', 'zł', 'PLN', 'PL'),
(142, 'Russian Ruble', 'руб', 'RUB', 'RU'),
(143, 'Swazi Lilangeni', '', 'SZL', 'SZ'),
(144, 'Tajikistani Somoni', '', 'TJS', 'TJ'),
(145, 'Trinidad and Tobago Dollar', 'TT$', 'TTD', 'TT'),
(146, 'Ugandan Shilling', 'USh', 'UGX', 'UG'),
(147, 'Uruguayan Peso', '$ U', 'UYU', 'UY'),
(148, 'Vietnamese Dong', '₫', 'VND', 'VN'),
(149, 'Tunisian Dinar', '', 'TND', 'TN'),
(150, 'Ukrainian Hryvnia', '₴', 'UAH', 'UA'),
(151, 'Uzbekistani Som', 'лв', 'UZS', 'UZ'),
(152, 'Turkmenistan Manat', '', 'TMT', 'TM'),
(153, 'British Pound', '£', 'GBP', 'GB'),
(154, 'Zambian Kwacha', '', 'ZMW', 'ZM'),
(155, 'Bitcoin', 'BTC', 'BTC', 'XBT'),
(156, 'New Belarusian Ruble', 'p.', 'BYN', 'BY'),
(157, 'Bermudan Dollar', '', 'BMD', 'BM'),
(158, 'Guernsey Pound', '', 'GGP', 'GG'),
(159, 'Chilean Unit Of Account', '', 'CLF', 'CL'),
(160, 'Cuban Convertible Peso', '', 'CUC', 'CU'),
(161, 'Manx pound', '', 'IMP', 'IM'),
(162, 'Jersey Pound', '', 'JEP', 'JE'),
(163, 'Salvadoran Colón', '', 'SVC', 'SV'),
(164, 'Old Zambian Kwacha', '', 'ZMK', 'ZM'),
(165, 'Silver (troy ounce)', '', 'XAG', 'XA'),
(166, 'Zimbabwean Dollar', '', 'ZWL', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `st_notifications`
--

CREATE TABLE `st_notifications` (
  `notification_uuid` varchar(100) NOT NULL,
  `notication_channel` varchar(50) NOT NULL DEFAULT 'admin',
  `notification_event` varchar(100) NOT NULL DEFAULT '',
  `notification_type` varchar(100) NOT NULL DEFAULT '',
  `message` text,
  `message_parameters` text,
  `image_type` varchar(50) NOT NULL DEFAULT 'icon',
  `image` varchar(100) NOT NULL DEFAULT '',
  `image_path` varchar(100) NOT NULL DEFAULT '',
  `date_created` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_offers`
--

CREATE TABLE `st_offers` (
  `offers_id` int(14) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `offer_percentage` float(14,4) NOT NULL DEFAULT '0.0000',
  `offer_price` float(14,4) NOT NULL DEFAULT '0.0000',
  `valid_from` date DEFAULT NULL,
  `valid_to` date DEFAULT NULL,
  `applicable_to` varchar(100) NOT NULL DEFAULT 'all',
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_opening_hours`
--

CREATE TABLE `st_opening_hours` (
  `id` int(14) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `day` varchar(20) NOT NULL DEFAULT '',
  `day_of_week` int(1) NOT NULL DEFAULT '0',
  `status` varchar(100) NOT NULL DEFAULT 'open',
  `start_time` varchar(14) NOT NULL DEFAULT '',
  `end_time` varchar(14) NOT NULL DEFAULT '',
  `start_time_pm` varchar(14) NOT NULL DEFAULT '',
  `end_time_pm` varchar(14) NOT NULL DEFAULT '',
  `custom_text` varchar(255) NOT NULL DEFAULT '',
  `last_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_opening_hours`
--

INSERT INTO `st_opening_hours` (`id`, `merchant_id`, `day`, `day_of_week`, `status`, `start_time`, `end_time`, `start_time_pm`, `end_time_pm`, `custom_text`, `last_update`) VALUES
(1, 0, 'monday', 1, 'open', '1:00', '23:55', '', '', '', '2022-01-29 15:55:16'),
(2, 0, 'tuesday', 2, 'open', '1:00', '23:55', '', '', '', '2022-01-29 15:55:32'),
(3, 0, 'wednesday', 3, 'open', '1:00', '23:55', '', '', '', '2022-01-29 15:55:47'),
(4, 0, 'thursday', 4, 'open', '1:00', '23:55', '', '', '', '2022-01-29 15:56:04'),
(5, 0, 'friday', 5, 'open', '1:00', '23:55', '', '', '', '2022-01-29 15:56:16'),
(6, 0, 'saturday', 6, 'open', '1:00', '23:55', '', '', '', '2022-01-29 15:56:34'),
(7, 0, 'sunday', 7, 'open', '1:00', '23:55', '', '', '', '2022-01-29 15:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `st_option`
--

CREATE TABLE `st_option` (
  `id` int(14) UNSIGNED NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `option_name` varchar(255) NOT NULL DEFAULT '',
  `option_value` text,
  `last_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_option`
--

INSERT INTO `st_option` (`id`, `merchant_id`, `option_name`, `option_value`, `last_update`) VALUES
(57, 0, 'website_timezone_new', 'Asia/Manila', '2022-01-27 07:44:21'),
(58, 0, 'website_date_format_new', 'EEE, MMMM d, y', '2022-01-27 07:44:21'),
(59, 0, 'website_time_format_new', 'h:mm a', '2022-01-27 07:44:21'),
(60, 0, 'website_time_picker_interval', '15', '2022-01-27 07:44:21'),
(61, 0, 'disabled_website_ordering', NULL, '2022-01-27 07:44:32'),
(62, 0, 'website_hide_foodprice', NULL, '2022-01-27 07:44:32'),
(63, 0, 'website_disbaled_auto_cart', NULL, '2022-01-27 07:44:32'),
(64, 0, 'website_disabled_cart_validation', NULL, '2022-01-27 07:44:32'),
(65, 0, 'enabled_merchant_check_closing_time', NULL, '2022-01-27 07:44:32'),
(66, 0, 'disabled_order_confirm_page', NULL, '2022-01-27 07:44:32'),
(67, 0, 'restrict_order_by_status', '', '2022-01-27 07:44:32'),
(68, 0, 'enabled_map_selection_delivery', NULL, '2022-01-27 07:44:32'),
(69, 0, 'admin_service_fee', NULL, '2022-01-27 07:44:32'),
(70, 0, 'admin_service_fee_applytax', NULL, '2022-01-27 07:44:32'),
(71, 0, 'cancel_order_enabled', '1', '2022-01-27 07:44:32'),
(72, 0, 'cancel_order_days_applied', NULL, '2022-01-27 07:44:32'),
(73, 0, 'cancel_order_hours', NULL, '2022-01-27 07:44:32'),
(74, 0, 'cancel_order_status_accepted', '', '2022-01-27 07:44:32'),
(75, 0, 'website_review_approved_status', NULL, '2022-01-27 07:44:32'),
(76, 0, 'enabled_website_ordering', '1', '2022-01-27 07:44:32'),
(90, 0, 'merchant_enabled_registration', '1', '2022-01-27 07:45:47'),
(91, 0, 'merchant_default_country', NULL, '2022-01-27 07:45:47'),
(92, 0, 'merchant_specific_country', '[\"PH\"]', '2022-01-27 07:45:47'),
(93, 0, 'pre_configure_size', 'small,medium,large', '2022-01-27 07:45:47'),
(94, 0, 'merchant_enabled_registration_capcha', '0', '2022-01-27 07:45:47'),
(95, 0, 'registration_program', '[\"2\",\"1\"]', '2022-01-27 07:45:47'),
(96, 0, 'registration_confirm_account_tpl', '25', '2022-01-27 07:45:47'),
(97, 0, 'registration_welcome_tpl', NULL, '2022-01-27 07:45:47'),
(98, 0, 'registration_terms_condition', 'By clicking \"Submit,\" you agree to <a href=\"\" class=\"text-green\">Karenderia General Terms and Conditions</a>\r\n     and acknowledge you have read the <a href=\"\" class=\"text-green\">Privacy Policy</a>.', '2022-01-27 07:45:47'),
(99, 0, 'merchant_registration_new_tpl', '26', '2022-01-27 07:45:47'),
(100, 0, 'merchant_registration_welcome_tpl', '24', '2022-01-27 07:45:47'),
(101, 0, 'merchant_plan_expired_tpl', '27', '2022-01-27 07:45:47'),
(102, 0, 'merchant_plan_near_expired_tpl', '28', '2022-01-27 07:45:47'),
(103, 0, 'website_title', 'Karenderia', '2022-01-27 16:09:32'),
(104, 0, 'home_search_unit_type', 'mi', '2022-01-27 16:09:57'),
(105, 0, 'map_provider', 'google.maps', '2022-01-28 07:38:48'),
(106, 0, 'google_geo_api_key', 'XXXX', '2022-01-28 07:38:48'),
(107, 0, 'google_maps_api_key', 'XXXX', '2022-01-28 07:38:48'),
(108, 0, 'mapbox_access_token', 'XXXX', '2022-01-28 07:38:48'),
(109, 0, 'signup_enabled_verification', '0', '2022-01-28 07:49:14'),
(110, 0, 'signup_verification_type', NULL, '2022-01-28 07:49:14'),
(111, 0, 'blocked_email_add', '', '2022-01-28 07:49:14'),
(112, 0, 'blocked_mobile', '', '2022-01-28 07:49:14'),
(113, 0, 'signup_type', 'mobile_phone', '2022-01-28 07:49:14'),
(114, 0, 'signup_enabled_terms', '0', '2022-01-28 07:49:14'),
(115, 0, 'signup_terms', 'By clicking \"Submit,\" you agree to <a href=\"\" class=\"text-green\">Karenderia General Terms and Conditions</a>\r\n	     and acknowledge you have read the <a href=\"\" class=\"text-green\">Privacy Policy</a>.', '2022-01-28 07:49:14'),
(116, 0, 'signup_enabled_capcha', '0', '2022-01-28 07:49:14'),
(117, 0, 'signup_welcome_tpl', '12', '2022-01-28 07:49:14'),
(118, 0, 'signup_verification_tpl', '13', '2022-01-28 07:49:14'),
(119, 0, 'signup_resetpass_tpl', '14', '2022-01-28 07:49:14'),
(120, 0, 'signup_resend_counter', '', '2022-01-28 07:49:14'),
(121, 0, 'signupnew_tpl', '19', '2022-01-28 07:49:14');

-- --------------------------------------------------------

--
-- Table structure for table `st_ordernew`
--

CREATE TABLE `st_ordernew` (
  `order_id` int(11) NOT NULL,
  `order_uuid` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `client_id` int(14) NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `payment_status` varchar(255) NOT NULL DEFAULT 'unpaid',
  `service_code` varchar(255) NOT NULL DEFAULT '',
  `payment_code` varchar(255) NOT NULL DEFAULT '',
  `total_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `points` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sub_total_less_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `service_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `delivery_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `packaging_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax_type` varchar(50) NOT NULL DEFAULT '',
  `tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `courier_tip` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `promo_code` varchar(100) NOT NULL DEFAULT '',
  `promo_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `offer_discount` varchar(100) NOT NULL DEFAULT '',
  `offer_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `whento_deliver` varchar(100) NOT NULL DEFAULT '',
  `delivery_date` date DEFAULT NULL,
  `delivery_time` varchar(50) NOT NULL DEFAULT '',
  `delivery_time_end` varchar(50) NOT NULL DEFAULT '',
  `commission_type` varchar(100) NOT NULL DEFAULT '',
  `commission_value` decimal(10,2) NOT NULL DEFAULT '0.00',
  `commission_based` varchar(100) NOT NULL DEFAULT '',
  `commission` decimal(10,2) NOT NULL DEFAULT '0.00',
  `merchant_earning` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_original` decimal(10,2) NOT NULL DEFAULT '0.00',
  `commission_original` decimal(10,2) DEFAULT '0.00',
  `merchant_earning_original` decimal(10,2) NOT NULL DEFAULT '0.00',
  `adjustment_commission` decimal(10,2) DEFAULT '0.00',
  `adjustment_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `use_currency_code` varchar(5) NOT NULL DEFAULT '',
  `base_currency_code` varchar(5) NOT NULL DEFAULT '',
  `exchange_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `formatted_address` varchar(255) NOT NULL DEFAULT '',
  `driver_id` bigint(20) NOT NULL DEFAULT '0',
  `date_cancelled` timestamp NULL DEFAULT NULL,
  `is_view` int(1) NOT NULL DEFAULT '0',
  `is_critical` int(1) NOT NULL DEFAULT '0',
  `earning_approve` int(1) NOT NULL DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_ordernew_additional_charge`
--

CREATE TABLE `st_ordernew_additional_charge` (
  `id` int(14) NOT NULL,
  `order_id` int(14) NOT NULL DEFAULT '0',
  `item_row` varchar(100) NOT NULL DEFAULT '',
  `charge_name` varchar(200) NOT NULL DEFAULT '',
  `additional_charge` float(14,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_ordernew_addons`
--

CREATE TABLE `st_ordernew_addons` (
  `id` int(11) NOT NULL,
  `order_id` int(14) NOT NULL DEFAULT '0',
  `item_row` varchar(100) NOT NULL DEFAULT '',
  `subcat_id` int(14) NOT NULL DEFAULT '0',
  `sub_item_id` int(14) NOT NULL DEFAULT '0',
  `qty` int(14) NOT NULL DEFAULT '0',
  `price` float(14,4) NOT NULL DEFAULT '0.0000',
  `addons_total` float(14,4) NOT NULL DEFAULT '0.0000',
  `multi_option` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_ordernew_attributes`
--

CREATE TABLE `st_ordernew_attributes` (
  `id` int(11) NOT NULL,
  `order_id` int(14) NOT NULL DEFAULT '0',
  `item_row` varchar(100) NOT NULL DEFAULT '',
  `meta_name` varchar(255) NOT NULL DEFAULT '',
  `meta_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_ordernew_history`
--

CREATE TABLE `st_ordernew_history` (
  `id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `order_id` int(14) NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT '',
  `remarks` text,
  `ramarks_trans` text,
  `change_by` varchar(100) NOT NULL DEFAULT '',
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_ordernew_item`
--

CREATE TABLE `st_ordernew_item` (
  `id` int(11) NOT NULL,
  `order_id` int(14) NOT NULL DEFAULT '0',
  `item_row` varchar(100) NOT NULL DEFAULT '',
  `cat_id` int(14) NOT NULL DEFAULT '0',
  `item_id` int(14) NOT NULL DEFAULT '0',
  `item_token` varchar(255) NOT NULL DEFAULT '',
  `item_size_id` int(14) NOT NULL DEFAULT '0',
  `qty` int(14) NOT NULL DEFAULT '0',
  `special_instructions` varchar(255) NOT NULL DEFAULT '',
  `if_sold_out` varchar(50) NOT NULL DEFAULT '',
  `price` float(14,5) NOT NULL DEFAULT '0.00000',
  `discount` float(14,5) NOT NULL DEFAULT '0.00000',
  `discount_type` varchar(100) NOT NULL DEFAULT '',
  `item_changes` varchar(100) NOT NULL DEFAULT '1',
  `item_changes_meta1` varchar(100) NOT NULL DEFAULT '',
  `tax_use` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_ordernew_meta`
--

CREATE TABLE `st_ordernew_meta` (
  `meta_id` int(11) NOT NULL,
  `order_id` int(14) NOT NULL DEFAULT '0',
  `meta_name` varchar(255) NOT NULL DEFAULT '',
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_ordernew_summary_transaction`
--

CREATE TABLE `st_ordernew_summary_transaction` (
  `transaction_id` bigint(20) NOT NULL,
  `transaction_uuid` varchar(50) NOT NULL DEFAULT '',
  `order_id` bigint(20) DEFAULT '0',
  `transaction_date` timestamp NULL DEFAULT NULL,
  `transaction_type` varchar(50) NOT NULL DEFAULT 'debit',
  `transaction_description` varchar(255) NOT NULL DEFAULT '',
  `transaction_description_parameters` varchar(255) NOT NULL DEFAULT '',
  `transaction_amount` float(14,4) NOT NULL DEFAULT '0.0000',
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_ordernew_transaction`
--

CREATE TABLE `st_ordernew_transaction` (
  `transaction_id` int(11) NOT NULL,
  `transaction_uuid` varchar(50) NOT NULL DEFAULT '',
  `payment_uuid` varchar(50) DEFAULT '',
  `order_id` int(14) NOT NULL DEFAULT '0',
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `client_id` int(14) NOT NULL DEFAULT '0',
  `payment_code` varchar(100) NOT NULL DEFAULT '',
  `transaction_name` varchar(20) NOT NULL DEFAULT 'payment',
  `transaction_type` varchar(100) NOT NULL DEFAULT 'credit',
  `transaction_description` varchar(255) NOT NULL DEFAULT 'Payment',
  `trans_amount` float(14,4) NOT NULL DEFAULT '0.0000',
  `currency_code` varchar(5) NOT NULL DEFAULT '',
  `payment_reference` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT 'unpaid',
  `reason` text,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_ordernew_trans_meta`
--

CREATE TABLE `st_ordernew_trans_meta` (
  `meta_id` int(11) NOT NULL,
  `transaction_id` int(14) NOT NULL DEFAULT '0',
  `order_id` int(14) NOT NULL DEFAULT '0',
  `meta_name` varchar(255) NOT NULL DEFAULT '',
  `meta_value` longtext,
  `meta_binary` binary(255) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_order_settings_buttons`
--

CREATE TABLE `st_order_settings_buttons` (
  `id` int(14) NOT NULL,
  `uuid` varchar(100) DEFAULT NULL,
  `group_name` varchar(100) NOT NULL DEFAULT '',
  `button_name` varchar(100) NOT NULL DEFAULT '',
  `class_name` varchar(100) DEFAULT 'btn-green',
  `stats_id` int(14) NOT NULL DEFAULT '0',
  `do_actions` varchar(100) NOT NULL DEFAULT '',
  `order_type` varchar(100) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_order_settings_buttons`
--

INSERT INTO `st_order_settings_buttons` (`id`, `uuid`, `group_name`, `button_name`, `class_name`, `stats_id`, `do_actions`, `order_type`, `date_created`, `date_modified`, `ip_address`) VALUES
(1, 'b6dbed53-7f02-11ec-9bf7-9c5c8e164c2c', 'new_order', 'Accepted', 'btn-green', 24, '', '', '2022-01-27 07:50:17', '2022-01-29 15:51:14', '127.0.0.1'),
(2, 'bbdc9fee-7f02-11ec-9bf7-9c5c8e164c2c', 'new_order', 'Reject', 'btn-black', 16, 'reject_form', '', '2022-01-27 07:50:26', '2022-01-27 16:03:07', '127.0.0.1'),
(3, 'c6861876-7f02-11ec-9bf7-9c5c8e164c2c', 'order_processing', 'Ready for pickup', 'btn-green', 18, '', '', '2022-01-27 07:50:43', '2022-01-27 16:03:14', '127.0.0.1'),
(4, 'cea57e92-7f02-11ec-9bf7-9c5c8e164c2c', 'order_ready', 'Delivery on its way', 'btn-green', 21, '', 'delivery', '2022-01-27 07:50:57', '2022-01-27 16:03:19', '127.0.0.1'),
(5, 'd3c615ba-7f02-11ec-9bf7-9c5c8e164c2c', 'order_ready', 'Delivered', 'btn-yellow', 19, '', 'delivery', '2022-01-27 07:51:06', '2022-01-27 16:03:30', '127.0.0.1'),
(6, 'd83d3544-7f02-11ec-9bf7-9c5c8e164c2c', 'order_ready', 'Delivery Failed', 'btn-black', 23, '', 'delivery', '2022-01-27 07:51:13', '2022-01-27 16:03:35', '127.0.0.1'),
(7, 'dd882377-7f02-11ec-9bf7-9c5c8e164c2c', 'order_ready', 'Complete', 'btn-green', 26, '', 'pickup', '2022-01-27 07:51:22', '2022-01-27 16:03:49', '127.0.0.1'),
(8, 'ead61c30-7f02-11ec-9bf7-9c5c8e164c2c', 'order_ready', 'Order failed', 'btn-black', 16, '', 'pickup', '2022-01-27 07:51:44', '2022-01-27 16:03:58', '127.0.0.1'),
(9, '17b16356-7f03-11ec-9bf7-9c5c8e164c2c', 'order_ready', 'Complete', 'btn-green', 26, '', 'dinein', '2022-01-27 07:53:00', '2022-01-27 16:04:03', '127.0.0.1'),
(10, '2156afbe-7f03-11ec-9bf7-9c5c8e164c2c', 'order_ready', 'Order failed', 'btn-black', 16, '', 'dinein', '2022-01-27 07:53:16', '2022-01-27 16:04:13', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `st_order_settings_tabs`
--

CREATE TABLE `st_order_settings_tabs` (
  `id` int(14) NOT NULL,
  `group_name` varchar(100) NOT NULL DEFAULT 'new_order',
  `stats_id` int(14) NOT NULL DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_order_settings_tabs`
--

INSERT INTO `st_order_settings_tabs` (`id`, `group_name`, `stats_id`, `date_modified`, `ip_address`) VALUES
(2, 'new_order', 13, '2022-01-27 07:49:07', '127.0.0.1'),
(3, 'order_processing', 24, '2022-01-27 07:49:11', '127.0.0.1'),
(4, 'order_ready', 21, '2022-01-27 07:49:22', '127.0.0.1'),
(5, 'order_ready', 18, '2022-01-27 07:49:22', '127.0.0.1'),
(6, 'completed_today', 26, '2022-01-27 07:49:38', '127.0.0.1'),
(7, 'completed_today', 19, '2022-01-27 07:49:38', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `st_order_status`
--

CREATE TABLE `st_order_status` (
  `stats_id` int(14) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `description` varchar(200) NOT NULL DEFAULT '',
  `font_color_hex` varchar(10) NOT NULL DEFAULT '',
  `background_color_hex` varchar(10) NOT NULL DEFAULT '',
  `date_created` date DEFAULT NULL,
  `date_modified` date DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_order_status`
--

INSERT INTO `st_order_status` (`stats_id`, `merchant_id`, `description`, `font_color_hex`, `background_color_hex`, `date_created`, `date_modified`, `ip_address`) VALUES
(13, 0, 'new', 'black', '#d4ecdc', '2021-10-11', '2022-01-26', '127.0.0.1'),
(16, 0, 'rejected', 'white', '#ea9895', '2021-10-31', '2022-01-26', '127.0.0.1'),
(18, 0, 'ready for pickup', 'black', '#efe5ee', '2021-11-01', '2022-01-26', '127.0.0.1'),
(19, 0, 'delivered', 'white', '#3ecf8e', '2021-11-01', '2022-01-26', '127.0.0.1'),
(20, 0, 'cancelled', 'white', '#f44336', '2021-11-01', '2022-01-26', '127.0.0.1'),
(21, 0, 'delivery on its way', 'black', '#fbd7af', '2021-11-01', '2022-01-26', '127.0.0.1'),
(22, 0, 'delayed', '#5b5b5b', '#cfe2f3', '2021-11-01', '2022-01-26', '127.0.0.1'),
(23, 0, 'delivery failed', 'white', '#d34f45', '2021-11-01', '2022-01-26', '127.0.0.1'),
(24, 0, 'accepted', 'black', '#fedc79', '2021-11-01', '2022-01-26', '127.0.0.1'),
(25, 0, 'delayed', 'white', '#b6d7a8', '2021-11-03', '2022-01-26', '127.0.0.1'),
(26, 0, 'complete', '#f3f6f4', '#8fce00', '2021-12-16', '2022-01-26', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `st_order_status_actions`
--

CREATE TABLE `st_order_status_actions` (
  `action_id` bigint(20) NOT NULL,
  `stats_id` bigint(20) NOT NULL DEFAULT '0',
  `action_type` varchar(50) NOT NULL DEFAULT '',
  `action_value` varchar(100) NOT NULL DEFAULT '',
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_order_status_actions`
--

INSERT INTO `st_order_status_actions` (`action_id`, `stats_id`, `action_type`, `action_value`, `date_created`, `date_modified`, `ip_address`) VALUES
(1, 13, 'notification_to_customer', '4', '2022-01-27 00:07:12', NULL, '127.0.0.1'),
(2, 13, 'notification_to_merchant', '5', '2022-01-27 00:07:22', NULL, '127.0.0.1'),
(3, 13, 'notification_to_admin', '5', '2022-01-27 00:07:31', NULL, '127.0.0.1'),
(4, 16, 'notification_to_customer', '6', '2022-01-27 00:08:48', NULL, '127.0.0.1'),
(5, 19, 'notification_to_customer', '22', '2022-01-27 00:09:14', NULL, '127.0.0.1'),
(6, 20, 'notification_to_customer', '7', '2022-01-27 00:09:37', NULL, '127.0.0.1'),
(7, 20, 'notification_to_merchant', '20', '2022-01-27 00:09:47', NULL, '127.0.0.1'),
(8, 20, 'notification_to_admin', '20', '2022-01-27 00:09:55', NULL, '127.0.0.1'),
(9, 21, 'notification_to_customer', '21', '2022-01-27 00:10:22', NULL, '127.0.0.1'),
(10, 23, 'notification_to_customer', '23', '2022-01-27 00:10:51', NULL, '127.0.0.1'),
(11, 24, 'notification_to_customer', '9', '2022-01-27 00:11:09', NULL, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `st_order_status_translation`
--

CREATE TABLE `st_order_status_translation` (
  `id` int(11) NOT NULL,
  `stats_id` int(1) NOT NULL DEFAULT '0',
  `language` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_order_status_translation`
--

INSERT INTO `st_order_status_translation` (`id`, `stats_id`, `language`, `description`) VALUES
(1, 13, 'ja', ''),
(2, 13, 'ar', ''),
(3, 13, 'en', 'new'),
(4, 26, 'ja', ''),
(5, 26, 'ar', ''),
(6, 26, 'en', 'complete'),
(7, 25, 'ja', ''),
(8, 25, 'ar', ''),
(9, 25, 'en', 'delayed'),
(10, 24, 'ja', ''),
(11, 24, 'ar', ''),
(12, 24, 'en', 'accepted'),
(13, 23, 'ja', ''),
(14, 23, 'ar', ''),
(15, 23, 'en', 'delivery failed'),
(16, 22, 'ja', ''),
(17, 22, 'ar', ''),
(18, 22, 'en', 'delayed'),
(19, 21, 'ja', ''),
(20, 21, 'ar', ''),
(21, 21, 'en', 'delivery on its way'),
(22, 20, 'ja', ''),
(23, 20, 'ar', ''),
(24, 20, 'en', 'cancelled'),
(25, 19, 'ja', ''),
(26, 19, 'ar', ''),
(27, 19, 'en', 'delivered'),
(28, 18, 'ja', ''),
(29, 18, 'ar', ''),
(30, 18, 'en', 'ready for pickup'),
(31, 16, 'ja', ''),
(32, 16, 'ar', ''),
(33, 16, 'en', 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `st_order_time_management`
--

CREATE TABLE `st_order_time_management` (
  `id` int(11) NOT NULL,
  `group_id` int(14) NOT NULL DEFAULT '0',
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `transaction_type` varchar(100) NOT NULL DEFAULT '',
  `days` varchar(200) NOT NULL DEFAULT '',
  `start_time` varchar(5) NOT NULL DEFAULT '',
  `end_time` varchar(5) NOT NULL DEFAULT '',
  `number_order_allowed` int(14) NOT NULL DEFAULT '0',
  `order_status` text,
  `status` varchar(255) NOT NULL DEFAULT 'publish'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_package_details`
--

CREATE TABLE `st_package_details` (
  `id` int(14) NOT NULL,
  `package_id` int(14) NOT NULL DEFAULT '0',
  `description` text,
  `date_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_pages`
--

CREATE TABLE `st_pages` (
  `page_id` int(11) NOT NULL,
  `page_type` varchar(255) NOT NULL DEFAULT 'page',
  `slug` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `long_content` text,
  `short_content` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_description` text,
  `meta_keywords` text,
  `meta_image` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT 'publish',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_pages`
--

INSERT INTO `st_pages` (`page_id`, `page_type`, `slug`, `title`, `long_content`, `short_content`, `meta_title`, `meta_description`, `meta_keywords`, `meta_image`, `path`, `status`, `date_created`, `date_modified`, `ip_address`) VALUES
(1, 'page', 'terms-and-conditions', 'Terms and conditions', '<div>\r\n<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id \r\nsapien massa. Sed porta interdum nulla sed accumsan. Proin lacinia vel \r\nnulla eget porttitor. In varius vehicula facilisis. Maecenas non \r\nvehicula massa. Maecenas vel eros nec ante rutrum fringilla vel sit amet\r\n ipsum. Sed ut tellus nisl. Aenean vehicula, diam nec sollicitudin \r\nporttitor, purus augue mattis risus, porta elementum augue nibh eget \r\nsapien. Fusce a efficitur ipsum. In urna mi, ullamcorper ut ultrices sit\r\n amet, faucibus et risus. Maecenas vestibulum molestie ex.\r\n</p>\r\n<p>\r\nMaecenas ut lectus eget ante faucibus tristique. In sodales turpis orci,\r\n quis commodo lectus feugiat quis. Aliquam varius metus diam, id luctus \r\neros sagittis vel. Nulla facilisi. Suspendisse mollis eros lacus, at \r\nmaximus enim imperdiet quis. Nulla eget diam ac diam condimentum \r\nelementum. Ut at ipsum vitae ipsum ullamcorper vestibulum. Aliquam \r\neuismod enim vitae blandit tristique.\r\n</p>\r\n<p>\r\nVestibulum malesuada, diam sit amet tristique finibus, sem lacus \r\nelementum diam, et semper ipsum odio eu quam. Sed hendrerit tincidunt \r\neuismod. Aliquam finibus quis elit at sollicitudin. In at magna euismod,\r\n tincidunt lectus sed, posuere dui. Curabitur congue ante non ligula \r\nsagittis, non blandit metus consectetur. Nunc nisi purus, ultrices in \r\nodio quis, mattis condimentum quam. Nullam vestibulum ex et erat \r\nvolutpat hendrerit. Vestibulum luctus quam vestibulum mollis euismod. \r\nEtiam efficitur mauris vel mi pretium iaculis. Donec sed erat tincidunt,\r\n elementum sem in, consectetur ipsum. Nulla pellentesque porta sapien, \r\neu venenatis justo vulputate vitae. Nunc et finibus ex, non finibus \r\nmassa. Nulla non turpis rutrum, molestie dui id, pharetra massa.\r\n</p>\r\n<p>\r\nDuis a arcu quis quam sodales dapibus. Curabitur consectetur sit amet \r\ndiam sed consectetur. Sed facilisis ultricies odio, nec sagittis enim \r\nlacinia non. Maecenas non congue est, sed condimentum mi. Cras a \r\nporttitor libero. Praesent massa risus, sollicitudin eget accumsan \r\nelementum, ornare nec felis. Vestibulum porttitor imperdiet rhoncus. \r\nMauris consequat fermentum metus feugiat facilisis. Sed eleifend mollis \r\nmattis. Nunc imperdiet lectus non quam ullamcorper, at ultrices ante \r\ncongue. Etiam aliquam arcu felis. Class aptent taciti sociosqu ad litora\r\n torquent per conubia nostra, per inceptos himenaeos. Nulla consequat, \r\nturpis sit amet pharetra elementum, quam lacus placerat sapien, at \r\nsagittis nunc erat in sem. Nulla sed aliquet neque, a tempor leo. \r\nAliquam erat volutpat. Sed tempor libero neque, condimentum feugiat \r\ndolor lobortis in.\r\n</p>\r\n<p>\r\nFusce convallis quis augue vitae scelerisque. Sed auctor lectus a odio \r\neleifend, eget auctor enim vestibulum. Integer neque urna, eleifend in \r\nporta a, vehicula et risus. Vestibulum vehicula placerat ante sed \r\nlaoreet. Integer varius felis a magna tempor, a efficitur ex fringilla. \r\nDonec in diam a diam placerat luctus et nec nisi. Sed efficitur lacus \r\nfelis, vitae rutrum nibh eleifend in.\r\n</p></div>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id sapien massa. Sed porta interdum nulla sed accumsan. Proin lacinia vel nulla eget porttitor. In varius vehicula facilisis.', '', '', '', '', '', 'publish', '2022-01-27 08:03:58', '2022-01-27 08:03:58', '127.0.0.1'),
(2, 'page', 'privacy-policy', 'Privacy policy', '<div>\r\n<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id \r\nsapien massa. Sed porta interdum nulla sed accumsan. Proin lacinia vel \r\nnulla eget porttitor. In varius vehicula facilisis. Maecenas non \r\nvehicula massa. Maecenas vel eros nec ante rutrum fringilla vel sit amet\r\n ipsum. Sed ut tellus nisl. Aenean vehicula, diam nec sollicitudin \r\nporttitor, purus augue mattis risus, porta elementum augue nibh eget \r\nsapien. Fusce a efficitur ipsum. In urna mi, ullamcorper ut ultrices sit\r\n amet, faucibus et risus. Maecenas vestibulum molestie ex.\r\n</p>\r\n<p>\r\nMaecenas ut lectus eget ante faucibus tristique. In sodales turpis orci,\r\n quis commodo lectus feugiat quis. Aliquam varius metus diam, id luctus \r\neros sagittis vel. Nulla facilisi. Suspendisse mollis eros lacus, at \r\nmaximus enim imperdiet quis. Nulla eget diam ac diam condimentum \r\nelementum. Ut at ipsum vitae ipsum ullamcorper vestibulum. Aliquam \r\neuismod enim vitae blandit tristique.\r\n</p>\r\n<p>\r\nVestibulum malesuada, diam sit amet tristique finibus, sem lacus \r\nelementum diam, et semper ipsum odio eu quam. Sed hendrerit tincidunt \r\neuismod. Aliquam finibus quis elit at sollicitudin. In at magna euismod,\r\n tincidunt lectus sed, posuere dui. Curabitur congue ante non ligula \r\nsagittis, non blandit metus consectetur. Nunc nisi purus, ultrices in \r\nodio quis, mattis condimentum quam. Nullam vestibulum ex et erat \r\nvolutpat hendrerit. Vestibulum luctus quam vestibulum mollis euismod. \r\nEtiam efficitur mauris vel mi pretium iaculis. Donec sed erat tincidunt,\r\n elementum sem in, consectetur ipsum. Nulla pellentesque porta sapien, \r\neu venenatis justo vulputate vitae. Nunc et finibus ex, non finibus \r\nmassa. Nulla non turpis rutrum, molestie dui id, pharetra massa.\r\n</p>\r\n<p>\r\nDuis a arcu quis quam sodales dapibus. Curabitur consectetur sit amet \r\ndiam sed consectetur. Sed facilisis ultricies odio, nec sagittis enim \r\nlacinia non. Maecenas non congue est, sed condimentum mi. Cras a \r\nporttitor libero. Praesent massa risus, sollicitudin eget accumsan \r\nelementum, ornare nec felis. Vestibulum porttitor imperdiet rhoncus. \r\nMauris consequat fermentum metus feugiat facilisis. Sed eleifend mollis \r\nmattis. Nunc imperdiet lectus non quam ullamcorper, at ultrices ante \r\ncongue. Etiam aliquam arcu felis. Class aptent taciti sociosqu ad litora\r\n torquent per conubia nostra, per inceptos himenaeos. Nulla consequat, \r\nturpis sit amet pharetra elementum, quam lacus placerat sapien, at \r\nsagittis nunc erat in sem. Nulla sed aliquet neque, a tempor leo. \r\nAliquam erat volutpat. Sed tempor libero neque, condimentum feugiat \r\ndolor lobortis in.\r\n</p>\r\n<p>\r\nFusce convallis quis augue vitae scelerisque. Sed auctor lectus a odio \r\neleifend, eget auctor enim vestibulum. Integer neque urna, eleifend in \r\nporta a, vehicula et risus. Vestibulum vehicula placerat ante sed \r\nlaoreet. Integer varius felis a magna tempor, a efficitur ex fringilla. \r\nDonec in diam a diam placerat luctus et nec nisi. Sed efficitur lacus \r\nfelis, vitae rutrum nibh eleifend in.\r\n</p></div>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id sapien massa. Sed porta interdum nulla sed accumsan. Proin lacinia vel nulla eget porttitor. In varius vehicula facilisis. ', '', '', '', '', '', 'publish', '2022-01-27 08:05:00', '2022-01-27 08:05:00', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `st_pages_translation`
--

CREATE TABLE `st_pages_translation` (
  `id` int(11) NOT NULL,
  `page_id` int(14) NOT NULL DEFAULT '0',
  `language` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `long_content` text,
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_description` varchar(255) NOT NULL DEFAULT '',
  `meta_keywords` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_pages_translation`
--

INSERT INTO `st_pages_translation` (`id`, `page_id`, `language`, `title`, `long_content`, `meta_title`, `meta_description`, `meta_keywords`) VALUES
(1, 1, 'ja', '', '', '', '', ''),
(2, 1, 'ar', '', '', '', '', ''),
(3, 1, 'en', 'Terms and conditions', '<div>\r\n<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id \r\nsapien massa. Sed porta interdum nulla sed accumsan. Proin lacinia vel \r\nnulla eget porttitor. In varius vehicula facilisis. Maecenas non \r\nvehicula massa. Maecenas vel eros nec ante rutrum fringilla vel sit amet\r\n ipsum. Sed ut tellus nisl. Aenean vehicula, diam nec sollicitudin \r\nporttitor, purus augue mattis risus, porta elementum augue nibh eget \r\nsapien. Fusce a efficitur ipsum. In urna mi, ullamcorper ut ultrices sit\r\n amet, faucibus et risus. Maecenas vestibulum molestie ex.\r\n</p>\r\n<p>\r\nMaecenas ut lectus eget ante faucibus tristique. In sodales turpis orci,\r\n quis commodo lectus feugiat quis. Aliquam varius metus diam, id luctus \r\neros sagittis vel. Nulla facilisi. Suspendisse mollis eros lacus, at \r\nmaximus enim imperdiet quis. Nulla eget diam ac diam condimentum \r\nelementum. Ut at ipsum vitae ipsum ullamcorper vestibulum. Aliquam \r\neuismod enim vitae blandit tristique.\r\n</p>\r\n<p>\r\nVestibulum malesuada, diam sit amet tristique finibus, sem lacus \r\nelementum diam, et semper ipsum odio eu quam. Sed hendrerit tincidunt \r\neuismod. Aliquam finibus quis elit at sollicitudin. In at magna euismod,\r\n tincidunt lectus sed, posuere dui. Curabitur congue ante non ligula \r\nsagittis, non blandit metus consectetur. Nunc nisi purus, ultrices in \r\nodio quis, mattis condimentum quam. Nullam vestibulum ex et erat \r\nvolutpat hendrerit. Vestibulum luctus quam vestibulum mollis euismod. \r\nEtiam efficitur mauris vel mi pretium iaculis. Donec sed erat tincidunt,\r\n elementum sem in, consectetur ipsum. Nulla pellentesque porta sapien, \r\neu venenatis justo vulputate vitae. Nunc et finibus ex, non finibus \r\nmassa. Nulla non turpis rutrum, molestie dui id, pharetra massa.\r\n</p>\r\n<p>\r\nDuis a arcu quis quam sodales dapibus. Curabitur consectetur sit amet \r\ndiam sed consectetur. Sed facilisis ultricies odio, nec sagittis enim \r\nlacinia non. Maecenas non congue est, sed condimentum mi. Cras a \r\nporttitor libero. Praesent massa risus, sollicitudin eget accumsan \r\nelementum, ornare nec felis. Vestibulum porttitor imperdiet rhoncus. \r\nMauris consequat fermentum metus feugiat facilisis. Sed eleifend mollis \r\nmattis. Nunc imperdiet lectus non quam ullamcorper, at ultrices ante \r\ncongue. Etiam aliquam arcu felis. Class aptent taciti sociosqu ad litora\r\n torquent per conubia nostra, per inceptos himenaeos. Nulla consequat, \r\nturpis sit amet pharetra elementum, quam lacus placerat sapien, at \r\nsagittis nunc erat in sem. Nulla sed aliquet neque, a tempor leo. \r\nAliquam erat volutpat. Sed tempor libero neque, condimentum feugiat \r\ndolor lobortis in.\r\n</p>\r\n<p>\r\nFusce convallis quis augue vitae scelerisque. Sed auctor lectus a odio \r\neleifend, eget auctor enim vestibulum. Integer neque urna, eleifend in \r\nporta a, vehicula et risus. Vestibulum vehicula placerat ante sed \r\nlaoreet. Integer varius felis a magna tempor, a efficitur ex fringilla. \r\nDonec in diam a diam placerat luctus et nec nisi. Sed efficitur lacus \r\nfelis, vitae rutrum nibh eleifend in.\r\n</p></div>', '', '', ''),
(4, 2, 'ja', '', '', '', '', ''),
(5, 2, 'ar', '', '', '', '', ''),
(6, 2, 'en', 'Privacy policy', '<div>\r\n<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id \r\nsapien massa. Sed porta interdum nulla sed accumsan. Proin lacinia vel \r\nnulla eget porttitor. In varius vehicula facilisis. Maecenas non \r\nvehicula massa. Maecenas vel eros nec ante rutrum fringilla vel sit amet\r\n ipsum. Sed ut tellus nisl. Aenean vehicula, diam nec sollicitudin \r\nporttitor, purus augue mattis risus, porta elementum augue nibh eget \r\nsapien. Fusce a efficitur ipsum. In urna mi, ullamcorper ut ultrices sit\r\n amet, faucibus et risus. Maecenas vestibulum molestie ex.\r\n</p>\r\n<p>\r\nMaecenas ut lectus eget ante faucibus tristique. In sodales turpis orci,\r\n quis commodo lectus feugiat quis. Aliquam varius metus diam, id luctus \r\neros sagittis vel. Nulla facilisi. Suspendisse mollis eros lacus, at \r\nmaximus enim imperdiet quis. Nulla eget diam ac diam condimentum \r\nelementum. Ut at ipsum vitae ipsum ullamcorper vestibulum. Aliquam \r\neuismod enim vitae blandit tristique.\r\n</p>\r\n<p>\r\nVestibulum malesuada, diam sit amet tristique finibus, sem lacus \r\nelementum diam, et semper ipsum odio eu quam. Sed hendrerit tincidunt \r\neuismod. Aliquam finibus quis elit at sollicitudin. In at magna euismod,\r\n tincidunt lectus sed, posuere dui. Curabitur congue ante non ligula \r\nsagittis, non blandit metus consectetur. Nunc nisi purus, ultrices in \r\nodio quis, mattis condimentum quam. Nullam vestibulum ex et erat \r\nvolutpat hendrerit. Vestibulum luctus quam vestibulum mollis euismod. \r\nEtiam efficitur mauris vel mi pretium iaculis. Donec sed erat tincidunt,\r\n elementum sem in, consectetur ipsum. Nulla pellentesque porta sapien, \r\neu venenatis justo vulputate vitae. Nunc et finibus ex, non finibus \r\nmassa. Nulla non turpis rutrum, molestie dui id, pharetra massa.\r\n</p>\r\n<p>\r\nDuis a arcu quis quam sodales dapibus. Curabitur consectetur sit amet \r\ndiam sed consectetur. Sed facilisis ultricies odio, nec sagittis enim \r\nlacinia non. Maecenas non congue est, sed condimentum mi. Cras a \r\nporttitor libero. Praesent massa risus, sollicitudin eget accumsan \r\nelementum, ornare nec felis. Vestibulum porttitor imperdiet rhoncus. \r\nMauris consequat fermentum metus feugiat facilisis. Sed eleifend mollis \r\nmattis. Nunc imperdiet lectus non quam ullamcorper, at ultrices ante \r\ncongue. Etiam aliquam arcu felis. Class aptent taciti sociosqu ad litora\r\n torquent per conubia nostra, per inceptos himenaeos. Nulla consequat, \r\nturpis sit amet pharetra elementum, quam lacus placerat sapien, at \r\nsagittis nunc erat in sem. Nulla sed aliquet neque, a tempor leo. \r\nAliquam erat volutpat. Sed tempor libero neque, condimentum feugiat \r\ndolor lobortis in.\r\n</p>\r\n<p>\r\nFusce convallis quis augue vitae scelerisque. Sed auctor lectus a odio \r\neleifend, eget auctor enim vestibulum. Integer neque urna, eleifend in \r\nporta a, vehicula et risus. Vestibulum vehicula placerat ante sed \r\nlaoreet. Integer varius felis a magna tempor, a efficitur ex fringilla. \r\nDonec in diam a diam placerat luctus et nec nisi. Sed efficitur lacus \r\nfelis, vitae rutrum nibh eleifend in.\r\n</p></div>', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `st_payment_gateway`
--

CREATE TABLE `st_payment_gateway` (
  `payment_id` int(11) NOT NULL,
  `payment_name` varchar(255) NOT NULL DEFAULT '',
  `payment_code` varchar(255) NOT NULL DEFAULT '',
  `is_online` tinyint(1) NOT NULL DEFAULT '0',
  `is_payout` tinyint(1) NOT NULL DEFAULT '0',
  `is_plan` tinyint(1) NOT NULL DEFAULT '0',
  `logo_type` varchar(50) NOT NULL DEFAULT 'icon',
  `logo_class` varchar(100) NOT NULL DEFAULT '',
  `logo_image` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `sequence` int(11) NOT NULL DEFAULT '0',
  `is_live` tinyint(1) NOT NULL DEFAULT '1',
  `attr_json` text,
  `attr_json1` text,
  `attr1` varchar(255) NOT NULL DEFAULT '',
  `attr2` varchar(255) NOT NULL DEFAULT '',
  `attr3` varchar(255) NOT NULL DEFAULT '',
  `attr4` varchar(255) NOT NULL DEFAULT '',
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_payment_gateway`
--

INSERT INTO `st_payment_gateway` (`payment_id`, `payment_name`, `payment_code`, `is_online`, `is_payout`, `is_plan`, `logo_type`, `logo_class`, `logo_image`, `path`, `status`, `sequence`, `is_live`, `attr_json`, `attr_json1`, `attr1`, `attr2`, `attr3`, `attr4`, `date_created`, `date_modified`, `ip_address`) VALUES
(1, 'Cash On delivery', 'cod', 0, 0, 0, 'icon', 'zmdi zmdi-money-box', '', '', 'active', 1, 1, NULL, NULL, '', '', '', '', NULL, NULL, ''),
(2, 'Credit/Debit Card', 'ocr', 0, 0, 0, 'icon', 'zmdi zmdi-card', '', '', 'active', 2, 1, NULL, NULL, '', '', '', '', NULL, '2021-10-11 21:01:47', '127.0.0.1'),
(5, 'Paypal', 'paypal', 1, 1, 1, 'icon', 'zmdi zmdi-paypal', '', '', 'active', 3, 0, '{\"attr1\":{\"label\":\"Client ID\"},\"attr2\":{\"label\":\"Secret ID\"}}', '{\"email_address\":\"Email Address\"}', 'AYRVpqULm7QjvzJj7u093RSVIfZgd_bf8_AfIqOrpWoF2Pnud7YcwCb-XR3N3y5ybvgXxWwUYEPlgMwR', 'EN1lO-ILp4do4g_k6oPUGcciPxXoU2qdSwPe_HpW1AB_pxm8-Ax9SQbnn97OiTkx9ZadVbQg9jQ-QSv8', '', '', NULL, '2021-12-21 09:10:43', '127.0.0.1'),
(6, 'Stripe', 'stripe', 1, 1, 1, 'image', '', 'dde53ae2-62bb-11ec-afba-9c5c8e164c2c.png', 'upload/all', 'active', 4, 0, '{\"attr1\":{\"label\":\"Secret key\"},\"attr2\":{\"label\":\"Publishable Key\"},\"attr3\":{\"label\":\"Webhooks Signing secret\"}}', '{\"account_number\":\"Account number\",\"account_holder_name\":\"Account name\",\"account_holder_type\":\"Account type\",\"currency\":\"Currency\",\"routing_number\":\"Routing number\",\"country\":\"Country\"}', 'sk_test_f95wSoGGaVzxbOgxcUXV0dvx', 'pk_test_svqQz6KfEyJ8S0UO3ac0wAn0', 'whsec_AqWgmsnyAHoTAuyhG91os0ce2RfdteKj', '{\"webhooks\":\"{{site_url}}/stripe/webhooks\"}', NULL, '2021-12-24 00:26:28', '127.0.0.1'),
(7, 'Razorpay', 'razorpay', 1, 0, 1, 'image', '', 'ea4b122c-62bb-11ec-afba-9c5c8e164c2c.png', 'upload/all', 'active', 6, 0, '{\"attr1\":{\"label\":\"Key ID\"},\"attr2\":{\"label\":\"Key Secret\"}}', NULL, 'rzp_test_fUeXTtpM4rngDl', 't37LVcdi49KVjj1AE2WCtjkD', '', '', '2021-10-14 20:42:19', '2021-12-21 09:13:01', '127.0.0.1'),
(8, 'Mercadopago', 'mercadopago', 1, 0, 0, 'image', 'x', 'f49ba2af-62bb-11ec-afba-9c5c8e164c2c.png', 'upload/all', 'active', 7, 0, '{\"attr1\":{\"label\":\"Public Key\"},\"attr2\":{\"label\":\"Access Token\"}}', NULL, 'TEST-287c4601-0425-4eff-84ec-e42f05006d29', 'TEST-3846096499578652-050720-4c7dbc49ba67bf1f86b0594cd222bfaa-131280449', '', '', '2021-10-19 10:16:21', '2021-12-21 10:32:29', '127.0.0.1'),
(9, 'Bank Transfer', 'bank', 0, 1, 0, 'icon', 'zmdi zmdi-store', '', '', 'active', 0, 1, NULL, '{\"full_name\":\"Full Name\",\"billing_address1\":\"Billing Address Line 1\",\"billing_address2\":\"Billing Address Line 2\",\"city\":\"City\",\"state\":\"State\",\"post_code\":\"Postcode\",\"country\":\"Country\",\"account_name\":\"Bank Account Holder\'s Name\",\"account_number\":\"Bank Account Number\\/IBAN\",\"swift_code\":\"SWIFT Code\",\"bank_name\":\"Bank Name in Full\",\"bank_branch\":\"Bank Branch City\"}', '', '', '', '', '2021-11-17 03:32:31', NULL, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `st_payment_gateway_merchant`
--

CREATE TABLE `st_payment_gateway_merchant` (
  `id` bigint(20) NOT NULL,
  `payment_uuid` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` bigint(14) NOT NULL DEFAULT '0',
  `payment_id` bigint(20) DEFAULT '0',
  `payment_code` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `is_live` int(1) NOT NULL DEFAULT '1',
  `attr_json` text,
  `attr1` varchar(255) NOT NULL DEFAULT '',
  `attr2` varchar(255) NOT NULL DEFAULT '',
  `attr3` varchar(255) NOT NULL DEFAULT '',
  `attr4` varchar(255) NOT NULL DEFAULT '',
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_payment_method_meta`
--

CREATE TABLE `st_payment_method_meta` (
  `id` bigint(14) NOT NULL,
  `payment_method_id` bigint(20) DEFAULT NULL,
  `meta_name` varchar(255) NOT NULL DEFAULT '',
  `meta_value` longtext,
  `date_created` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_plans`
--

CREATE TABLE `st_plans` (
  `package_id` int(14) NOT NULL,
  `package_uuid` varchar(50) NOT NULL DEFAULT '',
  `plan_type` varchar(50) NOT NULL DEFAULT 'membership',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `price` float(14,4) NOT NULL DEFAULT '0.0000',
  `promo_price` float(14,4) NOT NULL DEFAULT '0.0000',
  `package_period` varchar(50) NOT NULL DEFAULT 'monthly',
  `ordering_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `item_limit` int(14) NOT NULL DEFAULT '0',
  `order_limit` int(14) NOT NULL DEFAULT '0',
  `trial_period` int(14) NOT NULL DEFAULT '0',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `status` varchar(100) NOT NULL DEFAULT '',
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_plans_invoice`
--

CREATE TABLE `st_plans_invoice` (
  `invoice_number` bigint(20) NOT NULL,
  `invoice_uuid` varchar(50) NOT NULL DEFAULT '',
  `invoice_type` varchar(50) NOT NULL DEFAULT 'membership',
  `payment_code` varchar(10) NOT NULL DEFAULT '',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` bigint(20) DEFAULT '0',
  `package_id` bigint(20) DEFAULT '0',
  `invoice_ref_number` varchar(50) NOT NULL DEFAULT '',
  `payment_ref1` varchar(100) NOT NULL DEFAULT '',
  `created` timestamp NULL DEFAULT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_plans_translation`
--

CREATE TABLE `st_plans_translation` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_push`
--

CREATE TABLE `st_push` (
  `push_uuid` varchar(100) NOT NULL DEFAULT '',
  `push_type` varchar(50) NOT NULL DEFAULT '',
  `provider` varchar(50) NOT NULL DEFAULT '',
  `channel_device_id` text,
  `platform` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `body` text,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `response` text,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_review`
--

CREATE TABLE `st_review` (
  `id` int(14) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `client_id` int(14) NOT NULL DEFAULT '0',
  `review` text,
  `rating` float(14,1) NOT NULL DEFAULT '0.0',
  `status` varchar(100) NOT NULL DEFAULT 'publish',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `order_id` varchar(14) NOT NULL DEFAULT '',
  `parent_id` int(14) NOT NULL DEFAULT '0',
  `reply_from` varchar(255) NOT NULL DEFAULT '',
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `as_anonymous` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_review_meta`
--

CREATE TABLE `st_review_meta` (
  `id` int(11) NOT NULL,
  `review_id` int(14) NOT NULL DEFAULT '0',
  `meta_name` varchar(100) NOT NULL DEFAULT '',
  `meta_value` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_role`
--

CREATE TABLE `st_role` (
  `role_id` int(11) NOT NULL,
  `role_type` varchar(50) NOT NULL DEFAULT 'admin',
  `merchant_id` int(11) NOT NULL DEFAULT '0',
  `role_name` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_role_access`
--

CREATE TABLE `st_role_access` (
  `role_access_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `action_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_services`
--

CREATE TABLE `st_services` (
  `service_id` int(11) NOT NULL,
  `service_code` varchar(255) NOT NULL DEFAULT '',
  `service_name` varchar(255) NOT NULL DEFAULT '',
  `color_hex` varchar(10) NOT NULL DEFAULT '',
  `font_color_hex` varchar(10) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT 'publish',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_services`
--

INSERT INTO `st_services` (`service_id`, `service_code`, `service_name`, `color_hex`, `font_color_hex`, `status`, `date_created`, `date_modified`, `ip_address`) VALUES
(1, 'delivery', 'Delivery', '#9fc5e8', 'white', 'publish', '2021-08-03 10:12:43', '2022-01-27 16:10:39', '127.0.0.1'),
(2, 'pickup', 'Pickup', '#e8989b', 'white', 'publish', '2021-08-03 10:12:43', '2022-01-27 16:10:35', '127.0.0.1'),
(3, 'dinein', 'Dinein', '#ffd966', '#bcbcbc', 'publish', '2021-08-03 10:12:43', '2022-01-27 16:10:30', '127.0.0.1'),
(4, 'pos', 'POS', '#6a329f', 'white', 'pending', '2022-01-18 02:18:35', '2022-01-27 16:10:25', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `st_services_fee`
--

CREATE TABLE `st_services_fee` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL DEFAULT '0',
  `merchant_id` int(11) NOT NULL DEFAULT '0',
  `service_fee` float(14,4) NOT NULL DEFAULT '0.0000',
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_services_fee`
--

INSERT INTO `st_services_fee` (`id`, `service_id`, `merchant_id`, `service_fee`, `date_modified`) VALUES
(1, 4, 0, 0.0000, '2022-01-27 16:10:25'),
(2, 3, 0, 0.0000, '2022-01-27 16:10:30'),
(3, 2, 0, 0.0000, '2022-01-27 16:10:35'),
(4, 1, 0, 0.0000, '2022-01-27 16:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `st_services_translation`
--

CREATE TABLE `st_services_translation` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(100) NOT NULL DEFAULT '',
  `service_name` varchar(255) NOT NULL DEFAULT '',
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_services_translation`
--

INSERT INTO `st_services_translation` (`id`, `service_id`, `language`, `service_name`, `date_modified`) VALUES
(16, 4, 'ja', '', '2022-01-27 16:10:25'),
(17, 4, 'ar', '', '2022-01-27 16:10:25'),
(18, 4, 'en', 'POS', '2022-01-27 16:10:25'),
(19, 3, 'ja', '', '2022-01-27 16:10:30'),
(20, 3, 'ar', '', '2022-01-27 16:10:30'),
(21, 3, 'en', 'Dinein', '2022-01-27 16:10:30'),
(22, 2, 'ja', '', '2022-01-27 16:10:35'),
(23, 2, 'ar', '', '2022-01-27 16:10:35'),
(24, 2, 'en', 'Pickup', '2022-01-27 16:10:35'),
(25, 1, 'ja', '', '2022-01-27 16:10:39'),
(26, 1, 'ar', '', '2022-01-27 16:10:39'),
(27, 1, 'en', 'Delivery', '2022-01-27 16:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `st_shipping_rate`
--

CREATE TABLE `st_shipping_rate` (
  `id` int(14) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `service_code` varchar(255) NOT NULL DEFAULT 'delivery',
  `charge_type` varchar(100) NOT NULL DEFAULT 'dynamic',
  `shipping_type` varchar(100) NOT NULL DEFAULT 'standard',
  `distance_from` float(14,2) NOT NULL DEFAULT '0.00',
  `distance_to` float(14,2) NOT NULL DEFAULT '0.00',
  `shipping_units` varchar(5) NOT NULL DEFAULT '',
  `distance_price` float(14,4) NOT NULL DEFAULT '0.0000',
  `minimum_order` float(14,4) NOT NULL DEFAULT '0.0000',
  `maximum_order` float(14,4) NOT NULL DEFAULT '0.0000',
  `estimation` varchar(20) NOT NULL DEFAULT '',
  `last_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_size`
--

CREATE TABLE `st_size` (
  `size_id` int(14) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `size_name` varchar(255) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT 'published',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_size_translation`
--

CREATE TABLE `st_size_translation` (
  `id` int(11) NOT NULL,
  `size_id` int(14) NOT NULL DEFAULT '0',
  `language` varchar(10) NOT NULL DEFAULT '',
  `size_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_sms_broadcast`
--

CREATE TABLE `st_sms_broadcast` (
  `broadcast_id` int(14) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `send_to` int(14) NOT NULL DEFAULT '0',
  `list_mobile_number` text NOT NULL,
  `sms_alert_message` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_sms_broadcast_details`
--

CREATE TABLE `st_sms_broadcast_details` (
  `id` int(14) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `broadcast_id` int(14) NOT NULL DEFAULT '0',
  `client_id` int(14) NOT NULL DEFAULT '0',
  `client_name` varchar(255) NOT NULL DEFAULT '',
  `contact_phone` varchar(50) NOT NULL DEFAULT '',
  `sms_message` text,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `gateway_response` text,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_executed` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `gateway` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_sms_provider`
--

CREATE TABLE `st_sms_provider` (
  `id` int(11) NOT NULL,
  `provider_id` varchar(100) NOT NULL DEFAULT '',
  `provider_name` varchar(255) NOT NULL DEFAULT '',
  `as_default` int(1) NOT NULL DEFAULT '0',
  `key1` varchar(255) NOT NULL DEFAULT '',
  `key2` varchar(255) NOT NULL DEFAULT '',
  `key3` varchar(255) NOT NULL DEFAULT '',
  `key4` varchar(255) NOT NULL DEFAULT '',
  `key5` varchar(255) NOT NULL DEFAULT '',
  `key6` varchar(255) NOT NULL DEFAULT '',
  `key7` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_sms_provider`
--

INSERT INTO `st_sms_provider` (`id`, `provider_id`, `provider_name`, `as_default`, `key1`, `key2`, `key3`, `key4`, `key5`, `key6`, `key7`) VALUES
(1, 'twilio', 'Twilio', 0, '', '', '', '', '', '', ''),
(2, 'nexmo', 'Nexmo', 0, '', '', '', '', '', '', ''),
(3, 'clickatell', 'Clickatell', 0, '', '', '', '', '', '', ''),
(5, 'smsglobal', 'SMS Global', 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `st_status_management`
--

CREATE TABLE `st_status_management` (
  `status_id` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `color_hex` varchar(10) NOT NULL DEFAULT '',
  `font_color_hex` varchar(10) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_status_management`
--

INSERT INTO `st_status_management` (`status_id`, `group_name`, `status`, `title`, `color_hex`, `font_color_hex`, `date_created`, `date_modified`, `ip_address`) VALUES
(1, 'customer', 'pending', 'Pending for approval', '#ffd6c4', '', '2021-05-19 08:35:32', '2022-01-26 22:44:35', '127.0.0.1'),
(2, 'customer', 'active', 'active', '#ffd966', '', '2021-05-19 08:35:32', '2022-01-26 22:45:04', '127.0.0.1'),
(3, 'customer', 'suspended', 'suspended', '#ea9895', 'white', '2021-05-19 08:35:32', '2022-01-26 22:45:01', '127.0.0.1'),
(4, 'customer', 'blocked', 'blocked', '#e8989b', 'white', '2021-05-19 08:35:32', '2022-01-26 22:44:59', '127.0.0.1'),
(5, 'customer', 'expired', 'Expired', '#ea9895', 'white', '2021-05-19 08:35:32', '2022-01-26 22:44:57', '127.0.0.1'),
(6, 'post', 'publish', 'Publish', '#ffd966', '', '2021-05-19 08:35:32', '2022-01-26 22:44:53', '127.0.0.1'),
(7, 'post', 'pending', 'Pending for review', '#ffd6c4', '', '2021-05-19 08:35:32', '2022-01-26 22:44:50', '127.0.0.1'),
(8, 'post', 'draft', 'Draft', '#e8989b', 'white', '2021-05-19 08:35:32', '2022-01-26 22:44:47', '127.0.0.1'),
(9, 'booking', 'pending', 'pending', '#ffd6c4', '', '2021-05-19 08:35:32', '2022-01-26 22:44:44', '127.0.0.1'),
(10, 'booking', 'approved', 'approved', '#d4ecdc', '', '2021-05-19 08:35:32', '2022-01-26 22:44:40', '127.0.0.1'),
(11, 'booking', 'denied', 'denied', '#e8989b', '', '2021-05-19 08:35:32', '2022-01-26 22:44:37', '127.0.0.1'),
(12, 'booking', 'request_cancel_booking', 'request cancel booking', '#d4ecdc', '', '2021-05-19 08:35:32', '2022-01-26 22:44:09', '127.0.0.1'),
(13, 'booking', 'cancel_booking_approved', 'cancel booking approved', '#efe5ee', '', '2021-05-19 08:35:32', '2022-01-26 22:44:07', '127.0.0.1'),
(15, 'transaction', 'process', 'Process', '#ffd966', '', '2021-05-19 02:46:46', '2022-01-26 22:44:05', '127.0.0.1'),
(16, 'payment', 'paid', 'Paid', '#ffd966', '', '2021-05-19 05:12:47', '2022-01-26 22:44:03', '127.0.0.1'),
(19, 'payment', 'unpaid', 'Unpaid', '#2986cc', 'white', '2021-10-12 04:55:38', '2022-01-26 22:44:01', '127.0.0.1'),
(20, 'payment', 'failed', 'Failed', '#f44336', 'white', '2021-10-12 04:55:53', '2022-01-26 22:43:58', '127.0.0.1'),
(21, 'gateway', 'active', 'Active', '#8fce00', 'white', '2021-10-12 04:57:21', '2022-01-26 22:43:56', '127.0.0.1'),
(22, 'gateway', 'inactive', 'Inactive', '#f44336', 'white', '2021-10-12 04:58:12', '2022-01-26 22:43:54', '127.0.0.1'),
(23, 'payment', 'pending', 'Pending', '#8fce00', 'white', '2021-11-20 02:23:22', '2022-01-26 22:43:52', '127.0.0.1'),
(24, 'payment', 'cancelled', 'Cancelled', '#eb786f', 'white', '2021-12-03 14:44:59', '2022-01-26 22:43:33', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `st_status_management_translation`
--

CREATE TABLE `st_status_management_translation` (
  `id` int(11) NOT NULL,
  `status_id` int(1) NOT NULL DEFAULT '0',
  `language` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_status_management_translation`
--

INSERT INTO `st_status_management_translation` (`id`, `status_id`, `language`, `title`) VALUES
(1, 24, 'ja', ''),
(2, 24, 'ar', ''),
(3, 24, 'en', 'Cancelled'),
(4, 23, 'ja', ''),
(5, 23, 'ar', ''),
(6, 23, 'en', 'Pending'),
(7, 22, 'ja', ''),
(8, 22, 'ar', ''),
(9, 22, 'en', 'Inactive'),
(10, 21, 'ja', ''),
(11, 21, 'ar', ''),
(12, 21, 'en', 'Active'),
(13, 20, 'ja', ''),
(14, 20, 'ar', ''),
(15, 20, 'en', 'Failed'),
(16, 19, 'ja', ''),
(17, 19, 'ar', ''),
(18, 19, 'en', 'Unpaid'),
(19, 16, 'ja', ''),
(20, 16, 'ar', ''),
(21, 16, 'en', 'Paid'),
(22, 15, 'ja', ''),
(23, 15, 'ar', ''),
(24, 15, 'en', 'Process'),
(25, 13, 'ja', ''),
(26, 13, 'ar', ''),
(27, 13, 'en', 'cancel booking approved'),
(28, 12, 'ja', ''),
(29, 12, 'ar', ''),
(30, 12, 'en', 'request cancel booking'),
(31, 1, 'ja', ''),
(32, 1, 'ar', ''),
(33, 1, 'en', 'Pending for approval'),
(34, 11, 'ja', ''),
(35, 11, 'ar', ''),
(36, 11, 'en', 'denied'),
(37, 10, 'ja', ''),
(38, 10, 'ar', ''),
(39, 10, 'en', 'approved'),
(40, 9, 'ja', ''),
(41, 9, 'ar', ''),
(42, 9, 'en', 'pending'),
(43, 8, 'ja', ''),
(44, 8, 'ar', ''),
(45, 8, 'en', 'Draft'),
(46, 7, 'ja', ''),
(47, 7, 'ar', ''),
(48, 7, 'en', 'Pending for review'),
(49, 6, 'ja', ''),
(50, 6, 'ar', ''),
(51, 6, 'en', 'Publish'),
(52, 5, 'ja', ''),
(53, 5, 'ar', ''),
(54, 5, 'en', 'Expired'),
(55, 4, 'ja', ''),
(56, 4, 'ar', ''),
(57, 4, 'en', 'blocked'),
(58, 3, 'ja', ''),
(59, 3, 'ar', ''),
(60, 3, 'en', 'suspended'),
(61, 2, 'ja', ''),
(62, 2, 'ar', ''),
(63, 2, 'en', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `st_subcategory`
--

CREATE TABLE `st_subcategory` (
  `subcat_id` int(14) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `subcategory_name` varchar(255) NOT NULL DEFAULT '',
  `subcategory_description` text,
  `featured_image` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `discount` varchar(20) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `status` varchar(100) NOT NULL DEFAULT 'publish',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_subcategory_item`
--

CREATE TABLE `st_subcategory_item` (
  `sub_item_id` int(14) NOT NULL,
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `sub_item_name` varchar(255) NOT NULL DEFAULT '',
  `item_description` text,
  `category` varchar(255) NOT NULL DEFAULT '',
  `price` varchar(15) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_subcategory_item_relationships`
--

CREATE TABLE `st_subcategory_item_relationships` (
  `id` int(11) NOT NULL,
  `subcat_id` int(14) NOT NULL DEFAULT '0',
  `sub_item_id` int(14) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_subcategory_item_translation`
--

CREATE TABLE `st_subcategory_item_translation` (
  `id` int(11) NOT NULL,
  `sub_item_id` int(14) NOT NULL DEFAULT '0',
  `language` varchar(10) NOT NULL DEFAULT '',
  `sub_item_name` varchar(255) NOT NULL DEFAULT '',
  `item_description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_subcategory_translation`
--

CREATE TABLE `st_subcategory_translation` (
  `id` int(11) NOT NULL,
  `subcat_id` int(14) NOT NULL DEFAULT '0',
  `language` varchar(10) NOT NULL DEFAULT '',
  `subcategory_name` varchar(255) NOT NULL DEFAULT '',
  `subcategory_description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_tags`
--

CREATE TABLE `st_tags` (
  `tag_id` bigint(20) NOT NULL,
  `tag_name` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_tags_relationship`
--

CREATE TABLE `st_tags_relationship` (
  `id` int(11) NOT NULL,
  `banner_id` int(14) NOT NULL DEFAULT '0',
  `tag_id` int(14) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_tags_translation`
--

CREATE TABLE `st_tags_translation` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(100) NOT NULL DEFAULT '',
  `tag_name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_tax`
--

CREATE TABLE `st_tax` (
  `tax_id` bigint(20) NOT NULL,
  `tax_uuid` varchar(100) DEFAULT '',
  `merchant_id` bigint(20) DEFAULT '0',
  `tax_type` varchar(50) DEFAULT 'standard',
  `tax_name` varchar(100) NOT NULL DEFAULT '',
  `tax_in_price` tinyint(1) NOT NULL DEFAULT '0',
  `tax_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax_rate_type` varchar(50) NOT NULL DEFAULT 'percent',
  `default_tax` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_templates`
--

CREATE TABLE `st_templates` (
  `template_id` int(11) NOT NULL,
  `template_key` varchar(255) NOT NULL DEFAULT '',
  `template_name` varchar(255) NOT NULL DEFAULT '',
  `enabled_email` int(1) NOT NULL DEFAULT '0',
  `enabled_sms` int(1) NOT NULL DEFAULT '0',
  `enabled_push` int(1) NOT NULL DEFAULT '0',
  `tags` text,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_templates`
--

INSERT INTO `st_templates` (`template_id`, `template_key`, `template_name`, `enabled_email`, `enabled_sms`, `enabled_push`, `tags`, `date_created`, `date_modified`, `ip_address`) VALUES
(2, '', 'Order Invoice', 1, 1, 1, NULL, '2021-11-26 14:52:10', '2021-11-26 21:52:10', '127.0.0.1'),
(3, '', 'Customer Full Refund', 1, 0, 1, NULL, '2021-11-27 04:43:58', '2021-11-27 11:43:58', '127.0.0.1'),
(4, '', 'Receipt', 1, 0, 0, NULL, '2021-11-27 15:47:38', '2021-11-27 22:47:38', '127.0.0.1'),
(5, '', 'New Order', 0, 0, 1, NULL, '2021-11-27 15:54:09', '2021-11-27 22:54:09', '127.0.0.1'),
(6, '', 'Order rejected', 1, 0, 1, NULL, '2021-11-27 16:02:27', '2021-11-27 23:02:27', '127.0.0.1'),
(7, '', 'Order Cancel', 1, 0, 1, NULL, '2021-11-29 02:10:41', '2021-11-29 09:10:41', '127.0.0.1'),
(8, '', 'Delay Order', 1, 0, 1, NULL, '2021-11-29 03:11:41', '2021-11-29 10:11:41', '127.0.0.1'),
(9, '', 'Order Accepted', 1, 0, 1, NULL, '2021-11-29 08:01:07', '2021-11-29 15:01:07', '127.0.0.1'),
(10, '', 'Driver on its way', 1, 0, 1, NULL, '2021-11-29 08:11:06', '2021-11-29 15:11:06', '127.0.0.1'),
(11, '', 'Customer Partial Full Refund', 1, 0, 1, NULL, '2021-11-29 10:44:22', '2021-11-29 17:44:22', '127.0.0.1'),
(12, '', 'Customer Welcome', 1, 0, 0, NULL, '2021-11-29 15:19:51', '2021-11-29 22:19:51', '127.0.0.1'),
(13, '', 'Customer Verification', 1, 1, 0, NULL, '2021-11-29 15:20:09', '2021-11-29 22:20:09', '127.0.0.1'),
(14, '', 'Customer Reset Password', 1, 0, 0, NULL, '2021-11-29 15:20:19', '2021-11-29 22:20:19', '127.0.0.1'),
(15, '', 'Review', 1, 0, 0, NULL, '2021-12-01 07:53:27', '2021-12-01 14:53:27', '127.0.0.1'),
(16, '', 'Payout new request', 1, 0, 1, NULL, '2021-12-04 03:35:08', '2021-12-04 10:35:08', '127.0.0.1'),
(17, '', 'Payout paid', 1, 0, 0, NULL, '2021-12-04 03:35:18', '2021-12-04 10:35:18', '127.0.0.1'),
(18, '', 'Payout Cancel', 1, 0, 1, NULL, '2021-12-04 03:35:24', '2021-12-04 10:35:24', '127.0.0.1'),
(19, '', 'New customer signup', 0, 0, 1, NULL, '2021-12-10 02:00:54', '2021-12-10 09:00:54', '127.0.0.1'),
(20, '', 'New cancell order', 0, 0, 1, NULL, '2021-12-10 04:44:40', '2021-12-10 11:44:40', '127.0.0.1'),
(21, '', 'Order on its way', 0, 0, 1, NULL, '2021-12-14 09:43:19', '2021-12-14 16:43:19', '127.0.0.1'),
(22, '', 'Order delivered', 0, 0, 1, NULL, '2021-12-14 09:43:44', '2021-12-14 16:43:44', '127.0.0.1'),
(23, '', 'Order delivery failed', 0, 0, 1, NULL, '2021-12-14 09:44:34', '2021-12-14 16:44:34', '127.0.0.1'),
(24, '', 'Merchant Welcome Email', 1, 0, 0, NULL, '2021-12-23 02:10:07', '2021-12-23 09:10:07', '127.0.0.1'),
(25, '', 'Merchant Confirm account', 1, 0, 1, NULL, '2021-12-23 02:13:15', '2021-12-23 09:13:15', '127.0.0.1'),
(26, '', 'Merchant new signup', 1, 0, 1, NULL, '2021-12-23 11:50:50', '2021-12-23 18:50:50', '127.0.0.1'),
(27, '', 'Merchant plan expired', 1, 0, 1, NULL, '2021-12-29 16:09:44', '2021-12-29 23:09:44', '127.0.0.1'),
(28, '', 'Merchant plan near expiration', 1, 0, 1, NULL, '2021-12-29 16:17:51', '2021-12-29 23:17:51', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `st_templates_translation`
--

CREATE TABLE `st_templates_translation` (
  `id` int(11) NOT NULL,
  `template_id` int(14) NOT NULL DEFAULT '0',
  `template_type` varchar(100) NOT NULL DEFAULT '',
  `language` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_templates_translation`
--

INSERT INTO `st_templates_translation` (`id`, `template_id`, `template_type`, `language`, `title`, `content`) VALUES
(1279, 4, 'email', 'en', 'Order Summary', '{% include \'header.html\' %}\r\n\r\n\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:15%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Thanks for your order</h2>\r\n    <p style=\"padding:10px;\">You\'ll receive an email when your food are ready to deliver. If you have any questions, Call us {{merchant.contact_phone}}.</p>\r\n    <br>    \r\n    <a href=\"{{order.order_info.tracking_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Track Order\r\n     </a>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n      {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n    <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n{% include \'footer.html\' %}'),
(1280, 4, 'email', 'ja', '', ''),
(1281, 4, 'email', 'ar', '', ''),
(1282, 4, 'sms', 'en', '', 'Your Order Being Processed #{{order_info.order_id}}'),
(1283, 4, 'sms', 'ja', '', ''),
(1284, 4, 'sms', 'ar', '', ''),
(1285, 4, 'push', 'en', '', 'Order Being Processed #{{order_info.order_id}}'),
(1286, 4, 'push', 'ja', '', ''),
(1287, 4, 'push', 'ar', '', ''),
(1423, 11, 'email', 'en', 'Partial refund for your #{{order_info.order_id}}', '{% include \'header.html\' %}\r\n\r\n\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:15%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n   \r\n\r\n    <p style=\"padding-bottom:15px\">Hi {{order_info.customer_name}},</p>\r\n	<p style=\"line-height:20px;\">\r\n	Good News! We’ve processed your partial refund of {{additional_data.refund_amount}} for your item(s) from order #{{order_info.order_id}}.\r\n	</p>\r\n	\r\n	<p style=\"line-height:20px;\">Reversal may take 1 to 2 billing cycles or 5 to 15 banking days for local credit cards, and up to 45 banking days for international credit and debit cards, depending on your bank\'s processing time.</p>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n      {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n    <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n{% include \'footer.html\' %}'),
(1424, 11, 'email', 'ja', '', ''),
(1425, 11, 'email', 'ar', '', ''),
(1426, 11, 'sms', 'en', '', ''),
(1427, 11, 'sms', 'ja', '', ''),
(1428, 11, 'sms', 'ar', '', ''),
(1429, 11, 'push', 'en', '', ''),
(1430, 11, 'push', 'ja', '', ''),
(1431, 11, 'push', 'ar', '', ''),
(1495, 13, 'email', 'en', 'OTP!', '{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p>Hi <br></p>\r\n	\r\n	<p>Your OTP is {{code}}.</p>		\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),
(1496, 13, 'email', 'ja', '', ''),
(1497, 13, 'email', 'ar', '', ''),
(1498, 13, 'sms', 'en', '', 'Your OTP is {{code}}.'),
(1499, 13, 'sms', 'ja', '', ''),
(1500, 13, 'sms', 'ar', '', ''),
(1501, 13, 'push', 'en', '', ''),
(1502, 13, 'push', 'ja', '', ''),
(1503, 13, 'push', 'ar', '', ''),
(1522, 12, 'email', 'en', '{{site.title}} - Registration', '{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:10px;\">Hi {{first_name}} {{last_name}},</p>\r\n	\r\n	<p>You\'ve successfully signed up for a {{site.title}} account! You can use this next time you order through {{site.title}},</p>		\r\n	<p>and you’ll get the latest promos, news, and updates.</p>\r\n	\r\n	<div style=\"padding-top:20px;\">\r\n	<p>Thank You!</p>\r\n	<p>{{site.title}} Team</p>\r\n	</div>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),
(1523, 12, 'email', 'ja', '', ''),
(1524, 12, 'email', 'ar', '', ''),
(1525, 12, 'sms', 'en', '', ''),
(1526, 12, 'sms', 'ja', '', ''),
(1527, 12, 'sms', 'ar', '', ''),
(1528, 12, 'push', 'en', '', ''),
(1529, 12, 'push', 'ja', '', ''),
(1530, 12, 'push', 'ar', '', ''),
(1531, 15, 'email', 'en', 'Review your order {{order_info.order_id}}', ''),
(1532, 15, 'email', 'ja', '', ''),
(1533, 15, 'email', 'ar', '', ''),
(1534, 15, 'sms', 'en', '', ''),
(1535, 15, 'sms', 'ja', '', ''),
(1536, 15, 'sms', 'ar', '', ''),
(1537, 15, 'push', 'en', '', ''),
(1538, 15, 'push', 'ja', '', ''),
(1539, 15, 'push', 'ar', '', ''),
(1585, 14, 'email', 'en', 'Password change instructions', '{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n   <table width=\"50%\" align=\"center\">\r\n   <tbody><tr>\r\n    <td>\r\n	\r\n	<p style=\"margin-bottom:10px;\">Hi {{first_name}} {{last_name}},</p>\r\n	\r\n	 <p style=\"margin-bottom:10px;\">It looks like you have forgotten your password. We can help you to create a new password.</p>\r\n	\r\n	<div style=\"margin:auto;text-align:center;padding-top:10px; padding-bottom:10px;\">\r\n	 <a href=\"{{reset_password_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Reset Password\r\n     </a>\r\n	</div>\r\n	 \r\n	<p style=\"text-align:center;\">or click this link:</p>\r\n	<p style=\"text-align:center;\"><a href=\"{{reset_password_link}}\">{{reset_password_link}}</a></p>\r\n	\r\n	</td>\r\n   </tr>\r\n   </tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),
(1586, 14, 'email', 'ja', '', ''),
(1587, 14, 'email', 'ar', '', ''),
(1588, 14, 'sms', 'en', '', ''),
(1589, 14, 'sms', 'ja', '', ''),
(1590, 14, 'sms', 'ar', '', ''),
(1591, 14, 'push', 'en', '', ''),
(1592, 14, 'push', 'ja', '', ''),
(1593, 14, 'push', 'ar', '', ''),
(1639, 17, 'email', 'en', 'Payout paid', '{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi {{restaurant_name}}<br></p>\r\n	\r\n	<p>Your Payout with transaction #{{transaction_id}} has been paid.</p>	\r\n	\r\n	<h5>Payout Details</h5>\r\n	<table width=\"60%\">\r\n	 <tbody><tr>\r\n	  <td width=\"25%\">Amount</td>\r\n	  <td>{{transaction_amount}}</td>\r\n	 </tr>\r\n	 <tr>\r\n	  <td>Payment Method</td>\r\n	  <td>{{payment_methood}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Transaction</td>\r\n	  <td>{{transaction_description}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Date requested</td>\r\n	  <td>{{transaction_date}}</td>\r\n	 </tr>	 \r\n	</tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),
(1640, 17, 'email', 'ja', '', ''),
(1641, 17, 'email', 'ar', '', ''),
(1642, 17, 'sms', 'en', '', ''),
(1643, 17, 'sms', 'ja', '', ''),
(1644, 17, 'sms', 'ar', '', ''),
(1645, 17, 'push', 'en', '', ''),
(1646, 17, 'push', 'ja', '', ''),
(1647, 17, 'push', 'ar', '', ''),
(1738, 5, 'email', 'en', 'New order #{{order_info.order_id}} from {{order_info.customer_name}}', '{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr> \r\n <tr>\r\n  <td style=\"background:#ffffff;\">\r\n  \r\n    {% include \'summary.html\' %}\r\n   \r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td>\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),
(1739, 5, 'email', 'ja', '', ''),
(1740, 5, 'email', 'ar', '', ''),
(1741, 5, 'sms', 'en', '', 'New order #{{order_info.order_id}} from {{order_info.customer_name}}'),
(1742, 5, 'sms', 'ja', '', ''),
(1743, 5, 'sms', 'ar', '', ''),
(1744, 5, 'push', 'en', 'You have new order from {{customer_name}}', 'Order#{{order_id}} from {{customer_name}}'),
(1745, 5, 'push', 'ja', '', ''),
(1746, 5, 'push', 'ar', '', ''),
(1837, 19, 'email', 'en', 'You have new customer signup', '{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi <br></p>\r\n	\r\n	<p>You have new customer signup.</p>	\r\n	\r\n	<h5>Customer Details</h5>\r\n	<table width=\"60%\">\r\n	 <tbody><tr>\r\n	  <td width=\"25%\">First name</td>\r\n	  <td>{{first_name}}</td>\r\n	 </tr>\r\n	 <tr>\r\n	  <td>Last name</td>\r\n	  <td>{{last_name}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Email address</td>\r\n	  <td>{{email_address}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Phone number</td>\r\n	  <td>{{contact_phone}}</td>\r\n	 </tr>	 \r\n	</tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),
(1838, 19, 'email', 'ja', '', ''),
(1839, 19, 'email', 'ar', '', ''),
(1840, 19, 'sms', 'en', '', 'You have new customer signup'),
(1841, 19, 'sms', 'ja', '', ''),
(1842, 19, 'sms', 'ar', '', ''),
(1843, 19, 'push', 'en', 'You have new customer signup', '{{first_name}} {{last_name}} has signup'),
(1844, 19, 'push', 'ja', '', ''),
(1845, 19, 'push', 'ar', '', ''),
(1864, 20, 'email', 'en', '', ''),
(1865, 20, 'email', 'ja', '', ''),
(1866, 20, 'email', 'ar', '', ''),
(1867, 20, 'sms', 'en', '', ''),
(1868, 20, 'sms', 'ja', '', ''),
(1869, 20, 'sms', 'ar', '', ''),
(1870, 20, 'push', 'en', 'Order #{{order_id}} from {{customer_name}} is cancelled', 'Order #{{order_id}} from {{customer_name}} is cancelled'),
(1871, 20, 'push', 'ja', '', ''),
(1872, 20, 'push', 'ar', '', ''),
(1909, 16, 'email', 'en', 'Payout new request', '{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi <br></p>\r\n	\r\n	<p style=\"margin-bottom:10px;\">New payout request by merchant details below.</p>	\r\n	\r\n	<h5>Payout Details</h5>\r\n	<table width=\"60%\">\r\n	 <tbody><tr>\r\n	  <td width=\"25%\">Amount</td>\r\n	  <td>{{transaction_amount}}</td>\r\n	 </tr>\r\n	 <tr>\r\n	  <td>Payment Method</td>\r\n	  <td>{{payment_method}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Transaction</td>\r\n	  <td>{{transaction_description}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Date requested</td>\r\n	  <td>{{transaction_date}}</td>\r\n	 </tr>	 \r\n	</tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),
(1910, 16, 'email', 'ja', '', ''),
(1911, 16, 'email', 'ar', '', ''),
(1912, 16, 'sms', 'en', '', ''),
(1913, 16, 'sms', 'ja', '', ''),
(1914, 16, 'sms', 'ar', '', ''),
(1915, 16, 'push', 'en', 'New payout new request', 'New payout new request from {{restaurant_name}}'),
(1916, 16, 'push', 'ja', '', ''),
(1917, 16, 'push', 'ar', '', ''),
(1927, 18, 'email', 'en', 'Payout cancelled', '{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi {{restaurant_name}}<br></p>\r\n	\r\n	<p>Your Payout with transaction #{{transaction_id}} has been cancelled.</p>	\r\n	\r\n	<h5>Payout Details</h5>\r\n	<table width=\"60%\">\r\n	 <tbody><tr>\r\n	  <td width=\"25%\">Amount</td>\r\n	  <td>{{transaction_amount}}</td>\r\n	 </tr>\r\n	 <tr>\r\n	  <td>Payment Method</td>\r\n	  <td>{{payment_methood}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Transaction</td>\r\n	  <td>{{transaction_description}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Date requested</td>\r\n	  <td>{{transaction_date}}</td>\r\n	 </tr>	 \r\n	</tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),
(1928, 18, 'email', 'ja', '', ''),
(1929, 18, 'email', 'ar', '', ''),
(1930, 18, 'sms', 'en', '', ''),
(1931, 18, 'sms', 'ja', '', ''),
(1932, 18, 'sms', 'ar', '', ''),
(1933, 18, 'push', 'en', 'Your payout request is cancelled', '{{restaurant_name}} Your payout request with the amount of {{transaction_amount}} is cancel'),
(1934, 18, 'push', 'ja', '', ''),
(1935, 18, 'push', 'ar', '', ''),
(1981, 8, 'email', 'en', 'Sorry for the delay in delivery!', '{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p>Hi {{order_info.customer_name}},</p>\r\n	\r\n	<p>We are sorry the item(s) from your order {{order_info.order_id}} is taking longer than expected. \r\n	We are working closely with the restaurant team to deliver this order as soon as possible.​</p>\r\n	\r\n	<p><b>{{order_info.delayed_order}}</b></p>\r\n	\r\n	<p>\r\n	Please make sure to turn on your App notification to get the latest updates on your order. \r\n	</p>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n  \r\n     {% include \'summary.html\' %}\r\n   \r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),
(1982, 8, 'email', 'ja', '', ''),
(1983, 8, 'email', 'ar', '', ''),
(1984, 8, 'sms', 'en', '', ''),
(1985, 8, 'sms', 'ja', '', ''),
(1986, 8, 'sms', 'ar', '', ''),
(1987, 8, 'push', 'en', 'Order #{{order_id}} will be late, {{delayed_order_mins}}min(s)', 'Your order@{{order_id}} will be late, in {{delayed_order_mins}}min(s)'),
(1988, 8, 'push', 'ja', '', ''),
(1989, 8, 'push', 'ar', '', ''),
(2008, 7, 'email', 'en', 'Your order #{{order_info.order_id}} is cancelled', '{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Your order #{{order_id}} has been cancelled</h2>\r\n    <p style=\"padding:10px;\">unfortunately merchant cannot fulfill your order, merchant says <b>{{order_info.rejetion_reason}}</b></p>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n  \r\n     {% include \'summary.html\' %}\r\n   \r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),
(2009, 7, 'email', 'ja', '', ''),
(2010, 7, 'email', 'ar', '', ''),
(2011, 7, 'sms', 'en', '', ''),
(2012, 7, 'sms', 'ja', '', ''),
(2013, 7, 'sms', 'ar', '', ''),
(2014, 7, 'push', 'en', 'Your order #{{order_id}} is cancelled', 'Your order #{{order_id}} is cancelled'),
(2015, 7, 'push', 'ja', '', ''),
(2016, 7, 'push', 'ar', '', ''),
(2017, 9, 'email', 'en', 'Your order #{{order_info.order_id}} is accepted by {{merchant.restaurant_name}}', '{% include \'header.html\' %}\r\n\r\n\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:15%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Order Accepted<br></h2>\r\n    <p>Your order is confirmed and is now being prepared by the store. We\'ll let you know once our rider is on his way to you.</p><p>Conveniently track your order by clicking track order.<br></p>\r\n    <a href=\"{{order.order_info.tracking_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Track Order\r\n     </a>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n      {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n    <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n{% include \'footer.html\' %}'),
(2018, 9, 'email', 'ja', '', ''),
(2019, 9, 'email', 'ar', '', ''),
(2020, 9, 'sms', 'en', '', ''),
(2021, 9, 'sms', 'ja', '', ''),
(2022, 9, 'sms', 'ar', '', ''),
(2023, 9, 'push', 'en', 'Your order #{{order_id}} is accepted by {{restaurant_name}}', 'Your order #{{order_id}} is accepted by {{restaurant_name}}'),
(2024, 9, 'push', 'ja', '', ''),
(2025, 9, 'push', 'ar', '', ''),
(2035, 6, 'email', 'en', 'Your order #{{order_id}} has been rejected', '{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Your order #{{order_id}} has been rejected</h2>\r\n    <p style=\"padding:10px;\">unfortunately merchant cannot fulfill your order, merchant says <b>{{order_info.rejetion_reason}}</b></p>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n  \r\n     {% include \'summary.html\' %}\r\n   \r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),
(2036, 6, 'email', 'ja', '', ''),
(2037, 6, 'email', 'ar', '', ''),
(2038, 6, 'sms', 'en', '', ''),
(2039, 6, 'sms', 'ja', '', ''),
(2040, 6, 'sms', 'ar', '', ''),
(2041, 6, 'push', 'en', 'Your order #{{order_id}} has been rejected', 'Your order #{{order_id}} has been rejected'),
(2042, 6, 'push', 'ja', '', ''),
(2043, 6, 'push', 'ar', '', ''),
(2053, 22, 'email', 'en', '', ''),
(2054, 22, 'email', 'ja', '', ''),
(2055, 22, 'email', 'ar', '', ''),
(2056, 22, 'sms', 'en', '', ''),
(2057, 22, 'sms', 'ja', '', ''),
(2058, 22, 'sms', 'ar', '', ''),
(2059, 22, 'push', 'en', 'Your order #{{order_id}} successfully delivered', 'Your order #{{order_id}} successfully delivered'),
(2060, 22, 'push', 'ja', '', ''),
(2061, 22, 'push', 'ar', '', ''),
(2071, 10, 'email', 'en', 'Order is on the way!', '{% include \'header.html\' %}\r\n\r\n\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:15%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Order is on the way!<br></h2>\r\n    <p style=\"padding:10px;\">For everyone safety is our priority so remember to wash your hands before and after receiving your order<br></p>\r\n    <br>    \r\n    <a href=\"{{order.order_info.tracking_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Track Order\r\n     </a>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n      {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n    <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n{% include \'footer.html\' %}'),
(2072, 10, 'email', 'ja', '', ''),
(2073, 10, 'email', 'ar', '', ''),
(2074, 10, 'sms', 'en', '', ''),
(2075, 10, 'sms', 'ja', '', ''),
(2076, 10, 'sms', 'ar', '', ''),
(2077, 10, 'push', 'en', 'Your order #{{order_id}} is on its way!', 'Your order #{{order_id}} is on its way!'),
(2078, 10, 'push', 'ja', '', ''),
(2079, 10, 'push', 'ar', '', ''),
(2080, 21, 'email', 'en', 'Order is on the way!', '{% include \'header.html\' %}\r\n\r\n\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:15%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Order is on the way!<br></h2>\r\n    <p style=\"padding:10px;\">For everyone safety is our priority so remember to wash your hands before and after receiving your order<br></p>\r\n    <br>    \r\n    <a href=\"{{order.order_info.tracking_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Track Order\r\n     </a>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n      {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n    <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n{% include \'footer.html\' %}'),
(2081, 21, 'email', 'ja', '', ''),
(2082, 21, 'email', 'ar', '', ''),
(2083, 21, 'sms', 'en', '', ''),
(2084, 21, 'sms', 'ja', '', ''),
(2085, 21, 'sms', 'ar', '', ''),
(2086, 21, 'push', 'en', 'Your order #{{order_id}} is on its way!', 'Your order #{{order_id}} is on its way!'),
(2087, 21, 'push', 'ja', '', ''),
(2088, 21, 'push', 'ar', '', ''),
(2089, 23, 'email', 'en', '', ''),
(2090, 23, 'email', 'ja', '', ''),
(2091, 23, 'email', 'ar', '', ''),
(2092, 23, 'sms', 'en', '', ''),
(2093, 23, 'sms', 'ja', '', ''),
(2094, 23, 'sms', 'ar', '', ''),
(2095, 23, 'push', 'en', 'unfortunately your order#{{order_id}} has failed to deliver', 'unfortunately your order#{{order_id}} has failed to deliver'),
(2096, 23, 'push', 'ja', '', ''),
(2097, 23, 'push', 'ar', '', ''),
(2170, 2, 'email', 'en', 'Invoice for your order #{{order_info.order_id}}', '{% include \'header.html\' %}\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;padding-bottom:10px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Invoice #{{additional_data.invoice_number}}</h2>    \r\n   </td>   \r\n </tr>\r\n <tr>\r\n   <td style=\"padding-bottom:10px;background:#ffffff;\" valign=\"middle\">\r\n     <table width=\"80%\" align=\"center\">\r\n      <tbody><tr> \r\n       <td>\r\n        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ullamcorper sapien ullamcorper nibh aliquam, non rutrum orci vulputate. Donec congue ac tortor eu dignissim. Cras a libero lobortis tellus elementum consequat eget vitae turpis. Mauris non lorem odio. Integer in lacus bibendum, accumsan risus nec, pretium felis. Aliquam auctor nec eros a mattis. Praesent eu ligula vitae ex rhoncus aliquam. Pellentesque ut mattis lectus. Maecenas ultrices a lorem et interdum. Mauris lacinia nec libero id tincidunt. Nunc accumsan quis enim vitae pellentesque.</p>        \r\n       </td>\r\n      </tr>\r\n     </tbody></table>\r\n   </td>   \r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n  \r\n     {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"padding:30px;\" align=\"center\">\r\n     <a href=\"{{additional_data.payment_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Pay Now\r\n     </a>\r\n  </td>\r\n </tr>\r\n \r\n  <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n     <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n\r\n{% include \'footer.html\' %}\r\n'),
(2171, 2, 'email', 'ja', '', ''),
(2172, 2, 'email', 'ar', '', ''),
(2173, 2, 'sms', 'en', '', 'Your order #{{order_info.order_id}}, has a balance of {{additional_data.balance}}.\r\npay here {{additional_data.payment_link}}'),
(2174, 2, 'sms', 'ja', '', ''),
(2175, 2, 'sms', 'ar', '', ''),
(2176, 2, 'push', 'en', 'Your order #{{order_id}}, has a balance of {{balance}}. pay here {{payment_link}}', 'Your order #{{order_id}}, has a balance of {{balance}}.\r\npay here {{payment_link}}'),
(2177, 2, 'push', 'ja', '', ''),
(2178, 2, 'push', 'ar', '', ''),
(2179, 24, 'email', 'en', 'Your registration is complete!', '{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n   <table width=\"50%\" align=\"center\">\r\n   <tbody><tr>\r\n    <td>\r\n	\r\n	<p style=\"margin-bottom:10px;\">Hi {{restaurant_name}},</p>\r\n	\r\n	 <p style=\"margin-bottom:10px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis nunc ut metus vulputate imperdiet at eget ipsum. Duis pharetra eros nec purus auctor, ut dapibus nunc convallis. Phasellus pellentesque lorem eros, et molestie velit pulvinar eget. Praesent orci orci, pulvinar ac nisi sit amet, cursus imperdiet mauris. Sed pharetra, nibh non maximus blandit, ex felis sagittis turpis, et porttitor dui nibh a eros. Donec imperdiet non ex molestie consequat. Duis posuere tortor eget nibh imperdiet sollicitudin. Curabitur porta placerat ex, vitae consequat turpis semper in. Integer non nulla justo. Phasellus posuere faucibus erat, ac ornare odio suscipit sed. Cras et erat dui. </p>		\r\n	\r\n	</td>\r\n   </tr>\r\n   </tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),
(2180, 24, 'email', 'ja', '', ''),
(2181, 24, 'email', 'ar', '', ''),
(2182, 24, 'sms', 'en', '', ''),
(2183, 24, 'sms', 'ja', '', ''),
(2184, 24, 'sms', 'ar', '', ''),
(2185, 24, 'push', 'en', '', ''),
(2186, 24, 'push', 'ja', '', ''),
(2187, 24, 'push', 'ar', '', '');
INSERT INTO `st_templates_translation` (`id`, `template_id`, `template_type`, `language`, `title`, `content`) VALUES
(2305, 25, 'email', 'en', 'Welcome to {{site.site_name}}. Confirm your account!', '{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n   <table width=\"50%\" align=\"center\">\r\n   <tbody><tr>\r\n    <td>\r\n	\r\n	<p style=\"margin-bottom:10px;\">Hi {{restaurant_name}},</p>\r\n	\r\n	 <p style=\"margin-bottom:10px;\">Welcome</p>\r\n	 <p>Before you get full access to all features of your restaurant in {{site.site_name}}, please confirm your email address</p>\r\n	\r\n	<div style=\"margin:auto;text-align:center;padding-top:10px; padding-bottom:10px;\">\r\n	 <a href=\"{{confirm_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Confirm email\r\n     </a>\r\n	</div>\r\n	 \r\n	<p style=\"text-align:center;\">or click this link:</p>\r\n	<p style=\"text-align:center;\"><a href=\"{{confirm_link}}\">{{confirm_link}}</a></p>\r\n	\r\n	</td>\r\n   </tr>\r\n   </tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),
(2306, 25, 'email', 'ja', '', ''),
(2307, 25, 'email', 'ar', '', ''),
(2308, 25, 'sms', 'en', '', ''),
(2309, 25, 'sms', 'ja', '', ''),
(2310, 25, 'sms', 'ar', '', ''),
(2311, 25, 'push', 'en', 'Welcome to {{site_name}}. Confirm your account!', 'Welcome to {{site_name}}. Confirm your account!'),
(2312, 25, 'push', 'ja', '', ''),
(2313, 25, 'push', 'ar', '', ''),
(2332, 26, 'email', 'en', 'You have new merchant signup', '{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi <br></p>\r\n	\r\n	<p style=\"margin-bottom: 15px;\">You have new merchant signup.</p>	\r\n	\r\n	<h5>Customer Details</h5>\r\n	<table width=\"60%\">\r\n	 <tbody><tr>\r\n	  <td width=\"25%\">Restaurant name<br></td>\r\n	  <td>{{restaurant_name}}</td>\r\n	 </tr>\r\n	 <tr>\r\n	  <td>Address<br></td>\r\n	  <td>{{address}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Membership Program<br></td>\r\n	  <td>{{plan_title}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Phone number</td>\r\n	  <td>{{contact_phone}}</td>\r\n	 </tr><tr><td>Email address<br></td><td>{{contact_email}}<br></td></tr>	 \r\n	</tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),
(2333, 26, 'email', 'ja', '', ''),
(2334, 26, 'email', 'ar', '', ''),
(2335, 26, 'sms', 'en', '', ''),
(2336, 26, 'sms', 'ja', '', ''),
(2337, 26, 'sms', 'ar', '', ''),
(2338, 26, 'push', 'en', 'You have new merchant signup', 'You have new merchant signup'),
(2339, 26, 'push', 'ja', '', ''),
(2340, 26, 'push', 'ar', '', ''),
(2350, 28, 'email', 'en', 'Your membership will expired on {{expiration_date}}', '{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi {{restaurant_name}}<br></p>\r\n	\r\n	<p>Your&nbsp; membership will expired on {{expiration_date}}.</p>	\r\n	\r\n	\r\n	\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),
(2351, 28, 'email', 'ja', '', ''),
(2352, 28, 'email', 'ar', '', ''),
(2353, 28, 'sms', 'en', '', ''),
(2354, 28, 'sms', 'ja', '', ''),
(2355, 28, 'sms', 'ar', '', ''),
(2356, 28, 'push', 'en', 'Your membership will expired on {{expiration_date}}', 'Your membership will expired on {{expiration_date}}'),
(2357, 28, 'push', 'ja', '', ''),
(2358, 28, 'push', 'ar', '', ''),
(2359, 27, 'email', 'en', 'Your membership has expired', '{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi {{restaurant_name}}<br></p>\r\n	\r\n	<p>Your&nbsp; membership has expired.</p>	\r\n	\r\n	\r\n	\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),
(2360, 27, 'email', 'ja', '', ''),
(2361, 27, 'email', 'ar', '', ''),
(2362, 27, 'sms', 'en', '', ''),
(2363, 27, 'sms', 'ja', '', ''),
(2364, 27, 'sms', 'ar', '', ''),
(2365, 27, 'push', 'en', 'Your membership has expired', 'Your membership has expired'),
(2366, 27, 'push', 'ja', '', ''),
(2367, 27, 'push', 'ar', '', ''),
(2377, 3, 'email', 'en', 'Refund for your #{{order_info.order_id}}', '{% include \'header.html\' %}\r\n\r\n\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:15%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n   \r\n\r\n    <p style=\"padding-bottom:15px\">Hi {{order_info.customer_name}},</p>\r\n	<p style=\"line-height:20px;\">\r\n	Good News! We’ve processed your full refund of {{additional_data.refund_amount}} for your item(s) from order #{{order_info.order_id}}.\r\n	</p>\r\n	\r\n	<p style=\"line-height:20px;\">Reversal may take 1 to 2 billing cycles or 5 to 15 banking days for local credit cards, and up to 45 banking days for international credit and debit cards, depending on your bank\'s processing time.</p>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n      {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n    <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>�?</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n{% include \'footer.html\' %}'),
(2378, 3, 'email', 'ja', '', ''),
(2379, 3, 'email', 'ar', '', ''),
(2380, 3, 'sms', 'en', '', ''),
(2381, 3, 'sms', 'ja', '', ''),
(2382, 3, 'sms', 'ar', '', ''),
(2383, 3, 'push', 'en', 'Your refund has been process for order #{{order_info.order_id}} ', 'Your refund has been process for order #{{order_info.order_id}} '),
(2384, 3, 'push', 'ja', '', ''),
(2385, 3, 'push', 'ar', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `st_voucher_new`
--

CREATE TABLE `st_voucher_new` (
  `voucher_id` int(14) NOT NULL,
  `voucher_owner` varchar(255) NOT NULL DEFAULT 'merchant',
  `merchant_id` int(14) NOT NULL DEFAULT '0',
  `joining_merchant` text,
  `voucher_name` varchar(255) NOT NULL DEFAULT '',
  `voucher_type` varchar(255) NOT NULL DEFAULT '',
  `amount` float(14,4) NOT NULL DEFAULT '0.0000',
  `expiration` date DEFAULT NULL,
  `used_once` int(1) NOT NULL DEFAULT '1',
  `min_order` float(14,5) NOT NULL DEFAULT '0.00000',
  `monday` int(1) NOT NULL DEFAULT '0',
  `tuesday` int(1) NOT NULL DEFAULT '0',
  `wednesday` int(1) NOT NULL DEFAULT '0',
  `thursday` int(1) NOT NULL DEFAULT '0',
  `friday` int(1) NOT NULL DEFAULT '0',
  `saturday` int(1) NOT NULL DEFAULT '0',
  `sunday` int(1) NOT NULL DEFAULT '0',
  `max_number_use` int(14) NOT NULL DEFAULT '0',
  `selected_customer` text,
  `status` varchar(100) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_wallet_cards`
--

CREATE TABLE `st_wallet_cards` (
  `card_id` bigint(20) NOT NULL,
  `card_uuid` varchar(50) NOT NULL DEFAULT '',
  `account_type` varchar(50) NOT NULL DEFAULT '',
  `account_id` bigint(20) NOT NULL DEFAULT '0',
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `st_wallet_cards`
--

INSERT INTO `st_wallet_cards` (`card_id`, `card_uuid`, `account_type`, `account_id`, `date_created`, `date_modified`, `ip_address`) VALUES
(1, '8722736e-7eb4-11ec-aa6d-9c5c8e164c2c', 'admin', 0, '2022-01-26 14:30:36', NULL, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `st_wallet_transactions`
--

CREATE TABLE `st_wallet_transactions` (
  `transaction_id` bigint(20) NOT NULL,
  `transaction_uuid` varchar(100) NOT NULL DEFAULT '',
  `card_id` bigint(20) NOT NULL DEFAULT '0',
  `transaction_date` timestamp NULL DEFAULT NULL,
  `transaction_description` varchar(255) NOT NULL DEFAULT '',
  `transaction_description_parameters` varchar(255) NOT NULL DEFAULT '',
  `transaction_type` varchar(50) NOT NULL DEFAULT '',
  `transaction_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `running_balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` varchar(100) NOT NULL DEFAULT 'paid',
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_wallet_transactions_meta`
--

CREATE TABLE `st_wallet_transactions_meta` (
  `id` bigint(20) NOT NULL,
  `transaction_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_name` varchar(100) NOT NULL DEFAULT '',
  `meta_value` text,
  `date_created` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `st_zones`
--

CREATE TABLE `st_zones` (
  `zone_id` bigint(20) NOT NULL,
  `zone_uuid` varchar(50) NOT NULL DEFAULT '',
  `merchant_id` bigint(20) DEFAULT '0',
  `zone_name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `st_admin_meta`
--
ALTER TABLE `st_admin_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `meta_name` (`meta_name`);

--
-- Indexes for table `st_admin_meta_translation`
--
ALTER TABLE `st_admin_meta_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_id` (`meta_id`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `st_admin_user`
--
ALTER TABLE `st_admin_user`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `username` (`username`),
  ADD KEY `password` (`password`),
  ADD KEY `admin_id_token` (`admin_id_token`),
  ADD KEY `email_address` (`email_address`),
  ADD KEY `contact_number` (`contact_number`);

--
-- Indexes for table `st_availability`
--
ALTER TABLE `st_availability`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `meta_name` (`meta_name`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_cache`
--
ALTER TABLE `st_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `st_cart`
--
ALTER TABLE `st_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_uuid` (`cart_uuid`),
  ADD KEY `item_token` (`item_token`),
  ADD KEY `item_size_id` (`item_size_id`),
  ADD KEY `cart_row` (`cart_row`);

--
-- Indexes for table `st_cart_addons`
--
ALTER TABLE `st_cart_addons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_row` (`cart_row`),
  ADD KEY `cart_uuid` (`cart_uuid`),
  ADD KEY `subcat_id` (`subcat_id`),
  ADD KEY `sub_item_id` (`sub_item_id`);

--
-- Indexes for table `st_cart_attributes`
--
ALTER TABLE `st_cart_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_row` (`cart_row`),
  ADD KEY `cart_uuid` (`cart_uuid`),
  ADD KEY `meta_name` (`meta_name`);

--
-- Indexes for table `st_category`
--
ALTER TABLE `st_category`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `category_name` (`category_name`),
  ADD KEY `status` (`status`),
  ADD KEY `sequence` (`sequence`);

--
-- Indexes for table `st_category_relationship_dish`
--
ALTER TABLE `st_category_relationship_dish`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `dish_id` (`dish_id`);

--
-- Indexes for table `st_category_translation`
--
ALTER TABLE `st_category_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `st_client`
--
ALTER TABLE `st_client`
  ADD PRIMARY KEY (`client_id`),
  ADD KEY `social_strategy` (`social_strategy`),
  ADD KEY `email_address` (`email_address`),
  ADD KEY `password` (`password`),
  ADD KEY `contact_phone` (`contact_phone`),
  ADD KEY `status` (`status`),
  ADD KEY `token` (`token`),
  ADD KEY `mobile_verification_code` (`mobile_verification_code`),
  ADD KEY `social_id` (`social_id`);

--
-- Indexes for table `st_client_address`
--
ALTER TABLE `st_client_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `place_id` (`place_id`),
  ADD KEY `address_uuid` (`address_uuid`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `st_client_cc`
--
ALTER TABLE `st_client_cc`
  ADD PRIMARY KEY (`cc_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `st_client_meta`
--
ALTER TABLE `st_client_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `meta1` (`meta1`),
  ADD KEY `meta2` (`meta2`),
  ADD KEY `meta3` (`meta3`),
  ADD KEY `meta4` (`meta4`);

--
-- Indexes for table `st_client_payment_method`
--
ALTER TABLE `st_client_payment_method`
  ADD PRIMARY KEY (`payment_method_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `payment_uuid` (`payment_uuid`),
  ADD KEY `payment_code` (`payment_code`),
  ADD KEY `merchant_id` (`merchant_id`);

--
-- Indexes for table `st_cooking_ref`
--
ALTER TABLE `st_cooking_ref`
  ADD PRIMARY KEY (`cook_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `cooking_name` (`cooking_name`),
  ADD KEY `sequence` (`sequence`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_cooking_ref_translation`
--
ALTER TABLE `st_cooking_ref_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cook_id` (`cook_id`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `st_cuisine`
--
ALTER TABLE `st_cuisine`
  ADD PRIMARY KEY (`cuisine_id`),
  ADD KEY `cuisine_name` (`cuisine_name`),
  ADD KEY `sequence` (`sequence`);

--
-- Indexes for table `st_cuisine_merchant`
--
ALTER TABLE `st_cuisine_merchant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `cuisine_id` (`cuisine_id`);

--
-- Indexes for table `st_cuisine_translation`
--
ALTER TABLE `st_cuisine_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuisine_id` (`cuisine_id`),
  ADD KEY `language` (`language`),
  ADD KEY `cuisine_name` (`cuisine_name`);

--
-- Indexes for table `st_currency`
--
ALTER TABLE `st_currency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency_symbol` (`currency_symbol`),
  ADD KEY `currency_code` (`currency_code`);

--
-- Indexes for table `st_device`
--
ALTER TABLE `st_device`
  ADD PRIMARY KEY (`device_id`),
  ADD KEY `user_type` (`user_type`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `platform` (`platform`),
  ADD KEY `device_uiid` (`device_uiid`),
  ADD KEY `enabled` (`enabled`);

--
-- Indexes for table `st_device_meta`
--
ALTER TABLE `st_device_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_id` (`device_id`),
  ADD KEY `meta_name` (`meta_name`);

--
-- Indexes for table `st_dishes`
--
ALTER TABLE `st_dishes`
  ADD PRIMARY KEY (`dish_id`),
  ADD KEY `dish_name` (`dish_name`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_dishes_translation`
--
ALTER TABLE `st_dishes_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dish_id` (`dish_id`),
  ADD KEY `language` (`language`),
  ADD KEY `dish_name` (`dish_name`);

--
-- Indexes for table `st_email_logs`
--
ALTER TABLE `st_email_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_address` (`email_address`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_email_provider`
--
ALTER TABLE `st_email_provider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provider_id` (`provider_id`),
  ADD KEY `provider_name` (`provider_name`);

--
-- Indexes for table `st_favorites`
--
ALTER TABLE `st_favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fav_type` (`fav_type`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `merchant_id` (`merchant_id`);

--
-- Indexes for table `st_featured_location`
--
ALTER TABLE `st_featured_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `featured_name` (`featured_name`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_gpdr_request`
--
ALTER TABLE `st_gpdr_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_type` (`request_type`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_ingredients`
--
ALTER TABLE `st_ingredients`
  ADD PRIMARY KEY (`ingredients_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `status` (`status`),
  ADD KEY `ingredients_name` (`ingredients_name`);

--
-- Indexes for table `st_ingredients_translation`
--
ALTER TABLE `st_ingredients_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingredients_id` (`ingredients_id`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `st_inventory_supplier`
--
ALTER TABLE `st_inventory_supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD KEY `merchant_id` (`merchant_id`);

--
-- Indexes for table `st_item`
--
ALTER TABLE `st_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `item_name` (`item_name`),
  ADD KEY `status` (`status`),
  ADD KEY `is_featured` (`is_featured`),
  ADD KEY `points_earned` (`points_earned`);

--
-- Indexes for table `st_item_meta`
--
ALTER TABLE `st_item_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `meta_name` (`meta_name`),
  ADD KEY `meta_id` (`meta_id`),
  ADD KEY `merchant_id` (`merchant_id`);

--
-- Indexes for table `st_item_promo`
--
ALTER TABLE `st_item_promo`
  ADD PRIMARY KEY (`promo_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_id_promo` (`item_id_promo`),
  ADD KEY `merchant_id` (`merchant_id`);

--
-- Indexes for table `st_item_relationship_category`
--
ALTER TABLE `st_item_relationship_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `st_item_relationship_size`
--
ALTER TABLE `st_item_relationship_size`
  ADD PRIMARY KEY (`item_size_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `item_token` (`item_token`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `size_id` (`size_id`);

--
-- Indexes for table `st_item_relationship_subcategory`
--
ALTER TABLE `st_item_relationship_subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `subcat_id` (`subcat_id`);

--
-- Indexes for table `st_item_relationship_subcategory_item`
--
ALTER TABLE `st_item_relationship_subcategory_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `subcat_id` (`subcat_id`),
  ADD KEY `sub_item_id` (`sub_item_id`);

--
-- Indexes for table `st_item_translation`
--
ALTER TABLE `st_item_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `language` (`language`),
  ADD KEY `item_name` (`item_name`);

--
-- Indexes for table `st_language`
--
ALTER TABLE `st_language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_location_area`
--
ALTER TABLE `st_location_area`
  ADD PRIMARY KEY (`area_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `sequence` (`sequence`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `st_location_cities`
--
ALTER TABLE `st_location_cities`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `postal_code` (`postal_code`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `sequence` (`sequence`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `st_location_countries`
--
ALTER TABLE `st_location_countries`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `shortcode` (`shortcode`);

--
-- Indexes for table `st_location_rate`
--
ALTER TABLE `st_location_rate`
  ADD PRIMARY KEY (`rate_id`);

--
-- Indexes for table `st_location_states`
--
ALTER TABLE `st_location_states`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `sequence` (`sequence`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `st_map_places`
--
ALTER TABLE `st_map_places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reference_type` (`reference_type`),
  ADD KEY `reference_id` (`reference_id`);

--
-- Indexes for table `st_media_files`
--
ALTER TABLE `st_media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `meta_name` (`meta_name`);

--
-- Indexes for table `st_menu`
--
ALTER TABLE `st_menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type` (`menu_type`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `status` (`status`),
  ADD KEY `visible` (`visible`);

--
-- Indexes for table `st_merchant`
--
ALTER TABLE `st_merchant`
  ADD PRIMARY KEY (`merchant_id`),
  ADD KEY `restaurant_slug` (`restaurant_slug`),
  ADD KEY `restaurant_name` (`restaurant_name`),
  ADD KEY `username` (`username`),
  ADD KEY `password` (`password`),
  ADD KEY `status` (`status`),
  ADD KEY `is_featured` (`is_featured`),
  ADD KEY `is_ready` (`is_ready`),
  ADD KEY `is_sponsored` (`is_sponsored`),
  ADD KEY `is_commission` (`is_commission`),
  ADD KEY `percent_commision` (`percent_commision`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `latitude` (`latitude`),
  ADD KEY `lontitude` (`lontitude`),
  ADD KEY `merchant_type` (`merchant_type`),
  ADD KEY `close_store` (`close_store`);

--
-- Indexes for table `st_merchant_meta`
--
ALTER TABLE `st_merchant_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `meta_name` (`meta_name`);

--
-- Indexes for table `st_merchant_payment_method`
--
ALTER TABLE `st_merchant_payment_method`
  ADD PRIMARY KEY (`payment_method_id`),
  ADD KEY `merchant_id` (`merchant_id`);

--
-- Indexes for table `st_merchant_type`
--
ALTER TABLE `st_merchant_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `commision_type` (`commision_type`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_merchant_type_translation`
--
ALTER TABLE `st_merchant_type_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `st_merchant_user`
--
ALTER TABLE `st_merchant_user`
  ADD PRIMARY KEY (`merchant_user_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `username` (`username`),
  ADD KEY `password` (`password`),
  ADD KEY `status` (`status`),
  ADD KEY `session_token` (`session_token`),
  ADD KEY `user_uuid` (`user_uuid`);

--
-- Indexes for table `st_notifications`
--
ALTER TABLE `st_notifications`
  ADD PRIMARY KEY (`notification_uuid`),
  ADD KEY `notication_channel` (`notication_channel`),
  ADD KEY `notification_type` (`notification_type`);

--
-- Indexes for table `st_offers`
--
ALTER TABLE `st_offers`
  ADD PRIMARY KEY (`offers_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_opening_hours`
--
ALTER TABLE `st_opening_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `day` (`day`),
  ADD KEY `status` (`status`),
  ADD KEY `start_time` (`start_time`),
  ADD KEY `end_time` (`end_time`),
  ADD KEY `start_time_pm` (`start_time_pm`),
  ADD KEY `end_time_pm` (`end_time_pm`),
  ADD KEY `custom_text` (`custom_text`),
  ADD KEY `day_of_week` (`day_of_week`);

--
-- Indexes for table `st_option`
--
ALTER TABLE `st_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `option_name` (`option_name`);

--
-- Indexes for table `st_ordernew`
--
ALTER TABLE `st_ordernew`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_uuid` (`order_uuid`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `service_code` (`service_code`),
  ADD KEY `payment_code` (`payment_code`),
  ADD KEY `status` (`status`),
  ADD KEY `payment_status` (`payment_status`),
  ADD KEY `is_critical` (`is_critical`);

--
-- Indexes for table `st_ordernew_additional_charge`
--
ALTER TABLE `st_ordernew_additional_charge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `item_row` (`item_row`);

--
-- Indexes for table `st_ordernew_addons`
--
ALTER TABLE `st_ordernew_addons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `item_row` (`item_row`),
  ADD KEY `subcat_id` (`subcat_id`),
  ADD KEY `sub_item_id` (`sub_item_id`);

--
-- Indexes for table `st_ordernew_attributes`
--
ALTER TABLE `st_ordernew_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `item_row` (`item_row`),
  ADD KEY `meta_name` (`meta_name`);

--
-- Indexes for table `st_ordernew_history`
--
ALTER TABLE `st_ordernew_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `st_ordernew_item`
--
ALTER TABLE `st_ordernew_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `item_row` (`item_row`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `item_token` (`item_token`),
  ADD KEY `item_size_id` (`item_size_id`);

--
-- Indexes for table `st_ordernew_meta`
--
ALTER TABLE `st_ordernew_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `meta_name` (`meta_name`);

--
-- Indexes for table `st_ordernew_summary_transaction`
--
ALTER TABLE `st_ordernew_summary_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `transaction_uuid` (`transaction_uuid`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_ordernew_transaction`
--
ALTER TABLE `st_ordernew_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `payment_code` (`payment_code`),
  ADD KEY `status` (`status`),
  ADD KEY `transaction_type` (`transaction_type`);

--
-- Indexes for table `st_ordernew_trans_meta`
--
ALTER TABLE `st_ordernew_trans_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `meta_name` (`meta_name`);

--
-- Indexes for table `st_order_settings_buttons`
--
ALTER TABLE `st_order_settings_buttons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uuid` (`uuid`),
  ADD KEY `group_name` (`group_name`),
  ADD KEY `stats_id` (`stats_id`),
  ADD KEY `do_actions` (`do_actions`),
  ADD KEY `order_type` (`order_type`);

--
-- Indexes for table `st_order_settings_tabs`
--
ALTER TABLE `st_order_settings_tabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_name` (`group_name`),
  ADD KEY `stats_id` (`stats_id`);

--
-- Indexes for table `st_order_status`
--
ALTER TABLE `st_order_status`
  ADD PRIMARY KEY (`stats_id`),
  ADD KEY `merchant_id` (`merchant_id`);

--
-- Indexes for table `st_order_status_actions`
--
ALTER TABLE `st_order_status_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `stats_id` (`stats_id`);

--
-- Indexes for table `st_order_status_translation`
--
ALTER TABLE `st_order_status_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stats_id` (`stats_id`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `st_order_time_management`
--
ALTER TABLE `st_order_time_management`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `transaction_type` (`transaction_type`),
  ADD KEY `days` (`days`),
  ADD KEY `start_time` (`start_time`),
  ADD KEY `end_time` (`end_time`);

--
-- Indexes for table `st_package_details`
--
ALTER TABLE `st_package_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_id` (`package_id`);

--
-- Indexes for table `st_pages`
--
ALTER TABLE `st_pages`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `slug` (`slug`),
  ADD KEY `title` (`title`),
  ADD KEY `page_type` (`page_type`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_pages_translation`
--
ALTER TABLE `st_pages_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `st_payment_gateway`
--
ALTER TABLE `st_payment_gateway`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `payment_code` (`payment_code`),
  ADD KEY `is_online` (`is_online`),
  ADD KEY `is_payout` (`is_payout`),
  ADD KEY `is_plan` (`is_plan`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_payment_gateway_merchant`
--
ALTER TABLE `st_payment_gateway_merchant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_uuid` (`payment_uuid`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `payment_code` (`payment_code`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_payment_method_meta`
--
ALTER TABLE `st_payment_method_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `meta_name` (`meta_name`);

--
-- Indexes for table `st_plans`
--
ALTER TABLE `st_plans`
  ADD PRIMARY KEY (`package_id`),
  ADD KEY `status` (`status`),
  ADD KEY `package_uuid` (`package_uuid`),
  ADD KEY `plan_type` (`plan_type`);

--
-- Indexes for table `st_plans_invoice`
--
ALTER TABLE `st_plans_invoice`
  ADD PRIMARY KEY (`invoice_number`),
  ADD KEY `invoice_uuid` (`invoice_uuid`),
  ADD KEY `invoice_type` (`invoice_type`),
  ADD KEY `payment_code` (`payment_code`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_plans_translation`
--
ALTER TABLE `st_plans_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `st_push`
--
ALTER TABLE `st_push`
  ADD PRIMARY KEY (`push_uuid`),
  ADD KEY `push_type` (`push_type`),
  ADD KEY `provider` (`provider`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_review`
--
ALTER TABLE `st_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `rating` (`rating`),
  ADD KEY `status` (`status`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `st_review_meta`
--
ALTER TABLE `st_review_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_id` (`review_id`),
  ADD KEY `meta_name` (`meta_name`);

--
-- Indexes for table `st_role`
--
ALTER TABLE `st_role`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `role_type` (`role_type`),
  ADD KEY `merchant_id` (`merchant_id`);

--
-- Indexes for table `st_role_access`
--
ALTER TABLE `st_role_access`
  ADD PRIMARY KEY (`role_access_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `st_services`
--
ALTER TABLE `st_services`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `service_code` (`service_code`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_services_fee`
--
ALTER TABLE `st_services_fee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `merchant_id` (`merchant_id`);

--
-- Indexes for table `st_services_translation`
--
ALTER TABLE `st_services_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `st_shipping_rate`
--
ALTER TABLE `st_shipping_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `service_code` (`service_code`),
  ADD KEY `charge_type` (`charge_type`),
  ADD KEY `shipping_type` (`shipping_type`);

--
-- Indexes for table `st_size`
--
ALTER TABLE `st_size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `size_name` (`size_name`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_size_translation`
--
ALTER TABLE `st_size_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `size_id` (`size_id`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `st_sms_broadcast`
--
ALTER TABLE `st_sms_broadcast`
  ADD PRIMARY KEY (`broadcast_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `send_to` (`send_to`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_sms_broadcast_details`
--
ALTER TABLE `st_sms_broadcast_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `broadcast_id` (`broadcast_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `status` (`status`),
  ADD KEY `gateway` (`gateway`);

--
-- Indexes for table `st_sms_provider`
--
ALTER TABLE `st_sms_provider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provider_id` (`provider_id`),
  ADD KEY `as_default` (`as_default`);

--
-- Indexes for table `st_status_management`
--
ALTER TABLE `st_status_management`
  ADD PRIMARY KEY (`status_id`),
  ADD KEY `group_name` (`group_name`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_status_management_translation`
--
ALTER TABLE `st_status_management_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `language` (`language`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `st_subcategory`
--
ALTER TABLE `st_subcategory`
  ADD PRIMARY KEY (`subcat_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `subcategory_name` (`subcategory_name`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_subcategory_item`
--
ALTER TABLE `st_subcategory_item`
  ADD PRIMARY KEY (`sub_item_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `sub_item_name` (`sub_item_name`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_subcategory_item_relationships`
--
ALTER TABLE `st_subcategory_item_relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_item_id` (`sub_item_id`),
  ADD KEY `subcat_id` (`subcat_id`);

--
-- Indexes for table `st_subcategory_item_translation`
--
ALTER TABLE `st_subcategory_item_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_item_id` (`sub_item_id`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `st_subcategory_translation`
--
ALTER TABLE `st_subcategory_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcat_id` (`subcat_id`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `st_tags`
--
ALTER TABLE `st_tags`
  ADD PRIMARY KEY (`tag_id`),
  ADD KEY `tag_name` (`tag_name`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `st_tags_relationship`
--
ALTER TABLE `st_tags_relationship`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banner_id` (`banner_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `st_tags_translation`
--
ALTER TABLE `st_tags_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_id` (`tag_id`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `st_tax`
--
ALTER TABLE `st_tax`
  ADD PRIMARY KEY (`tax_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `st_templates`
--
ALTER TABLE `st_templates`
  ADD PRIMARY KEY (`template_id`),
  ADD KEY `template_key` (`template_key`),
  ADD KEY `enabled_email` (`enabled_email`),
  ADD KEY `enabled_sms` (`enabled_sms`),
  ADD KEY `enabled_push` (`enabled_push`);

--
-- Indexes for table `st_templates_translation`
--
ALTER TABLE `st_templates_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template_id` (`template_id`),
  ADD KEY `language` (`language`),
  ADD KEY `template_type` (`template_type`);

--
-- Indexes for table `st_voucher_new`
--
ALTER TABLE `st_voucher_new`
  ADD PRIMARY KEY (`voucher_id`),
  ADD KEY `voucher_name` (`voucher_name`),
  ADD KEY `status` (`status`),
  ADD KEY `voucher_owner` (`voucher_owner`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `voucher_type` (`voucher_type`);

--
-- Indexes for table `st_wallet_cards`
--
ALTER TABLE `st_wallet_cards`
  ADD PRIMARY KEY (`card_id`),
  ADD KEY `card_uuid` (`card_uuid`),
  ADD KEY `account_type` (`account_type`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `st_wallet_transactions`
--
ALTER TABLE `st_wallet_transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `card_id` (`card_id`),
  ADD KEY `transaction_uuid` (`transaction_uuid`),
  ADD KEY `transaction_type` (`transaction_type`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `st_wallet_transactions_meta`
--
ALTER TABLE `st_wallet_transactions_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `meta_name` (`meta_name`);

--
-- Indexes for table `st_zones`
--
ALTER TABLE `st_zones`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `zone_name` (`zone_name`),
  ADD KEY `zone_uuid` (`zone_uuid`),
  ADD KEY `merchant_id` (`merchant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `st_admin_meta`
--
ALTER TABLE `st_admin_meta`
  MODIFY `meta_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `st_admin_meta_translation`
--
ALTER TABLE `st_admin_meta_translation`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `st_admin_user`
--
ALTER TABLE `st_admin_user`
  MODIFY `admin_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `st_availability`
--
ALTER TABLE `st_availability`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_cache`
--
ALTER TABLE `st_cache`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `st_cart`
--
ALTER TABLE `st_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_cart_addons`
--
ALTER TABLE `st_cart_addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_cart_attributes`
--
ALTER TABLE `st_cart_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_category`
--
ALTER TABLE `st_category`
  MODIFY `cat_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_category_relationship_dish`
--
ALTER TABLE `st_category_relationship_dish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_category_translation`
--
ALTER TABLE `st_category_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_client`
--
ALTER TABLE `st_client`
  MODIFY `client_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_client_address`
--
ALTER TABLE `st_client_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_client_cc`
--
ALTER TABLE `st_client_cc`
  MODIFY `cc_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_client_meta`
--
ALTER TABLE `st_client_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_client_payment_method`
--
ALTER TABLE `st_client_payment_method`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_cooking_ref`
--
ALTER TABLE `st_cooking_ref`
  MODIFY `cook_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_cooking_ref_translation`
--
ALTER TABLE `st_cooking_ref_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_cuisine`
--
ALTER TABLE `st_cuisine`
  MODIFY `cuisine_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `st_cuisine_merchant`
--
ALTER TABLE `st_cuisine_merchant`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_cuisine_translation`
--
ALTER TABLE `st_cuisine_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `st_currency`
--
ALTER TABLE `st_currency`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `st_device`
--
ALTER TABLE `st_device`
  MODIFY `device_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_device_meta`
--
ALTER TABLE `st_device_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_dishes`
--
ALTER TABLE `st_dishes`
  MODIFY `dish_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_dishes_translation`
--
ALTER TABLE `st_dishes_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_email_logs`
--
ALTER TABLE `st_email_logs`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_email_provider`
--
ALTER TABLE `st_email_provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `st_favorites`
--
ALTER TABLE `st_favorites`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_featured_location`
--
ALTER TABLE `st_featured_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_gpdr_request`
--
ALTER TABLE `st_gpdr_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_ingredients`
--
ALTER TABLE `st_ingredients`
  MODIFY `ingredients_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_ingredients_translation`
--
ALTER TABLE `st_ingredients_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_inventory_supplier`
--
ALTER TABLE `st_inventory_supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_item`
--
ALTER TABLE `st_item`
  MODIFY `item_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_item_meta`
--
ALTER TABLE `st_item_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_item_promo`
--
ALTER TABLE `st_item_promo`
  MODIFY `promo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_item_relationship_category`
--
ALTER TABLE `st_item_relationship_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_item_relationship_size`
--
ALTER TABLE `st_item_relationship_size`
  MODIFY `item_size_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_item_relationship_subcategory`
--
ALTER TABLE `st_item_relationship_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_item_relationship_subcategory_item`
--
ALTER TABLE `st_item_relationship_subcategory_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_item_translation`
--
ALTER TABLE `st_item_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_language`
--
ALTER TABLE `st_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `st_location_area`
--
ALTER TABLE `st_location_area`
  MODIFY `area_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_location_cities`
--
ALTER TABLE `st_location_cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_location_countries`
--
ALTER TABLE `st_location_countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `st_location_rate`
--
ALTER TABLE `st_location_rate`
  MODIFY `rate_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_location_states`
--
ALTER TABLE `st_location_states`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_map_places`
--
ALTER TABLE `st_map_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_media_files`
--
ALTER TABLE `st_media_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_menu`
--
ALTER TABLE `st_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT for table `st_merchant`
--
ALTER TABLE `st_merchant`
  MODIFY `merchant_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_merchant_meta`
--
ALTER TABLE `st_merchant_meta`
  MODIFY `meta_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_merchant_payment_method`
--
ALTER TABLE `st_merchant_payment_method`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_merchant_type`
--
ALTER TABLE `st_merchant_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `st_merchant_type_translation`
--
ALTER TABLE `st_merchant_type_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `st_merchant_user`
--
ALTER TABLE `st_merchant_user`
  MODIFY `merchant_user_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_offers`
--
ALTER TABLE `st_offers`
  MODIFY `offers_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_opening_hours`
--
ALTER TABLE `st_opening_hours`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `st_option`
--
ALTER TABLE `st_option`
  MODIFY `id` int(14) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `st_ordernew`
--
ALTER TABLE `st_ordernew`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_ordernew_additional_charge`
--
ALTER TABLE `st_ordernew_additional_charge`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_ordernew_addons`
--
ALTER TABLE `st_ordernew_addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_ordernew_attributes`
--
ALTER TABLE `st_ordernew_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_ordernew_history`
--
ALTER TABLE `st_ordernew_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_ordernew_item`
--
ALTER TABLE `st_ordernew_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_ordernew_meta`
--
ALTER TABLE `st_ordernew_meta`
  MODIFY `meta_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_ordernew_summary_transaction`
--
ALTER TABLE `st_ordernew_summary_transaction`
  MODIFY `transaction_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_ordernew_transaction`
--
ALTER TABLE `st_ordernew_transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_ordernew_trans_meta`
--
ALTER TABLE `st_ordernew_trans_meta`
  MODIFY `meta_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_order_settings_buttons`
--
ALTER TABLE `st_order_settings_buttons`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `st_order_settings_tabs`
--
ALTER TABLE `st_order_settings_tabs`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `st_order_status`
--
ALTER TABLE `st_order_status`
  MODIFY `stats_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `st_order_status_actions`
--
ALTER TABLE `st_order_status_actions`
  MODIFY `action_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `st_order_status_translation`
--
ALTER TABLE `st_order_status_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `st_order_time_management`
--
ALTER TABLE `st_order_time_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_package_details`
--
ALTER TABLE `st_package_details`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_pages`
--
ALTER TABLE `st_pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `st_pages_translation`
--
ALTER TABLE `st_pages_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `st_payment_gateway`
--
ALTER TABLE `st_payment_gateway`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `st_payment_gateway_merchant`
--
ALTER TABLE `st_payment_gateway_merchant`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_payment_method_meta`
--
ALTER TABLE `st_payment_method_meta`
  MODIFY `id` bigint(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_plans`
--
ALTER TABLE `st_plans`
  MODIFY `package_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_plans_invoice`
--
ALTER TABLE `st_plans_invoice`
  MODIFY `invoice_number` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_plans_translation`
--
ALTER TABLE `st_plans_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_review`
--
ALTER TABLE `st_review`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_review_meta`
--
ALTER TABLE `st_review_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_role`
--
ALTER TABLE `st_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_role_access`
--
ALTER TABLE `st_role_access`
  MODIFY `role_access_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_services`
--
ALTER TABLE `st_services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `st_services_fee`
--
ALTER TABLE `st_services_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `st_services_translation`
--
ALTER TABLE `st_services_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `st_shipping_rate`
--
ALTER TABLE `st_shipping_rate`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_size`
--
ALTER TABLE `st_size`
  MODIFY `size_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_size_translation`
--
ALTER TABLE `st_size_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_sms_broadcast`
--
ALTER TABLE `st_sms_broadcast`
  MODIFY `broadcast_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_sms_broadcast_details`
--
ALTER TABLE `st_sms_broadcast_details`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_sms_provider`
--
ALTER TABLE `st_sms_provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `st_status_management`
--
ALTER TABLE `st_status_management`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `st_status_management_translation`
--
ALTER TABLE `st_status_management_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `st_subcategory`
--
ALTER TABLE `st_subcategory`
  MODIFY `subcat_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_subcategory_item`
--
ALTER TABLE `st_subcategory_item`
  MODIFY `sub_item_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_subcategory_item_relationships`
--
ALTER TABLE `st_subcategory_item_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_subcategory_item_translation`
--
ALTER TABLE `st_subcategory_item_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_subcategory_translation`
--
ALTER TABLE `st_subcategory_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_tags`
--
ALTER TABLE `st_tags`
  MODIFY `tag_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_tags_relationship`
--
ALTER TABLE `st_tags_relationship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_tags_translation`
--
ALTER TABLE `st_tags_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_tax`
--
ALTER TABLE `st_tax`
  MODIFY `tax_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_templates`
--
ALTER TABLE `st_templates`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `st_templates_translation`
--
ALTER TABLE `st_templates_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2386;

--
-- AUTO_INCREMENT for table `st_voucher_new`
--
ALTER TABLE `st_voucher_new`
  MODIFY `voucher_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_wallet_cards`
--
ALTER TABLE `st_wallet_cards`
  MODIFY `card_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `st_wallet_transactions`
--
ALTER TABLE `st_wallet_transactions`
  MODIFY `transaction_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_wallet_transactions_meta`
--
ALTER TABLE `st_wallet_transactions_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_zones`
--
ALTER TABLE `st_zones`
  MODIFY `zone_id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
