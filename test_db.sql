-- phpMyAdmin SQL Dump
-- version 4.8.6-dev
-- https://www.phpmyadmin.net/
--
-- Host: test-db:3306
-- Generation Time: Sep 15, 2020 at 07:58 AM
-- Server version: 10.3.24-MariaDB-1:10.3.24+maria~focal
-- PHP Version: 7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `checkin_date` date DEFAULT NULL,
  `checkout_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `room_id`, `customer_id`, `checkin_date`, `checkout_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, '2020-09-15', '2020-09-18', '2020-09-15 07:02:36', NULL, NULL),
(2, 2, 1, '2020-09-15', '2020-09-20', '2020-09-15 07:02:36', NULL, NULL),
(3, 3, 4, '2020-09-20', '2020-09-30', '2020-09-15 07:02:36', NULL, NULL),
(4, 4, 3, '2020-09-15', '2020-09-16', '2020-09-15 07:02:36', NULL, NULL),
(6, 5, 4, '2020-10-01', '2020-10-05', '2020-09-15 07:02:36', NULL, NULL),
(7, 6, 2, '2020-10-02', '2020-10-15', '2020-09-15 07:02:36', NULL, NULL),
(8, 7, 2, '2020-10-20', '2020-10-22', '2020-09-15 07:02:36', NULL, NULL),
(9, 7, 2, '2020-11-01', '2020-11-05', '2020-09-15 07:02:36', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `firstname` varchar(150) NOT NULL,
  `lastname` varchar(150) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `gender` enum('female','male','other') DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `mobile`, `email`, `gender`, `birthday`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nicole', 'Smith', '0987654321', '', 'female', '1990-09-15', '2020-09-15 07:00:27', NULL, NULL),
(2, 'Elizabeth', 'Jones', '0987675542', '', 'female', '1988-09-15', '2020-09-15 07:00:27', NULL, NULL),
(3, 'Melissa', 'Miller', '0222222222', '', 'male', '1995-09-15', '2020-09-15 07:00:27', NULL, NULL),
(4, 'Sarah', 'Johnson', '0933333333', '', 'female', '1997-09-15', '2020-09-15 07:00:27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `room_rate` decimal(10,2) NOT NULL,
  `type` enum('twin','superior','deluxe','family','executive') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `room_rate`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Superior Room With Breakfast', '1500.00', 'superior', NULL, NULL, NULL),
(2, 'Deluxe Room City View (with Breakfast)', '2000.00', 'superior', '2020-09-15 06:56:59', NULL, NULL),
(3, 'Deluxe Room Sea View (with Breakfast)', '3000.00', 'deluxe', '2020-09-15 06:57:25', NULL, NULL),
(4, 'Family Room With Breakfast', '5000.00', 'family', '2020-09-15 06:57:42', NULL, NULL),
(5, 'Executive Club Room With Breakfast', '6000.00', NULL, '2020-09-15 06:58:41', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
