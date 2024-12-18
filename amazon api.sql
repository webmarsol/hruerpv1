-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 18, 2024 at 10:08 AM
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
CREATE DATABASE IF NOT EXISTS `trueelem_hworld26n` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `trueelem_hworld26n`;

-- --------------------------------------------------------

--
-- Table structure for table `oc_amazon_api_report_request`
--

DROP TABLE IF EXISTS `oc_amazon_api_report_request`;
CREATE TABLE `oc_amazon_api_report_request` (
  `id` int(11) NOT NULL,
  `report_request_id` bigint(20) NOT NULL,
  `report_type` varchar(50) DEFAULT NULL,
  `date_added` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_amazon_daily_inventory`
--

DROP TABLE IF EXISTS `oc_amazon_daily_inventory`;
CREATE TABLE `oc_amazon_daily_inventory` (
  `inv_id` int(11) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `name` varchar(512) NOT NULL,
  `quantity` int(11) NOT NULL,
  `warehouse` varchar(16) NOT NULL,
  `date_added` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_amazon_feed_data`
--

DROP TABLE IF EXISTS `oc_amazon_feed_data`;
CREATE TABLE `oc_amazon_feed_data` (
  `seller_id` text CHARACTER SET utf8 NOT NULL,
  `aws_access_key_id` text CHARACTER SET utf8 NOT NULL,
  `marketplace_id` text CHARACTER SET utf8 NOT NULL,
  `secret_key` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_amazon_min_qty`
--

DROP TABLE IF EXISTS `oc_amazon_min_qty`;
CREATE TABLE `oc_amazon_min_qty` (
  `amazon_min_qty_id` int(11) NOT NULL,
  `asin` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `min_qty_required` int(11) DEFAULT NULL,
  `target_units` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_amazon_sale`
--

DROP TABLE IF EXISTS `oc_amazon_sale`;
CREATE TABLE `oc_amazon_sale` (
  `id` int(11) NOT NULL,
  `amazon_today_value` bigint(20) NOT NULL DEFAULT '0',
  `amazon_total_value` bigint(20) NOT NULL DEFAULT '0',
  `return_value` bigint(20) NOT NULL DEFAULT '0',
  `old_pending_value` bigint(20) NOT NULL DEFAULT '0',
  `amazon_usa_sale` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sale_value_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_amazon_warehouse`
--

DROP TABLE IF EXISTS `oc_amazon_warehouse`;
CREATE TABLE `oc_amazon_warehouse` (
  `amazon_warehouse_id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_amazon_api_report_request`
--
ALTER TABLE `oc_amazon_api_report_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_amazon_daily_inventory`
--
ALTER TABLE `oc_amazon_daily_inventory`
  ADD PRIMARY KEY (`inv_id`);

--
-- Indexes for table `oc_amazon_min_qty`
--
ALTER TABLE `oc_amazon_min_qty`
  ADD PRIMARY KEY (`amazon_min_qty_id`);

--
-- Indexes for table `oc_amazon_sale`
--
ALTER TABLE `oc_amazon_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_amazon_warehouse`
--
ALTER TABLE `oc_amazon_warehouse`
  ADD PRIMARY KEY (`amazon_warehouse_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_amazon_api_report_request`
--
ALTER TABLE `oc_amazon_api_report_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_amazon_daily_inventory`
--
ALTER TABLE `oc_amazon_daily_inventory`
  MODIFY `inv_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_amazon_min_qty`
--
ALTER TABLE `oc_amazon_min_qty`
  MODIFY `amazon_min_qty_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_amazon_sale`
--
ALTER TABLE `oc_amazon_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_amazon_warehouse`
--
ALTER TABLE `oc_amazon_warehouse`
  MODIFY `amazon_warehouse_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
