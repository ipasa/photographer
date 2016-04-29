-- phpMyAdmin SQL Dump
-- version 4.7.0-dev
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 29, 2016 at 03:56 PM
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
(3, 3, '2016-04-26 17:51:25', '2016-04-26 17:51:25'),
(3, 4, '2016-04-26 17:51:42', '2016-04-26 17:51:42'),
(3, 7, '2016-04-29 08:34:07', '2016-04-29 08:34:07'),
(3, 10, '2016-04-26 17:51:03', '2016-04-26 17:51:03'),
(3, 11, '2016-04-26 17:50:28', '2016-04-26 17:50:28'),
(5, 8, '2016-04-29 08:48:53', '2016-04-29 08:48:53'),
(5, 14, '2016-04-29 08:48:47', '2016-04-29 08:48:47');

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
(3, 5, '2016-04-28 22:07:59', '2016-04-28 22:07:59', 'follow'),
(4, 3, '2016-04-28 15:59:45', '2016-04-28 15:59:45', 'follow'),
(4, 5, '2016-04-28 22:03:10', '2016-04-28 22:03:10', 'follow'),
(5, 3, '2016-04-28 21:49:34', '2016-04-28 21:49:34', 'follow');

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
(3, 'Test Image Upload - 1', 'Dummy data for test image', '571d2fadbfc83.jpg', 16, 3, 20, 5, '25.00', 'fresh', '2016-04-29 08:43:30', '2016-04-29 08:43:30'),
(4, 'Test Image Upload - 2', '', '571d2ff5bcc59.jpg', 1, 3, 16, 5, '31.25', 'fresh', '2016-04-28 22:20:12', '2016-04-28 22:20:12'),
(5, 'Test Image Upload - 3', '', '571d3044b53d7.jpg', 9, 3, 47, 0, '0.00', 'fresh', '2016-04-29 08:38:46', '2016-04-29 08:38:46'),
(6, 'Test Image Upload - 4', '', '571d30a7c3500.jpg', 15, 3, 0, 0, '0.00', 'fresh', '2016-04-24 20:46:31', '2016-04-24 20:46:31'),
(7, 'Test Image Upload - 6', '', '571d312e44d32.jpg', 1, 3, 101, 55, '118.81', 'popular', '2016-04-29 08:38:37', '2016-04-29 08:34:45'),
(8, 'Test Image Upload - 7', '', '571d322f6e7d0.jpg', 1, 3, 6, 1, '16.67', 'fresh', '2016-04-29 08:48:53', '2016-04-29 08:48:53'),
(9, 'light trail by sohel', 'light trail', '571dcfbcbd4b6.jpg', 1, 4, 64, 25, '39.06', 'upcoming', '2016-04-29 08:42:33', '2016-04-29 08:42:33'),
(10, 'Upload Test Image', '', '571dd0ef05e29.jpg', 16, 3, 14, 5, '35.71', 'fresh', '2016-04-28 22:07:59', '2016-04-28 22:07:59'),
(11, 'test data upload', '', '571dd121144e7.jpg', 16, 3, 7, 5, '71.43', 'fresh', '2016-04-28 15:32:48', '2016-04-28 15:32:48'),
(12, 'khik khik ', '', '571de21f0aedb.jpg', 1, 5, 16, 0, '0.00', 'fresh', '2016-04-29 08:19:00', '2016-04-29 08:19:00'),
(13, 'Test Image Upload - Jilani', 'This is captured by jilani ... ', '57228cda01d2d.jpg', 14, 5, 3, 0, '0.00', 'fresh', '2016-04-29 08:02:26', '2016-04-29 08:02:26'),
(14, 'City Light', 'City Light by Hasan Hafiz Pasha, it\'s pasha\'s photography', '572314f38fe95.jpg', 17, 3, 3, 1, '33.33', 'fresh', '2016-04-29 08:48:47', '2016-04-29 08:48:47');

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
(3, 'Hasan Hafiz Pasha', 'mach.pasha@gmail.com', '$2y$10$/Hxr3lYMe5YtbfLAjOLziu.7vZMhe/O2Jlclv4TFxRdKOeGjjrV52', '2016-04-24 20:29:27', '2016-04-24 20:29:27'),
(4, 'Abu Sohel', 'abusoheljnu@gmail.com', '$2y$10$2klMD5sDGl2/cDfiLDNC2ewN82RQWCI1zHN49jfszBYbYkAQ7eNqm', '2016-04-25 17:57:21', '2016-04-25 17:57:21'),
(5, 'jilani khandaker', 'jilanikhandaker@yahoo.com', '$2y$10$7RKkNN25kKJNlRWysoAEYOjk5cQ3HJpMDQxutr.cFsfeuQzlnL//u', '2016-04-25 19:20:34', '2016-04-25 19:20:34');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
