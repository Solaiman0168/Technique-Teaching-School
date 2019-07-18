-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2017 at 06:22 PM
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
-- Table structure for table `notice_setup`
--

CREATE TABLE `notice_setup` (
  `notice_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `bn_image_url` varchar(255) NOT NULL,
  `en_image_url` varchar(255) NOT NULL,
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
-- Dumping data for table `notice_setup`
--

INSERT INTO `notice_setup` (`notice_id`, `bn_title`, `en_title`, `date`, `bn_image_url`, `en_image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Riyad', '', '0000-00-00', '150846255411.JPG', '', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'Riyad', '', '0000-00-00', '1508462580j.jpg', '', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'Riyad', '', '0000-00-00', '1508462926windows-8 DIU.jpg', '', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'Riyad', '', '0000-00-00', '1508462947Patent Law In Bangladesh.pdf', '', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 'Exam', '', '0000-00-00', '1508493790windows-8 DIU.jpg', '', 1, '2017-10-20 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'Exam2', 'exam2', '2017-11-15', 'No Notice Uploaded', '1509768354windows-8 DIU.jpg', 1, '2017-10-20 00:00:00', 1, 1, '2017-11-04 00:00:00', 1, 1, '2017-11-04 00:00:00'),
(7, 'Exam3', '', '0000-00-00', '150849620311.JPG', '', 1, '2017-10-20 00:00:00', 1, 1, '2017-10-20 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(8, 'Exam3', '', '0000-00-00', '150849832311.JPG', '', 1, '2017-10-20 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(9, 'fdgdfg', '', '0000-00-00', '1509410730windows-8 DIU.jpg', '', 1, '2017-10-31 00:00:00', 1, 1, '2017-10-31 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(10, 'dcfvgbh', 'ghbjnk', '2017-11-17', 'No Notice Uploaded', 'No Notice Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-04 00:00:00', 1, 1, '2017-11-04 00:00:00'),
(11, 'yvuyuijokyu8uhij', 'uhbinoim', '2017-11-10', '1509725624', '', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-04 00:00:00', 1, 1, '2017-11-03 00:00:00'),
(12, 'loll', 'lll', '2017-11-04', '1509767627windows-8 DIU.jpg', '', 1, '2017-11-04 00:00:00', 1, 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(13, 'kbjn', 'jnkml', '2017-11-10', '150976784211.JPG', '1509767842windows-8 DIU.jpg', 1, '2017-11-04 00:00:00', 1, 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(14, 'vbuhjhk', 'ibunhjjk', '2017-11-17', 'No Notice Uploaded', 'No Notice Uploaded', 1, '2017-11-04 00:00:00', 1, 1, '2017-11-07 00:00:00', 1, 1, '2017-11-04 00:00:00'),
(15, 'ygiuhjo', 'bun', '2017-11-07', 'No Notice Uploaded', '150976875011.JPG', 1, '2017-11-04 00:00:00', 1, 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(16, 'vbn', 'hkb jnklm', '2017-11-02', 'No Notice Uploaded', 'No Notice Uploaded', 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(17, 'bunijmo,;', 'uboijokpl[', '2017-11-09', '1510064293j.jpg', 'No Notice Uploaded', 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-07 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notice_setup`
--
ALTER TABLE `notice_setup`
  ADD PRIMARY KEY (`notice_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notice_setup`
--
ALTER TABLE `notice_setup`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
