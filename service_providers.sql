-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2025 at 05:45 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `service_providers`
--
ALTER TABLE `service_providers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `service_providers`
--
ALTER TABLE `service_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
