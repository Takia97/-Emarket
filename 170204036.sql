-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2020 at 09:57 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `170204036`
--
CREATE DATABASE IF NOT EXISTS `170204036` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `170204036`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `admin_username` varchar(200) DEFAULT NULL,
  `admin_password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `admin_username`, `admin_password`) VALUES
(1, 'admin', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `product_name` varchar(400) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` varchar(400) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_category` varchar(400) NOT NULL,
  `roduct_uploadTimeAndDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_image` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `supplier_id`, `product_name`, `product_price`, `product_description`, `product_quantity`, `product_category`, `roduct_uploadTimeAndDate`, `product_image`) VALUES
(1, 1, 'mobile', 23000, 'nice mobile', 5, 'mobile', '2020-09-20 07:46:52', 'pictures/mobileAndTablet/apple2.jpg'),
(2, 1, 'mobile', 50000, 'what a mobile', 5, 'mobile', '2020-09-20 15:30:08', 'pictures/mobileAndTablet/apple2.jpg'),
(3, 1, 'mobile', 60000, 'asdddd', 5, 'mobile', '2020-09-20 15:30:15', 'pictures/mobileAndTablet/apple1.jpg'),
(4, 1, 'laptop', 40000, 'asdasdasd', 50, 'laptop', '2020-09-20 15:29:19', 'pictures/pcAndLaptop/asus1.png'),
(5, 1, 'laptop', 3333333, 'adsssssss', 50, 'laptop', '2020-09-20 08:01:17', 'pictures/pcAndLaptop/accer1.jpg'),
(6, 1, 'mobile', 30000, 'asddddddd', 50, 'mobile', '2020-09-20 15:30:20', 'pictures/mobileAndTablet/huawei3.jpg'),
(7, 1, 'mobile', 33000, '2333333', 50, 'mobile', '2020-09-20 15:30:25', 'pictures/mobileAndTablet/lg2.jpg'),
(8, 1, 'mobile', 55000, '2333333', 50, 'mobile', '2020-09-20 15:30:34', 'pictures/mobileAndTablet/huawei4.jpg'),
(9, 1, 'Mobile', 20000, 'vivo new mobile', 1, 'mobile', '2020-09-20 15:33:29', 'pictures/mobileAndTablet/xiaomi1.jpg'),
(12, 1, 'Intel proccessor', 15000, '3.80 GHz', 3, 'pc', '2020-09-20 16:44:57', 'pictures/pcAndLaptop/processor2.jpg'),
(13, 1, 'proccessor', 20000, '3.95 GHz', 1, 'pc', '2020-09-20 16:45:55', 'pictures/pcAndLaptop/processor3.jpg'),
(17, 3, 'Casio', 1500, 'Best Budget', 5, 'watch', '2020-09-21 18:07:10', 'pictures/watchAndSunglass/watch1.jpg'),
(18, 3, 'Titan', 4000, 'Best quality', 7, 'watch', '2020-09-21 18:07:58', 'pictures/watchAndSunglass/watch3.jpg'),
(19, 3, 'Fossil', 20000, 'cornograph', 9, 'watch', '2020-09-21 18:09:16', 'pictures/watchAndSunglass/watch4.jpg'),
(20, 3, 'Casio ', 1000, 'Budget watch', 9, 'watch', '2020-09-21 18:10:36', 'pictures/watchAndSunglass/watch5.jpg'),
(21, 3, 'Gucci', 5000, 'Best brand ', 5, 'sunglass', '2020-09-21 18:12:16', 'pictures/watchAndSunglass/sunglass9.jpg'),
(22, 3, 'Rayban', 1500, 'Best Budget ', 20, 'sunglass', '2020-09-21 18:13:57', 'pictures/watchAndSunglass/sunglass3.jpg'),
(23, 3, 'Gammedian Gaming t1', 1200, '1600 DPI ', 9, 'pc', '2020-09-21 18:20:42', 'pictures/pcAndLaptop/mouse1.jpg'),
(24, 3, 'Walton Scanner ', 3400, 'Best Quality', 10, 'pc', '2020-09-21 18:22:57', 'pictures/pcAndLaptop/scanner2.jpg'),
(25, 3, 'sony 32 Inch', 40000, 'Best video quality ', 10, 'tv', '2020-09-21 18:26:46', 'pictures/tvAndCamera/tv1.jpg'),
(26, 3, 'Walton 24 inch', 12000, 'Bangladeshi brand ', 7, 'tv', '2020-09-21 18:27:40', 'pictures/tvAndCamera/tv5.jpeg'),
(27, 3, 'LG 27 inch', 35000, 'Best Video output', 15, 'tv', '2020-09-21 18:28:21', 'pictures/tvAndCamera/tv4.jpeg'),
(28, 3, 'Nikon ', 45000, 'Best fuctionality ', 22, 'dslr', '2020-09-21 18:29:45', 'pictures/tvAndCamera/dslr1.jpg'),
(29, 3, 'Canon ', 55000, 'Good quality ', 8, 'dslr', '2020-09-21 18:30:28', 'pictures/tvAndCamera/dslr3.jpg'),
(30, 3, 'Sony ', 66000, 'Best in quality', 8, 'dslr', '2020-09-21 18:31:22', 'pictures/tvAndCamera/dslr2.jpg'),
(31, 3, 'Male shirt ', 2200, 'Good quality Fabric ', 66, 'cloth', '2020-09-21 18:32:33', 'pictures/clothes/male5.jpg'),
(32, 3, 'Blue T Shirt ', 550, 'Good quality ', 100, 'cloth', '2020-09-21 18:33:14', 'pictures/clothes/male2.jpeg'),
(33, 3, 'Navy blue T shirt ', 580, 'Color guarantee ', 99, 'cloth', '2020-09-21 18:34:33', 'pictures/clothes/male3.jpg'),
(34, 3, 'Ladies pint T shirt ', 350, 'Colorful', 77, 'cloth', '2020-09-21 18:35:54', 'pictures/clothes/female1.jpg'),
(35, 4, 'White ', 400, 'OK', 6, 'cloth', '2020-09-21 18:36:26', 'pictures/clothes/female2.jpg'),
(36, 3, 'Ladies full sleve shirt ', 1800, 'Hot offer 50% off ', 50, 'cloth', '2020-09-21 18:38:22', 'pictures/clothes/female6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_firstName` varchar(200) NOT NULL,
  `supplier_lastName` varchar(200) NOT NULL,
  `supplier_sex` varchar(200) NOT NULL,
  `supplier_email` varchar(200) NOT NULL,
  `supplier_phone` varchar(200) NOT NULL,
  `supplier_address` varchar(200) NOT NULL,
  `supplier_username` varchar(200) NOT NULL,
  `supplier_pass` varchar(200) NOT NULL,
  `joiningTimeAndDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_firstName`, `supplier_lastName`, `supplier_sex`, `supplier_email`, `supplier_phone`, `supplier_address`, `supplier_username`, `supplier_pass`, `joiningTimeAndDate`) VALUES
(1, 'rafsan', 'rahman', 'Male', 'rafsan@mail.com', '01588223', 'niketon', 'raf36', '827ccb0eea8a706c4c34a16891f84e7b', '2020-09-20 07:49:08'),
(3, 'Easinur', 'Rashid', 'male', 'pran@gmail.com', '01236547891', '22/a rayerbag', 'pran97', '7b92dbcc09b393109adbd6e03a54e111', '2020-09-21 17:58:58'),
(4, 'rafsan', 'rahman', 'male', 'rafsan40@gmail.com', '01816323495', 'ddddd ', 'raf12', 'c5fe25896e49ddfe996db7508cf00534', '2020-09-21 19:52:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
