-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2024 at 08:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `frosteddreams`
--

-- --------------------------------------------------------

--
-- Table structure for table `cake_shop_admin_registrations`
--

CREATE TABLE `cake_shop_admin_registrations` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_email` varchar(150) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cake_shop_admin_registrations`
--

INSERT INTO `cake_shop_admin_registrations` (`admin_id`, `admin_username`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'ad@cake.com', '987654');

-- --------------------------------------------------------

--
-- Table structure for table `cake_shop_category`
--

CREATE TABLE `cake_shop_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cake_shop_category`
--

INSERT INTO `cake_shop_category` (`category_id`, `category_name`, `category_image`) VALUES
(1, 'Cakes', '200731042405.jpg'),
(2, 'Pastries', '200731042031.jpeg'),
(3, 'Desserts', '200731042306.jpg'),
(4, 'Cookies', '200731042457.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cake_shop_orders`
--

CREATE TABLE `cake_shop_orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `delivery_date` varchar(100) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `total_amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cake_shop_orders`
--

INSERT INTO `cake_shop_orders` (`orders_id`, `users_id`, `delivery_date`, `payment_method`, `total_amount`) VALUES
(1, 2, '2020-08-09', 'Cash', '1000'),
(2, 3, '2023-02-22', 'Card', '2000'),
(3, 3, '2012-02-12', 'Cash', '2500'),
(4, 3, '2012-12-12', 'Cash', '900');

-- --------------------------------------------------------

--
-- Table structure for table `cake_shop_orders_detail`
--

CREATE TABLE `cake_shop_orders_detail` (
  `orders_detail_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cake_shop_orders_detail`
--

INSERT INTO `cake_shop_orders_detail` (`orders_detail_id`, `orders_id`, `product_name`, `quantity`) VALUES
(1, 1, 'Red velvet', 1),
(2, 1, 'Oreo', 1),
(3, 2, 'Red velvet', 1),
(4, 2, 'Black forest', 1),
(5, 2, 'Oreo', 1),
(6, 2, 'Black choco', 1),
(7, 3, 'Red velvet', 5),
(8, 4, 'Black Choco', 9);

-- --------------------------------------------------------

--
-- Table structure for table `cake_shop_product`
--

CREATE TABLE `cake_shop_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_description` varchar(300) NOT NULL,
  `product_image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cake_shop_product`
--

INSERT INTO `cake_shop_product` (`product_id`, `product_name`, `product_category`, `product_price`, `product_description`, `product_image`) VALUES
(1, 'Black choco', 1, '5000', 'This is cake made of pure chocolate.', '2007310437280.jpg, 2007310437281.jpg, 2007310437282.jpg'),
(2, 'Red velvet', 1, '3500', 'This cake is inspired by red velvet.', '2007310439020.jpg, 2007310439021.jpg, 2007310439022.jpg'),
(3, 'Black forest', 1, '4500', 'It is a simple black forest cake.', '2007310440210.jpg, 2007310440211.jpg, 2007310440212.jpg'),
(4, 'Oreo', 1, '4000', 'Made out of oreo.', '2007310441020.jpg, 2007310441021.jpg, 2007310441022.jpg'),
(5, 'Black Choco', 2, '600', 'This is a black chocolate.', '2007310442250.jpg'),
(6, 'Strawberry', 2, '750', 'This is a strawberry.', '2007310443190.jpg'),
(7, 'Butterscotch', 2, '800', 'This is a butterscotch.', '2007310444030.jpg'),
(8, 'Choco chips', 4, '350', 'This a chocolate chip cookie.', '2007310445280.jpg'),
(9, 'Chocolate', 3, '450', 'Chocolate flavoured dessert.', '2007310446340.jpg'),
(10, 'Vanilla', 3, '400', 'Vanilla flavoured dessert.', '2007310448270.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cake_shop_users_registrations`
--

CREATE TABLE `cake_shop_users_registrations` (
  `users_id` int(11) NOT NULL,
  `users_username` varchar(100) NOT NULL,
  `users_email` varchar(150) NOT NULL,
  `users_password` varchar(100) NOT NULL,
  `users_mobile` varchar(50) NOT NULL,
  `users_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cake_shop_users_registrations`
--

INSERT INTO `cake_shop_users_registrations` (`users_id`, `users_username`, `users_email`, `users_password`, `users_mobile`, `users_address`) VALUES
(3, 'thila', 'thilakshithapriyangana2001@gmail.com', 'thila', '0703434870', '552 3/3'),
(4, 'anura ', 'anura24@gmail.com', '123', '1234567890', 'npp 24'),
(5, 'dina', 'dinalipriyanjana@gmail.com', '1234', '0703434877', '552 3/4 Thaldiyawala, Athurugiriya'),
(6, 'dinavcvcv', 'dinalipriyanjana@gmail.com', '12345', '0703434878', '552 3/4 Thaldiyawala, Athurugiriya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cake_shop_admin_registrations`
--
ALTER TABLE `cake_shop_admin_registrations`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cake_shop_category`
--
ALTER TABLE `cake_shop_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `cake_shop_orders`
--
ALTER TABLE `cake_shop_orders`
  ADD PRIMARY KEY (`orders_id`);

--
-- Indexes for table `cake_shop_orders_detail`
--
ALTER TABLE `cake_shop_orders_detail`
  ADD PRIMARY KEY (`orders_detail_id`);

--
-- Indexes for table `cake_shop_product`
--
ALTER TABLE `cake_shop_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `cake_shop_users_registrations`
--
ALTER TABLE `cake_shop_users_registrations`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cake_shop_admin_registrations`
--
ALTER TABLE `cake_shop_admin_registrations`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cake_shop_category`
--
ALTER TABLE `cake_shop_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cake_shop_orders`
--
ALTER TABLE `cake_shop_orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cake_shop_orders_detail`
--
ALTER TABLE `cake_shop_orders_detail`
  MODIFY `orders_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cake_shop_product`
--
ALTER TABLE `cake_shop_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cake_shop_users_registrations`
--
ALTER TABLE `cake_shop_users_registrations`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
