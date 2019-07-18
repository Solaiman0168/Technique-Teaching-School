-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2017 at 05:10 PM
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
-- Table structure for table `poetry1`
--

CREATE TABLE `poetry1` (
  `poetry1_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_student_name` varchar(56) NOT NULL,
  `en_student_name` varchar(56) NOT NULL,
  `bn_class` varchar(55) NOT NULL,
  `en_class` varchar(55) NOT NULL,
  `bn_date` date NOT NULL,
  `en_date` date NOT NULL,
  `bn_details` text NOT NULL,
  `en_details` text NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `poetry1`
--

INSERT INTO `poetry1` (`poetry1_id`, `bn_name`, `en_name`, `bn_student_name`, `en_student_name`, `bn_class`, `en_class`, `bn_date`, `en_date`, `bn_details`, `en_details`, `image_url`, `is_active`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'g', 'bf', 'vc', 'b ffv', 'vc', 'vf', '0000-00-00', '0000-00-00', 'vc', 'cb', '', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-08 00:00:00'),
(2, 'uubnk', 'vbn', 'mlvb', 'nkvkbn', 'kvb', 'nmvbj', '0000-00-00', '0000-00-00', 'vjblknl', 'vhjbkn', '', 1, 1, '2017-11-04 00:00:00', 1, 1, '2017-11-08 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'bjnk', 'ghvhjbk', 'knm', 'gvhjbknml', 'vhjbk', 'ml', '0000-00-00', '0000-00-00', 'bknlm', 'gvhjbk', '', 1, 1, '2017-11-08 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'vbjnkml', 'gvbjn', 'mgv', 'hbjnm', 'gcvhbuij', 'cfghvh', '0000-00-00', '0000-00-00', 'vyuhij', 'ok', '', 1, 1, '2017-11-08 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `poetry1`
--
ALTER TABLE `poetry1`
  ADD PRIMARY KEY (`poetry1_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `poetry1`
--
ALTER TABLE `poetry1`
  MODIFY `poetry1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
