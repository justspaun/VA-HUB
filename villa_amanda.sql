-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2025 at 08:11 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `context` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `context`, `datetime`) VALUES
(1, 'Water Interruption', 'There will be a water interruption in the community on May 25, 2025, from 8 AM to 5 PM.', '2025-05-25 08:00:00'),
(2, 'Scheduled Maintenance', 'Electricity maintenance is scheduled for June 1, 2025, between 10 AM and 4 PM.', '2025-06-01 10:00:00'),
(3, 'Community Meeting', 'A community meeting will be held on May 30, 2025, at 6 PM in the clubhouse.', '2025-05-30 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `carpenter`
--

CREATE TABLE `carpenter` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `specialty` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carpenter`
--

INSERT INTO `carpenter` (`id`, `name`, `address`, `phone`, `specialty`, `created_at`) VALUES
(1, 'nics', 'tabi', '0987654321', 'magpuyat', '2025-05-19 13:24:59'),
(2, 'hatdog', 'bread', '0697812345', 'haha', '2025-05-19 15:22:49');

-- --------------------------------------------------------

--
-- Table structure for table `electrician`
--

CREATE TABLE `electrician` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `specialty` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `electrician`
--

INSERT INTO `electrician` (`id`, `name`, `address`, `phone`, `specialty`, `created_at`) VALUES
(1, 'lex', 'calamba', '0956781234', 'magpuyat', '2025-05-19 13:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `plumber`
--

CREATE TABLE `plumber` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `specialty` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plumbers`
--

CREATE TABLE `plumbers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `specialty` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plumbers`
--

INSERT INTO `plumbers` (`id`, `name`, `address`, `phone`, `specialty`, `created_at`) VALUES
(1, 'criselle', 'calamba', '0987654321', 'magpuyat', '2025-05-19 13:11:29');

-- --------------------------------------------------------

--
-- Table structure for table `repairman`
--

CREATE TABLE `repairman` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `specialty` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `repairman`
--

INSERT INTO `repairman` (`id`, `name`, `address`, `phone`, `specialty`, `created_at`) VALUES
(1, 'nics', 'tabi', '09697812345', 'magpuyat', '2025-05-19 13:02:02');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `content`, `created_at`) VALUES
(1, 6, 'hehe', '2025-05-19 06:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `facility` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `occasion` varchar(255) NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `user_id`, `facility`, `name`, `address`, `date`, `occasion`, `submitted_at`, `status`) VALUES
(1, 6, 'Pavillion / Club House', 'nics', 'basta', '2025-05-22', 'secret', '2025-05-19 06:15:49', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `service_providers`
--

CREATE TABLE `service_providers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `service_type` enum('Plumber','Electrician','Repairman','Carpenter') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_providers`
--

INSERT INTO `service_providers` (`id`, `name`, `address`, `phone_number`, `specialty`, `service_type`) VALUES
(1, 'Nicole Suralta', 'Anos', '09123456789', 'Red flag enjoyer', 'Plumber'),
(2, 'Criselle Umali', 'Mayondon', '09123456789', 'BH songs enjoyer', 'Plumber'),
(3, 'Lex Anne De Leon', 'Calamba', '09123456789', 'Gym boy enjoyer, ATM machine', 'Plumber'),
(4, 'Mark Dela Cruz', 'Los Baños', '09121234567', 'Wiring specialist', 'Electrician'),
(5, 'Janine Bautista', 'Bay', '09998887777', 'Flat screen repair', 'Repairman'),
(6, 'Carlos Reyes', 'Pansol', '09129876543', 'Roof repair expert', 'Carpenter');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `block` varchar(20) NOT NULL,
  `lot` varchar(20) NOT NULL,
  `phase` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `block`, `lot`, `phase`, `age`, `gender`, `email`, `password`) VALUES
(6, 'nics', 'Block 8', 'Lot 9', 'Phase 5', 22, '', 'nics@gmail.com', 'nicole123'),
(7, 'admin', 'Block 9', 'Lot 7', 'Phase 4', 34, '', 'admin@gmail.com', 'admin123'),
(8, 'user1', 'Block 7', 'Lot 5', 'Phase 9', 45, '', 'user1@gmail.com', 'user1');

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
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carpenter`
--
ALTER TABLE `carpenter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `electrician`
--
ALTER TABLE `electrician`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plumber`
--
ALTER TABLE `plumber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plumbers`
--
ALTER TABLE `plumbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repairman`
--
ALTER TABLE `repairman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `service_providers`
--
ALTER TABLE `service_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad_announcements`
--
ALTER TABLE `ad_announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `carpenter`
--
ALTER TABLE `carpenter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `electrician`
--
ALTER TABLE `electrician`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plumber`
--
ALTER TABLE `plumber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plumbers`
--
ALTER TABLE `plumbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `repairman`
--
ALTER TABLE `repairman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service_providers`
--
ALTER TABLE `service_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ad_announcements`
--
ALTER TABLE `ad_announcements`
  ADD CONSTRAINT `ad_announcements_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
