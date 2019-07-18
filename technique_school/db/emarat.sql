-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2017 at 11:31 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emarat`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `location2` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `contact2` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `location`, `location2`, `contact`, `contact2`, `email`, `created_on`, `created_by`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'ঠিকানা:দক্ষিন খাঁন, চেয়ারম্যান বাড়ী,', 'ঢাকা-১২৩০, বাংলাদেশ', '+8801819927616', '', 'emarat.hahs@yahoo.com', '0000-00-00 00:00:00', 0, 1, 1, '2017-11-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `death_committee_member`
--

CREATE TABLE `death_committee_member` (
  `death_committee_member_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_designation` varchar(255) NOT NULL,
  `en_designation` varchar(255) NOT NULL,
  `bn_mobile` varchar(20) NOT NULL,
  `en_mobile` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `bn_degree` varchar(55) NOT NULL,
  `en_degree` varchar(55) NOT NULL,
  `bn_dob` date NOT NULL,
  `en_dob` date NOT NULL,
  `bn_job_duration` varchar(55) NOT NULL,
  `en_job_duration` varchar(55) NOT NULL,
  `bn_present_address` varchar(500) NOT NULL,
  `en_present_address` varchar(500) NOT NULL,
  `bn_permanent_address` varchar(500) NOT NULL,
  `en_permanent_address` varchar(500) NOT NULL,
  `bn_speech_title` varchar(255) NOT NULL,
  `en_speech_title` varchar(255) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_speech` longtext NOT NULL,
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
-- Dumping data for table `death_committee_member`
--

INSERT INTO `death_committee_member` (`death_committee_member_id`, `bn_name`, `en_name`, `bn_designation`, `en_designation`, `bn_mobile`, `en_mobile`, `email`, `bn_degree`, `en_degree`, `bn_dob`, `en_dob`, `bn_job_duration`, `en_job_duration`, `bn_present_address`, `en_present_address`, `bn_permanent_address`, `en_permanent_address`, `bn_speech_title`, `en_speech_title`, `bn_speech`, `en_speech`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'duiohpjokp', 'c', 'xuijok', 'x', 'e', 'r', 'fiuhojokl', 'f', 'f', '0000-00-00', '0000-00-00', 'f', 'f', 'f', 'f', 'f', 'f', 'g', 'ge', 'ef', 'ef', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-03 00:00:00'),
(2, 'cfytgvu', 'yvyyb', 'bunoiybi', 'bb', 'u', 'gh', 'bn', 'hj', 'bn', '0000-00-00', '0000-00-00', 'y', 'hvb', 'gvhb', 'gh', 'ghy', 'uyyh', 'uyh', 'ybuh', 'uybh', 'gh', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `footer_info_details`
--

CREATE TABLE `footer_info_details` (
  `footer_info_details_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `copyright_year` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `footer_info_details`
--

INSERT INTO `footer_info_details` (`footer_info_details_id`, `company_name`, `address`, `mobile`, `email`, `copyright_year`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'Bdsoft', 'vbhjknm', 'vhbjnkm', 'bjknm', 2060, 0, '0000-00-00 00:00:00', 1, 1, '2017-10-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `footer_social_icon_link`
--

CREATE TABLE `footer_social_icon_link` (
  `footer_social_icon_link_id` int(11) NOT NULL,
  `fb_icon_link` text NOT NULL,
  `twitter_icon_link` text NOT NULL,
  `google_icon_link` text NOT NULL,
  `youtube_icon_link` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `footer_social_icon_link`
--

INSERT INTO `footer_social_icon_link` (`footer_social_icon_link_id`, `fb_icon_link`, `twitter_icon_link`, `google_icon_link`, `youtube_icon_link`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'https://www.facebook.com/emarathossainhighschool/', 'https://twitter.com/', 'https://plus.google.com/u/0/', 'https://www.youtube.com/', 0, 0, 1, 1, '2017-11-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `founder_speech`
--

CREATE TABLE `founder_speech` (
  `founder_speech_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_founder_name` varchar(55) NOT NULL,
  `bn_founder_designation` varchar(55) NOT NULL,
  `bn_short_speech` varchar(650) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_founder_name` varchar(55) NOT NULL,
  `en_founder_designation` varchar(55) NOT NULL,
  `en_short_speech` varchar(650) NOT NULL,
  `en_speech` longtext NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `founder_speech`
--

INSERT INTO `founder_speech` (`founder_speech_id`, `bn_title`, `bn_founder_name`, `bn_founder_designation`, `bn_short_speech`, `bn_speech`, `en_title`, `en_founder_name`, `en_founder_designation`, `en_short_speech`, `en_speech`, `image_url`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'সভাপতির বক্তব্য', 'Shahadat Hossain', 'সভাপতির বক্তব্য', '<p>Education is the backbone of a nation. শিক্ষা জাতির মেরুদণ্ড। মেরুদণ্ড ছাড়া যেমন কোন প্রাণি সোজা হয়ে দাঁড়াতে পারে না, তেমনি শিক্ষা ছাড়া কোন জাতির পক্ষেই বিশ্বের দরবারে মাথা উঁচু করে স্বীয় অস্তিত্ব নিয়ে মর্যাদাপূর্ণ আসন অর্জন করা সম্ভব না। যে জাতি যত বেশি শিক্ষিত, বিশ্বদরবারে সে জাতি তত বেশি মর্যাদাপূর্ণ আসনে অধিষ্ঠিত। কাজেই শিক্ষার কোন বিকল্প নেই। একটি সুশিক্ষিত জাতিই উপহার দিতে পারে একটি সুন্দর দেশ, সুন্দর ভবিষ্যৎ। আর এই ভবিষ্যৎ এর ভিত্তি হচ্ছে আমাদের শিশুরা। যখন প্রতিটি শিশু সুশিক্ষায় শিক্ষিত হবে তখন সেই দেশ ও জাতি শান্তি সমৃদ্ধির সর্বোচ্চ শিখরে আরোহণ করবে। কাজেই প্রত্যেকেরই মনোযোগী হতে হবে কোমলমতি এই শিশুদের প্রতি। একজন শিল্পী তা', '<p>Education is the backbone of a nation. শিক্ষা জাতির মেরুদণ্ড। মেরুদণ্ড ছাড়া যেমন কোন প্রাণি সোজা হয়ে দাঁড়াতে পারে না, তেমনি শিক্ষা ছাড়া কোন জাতির পক্ষেই বিশ্বের দরবারে মাথা উঁচু করে স্বীয় অস্তিত্ব নিয়ে মর্যাদাপূর্ণ আসন অর্জন করা সম্ভব না। যে জাতি যত বেশি শিক্ষিত, বিশ্বদরবারে সে জাতি তত বেশি মর্যাদাপূর্ণ আসনে অধিষ্ঠিত। কাজেই শিক্ষার কোন বিকল্প নেই। একটি সুশিক্ষিত জাতিই উপহার দিতে পারে একটি সুন্দর দেশ, সুন্দর ভবিষ্যৎ। আর এই ভবিষ্যৎ এর ভিত্তি হচ্ছে আমাদের শিশুরা। যখন প্রতিটি শিশু সুশিক্ষায় শিক্ষিত হবে তখন সেই দেশ ও জাতি শান্তি সমৃদ্ধির সর্বোচ্চ শিখরে আরোহণ করবে। কাজেই প্রত্যেকেরই মনোযোগী হতে হবে কোমলমতি এই শিশুদের প্রতি। একজন শিল্পী তা</p>', 'Chairman Speach', 'Shahadat Hossain', 'Chairman and Founder', '<p>"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure h', '<p>"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"</p>', '1510046602no-photo-male.jpg', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us1`
--

CREATE TABLE `home_about_us1` (
  `home_about_us1_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_short_details` varchar(400) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_short_details` varchar(270) NOT NULL,
  `en_speech` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us1`
--

INSERT INTO `home_about_us1` (`home_about_us1_id`, `bn_title`, `bn_short_details`, `bn_speech`, `en_title`, `en_short_details`, `en_speech`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, 'বিদ্যালয়ের সংক্ষিপ্ত পরিচিতি', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী অধ্যয়নরত। বিদ্যালয়টিতে প্রাথমিক ও গণশিক্ষা মন্ত্রণালয়ের প্রাথমিক শিক্ষা অধিদপ্তর কর্তৃক অনুমোদিত হয়ে প্রাথমিক বিদ্যালয় শাখা খোলা হয়েছে এবং ২০১৪ খ্রীস্টাব্দে সফলতার সাথে মাধ্যমিক শাখা চালু করতে সক্ষম হয়েছে। ঢাকা শিক্ষাবোর্ডে মাধ্যমিক ও উচ্চ মাধ্যমিক অনুমোদন নেওয়ার কার্যক্রম প্রক্রিয়াধীন রয়েছে। ইনশাআল্লাহ অতিসত্তর অনুমোদন লাভ করে এই এলাকায় উচ্চ মাধ্যমিক স্তরেও শিক্ষা বিস্তারে বিদ্যালয়টি সক্ষম হবে। বর্তমানে বিদ্যালয়টি নিজস্ব সফটওয়্যারের মাধ্যমে ডিজিটাল পদ্ধতিতে সকল কার্যক্রম পরিচালনা করছে। যেমন অন-লাইনে বেতন পরিশোধ,&nbsp; ফলাফল ঘোষণা, নম্বরপত্র ও প্রবেশপত্র প্রদান ও তথ্য উপাত্ত সংগ্রহের সুবিধা । শিক্ষার্থীদের নিরাপত্তার স্বার্থে স্কুল গেইট এবং শ্রেণিকক্ষের পাঠদান সি সি, টি ভি ক্যামেরায় পর্যবেক্ষণ করা হয়। Punch Card (Digital Machine)&nbsp; এর মাধ্যমে শিক্ষার্থীদের উপস্থিতি পর্যবেক্ষণ ও স্বয়ংক্রিয়ভাবে&nbsp; মোবাইল মেসেজের মাধ্যমে অভিভাবকদের অবহিত করা হয় এবং প্রজেক্টরের মাধ্যমে পাঠদান সহ পরিপূর্ণ ডিজিটাল শিক্ষা প্রতিষ্ঠান হিসেবে বিদ্যালয়টি আত্মপ্রকাশ করেছে।</p>', 'School about 1', '<p>"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. N', '<p>"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. N</p>', 0, 0, 1, 1, '2017-11-07 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us2`
--

CREATE TABLE `home_about_us2` (
  `home_about_us2_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_short_details` varchar(400) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_short_details` varchar(270) NOT NULL,
  `en_speech` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us2`
--

INSERT INTO `home_about_us2` (`home_about_us2_id`, `bn_title`, `bn_short_details`, `bn_speech`, `en_title`, `en_short_details`, `en_speech`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, 'শিক্ষা কার্যক্রম', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী অধ্যয়নরত। বিদ্যালয়টিতে প্রাথমিক ও গণশিক্ষা মন্ত্রণালয়ের প্রাথমিক শিক্ষা অধিদপ্তর কর্তৃক অনুমোদিত হয়ে প্রাথমিক বিদ্যালয় শাখা খোলা হয়েছে এবং ২০১৪ খ্রীস্টাব্দে সফলতার সাথে মাধ্যমিক শাখা চালু করতে সক্ষম হয়েছে। ঢাকা শিক্ষাবোর্ডে মাধ্যমিক ও উচ্চ মাধ্যমিক অনুমোদন নেওয়ার কার্যক্রম প্রক্রিয়াধীন রয়েছে। ইনশাআল্লাহ অতিসত্তর অনুমোদন লাভ করে এই এলাকায় উচ্চ মাধ্যমিক স্তরেও শিক্ষা বিস্তারে বিদ্যালয়টি সক্ষম হবে। বর্তমানে বিদ্যালয়টি নিজস্ব সফটওয়্যারের মাধ্যমে ডিজিটাল পদ্ধতিতে সকল কার্যক্রম পরিচালনা করছে। যেমন অন-লাইনে বেতন পরিশোধ,&nbsp; ফলাফল ঘোষণা, নম্বরপত্র ও প্রবেশপত্র প্রদান ও তথ্য উপাত্ত সংগ্রহের সুবিধা । শিক্ষার্থীদের নিরাপত্তার স্বার্থে স্কুল গেইট এবং শ্রেণিকক্ষের পাঠদান সি সি, টি ভি ক্যামেরায় পর্যবেক্ষণ করা হয়। Punch Card (Digital Machine)&nbsp; এর মাধ্যমে শিক্ষার্থীদের উপস্থিতি পর্যবেক্ষণ ও স্বয়ংক্রিয়ভাবে&nbsp; মোবাইল মেসেজের মাধ্যমে অভিভাবকদের অবহিত করা হয় এবং প্রজেক্টরের মাধ্যমে পাঠদান সহ পরিপূর্ণ ডিজিটাল শিক্ষা প্রতিষ্ঠান হিসেবে বিদ্যালয়টি আত্মপ্রকাশ করেছে।</p>', 'Education', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure</p>', 0, 0, 1, 1, '2017-11-07 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us3`
--

CREATE TABLE `home_about_us3` (
  `home_about_us3_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_short_details` varchar(400) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_short_details` varchar(270) NOT NULL,
  `en_speech` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us3`
--

INSERT INTO `home_about_us3` (`home_about_us3_id`, `bn_title`, `bn_short_details`, `bn_speech`, `en_title`, `en_short_details`, `en_speech`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, 'সাফল্য', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী অধ্যয়নরত। বিদ্যালয়টিতে প্রাথমিক ও গণশিক্ষা মন্ত্রণালয়ের প্রাথমিক শিক্ষা অধিদপ্তর কর্তৃক অনুমোদিত হয়ে প্রাথমিক বিদ্যালয় শাখা খোলা হয়েছে এবং ২০১৪ খ্রীস্টাব্দে সফলতার সাথে মাধ্যমিক শাখা চালু করতে সক্ষম হয়েছে। ঢাকা শিক্ষাবোর্ডে মাধ্যমিক ও উচ্চ মাধ্যমিক</p>', 'Our Success', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure hi</p>', 0, 0, 1, 1, '2017-11-07 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us4`
--

CREATE TABLE `home_about_us4` (
  `home_about_us4_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_short_details` varchar(400) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_short_details` varchar(270) NOT NULL,
  `en_speech` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us4`
--

INSERT INTO `home_about_us4` (`home_about_us4_id`, `bn_title`, `bn_short_details`, `bn_speech`, `en_title`, `en_short_details`, `en_speech`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, 'লক্ষ্য ও উদ্দেশ্য', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী অধ্যয়নরত। বিদ্যালয়টিতে প্রাথমিক ও গণশিক্ষা মন্ত্রণালয়ের প্রাথমিক শিক্ষা অধিদপ্তর কর্তৃক অনুমোদিত হয়ে প্রাথমিক বিদ্যালয় শাখা খোলা হয়েছে এবং ২০১৪ খ্রীস্টাব্দে সফলতার সাথে মাধ্যমিক শাখা চালু করতে সক্ষম হয়েছে। ঢাকা শিক্ষাবোর্ডে মাধ্যমিক ও উচ্চ মাধ্যমিক</p>', 'Our Mission and Vission', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure hi</p>', 0, 0, 1, 1, '2017-11-07 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us5`
--

CREATE TABLE `home_about_us5` (
  `home_about_us5_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_short_details` varchar(400) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_short_details` varchar(270) NOT NULL,
  `en_speech` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us5`
--

INSERT INTO `home_about_us5` (`home_about_us5_id`, `bn_title`, `bn_short_details`, `bn_speech`, `en_title`, `en_short_details`, `en_speech`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, 'শিক্ষকবৃন্দ ও ছাত্রছাত্রী', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী অধ্যয়নরত। বিদ্যালয়টিতে প্রাথমিক ও গণশিক্ষা মন্ত্রণালয়ের প্রাথমিক শিক্ষা অধিদপ্তর কর্তৃক অনুমোদিত হয়ে প্রাথমিক বিদ্যালয় শাখা খোলা হয়েছে এবং ২০১৪ খ্রীস্টাব্দে সফলতার সাথে মাধ্যমিক শাখা চালু করতে সক্ষম হয়েছে। ঢাকা শিক্ষাবোর্ডে মাধ্যমিক ও উচ্চ মাধ্যমিক অনুমোদন নেওয়ার কার্যক্রম প্রক্রিয়াধীন রয়েছে। ইনশাআল্লাহ অতিসত্তর অনুমোদন লাভ করে এই এলাকায় উচ্চ মাধ্যমিক স্তরেও শিক্ষা বিস্তারে বিদ্যালয়টি সক্ষম হবে। বর্তমানে বিদ্যালয়টি নিজস্ব সফটওয়্যারের মাধ্যমে ডিজিটাল পদ্ধতিতে সকল কার্যক্রম পরিচালনা করছে। যেমন অন-লাইনে বেতন পরিশোধ,&nbsp; ফলাফল ঘোষণা, নম্বরপত্র ও প্রবেশপত্র প্রদান ও তথ্য উপাত্ত সংগ্রহের সুবিধা । শিক্ষার্থীদের নিরাপত্তার স্বার্থে স্কুল গেইট এবং শ্রেণিকক্ষের পাঠদান সি সি, টি ভি ক্যামেরায় পর্যবেক্ষণ করা হয়। Punch Card (Digital Machine)&nbsp; এর মাধ্যমে শিক্ষার্থীদের উপস্থিতি পর্যবেক্ষণ ও স্বয়ংক্রিয়ভাবে&nbsp; মোবাইল মেসেজের মাধ্যমে অভিভাবকদের অবহিত করা হয় এবং প্রজেক্টরের মাধ্যমে পাঠদান সহ পরিপূর্ণ ডিজিটাল শিক্ষা প্রতিষ্ঠান হিসেবে বিদ্যালয়টি আত্মপ্রকাশ করেছে।</p>', 'Teachers & Students', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No</p>', 0, 0, 1, 1, '2017-11-07 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us6`
--

CREATE TABLE `home_about_us6` (
  `home_about_us6_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_short_details` varchar(400) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_short_details` varchar(270) NOT NULL,
  `en_speech` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us6`
--

INSERT INTO `home_about_us6` (`home_about_us6_id`, `bn_title`, `bn_short_details`, `bn_speech`, `en_title`, `en_short_details`, `en_speech`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, 'পি.ই.সি-২০১৬ পরীক্ষায় ১০০% এ+', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী অধ্যয়নরত। বিদ্যালয়টিতে প্রাথমিক ও গণশিক্ষা মন্ত্রণালয়ের প্রাথমিক শিক্ষা অধিদপ্তর কর্তৃক অনুমোদিত হয়ে প্রাথমিক বিদ্যালয় শাখা খোলা হয়েছে এবং ২০১৪ খ্রীস্টাব্দে সফলতার সাথে মাধ্যমিক শাখা চালু করতে সক্ষম হয়েছে। ঢাকা শিক্ষাবোর্ডে মাধ্যমিক ও উচ্চ মাধ্যমিক</p>', 'PEC Results 100% A+', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure hi</p>', 0, 0, 1, 1, '2017-11-07 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us7`
--

CREATE TABLE `home_about_us7` (
  `home_about_us7_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_short_details` varchar(400) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_short_details` varchar(270) NOT NULL,
  `en_speech` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us7`
--

INSERT INTO `home_about_us7` (`home_about_us7_id`, `bn_title`, `bn_short_details`, `bn_speech`, `en_title`, `en_short_details`, `en_speech`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, 'সুযোগ-সুবিধা', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী</p>', 'Facilities', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure</p>', 0, 0, 1, 1, '2017-11-07 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_about_us8`
--

CREATE TABLE `home_about_us8` (
  `home_about_us8_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_short_details` varchar(400) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_short_details` varchar(270) NOT NULL,
  `en_speech` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_about_us8`
--

INSERT INTO `home_about_us8` (`home_about_us8_id`, `bn_title`, `bn_short_details`, `bn_speech`, `en_title`, `en_short_details`, `en_speech`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, 'আসন সংখ্যা', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী', '<p>ঢাকা শহরের একটি অন্যতম উন্নত এবং আধুনিক সুবিধা সমৃদ্ধ এলাকা উত্তরার ঠিক পাশেই তুলনামূলকভাবে অনুন্নত এবং অবহেলিত উত্তরখান এলাকায় মান সম্মত এবং যুগোপযোগী শিক্ষা প্রদানের উদ্দেশ্যকে সামনে রেখে ২০০৮ সালে মাত্র ৩৫ জন ছাত্র-ছাত্রী নিয়ে যাত্রা শুরু করেছিল কচিকণ্ঠ বিদ্যানিকেতন অ্যান্ড কলেজ। সকলের দোয়া এবং ঐকান্তিক সহযোগিতায় আজ অত্র বিদ্যালয়ে প্লে-গ্রুপ থেকে অষ্টম শ্রেণি পর্যন্ত প্রায় ৩৫০ জন ছাত্রছাত্রী</p>', 'No. of Seats', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No</p>', 0, 0, 1, 1, '2017-11-07 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_admission_paper_details`
--

CREATE TABLE `home_admission_paper_details` (
  `home_admission_paper_details_id` int(11) NOT NULL,
  `bn_details` text NOT NULL,
  `bn_details_no` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `en_details` text NOT NULL,
  `en_details_no` int(11) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `home_admission_paper_details`
--

INSERT INTO `home_admission_paper_details` (`home_admission_paper_details_id`, `bn_details`, `bn_details_no`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`, `en_details`, `en_details_no`, `is_active`) VALUES
(1, 'sdbjfknd 123lgdfgdffdjgkfhfghmfgnmhdgfbnfdmdfngdflddafskfldsdsnfk fsdn fdsfjkdsfbsdfsdjflkdabsfasdbfasdfdgfdgfhfghfhg1fjghnmhnb.\r\n\r\ncvxcnkv cxv vdf00sdfsadxcgfcgfdreghghg', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-04 00:00:00', 1, 1, '2017-11-04 00:00:00', 'gthbfb', 0, 1),
(2, 'jbknjl', 0, 1, '0000-00-00 00:00:00', 1, 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 0, 1),
(3, 'jbknjl', 0, 1, '0000-00-00 00:00:00', 1, 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 0, 1),
(4, 'fgfscf', 0, 1, '2017-11-04 00:00:00', 1, 1, '2017-11-04 00:00:00', 1, 1, '2017-11-04 00:00:00', 'htgfhfeeef', 0, 1),
(5, 'vcf', 0, 1, '2017-11-04 00:00:00', 1, 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00', 'vcvs', 0, 1),
(6, 'vcf', 0, 1, '2017-11-04 00:00:00', 1, 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00', 'vcvs', 0, 1),
(7, 'scf', 0, 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 'csxc', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_admission_paper_title`
--

CREATE TABLE `home_admission_paper_title` (
  `home_admission_paper_title_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `home_admission_paper_title`
--

INSERT INTO `home_admission_paper_title` (`home_admission_paper_title_id`, `bn_title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `en_title`, `is_active`) VALUES
(1, 'cxvzxv', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-04 00:00:00', 'vcv c', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_admission_process_details`
--

CREATE TABLE `home_admission_process_details` (
  `home_admission_process_details_id` int(11) NOT NULL,
  `bn_details` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `en_details` int(11) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `home_admission_process_details`
--

INSERT INTO `home_admission_process_details` (`home_admission_process_details_id`, `bn_details`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `en_details`, `is_active`) VALUES
(1, 'vhbnmm', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-04 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_admission_process_title`
--

CREATE TABLE `home_admission_process_title` (
  `home_admission_process_title_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `home_admission_process_title`
--

INSERT INTO `home_admission_process_title` (`home_admission_process_title_id`, `bn_title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `en_title`, `is_active`) VALUES
(1, 'c c vc', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-04 00:00:00', 'x cx xc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_admission_rule_class1`
--

CREATE TABLE `home_admission_rule_class1` (
  `home_admission_rule_class1_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_admission_rule_class1`
--

INSERT INTO `home_admission_rule_class1` (`home_admission_rule_class1_id`, `bn_title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `en_title`, `is_active`) VALUES
(1, 'sdbjfknd', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-04 00:00:00', 'x xz', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_admission_rule_class1_details`
--

CREATE TABLE `home_admission_rule_class1_details` (
  `home_admission_rule_class1_details_id` int(11) NOT NULL,
  `bn_details` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `en_details` longtext NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_admission_rule_class1_details`
--

INSERT INTO `home_admission_rule_class1_details` (`home_admission_rule_class1_details_id`, `bn_details`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `en_details`, `is_active`) VALUES
(1, 'to using', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-04 00:00:00', 'gnjgf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_admission_rule_class2`
--

CREATE TABLE `home_admission_rule_class2` (
  `home_admission_rule_title_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_admission_rule_class2`
--

INSERT INTO `home_admission_rule_class2` (`home_admission_rule_title_id`, `bn_title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `en_title`, `is_active`) VALUES
(1, 'asdsbfsdfb xc n', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-04 00:00:00', 'b b    fgnvcn', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_admission_rule_class2_details`
--

CREATE TABLE `home_admission_rule_class2_details` (
  `home_admission_rule_class2_details_id` int(11) NOT NULL,
  `bn_details` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `en_details` longtext NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_admission_rule_class2_details`
--

INSERT INTO `home_admission_rule_class2_details` (`home_admission_rule_class2_details_id`, `bn_details`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `en_details`, `is_active`) VALUES
(1, 'asdsbfsdfsdfsdnfsadfsd4544', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-04 00:00:00', 'xc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_events_details`
--

CREATE TABLE `home_events_details` (
  `home_event_details_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `bn_details` longtext NOT NULL,
  `en_details` longtext NOT NULL,
  `serial_no` int(11) NOT NULL,
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
-- Dumping data for table `home_events_details`
--

INSERT INTO `home_events_details` (`home_event_details_id`, `bn_title`, `en_title`, `bn_details`, `en_details`, `serial_no`, `is_active`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'vhbknl m', 'vhbjkml;,', '<p>https://www.youtube.com/watch?v=5DEh_7A34Kk</p>', '<p>https://www.youtube.com/watch?v=5DEh_7A34Kk</p>', 60, 1, 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-07 00:00:00'),
(2, 'vbn okml', 'bjnomp', '<p>,[vbn</p>', '<p>ompo,</p>', 1220, 1, 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_heading1`
--

CREATE TABLE `home_heading1` (
  `home_heading1_id` int(11) NOT NULL,
  `bn_title` varchar(500) NOT NULL,
  `en_title` varchar(500) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_heading1`
--

INSERT INTO `home_heading1` (`home_heading1_id`, `bn_title`, `en_title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, '<h1>অত্যাধুনিক তথ্য-প্রযুক্তি সমৃদ্ধ একটি ডিজিটাল শিক্ষা প্রতিষ্ঠান</h1>', '<h1 style="box-sizing: border-box; font-family: Raleway, sans-serif; line-height: 1.5em; color: #262c38; margin: 0px auto; font-size: 2em; text-align: center; text-transform: capitalize; width: 934.797px; letter-spacing: 1px;"><strong><span class="fixed_w3" style="box-sizing: border-box; color: #eb5424;">&nbsp;</span><font color="#eb5424" face="Raleway, sans-serif"><span style="font-size: 22px; letter-spacing: 1px; text-transform: capitalize;">A digital educational institution rich in modern inf', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-07 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_heading2`
--

CREATE TABLE `home_heading2` (
  `home_heading2_id` int(11) NOT NULL,
  `bn_title` varchar(500) NOT NULL,
  `en_title` varchar(500) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_heading2`
--

INSERT INTO `home_heading2` (`home_heading2_id`, `bn_title`, `en_title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, '<h3 style="box-sizing: border-box; font-family: Raleway, sans-serif; font-weight: 500; line-height: 1.1; color: #333333; margin: 0px; font-size: 30px; text-align: -webkit-center;">নিজের উপর<span class="fixed_w2" style="box-sizing: border-box; color: #eb5424; font-size: 40px;">&nbsp;বিশ্বাস রাখো</span>&nbsp;এবং কখনো&nbsp;<span class="fixed_w2" style="box-sizing: border-box; color: #eb5424; font-size: 40px;">হাল</span>&nbsp;ছেরোনা</h3>', '<h3 style="box-sizing: border-box; font-family: Raleway, sans-serif; font-weight: 500; line-height: 1.1; color: #333333; margin: 0px; font-size: 30px; text-align: -webkit-center;">Believe in<span class="fixed_w2" style="box-sizing: border-box; color: #eb5424; font-size: 40px;">&nbsp;Yourself&nbsp;</span>&nbsp;and neve&nbsp;<span class="fixed_w2" style="box-sizing: border-box; color: #eb5424; font-size: 40px;">Give Up</span></h3>', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-07 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_heading3`
--

CREATE TABLE `home_heading3` (
  `home_heading3_id` int(11) NOT NULL,
  `bn_title` varchar(500) NOT NULL,
  `en_title` varchar(500) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_heading3`
--

INSERT INTO `home_heading3` (`home_heading3_id`, `bn_title`, `en_title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, '<p>ctyvhbjknlm34567890-</p>', '<p>vybjknml;,''67890</p>', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-07 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_heading4`
--

CREATE TABLE `home_heading4` (
  `home_heading4_id` int(11) NOT NULL,
  `bn_title` varchar(500) NOT NULL,
  `en_title` varchar(500) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_heading4`
--

INSERT INTO `home_heading4` (`home_heading4_id`, `bn_title`, `en_title`, `image_url`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, '<p>&nbsp;</p>\r\n<section id="whyus" style="box-sizing: border-box; display: block; background: url(''../images/ep_naturalwhite.png'');">\r\n<div class="container" style="box-sizing: border-box; padding-right: 15px; padding-left: 15px; margin-right: auto; margin-left: auto; width: 1170px;">\r\n<h3 class="w3l_header w3_agileits_header two cstm_headr" style="box-sizing: border-box; font-family: Raleway, sans-serif; font-weight: 800; line-height: 1.1; color: #dc1a46; margin: 75px 0px 8px; font-size: 2em; l', '<p>Why you admit your child in our school</p>', '1510075009slider3.jpg', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-07 00:00:00', 1),
(2, 'sdbfsndlkfsdfbhsd', 'vybunm;ldf,gsdf;bgd', 'vyubnlfdkmgfdgd', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_heading5`
--

CREATE TABLE `home_heading5` (
  `home_heading5_id` int(11) NOT NULL,
  `bn_title` varchar(500) NOT NULL,
  `en_title` varchar(500) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_heading5`
--

INSERT INTO `home_heading5` (`home_heading5_id`, `bn_title`, `en_title`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`, `is_active`) VALUES
(1, '<p>x cvcxv</p>', '<p>vubinoim2134567890987654324567898765434567890</p>', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-07 00:00:00', 1),
(2, 'ubyinom,', 'bunjkml,', 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_important_links`
--

CREATE TABLE `home_important_links` (
  `home_important_links_id` int(11) NOT NULL,
  `bn_event_title` varchar(255) NOT NULL,
  `en_event_title` varchar(255) NOT NULL,
  `bn_event_link` text NOT NULL,
  `en_event_link` text NOT NULL,
  `serial_no` int(11) NOT NULL,
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
-- Dumping data for table `home_important_links`
--

INSERT INTO `home_important_links` (`home_important_links_id`, `bn_event_title`, `en_event_title`, `bn_event_link`, `en_event_link`, `serial_no`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'We dsfsfndsfbadsf', '', '<p>https://www.youtube.com/watch?v=5DVT60VTP7o</p>', '<p>https://www.youtube.com/watch?v=5DVT60VTP7o</p>', 22, 1, '2017-10-21 00:00:00', 1, 1, '2017-10-21 00:00:00', 1, 1, '2017-11-07 00:00:00'),
(2, 'dfadsnfadsfads', '', '', '', 1, 1, '2017-10-21 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-10-21 00:00:00'),
(3, 'sfdfds', '', '', '', 7, 1, '2017-10-21 00:00:00', 1, 1, '2017-10-21 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'fjdandfs', '', '', '', 10, 1, '2017-10-21 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-10-21 00:00:00'),
(5, 'fgmgff', '', '', '', 0, 1, '2017-10-21 00:00:00', 1, 1, '2017-10-21 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'sdfndas', '', '', '', 78, 1, '2017-10-21 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(7, '', '', '', '', 4, 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(8, '6uybt785697080', 'fvg87 wby4 -9t45645', '<p>https://www.youtube.com/watch?v=5DVT60VTP7o</p>', '<p>https://www.youtube.com/watch?v=5DVT60VTP7o</p>', 8, 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-07 00:00:00'),
(9, '', '', '<p>বগহল</p>', '<p>গস,ব</p>', 2, 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(10, 'cyvubinimpo,', 'cy vbnomp,', '<p>cygvbinjm</p>', '<p>,cyvub</p>', 100, 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_notices`
--

CREATE TABLE `home_notices` (
  `home_notice_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `bn_details` longtext NOT NULL,
  `en_details` longtext NOT NULL,
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
-- Dumping data for table `home_notices`
--

INSERT INTO `home_notices` (`home_notice_id`, `bn_title`, `en_title`, `bn_details`, `en_details`, `is_active`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(2, 'সমাপনী পরীক্ষার নোটিস', 'Final Exam Notice', '<p><span style="color: #333333; font-family: ''Hind Siliguri'', sans-serif; font-size: 18px; letter-spacing: 1px; text-align: justify;">একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম।</span></p>', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure</p>', 1, 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'সমাপনী পরীক্ষার নোটিস', 'Final Exam Notice', '<p><span style="color: #333333; font-family: ''Hind Siliguri'', sans-serif; font-size: 18px; letter-spacing: 1px; text-align: justify;">একটি শিক্ষা প্রতিষ্ঠানের প্রাণ হচ্ছে ঐ প্রতিষ্ঠানের ছাত্রছাত্রী এবং প্রতিষ্ঠানটির উত্তরোত্তর সমৃদ্ধির পেছনে অগ্রণি ভূমিকা পালন করে শিক্ষকমন্ডলী। অত্র বিদ্যালয়ে ছাত্রছাত্রীর সংখ্যা মাত্র ৩৫০ জন হলেও তারা দেশের সেরা যে কোন শিক্ষা প্রতিষ্ঠানের সাথে শিক্ষা অথবা সহশিক্ষা বিষয়ক যে কোন প্রতিযোগিতায় শ্রেষ্ঠত্বের মুকুট অর্জন করবে বলে আমরা বিশ্বাস করি। অত্র প্রতিষ্ঠানে রয়েছে একঝাঁক নিবেদিত প্রাণ শিক্ষক। বিষয়ভিত্তিক অথবা সহশিক্ষা বিষয়ক পাঠদানে তাদের যোগ্যতা প্রশ্নাতীত। বিদ্যালয়ের ধারাবাহিক সাফল্যের পেছনে রয়েছে তাদের মেধা ও প্রজ্ঞার বাস্তবভিত্তিক শিখন কার্যক্রম।</span></p>', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure</p>', 1, 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'gfhfgh', 'fhfh', '<p>fghfhf</p>', '<p>fghgfh</p>', 1, 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `home_why_we`
--

CREATE TABLE `home_why_we` (
  `home_why_we_id` int(11) NOT NULL,
  `bn_details` text NOT NULL,
  `en_details` text NOT NULL,
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
(1, 'বিষয় ভিত্তিক সম্মানসহ স্নাতকোত্তর ডিগ্রিধারী শিক্ষক/শিক্ষিকা দ্বারা পাঠদান।', 'বিষয় ভিত্তিক সম্মানসহ স্নাতকোত্তর ডিগ্রিধারী শিক্ষক/শিক্ষিকা দ্বারা পাঠদান।', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'অত্যাধুনিক তথ্য প্রযুক্তি সমৃদ্ধ একটি ডিজিটাল শিক্ষা প্রতিষ্ঠান। ONLINE এ বেতন পরিশোধ, মার্কশিট, ফলাফল ও তথ্য উপাত্ত সংগ্রহের সুবিধা।', 'অত্যাধুনিক তথ্য প্রযুক্তি সমৃদ্ধ একটি ডিজিটাল শিক্ষা প্রতিষ্ঠান। ONLINE এ বেতন পরিশোধ, মার্কশিট, ফলাফল ও তথ্য উপাত্ত সংগ্রহের সুবিধা।', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'শিশুদের খেলাধুলার জন্য ইনডোর প্লে-গ্রাউন্ড এবং স্কাউট সুবিধা।', 'শিশুদের খেলাধুলার জন্য ইনডোর প্লে-গ্রাউন্ড এবং স্কাউট সুবিধা।', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'সাপ্তাহিক সাংস্কৃতিক চর্চা ও ত্রৈমাসিক বিজ্ঞান মেলা।', 'সাপ্তাহিক সাংস্কৃতিক চর্চা ও ত্রৈমাসিক বিজ্ঞান মেলা।', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 'শিক্ষার্থীদের নিরাপত্তার স্বার্থে স্কুল গেইট এবং শ্রেণি শিক্ষকের পাঠদান CC.TV ক্যামেরায় সার্বক্ষণিক পর্যবেক্ষণ।', 'শিক্ষার্থীদের নিরাপত্তার স্বার্থে স্কুল গেইট এবং শ্রেণি শিক্ষকের পাঠদান CC.TV ক্যামেরায় সার্বক্ষণিক পর্যবেক্ষণ।', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'Punch Card (ডিজিটাল মেশিন) দ্বারা ছাত্র-ছাত্রীদের উপস্থিতি পর্যবেক্ষণ এবং স্বয়ংক্রিয়ভাবে মোবাইল Message এর মাধ্যমে অভিভাবকদের অবহিতকরণ।', 'Punch Card (ডিজিটাল মেশিন) দ্বারা ছাত্র-ছাত্রীদের উপস্থিতি পর্যবেক্ষণ এবং স্বয়ংক্রিয়ভাবে মোবাইল Message এর মাধ্যমে অভিভাবকদের অবহিতকরণ।', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(7, 'নিজস্ব সফটওয়্যারের মাধ্যমে প্রতিষ্ঠানের সকল কার্যক্রম পরিচালনা।', 'নিজস্ব সফটওয়্যারের মাধ্যমে প্রতিষ্ঠানের সকল কার্যক্রম পরিচালনা।', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(8, 'Mobile SMS এর মাধ্যমে অভিভাবকদের তথ্য প্রদান।', 'Mobile SMS এর মাধ্যমে অভিভাবকদের তথ্য প্রদান।', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(9, 'প্লে গ্রুপ থেকে দ্বিতীয় শ্রেণী পর্যন্ত শিক্ষার্থীদের বাসায় পড়তে হয় না,ক্লাসেই পড়া সম্পন্ন করে দেওয়ার ব্যবস্থা।', 'প্লে গ্রুপ থেকে দ্বিতীয় শ্রেণী পর্যন্ত শিক্ষার্থীদের বাসায় পড়তে হয় না,ক্লাসেই পড়া সম্পন্ন করে দেওয়ার ব্যবস্থা।', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(10, 'সাপ্তাহিক Spoken English, Computer ও ICT ক্লাসের ব্যবস্থা। PEC & JEC পরীক্ষার্থীদের জন্য বিশেষ কোচিং সহ সাপ্তাহিক ও মাসিক মডেল টেস্টের ব্যবস্থা।', 'সাপ্তাহিক Spoken English, Computer ও ICT ক্লাসের ব্যবস্থা। PEC & JEC পরীক্ষার্থীদের জন্য বিশেষ কোচিং সহ সাপ্তাহিক ও মাসিক মডেল টেস্টের ব্যবস্থা।', 0, 0, '0000-00-00 00:00:00', 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `joke`
--

CREATE TABLE `joke` (
  `joke_id` int(11) NOT NULL,
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
  `is_active` int(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `joke`
--

INSERT INTO `joke` (`joke_id`, `bn_name`, `en_name`, `bn_student_name`, `en_student_name`, `bn_class`, `en_class`, `bn_date`, `en_date`, `bn_details`, `en_details`, `is_active`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`, `image_url`) VALUES
(1, 'g', 'bf', 'vc', 'b ffv', 'vc', 'vf', '0000-00-00', '0000-00-00', 'vc', 'cb', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 'No Image Uploaded'),
(2, 'uubnk', 'vbn', 'mlvb', 'nkvkbn', 'kvb', 'nmvbj', '0000-00-00', '0000-00-00', 'vjblknl', 'vhjbkn', 1, 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 'No Image Uploaded');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `logo_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`logo_id`, `image_url`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, '1510072619emratlogo.png', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

CREATE TABLE `map` (
  `map_id` int(11) NOT NULL,
  `map_url` text NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `map`
--

INSERT INTO `map` (`map_id`, `map_url`, `is_updated`, `updated_by`, `updated_on`, `is_deleted`, `deleted_by`, `deleted_on`, `created_by`, `created_on`) VALUES
(1, 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6290.437571938238!2d90.424346!3d23.860032!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb6bacfb69d504cdb!2z4KaP4Kau4Ka-4Kaw4KakIOCmueCni-CmuOCnh-CmqCDgpobgpqbgprDgp43gprYg4KaJ4Kaa4KeN4KaaIOCmrOCmv-CmpuCnjeCmr-CmvuCmsuCmr-CmvA!5e1!3m2!1sen!2sbd!4v1510072244532', 1, 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00');

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
(13, 'kbjn', 'jnkml', '2017-11-10', '150976784211.JPG', '1509767842windows-8 DIU.jpg', 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(14, 'vbuhjhk', 'ibunhjjk', '2017-11-17', 'No Notice Uploaded', 'No Notice Uploaded', 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-04 00:00:00'),
(15, 'ygiuhjo', 'bun', '2017-11-07', 'No Notice Uploaded', '150976875011.JPG', 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(16, 'vbn', 'hkb jnklm', '2017-11-02', 'No Notice Uploaded', 'No Notice Uploaded', 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `novel`
--

CREATE TABLE `novel` (
  `novel_id` int(11) NOT NULL,
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
  `is_active` int(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `novel`
--

INSERT INTO `novel` (`novel_id`, `bn_name`, `en_name`, `bn_student_name`, `en_student_name`, `bn_class`, `en_class`, `bn_date`, `en_date`, `bn_details`, `en_details`, `is_active`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`, `image_url`) VALUES
(1, 'gf', 'bf', 'vc', 'b ffv', 'vc', 'vf', '0000-00-00', '0000-00-00', 'vc', 'cb', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-03 00:00:00', 'No Image Uploaded'),
(2, 'yguhij', 'vbhnj', 'vbnlk', 'mlbnl', 'mjvb', 'nl;mv', '0000-00-00', '0000-00-00', 'bknlmbk', 'nlm;ugihjokp', 1, 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-04 00:00:00', 'No Image Uploaded');

-- --------------------------------------------------------

--
-- Table structure for table `present_committee_member`
--

CREATE TABLE `present_committee_member` (
  `present_committee_member_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_designation` varchar(255) NOT NULL,
  `en_designation` varchar(255) NOT NULL,
  `bn_mobile` varchar(20) NOT NULL,
  `en_mobile` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `bn_degree` varchar(55) NOT NULL,
  `en_degree` varchar(55) NOT NULL,
  `bn_dob` date NOT NULL,
  `en_dob` date NOT NULL,
  `bn_job_duration` varchar(55) NOT NULL,
  `en_job_duration` varchar(55) NOT NULL,
  `bn_present_address` varchar(500) NOT NULL,
  `en_present_address` varchar(500) NOT NULL,
  `bn_permanent_address` varchar(500) NOT NULL,
  `en_permanent_address` varchar(500) NOT NULL,
  `bn_speech_title` varchar(255) NOT NULL,
  `en_speech_title` varchar(255) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_speech` longtext NOT NULL,
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
-- Dumping data for table `present_committee_member`
--

INSERT INTO `present_committee_member` (`present_committee_member_id`, `bn_name`, `en_name`, `bn_designation`, `en_designation`, `bn_mobile`, `en_mobile`, `email`, `bn_degree`, `en_degree`, `bn_dob`, `en_dob`, `bn_job_duration`, `en_job_duration`, `bn_present_address`, `en_present_address`, `bn_permanent_address`, `en_permanent_address`, `bn_speech_title`, `en_speech_title`, `bn_speech`, `en_speech`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'বুগহপদগরসদ', 'নবহলগ', 'নবহবহপলগরদক', 'নবহলগরসদ', 'নবলগসদ', 'পবরলকস', ',পবরল', 'স,পনরবর', 'লস,পনবর', '0000-00-00', '0000-00-00', 'কসত, পরব', 'লকসপব কর', 'কস,', '', 'লকসত, র', 'পবরকলস', 'পবরলসক', 'নপবরলক', 'পবরলস', 'নবপরক', '150971122611.JPG', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'বুগহপদগরসদ-0ikj', 'নবহলগ', 'নবহবহপলগরদকt8y9', 'নবহলগরসদ', 'নবলগসদy89h', 'পবরলকস', ',পবরলvjhb', 'স,পনরবরiughn', 'লস,পনবর', '0000-00-00', '0000-00-00', 'কসত, পরবyuvgbln', 'লকসপব কর', 'কস,vughilnj', 'রলকসত, পর', 'লকসত, রvkbjlnml', 'পবরকলস', 'পবরলসকvkkuhlkn', 'নপবরলক', 'পবরলসiughjo', 'নবপরক', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-03 00:00:00'),
(3, 'vhbjknml', 'vhbjknml,', 'hbjnkml', 'hvbjnkm', ' hbjnkm', ' vhbjnkm', 'lhbkjnkm', 'hjbkj', 'knmjhbj', '0000-00-00', '0000-00-00', 'ijovhbkj', 'kgjb', 'jnkgvh', 'bjnkgvj', 'bjnkgh', 'bhjnkgv', 'hbjnvhjb', 'njkv', 'bnjgh', 'vbkjlvhbjn', '1509711564windows-8 DIU.jpg', 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `previous_committee_member`
--

CREATE TABLE `previous_committee_member` (
  `previous_committee_member_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_designation` varchar(255) NOT NULL,
  `en_designation` varchar(255) NOT NULL,
  `bn_mobile` varchar(20) NOT NULL,
  `en_mobile` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `bn_degree` varchar(55) NOT NULL,
  `en_degree` varchar(55) NOT NULL,
  `bn_dob` date NOT NULL,
  `en_dob` date NOT NULL,
  `bn_job_duration` varchar(55) NOT NULL,
  `en_job_duration` varchar(55) NOT NULL,
  `bn_present_address` varchar(500) NOT NULL,
  `en_present_address` varchar(500) NOT NULL,
  `bn_permanent_address` varchar(500) NOT NULL,
  `en_permanent_address` varchar(500) NOT NULL,
  `bn_speech_title` varchar(255) NOT NULL,
  `en_speech_title` varchar(255) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_speech` longtext NOT NULL,
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
-- Dumping data for table `previous_committee_member`
--

INSERT INTO `previous_committee_member` (`previous_committee_member_id`, `bn_name`, `en_name`, `bn_designation`, `en_designation`, `bn_mobile`, `en_mobile`, `email`, `bn_degree`, `en_degree`, `bn_dob`, `en_dob`, `bn_job_duration`, `en_job_duration`, `bn_present_address`, `en_present_address`, `bn_permanent_address`, `en_permanent_address`, `bn_speech_title`, `en_speech_title`, `bn_speech`, `en_speech`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'd', 'c', 'xuijok', 'x', 'e', 'r', 'f', 'f', 'f', '0000-00-00', '0000-00-00', 'f', 'f', 'f', 'f', 'f', 'f', 'g', 'ge', 'ef', 'ef', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-03 00:00:00'),
(2, 'cfytgvu', 'yvyyb', 'bunoiybi', 'bb', 'u', 'gh', 'bn', 'hj', 'bn', '0000-00-00', '0000-00-00', 'y', 'hvb', 'gvhb', 'gh', 'ghy', 'uyyh', 'uyh', 'ybuh', 'uybh', 'gh', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `principal_speech`
--

CREATE TABLE `principal_speech` (
  `principal_speech_id` int(11) NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_principal_name` varchar(55) NOT NULL,
  `bn_principal_designation` varchar(55) NOT NULL,
  `bn_short_speech` varchar(650) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_principal_name` varchar(55) NOT NULL,
  `en_principal_designation` varchar(55) NOT NULL,
  `en_short_speech` varchar(650) NOT NULL,
  `en_speech` longtext NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `principal_speech`
--

INSERT INTO `principal_speech` (`principal_speech_id`, `bn_title`, `bn_principal_name`, `bn_principal_designation`, `bn_short_speech`, `bn_speech`, `en_title`, `en_principal_name`, `en_principal_designation`, `en_short_speech`, `en_speech`, `image_url`, `created_by`, `created_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'প্রধান শিক্ষিকার বক্তব্য', 'শিরিনা আক্তার', 'প্রধান শিক্ষিকা', '<p>Education is the backbone of a nation. শিক্ষা জাতির মেরুদণ্ড। মেরুদণ্ড ছাড়া যেমন কোন প্রাণি সোজা হয়ে দাঁড়াতে পারে না, তেমনি শিক্ষা ছাড়া কোন জাতির পক্ষেই বিশ্বের দরবারে মাথা উঁচু করে স্বীয় অস্তিত্ব নিয়ে মর্যাদাপূর্ণ আসন অর্জন করা সম্ভব না। যে জাতি যত বেশি শিক্ষিত, বিশ্বদরবারে সে জাতি তত বেশি মর্যাদাপূর্ণ আসনে অধিষ্ঠিত। কাজেই শিক্ষার কোন বিকল্প নেই। একটি সুশিক্ষিত জাতিই উপহার দিতে পারে একটি সুন্দর দেশ, সুন্দর ভবিষ্যৎ। আর এই ভবিষ্যৎ এর ভিত্তি হচ্ছে আমাদের শিশুরা। যখন প্রতিটি শিশু সুশিক্ষায় শিক্ষিত হবে তখন সেই দেশ ও জাতি শান্তি সমৃদ্ধির সর্বোচ্চ শিখরে আরোহণ করবে। কাজেই প্রত্যেকেরই মনোযোগী হতে হবে কোমলমতি এই শিশুদের প্রতি। একজন শিল্পী তা', '<p>Education is the backbone of a nation. শিক্ষা জাতির মেরুদণ্ড। মেরুদণ্ড ছাড়া যেমন কোন প্রাণি সোজা হয়ে দাঁড়াতে পারে না, তেমনি শিক্ষা ছাড়া কোন জাতির পক্ষেই বিশ্বের দরবারে মাথা উঁচু করে স্বীয় অস্তিত্ব নিয়ে মর্যাদাপূর্ণ আসন অর্জন করা সম্ভব না। যে জাতি যত বেশি শিক্ষিত, বিশ্বদরবারে সে জাতি তত বেশি মর্যাদাপূর্ণ আসনে অধিষ্ঠিত। কাজেই শিক্ষার কোন বিকল্প নেই। একটি সুশিক্ষিত জাতিই উপহার দিতে পারে একটি সুন্দর দেশ, সুন্দর ভবিষ্যৎ। আর এই ভবিষ্যৎ এর ভিত্তি হচ্ছে আমাদের শিশুরা। যখন প্রতিটি শিশু সুশিক্ষায় শিক্ষিত হবে তখন সেই দেশ ও জাতি শান্তি সমৃদ্ধির সর্বোচ্চ শিখরে আরোহণ করবে। কাজেই প্রত্যেকেরই মনোযোগী হতে হবে কোমলমতি এই শিশুদের প্রতি। একজন শিল্পী তা</p>', 'Head Teacher Speech', 'Shirina Akter', 'Head Mistress', '<p>"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure h', '<p>"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure h</p>', '1510049493Head Madam 1.jpg', 0, '0000-00-00 00:00:00', 1, 1, '2017-11-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `scholar_student`
--

CREATE TABLE `scholar_student` (
  `scholar_student_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_class_roll` varchar(15) NOT NULL,
  `en_class_roll` varchar(15) NOT NULL,
  `bn_father_name` varchar(55) NOT NULL,
  `en_father_name` varchar(55) NOT NULL,
  `bn_mother_name` varchar(55) NOT NULL,
  `en_mother_name` varchar(55) NOT NULL,
  `bn_present_address` varchar(500) NOT NULL,
  `en_present_address` varchar(500) NOT NULL,
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
-- Dumping data for table `scholar_student`
--

INSERT INTO `scholar_student` (`scholar_student_id`, `bn_name`, `en_name`, `bn_class_roll`, `en_class_roll`, `bn_father_name`, `en_father_name`, `bn_mother_name`, `en_mother_name`, `bn_present_address`, `en_present_address`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'duiohpjokp', 'c', 'xuijok', 'x', 'e', 'r', 'fiuhojokl', 'f', 'f', 'f', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-04 00:00:00', 1, 1, '2017-11-03 00:00:00'),
(2, 'cfytgvu', 'yvyyb', 'bunoiybi', 'bb', 'u', 'gh', 'bn', 'hj', 'gvhb', 'gh', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'guh', 'vbnm', 'bni', 'movjhbkj', 'knmvh', 'bjknvjhb', 'jnjvbj', 'knmlvjb', 'knhvkbj', 'knhvb', 'No Image Uploaded', 1, '2017-11-04 00:00:00', 1, 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(4, 'uuhijo000', 'yguhi', 'uhij', 'okpv', 'blnj', 'kbhlinj', 'uhijov', 'hbjnj', 'vkbln', 'jkulnj;m', '150977616011.JPG', 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-04 00:00:00'),
(5, 'r', 'r', '1', '1', 'a', 'a', 'b', 'b', 's', 's', 'No Image Uploaded', 1, '2017-11-04 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `short_story`
--

CREATE TABLE `short_story` (
  `short_story_id` int(11) NOT NULL,
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
-- Dumping data for table `short_story`
--

INSERT INTO `short_story` (`short_story_id`, `bn_name`, `en_name`, `bn_student_name`, `en_student_name`, `bn_class`, `en_class`, `bn_date`, `en_date`, `bn_details`, `en_details`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'gvhjbkn', 'vbnm', 'bn', 'mbn', 'imbn', 'mob', '0000-00-00', '0000-00-00', 'hjb', 'ni', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(2, 'vbn', 'hbjnkm', 'lbjnkm', 'l,jh k', 'nm hj', 'nkml, jk', '0000-00-00', '0000-00-00', 'hjbnkml,', 'jh bknml;,', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `is_updated` int(1) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `deleted_on` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `image_url`, `is_updated`, `updated_by`, `updated_on`, `is_deleted`, `deleted_by`, `deleted_on`, `created_on`, `created_by`) VALUES
(1, '1510079618slid1.jpg', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2017-11-07 00:00:00', 1),
(2, '1510079626slider1.jpg', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2017-11-07 00:00:00', 1),
(3, '1510079632slider2.jpg', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2017-11-07 00:00:00', 1),
(4, '1510079640slider3.jpg', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2017-11-07 00:00:00', 1),
(5, '1510079651slider4.jpg', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2017-11-07 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_day_shift`
--

CREATE TABLE `teacher_day_shift` (
  `teacher_day_shift_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_designation` varchar(255) NOT NULL,
  `en_designation` varchar(255) NOT NULL,
  `bn_mobile` varchar(20) NOT NULL,
  `en_mobile` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `bn_degree` varchar(55) NOT NULL,
  `en_degree` varchar(55) NOT NULL,
  `bn_dob` date NOT NULL,
  `mpo_no` varchar(55) NOT NULL,
  `bn_job_duration` varchar(55) NOT NULL,
  `en_job_duration` varchar(55) NOT NULL,
  `bn_present_address` varchar(500) NOT NULL,
  `en_present_address` varchar(500) NOT NULL,
  `bn_permanent_address` varchar(500) NOT NULL,
  `en_permanent_address` varchar(500) NOT NULL,
  `bn_speech_title` varchar(255) NOT NULL,
  `en_speech_title` varchar(255) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_speech` longtext NOT NULL,
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
-- Dumping data for table `teacher_day_shift`
--

INSERT INTO `teacher_day_shift` (`teacher_day_shift_id`, `bn_name`, `en_name`, `bn_designation`, `en_designation`, `bn_mobile`, `en_mobile`, `email`, `bn_degree`, `en_degree`, `bn_dob`, `mpo_no`, `bn_job_duration`, `en_job_duration`, `bn_present_address`, `en_present_address`, `bn_permanent_address`, `en_permanent_address`, `bn_speech_title`, `en_speech_title`, `bn_speech`, `en_speech`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'duiohpjokp', 'c', 'xuijok', 'x', 'e', 'r', 'fiuhojokl', 'f', 'f', '0000-00-00', '0000-00-00', 'f', 'f', 'f', 'f', 'f', 'f', 'g', 'ge', 'ef', 'ef', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-06 00:00:00'),
(2, 'cfytgvu', 'yvyyb', 'bunoiybi', 'bb', 'u', 'gh', 'bn', 'hj', 'bn', '0000-00-00', '0000-00-00', 'y', 'hvb', 'gvhb', 'gh', 'ghy', 'uyyh', 'uyh', 'ybuh', 'uybh', 'gh', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'cjvhbk', 'cyfvgkbj', 'hcj', 'vhkblh', 'hcgvjbk', 'hfjg', 'jhcj', 'vkg', 'cjvgkj', '0000-00-00', '0000-00-00', 'bghcg', 'vhjb', 'cghj', 'cgh', 'jcgh', 'jcgh', 'j', 'cghj', 'cgvhj', 'dtyfguhlj', 'No Image Uploaded', 1, '2017-11-06 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-06 00:00:00'),
(4, 'tfyuguh', 'ctyguh', 'ic', 'yvguhij', 'tcyguhi', 'ct', 'vyguh', 'chvjgkuh', 'cvjyuh', '0000-00-00', '0000-00-00', 'b', 'fchgjbk', 'gfchjbk', 'fcvgb', 'h', 'fchjbk', 'fgchvjb', 'fc', 'gbhjk', 'fcgvjh', 'No.jpg', 1, '2017-11-06 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(5, 'gcvhbkjnl', 'gvhjb', 'knlml', 'hvbknllm', 'hvbkjnml', 'hjbkn', 'lm', 'bjknml', 'hvjbkn', '0000-00-00', '0000-00-00', 'hvbjkn;lmk', 'vhbjkn;ml', 'vjbjnk', 'vhbjkn', 'hvkbjnl', 'jhv', 'bkl', 'hvjbkml', 'vjhbkjl', 'vhbjnkl', '1509987499diu.png', 1, '2017-11-06 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(6, 'gcjvhkbhl', 'cvbkhnil', 'jcvj', 'bhijo', 'vjbhinjok', 'gvjhbkjk;p', 'jvhbk', 'nlm;l', 'vhjbknl', '0000-00-00', '0000-00-00', 'hjbknlmk;', 'gvjhbk', 'mk;cg', 'vjhbklok', 'gchvjbnlo', 'kghvjbk', 'm;', 'gvhbkjnm;', 'vbkjnk', 'gvjhbkk', 'No.jpg', 1, '2017-11-06 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(7, 'gcvbjnkjl', 'cvbn', 'jok', 'vjhbknml;,', 'ghvjb nkm', ';,lgh', 'vjbknml;,', 'jh bkml;,', 'ghj bk', '0000-00-00', '0000-00-00', 'GHVJBKNLM;L', 'GVJHBKNLM', 'J', 'HBKNLM;', 'JH BKJNML;', ',vh', 'hjbknlm;', 'hbkj nlm', 'bjnm,', 'hvjbknlm', 'No.jpg', 1, '2017-11-06 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(8, 'vhjbknl', 'CV', 'BNLK', 'CJVHBKNL', 'hvbjn', 'cvhjbknl', 'jvh', 'bj', 'vbkjlkn', '0000-00-00', '0000-00-00', 'cghvjbknl', 'cvhjb', 'jnkgc', 'vjhbkjnl', 'cgvjhbknl', 'cghvjbk', 'knlgcvhjbkjnkl', 'gchvjbknl', 'hvjbkj', 'nkl', 'No.jpg', 1, '2017-11-06 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(9, 'vhjbknl', 'vhjbknl', 'mgvhbkj', 'kmv', 'bkjnlm;g', 'vhjbknm;l', 'b jnkml,', 'hvjbkn', 'm;lg', '0000-00-00', '0000-00-00', 'vjhbk', 'nlm;l', 'gvhjbjknml', 'gvhjbkjnlm', 'hgjv', 'hjvkbjln', 'vhjbknlm', ';hvjbk', 'knm;l', 'vhbkjnm', 'No.jpg', 1, '2017-11-06 00:00:00', 1, 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(10, 'drtms', 'mdtd', 'sfs', 'dd', 'gd', 'dgd', 'dgd', 'gdddg', 'gdddg', '2017-11-08', '5465656', '2017-11-23', 'jnc', 'vhbkjc', 'vhbjkn', 'vkblnm', 'jvbk', 'nfguyuty', 'vkbjln', '<p>gcjvhbkln</p>', '<p>jhvhkbln</p>', '1509987951banner.jpg', 1, '2017-11-06 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-07 00:00:00'),
(11, 'cvbunim', 'ghbjko', 'cfgbhj', 'kgvh', 'njk', 'gvhbjk', 'ghbjkml', 'vhbnj', 'mk ghj', '2017-11-02', '34567890', '2017-11-17', '', 'yguhiojk', 'vbn', 'mk,l', 'biujokp[l', 'vyuijop', '[ly', '<p>ijop[l</p>', '<p>vbuhijpk[</p>', '1510089450farah.png', 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_death`
--

CREATE TABLE `teacher_death` (
  `teacher_death_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_designation` varchar(255) NOT NULL,
  `en_designation` varchar(255) NOT NULL,
  `bn_mobile` varchar(20) NOT NULL,
  `en_mobile` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `bn_degree` varchar(55) NOT NULL,
  `en_degree` varchar(55) NOT NULL,
  `bn_dob` date NOT NULL,
  `en_dob` date NOT NULL,
  `bn_job_duration` varchar(55) NOT NULL,
  `en_job_duration` varchar(55) NOT NULL,
  `bn_present_address` varchar(500) NOT NULL,
  `en_present_address` varchar(500) NOT NULL,
  `bn_permanent_address` varchar(500) NOT NULL,
  `en_permanent_address` varchar(500) NOT NULL,
  `bn_speech_title` varchar(255) NOT NULL,
  `en_speech_title` varchar(255) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_speech` longtext NOT NULL,
  `image_url` varchar(255) NOT NULL,
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
-- Dumping data for table `teacher_death`
--

INSERT INTO `teacher_death` (`teacher_death_id`, `bn_name`, `en_name`, `bn_designation`, `en_designation`, `bn_mobile`, `en_mobile`, `email`, `bn_degree`, `en_degree`, `bn_dob`, `en_dob`, `bn_job_duration`, `en_job_duration`, `bn_present_address`, `en_present_address`, `bn_permanent_address`, `en_permanent_address`, `bn_speech_title`, `en_speech_title`, `bn_speech`, `en_speech`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'duiohpjokp', 'c', 'xuijok', 'x', 'e', 'r', 'fiuhojokl', 'f', 'f', '0000-00-00', '0000-00-00', 'f', 'f', 'f', 'f', 'f', 'f', 'g', 'ge', 'ef', 'ef', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-03 00:00:00'),
(2, 'cfytgvu', 'yvyyb', 'bunoiybi', 'bb', 'u', 'gh', 'bn', 'hj', 'bn', '0000-00-00', '0000-00-00', 'y', 'hvb', 'gvhb', 'gh', 'ghy', 'uyyh', 'uyh', 'ybuh', 'uybh', 'gh', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_morning_shift`
--

CREATE TABLE `teacher_morning_shift` (
  `teacher_morning_shift_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_designation` varchar(255) NOT NULL,
  `en_designation` varchar(255) NOT NULL,
  `bn_mobile` varchar(20) NOT NULL,
  `en_mobile` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `bn_degree` varchar(55) NOT NULL,
  `en_degree` varchar(55) NOT NULL,
  `bn_dob` date NOT NULL,
  `mpo_no` varchar(55) NOT NULL,
  `bn_job_duration` varchar(55) NOT NULL,
  `bn_present_address` varchar(500) NOT NULL,
  `en_present_address` varchar(500) NOT NULL,
  `bn_permanent_address` varchar(500) NOT NULL,
  `en_permanent_address` varchar(500) NOT NULL,
  `bn_speech_title` varchar(255) NOT NULL,
  `en_speech_title` varchar(255) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_speech` longtext NOT NULL,
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
-- Dumping data for table `teacher_morning_shift`
--

INSERT INTO `teacher_morning_shift` (`teacher_morning_shift_id`, `bn_name`, `en_name`, `bn_designation`, `en_designation`, `bn_mobile`, `en_mobile`, `email`, `bn_degree`, `en_degree`, `bn_dob`, `mpo_no`, `bn_job_duration`, `bn_present_address`, `en_present_address`, `bn_permanent_address`, `en_permanent_address`, `bn_speech_title`, `en_speech_title`, `bn_speech`, `en_speech`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'duiohpjokp', 'c', 'xuijok', 'x', 'e', 'r', 'fiuhojokl', 'f', 'f', '0000-00-00', '0000-00-00', 'f', 'f', 'f', 'f', 'f', 'g', 'ge', 'ef', 'ef', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-03 00:00:00'),
(2, 'cfytgvu', 'yvyyb', 'bunoiybi', 'bb', 'u', 'gh', 'bn', 'hj', 'bn', '0000-00-00', '0000-00-00', 'y', 'gvhb', 'gh', 'ghy', 'uyyh', 'uyh', 'ybuh', 'uybh', 'gh', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00'),
(3, 'hbjk', 'mlvy', 'buhikp[l', 'uhijokpl', 'yghuijkpl', 'tytu', 'gyhuijkpo', 'vybhuijok', 'yugui', '2017-11-10', '3456789', '2017-11-21', 'gvhbu', 'ijopk', 'ygijopk', 'fugyi', 'po', 'fik0o', '<p>t</p>', '<p>ij0o-p</p>', '1510090731farah.png', 1, '2017-11-07 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_previous`
--

CREATE TABLE `teacher_previous` (
  `teacher_previous_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_designation` varchar(255) NOT NULL,
  `en_designation` varchar(255) NOT NULL,
  `bn_mobile` varchar(20) NOT NULL,
  `en_mobile` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `bn_degree` varchar(55) NOT NULL,
  `en_degree` varchar(55) NOT NULL,
  `bn_dob` date NOT NULL,
  `en_dob` date NOT NULL,
  `bn_job_duration` varchar(55) NOT NULL,
  `en_job_duration` varchar(55) NOT NULL,
  `bn_present_address` varchar(500) NOT NULL,
  `en_present_address` varchar(500) NOT NULL,
  `bn_permanent_address` varchar(500) NOT NULL,
  `en_permanent_address` varchar(500) NOT NULL,
  `bn_speech_title` varchar(255) NOT NULL,
  `en_speech_title` varchar(255) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_speech` longtext NOT NULL,
  `image_url` varchar(255) NOT NULL,
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
-- Dumping data for table `teacher_previous`
--

INSERT INTO `teacher_previous` (`teacher_previous_id`, `bn_name`, `en_name`, `bn_designation`, `en_designation`, `bn_mobile`, `en_mobile`, `email`, `bn_degree`, `en_degree`, `bn_dob`, `en_dob`, `bn_job_duration`, `en_job_duration`, `bn_present_address`, `en_present_address`, `bn_permanent_address`, `en_permanent_address`, `bn_speech_title`, `en_speech_title`, `bn_speech`, `en_speech`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'duiohpjokp', 'c', 'xuijok', 'x', 'e', 'r', 'fiuhojokl', 'f', 'f', '0000-00-00', '0000-00-00', 'f', 'f', 'f', 'f', 'f', 'f', 'g', 'ge', 'ef', 'ef', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-03 00:00:00'),
(2, 'cfytgvu', 'yvyyb', 'bunoiybi', 'bb', 'u', 'gh', 'bn', 'hj', 'bn', '0000-00-00', '0000-00-00', 'y', 'hvb', 'gvhb', 'gh', 'ghy', 'uyyh', 'uyh', 'ybuh', 'uybh', 'gh', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_vocational`
--

CREATE TABLE `teacher_vocational` (
  `teacher_vocational_id` int(11) NOT NULL,
  `bn_name` varchar(55) NOT NULL,
  `en_name` varchar(55) NOT NULL,
  `bn_designation` varchar(255) NOT NULL,
  `en_designation` varchar(255) NOT NULL,
  `bn_mobile` varchar(20) NOT NULL,
  `en_mobile` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `bn_degree` varchar(55) NOT NULL,
  `en_degree` varchar(55) NOT NULL,
  `bn_dob` date NOT NULL,
  `en_dob` date NOT NULL,
  `bn_job_duration` varchar(55) NOT NULL,
  `en_job_duration` varchar(55) NOT NULL,
  `bn_present_address` varchar(500) NOT NULL,
  `en_present_address` varchar(500) NOT NULL,
  `bn_permanent_address` varchar(500) NOT NULL,
  `en_permanent_address` varchar(500) NOT NULL,
  `bn_speech_title` varchar(255) NOT NULL,
  `en_speech_title` varchar(255) NOT NULL,
  `bn_speech` longtext NOT NULL,
  `en_speech` longtext NOT NULL,
  `image_url` varchar(255) NOT NULL,
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
-- Dumping data for table `teacher_vocational`
--

INSERT INTO `teacher_vocational` (`teacher_vocational_id`, `bn_name`, `en_name`, `bn_designation`, `en_designation`, `bn_mobile`, `en_mobile`, `email`, `bn_degree`, `en_degree`, `bn_dob`, `en_dob`, `bn_job_duration`, `en_job_duration`, `bn_present_address`, `en_present_address`, `bn_permanent_address`, `en_permanent_address`, `bn_speech_title`, `en_speech_title`, `bn_speech`, `en_speech`, `image_url`, `created_by`, `created_on`, `is_deleted`, `deleted_by`, `deleted_on`, `is_updated`, `updated_by`, `updated_on`) VALUES
(1, 'duiohpjokp', 'c', 'xuijok', 'x', 'e', 'r', 'fiuhojokl', 'f', 'f', '0000-00-00', '0000-00-00', 'f', 'f', 'f', 'f', 'f', 'f', 'g', 'ge', 'ef', 'ef', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 1, '2017-11-03 00:00:00'),
(2, 'cfytgvu', 'yvyyb', 'bunoiybi', 'bb', 'u', 'gh', 'bn', 'hj', 'bn', '0000-00-00', '0000-00-00', 'y', 'hvb', 'gvhb', 'gh', 'ghy', 'uyyh', 'uyh', 'ybuh', 'uybh', 'gh', 'No Image Uploaded', 1, '2017-11-03 00:00:00', 1, 1, '2017-11-03 00:00:00', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `xxx_user`
--

CREATE TABLE `xxx_user` (
  `USER_NO` int(11) NOT NULL,
  `USER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PASS` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `USER_FULL_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_CONTACT` text COLLATE utf8_unicode_ci NOT NULL,
  `IS_ACTIVE` int(11) NOT NULL,
  `ACTIVE_FROM` date NOT NULL,
  `ACTIVE_TO` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `xxx_user`
--

INSERT INTO `xxx_user` (`USER_NO`, `USER_NAME`, `PASS`, `USER_FULL_NAME`, `USER_EMAIL`, `USER_CONTACT`, `IS_ACTIVE`, `ACTIVE_FROM`, `ACTIVE_TO`) VALUES
(1, 'ssislambd', 'fe707ddd5858aec84832a6c39aca75aa', 'Saikat Sarwar', 'ssislambd@gmail.com', '01685505076', 1, '2015-01-01', '2099-01-01'),
(13, 'admin', '202cb962ac59075b964b07152d234b70', 'Admin', 'admin', '98765432', 1, '2015-01-01', '2099-01-01'),
(14, 'robin', '202cb962ac59075b964b07152d234b70', 'Robin Chaklader', 'robin.chaklader@gmail.com', '01778924683', 1, '2015-01-01', '2099-01-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `death_committee_member`
--
ALTER TABLE `death_committee_member`
  ADD PRIMARY KEY (`death_committee_member_id`);

--
-- Indexes for table `footer_info_details`
--
ALTER TABLE `footer_info_details`
  ADD PRIMARY KEY (`footer_info_details_id`);

--
-- Indexes for table `footer_social_icon_link`
--
ALTER TABLE `footer_social_icon_link`
  ADD PRIMARY KEY (`footer_social_icon_link_id`);

--
-- Indexes for table `founder_speech`
--
ALTER TABLE `founder_speech`
  ADD PRIMARY KEY (`founder_speech_id`);

--
-- Indexes for table `home_about_us1`
--
ALTER TABLE `home_about_us1`
  ADD PRIMARY KEY (`home_about_us1_id`);

--
-- Indexes for table `home_about_us2`
--
ALTER TABLE `home_about_us2`
  ADD PRIMARY KEY (`home_about_us2_id`);

--
-- Indexes for table `home_about_us3`
--
ALTER TABLE `home_about_us3`
  ADD PRIMARY KEY (`home_about_us3_id`);

--
-- Indexes for table `home_about_us4`
--
ALTER TABLE `home_about_us4`
  ADD PRIMARY KEY (`home_about_us4_id`);

--
-- Indexes for table `home_about_us5`
--
ALTER TABLE `home_about_us5`
  ADD PRIMARY KEY (`home_about_us5_id`);

--
-- Indexes for table `home_about_us6`
--
ALTER TABLE `home_about_us6`
  ADD PRIMARY KEY (`home_about_us6_id`);

--
-- Indexes for table `home_about_us7`
--
ALTER TABLE `home_about_us7`
  ADD PRIMARY KEY (`home_about_us7_id`);

--
-- Indexes for table `home_about_us8`
--
ALTER TABLE `home_about_us8`
  ADD PRIMARY KEY (`home_about_us8_id`);

--
-- Indexes for table `home_admission_paper_details`
--
ALTER TABLE `home_admission_paper_details`
  ADD PRIMARY KEY (`home_admission_paper_details_id`);

--
-- Indexes for table `home_admission_paper_title`
--
ALTER TABLE `home_admission_paper_title`
  ADD PRIMARY KEY (`home_admission_paper_title_id`);

--
-- Indexes for table `home_admission_process_details`
--
ALTER TABLE `home_admission_process_details`
  ADD PRIMARY KEY (`home_admission_process_details_id`);

--
-- Indexes for table `home_admission_process_title`
--
ALTER TABLE `home_admission_process_title`
  ADD PRIMARY KEY (`home_admission_process_title_id`);

--
-- Indexes for table `home_admission_rule_class1`
--
ALTER TABLE `home_admission_rule_class1`
  ADD PRIMARY KEY (`home_admission_rule_class1_id`);

--
-- Indexes for table `home_admission_rule_class1_details`
--
ALTER TABLE `home_admission_rule_class1_details`
  ADD PRIMARY KEY (`home_admission_rule_class1_details_id`);

--
-- Indexes for table `home_admission_rule_class2`
--
ALTER TABLE `home_admission_rule_class2`
  ADD PRIMARY KEY (`home_admission_rule_title_id`);

--
-- Indexes for table `home_admission_rule_class2_details`
--
ALTER TABLE `home_admission_rule_class2_details`
  ADD PRIMARY KEY (`home_admission_rule_class2_details_id`);

--
-- Indexes for table `home_events_details`
--
ALTER TABLE `home_events_details`
  ADD PRIMARY KEY (`home_event_details_id`);

--
-- Indexes for table `home_heading1`
--
ALTER TABLE `home_heading1`
  ADD PRIMARY KEY (`home_heading1_id`);

--
-- Indexes for table `home_heading2`
--
ALTER TABLE `home_heading2`
  ADD PRIMARY KEY (`home_heading2_id`);

--
-- Indexes for table `home_heading3`
--
ALTER TABLE `home_heading3`
  ADD PRIMARY KEY (`home_heading3_id`);

--
-- Indexes for table `home_heading4`
--
ALTER TABLE `home_heading4`
  ADD PRIMARY KEY (`home_heading4_id`);

--
-- Indexes for table `home_heading5`
--
ALTER TABLE `home_heading5`
  ADD PRIMARY KEY (`home_heading5_id`);

--
-- Indexes for table `home_important_links`
--
ALTER TABLE `home_important_links`
  ADD PRIMARY KEY (`home_important_links_id`);

--
-- Indexes for table `home_notices`
--
ALTER TABLE `home_notices`
  ADD PRIMARY KEY (`home_notice_id`);

--
-- Indexes for table `home_why_we`
--
ALTER TABLE `home_why_we`
  ADD PRIMARY KEY (`home_why_we_id`);

--
-- Indexes for table `joke`
--
ALTER TABLE `joke`
  ADD PRIMARY KEY (`joke_id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`logo_id`);

--
-- Indexes for table `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`map_id`);

--
-- Indexes for table `notice_setup`
--
ALTER TABLE `notice_setup`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `novel`
--
ALTER TABLE `novel`
  ADD PRIMARY KEY (`novel_id`);

--
-- Indexes for table `present_committee_member`
--
ALTER TABLE `present_committee_member`
  ADD PRIMARY KEY (`present_committee_member_id`);

--
-- Indexes for table `previous_committee_member`
--
ALTER TABLE `previous_committee_member`
  ADD PRIMARY KEY (`previous_committee_member_id`);

--
-- Indexes for table `principal_speech`
--
ALTER TABLE `principal_speech`
  ADD PRIMARY KEY (`principal_speech_id`);

--
-- Indexes for table `scholar_student`
--
ALTER TABLE `scholar_student`
  ADD PRIMARY KEY (`scholar_student_id`);

--
-- Indexes for table `short_story`
--
ALTER TABLE `short_story`
  ADD PRIMARY KEY (`short_story_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `teacher_day_shift`
--
ALTER TABLE `teacher_day_shift`
  ADD PRIMARY KEY (`teacher_day_shift_id`);

--
-- Indexes for table `teacher_death`
--
ALTER TABLE `teacher_death`
  ADD PRIMARY KEY (`teacher_death_id`);

--
-- Indexes for table `teacher_morning_shift`
--
ALTER TABLE `teacher_morning_shift`
  ADD PRIMARY KEY (`teacher_morning_shift_id`);

--
-- Indexes for table `teacher_previous`
--
ALTER TABLE `teacher_previous`
  ADD PRIMARY KEY (`teacher_previous_id`);

--
-- Indexes for table `teacher_vocational`
--
ALTER TABLE `teacher_vocational`
  ADD PRIMARY KEY (`teacher_vocational_id`);

--
-- Indexes for table `xxx_user`
--
ALTER TABLE `xxx_user`
  ADD PRIMARY KEY (`USER_NO`),
  ADD UNIQUE KEY `USER_NAME` (`USER_NAME`),
  ADD UNIQUE KEY `USER_FULL_NAME` (`USER_FULL_NAME`),
  ADD UNIQUE KEY `USER_EMAIL` (`USER_EMAIL`),
  ADD UNIQUE KEY `USER_NO` (`USER_NO`),
  ADD UNIQUE KEY `USER_NO_2` (`USER_NO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `death_committee_member`
--
ALTER TABLE `death_committee_member`
  MODIFY `death_committee_member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `footer_info_details`
--
ALTER TABLE `footer_info_details`
  MODIFY `footer_info_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `footer_social_icon_link`
--
ALTER TABLE `footer_social_icon_link`
  MODIFY `footer_social_icon_link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `founder_speech`
--
ALTER TABLE `founder_speech`
  MODIFY `founder_speech_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_about_us1`
--
ALTER TABLE `home_about_us1`
  MODIFY `home_about_us1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_about_us2`
--
ALTER TABLE `home_about_us2`
  MODIFY `home_about_us2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_about_us3`
--
ALTER TABLE `home_about_us3`
  MODIFY `home_about_us3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_about_us4`
--
ALTER TABLE `home_about_us4`
  MODIFY `home_about_us4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_about_us5`
--
ALTER TABLE `home_about_us5`
  MODIFY `home_about_us5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_about_us6`
--
ALTER TABLE `home_about_us6`
  MODIFY `home_about_us6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_about_us7`
--
ALTER TABLE `home_about_us7`
  MODIFY `home_about_us7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_about_us8`
--
ALTER TABLE `home_about_us8`
  MODIFY `home_about_us8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_admission_paper_details`
--
ALTER TABLE `home_admission_paper_details`
  MODIFY `home_admission_paper_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `home_admission_paper_title`
--
ALTER TABLE `home_admission_paper_title`
  MODIFY `home_admission_paper_title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_admission_process_details`
--
ALTER TABLE `home_admission_process_details`
  MODIFY `home_admission_process_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_admission_process_title`
--
ALTER TABLE `home_admission_process_title`
  MODIFY `home_admission_process_title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_admission_rule_class1`
--
ALTER TABLE `home_admission_rule_class1`
  MODIFY `home_admission_rule_class1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_admission_rule_class1_details`
--
ALTER TABLE `home_admission_rule_class1_details`
  MODIFY `home_admission_rule_class1_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_admission_rule_class2`
--
ALTER TABLE `home_admission_rule_class2`
  MODIFY `home_admission_rule_title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_admission_rule_class2_details`
--
ALTER TABLE `home_admission_rule_class2_details`
  MODIFY `home_admission_rule_class2_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_events_details`
--
ALTER TABLE `home_events_details`
  MODIFY `home_event_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `home_heading1`
--
ALTER TABLE `home_heading1`
  MODIFY `home_heading1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_heading2`
--
ALTER TABLE `home_heading2`
  MODIFY `home_heading2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_heading3`
--
ALTER TABLE `home_heading3`
  MODIFY `home_heading3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home_heading4`
--
ALTER TABLE `home_heading4`
  MODIFY `home_heading4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `home_heading5`
--
ALTER TABLE `home_heading5`
  MODIFY `home_heading5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `home_important_links`
--
ALTER TABLE `home_important_links`
  MODIFY `home_important_links_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `home_notices`
--
ALTER TABLE `home_notices`
  MODIFY `home_notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `home_why_we`
--
ALTER TABLE `home_why_we`
  MODIFY `home_why_we_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `joke`
--
ALTER TABLE `joke`
  MODIFY `joke_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `map`
--
ALTER TABLE `map`
  MODIFY `map_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `notice_setup`
--
ALTER TABLE `notice_setup`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `novel`
--
ALTER TABLE `novel`
  MODIFY `novel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `present_committee_member`
--
ALTER TABLE `present_committee_member`
  MODIFY `present_committee_member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `previous_committee_member`
--
ALTER TABLE `previous_committee_member`
  MODIFY `previous_committee_member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `principal_speech`
--
ALTER TABLE `principal_speech`
  MODIFY `principal_speech_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `scholar_student`
--
ALTER TABLE `scholar_student`
  MODIFY `scholar_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `short_story`
--
ALTER TABLE `short_story`
  MODIFY `short_story_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `teacher_day_shift`
--
ALTER TABLE `teacher_day_shift`
  MODIFY `teacher_day_shift_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `teacher_death`
--
ALTER TABLE `teacher_death`
  MODIFY `teacher_death_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `teacher_morning_shift`
--
ALTER TABLE `teacher_morning_shift`
  MODIFY `teacher_morning_shift_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `teacher_previous`
--
ALTER TABLE `teacher_previous`
  MODIFY `teacher_previous_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `teacher_vocational`
--
ALTER TABLE `teacher_vocational`
  MODIFY `teacher_vocational_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `xxx_user`
--
ALTER TABLE `xxx_user`
  MODIFY `USER_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
