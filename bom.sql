-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 18, 2024 at 10:02 AM
-- Server version: 5.7.44-log
-- PHP Version: 8.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trueelem_hworld26n`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_bom_log`
--

CREATE TABLE `oc_bom_log` (
  `bom_log_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `user` varchar(64) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_bom_requests`
--

CREATE TABLE `oc_bom_requests` (
  `bom_request_id` int(16) NOT NULL,
  `fg_pid` int(16) NOT NULL,
  `user` varchar(16) NOT NULL,
  `current_bom` blob NOT NULL,
  `projected_bom` blob NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` date NOT NULL,
  `date_modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_bom_stock_requirement`
--

CREATE TABLE `oc_bom_stock_requirement` (
  `sr_no` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `required_quantity` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_bom_target_units`
--

CREATE TABLE `oc_bom_target_units` (
  `sr_no` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `units` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_bom_log`
--
ALTER TABLE `oc_bom_log`
  ADD PRIMARY KEY (`bom_log_id`);

--
-- Indexes for table `oc_bom_requests`
--
ALTER TABLE `oc_bom_requests`
  ADD PRIMARY KEY (`bom_request_id`);

--
-- Indexes for table `oc_bom_stock_requirement`
--
ALTER TABLE `oc_bom_stock_requirement`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `oc_bom_target_units`
--
ALTER TABLE `oc_bom_target_units`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_bom_log`
--
ALTER TABLE `oc_bom_log`
  MODIFY `bom_log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_bom_requests`
--
ALTER TABLE `oc_bom_requests`
  MODIFY `bom_request_id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_bom_stock_requirement`
--
ALTER TABLE `oc_bom_stock_requirement`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_bom_target_units`
--
ALTER TABLE `oc_bom_target_units`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
