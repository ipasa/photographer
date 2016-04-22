-- phpMyAdmin SQL Dump
-- version 4.7.0-dev
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 23, 2016 at 12:02 AM
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
(26, 'Wedding');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image_title` varchar(255) NOT NULL,
  `image_description` varchar(600) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `image_category` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_title`, `image_description`, `image_link`, `image_category`, `created_at`, `updated_at`) VALUES
(3, 'Test Image Upload - 1', 'Dummy text is also used to demonstrate the appearance of different typefaces and layouts, and in general the content of dummy text is nonsensical. Due to its widespread use as filler text for layouts, non-readability is of great importance', '571a6a097e0f3.jpg', '10', '2016-04-22 18:14:33', '2016-04-22 18:14:33'),
(4, 'Test Image Upload - 2', 'Dummy despread use as filler text for layouts, non-readability is of great importance', '571a6a4fbd718.jpg', '11', '2016-04-22 20:03:00', '2016-04-22 18:15:43'),
(5, 'Test Image Upload - 3', 'Dummy text is also used to demonstrate the appearance of different typefaces and layouts, and in general the content of dummy text is nonsensical. Due to its widespread use as filler text for layouts, non-readability is of great importance', '571a6a6058e4b.jpg', '14', '2016-04-22 18:16:00', '2016-04-22 18:16:00'),
(6, 'Test Image Upload - 4', 'Dummy text is also used to demonstrate the appearance of different typefaces and layouts, and in general the content of dummy text is nonsensical. Due to its widespread use as filler text for layouts, non-readability is of great importance', '571a6a7305f0e.jpg', '18', '2016-04-22 18:16:19', '2016-04-22 18:16:19'),
(7, 'Test Image Upload - 5', '', '571a6a8a82778.jpg', '8', '2016-04-22 18:16:42', '2016-04-22 18:16:42');

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
(17, 'Hasan Hafiz Pasha', 'mach.pasha@gmail.com', '$2y$10$ucg4iGs5IrOx6C7VnTeK/.iUcNaU.aVEVllyvJguMJrlc3YA6HE1W', '2016-04-22 10:51:06', '2016-04-22 10:51:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorylists`
--
ALTER TABLE `categorylists`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
