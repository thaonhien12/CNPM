-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2024 at 04:27 AM
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
-- Database: `food_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 2, 'Phạm Tất Đạt', 'phtatdat2706@gmail.com', '0941651157', 'Đồ ăn ngon'),
(2, 2, 'admin', 'phdat276@gmail.com', '123456789', '123');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(6, 5, 'Công Nghệ Phần Mềm', '19001009', 'test@gmail.com', 'Thanh toán khi nhận hàng', 'Thach Ban, Long Bien, Ha Noi, Viet Nam', 'Pizza rau củ (40000 x 2) - Cà phê (15000 x 2) - ', 110000, '2024-05-13', 'Hủy'),
(7, 5, 'Công Nghệ Phần Mềm', '19001009', 'test@gmail.com', 'Thanh toán khi nhận hàng', 'Thach Ban, Long Bien, Ha Noi, Viet Nam', 'Pizza rau củ (40000 x 4) - ', 160000, '2024-05-13', 'Thành công'),
(9, 5, 'Công Nghệ Phần Mềm', '19001009', 'test@gmail.com', 'Thanh toán khi nhận hàng', 'Thach Ban, Long Bien, Ha Noi, Viet Nam', 'Bánh sicula (10000 x 1) - ', 10000, '2024-05-15', 'Thành công'),
(10, 12, 'stingdau', '0941414112', 'stingdau@gmail.com', 'Thanh toán khi nhận hàng', 'Thạch Bàn, Long Biên , Hà Nội , Việt Nam', 'Mỳ Ý (50000 x 4) - ', 200000, '2024-05-17', 'Đang chờ'),
(11, 12, 'stingdau', '0941414112', 'stingdau@gmail.com', 'Thanh toán khi nhận hàng', 'Thạch Bàn, Long Biên , Hà Nội , Việt Nam', 'nƯỚC cHẠNHlòng (54544 x 5) - ', 272720, '2024-05-17', 'Hủy'),
(12, 12, 'stingdau', '0941414112', 'stingdau@gmail.com', 'Thanh toán khi nhận hàng', 'số 21 ngõ 6 đường Nguyễn Thời Trung,Thạch Bàn, Long Biên, Hà Nội', 'Mỳ Ý (50000 x 1) - ', 50000, '2024-05-18', 'Hủy'),
(13, 5, 'Công Nghệ Phần Mềm', '19001009', 'test@gmail.com', 'Thanh toán khi nhận hàng', 'Thach Ban, Long Bien, Ha Noi, Viet Nam', 'Mỳ Ý (50000 x 1) - pIZZA íTALIA (50000 x 1) - Bánh sicula (10000 x 1) - ', 110000, '2024-05-20', 'Hủy'),
(14, 5, 'Công Nghệ Phần Mềm', '19001009', 'test@gmail.com', 'Thanh toán khi nhận hàng', 'Dai Kim, Hoang Mai, Ha Noi', 'Bánh sicula (10000 x 4) - ', 40000, '2024-05-20', 'Đang chờ'),
(15, 12, 'stingdau', '0941414112', 'stingdau@gmail.com', 'Thanh toán khi nhận hàng', 'Dai Kim, Hoang Mai, Ha Noi', 'Mỳ Ý (50000 x 1) - ', 50000, '2024-05-20', 'Đang chờ'),
(16, 1, 'PhạmTấtĐạt', '19001088', 'phtatdat2706@gmail.com', 'Thanh toán khi nhận hàng', 'số 21 ngõ 6 đường Nguyễn Thời Trung,Thạch Bàn, Long Biên , Hà Nội ', 'Burger Bò (14000000 x 4) - ', 56000000, '2024-05-24', 'Đang chờ');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(100) NOT NULL,
  `expire_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `expire_at`) VALUES
(7, 'phtatdat2706@gmail.com', 'cc25f7515127e298f017212c0a19e33876a091608876ebcd2c5244ee75c65f7e145b79f42612fb3941b2e170f80dbce7ab61', '2024-05-20 18:25:01'),
(8, 'phtatdat2706@gmail.com', '53f2ff1f3feabbb267c1fbdff9749745d1e7f19ef5f6792b893ecff265d651b7bd328dffb0105049eb013855cd2e138b6050', '2024-05-20 18:32:16'),
(9, 'phtatdat2706@gmail.com', '726c23bbdf9427bf5b355b295fc27f9b393274b9a7d99971ced349ef2992cd2e566a91419bd187000cdd6f48a3cf2c527064', '2024-05-20 18:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`, `description`) VALUES
(13, 'Bánh socola', 'Tráng miệng', 10000, 'dessert-2.png', 'bông lan mềm mại, phủ socola béo ngậy'),
(14, 'Mỳ Ý', 'Món chính', 50000, 'dish-1.png', 'mỳ Ítali'),
(15, 'pIZZA íTALIA', 'Đồ ăn nhanh', 50000, 'pizza-2.png', 'phô mai mô la li za, ướt chuông và bột mỳ'),
(16, 'nƯỚC cHẠNHlòng', 'Đồ uống', 54544, 'drink-3.png', 'chanh tươi nguyên chất từ cây nhà lá vườn'),
(18, 'Phở bò ', 'Món chính', 50000, 'Pho_bo.jpg', 'bò mỹ, phở từ gạo'),
(19, 'Mỳ Ý Rau Củ Quả', 'Món chính', 199990, 'dish-2.png', 'Rau củ quả tươi từ 4 bể 5 châu'),
(20, 'Nước dâu tây', 'Đồ uống', 2000000, 'drink-5.png', 'Dâu tây tươi, nước mưa, rau húng '),
(21, 'Burger Bò', 'Đồ ăn nhanh', 14000000, 'burger-1.png', 'Bò Canada nhập khẩu nguyên con, rau củ quả tươi sống');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(1, 'PhạmTấtĐạt', 'phtatdat2706@gmail.com', '19001088', '356a192b7913b04c54574d18c28d46e6395428ab', 'số 21 ngõ 6 đường Nguyễn Thời Trung,Thạch Bàn, Long Biên , Hà Nội '),
(4, 'phtatdat', 'phtatdat2003@gmail.com', '123456789', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '1, 1, 1, 1, Hn, abcd, Vn - 100000'),
(5, 'Công Nghệ Phần Mềm', 'test@gmail.com', '19001009', '356a192b7913b04c54574d18c28d46e6395428ab', 'Thach Ban, Long Bien, Ha Noi, Viet Nam'),
(6, 'PhạmTấtĐạt', 'test123@gmail.com', '0912354543', '356a192b7913b04c54574d18c28d46e6395428ab', ''),
(7, 'tada123', 'tada123@gmail.com', '0941651157', '356a192b7913b04c54574d18c28d46e6395428ab', ''),
(8, 'tada', 'tada@gmail.com', '0944444444', '356a192b7913b04c54574d18c28d46e6395428ab', ''),
(9, 'td', 'td@gmail.com', '1111111111', '356a192b7913b04c54574d18c28d46e6395428ab', ''),
(10, 'trachanh0do', 'blabla@gmail.com', '0914184758', '356a192b7913b04c54574d18c28d46e6395428ab', ''),
(11, 'Chồn Xanh Lè', 'chonxanhle@gmail.com', '095141672', '356a192b7913b04c54574d18c28d46e6395428ab', ''),
(12, 'stingdau', 'stingdau@gmail.com', '0941414112', '356a192b7913b04c54574d18c28d46e6395428ab', 'số 21 ngõ 6 đường Nguyễn Thời Trung,Thạch Bàn, Long Biên , Hà Nội ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
