-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 23, 2023 at 04:58 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cars`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`id`, `username`, `password`) VALUES
(1, 'employ1', 'cars1*');

-- --------------------------------------------------------

--
-- Table structure for table `cars_detail`
--

CREATE TABLE `cars_detail` (
  `id` int(11) NOT NULL,
  `color` varchar(20) NOT NULL,
  `number` varchar(20) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `is_avliable` tinyint(1) NOT NULL DEFAULT '1',
  `CID` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars_detail`
--

INSERT INTO `cars_detail` (`id`, `color`, `number`, `image`, `is_avliable`, `CID`, `created_at`, `updated_at`) VALUES
(1, 'black', 'HR 26 DQ 5551', 'https://imgd-ct.aeplcdn.com/1056x660/n/qy7pp0b_1638615.jpg?q=75', 0, 1, '2023-02-13 04:13:58', '2023-02-13 04:13:58'),
(7, 'sliver', 'AP 26 DQ 5551', 'https://images.hindustantimes.com/auto/img/2022/12/07/1600x900/mahindra-alturas-g4-14574_HT_Auto_1587986835192_1587986835442_1670409176479_1670409176479.jpg', 1, 6, '2023-02-10 17:45:31', '2023-02-10 17:45:31'),
(8, 'Green', 'DH 26 QP 5551', 'https://imgd.aeplcdn.com/664x374/n/cw/ec/131187/bolero-neo-right-front-three-quarter.jpeg?isig=0&q=75', 0, 5, '2023-02-11 04:17:12', '2023-02-11 04:17:12'),
(9, 'White', 'TN 26 DQ 5551', 'https://cdn.autoportal.com/img/new-cars-gallery/mahindra/scorpio/exterior/mahindra-scorpio-c3a8419b.jpg', 1, 7, '2023-02-11 03:23:34', '2023-02-11 03:23:34'),
(10, 'Blue', 'MH 26 DQ 5551', 'https://imgd.aeplcdn.com/0x0/n/cw/ec/42355/xuv700-exterior-right-front-three-quarter.jpeg?isig=0', 1, 8, '2023-02-11 03:23:43', '2023-02-11 03:23:43'),
(11, 'Creamic Blue', 'HR 26 TQ 5551', 'https://imgcdn.oto.com.sg/large/gallery/color/4/95/hyundai-kona-electric-color-701152.jpg', 1, 9, '2023-02-11 03:23:47', '2023-02-11 03:23:47'),
(12, 'Red', 'MH 26 QP 5551', 'https://imgd.aeplcdn.com/1056x594/n/1sflcva_1596127.jpg?q=75&wm=1', 1, 10, '2023-02-11 03:23:52', '2023-02-11 03:23:52'),
(13, 'Dark Blue', 'AP 26 QP 5551', 'https://www.autobics.com/wp-content/uploads/2022/05/2022-Hyundai-Elantra-Hybrid-Limited-Intense-Blue.jpg', 1, 11, '2023-02-10 17:45:31', '2023-02-10 17:45:31'),
(14, 'Brown', 'EH 26 QP 5551', 'https://imgd.aeplcdn.com/664x374/n/cw/ec/46812/alcazar-exterior-right-front-three-quarter.jpeg?q=75', 1, 12, '2023-02-10 17:45:31', '2023-02-10 17:45:31'),
(15, 'Red', 'DG 26 DQ 5551', 'https://ackodrive-assets.s3.amazonaws.com/media/test_F6sJbYc.jpeg', 1, 13, '2023-02-11 01:03:06', '2023-02-11 01:03:06'),
(16, 'White', 'DL 26 DQ 5551', 'https://stimg.cardekho.com/images/carexteriorimages/630x420/Skoda/Skoda-Superb-2008-2013/852/front-left-side-47.jpg', 1, 14, '2023-02-10 17:45:31', '2023-02-10 17:45:31'),
(17, 'Blue', 'MH 26 HP 5551', 'https://m.atcdn.co.uk/vms/media/bb72c212eac84641abbd36d7ba0d8abc.jpg', 1, 14, '2023-02-11 03:30:46', '2023-02-11 03:30:46'),
(18, 'Brown', 'TN 26 PQ 5551', 'https://www.drivespark.com/car-image/640x480x100/car/6731022-skoda_superb.jpg', 1, 14, '2023-02-10 17:45:31', '2023-02-10 17:45:31'),
(20, 'Black', 'HR 26 KQ 5551', 'https://imgd-ct.aeplcdn.com/1056x660/n/fdaeh4a_1520251.jpg?q=75', 1, 14, '2023-02-10 17:45:31', '2023-02-10 17:45:31'),
(21, 'Dark Blue', 'AP 26 MQ 5551', 'https://www.ccarprice.com/products/Skoda_Octavia_Scout_2022.jpg', 1, 18, '2023-02-11 03:27:06', '2023-02-11 03:27:06'),
(22, 'Red', 'DH 26 LP 5551', 'https://imgd.aeplcdn.com/0x0/n/cw/ec/129689/gloster-exterior-right-front-three-quarter.jpeg?isig=0', 1, 19, '2023-02-10 17:45:31', '2023-02-10 17:45:31'),
(24, 'Grey', 'DH 26 QP 5581', 'https://stimg.cardekho.com/images/car-images/large/MG/Gloster/9293/1661948403347/224_warm-white_ffffff.jpg?impolicy=resize&imwidth=420', 0, 19, '2023-02-11 04:16:24', '2023-02-11 04:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `cars_shop`
--

CREATE TABLE `cars_shop` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Color` text NOT NULL,
  `rent_price` bigint(20) NOT NULL,
  `dcnt_per` int(11) NOT NULL,
  `image_url` varchar(1000) NOT NULL,
  `Is_Avaliable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars_shop`
--

INSERT INTO `cars_shop` (`id`, `name`, `brand`, `Type`, `Color`, `rent_price`, `dcnt_per`, `image_url`, `Is_Avaliable`, `created_at`, `updated_at`) VALUES
(1, 'Thar', 'Mahindra', 'SUV', 'Black', 15000, 5, 'https://imgd-ct.aeplcdn.com/1056x660/n/qy7pp0b_1638615.jpg?q=75', 1, '2023-02-08 05:19:10', '2023-02-08 14:53:36'),
(5, 'Bolero Neo', 'Mahindra', '7-Seater SUV', 'Green', 10000, 0, 'https://imgd.aeplcdn.com/664x374/n/cw/ec/131187/bolero-neo-right-front-three-quarter.jpeg?isig=0&q=75', 1, '2023-02-08 05:31:13', '2023-02-08 14:53:51'),
(6, 'Alturas G4', 'Mahindra', '7 Seater SUV', 'sliver', 5000, 0, 'https://images.hindustantimes.com/auto/img/2022/12/07/1600x900/mahindra-alturas-g4-14574_HT_Auto_1587986835192_1587986835442_1670409176479_1670409176479.jpg', 1, '2023-02-08 14:40:04', '2023-02-08 14:54:00'),
(7, 'Scorpio', 'Mahindra', 'Compact SUV', 'White', 5000, 0, 'https://cdn.autoportal.com/img/new-cars-gallery/mahindra/scorpio/exterior/mahindra-scorpio-c3a8419b.jpg', 1, '2023-02-08 14:45:20', '2023-02-08 14:54:08'),
(8, 'XUV700', 'Mahindra', '5 Seater SUV', 'Blue', 8000, 2, 'https://imgd.aeplcdn.com/0x0/n/cw/ec/42355/xuv700-exterior-right-front-three-quarter.jpeg?isig=0', 1, '2023-02-08 14:47:59', '2023-02-08 14:54:21'),
(9, 'Kona Electric', 'Hydunai', '5 Seater SUV', 'Creamic Blue', 10000, 3, 'https://imgcdn.oto.com.sg/large/gallery/color/4/95/hyundai-kona-electric-color-701152.jpg', 1, '2023-02-08 14:58:29', '2023-02-08 14:58:29'),
(10, 'Tucson', 'Hyundai ', '5 Seater SUV', 'Red', 8000, 5, 'https://imgd.aeplcdn.com/1056x594/n/1sflcva_1596127.jpg?q=75&wm=1', 1, '2023-02-08 15:01:08', '2023-02-08 15:01:08'),
(11, 'Elantra', 'Hydunai', 'Compact', 'Dark Blue', 6000, 0, 'https://www.autobics.com/wp-content/uploads/2022/05/2022-Hyundai-Elantra-Hybrid-Limited-Intense-Blue.jpg', 1, '2023-02-08 15:03:05', '2023-02-08 15:03:05'),
(12, 'Alcazar', 'Hydunai', '6 Seater SUV', 'Brown', 4000, 0, 'https://imgd.aeplcdn.com/664x374/n/cw/ec/46812/alcazar-exterior-right-front-three-quarter.jpeg?q=75', 1, '2023-02-08 15:06:46', '2023-02-08 15:06:46'),
(13, 'Grand i10 Nios', 'Hydunai', '5 seater Hatchback', 'Red', 2000, 0, 'https://ackodrive-assets.s3.amazonaws.com/media/test_F6sJbYc.jpeg', 1, '2023-02-08 15:08:37', '2023-02-08 15:08:37'),
(14, 'Superb', 'Skoda', '5 Seater Sedan', 'White', 15000, 3, 'https://stimg.cardekho.com/images/carexteriorimages/630x420/Skoda/Skoda-Superb-2008-2013/852/front-left-side-47.jpg', 1, '2023-02-08 16:27:58', '2023-02-08 16:27:58'),
(18, 'Octavia', 'Skoda', '5 Seater Sedan', 'Dark Blue', 13000, 2, 'https://www.ccarprice.com/products/Skoda_Octavia_Scout_2022.jpg', 1, '2023-02-08 16:35:37', '2023-02-08 16:35:37'),
(19, 'Gloster', 'MG', '7 Seater SUV', 'Red', 12000, 0, 'https://imgd.aeplcdn.com/0x0/n/cw/ec/129689/gloster-exterior-right-front-three-quarter.jpeg?isig=0', 1, '2023-02-08 16:37:59', '2023-02-08 16:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `my_bookings`
--

CREATE TABLE `my_bookings` (
  `id` int(11) NOT NULL,
  `cdid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `my_bookings`
--

INSERT INTO `my_bookings` (`id`, `cdid`, `uid`, `start_date`, `end_date`, `amount`, `created_at`, `updated_at`) VALUES
(21, 18, 13, '2023-02-15', '2023-02-15', 15000, '2023-02-11 03:26:10', '2023-02-11 03:26:10'),
(22, 17, 13, '2023-02-24', '2023-02-24', 15000, '2023-02-11 03:30:23', '2023-02-11 03:30:23'),
(23, 24, 22, '2023-02-15', '2023-02-18', 36000, '2023-02-11 04:16:24', '2023-02-11 04:16:24'),
(24, 8, 22, '2023-02-12', '2023-02-14', 20000, '2023-02-11 04:17:12', '2023-02-11 04:17:12'),
(25, 1, 13, '2023-02-15', '2023-02-24', 135000, '2023-02-13 04:13:58', '2023-02-13 04:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `contact` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `name`, `username`, `email`, `password`, `createdat`, `updateat`, `contact`) VALUES
(6, 'Vardhan ', 'jhsghvjw', 'bhopathivardhan654321@gmail.com', 'vardhan1*', '2023-02-09 09:15:11', '2023-02-09 09:15:11', 980482048),
(7, 'Clark Calderon', 'dabej', 'gibi@mailinator.com', 'hvsgxshvcxhjvs', '2023-02-07 13:42:11', '2023-02-07 13:42:11', 8919573936),
(8, 'Joan Hodges', 'miluq', 'qewip@mailinator.com', 'Pa$$w0rd!', '2023-02-07 13:45:19', '2023-02-07 13:45:19', 9000748814),
(9, 'Joan Hodges', 'miluq', 'qewip@mailinator.com', 'Pa$$w0rd!', '2023-02-07 14:17:13', '2023-02-07 14:17:13', 9000748814),
(10, 'Kiayada Rivas', 'bedufov', 'dakemu@mailinator.com', 'Pa$$w0rd!', '2023-02-07 14:17:26', '2023-02-07 14:17:26', 98765532),
(11, 'Vardhan ', 'jhsghvjw', 'bhopathivardhan654321@gmail.com', 'bjcmbjscm', '2023-02-08 04:21:40', '2023-02-08 04:21:40', 678907899),
(12, 'Vardhan ', 'jhsghvjw', 'bhopathivardhan654321@gmail.com', 'hshjcjhsbjhbs', '2023-02-08 04:39:45', '2023-02-08 04:39:45', 556789992),
(13, 'Vardhan ', 'sree', 'bhopathivardhan654321@gmail.com', '1234', '2023-02-10 15:23:02', '2023-02-10 15:23:02', 556789992),
(17, 'Rythu', 'jhsghvjw', 'gibi@mailinator.com', 'sjdjhcbshajx', '2023-02-08 04:46:03', '2023-02-08 04:46:03', 1234566),
(20, 'Vardhan ', 'jhsghvjw', 'bhopathivardhan654321@gmail.com', 'hsbdjhcbjhsdb', '2023-02-08 04:53:21', '2023-02-08 04:53:21', 67890975433),
(22, 'Chinna', 'Sree', 'vardhan1@gmail.com', '12345678', '2023-02-11 04:15:25', '2023-02-11 04:15:25', 123456);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars_detail`
--
ALTER TABLE `cars_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`),
  ADD KEY `CID` (`CID`);

--
-- Indexes for table `cars_shop`
--
ALTER TABLE `cars_shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_bookings`
--
ALTER TABLE `my_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cdid` (`cdid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cars_detail`
--
ALTER TABLE `cars_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cars_shop`
--
ALTER TABLE `cars_shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `my_bookings`
--
ALTER TABLE `my_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cars_detail`
--
ALTER TABLE `cars_detail`
  ADD CONSTRAINT `cars_detail_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `cars_shop` (`id`);

--
-- Constraints for table `my_bookings`
--
ALTER TABLE `my_bookings`
  ADD CONSTRAINT `my_bookings_ibfk_1` FOREIGN KEY (`cdid`) REFERENCES `cars_detail` (`id`),
  ADD CONSTRAINT `my_bookings_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
