-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2025 at 10:19 AM
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
-- Database: `cellphones`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `name` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `birthdate` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `isStudent` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`name`, `phone`, `email`, `birthdate`, `password`, `isStudent`) VALUES
('123', '123', '123@gmail.com', '2025-04-11', '$2y$10$3SgvojNsrliv.yVbsy6LtOIaGpxZ3RlE.41Wy9qOsec1pSlK3aN0i', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `am_thanh`
--

CREATE TABLE `am_thanh` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `am_thanh`
--

INSERT INTO `am_thanh` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`) VALUES
(1, '123', '32', '-7', '123', 10, '23', '1231', 'am_thanh', 'Active', '123'),
(2, '123', '32', '-7', '123', 10, '23', '1231', 'am_thanh', 'Active', '123'),
(3, '123', '32', '-7', '123', 10, '23', '1231', 'am_thanh', 'Active', '123'),
(4, '123', '32', '-7', '123', 10, '23', '1231', 'am_thanh', 'Active', '123'),
(8, '123', '231', '177', '23', 23, '123', '1231', 'am_thanh', 'Active', '1231'),
(9, '123', '231', '177', '23', 23, '123', '1231', 'am_thanh', 'Active', '1231'),
(10, '123', '231', '177', '23', 23, '123', '1231', 'am_thanh', 'Active', '1231'),
(11, '123', '123', '-28', '123', 23, '123', '123', 'am_thanh', 'Active', '1231'),
(12, '123', '123', '-28', '123', 23, '123', '123', 'am_thanh', 'Active', '1231'),
(13, '123', '123', '-28', '123', 23, '123', '123', 'am_thanh', 'Active', '1231');

-- --------------------------------------------------------

--
-- Table structure for table `dien_thoai_taplet`
--

CREATE TABLE `dien_thoai_taplet` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dong_ho_camera`
--

CREATE TABLE `dong_ho_camera` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `do_gia_dung`
--

CREATE TABLE `do_gia_dung` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE `laptop` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pc_man_hinh_may_in`
--

CREATE TABLE `pc_man_hinh_may_in` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phu_kien`
--

CREATE TABLE `phu_kien` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL,
  `so_luong` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tivi`
--

CREATE TABLE `tivi` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trang_chu`
--

CREATE TABLE `trang_chu` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trang_chu`
--

INSERT INTO `trang_chu` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`) VALUES
(1, '123', '32', '-7', '123', 10, '23', '1231', 'trang_chu', 'Active', '123'),
(2, '123', '32', '-7', '123', 10, '23', '1231', 'trang_chu', 'Active', '123'),
(3, '123', '32', '-7', '123', 10, '23', '1231', 'trang_chu', 'Active', '123'),
(4, '123', '32', '-7', '123', 10, '23', '1231', 'trang_chu', 'Active', '123'),
(26, '123', '231', '177', '23', 23, '123', '1231', 'trang_chu', 'Active', '1231'),
(27, '123', '231', '177', '23', 23, '123', '1231', 'trang_chu', 'Active', '1231'),
(28, '123', '231', '177', '23', 23, '123', '1231', 'trang_chu', 'Active', '1231'),
(29, '123', '123', '-28', '123', 23, '123', '123', 'trang_chu', 'Active', '1231'),
(30, '123', '123', '-28', '123', 23, '123', '123', 'trang_chu', 'Active', '1231'),
(31, '123', '123', '-28', '123', 23, '123', '123', 'trang_chu', 'Active', '1231');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `am_thanh`
--
ALTER TABLE `am_thanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dien_thoai_taplet`
--
ALTER TABLE `dien_thoai_taplet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dong_ho_camera`
--
ALTER TABLE `dong_ho_camera`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `do_gia_dung`
--
ALTER TABLE `do_gia_dung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laptop`
--
ALTER TABLE `laptop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pc_man_hinh_may_in`
--
ALTER TABLE `pc_man_hinh_may_in`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phu_kien`
--
ALTER TABLE `phu_kien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tivi`
--
ALTER TABLE `tivi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trang_chu`
--
ALTER TABLE `trang_chu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `am_thanh`
--
ALTER TABLE `am_thanh`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `dien_thoai_taplet`
--
ALTER TABLE `dien_thoai_taplet`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT for table `dong_ho_camera`
--
ALTER TABLE `dong_ho_camera`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `do_gia_dung`
--
ALTER TABLE `do_gia_dung`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `laptop`
--
ALTER TABLE `laptop`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pc_man_hinh_may_in`
--
ALTER TABLE `pc_man_hinh_may_in`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `phu_kien`
--
ALTER TABLE `phu_kien`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tivi`
--
ALTER TABLE `tivi`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `trang_chu`
--
ALTER TABLE `trang_chu`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
