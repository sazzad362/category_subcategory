-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 07:31 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `help`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `sort_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `pid`, `sort_id`, `created_at`) VALUES
(1, 'Mobile', 0, NULL, '2019-11-12 16:37:44'),
(2, 'Watch', 5, NULL, '2019-11-12 16:39:57'),
(3, 'Nokia', 1, NULL, '2019-11-12 16:39:57'),
(4, 'Huawei', 1, NULL, '2019-11-12 16:39:57'),
(5, 'Fashion', 0, NULL, '2019-11-12 16:39:57'),
(6, 'Computer', 0, NULL, '2019-11-12 16:39:57'),
(7, 'Destop', 6, NULL, '2019-11-12 16:39:57'),
(8, 'Laptop', 6, NULL, '2019-11-12 16:39:57'),
(9, 'Mens', 5, NULL, '2019-11-12 16:39:57'),
(10, 'Tshirt', 5, NULL, '2019-11-12 16:39:57'),
(11, 'Womens', 5, NULL, '2019-11-12 16:39:57'),
(12, 'Lipstick', 5, NULL, '2019-11-12 16:39:57'),
(13, 'RAM', 6, NULL, '2019-11-12 16:39:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
