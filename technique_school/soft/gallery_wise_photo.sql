-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2017 at 06:23 PM
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
-- Table structure for table `gallery_wise_photo`
--

CREATE TABLE `gallery_wise_photo` (
  `gallery_wise_photo_id` int(11) NOT NULL,
  `photo_gallery_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
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
-- Dumping data for table `gallery_wise_photo`
--

INSERT INTO `gallery_wise_photo` (`gallery_wise_photo_id`, `photo_gallery_id`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(5, 1, '1510239856banner.jpg', 1, '2017-11-09 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-09 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery_wise_photo`
--
ALTER TABLE `gallery_wise_photo`
  ADD PRIMARY KEY (`gallery_wise_photo_id`),
  ADD KEY `photo_gallery_id` (`photo_gallery_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery_wise_photo`
--
ALTER TABLE `gallery_wise_photo`
  MODIFY `gallery_wise_photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `gallery_wise_photo`
--
ALTER TABLE `gallery_wise_photo`
  ADD CONSTRAINT `gallery_wise_photo_ibfk_1` FOREIGN KEY (`photo_gallery_id`) REFERENCES `photo_gallery` (`photo_gallery_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
