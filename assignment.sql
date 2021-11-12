-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 12, 2021 at 03:14 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'quần áo'),
(2, 'giầy'),
(7, 'túi '),
(19, 'balo');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `productid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `categoryid` int(5) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `quantity`, `categoryid`, `image`, `description`) VALUES
(1, 'áo hoodie 1', 700, 7, 1, '/hoodie_1.png', 'Áo hoodie của chúng tôi có kiểu dáng mát, đẹp, lại hợp thời trang, mua ngay mua ngay !'),
(2, 'Áo hoodie 2', 500, 15, 1, '/hoodie_2.png', 'Áo hoodie của chúng tôi có kiểu dáng mát, đẹp, lại hợp thời trang, mua ngay mua ngay ! (2).'),
(3, 'Áo hoodie 3', 100, 10, 1, '/hoodie_3.jpg', 'Áo hoodie của chúng tôi có kiểu dáng mát, đẹp, lại hợp thời trang, mua ngay mua ngay ! (3).'),
(4, 'Áo hoodie 4', 120, 14, 1, '/hoodie_4.jpg', 'Áo hoodie của chúng tôi có kiểu dáng mát, đẹp, lại hợp thời trang, mua ngay mua ngay ! (4).'),
(5, 'Áo t-shirt 1', 110, 17, 1, '/t_shirt_1.jpg', 'Áo T-shirt của chúng tôi có kiểu dáng mát, đẹp, lại hợp thời trang, mua ngay mua ngay !'),
(6, 'Áo T-shirt 2', 115, 20, 1, '/t_shirt_2.jpg', 'Áo T-shirt của chúng tôi có kiểu dáng mát, đẹp, lại hợp thời trang, mua ngay mua ngay ! (2).'),
(8, 'Giầy 2', 78, 18, 2, '/shoes_2.jpg', 'Giẩy của chúng tôi rất đẹp (2)'),
(9, 'Giầy 3', 37, 50, 2, '/shoes_3.png', 'Giẩy của chúng tôi rất đẹp (3).'),
(12, 'giầy 5', 57, 16, 2, 'shoes_5.jpg', 'Giầy của chúng tôi rất đẹp (5)'),
(13, 'giầy 7', 70, 20, 2, 'shoes_7.jpg', 'Giầy của chúng tôi rất đẹp (7)'),
(14, 'giầy 8', 80, 85, 2, 'shoes_8.jpeg', 'Giầy của chúng tôi rất đẹp (8)'),
(15, 'túi 1', 600, 20, 7, 'bag_1.jpg', 'túi của chúng tôi rất đẹp (1)'),
(16, 'túi 2', 700, 20, 7, 'bag_2.jpg', 'túi của chúng tôi rất đẹp (2)'),
(17, 'tÃºi 4', 900, 5, 7, 'bag_4.jpg', 'túi của chúng tôi rất đẹp (4)'),
(30, 'balo 1', 600, 15, 19, 'bag_2.jpg', 'something'),
(31, 'balo 2', 70, 16, 19, 'bag_4.jpg', 'balo nay rat re');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
