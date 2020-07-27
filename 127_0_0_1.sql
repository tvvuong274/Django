-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2020 at 08:19 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `d`
--
CREATE DATABASE IF NOT EXISTS `d` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `d`;
--
-- Database: `dblib`
--
CREATE DATABASE IF NOT EXISTS `dblib` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dblib`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add borrower', 7, 'add_borrower'),
(26, 'Can change borrower', 7, 'change_borrower'),
(27, 'Can delete borrower', 7, 'delete_borrower'),
(28, 'Can view borrower', 7, 'view_borrower'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add book', 9, 'add_book'),
(34, 'Can change book', 9, 'change_book'),
(35, 'Can delete book', 9, 'delete_book'),
(36, 'Can view book', 9, 'view_book'),
(37, 'Can add borrow_book', 10, 'add_borrow_book'),
(38, 'Can change borrow_book', 10, 'change_borrow_book'),
(39, 'Can delete borrow_book', 10, 'delete_borrow_book'),
(40, 'Can view borrow_book', 10, 'view_borrow_book');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$qz0HUCPZ8oj7$G5unEWiedRe7GN2kTPmEGWlgaftTa+/TEvgVOwFc8B8=', '2020-07-22 03:28:03.008905', 1, 'dusmile', '', '', 'tranvanvuong274@gmail.com', 1, 1, '2020-07-22 03:27:45.731488');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-07-22 03:28:33.554596', '1', 'Sách kỹ thuật', 1, '[{\"added\": {}}]', 8, 1),
(2, '2020-07-22 03:28:42.538463', '2', 'Sách ngoại ngữ', 1, '[{\"added\": {}}]', 8, 1),
(3, '2020-07-22 03:28:48.648521', '3', 'Sách lịch sử', 1, '[{\"added\": {}}]', 8, 1),
(4, '2020-07-22 03:28:48.703081', '4', 'Sách lịch sử', 1, '[{\"added\": {}}]', 8, 1),
(5, '2020-07-22 03:28:52.933648', '5', 'Sách kinh tế', 1, '[{\"added\": {}}]', 8, 1),
(6, '2020-07-22 03:29:01.113474', '4', 'Sách lịch sử', 3, '', 8, 1),
(7, '2020-07-22 03:37:34.497722', '4', 'Trần Văn Vượng', 1, '[{\"added\": {}}]', 7, 1),
(8, '2020-07-22 03:37:34.509626', '5', 'Trần Văn Vượng', 1, '[{\"added\": {}}]', 7, 1),
(9, '2020-07-22 03:38:32.766965', '3', 'Đường lối tư tưởng Hồ Chí Minh', 1, '[{\"added\": {}}]', 9, 1),
(10, '2020-07-22 03:38:43.164464', '4', 'Kỹ thuật lập trính', 1, '[{\"added\": {}}]', 9, 1),
(11, '2020-07-22 03:48:57.294201', '6', 'Khai', 1, '[{\"added\": {}}]', 7, 1),
(12, '2020-07-22 03:55:37.986321', '5', 'Cấu trúc dữ liệu và giải thuật Sách kỹ thuật', 1, '[{\"added\": {}}]', 9, 1),
(13, '2020-07-22 04:04:02.695206', '7', 'Cao Bá Anh', 1, '[{\"added\": {}}]', 7, 1),
(14, '2020-07-22 04:04:22.354131', '8', 'Huỳnh Thị Kim Anh', 1, '[{\"added\": {}}]', 7, 1),
(15, '2020-07-22 04:04:28.920574', '5', 'Trần Văn Vượng', 3, '', 7, 1),
(16, '2020-07-22 04:04:52.115952', '9', 'Nguyễn Thái Bình', 1, '[{\"added\": {}}]', 7, 1),
(17, '2020-07-22 04:30:07.881750', '8189e120-1aa6-45e7-b08f-61e235cc7f5b', 'Borrow_book object (8189e120-1aa6-45e7-b08f-61e235cc7f5b)', 1, '[{\"added\": {}}]', 10, 1),
(18, '2020-07-22 04:33:17.020997', '8189e120-1aa6-45e7-b08f-61e235cc7f5b', 'Borrow_book object (8189e120-1aa6-45e7-b08f-61e235cc7f5b)', 2, '[]', 10, 1),
(19, '2020-07-22 04:33:45.172066', '258de86b-1f95-49b8-8aae-c91c3bcf9140', 'Borrow_book object (258de86b-1f95-49b8-8aae-c91c3bcf9140)', 1, '[{\"added\": {}}]', 10, 1),
(20, '2020-07-22 04:36:37.894848', '74f6aa47-95c9-4070-ba84-c6aad2a283b5', 'Borrow_book object (74f6aa47-95c9-4070-ba84-c6aad2a283b5)', 1, '[{\"added\": {}}]', 10, 1),
(21, '2020-07-22 04:44:56.787882', '6', 'Lập trình hướng đối tương Sách kỹ thuật', 1, '[{\"added\": {}}]', 9, 1),
(22, '2020-07-22 04:46:08.965757', 'c19833ec-1483-422d-974a-98ceb4283d59', 'c19833ec-1483-422d-974a-98ceb4283d59 (Lập trình hướng đối tương)', 1, '[{\"added\": {}}]', 10, 1),
(23, '2020-07-22 04:46:49.253846', '8e5b21b2-722a-4509-8c9b-bb345f6f3bd3', '8e5b21b2-722a-4509-8c9b-bb345f6f3bd3 (Đường lối tư tưởng Hồ Chí Minh)', 1, '[{\"added\": {}}]', 10, 1),
(24, '2020-07-22 04:47:00.265472', '8e5b21b2-722a-4509-8c9b-bb345f6f3bd3', '8e5b21b2-722a-4509-8c9b-bb345f6f3bd3 (Đường lối tư tưởng Hồ Chí Minh)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 1),
(25, '2020-07-22 04:47:11.539579', '8e5b21b2-722a-4509-8c9b-bb345f6f3bd3', '8e5b21b2-722a-4509-8c9b-bb345f6f3bd3 (Đường lối tư tưởng Hồ Chí Minh)', 2, '[{\"changed\": {\"fields\": [\"Due back\"]}}]', 10, 1),
(26, '2020-07-22 04:49:14.603736', 'c19833ec-1483-422d-974a-98ceb4283d59', 'c19833ec-1483-422d-974a-98ceb4283d59 (Lập trình hướng đối tương)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 1),
(27, '2020-07-22 04:49:26.505019', '8e5b21b2-722a-4509-8c9b-bb345f6f3bd3', '8e5b21b2-722a-4509-8c9b-bb345f6f3bd3 (Đường lối tư tưởng Hồ Chí Minh)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 1),
(28, '2020-07-22 04:54:25.158958', 'c19833ec-1483-422d-974a-98ceb4283d59', 'c19833ec-1483-422d-974a-98ceb4283d59 (Lập trình hướng đối tương)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 1),
(29, '2020-07-22 04:54:30.605829', '8e5b21b2-722a-4509-8c9b-bb345f6f3bd3', '8e5b21b2-722a-4509-8c9b-bb345f6f3bd3 (Đường lối tư tưởng Hồ Chí Minh)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 1),
(30, '2020-07-22 06:59:57.293812', 'c19833ec-1483-422d-974a-98ceb4283d59', 'c19833ec-1483-422d-974a-98ceb4283d59 (Lập trình hướng đối tương)', 2, '[{\"changed\": {\"fields\": [\"Due back\", \"Status\"]}}]', 10, 1),
(31, '2020-07-22 07:41:13.915478', '6', 'Lập trình hướng đối tương', 2, '[{\"changed\": {\"fields\": [\"Sl book\"]}}]', 9, 1),
(32, '2020-07-22 07:55:19.143103', '6', 'Lập trình hướng đối tương', 2, '[]', 9, 1),
(33, '2020-07-22 07:55:28.896522', '5', 'Cấu trúc dữ liệu và giải thuật', 2, '[{\"changed\": {\"fields\": [\"Sl book\"]}}]', 9, 1),
(34, '2020-07-22 07:55:36.279032', '6', 'Lập trình hướng đối tương', 2, '[{\"changed\": {\"fields\": [\"Sl book\"]}}]', 9, 1),
(35, '2020-07-22 07:55:44.742563', '6', 'Lập trình hướng đối tương', 2, '[{\"changed\": {\"fields\": [\"Sl book\"]}}]', 9, 1),
(36, '2020-07-22 08:05:15.370978', '3', 'Đường lối tư tưởng Hồ Chí Minh', 2, '[{\"changed\": {\"fields\": [\"Sl book\"]}}]', 9, 1),
(37, '2020-07-22 08:11:10.595639', '6', 'Lập trình hướng đối tương', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 9, 1),
(38, '2020-07-22 08:24:22.808945', 'c19833ec-1483-422d-974a-98ceb4283d59', 'c19833ec-1483-422d-974a-98ceb4283d59 (Lập trình hướng đối tương)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 1),
(39, '2020-07-22 08:32:27.198534', '6', '6 (Lập trình hướng đối tương)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 9, 1),
(40, '2020-07-22 08:32:39.960005', '5', '5 (Cấu trúc dữ liệu và giải thuật)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 9, 1),
(41, '2020-07-22 08:40:43.083847', '6', '6 (Lập trình hướng đối tương)', 2, '[{\"changed\": {\"fields\": [\"Sl book\"]}}]', 9, 1),
(42, '2020-07-22 09:18:56.857647', '4', '4 (Kỹ thuật lập trính)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 9, 1),
(43, '2020-07-22 09:19:02.497053', '3', '3 (Đường lối tư tưởng Hồ Chí Minh)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 9, 1),
(44, '2020-07-22 09:27:23.382309', '6', 'Sách ngoại ngữ', 1, '[{\"added\": {}}]', 8, 1),
(45, '2020-07-22 09:30:28.498400', '2', 'Sách ngoại ngữ', 3, '', 8, 1),
(46, '2020-07-22 09:32:31.140857', '7', '7 (Đường lối tư tưởng Hồ Chí Minh)', 1, '[{\"added\": {}}]', 9, 1),
(47, '2020-07-22 09:33:03.283182', '8', '8 (Tiếng anh 1)', 1, '[{\"added\": {}}]', 9, 1),
(48, '2020-07-22 09:55:11.271565', '9', '9 (Lập trình hướng đối tương)', 2, '[]', 10, 1),
(49, '2020-07-23 01:52:01.529597', '5', '5 (Cấu trúc dữ liệu và giải thuật)', 2, '[{\"changed\": {\"fields\": [\"Cate\"]}}]', 9, 1),
(50, '2020-07-23 02:08:27.607119', '9', '9 (Lập trình hướng đối tương)', 2, '[]', 10, 1),
(51, '2020-07-23 02:09:20.304510', '10', '10 (Tiếng anh 1)', 1, '[{\"added\": {}}]', 10, 1),
(52, '2020-07-23 02:35:03.998288', '10', 'Tiến', 1, '[{\"added\": {}}]', 7, 1),
(53, '2020-07-23 02:35:08.602901', '11', '11 (Đường lối tư tưởng Hồ Chí Minh)', 1, '[{\"added\": {}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'library', 'book'),
(7, 'library', 'borrower'),
(10, 'library', 'borrow_book'),
(8, 'library', 'category'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-07-22 03:27:05.566729'),
(2, 'auth', '0001_initial', '2020-07-22 03:27:05.890305'),
(3, 'admin', '0001_initial', '2020-07-22 03:27:06.404082'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-07-22 03:27:06.553218'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-07-22 03:27:06.569312'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-07-22 03:27:06.639910'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-07-22 03:27:06.697445'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-07-22 03:27:06.721788'),
(9, 'auth', '0004_alter_user_username_opts', '2020-07-22 03:27:06.738799'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-07-22 03:27:06.793072'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-07-22 03:27:06.799106'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-07-22 03:27:06.817223'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-07-22 03:27:06.843227'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-07-22 03:27:06.869402'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-07-22 03:27:06.896213'),
(16, 'auth', '0011_update_proxy_permissions', '2020-07-22 03:27:06.915067'),
(17, 'library', '0001_initial', '2020-07-22 03:27:06.987758'),
(18, 'sessions', '0001_initial', '2020-07-22 03:27:07.068916'),
(19, 'library', '0002_borrow_book', '2020-07-22 03:44:25.854959'),
(20, 'library', '0003_auto_20200722_1045', '2020-07-22 03:45:55.042945'),
(21, 'library', '0004_remove_borrow_book_time', '2020-07-22 03:48:25.542482'),
(22, 'library', '0005_book_status', '2020-07-22 03:53:57.553826'),
(23, 'library', '0006_borrow_book_status', '2020-07-22 04:24:17.978800'),
(24, 'library', '0007_auto_20200722_1129', '2020-07-22 04:29:05.690059'),
(25, 'library', '0008_auto_20200722_1142', '2020-07-22 04:42:52.070669'),
(26, 'library', '0009_auto_20200722_1354', '2020-07-22 06:54:52.705845'),
(27, 'library', '0010_remove_borrow_book_status', '2020-07-22 07:04:36.175733'),
(28, 'library', '0011_borrow_book_status', '2020-07-22 07:07:17.707753'),
(29, 'library', '0012_auto_20200722_1531', '2020-07-22 08:32:06.481245'),
(30, 'library', '0013_auto_20200722_1647', '2020-07-22 09:47:50.540794'),
(31, 'library', '0014_auto_20200722_1652', '2020-07-22 09:52:57.376030'),
(32, 'library', '0015_borrow_book_status', '2020-07-22 09:54:42.370924'),
(33, 'library', '0016_auto_20200723_0851', '2020-07-23 01:51:31.181729'),
(34, 'library', '0017_auto_20200723_0907', '2020-07-23 02:07:57.364133'),
(35, 'library', '0018_auto_20200723_0921', '2020-07-23 02:21:44.702772');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('aaivrmw1ierfnvq5j9x8t00fc1jjscwd', 'ODY5OGQ2N2FkZmNiYTY1M2VmYjMxMTc2NDRmNjczNzdkYTc5MWYxYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOWE1ZGEwNjU2YmFmMDk5OTY1YmZhZmVlNjljYWU3NWZiYzJiMWViIn0=', '2020-08-05 03:28:03.012378');

-- --------------------------------------------------------

--
-- Table structure for table `library_book`
--

CREATE TABLE `library_book` (
  `id` int(11) NOT NULL,
  `title_book` varchar(100) NOT NULL,
  `sl_book` int(11) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library_book`
--

INSERT INTO `library_book` (`id`, `title_book`, `sl_book`, `status`) VALUES
(3, 'Đường lối tư tưởng Hồ Chí Minh', 0, 'd'),
(4, 'Kỹ thuật lập trính', 1, 'd'),
(5, 'Cấu trúc dữ liệu và giải thuật', 3, 'a'),
(6, 'Lập trình hướng đối tương', 1, 'a'),
(7, 'Đường lối tư tưởng Hồ Chí Minh', 1, 'a'),
(8, 'Tiếng anh 1', 1, 'a');

-- --------------------------------------------------------

--
-- Table structure for table `library_book_cate`
--

CREATE TABLE `library_book_cate` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library_book_cate`
--

INSERT INTO `library_book_cate` (`id`, `book_id`, `category_id`) VALUES
(1, 5, 1),
(2, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `library_borrower`
--

CREATE TABLE `library_borrower` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `cmnd` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library_borrower`
--

INSERT INTO `library_borrower` (`id`, `name`, `phone`, `cmnd`) VALUES
(4, 'Trần Văn Vượng', '0399204233', '123121231'),
(6, 'Khai', '033333333', '123456566'),
(7, 'Cao Bá Anh', '187829501', '0356772236'),
(8, 'Huỳnh Thị Kim Anh', '191906911', '0442010001'),
(9, 'Nguyễn Thái Bình', '201795280', '0776368652'),
(10, 'Tiến', '03454588877', '354889411');

-- --------------------------------------------------------

--
-- Table structure for table `library_borrow_book`
--

CREATE TABLE `library_borrow_book` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `borrower_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `borrow_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library_borrow_book`
--

INSERT INTO `library_borrow_book` (`id`, `book_id`, `borrower_id`, `status`, `borrow_date`) VALUES
(8, 3, 4, 1, '2020-07-23 09:07:52.367118'),
(9, 6, 9, 1, '2020-07-23 09:07:52.000000'),
(10, 8, 4, 1, '2020-07-23 09:08:01.000000'),
(11, 3, 10, 1, '2020-07-23 02:35:08.600456');

-- --------------------------------------------------------

--
-- Table structure for table `library_category`
--

CREATE TABLE `library_category` (
  `id` int(11) NOT NULL,
  `title_cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library_category`
--

INSERT INTO `library_category` (`id`, `title_cate`) VALUES
(1, 'Sách kỹ thuật'),
(3, 'Sách lịch sử'),
(5, 'Sách kinh tế'),
(6, 'Sách ngoại ngữ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `library_book`
--
ALTER TABLE `library_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_book_cate`
--
ALTER TABLE `library_book_cate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `library_book_cate_book_id_category_id_df39247d_uniq` (`book_id`,`category_id`),
  ADD KEY `library_book_cate_category_id_68e635a9_fk_library_category_id` (`category_id`);

--
-- Indexes for table `library_borrower`
--
ALTER TABLE `library_borrower`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_borrow_book`
--
ALTER TABLE `library_borrow_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `library_borrow_book_book_id_1e804b38_fk_library_book_id` (`book_id`),
  ADD KEY `library_borrow_book_borrower_id_77e0687e_fk_library_borrower_id` (`borrower_id`);

--
-- Indexes for table `library_category`
--
ALTER TABLE `library_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `library_book`
--
ALTER TABLE `library_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `library_book_cate`
--
ALTER TABLE `library_book_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `library_borrower`
--
ALTER TABLE `library_borrower`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `library_borrow_book`
--
ALTER TABLE `library_borrow_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `library_category`
--
ALTER TABLE `library_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `library_book_cate`
--
ALTER TABLE `library_book_cate`
  ADD CONSTRAINT `library_book_cate_book_id_38f4528f_fk_library_book_id` FOREIGN KEY (`book_id`) REFERENCES `library_book` (`id`),
  ADD CONSTRAINT `library_book_cate_category_id_68e635a9_fk_library_category_id` FOREIGN KEY (`category_id`) REFERENCES `library_category` (`id`);

--
-- Constraints for table `library_borrow_book`
--
ALTER TABLE `library_borrow_book`
  ADD CONSTRAINT `library_borrow_book_book_id_1e804b38_fk_library_book_id` FOREIGN KEY (`book_id`) REFERENCES `library_book` (`id`),
  ADD CONSTRAINT `library_borrow_book_borrower_id_77e0687e_fk_library_borrower_id` FOREIGN KEY (`borrower_id`) REFERENCES `library_borrower` (`id`);
--
-- Database: `dblibrary1`
--
CREATE DATABASE IF NOT EXISTS `dblibrary1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dblibrary1`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add borrow book', 8, 'add_borrowbook'),
(30, 'Can change borrow book', 8, 'change_borrowbook'),
(31, 'Can delete borrow book', 8, 'delete_borrowbook'),
(32, 'Can view borrow book', 8, 'view_borrowbook'),
(33, 'Can add book', 9, 'add_book'),
(34, 'Can change book', 9, 'change_book'),
(35, 'Can delete book', 9, 'delete_book'),
(36, 'Can view book', 9, 'view_book'),
(37, 'Can add author', 10, 'add_author'),
(38, 'Can change author', 10, 'change_author'),
(39, 'Can delete author', 10, 'delete_author'),
(40, 'Can view author', 10, 'view_author'),
(41, 'Can add borrower', 11, 'add_borrower'),
(42, 'Can change borrower', 11, 'change_borrower'),
(43, 'Can delete borrower', 11, 'delete_borrower'),
(44, 'Can view borrower', 11, 'view_borrower');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$LsjyoMLWBpd7$Cmd0Rpbiod0HOX6TQRajzTfVQImVic9ZJazf4ezPwSA=', '2020-07-24 08:19:13.251898', 1, 'dusmile', '', '', 'tranvanvuong274@gmail.com', 1, 1, '2020-07-24 08:17:05.250307');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-07-24 08:19:25.682676', '1', 'Sách kỹ thuật', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-07-24 08:19:30.088781', '1', 'Không rõ', 1, '[{\"added\": {}}]', 10, 1),
(3, '2020-07-24 08:28:02.646661', '1', 'Kiến trúc máy tính', 1, '[{\"added\": {}}]', 9, 1),
(4, '2020-07-24 08:28:02.718820', '2', 'Kiến trúc máy tính', 1, '[{\"added\": {}}]', 9, 1),
(5, '2020-07-24 08:30:27.095727', '2', 'Sách kinh tế', 1, '[{\"added\": {}}]', 7, 1),
(6, '2020-07-24 08:30:34.943438', '2', 'Thương mại điện tử', 2, '[{\"changed\": {\"fields\": [\"Name book\", \"Cate\", \"Quantity book\"]}}]', 9, 1),
(7, '2020-07-24 08:34:25.056107', '3', 'Sách ngoại ngữ', 1, '[{\"added\": {}}]', 7, 1),
(8, '2020-07-24 08:34:32.807323', '3', 'Tiếng anh cơ bản', 1, '[{\"added\": {}}]', 9, 1),
(9, '2020-07-24 08:39:06.761351', '4', 'Kĩ thuật lập trính', 1, '[{\"added\": {}}]', 9, 1),
(10, '2020-07-24 08:43:05.039355', '5', 'Kĩ thuật lập trính', 1, '[{\"added\": {}}]', 9, 1),
(11, '2020-07-24 08:44:36.013489', '4', 'Tiểu thuyết', 1, '[{\"added\": {}}]', 7, 1),
(12, '2020-07-24 08:44:42.324727', '2', 'J.K.Rolling', 1, '[{\"added\": {}}]', 10, 1),
(13, '2020-07-24 08:44:44.902662', '6', 'Harry Poster và bảo bối tử thần', 1, '[{\"added\": {}}]', 9, 1),
(14, '2020-07-24 08:46:33.023708', '5', 'Truyện tranh', 1, '[{\"added\": {}}]', 7, 1),
(15, '2020-07-24 08:46:43.009533', '7', '7 viên ngọc rồng', 1, '[{\"added\": {}}]', 9, 1),
(16, '2020-07-24 09:10:45.420298', '1', 'Trần Văn Vượng', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"borrow book\", \"object\": \"1 (7 vi\\u00ean ng\\u1ecdc r\\u1ed3ng)\"}}]', 11, 1),
(17, '2020-07-24 09:11:25.889999', '2', 'Trần Lê Uyên Vy', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"borrow book\", \"object\": \"2 (Ki\\u1ebfn tr\\u00fac m\\u00e1y t\\u00ednh)\"}}]', 11, 1),
(18, '2020-07-24 09:13:25.464202', '3', 'Cao Bá Anh', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"borrow book\", \"object\": \"3 (Ti\\u1ebfng anh c\\u01a1 b\\u1ea3n)\"}}]', 11, 1),
(19, '2020-07-24 09:14:58.409548', '8', 'Thương mại điện tử', 1, '[{\"added\": {}}]', 9, 1),
(20, '2020-07-24 09:32:35.358267', '4', '4 (Thương mại điện tử)', 1, '[{\"added\": {}}]', 8, 1),
(21, '2020-07-24 09:33:29.711758', '5', '5 (7 viên ngọc rồng)', 1, '[{\"added\": {}}]', 8, 1),
(22, '2020-07-24 09:34:11.280679', '5', '5 (7 viên ngọc rồng)', 2, '[]', 8, 1),
(23, '2020-07-24 09:34:11.305976', '5', '5 (7 viên ngọc rồng)', 2, '[]', 8, 1),
(24, '2020-07-24 09:34:32.601287', '5', '5 (7 viên ngọc rồng)', 2, '[{\"changed\": {\"fields\": [\"Due back\"]}}]', 8, 1),
(25, '2020-07-24 09:37:09.640167', '6', '6 (Kĩ thuật lập trính)', 1, '[{\"added\": {}}]', 8, 1),
(26, '2020-07-24 09:38:31.798364', '6', '6 (Kĩ thuật lập trính)', 2, '[{\"changed\": {\"fields\": [\"Due back\"]}}]', 8, 1),
(27, '2020-07-24 10:12:29.919380', '7', '7 (7 viên ngọc rồng)', 1, '[{\"added\": {}}]', 8, 1),
(28, '2020-07-24 10:13:37.435139', '7', '7 (7 viên ngọc rồng)', 2, '[]', 8, 1),
(29, '2020-07-24 10:21:07.894715', '8', '8 (Tiếng anh cơ bản)', 1, '[{\"added\": {}}]', 8, 1),
(30, '2020-07-27 01:21:29.618716', '6', 'Harry Poster và bảo bối tử thần', 2, '[{\"changed\": {\"fields\": [\"Quantity book\"]}}]', 9, 1),
(31, '2020-07-27 02:05:11.531193', '9', 'How to train Dragon', 1, '[{\"added\": {}}]', 9, 1),
(32, '2020-07-27 02:08:11.331204', '9', 'How to train Dragon', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(33, '2020-07-27 02:18:35.054947', '6', 'Hồi ký', 1, '[{\"added\": {}}]', 7, 1),
(34, '2020-07-27 02:18:56.166843', '3', 'Paul Kalanithi', 1, '[{\"added\": {}}]', 10, 1),
(35, '2020-07-27 02:19:54.142856', '10', 'Khi hơi thở hoá thinh không', 1, '[{\"added\": {}}]', 9, 1),
(36, '2020-07-27 03:44:16.711452', '9', 'How to train Dragon', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(37, '2020-07-27 03:44:45.287669', '9', 'How to train Dragon', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(38, '2020-07-27 03:47:33.342267', '9', 'How to train Dragon', 2, '[]', 9, 1),
(39, '2020-07-27 03:48:46.502537', '11', 'Khi hơi thở hoá thinh không', 1, '[{\"added\": {}}]', 9, 1),
(40, '2020-07-27 03:49:10.326626', '11', 'Khi hơi thở hoá thinh không', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(41, '2020-07-27 03:52:26.111663', '10', 'Khi hơi thở hoá thinh không', 3, '', 9, 1),
(42, '2020-07-27 03:52:26.116401', '5', 'Kĩ thuật lập trính', 3, '', 9, 1),
(43, '2020-07-27 03:52:26.119357', '2', 'Thương mại điện tử', 3, '', 9, 1),
(44, '2020-07-27 03:52:43.623011', '12', 'Khi hơi thở hoá thinh không', 1, '[{\"added\": {}}]', 9, 1),
(45, '2020-07-27 03:54:14.856955', '3', '3 (Tiếng anh cơ bản)', 3, '', 8, 1),
(46, '2020-07-27 03:54:14.860972', '2', '2 (Kiến trúc máy tính)', 3, '', 8, 1),
(47, '2020-07-27 03:54:14.865958', '5', '5 (7 viên ngọc rồng)', 3, '', 8, 1),
(48, '2020-07-27 03:54:14.867954', '7', '7 (7 viên ngọc rồng)', 3, '', 8, 1),
(49, '2020-07-27 03:54:14.870947', '8', '8 (Tiếng anh cơ bản)', 3, '', 8, 1),
(50, '2020-07-27 03:54:14.872940', '1', '1 (7 viên ngọc rồng)', 3, '', 8, 1),
(51, '2020-07-27 03:54:56.845651', '5', 'Huỳnh Thị Kim Anh', 1, '[{\"added\": {}}]', 11, 1),
(52, '2020-07-27 03:55:24.104033', '7', '7 viên ngọc rồng', 3, '', 9, 1),
(53, '2020-07-27 03:55:24.110988', '6', 'Harry Poster và bảo bối tử thần', 3, '', 9, 1),
(54, '2020-07-27 03:55:24.115973', '9', 'How to train Dragon', 3, '', 9, 1),
(55, '2020-07-27 03:55:24.120634', '11', 'Khi hơi thở hoá thinh không', 3, '', 9, 1),
(56, '2020-07-27 03:55:24.126625', '4', 'Kĩ thuật lập trính', 3, '', 9, 1),
(57, '2020-07-27 03:55:24.130614', '1', 'Kiến trúc máy tính', 3, '', 9, 1),
(58, '2020-07-27 03:55:24.134398', '8', 'Thương mại điện tử', 3, '', 9, 1),
(59, '2020-07-27 03:55:24.138393', '3', 'Tiếng anh cơ bản', 3, '', 9, 1),
(60, '2020-07-27 03:55:50.884637', '4', 'Bộ GD & DT', 1, '[{\"added\": {}}]', 10, 1),
(61, '2020-07-27 03:55:59.226267', '13', 'Kiến trúc máy tính', 1, '[{\"added\": {}}]', 9, 1),
(62, '2020-07-27 03:58:39.350158', '5', 'Toriyama Akira', 1, '[{\"added\": {}}]', 10, 1),
(63, '2020-07-27 03:58:45.496289', '14', '7 viên ngọc rồng', 1, '[{\"added\": {}}]', 9, 1),
(64, '2020-07-27 04:00:19.205989', '15', 'Harry Poster và bảo bối tử thần', 1, '[{\"added\": {}}]', 9, 1),
(65, '2020-07-27 04:00:54.028356', '13', 'Kiến trúc máy tính', 2, '[{\"changed\": {\"fields\": [\"Quantity book\"]}}]', 9, 1),
(66, '2020-07-27 04:01:40.551703', '9', '9 (7 viên ngọc rồng)', 1, '[{\"added\": {}}]', 8, 1),
(67, '2020-07-27 04:06:09.274513', '16', 'Thương mại điện tử', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'library', 'author'),
(9, 'library', 'book'),
(8, 'library', 'borrowbook'),
(11, 'library', 'borrower'),
(7, 'library', 'category'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-07-24 08:15:58.733206'),
(2, 'auth', '0001_initial', '2020-07-24 08:15:58.842721'),
(3, 'admin', '0001_initial', '2020-07-24 08:15:59.233891'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-07-24 08:15:59.353204'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-07-24 08:15:59.379986'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-07-24 08:15:59.443808'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-07-24 08:15:59.499205'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-07-24 08:15:59.538946'),
(9, 'auth', '0004_alter_user_username_opts', '2020-07-24 08:15:59.564284'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-07-24 08:15:59.605981'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-07-24 08:15:59.609949'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-07-24 08:15:59.621852'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-07-24 08:15:59.642145'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-07-24 08:15:59.662481'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-07-24 08:15:59.684375'),
(16, 'auth', '0011_update_proxy_permissions', '2020-07-24 08:15:59.699385'),
(17, 'sessions', '0001_initial', '2020-07-24 08:15:59.722450'),
(18, 'library', '0001_initial', '2020-07-24 08:18:50.429761'),
(19, 'library', '0002_auto_20200724_1527', '2020-07-24 08:27:23.712938'),
(20, 'library', '0003_auto_20200724_1541', '2020-07-24 08:41:24.844904'),
(21, 'library', '0004_auto_20200724_1609', '2020-07-24 09:09:28.184457'),
(22, 'library', '0005_auto_20200727_0820', '2020-07-27 01:20:52.271924'),
(23, 'library', '0006_book_image', '2020-07-27 02:01:59.802415'),
(24, 'library', '0007_auto_20200727_0916', '2020-07-27 02:16:12.579463');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4k2sbtm9ud2gp25oh46j447s26ytf1rb', 'ZmM4ZGJiNjgzNjUyZjUwZmE1MDE1N2YyMzViNTgwZDZkODQ0YzY3ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNTFhZDA1Y2U2ZWZmMDJmMzdhMDIwYTI4YWQyZGNlMzdlNjM1MTdkIn0=', '2020-08-07 08:19:13.255865');

-- --------------------------------------------------------

--
-- Table structure for table `library_author`
--

CREATE TABLE `library_author` (
  `id` int(11) NOT NULL,
  `name_author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library_author`
--

INSERT INTO `library_author` (`id`, `name_author`) VALUES
(1, 'Không rõ'),
(2, 'J.K.Rolling'),
(3, 'Paul Kalanithi'),
(4, 'Bộ GD & DT'),
(5, 'Toriyama Akira');

-- --------------------------------------------------------

--
-- Table structure for table `library_book`
--

CREATE TABLE `library_book` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `name_book` varchar(100) NOT NULL,
  `quantity_book` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library_book`
--

INSERT INTO `library_book` (`id`, `status`, `name_book`, `quantity_book`, `image`) VALUES
(12, 1, 'Khi hơi thở hoá thinh không', 1, 'img/Capture.PNG'),
(13, 1, 'Kiến trúc máy tính', 0, './img/default.png'),
(14, 1, '7 viên ngọc rồng', 1, 'img/dragon-ball-super-hinh-dai-dien-725x1024.jpg'),
(15, 1, 'Harry Poster và bảo bối tử thần', 1, 'img/74_HarryPottertap7HarryPottervaBaoboiTuthan_rigo.jpg'),
(16, 1, 'Thương mại điện tử', 1, 'img/cam-nang-thuong-mai-dien-tu-tap-1-sachdoanhnhan-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `library_book_author`
--

CREATE TABLE `library_book_author` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library_book_author`
--

INSERT INTO `library_book_author` (`id`, `book_id`, `author_id`) VALUES
(12, 12, 3),
(13, 13, 4),
(14, 14, 5),
(15, 15, 2),
(16, 16, 4);

-- --------------------------------------------------------

--
-- Table structure for table `library_book_cate`
--

CREATE TABLE `library_book_cate` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library_book_cate`
--

INSERT INTO `library_book_cate` (`id`, `book_id`, `category_id`) VALUES
(13, 12, 6),
(14, 13, 1),
(15, 14, 5),
(16, 15, 4),
(17, 16, 1),
(18, 16, 2);

-- --------------------------------------------------------

--
-- Table structure for table `library_borrowbook`
--

CREATE TABLE `library_borrowbook` (
  `id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `borrow_date` datetime(6) NOT NULL,
  `due_back` datetime(6) DEFAULT NULL,
  `book_id` int(11) NOT NULL,
  `borrower_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library_borrowbook`
--

INSERT INTO `library_borrowbook` (`id`, `status`, `borrow_date`, `due_back`, `book_id`, `borrower_id`) VALUES
(9, 'Chưa tới hạn', '2020-07-27 04:01:40.549717', '2020-07-27 04:03:15.000000', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `library_borrower`
--

CREATE TABLE `library_borrower` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `cmnd` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library_borrower`
--

INSERT INTO `library_borrower` (`id`, `name`, `phone`, `cmnd`) VALUES
(1, 'Trần Văn Vượng', '0399204233', '0356772236'),
(2, 'Trần Lê Uyên Vy', '0836172103', '201764299'),
(3, 'Cao Bá Anh', '03454588877', '548955463'),
(5, 'Huỳnh Thị Kim Anh', '0357907973', '0776368652');

-- --------------------------------------------------------

--
-- Table structure for table `library_category`
--

CREATE TABLE `library_category` (
  `id` int(11) NOT NULL,
  `name_cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library_category`
--

INSERT INTO `library_category` (`id`, `name_cate`) VALUES
(1, 'Sách kỹ thuật'),
(2, 'Sách kinh tế'),
(3, 'Sách ngoại ngữ'),
(4, 'Tiểu thuyết'),
(5, 'Truyện tranh'),
(6, 'Hồi ký');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `library_author`
--
ALTER TABLE `library_author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_book`
--
ALTER TABLE `library_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_book_author`
--
ALTER TABLE `library_book_author`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `library_book_author_book_id_author_id_8157786b_uniq` (`book_id`,`author_id`),
  ADD KEY `library_book_author_author_id_f49ea9e0_fk_library_author_id` (`author_id`);

--
-- Indexes for table `library_book_cate`
--
ALTER TABLE `library_book_cate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `library_book_cate_book_id_category_id_df39247d_uniq` (`book_id`,`category_id`),
  ADD KEY `library_book_cate_category_id_68e635a9_fk_library_category_id` (`category_id`);

--
-- Indexes for table `library_borrowbook`
--
ALTER TABLE `library_borrowbook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `library_borrowbook_book_id_01d872dd_fk_library_book_id` (`book_id`),
  ADD KEY `library_borrowbook_borrower_id_dae83ead_fk_library_borrower_id` (`borrower_id`);

--
-- Indexes for table `library_borrower`
--
ALTER TABLE `library_borrower`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_category`
--
ALTER TABLE `library_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `library_author`
--
ALTER TABLE `library_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `library_book`
--
ALTER TABLE `library_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `library_book_author`
--
ALTER TABLE `library_book_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `library_book_cate`
--
ALTER TABLE `library_book_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `library_borrowbook`
--
ALTER TABLE `library_borrowbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `library_borrower`
--
ALTER TABLE `library_borrower`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `library_category`
--
ALTER TABLE `library_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `library_book_author`
--
ALTER TABLE `library_book_author`
  ADD CONSTRAINT `library_book_author_author_id_f49ea9e0_fk_library_author_id` FOREIGN KEY (`author_id`) REFERENCES `library_author` (`id`),
  ADD CONSTRAINT `library_book_author_book_id_8420063c_fk_library_book_id` FOREIGN KEY (`book_id`) REFERENCES `library_book` (`id`);

--
-- Constraints for table `library_book_cate`
--
ALTER TABLE `library_book_cate`
  ADD CONSTRAINT `library_book_cate_book_id_38f4528f_fk_library_book_id` FOREIGN KEY (`book_id`) REFERENCES `library_book` (`id`),
  ADD CONSTRAINT `library_book_cate_category_id_68e635a9_fk_library_category_id` FOREIGN KEY (`category_id`) REFERENCES `library_category` (`id`);

--
-- Constraints for table `library_borrowbook`
--
ALTER TABLE `library_borrowbook`
  ADD CONSTRAINT `library_borrowbook_book_id_01d872dd_fk_library_book_id` FOREIGN KEY (`book_id`) REFERENCES `library_book` (`id`),
  ADD CONSTRAINT `library_borrowbook_borrower_id_dae83ead_fk_library_borrower_id` FOREIGN KEY (`borrower_id`) REFERENCES `library_borrower` (`id`);
--
-- Database: `dbtest`
--
CREATE DATABASE IF NOT EXISTS `dbtest` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbtest`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add question', 7, 'add_question'),
(26, 'Can change question', 7, 'change_question'),
(27, 'Can delete question', 7, 'delete_question'),
(28, 'Can view question', 7, 'view_question'),
(29, 'Can add choice', 8, 'add_choice'),
(30, 'Can change choice', 8, 'change_choice'),
(31, 'Can delete choice', 8, 'delete_choice'),
(32, 'Can view choice', 8, 'view_choice');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'Hello', 'choice'),
(7, 'Hello', 'question'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-07-21 04:26:39.440438'),
(2, 'auth', '0001_initial', '2020-07-21 04:26:39.576675'),
(3, 'admin', '0001_initial', '2020-07-21 04:26:40.139489'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-07-21 04:26:40.262376'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-07-21 04:26:40.306062'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-07-21 04:26:40.387918'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-07-21 04:26:40.448750'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-07-21 04:26:40.475533'),
(9, 'auth', '0004_alter_user_username_opts', '2020-07-21 04:26:40.493393'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-07-21 04:26:40.553736'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-07-21 04:26:40.558777'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-07-21 04:26:40.577074'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-07-21 04:26:40.611430'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-07-21 04:26:40.644663'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-07-21 04:26:40.679838'),
(16, 'auth', '0011_update_proxy_permissions', '2020-07-21 04:26:40.705673'),
(17, 'sessions', '0001_initial', '2020-07-21 04:26:40.739854'),
(18, 'Hello', '0001_initial', '2020-07-21 06:18:08.986713');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hello_choice`
--

CREATE TABLE `hello_choice` (
  `id` int(11) NOT NULL,
  `choice_text` varchar(200) NOT NULL,
  `votes` int(11) NOT NULL,
  `question_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hello_question`
--

CREATE TABLE `hello_question` (
  `id` int(11) NOT NULL,
  `question_text` varchar(200) NOT NULL,
  `pub_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hello_question`
--

INSERT INTO `hello_question` (`id`, `question_text`, `pub_date`) VALUES
(1, 'Tran Van Vuong?', '2020-07-21 06:37:56.207586');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `hello_choice`
--
ALTER TABLE `hello_choice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Hello_choice_question_id_5496530f_fk_Hello_question_id` (`question_id`);

--
-- Indexes for table `hello_question`
--
ALTER TABLE `hello_question`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `hello_choice`
--
ALTER TABLE `hello_choice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hello_question`
--
ALTER TABLE `hello_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `hello_choice`
--
ALTER TABLE `hello_choice`
  ADD CONSTRAINT `Hello_choice_question_id_5496530f_fk_Hello_question_id` FOREIGN KEY (`question_id`) REFERENCES `hello_question` (`id`);
--
-- Database: `librarydb`
--
CREATE DATABASE IF NOT EXISTS `librarydb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `librarydb`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add book', 7, 'add_book'),
(26, 'Can change book', 7, 'change_book'),
(27, 'Can delete book', 7, 'delete_book'),
(28, 'Can view book', 7, 'view_book'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add doc gia', 9, 'add_docgia'),
(34, 'Can change doc gia', 9, 'change_docgia'),
(35, 'Can delete doc gia', 9, 'delete_docgia'),
(36, 'Can view doc gia', 9, 'view_docgia'),
(37, 'Can add borrower', 10, 'add_borrower'),
(38, 'Can change borrower', 10, 'change_borrower'),
(39, 'Can delete borrower', 10, 'delete_borrower'),
(40, 'Can view borrower', 10, 'view_borrower'),
(41, 'Can add borrowed book', 11, 'add_borrowedbook'),
(42, 'Can change borrowed book', 11, 'change_borrowedbook'),
(43, 'Can delete borrowed book', 11, 'delete_borrowedbook'),
(44, 'Can view borrowed book', 11, 'view_borrowedbook');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$V2XYqTpsw45b$U2HOw6p5+0kZ5iAcyCWGX1b0T68kuf7+fPFxB/UD6SQ=', '2020-07-21 15:29:19.053798', 1, 'dusmile', '', '', 'tranvanvuong274@gmail.com', 1, 1, '2020-07-21 15:06:39.827334');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-07-21 15:29:33.914731', '4', 'Manhua', 1, '[{\"added\": {}}]', 8, 1),
(2, '2020-07-21 15:34:59.993889', '4', 'Sách kỹ thuật', 2, '[{\"changed\": {\"fields\": [\"Title cate\"]}}]', 8, 1),
(3, '2020-07-21 15:35:29.517867', '3', 'Sách ngoại ngữ', 2, '[{\"changed\": {\"fields\": [\"Title cate\"]}}]', 8, 1),
(4, '2020-07-21 15:35:42.191448', '2', 'Sách lịch sử', 2, '[{\"changed\": {\"fields\": [\"Title cate\"]}}]', 8, 1),
(5, '2020-07-21 15:36:13.871587', '1', 'Sách kinh tế', 2, '[{\"changed\": {\"fields\": [\"Title cate\"]}}]', 8, 1),
(6, '2020-07-21 15:36:39.428206', '1', 'Kỹ thuật lập trính', 1, '[{\"added\": {}}]', 7, 1),
(7, '2020-07-21 15:37:09.582972', '2', 'Kinh tế vi mô', 1, '[{\"added\": {}}]', 7, 1),
(8, '2020-07-21 15:37:29.822443', '3', 'Đường lối tư tưởng Hồ Chí Minh', 1, '[{\"added\": {}}]', 7, 1),
(9, '2020-07-21 15:44:12.779031', '1', 'Trần Văn Vượng', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'library', 'book'),
(11, 'library', 'borrowedbook'),
(10, 'library', 'borrower'),
(8, 'library', 'category'),
(9, 'library', 'docgia'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-07-21 15:05:28.331900'),
(2, 'auth', '0001_initial', '2020-07-21 15:05:28.444252'),
(3, 'admin', '0001_initial', '2020-07-21 15:05:28.840833'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-07-21 15:05:28.974256'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-07-21 15:05:28.997568'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-07-21 15:05:29.136450'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-07-21 15:05:29.235152'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-07-21 15:05:29.252016'),
(9, 'auth', '0004_alter_user_username_opts', '2020-07-21 15:05:29.264416'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-07-21 15:05:29.353237'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-07-21 15:05:29.357169'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-07-21 15:05:29.368082'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-07-21 15:05:29.439505'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-07-21 15:05:29.458400'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-07-21 15:05:29.506464'),
(16, 'auth', '0011_update_proxy_permissions', '2020-07-21 15:05:29.529780'),
(17, 'sessions', '0001_initial', '2020-07-21 15:05:29.562514'),
(18, 'library', '0001_initial', '2020-07-21 15:21:37.665059'),
(19, 'library', '0002_docgia', '2020-07-21 15:43:28.198906'),
(20, 'library', '0003_auto_20200722_0955', '2020-07-22 02:55:52.781774'),
(21, 'library', '0004_auto_20200722_1001', '2020-07-22 03:02:02.832704');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('adhfqdsridvd0tse0tzw1yc1zxdadxa7', 'ZWIxNmU4MmE1MTVkMGIyNjljNGQ2N2E4NGUyYWRkNTExMzdiMDlmZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMTg2NzliNTRiYzZiZWY4MmM1NjNlZDg3MDFjYjQ0ZWJlMDc0OTRkIn0=', '2020-08-04 15:29:19.057311');

-- --------------------------------------------------------

--
-- Table structure for table `library_book`
--

CREATE TABLE `library_book` (
  `id` int(11) NOT NULL,
  `title_book` varchar(100) NOT NULL,
  `sl_book` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library_book`
--

INSERT INTO `library_book` (`id`, `title_book`, `sl_book`, `cate_id`) VALUES
(1, 'Kỹ thuật lập trính', 1, 4),
(2, 'Kinh tế vi mô', 1, 1),
(3, 'Đường lối tư tưởng Hồ Chí Minh', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `library_borrowedbook`
--

CREATE TABLE `library_borrowedbook` (
  `id` int(11) NOT NULL,
  `borrow_at` datetime(6) NOT NULL,
  `book_id` int(11) NOT NULL,
  `borrower_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `library_borrower`
--

CREATE TABLE `library_borrower` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `cmnd` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `library_category`
--

CREATE TABLE `library_category` (
  `id` int(11) NOT NULL,
  `title_cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library_category`
--

INSERT INTO `library_category` (`id`, `title_cate`) VALUES
(1, 'Sách kinh tế'),
(2, 'Sách lịch sử'),
(3, 'Sách ngoại ngữ'),
(4, 'Sách kỹ thuật');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `library_book`
--
ALTER TABLE `library_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `library_book_cate_id_f662a2c1_fk_library_category_id` (`cate_id`);

--
-- Indexes for table `library_borrowedbook`
--
ALTER TABLE `library_borrowedbook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `library_borrowedbook_borrower_id_ecab8014_fk_library_borrower_id` (`borrower_id`),
  ADD KEY `library_borrowedbook_book_id_f7b52ca9_fk_library_book_id` (`book_id`);

--
-- Indexes for table `library_borrower`
--
ALTER TABLE `library_borrower`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_category`
--
ALTER TABLE `library_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `library_book`
--
ALTER TABLE `library_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `library_borrowedbook`
--
ALTER TABLE `library_borrowedbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `library_borrower`
--
ALTER TABLE `library_borrower`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `library_category`
--
ALTER TABLE `library_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `library_book`
--
ALTER TABLE `library_book`
  ADD CONSTRAINT `library_book_cate_id_f662a2c1_fk_library_category_id` FOREIGN KEY (`cate_id`) REFERENCES `library_category` (`id`);

--
-- Constraints for table `library_borrowedbook`
--
ALTER TABLE `library_borrowedbook`
  ADD CONSTRAINT `library_borrowedbook_book_id_f7b52ca9_fk_library_book_id` FOREIGN KEY (`book_id`) REFERENCES `library_book` (`id`),
  ADD CONSTRAINT `library_borrowedbook_borrower_id_ecab8014_fk_library_borrower_id` FOREIGN KEY (`borrower_id`) REFERENCES `library_borrower` (`id`);
--
-- Database: `librarym`
--
CREATE DATABASE IF NOT EXISTS `librarym` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `librarym`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add book', 7, 'add_book'),
(26, 'Can change book', 7, 'change_book'),
(27, 'Can delete book', 7, 'delete_book'),
(28, 'Can view book', 7, 'view_book'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$Lj2PCsLwM1Q4$cxJRfg+sL3jScLeIi+BtRTABHJAAoJSd0gW0yoLX8qs=', '2020-07-21 08:57:48.871701', 1, 'dusmile', '', '', 'tranvanvuong274@gmail.com', 1, 1, '2020-07-21 08:57:30.383790');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-07-21 10:13:22.261668', '0', 'ABC', 3, '', 8, 1),
(2, '2020-07-21 10:14:19.527517', '3', 'Manhua', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'Libra', 'book'),
(8, 'Libra', 'category'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-07-21 08:56:18.640963'),
(2, 'auth', '0001_initial', '2020-07-21 08:56:18.820432'),
(3, 'admin', '0001_initial', '2020-07-21 08:56:19.259576'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-07-21 08:56:19.433537'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-07-21 08:56:19.455058'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-07-21 08:56:19.542103'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-07-21 08:56:19.604597'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-07-21 08:56:19.633365'),
(9, 'auth', '0004_alter_user_username_opts', '2020-07-21 08:56:19.653205'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-07-21 08:56:19.691893'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-07-21 08:56:19.695364'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-07-21 08:56:19.707766'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-07-21 08:56:19.724133'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-07-21 08:56:19.739509'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-07-21 08:56:19.754388'),
(16, 'auth', '0011_update_proxy_permissions', '2020-07-21 08:56:19.764805'),
(17, 'sessions', '0001_initial', '2020-07-21 08:56:19.781669'),
(18, 'Libra', '0001_initial', '2020-07-21 09:25:21.135966');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('hbq1cvmviui3qtf4s4501ziazs3xml2f', 'Nzk4NTZmZDM1ZWIyZmY0NzYxMmMwNGE4NjgxZWRmYmJhODBhZTExYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZTFmYTAxZTY4NWUxZjQ0ZDM3OTNmZTllMjIwMjE3OTZlNzhhNjIyIn0=', '2020-08-04 08:57:48.874678');

-- --------------------------------------------------------

--
-- Table structure for table `libra_book`
--

CREATE TABLE `libra_book` (
  `id` int(11) NOT NULL,
  `title_book` varchar(100) NOT NULL,
  `slg_book` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `libra_category`
--

CREATE TABLE `libra_category` (
  `id_cate` int(11) NOT NULL,
  `title_cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `libra_category`
--

INSERT INTO `libra_category` (`id_cate`, `title_cate`) VALUES
(1, 'Horror'),
(2, 'Romance'),
(3, 'Manhua'),
(4, 'Manga');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `libra_book`
--
ALTER TABLE `libra_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Libra_book_cate_id_7e7ef45a_fk_Libra_category_id_cate` (`cate_id`);

--
-- Indexes for table `libra_category`
--
ALTER TABLE `libra_category`
  ADD PRIMARY KEY (`id_cate`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `libra_book`
--
ALTER TABLE `libra_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `libra_book`
--
ALTER TABLE `libra_book`
  ADD CONSTRAINT `Libra_book_cate_id_7e7ef45a_fk_Libra_category_id_cate` FOREIGN KEY (`cate_id`) REFERENCES `libra_category` (`id_cate`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'library1', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"d\",\"dblib\",\"dblibrary1\",\"dbtest\",\"librarydb\",\"librarym\",\"phpmyadmin\",\"sinhvien\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"dblibrary1\",\"table\":\"library_borrowbook\"},{\"db\":\"dblibrary1\",\"table\":\"library_book\"},{\"db\":\"dblibrary1\",\"table\":\"libary_book\"},{\"db\":\"dblibrary1\",\"table\":\"django_admin_log\"},{\"db\":\"dblibrary1\",\"table\":\"auth_user\"},{\"db\":\"dblibrary1\",\"table\":\"django_session\"},{\"db\":\"dblibrary1\",\"table\":\"library_category\"},{\"db\":\"dblibrary1\",\"table\":\"library_borrow_book\"},{\"db\":\"dblibrary1\",\"table\":\"library_borrower\"},{\"db\":\"dblibrary1\",\"table\":\"library_book_cate\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-07-27 06:18:34', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `sinhvien`
--
CREATE DATABASE IF NOT EXISTS `sinhvien` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `sinhvien`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$eRO6HF40mmmB$ajSfdp1U4t1CKhfDQCKmB16ctflRJytGPhIvjgJDWIM=', '2020-07-21 03:02:26.415147', 1, 'tvvuong', '', '', 'tranvanvuong274@gmail.com', 1, 1, '2020-07-21 03:01:54.367225'),
(2, 'pbkdf2_sha256$180000$DVSvZZK7Z85g$zWxSIReADDF9MOf0nxyqnfg3eSzrXVEz9yRcKh39TX8=', NULL, 0, 'tranvanvuong274', '', '', '', 0, 1, '2020-07-21 03:05:17.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 2, 18),
(19, 2, 19),
(20, 2, 20),
(21, 2, 21),
(22, 2, 22),
(23, 2, 23),
(24, 2, 24);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-07-21 03:05:17.440158', '2', 'tranvanvuong274', 1, '[{\"added\": {}}]', 4, 1),
(2, '2020-07-21 03:06:27.157675', '2', 'tranvanvuong274', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-07-21 02:57:08.187993'),
(2, 'auth', '0001_initial', '2020-07-21 02:57:08.510146'),
(3, 'admin', '0001_initial', '2020-07-21 02:57:09.114159'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-07-21 02:57:09.258812'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-07-21 02:57:09.320316'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-07-21 02:57:09.427865'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-07-21 02:57:09.507782'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-07-21 02:57:09.550979'),
(9, 'auth', '0004_alter_user_username_opts', '2020-07-21 02:57:09.580502'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-07-21 02:57:09.657425'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-07-21 02:57:09.667796'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-07-21 02:57:09.702515'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-07-21 02:57:09.759556'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-07-21 02:57:09.782864'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-07-21 02:57:09.799729'),
(16, 'auth', '0011_update_proxy_permissions', '2020-07-21 02:57:09.809152'),
(17, 'sessions', '0001_initial', '2020-07-21 02:57:09.826436');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('q0y7s9tpa06xokqnh34h467sljxd8249', 'ODNlOWVlNWZiN2E0YzFlMTUyNTdlNTUzMWY0ZWNiYWRiZDY0OWY4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTY4NDU0Yjk1Mzc4YmJmZWM5NGFkYzA5NDdmNzliYWU0ODI3NjcxIn0=', '2020-08-04 03:02:26.418699');

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

CREATE TABLE `sinhvien` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sinhvien`
--

INSERT INTO `sinhvien` (`id`, `name`) VALUES
(1, 'Vuong'),
(2, 'Hoang'),
(3, 'Duc'),
(4, 'Phat'),
(5, 'Loc'),
(6, 'Thinh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
