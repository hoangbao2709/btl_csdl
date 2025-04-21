-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2025 at 04:09 PM
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
('Bao', '0368287072', 'hoangbao270904@gmail.com', '2025-04-17', '$2y$10$XxG4Id/VS98IOwR1zl3FYeiyy0L20g02svhCl73cgISseAzHNb1da', 'on'),
('123', '123', '123@gmail.com', '2025-04-11', '$2y$10$3SgvojNsrliv.yVbsy6LtOIaGpxZ3RlE.41Wy9qOsec1pSlK3aN0i', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `am_thanh`
--

CREATE TABLE `am_thanh` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` decimal(10,2) NOT NULL CHECK (`gia_goc` >= 0),
  `gia` decimal(10,2) NOT NULL CHECK (`gia` >= 0),
  `giam_gia` decimal(10,2) NOT NULL CHECK (`giam_gia` >= 0),
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` decimal(10,2) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `am_thanh`
--

INSERT INTO `am_thanh` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`) VALUES
(163, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'am_thanh', 'Active', 'Samsung'),
(244, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'am_thanh', 'Active', 'Samsung'),
(245, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'am_thanh', 'Active', 'Samsung'),
(246, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'am_thanh', 'Active', 'Samsung'),
(247, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'am_thanh', 'Active', 'Samsung'),
(248, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'am_thanh', 'Active', 'Samsung'),
(249, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'am_thanh', 'Active', 'Samsung'),
(250, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'am_thanh', 'Active', 'Samsung'),
(251, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'am_thanh', 'Active', 'Samsung');

-- --------------------------------------------------------

--
-- Table structure for table `dien_thoai_taplet`
--

CREATE TABLE `dien_thoai_taplet` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` decimal(10,2) NOT NULL CHECK (`gia_goc` >= 0),
  `gia` decimal(10,2) NOT NULL CHECK (`gia` >= 0),
  `giam_gia` decimal(10,2) NOT NULL CHECK (`giam_gia` >= 0),
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` decimal(10,2) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dien_thoai_taplet`
--

INSERT INTO `dien_thoai_taplet` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`) VALUES
(110, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(111, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(112, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(113, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(114, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(115, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(116, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(117, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(118, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(119, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(122, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(123, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(164, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(176, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(177, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(178, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(179, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(180, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(181, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(182, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(183, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(184, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(185, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(186, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(187, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(188, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(189, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(190, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung'),
(191, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'dien_thoai_taplet', 'Active', 'Samsung');

-- --------------------------------------------------------

--
-- Table structure for table `dong_ho_camera`
--

CREATE TABLE `dong_ho_camera` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` decimal(10,2) NOT NULL CHECK (`gia_goc` >= 0),
  `gia` decimal(10,2) NOT NULL CHECK (`gia` >= 0),
  `giam_gia` decimal(10,2) NOT NULL CHECK (`giam_gia` >= 0),
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` decimal(10,2) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `do_gia_dung`
--

CREATE TABLE `do_gia_dung` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` decimal(10,2) NOT NULL CHECK (`gia_goc` >= 0),
  `gia` decimal(10,2) NOT NULL CHECK (`gia` >= 0),
  `giam_gia` decimal(10,2) NOT NULL CHECK (`giam_gia` >= 0),
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` decimal(10,2) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `do_gia_dung`
--

INSERT INTO `do_gia_dung` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`) VALUES
(203, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'do_gia_dung', 'Active', 'Samsung'),
(204, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'do_gia_dung', 'Active', 'Samsung'),
(205, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'do_gia_dung', 'Active', 'Samsung'),
(206, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'do_gia_dung', 'Active', 'Samsung'),
(207, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'do_gia_dung', 'Active', 'Samsung'),
(208, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'do_gia_dung', 'Active', 'Samsung'),
(209, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'do_gia_dung', 'Active', 'Samsung'),
(210, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'do_gia_dung', 'Active', 'Samsung'),
(211, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'do_gia_dung', 'Active', 'Samsung'),
(212, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'do_gia_dung', 'Active', 'Samsung'),
(213, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'do_gia_dung', 'Active', 'Samsung'),
(214, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'do_gia_dung', 'Active', 'Samsung'),
(215, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'do_gia_dung', 'Active', 'Samsung');

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` decimal(10,2) NOT NULL CHECK (`gia_goc` >= 0),
  `gia` decimal(10,2) NOT NULL CHECK (`gia` >= 0),
  `giam_gia` decimal(10,2) NOT NULL CHECK (`giam_gia` >= 0),
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` decimal(10,2) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`, `phone`) VALUES
(223, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 0, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung', '123'),
(224, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 0, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung', '123'),
(225, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 0, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung', '123');

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE `laptop` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` decimal(10,2) NOT NULL CHECK (`gia_goc` >= 0),
  `gia` decimal(10,2) NOT NULL CHECK (`gia` >= 0),
  `giam_gia` decimal(10,2) NOT NULL CHECK (`giam_gia` >= 0),
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` decimal(10,2) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`) VALUES
(192, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'laptop', 'Active', 'Samsung'),
(193, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'laptop', 'Active', 'Samsung'),
(194, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'laptop', 'Active', 'Samsung'),
(195, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'laptop', 'Active', 'Samsung'),
(196, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'laptop', 'Active', 'Samsung'),
(197, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'laptop', 'Active', 'Samsung'),
(198, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'laptop', 'Active', 'Samsung'),
(199, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'laptop', 'Active', 'Samsung'),
(200, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'laptop', 'Active', 'Samsung'),
(201, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'laptop', 'Active', 'Samsung'),
(202, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'laptop', 'Active', 'Samsung');

-- --------------------------------------------------------

--
-- Table structure for table `pc_man_hinh_may_in`
--

CREATE TABLE `pc_man_hinh_may_in` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` decimal(10,2) NOT NULL CHECK (`gia_goc` >= 0),
  `gia` decimal(10,2) NOT NULL CHECK (`gia` >= 0),
  `giam_gia` decimal(10,2) NOT NULL CHECK (`giam_gia` >= 0),
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` decimal(10,2) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pc_man_hinh_may_in`
--

INSERT INTO `pc_man_hinh_may_in` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`) VALUES
(216, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'pc_man_hinh_may_in', 'Active', 'Samsung'),
(217, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'pc_man_hinh_may_in', 'Active', 'Samsung'),
(218, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'pc_man_hinh_may_in', 'Active', 'Samsung'),
(219, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'pc_man_hinh_may_in', 'Active', 'Samsung'),
(220, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'pc_man_hinh_may_in', 'Active', 'Samsung'),
(221, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'pc_man_hinh_may_in', 'Active', 'Samsung'),
(222, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'pc_man_hinh_may_in', 'Active', 'Samsung'),
(223, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'pc_man_hinh_may_in', 'Active', 'Samsung'),
(224, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'pc_man_hinh_may_in', 'Active', 'Samsung'),
(225, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'pc_man_hinh_may_in', 'Active', 'Samsung');

-- --------------------------------------------------------

--
-- Table structure for table `phu_kien`
--

CREATE TABLE `phu_kien` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` decimal(10,2) NOT NULL CHECK (`gia_goc` >= 0),
  `gia` decimal(10,2) NOT NULL CHECK (`gia` >= 0),
  `giam_gia` decimal(10,2) NOT NULL CHECK (`giam_gia` >= 0),
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` decimal(10,2) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phu_kien`
--

INSERT INTO `phu_kien` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`) VALUES
(226, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'phu_kien', 'Active', 'Samsung'),
(227, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'phu_kien', 'Active', 'Samsung'),
(228, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'phu_kien', 'Active', 'Samsung'),
(229, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'phu_kien', 'Active', 'Samsung'),
(230, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'phu_kien', 'Active', 'Samsung'),
(231, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'phu_kien', 'Active', 'Samsung'),
(232, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'phu_kien', 'Active', 'Samsung'),
(233, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'phu_kien', 'Active', 'Samsung'),
(234, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'phu_kien', 'Active', 'Samsung');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` decimal(10,2) NOT NULL CHECK (`gia_goc` >= 0),
  `gia` decimal(10,2) NOT NULL CHECK (`gia` >= 0),
  `giam_gia` decimal(10,2) NOT NULL CHECK (`giam_gia` >= 0),
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` decimal(10,2) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL,
  `so_luong` int(255) NOT NULL,
  `phone` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`, `so_luong`, `phone`) VALUES
(222, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 0, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung', 4, '123');

-- --------------------------------------------------------

--
-- Table structure for table `tivi`
--

CREATE TABLE `tivi` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` decimal(10,2) NOT NULL CHECK (`gia_goc` >= 0),
  `gia` decimal(10,2) NOT NULL CHECK (`gia` >= 0),
  `giam_gia` decimal(10,2) NOT NULL CHECK (`giam_gia` >= 0),
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` decimal(10,2) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tivi`
--

INSERT INTO `tivi` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`) VALUES
(235, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'tivi', 'Active', 'Samsung'),
(236, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'tivi', 'Active', 'Samsung'),
(237, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'tivi', 'Active', 'Samsung'),
(238, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'tivi', 'Active', 'Samsung'),
(239, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'tivi', 'Active', 'Samsung'),
(240, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'tivi', 'Active', 'Samsung'),
(241, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'tivi', 'Active', 'Samsung'),
(242, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'tivi', 'Active', 'Samsung'),
(243, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'tivi', 'Active', 'Samsung');

-- --------------------------------------------------------

--
-- Table structure for table `trang_chu`
--

CREATE TABLE `trang_chu` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` decimal(10,2) NOT NULL CHECK (`gia_goc` >= 0),
  `gia` decimal(10,2) NOT NULL CHECK (`gia` >= 0),
  `giam_gia` decimal(10,2) NOT NULL CHECK (`giam_gia` >= 0),
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` decimal(10,2) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trang_chu`
--

INSERT INTO `trang_chu` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`) VALUES
(176, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(177, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(178, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(179, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(180, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(181, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(182, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(183, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(184, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(185, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(186, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(187, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(188, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(189, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(190, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(191, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(192, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(193, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(194, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(195, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(196, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(197, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(198, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(199, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(200, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(201, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(202, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(203, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(204, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(205, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(206, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(207, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(208, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(209, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(210, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(211, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(212, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(213, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(214, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(215, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(216, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(217, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(218, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(219, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(220, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(221, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(222, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(223, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(224, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(225, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(226, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(227, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(228, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(229, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(230, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(231, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(232, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(233, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(234, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(235, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(236, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(237, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(238, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(239, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(240, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(241, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(242, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(243, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(244, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(245, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(246, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(247, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(248, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(249, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(250, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung'),
(251, 'Samsung Galaxy Z Flip6 12GB 256GB', 1000000.00, 900000.00, 10.00, 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 165.00, 'trang_chu', 'Active', 'Samsung');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`phone`),
  ADD UNIQUE KEY `email` (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_phone` (`phone`);

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
-- AUTO_INCREMENT for table `trang_chu`
--
ALTER TABLE `trang_chu`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `fk_phone` FOREIGN KEY (`phone`) REFERENCES `account` (`phone`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
