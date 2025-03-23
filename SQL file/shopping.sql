-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Mar 23, 2025 at 03:57 PM
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
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'ca2b26bcf1546112c3a8b8ef4981daa4', '2024-12-31 19:21:18', '23-03-2025 10:13:02 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(6, 'Fashion', 'Fashion', '2025-01-01 07:17:37', ''),
(8, 'Shoes', 'Shoes', '2025-03-23 10:55:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(3, 6, '23', 1, '2025-03-23 11:30:49', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(23, 6, 16, 'Nike Court', 'Nike', 2500, 2600, '<br>', 'nike_court.png', 'nike_court.png', 'nike_court.png', 20, 'In Stock', '2025-03-23 11:25:42', NULL),
(24, 6, 15, 'Nike Club Fleece', 'Nike', 2500, 2600, 'Nike Club Fleece', 'nike_club_fleece.png', 'nike_club_fleece.png', 'nike_club_fleece.png', 20, 'In Stock', '2025-03-23 14:08:23', NULL),
(25, 6, 15, 'Jordan Brooklyn Fleece', 'Nike', 2000, 1234, 'Looking for a little extra warmth? Grab this classic hoodie. Smooth on the outside with unbrushed loops on the inside, our midweight French terry is comfortable and breathable enough to wear all year long.', 'jordan_brooklyn_fleece.jpg', 'jordan_brooklyn_fleece.jpg', 'jordan_brooklyn_fleece.jpg', 20, 'In Stock', '2025-03-23 14:25:22', NULL),
(26, 6, 15, 'Nike Sportswear', 'Nike', 3000, 2500, 'Looking for a little extra warmth? Grab this classic hoodie. Smooth on the outside with unbrushed loops on the inside, our midweight French terry is comfortable and breathable enough to wear all year long.', 'nike_sportswear.png', 'nike_sportswear.jpg', 'nike_sportswear.jpg', 20, 'In Stock', '2025-03-23 14:26:34', NULL),
(28, 6, 15, 'Nike Sportswear 2', 'Nike', 1000, 900, 'Looking for a little extra warmth? Grab this classic hoodie. Smooth on the outside with unbrushed loops on the inside, our midweight French terry is comfortable and breathable enough to wear all year long.', 'nike_sportswear1.png', 'nike_sportswear1.png', 'nike_sportswear1.png', 20, 'In Stock', '2025-03-23 14:28:12', NULL),
(29, 8, 21, 'Onitsuka Tiger Mexico66 Ballerina Pink', 'Onitsukatiger', 4000, 3550, 'Looking for a little extra warmth? Grab this classic hoodie. Smooth on the outside with unbrushed loops on the inside, our midweight French terry is comfortable and breathable enough to wear all year long.', 'Onitsuka_Tiger_Mexico66_Ballerina.webp', 'Onitsuka_Tiger_Mexico66_Ballerina.webp', 'Onitsuka_Tiger_Mexico66_Ballerina.webp', 20, 'In Stock', '2025-03-23 14:30:35', NULL),
(30, 8, 20, 'Onitsuka Tiger Mexico66 ', 'Onitsukatiger', 4000, 3550, 'Looking for a little extra warmth? Grab this classic hoodie. Smooth on the outside with unbrushed loops on the inside, our midweight French terry is comfortable and breathable enough to wear all year long.', 'Onitsuka_Tiger_Mexico66.webp', 'Onitsuka_Tiger_Mexico66.webp', 'Onitsuka_Tiger_Mexico66.webp', 20, 'In Stock', '2025-03-23 14:31:01', NULL),
(31, 6, 17, 'Nike Sportswear3', 'Nike', 4000, 3550, 'Looking for a little extra warmth? Grab this classic hoodie. Smooth on the outside with unbrushed loops on the inside, our midweight French terry is comfortable and breathable enough to wear all year long.', 'nike_sportswear3.png', 'nike_sportswear3.png', 'nike_sportswear3.png', 20, 'In Stock', '2025-03-23 14:32:28', NULL),
(32, 6, 17, 'zara_collection_midi_dress', 'Zara', 4000, 3550, 'Looking for a little extra warmth? Grab this classic hoodie. Smooth on the outside with unbrushed loops on the inside, our midweight French terry is comfortable and breathable enough to wear all year long.', 'zara_collection_midi_dress.jpg', 'zara_collection_midi_dress.jpg', 'zara_collection_midi_dress.jpg', 20, 'In Stock', '2025-03-23 14:33:26', NULL),
(33, 6, 22, 'Zara Oversize Cropped Blazer', 'Zara', 4000, 3550, 'Looking for a little extra warmth? Grab this classic hoodie. Smooth on the outside with unbrushed loops on the inside, our midweight French terry is comfortable and breathable enough to wear all year long.', 'zara_oversize_cropped_blazer.jpg', 'zara_oversize_cropped_blazer.jpg', 'zara_oversize_cropped_blazer.jpg', 20, 'In Stock', '2025-03-23 14:36:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(15, 6, 'T-shirt', '2025-03-23 10:35:06', NULL),
(16, 6, 'Sport', '2025-03-23 10:36:24', NULL),
(17, 6, 'Dress', '2025-03-23 14:20:02', NULL),
(18, 6, 'Hat', '2025-03-23 14:20:08', NULL),
(19, 6, 'Jewelry', '2025-03-23 14:20:35', NULL),
(20, 8, 'Sport', '2025-03-23 14:30:05', NULL),
(21, 8, 'Ballet', '2025-03-23 14:30:12', NULL),
(22, 6, 'Blazer', '2025-03-23 14:35:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'amit12@gmail.com', 0x3132372e302e302e3100000000000000, '2025-01-02 09:11:28', '02-01-2025 02:43:43 PM', 1),
(2, 'johndeo@gmail.com', 0x3132372e302e302e3100000000000000, '2025-01-02 09:15:08', NULL, 1),
(3, 'tuonghantruong@gmail.com', 0x3a3a3100000000000000000000000000, '2025-03-23 11:28:27', '23-03-2025 05:03:02 PM', 1),
(4, 'tuonghantruong@gmail.com', 0x3a3a3100000000000000000000000000, '2025-03-23 11:33:17', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(6, 'Truong Ho Tuong Han', 'tuonghantruong@gmail.com', 827749005, 'f61b784d955b1c86e3a3cdc7c70813ca', 'Ung Van Khiem Street', '25 ward', 'Ho Chi Minh City', 7000, 'Ung Van Khiem Street', '25 ward', 'Ho Chi Minh City', 7000, '2025-03-23 11:28:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
