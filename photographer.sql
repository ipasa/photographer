-- phpMyAdmin SQL Dump
-- version 4.7.0-dev
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 29, 2016 at 10:45 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `photographer`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorylists`
--

CREATE TABLE `categorylists` (
  `id` int(11) NOT NULL,
  `category_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categorylists`
--

INSERT INTO `categorylists` (`id`, `category_name`) VALUES
(1, 'Abstract'),
(2, 'Animals'),
(3, 'Black and White'),
(4, 'Celebrities'),
(5, 'City & Architecture'),
(6, 'Commercial'),
(7, 'Concert'),
(8, 'Family'),
(9, 'Fashion'),
(10, 'Film'),
(11, 'Fine Art'),
(12, 'Food'),
(13, 'Journalism'),
(14, 'Landscapes'),
(15, 'Macro'),
(16, 'Nature'),
(17, 'People'),
(18, 'Performing Arts'),
(19, 'Sport'),
(20, 'Still Life'),
(21, 'Street'),
(22, 'Transportation'),
(23, 'Travel'),
(24, 'Underwater'),
(25, 'Urban Exploration'),
(26, 'Wedding'),
(27, 'Uncategorised');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `user_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`user_id`, `image_id`, `created_at`, `updated_at`) VALUES
(1, 6, '2016-04-29 20:37:03', '2016-04-29 20:37:03'),
(1, 9, '2016-04-29 20:43:44', '2016-04-29 20:43:44'),
(1, 15, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(1, 35, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(2, 7, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(2, 18, '2016-04-29 20:25:10', '2016-04-29 20:25:10'),
(2, 21, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(2, 44, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(3, 25, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(3, 58, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(4, 47, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(4, 50, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(4, 52, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(5, 26, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(5, 57, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(6, 13, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(6, 29, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(7, 56, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(8, 11, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(9, 67, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(10, 1, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(10, 11, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(11, 16, '2016-04-29 19:19:00', '0000-00-00 00:00:00'),
(12, 29, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(12, 44, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(13, 7, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(13, 26, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(13, 58, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(14, 23, '2016-04-29 19:19:08', '0000-00-00 00:00:00'),
(15, 42, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(15, 60, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(15, 66, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(16, 7, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(16, 46, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(16, 64, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(16, 67, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(17, 9, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(17, 13, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(17, 22, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(17, 38, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(17, 64, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(18, 27, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(18, 35, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(18, 38, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(18, 48, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(18, 51, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(19, 9, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(19, 13, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(20, 2, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(20, 19, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(21, 6, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(22, 41, '2016-04-29 19:19:16', '0000-00-00 00:00:00'),
(23, 18, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(23, 52, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(23, 60, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(23, 64, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(24, 12, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(24, 66, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(25, 11, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(25, 19, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(25, 61, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(26, 27, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(26, 57, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(27, 20, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(27, 31, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(27, 35, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(27, 62, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(28, 18, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(28, 55, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(29, 24, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(29, 33, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(29, 67, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(30, 27, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(30, 31, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(31, 5, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(31, 40, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(31, 66, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(32, 15, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(32, 17, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(32, 18, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(32, 38, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(33, 9, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(33, 41, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(33, 52, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(34, 3, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(34, 31, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(34, 38, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(35, 12, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(35, 42, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(36, 57, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(36, 63, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(37, 37, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(38, 9, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(38, 15, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(38, 42, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(38, 55, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(39, 2, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(39, 11, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(39, 16, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(39, 32, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(39, 45, '2016-04-29 19:17:41', '0000-00-00 00:00:00'),
(40, 31, '2016-04-29 19:16:11', '0000-00-00 00:00:00'),
(40, 65, '2016-04-29 19:17:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `follower_id` int(11) NOT NULL,
  `followed_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'follow'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`follower_id`, `followed_id`, `created_at`, `updated_at`, `type`) VALUES
(3, 1, '2016-04-29 17:39:58', '2016-04-29 17:39:58', 'follow'),
(3, 5, '2016-04-28 22:07:59', '2016-04-28 22:07:59', 'follow'),
(4, 3, '2016-04-28 15:59:45', '2016-04-28 15:59:45', 'follow'),
(4, 5, '2016-04-28 22:03:10', '2016-04-28 22:03:10', 'follow'),
(5, 3, '2016-04-28 21:49:34', '2016-04-28 21:49:34', 'follow'),
(6, 1, '2016-04-29 17:47:20', '2016-04-29 17:47:20', 'follow'),
(13, 3, '2016-04-29 20:00:23', '2016-04-29 20:00:23', 'follow'),
(27, 1, '2016-04-29 19:38:47', '2016-04-29 19:38:47', 'follow'),
(32, 1, '2016-04-29 19:40:30', '2016-04-29 19:40:30', 'follow');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image_title` varchar(255) NOT NULL,
  `image_description` varchar(600) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `image_category` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `view_counter` int(11) NOT NULL DEFAULT '0',
  `rating_counter` int(11) NOT NULL,
  `pulse_counter` decimal(10,2) NOT NULL,
  `popularity` varchar(10) NOT NULL DEFAULT 'fresh',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_title`, `image_description`, `image_link`, `image_category`, `user_id`, `view_counter`, `rating_counter`, `pulse_counter`, `popularity`, `created_at`, `updated_at`) VALUES
(1, 'Aurora Borealis', '', '5723835079d4e.jpg', 16, 6, 4, 1, '25.00', 'fresh', '2016-04-29 19:14:01', '2016-04-29 19:14:01'),
(2, 'The two of us', '', '572383368119e.jpg', 15, 6, 4, 1, '25.00', 'fresh', '2016-04-29 19:14:07', '2016-04-29 19:14:07'),
(3, 'Test Image Upload - 1', 'Dummy data for test image', '571d2fadbfc83.jpg', 16, 3, 25, 6, '24.00', 'fresh', '2016-04-29 18:44:08', '2016-04-29 18:44:08'),
(4, 'Test Image Upload - 2', '', '571d2ff5bcc59.jpg', 1, 3, 23, 5, '21.74', 'fresh', '2016-04-29 20:34:18', '2016-04-29 20:34:18'),
(5, 'Test Image Upload - 3', '', '571d3044b53d7.jpg', 9, 3, 47, 0, '0.00', 'fresh', '2016-04-29 08:38:46', '2016-04-29 08:38:46'),
(6, 'Test Image Upload - 4', '', '571d30a7c3500.jpg', 15, 3, 4, 2, '50.00', 'fresh', '2016-04-29 20:37:04', '2016-04-29 20:37:04'),
(7, 'Test Image Upload - 6', '', '571d312e44d32.jpg', 1, 3, 108, 56, '51.85', 'upcoming', '2016-04-29 20:24:50', '2016-04-29 20:24:50'),
(8, 'Test Image Upload - 7', '', '571d322f6e7d0.jpg', 1, 3, 6, 1, '16.67', 'fresh', '2016-04-29 08:48:53', '2016-04-29 08:48:53'),
(9, 'light trail by sohel', 'light trail', '571dcfbcbd4b6.jpg', 1, 4, 70, 26, '37.14', 'upcoming', '2016-04-29 20:45:02', '2016-04-29 20:45:02'),
(10, 'Upload Test Image', '', '571dd0ef05e29.jpg', 16, 3, 15, 5, '33.33', 'fresh', '2016-04-29 20:14:10', '2016-04-29 20:14:10'),
(11, 'test data upload', '', '571dd121144e7.jpg', 16, 3, 7, 5, '71.43', 'fresh', '2016-04-28 15:32:48', '2016-04-28 15:32:48'),
(12, 'khik khik ', '', '571de21f0aedb.jpg', 1, 5, 16, 0, '0.00', 'fresh', '2016-04-29 08:19:00', '2016-04-29 08:19:00'),
(13, 'Test Image Upload - Jilani', 'This is captured by jilani ... ', '57228cda01d2d.jpg', 14, 5, 3, 0, '0.00', 'fresh', '2016-04-29 08:02:26', '2016-04-29 08:02:26'),
(14, 'City Light', 'City Light by Hasan Hafiz Pasha, it\'s pasha\'s photography', '572314f38fe95.jpg', 17, 3, 3, 1, '33.33', 'fresh', '2016-04-29 08:48:47', '2016-04-29 08:48:47'),
(15, 'Lightroom Preset Balloon Released', '\r\nI\'m super excited to let you all know that today, after 2 months of tweaking and testing, I\'ve finally released my Presets package for Lightroom!', '5723822ecaf3e.jpg', 1, 6, 2, 1, '50.00', 'fresh', '2016-04-29 15:49:08', '2016-04-29 15:49:08'),
(16, 'Counting sheep', 'Morning view near Schiedam, Netherlands. Lost count at about a hundred sheep :-)', '5723829f62a11.jpg', 16, 6, 1, 0, '0.00', 'fresh', '2016-04-29 17:35:46', '2016-04-29 17:35:46'),
(17, 'Shooting Star', '', '572382c0c4608.jpg', 11, 6, 0, 0, '0.00', 'fresh', '2016-04-29 15:50:24', '2016-04-29 15:50:24'),
(18, 'dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit', '', 'photo-1Af0sF2OS5S5gatqrKzVP_Silhoutte.jpg', 21, 12, 3, 1, '33.33', 'fresh', '2016-04-29 20:33:50', '2016-04-29 20:33:50'),
(19, 'eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est.', '', 'photo-1iFJ5qQylTD2POC68qBgh_Uluru.jpg', 5, 10, 0, 0, '0.00', 'fresh', '2016-04-29 20:25:54', '0000-00-00 00:00:00'),
(20, 'Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc', '', 'photo-12919e13b.jpg', 10, 11, 1, 0, '0.00', 'fresh', '2016-04-29 20:42:34', '2016-04-29 20:42:34'),
(21, 'rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac', '', 'photo-1415931633537-351070d20b81.jpg', 25, 28, 0, 0, '0.00', 'fresh', '2016-04-29 20:26:10', '0000-00-00 00:00:00'),
(22, 'Sed eget lacus. Mauris non dui nec urna suscipit nonummy.', '', 'photo-1422207109431-97544339f995.jpg', 3, 4, 1, 0, '0.00', 'fresh', '2016-04-29 20:26:18', '2016-04-29 19:14:07'),
(23, 'ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat', '', 'photo-1422207134147-65fb81f59e38.jpg', 5, 11, 0, 0, '0.00', 'fresh', '2016-04-29 20:26:26', '0000-00-00 00:00:00'),
(24, 'adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu', '', 'photo-1424746219973-8fe3bd07d8e3.jpg', 23, 5, 0, 0, '0.00', 'fresh', '2016-04-29 20:26:36', '0000-00-00 00:00:00'),
(25, 'vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue', '', 'photo-1425315283416-2acc50323ee6.jpg', 21, 2, 0, 0, '0.00', 'fresh', '2016-04-29 20:26:45', '0000-00-00 00:00:00'),
(26, 'ultrices a, auctor non, feugiat nec, diam. Duis mi enim,', '', 'photo-1427501482951-3da9b725be23.jpg', 23, 13, 2, 0, '0.00', 'fresh', '2016-04-29 20:27:00', '2016-04-29 20:00:23'),
(27, 'erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla', '', 'photo-1427805371062-cacdd21273f1.jpg', 24, 7, 0, 0, '0.00', 'fresh', '2016-04-29 20:27:08', '0000-00-00 00:00:00'),
(28, 'vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend', '', 'photo-1428263197823-ce6a8620d1e1.jpg', 3, 37, 0, 0, '0.00', 'fresh', '2016-04-29 20:27:21', '0000-00-00 00:00:00'),
(29, 'eu nulla at sem molestie sodales. Mauris blandit enim consequat', '', 'photo-1428278953961-a8bc45e05f72.jpg', 2, 36, 0, 0, '0.00', 'fresh', '2016-04-29 20:27:29', '0000-00-00 00:00:00'),
(30, 'dictum mi, ac mattis velit justo nec ante. Maecenas mi', '', 'photo-1428279148693-1cf2163ed67d.jpg', 16, 27, 0, 0, '0.00', 'fresh', '2016-04-29 20:27:37', '0000-00-00 00:00:00'),
(31, 'Donec felis orci, adipiscing non, luctus sit amet, faucibus ut,', '', 'photo-1428452932365-4e7e1c4b0987.jpg', 7, 19, 0, 0, '0.00', 'fresh', '2016-04-29 20:27:46', '0000-00-00 00:00:00'),
(32, 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '', 'photo-1428865798880-73444f4cbefc.jpg', 20, 31, 0, 0, '0.00', 'fresh', '2016-04-29 20:27:55', '0000-00-00 00:00:00'),
(33, 'Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor', '', 'photo-1428894976381-853e04af6262.jpg', 2, 6, 0, 0, '0.00', 'fresh', '2016-04-29 20:28:04', '0000-00-00 00:00:00'),
(34, 'at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum', '', 'photo-1428930377079-45a584b6dd6b.jpg', 5, 4, 0, 0, '0.00', 'fresh', '2016-04-29 20:28:18', '0000-00-00 00:00:00'),
(35, 'ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque', '', 'photo-1428948304740-392e214d312f.jpg', 4, 5, 0, 0, '0.00', 'fresh', '2016-04-29 20:28:25', '0000-00-00 00:00:00'),
(36, 'eu arcu. Morbi sit amet massa. Quisque porttitor eros nec', '', 'photo-1428954376791-d9ae785dfb2d.jpg', 15, 33, 0, 0, '0.00', 'fresh', '2016-04-29 20:28:34', '0000-00-00 00:00:00'),
(37, 'ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem', '', 'photo-1428959249159-5706303ea703.jpg', 20, 35, 0, 0, '0.00', 'fresh', '2016-04-29 20:28:44', '0000-00-00 00:00:00'),
(38, 'Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna.', '', 'photo-1428976343495-f2c66e701b2b.jpg', 9, 7, 0, 0, '0.00', 'fresh', '2016-04-29 20:28:52', '0000-00-00 00:00:00'),
(39, 'ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel', '', 'photo-1428976365951-b70e0fa5c551.jpg', 24, 7, 0, 0, '0.00', 'fresh', '2016-04-29 20:29:00', '0000-00-00 00:00:00'),
(40, 'magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu', '', 'photo-1429030150151-548690082f0b.jpg', 20, 31, 0, 0, '0.00', 'fresh', '2016-04-29 20:29:09', '0000-00-00 00:00:00'),
(41, 'consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', '', 'photo-1429032021766-c6a53949594f.jpg', 20, 14, 0, 0, '0.00', 'fresh', '2016-04-29 20:29:18', '0000-00-00 00:00:00'),
(42, 'gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet', '', 'photo-1429041966141-44d228a42775.jpg', 2, 16, 0, 0, '0.00', 'fresh', '2016-04-29 20:29:27', '0000-00-00 00:00:00'),
(43, 'nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat.', '', 'photo-1429042007245-890c9e2603af.jpg', 11, 40, 0, 0, '0.00', 'fresh', '2016-04-29 20:29:36', '0000-00-00 00:00:00'),
(44, 'Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu.', '', 'photo-1429152937938-07b5f2828cdd.jpg', 5, 8, 0, 0, '0.00', 'fresh', '2016-04-29 20:29:46', '0000-00-00 00:00:00'),
(45, 'vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci', '', 'photo-1429198739803-7db875882052.jpg', 17, 32, 2, 0, '0.00', 'fresh', '2016-04-29 20:29:55', '2016-04-29 19:40:30'),
(46, 'Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae,', '', 'photo-1429277005502-eed8e872fe52.jpg', 18, 4, 0, 0, '0.00', 'fresh', '2016-04-29 20:30:03', '0000-00-00 00:00:00'),
(47, 'elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris', '', 'photo-1429277096327-11ee3b761c93.jpg', 21, 16, 0, 0, '0.00', 'fresh', '2016-04-29 20:30:12', '0000-00-00 00:00:00'),
(48, 'Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna.', '', 'photo-1429277158984-614d155e0017.jpg', 10, 16, 0, 0, '0.00', 'fresh', '2016-04-29 20:30:20', '0000-00-00 00:00:00'),
(49, 'enim consequat purus. Maecenas libero est, congue a, aliquet vel,', '', 'photo-1429308755210-25a272addeb3.jpg', 10, 40, 0, 0, '0.00', 'fresh', '2016-04-29 20:30:27', '0000-00-00 00:00:00'),
(50, 'eu tellus eu augue porttitor interdum. Sed auctor odio a', '', 'photo-1429547584745-d8bec594c82e.jpg', 17, 29, 0, 0, '0.00', 'fresh', '2016-04-29 20:30:35', '0000-00-00 00:00:00'),
(51, 'tristique senectus et netus et malesuada fames ac turpis egestas.', '', 'photo-1429616588302-fec569e203ce.jpg', 20, 19, 0, 0, '0.00', 'fresh', '2016-04-29 20:30:48', '0000-00-00 00:00:00'),
(52, 'malesuada fames ac turpis egestas. Fusce aliquet magna a neque.', '', 'photo-1429637119272-20043840c013.jpg', 20, 27, 3, 0, '0.00', 'fresh', '2016-04-29 20:30:59', '2016-04-29 19:39:10'),
(53, 'Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla', '', 'photo-1429734160945-4f85244d6a5a.jpg', 18, 7, 0, 0, '0.00', 'fresh', '2016-04-29 20:31:07', '0000-00-00 00:00:00'),
(54, 'cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut', '', 'photo-1429743433956-0e34951fcc67.jpg', 12, 37, 0, 0, '0.00', 'fresh', '2016-04-29 20:31:15', '0000-00-00 00:00:00'),
(55, 'cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet', '', 'photo-1429966163023-c132bc887fdd.jpg', 8, 20, 0, 0, '0.00', 'fresh', '2016-04-29 20:31:22', '0000-00-00 00:00:00'),
(56, 'ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero', '', 'photo-1430263326118-b75aa0da770b.jpg', 16, 10, 0, 0, '0.00', 'fresh', '2016-04-29 20:31:31', '0000-00-00 00:00:00'),
(57, 'tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim', '', 'photo-1430598825529-927d770c194f.jpg', 15, 28, 0, 0, '0.00', 'fresh', '2016-04-29 20:31:37', '0000-00-00 00:00:00'),
(58, 'eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis', '', 'photo-1430747562296-5556d17a15a5.jpg', 16, 35, 0, 0, '0.00', 'fresh', '2016-04-29 20:31:46', '0000-00-00 00:00:00'),
(59, 'elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu', '', 'photo-1430760814266-9c81759e5e55.jpg', 4, 14, 0, 0, '0.00', 'fresh', '2016-04-29 20:31:53', '0000-00-00 00:00:00'),
(60, 'Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna,', '', 'photo-1430866880825-336a7d7814eb.jpg', 1, 37, 0, 0, '0.00', 'fresh', '2016-04-29 20:32:03', '0000-00-00 00:00:00'),
(61, 'et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget', '', 'photo-1430916273432-273c2db881a0.jpg', 7, 4, 0, 0, '0.00', 'fresh', '2016-04-29 20:32:14', '0000-00-00 00:00:00'),
(62, 'lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque.', '', 'photo-1431051047106-f1e17d81042f.jpg', 25, 21, 0, 0, '0.00', 'fresh', '2016-04-29 20:32:20', '0000-00-00 00:00:00'),
(63, 'rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in,', '', 'photo-1437912958086-300d70657a11.jpg', 3, 16, 0, 0, '0.00', 'fresh', '2016-04-29 20:33:17', '0000-00-00 00:00:00'),
(64, 'Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin', '', 'photo-1431578500526-4d9613015464.jpg', 4, 24, 0, 0, '0.00', 'fresh', '2016-04-29 20:32:40', '0000-00-00 00:00:00'),
(65, 'malesuada fames ac turpis egestas. Fusce aliquet magna a neque.', '', 'photo-1431184052543-809fa8cc9bd6.jpg', 20, 34, 0, 0, '0.00', 'fresh', '2016-04-29 20:32:33', '0000-00-00 00:00:00'),
(66, 'felis. Donec tempor, est ac mattis semper, dui lectus rutrum', '', 'photo-1437913135140-944c1ee62782.jpg', 8, 40, 0, 0, '0.00', 'fresh', '2016-04-29 20:33:26', '0000-00-00 00:00:00'),
(67, 'consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque', '', 'photo-1437915015400-137312b61975.jpg', 2, 34, 0, 0, '0.00', 'fresh', '2016-04-29 20:33:33', '0000-00-00 00:00:00'),
(68, 'সবুজের স্পন্দন - ১', '', '5723c6b050ba7.jpg', 16, 1, 0, 0, '0.00', 'fresh', '2016-04-29 20:40:16', '2016-04-29 20:40:16'),
(69, 'Fedded Green', '', '5723c6d7bc446.jpg', 16, 1, 1, 0, '0.00', 'fresh', '2016-04-29 20:41:05', '2016-04-29 20:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Hasan Hafiz Pasha', 'mach.pasha@gmail.com', '$2y$10$/Hxr3lYMe5YtbfLAjOLziu.7vZMhe/O2Jlclv4TFxRdKOeGjjrV52', '2016-04-29 17:05:45', '2016-04-24 20:29:27'),
(2, 'Abu Sohel', 'abusoheljnu@gmail.com', '$2y$10$2klMD5sDGl2/cDfiLDNC2ewN82RQWCI1zHN49jfszBYbYkAQ7eNqm', '2016-04-29 17:05:55', '2016-04-25 17:57:21'),
(3, 'jilani khandaker', 'jilanikhandaker@yahoo.com', '$2y$10$7RKkNN25kKJNlRWysoAEYOjk5cQ3HJpMDQxutr.cFsfeuQzlnL//u', '2016-04-29 17:06:01', '2016-04-25 19:20:34'),
(4, 'MD Tazin Jahed Jony', 'tazinjahed@gmail.com', '$2y$10$4zmHgFwHrZeS.zm1PCMmpuf66jnI3m9cyTLuU46PJLpbipiDAcRPG', '2016-04-29 17:06:04', '2016-04-29 15:40:19'),
(5, 'Anwarul Islam Abir', 'anwarulislamabir@gmail.com', '$2y$10$.2m/XMBJZVD5tQ7MX3KDKe3xKgDbP8LbpeGR.PyeIoBJ5VadUVV4u', '2016-04-29 17:26:34', '2016-04-29 17:26:34'),
(6, 'arnisha akhter jubly', 'arnishaakhter@yahoo.com', '$2y$10$Nl25aRXR8fnTQUB7LmezzuEkJotMuKhOpVcW4vwGS/FDyl2dhORMi', '2016-04-29 17:27:15', '2016-04-29 17:27:15'),
(7, 'Jannatul Ferdus Ruma', 'ruma.ruma705@gmail.com', '$2y$10$hlRynABUXbu1VQYlNTStvutc.oFpLtwex2d4le.v4QZTIvv4hap7S', '2016-04-29 17:27:54', '2016-04-29 17:27:54'),
(8, 'Mahadi Hasan Raju', 'mahadihasannight@gmail.com', '$2y$10$AFA4/LSKWA3iYp37kLnW7./AIAExROOe2hJpcTqOpmHj8tP7DZAMm', '2016-04-29 17:28:27', '2016-04-29 17:28:27'),
(9, 'Alamin Hossain', 'mohammad.alamin51@yahoo.com', '$2y$10$kMlyepFqM6ecPEV5s/zKKOGG3.jpA4NFEqGPrzS86qH3.FV3FpXs.', '2016-04-29 17:28:59', '2016-04-29 17:28:59'),
(10, 'Zobaydul Korim Rony', 'zkrony001@gmail.com', '$2y$10$rEeeHeTMPTquIs35RXpxIeNLwZaxw5sb4NOVPkiLn6XS2AhMUL3ya', '2016-04-29 17:29:52', '2016-04-29 17:29:52'),
(11, 'mehedi pervez kanon', 'mehedipervez@gmail.com', '$2y$10$XYXViyy2atDcmUWbvRFDgeZmWWYTQqgVI7Hsr0fFgJoS12UXhmknm', '2016-04-29 17:30:43', '2016-04-29 17:30:43'),
(12, 'Jarin Tasnim', 'diba.ipsc@gmail.com', '$2y$10$Hf3KtyVo7KDivxG3gVyM9uCiHIAoyPLaRLdgW7bMbKqpkhR09m5l6', '2016-04-29 17:31:22', '2016-04-29 17:31:22'),
(13, 'Masudur Rahman Masud', 'masudjnu87@gmail.com', '$2y$10$ZHD6Gqy/3WR8XLflYagseOIUhuXkysVM0mtMx5sQOvfADhuq15SoS', '2016-04-29 17:32:50', '2016-04-29 17:32:50'),
(14, 'Alamgir Hossain', 'alcsejnu@gmail.com', '$2y$10$sWptN9UDnqAu80DkHSq29Oo/sGhXwZJnnvjdRExhqzf6lUiAdPhJ6', '2016-04-29 17:33:48', '2016-04-29 17:33:48'),
(15, 'Griffin Moss', 'et@arcueuodio.com', 'NIU91EYR7FX', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(16, 'Yuli Pope', 'pretium.aliquet@liberoest.co.uk', 'PJM07DZV3DO', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(17, 'Linus Berger', 'Suspendisse.eleifend.Cras@mauris.co.uk', 'EIA88QQK6DG', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(18, 'Walker Lucas', 'justo@famesac.com', 'XTH53FYC4DW', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(19, 'Talon Barr', 'nec.ligula@enim.com', 'OCN36IEW1PF', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(20, 'Zeph Greer', 'at.iaculis@risusvariusorci.edu', 'QVG73MTJ3CS', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(21, 'Benedict Benton', 'Nulla.facilisis.Suspendisse@libero.net', 'ARW58LCV8HG', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(22, 'Xanthus Hendricks', 'dui.Cum@cursusIntegermollis.org', 'LGL16HXI8MO', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(23, 'Nicholas Price', 'malesuada.vel@posuerevulputate.ca', 'FMI14HSW4AW', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(24, 'Asher Preston', 'accumsan.sed@magnaSuspendisse.net', 'KJN85EMI6ZQ', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(25, 'Robert Peters', 'vestibulum.Mauris.magna@utipsumac.com', 'HQM73SOM8DZ', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(26, 'Yasir Shaffer', 'tincidunt@vehiculaaliquet.net', 'ETP88YUY3ZM', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(27, 'Colin Carson', 'fringilla.mi@Nullamfeugiatplacerat.net', 'PRR70ITL2KB', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(28, 'Joel Carr', 'vestibulum.Mauris@mi.net', 'OEN34XYW9TP', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(29, 'Lester Odom', 'eget@pharetrasedhendrerit.org', 'LSJ43DPW2ZO', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(30, 'Sean Walton', 'pharetra.Quisque.ac@auctor.com', 'XMD15TQP8RR', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(31, 'Quamar Meyer', 'nisi.sem.semper@magna.net', 'VSE62PMQ0QZ', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(32, 'Mark Irwin', 'eros.turpis@In.org', 'VXM79NFW0OM', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(33, 'Damon Simon', 'Cras.eu@euismodest.net', 'MDC20HFB9IE', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(34, 'Colby Tyson', 'dui.augue.eu@vulputatelacus.co.uk', 'POC19HVY3LP', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(35, 'Kadeem Flowers', 'faucibus@mattissemperdui.net', 'XLP90IGC1UZ', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(36, 'Davis Neal', 'vitae.diam.Proin@turpisAliquam.co.uk', 'AMS16AGM4CD', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(37, 'Abbot Mcmahon', 'sit.amet@faucibusleoin.org', 'EFY89PAC5TG', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(38, 'Dean Guthrie', 'risus.Nulla.eget@acurna.org', 'JHY87TBQ9OU', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(39, 'Dennis Perkins', 'porttitor.vulputate.posuere@justo.edu', 'IJM61BKR9NZ', '2016-04-29 19:10:04', '0000-00-00 00:00:00'),
(40, 'Brian Wilkinson', 'arcu.iaculis@eulacusQuisque.edu', 'WWG29SOG6TF', '2016-04-29 19:10:04', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorylists`
--
ALTER TABLE `categorylists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`user_id`,`image_id`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`follower_id`,`followed_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorylists`
--
ALTER TABLE `categorylists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
