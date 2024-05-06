-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 06, 2024 at 05:10 PM
-- Server version: 8.0.35
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int UNSIGNED NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(1, 'Admin', 'adminFirst', '5d793fc5b00a2348c3fb9ab59e5ca98a'),
(9, 'Admin Chan', 'adminC', '21232f297a57a5a743894a0e4a801fc3'),
(13, 'Administrator', 'adminAd', '827ccb0eea8a706c4c34a16891f84e7b'),
(14, 'Admin Lam', 'adminL', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `featured` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `active` varchar(10) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(5, 'Burger', 'Food_Category_326.jpg', 'Yes', 'Yes'),
(7, 'Momo', 'Food_Category_504.jpg', 'Yes', 'Yes'),
(12, 'Delicious', 'Food_Category_431.jpg', 'No', 'Yes'),
(21, 'Pizza', 'Food_Category_720.jpg', 'Yes', 'Yes'),
(22, 'Vegetable', 'Food_Category_438.png', 'No', 'Yes'),
(23, 'Drinks', 'Food_Category_474.jpg', 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `featured` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `active` varchar(10) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(5, 'Smoky Sausage Pizza', 'Yummy pizza!', 50.00, 'Food-Name-1776.jpg', 1, 'Yes', 'Yes'),
(6, 'Dumping', 'Best dumping in the world!', 32.00, 'Food-Name-3129.jpg', 7, 'Yes', 'Yes'),
(7, 'Fried Dumping', 'This is another type of dumping', 30.00, 'Food-Name-1799.jpg', 7, 'No', 'Yes'),
(12, 'Forest', 'A forest?', 1000.00, 'Food-Name-8218.png', 22, 'No', 'Yes'),
(13, 'Coke', 'Coca cola', 10.00, 'Food-Name-845.jpg', 23, 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int UNSIGNED NOT NULL,
  `food` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_contact` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_email` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(2, 'Yummy Burger', '50.00', '1', 50.00, '2024-05-06 12:03:29', 'Deliveried', 'Lee Cheok Hin', '98765432', '123@fsdfsaf.com', 'Good Street, Well Town'),
(3, 'Dumping', '32.00', '4', 128.00, '2024-05-06 12:05:24', 'Cancelled', 'Lee Cheok Hin', '98765432', '123@adsfa.com', 'Street, Town'),
(4, 'Smoky Sausage Pizza', '50.00', '6', 300.00, '2024-05-06 12:23:04', 'Ordered', 'Lee Cheok Hin', '98765432', '123@gaasdf.com', 'Street, City'),
(6, 'Coke', '10.00', '1', 10.00, '2024-05-06 01:31:20', 'Ordered', 'Lee Cheok Hin', '12345678', 'hi@lck.com', 'My Home');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
