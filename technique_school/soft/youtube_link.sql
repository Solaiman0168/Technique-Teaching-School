-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2017 at 05:18 PM
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
-- Table structure for table `youtube_link`
--

CREATE TABLE `youtube_link` (
  `youtube_link_id` int(11) NOT NULL,
  `link1` text NOT NULL,
  `link2` text NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `youtube_link`
--

INSERT INTO `youtube_link` (`youtube_link_id`, `link1`, `link2`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 't42y5u6;', 'gehjtk', 1, 1, '2017-11-09 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `youtube_link`
--
ALTER TABLE `youtube_link`
  ADD PRIMARY KEY (`youtube_link_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `youtube_link`
--
ALTER TABLE `youtube_link`
  MODIFY `youtube_link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
