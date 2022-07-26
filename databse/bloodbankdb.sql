-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2022 at 01:39 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbankdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(2, 'joy', 'joy');

-- --------------------------------------------------------

--
-- Table structure for table `blood_donation`
--

CREATE TABLE `blood_donation` (
  `donation_id` varchar(255) NOT NULL,
  `donor_id` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `request_date` varchar(255) NOT NULL,
  `diseases` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `admin_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_donation`
--

INSERT INTO `blood_donation` (`donation_id`, `donor_id`, `unit`, `request_date`, `diseases`, `status`, `action`, `admin_id`) VALUES
('62da8292bb550', '999', '3', '2022/07/22 12:57:22', 'fever', 'pending', 'none', '1');

-- --------------------------------------------------------

--
-- Table structure for table `blood_request`
--

CREATE TABLE `blood_request` (
  `request_id` varchar(255) NOT NULL,
  `requester_id` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `blood_group` varchar(255) NOT NULL,
  `request_date` varchar(255) NOT NULL,
  `reasons` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `admin_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_request`
--

INSERT INTO `blood_request` (`request_id`, `requester_id`, `unit`,`blood_group`, `request_date`, `reasons`, `status`, `action`, `admin_id`) VALUES
('62da82a213117', '999', '1', '2022/07/22 12:57:38', 'cold', 'rejected', 'Stock Low', '1'),
('62da82c735a2d', '999', '3', '2022/07/22 12:58:15', 'cold', 'rejected', 'Stock Low', '1'),
('62da8be3a5e9a', 'joy', '2', '2022/07/22 01:37:07', 'fever', 'approved', 'removed 2 units', '2');

-- --------------------------------------------------------

--
-- Table structure for table `blood_stock`
--

CREATE TABLE `blood_stock` (
  `blood_type` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `admin_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_stock`
--

INSERT INTO `blood_stock` (`blood_type`, `unit`, `admin_id`) VALUES
('A+', '3', '2'),
('A-', '0', '1'),
('AB+', '0', '1'),
('AB-', '0', '1'),
('B+', '0', '1'),
('B-', '0', '1'),
('O+', '0', '1'),
('O-', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `blood_type` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `first_name`, `last_name`, `phone_number`, `gender`, `blood_type`, `password`, `age`) VALUES
('joy', 'web developer', 'joy', '01971779608', 'm', 'A+', '$2y$10$Wl4p5VjWRLaGtZr7.Jt28udBuiL9D6iEQtP4dNWXrMEZ.zmTSlL7m', '20'),
('999', 'Sree Biddut', 'shil', '01971779608', 'f', 'AB+', '$2y$10$UnQ8sdVS7VjQN7xcycu2euY5q7l.P6vLi9D.Tm.G/VC/Nft4HvAXG', '25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `S.no` int(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Contact` varchar(255) NOT NULL,
  `Address` varchar(5000) NOT NULL,
  `Message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`S.no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `S.no` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
