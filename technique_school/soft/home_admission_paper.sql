-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2017 at 06:49 AM
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
-- Table structure for table `home_admission_paper`
--

CREATE TABLE `home_admission_paper` (
  `home_admission_paper_id` int(11) NOT NULL,
  `bn_details` text NOT NULL,
  `en_details` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `home_admission_paper`
--

INSERT INTO `home_admission_paper` (`home_admission_paper_id`, `bn_details`, `en_details`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, '<p>vhbjk00000000000000000000000000000000gfbudsfadsfsdfsadsad</p>\r\n<p>&nbsp;</p>\r\n<p>sfgshoifj nfmpasdiofjsandf adsoha0foergre</p>', '<p>mlvlhb000000000000000000032</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>fsgbiuasdfadsnpimfhnasdmfl ahdsfllasnkdfjnasd</p>', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-07 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `home_admission_paper`
--
ALTER TABLE `home_admission_paper`
  ADD PRIMARY KEY (`home_admission_paper_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `home_admission_paper`
--
ALTER TABLE `home_admission_paper`
  MODIFY `home_admission_paper_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
