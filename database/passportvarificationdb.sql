-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2016 at 10:01 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `passportvarificationdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
`id` int(11) NOT NULL,
  `ip_address` varchar(40) COLLATE utf8_bin NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `ps_address_varified`
--

CREATE TABLE IF NOT EXISTS `ps_address_varified` (
  `id_address_varified` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `varification_code` varchar(100) NOT NULL,
  `is_sent` tinyint(4) NOT NULL,
  `is_recived` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ps_criminal_record`
--

CREATE TABLE IF NOT EXISTS `ps_criminal_record` (
`id_criminal_record` int(11) NOT NULL,
  `nid` varchar(100) NOT NULL,
  `complain` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ps_identifier_varifier`
--

CREATE TABLE IF NOT EXISTS `ps_identifier_varifier` (
`id_identifier_varifier` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `designition` varchar(50) NOT NULL,
  `district_id` int(11) NOT NULL,
  `upzila_id` int(11) NOT NULL,
  `union_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ps_location_district`
--

CREATE TABLE IF NOT EXISTS `ps_location_district` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ps_location_union`
--

CREATE TABLE IF NOT EXISTS `ps_location_union` (
  `id_location_union` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `id_location_upzila` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ps_location_upzila`
--

CREATE TABLE IF NOT EXISTS `ps_location_upzila` (
`id_location_upzila` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_location_district` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ps_nid_db`
--

CREATE TABLE IF NOT EXISTS `ps_nid_db` (
`id_nid_db` int(11) NOT NULL,
  `nid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `photo_url` varchar(255) NOT NULL,
  `fingure_print_url` varchar(255) NOT NULL,
  `signature_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ps_passport_info`
--

CREATE TABLE IF NOT EXISTS `ps_passport_info` (
`id_passport_info` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `is_received` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ps_payment_info`
--

CREATE TABLE IF NOT EXISTS `ps_payment_info` (
`id_payment_info` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `payment_processor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ps_user_info`
--

CREATE TABLE IF NOT EXISTS `ps_user_info` (
`id_user_info` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `district_id` int(11) NOT NULL,
  `union_id` int(11) NOT NULL,
  `upzila_id` int(11) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `gender` enum('1','2') NOT NULL COMMENT '1= male , 2 = female',
  `nid` varchar(100) NOT NULL,
  `pic_url` varchar(255) NOT NULL,
  `nid_url` varchar(255) NOT NULL,
  `fingure_print_url` varchar(255) NOT NULL,
  `is_paid` tinyint(4) NOT NULL COMMENT '1=true , 0=false',
  `is_police_varified` tinyint(4) NOT NULL,
  `is_address_varified` tinyint(4) NOT NULL,
  `is_identified` tinyint(4) NOT NULL,
  `identifier_id` int(11) NOT NULL,
  `is_other_varified` tinyint(4) NOT NULL,
  `other_varification_id` int(11) NOT NULL COMMENT 'user id'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usermeta`
--

CREATE TABLE IF NOT EXISTS `usermeta` (
`metaid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `metaname` varchar(255) NOT NULL,
  `metavalue` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userrole`
--

CREATE TABLE IF NOT EXISTS `userrole` (
`id` int(11) NOT NULL,
  `roleName` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `new_password_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `new_email_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `activated`, `banned`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`) VALUES
(1, 'mashfiqcse13', '$2a$08$u9oWnpLiyXLZ9vN1cZrJOe1qMQ6WeeArNCEl6d5NYXqqas5j3MS3i', 'mashfiqnahid@gmail.com', 1, 0, NULL, NULL, NULL, NULL, 'bce761da5f06405b4dcf0769c2ed7ed1', '::1', '2016-04-06 21:29:23', '2016-04-06 11:31:58', '2016-04-06 19:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_autologin`
--

CREATE TABLE IF NOT EXISTS `user_autologin` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE IF NOT EXISTS `user_profiles` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
 ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ps_criminal_record`
--
ALTER TABLE `ps_criminal_record`
 ADD PRIMARY KEY (`id_criminal_record`);

--
-- Indexes for table `ps_identifier_varifier`
--
ALTER TABLE `ps_identifier_varifier`
 ADD PRIMARY KEY (`id_identifier_varifier`);

--
-- Indexes for table `ps_location_district`
--
ALTER TABLE `ps_location_district`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ps_location_upzila`
--
ALTER TABLE `ps_location_upzila`
 ADD PRIMARY KEY (`id_location_upzila`);

--
-- Indexes for table `ps_nid_db`
--
ALTER TABLE `ps_nid_db`
 ADD PRIMARY KEY (`id_nid_db`);

--
-- Indexes for table `ps_passport_info`
--
ALTER TABLE `ps_passport_info`
 ADD PRIMARY KEY (`id_passport_info`);

--
-- Indexes for table `ps_payment_info`
--
ALTER TABLE `ps_payment_info`
 ADD PRIMARY KEY (`id_payment_info`);

--
-- Indexes for table `ps_user_info`
--
ALTER TABLE `ps_user_info`
 ADD PRIMARY KEY (`id_user_info`);

--
-- Indexes for table `usermeta`
--
ALTER TABLE `usermeta`
 ADD PRIMARY KEY (`metaid`);

--
-- Indexes for table `userrole`
--
ALTER TABLE `userrole`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_autologin`
--
ALTER TABLE `user_autologin`
 ADD PRIMARY KEY (`key_id`,`user_id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ps_criminal_record`
--
ALTER TABLE `ps_criminal_record`
MODIFY `id_criminal_record` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ps_identifier_varifier`
--
ALTER TABLE `ps_identifier_varifier`
MODIFY `id_identifier_varifier` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ps_location_district`
--
ALTER TABLE `ps_location_district`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ps_location_upzila`
--
ALTER TABLE `ps_location_upzila`
MODIFY `id_location_upzila` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ps_nid_db`
--
ALTER TABLE `ps_nid_db`
MODIFY `id_nid_db` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ps_passport_info`
--
ALTER TABLE `ps_passport_info`
MODIFY `id_passport_info` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ps_payment_info`
--
ALTER TABLE `ps_payment_info`
MODIFY `id_payment_info` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ps_user_info`
--
ALTER TABLE `ps_user_info`
MODIFY `id_user_info` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usermeta`
--
ALTER TABLE `usermeta`
MODIFY `metaid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `userrole`
--
ALTER TABLE `userrole`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
