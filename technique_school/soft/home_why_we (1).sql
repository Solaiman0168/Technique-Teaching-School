-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2017 at 05:44 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `home_why_we`
--

CREATE TABLE `home_why_we` (
  `home_why_we_id` int(11) NOT NULL,
  `bn_details` varchar(500) NOT NULL,
  `en_details` varchar(500) NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_why_we`
--

INSERT INTO `home_why_we` (`home_why_we_id`, `bn_details`, `en_details`, `is_deleted`, `deleted_by`, `deleted_on`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, '', '', 1, 1, '2017-11-07 00:00:00', 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'vbuniopo', 'vybiunomdfgff', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 1, 1, '2017-11-07 00:00:00'),
(3, 'bn', 'buinm', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, '<p>vbjnkml,</p>', '<p>vbnompo,.[]/\'\\</p>\r\n<p>&nbsp;</p>', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `home_why_we`
--
ALTER TABLE `home_why_we`
  ADD PRIMARY KEY (`home_why_we_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `home_why_we`
--
ALTER TABLE `home_why_we`
  MODIFY `home_why_we_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
