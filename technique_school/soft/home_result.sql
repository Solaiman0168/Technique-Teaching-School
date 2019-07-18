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
-- Table structure for table `home_result`
--

CREATE TABLE `home_result` (
  `home_result_id` int(11) NOT NULL,
  `bn_year` int(11) NOT NULL,
  `en_year` int(11) NOT NULL,
  `bn_a_plus` text NOT NULL,
  `en_a_plus` text NOT NULL,
  `bn_a` text NOT NULL,
  `en_a` text NOT NULL,
  `bn_a_minus` text NOT NULL,
  `en_a_minus` text NOT NULL,
  `bn_f` text NOT NULL,
  `en_f` text NOT NULL,
  `bn_rate_pass` varchar(15) NOT NULL,
  `en_rate_pass` varchar(15) NOT NULL,
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
-- Dumping data for table `home_result`
--

INSERT INTO `home_result` (`home_result_id`, `bn_year`, `en_year`, `bn_a_plus`, `en_a_plus`, `bn_a`, `en_a`, `bn_a_minus`, `en_a_minus`, `bn_f`, `en_f`, `bn_rate_pass`, `en_rate_pass`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 2017, 2017, 'abc', 'abb', 'aaaaaa', 'aaaa', 'aaaa', 'aaa', 'aaaa', 'aaaa', 'aaaa', '', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-10 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 0, 0, 'jksdhj', 'kerty', 'xcv', '6io', 'shjk', 'weryui', 'fghjk', 'dfghjk', 'cvbn', 'mmmmm', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-10 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 0, 0, 'cvbnm,', 'rtyi', 'ghjkl', 'iop', 'kjhgf', 'vbm,', 'iuytr', 'fgh', 'kyt', '', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-10 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 0, 0, 'hk', 'h', 'j', 'gh', 'hg', 'fh', 'fghj', 'f', 'gfh', '', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-10 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 0, 0, 'hk', 'h', 'j', 'gh', 'hg', 'fh', 'fghj', 'f', 'gfh', '', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-10 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 0, 0, 'vnnm,.m,', 'nnm,.m,/v', 'nmm,n.m,gv', 'bnmnmvb', 'ngvhb', 'nmghjk', 'ghbjnkmgn', 'mbngnm.,', 'nbnmgchbj', '', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-10 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(7, 0, 0, 'vnnm,.m,', 'nnm,.m,/v', 'nmm,n.m,gv', 'bnmnmvb', 'ngvhb', 'nmghjk', 'ghbjnkmgn', 'mbngnm.,', 'nbnmgchbj', 'nmn,gnmb,n.m', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(8, 0, 0, 'J,K.', 'KN', 'JKH.', 'M,HJK.', 'G', ',GHJK', 'LKHJK;', 'GHJK', 'BGHJKL', 'HJKGH', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(9, 0, 0, 'cvkl', 'm,;', 'yu', 'y', 'poir', 'kiouitu', 'khgf', '0itr', 'pkogif', 'oi', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `home_result`
--
ALTER TABLE `home_result`
  ADD PRIMARY KEY (`home_result_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `home_result`
--
ALTER TABLE `home_result`
  MODIFY `home_result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
