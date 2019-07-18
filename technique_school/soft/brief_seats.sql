-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2017 at 05:19 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emarat_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `brief_seats`
--

CREATE TABLE `brief_seats` (
  `brief_seats_id` int(11) NOT NULL,
  `bn_class` varchar(55) NOT NULL,
  `en_class` varchar(55) NOT NULL,
  `bn_seat_no` int(11) NOT NULL,
  `en_seat_no` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brief_seats`
--

INSERT INTO `brief_seats` (`brief_seats_id`, `bn_class`, `en_class`, `bn_seat_no`, `en_seat_no`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'awsedfj', '5fghjk', 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-10 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'qwerty', 'edrfgyhujik', 2, 3, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 'bhnj', 'bnj', 5, 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'yubnjk', 'vbjn', 6, 5, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brief_seats`
--
ALTER TABLE `brief_seats`
  ADD PRIMARY KEY (`brief_seats_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brief_seats`
--
ALTER TABLE `brief_seats`
  MODIFY `brief_seats_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
