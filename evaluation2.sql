-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2020 at 08:49 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evaluation2`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `give_child` (IN `itemID` INT(100))  BEGIN
SELECT t1.item_name FROM
electronic_store AS t1 LEFT JOIN electronic_store as t2
ON t1.parent_id = t2.item_id
WHERE t2.item_id = itemID ;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `electronic_store`
--

CREATE TABLE `electronic_store` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `electronic_store`
--

INSERT INTO `electronic_store` (`item_id`, `item_name`, `parent_id`) VALUES
(1, 'Electronics', NULL),
(2, 'Laptops & PC', 1),
(3, 'Laptops', 2),
(4, 'PC', 2),
(5, 'Cameras & photo', 1),
(6, 'Cameras', 5),
(7, 'Phones & Accessories', 1),
(8, 'Smartphones', 7),
(9, 'Android', 8),
(10, 'IOS', 8),
(11, 'Other Smartphones', 8),
(12, 'Batteries', 7),
(13, 'Headsets', 7),
(14, 'Screen Protectors', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `electronic_store`
--
ALTER TABLE `electronic_store`
  ADD PRIMARY KEY (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `electronic_store`
--
ALTER TABLE `electronic_store`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
