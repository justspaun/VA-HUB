-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2025 at 05:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `villa_amanda`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad_announcements`
--

CREATE TABLE `ad_announcements` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ad_announcements`
--

INSERT INTO `ad_announcements` (`id`, `user_id`, `title`, `content`, `created_at`) VALUES
(2, 7, 'Power Outage', 'BASTA', '2025-05-19 16:01:43'),
(3, 7, 'Power Outage', 'BASTA', '2025-05-19 16:02:17'),
(4, 7, 'Power Outage', 'BASTA', '2025-05-19 16:05:13'),
(5, 7, 'Power Outage', 'BASTA', '2025-05-19 16:06:24'),
(6, 7, 'Power Outage', 'BASTA', '2025-05-19 16:08:23'),
(7, 7, 'Power Outage', 'BASTA', '2025-05-19 16:08:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad_announcements`
--
ALTER TABLE `ad_announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad_announcements`
--
ALTER TABLE `ad_announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ad_announcements`
--
ALTER TABLE `ad_announcements`
  ADD CONSTRAINT `ad_announcements_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
