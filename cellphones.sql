-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2025 at 03:55 PM
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
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` decimal(10,2) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `am_thanh`
--

INSERT INTO `am_thanh` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`, `last_updated`) VALUES
(268, 'Tai nghe chụp tai Gaming Sony Inzone H3', '5450000', '4360000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 245.00, 'am_thanh', 'Active', 'Sony ', '2025-05-03 09:25:43'),
(270, 'Tai nghe Bluetooth chụp tai Edifier W820NB', '1440000', '1094400', '24', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 200.00, 'am_thanh', 'Active', 'Edifier ', '2025-05-03 09:15:26'),
(275, 'Tai nghe Bluetooth chụp tai JBL Live 670NC', '2150000', '1935000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 255.00, 'am_thanh', 'Active', 'JBL', '2025-05-03 09:17:34'),
(276, 'Tai nghe Bluetooth Apple AirPods 4 | Chính hãng Apple Việt Nam', '3660000', '2745000', '25', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 21.00, 'am_thanh', 'Active', 'Apple ', '2025-05-03 09:19:55'),
(277, 'Tai nghe Bluetooth True Wireless JBL Tour Pro 2', '599000', '539100', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL ', '2025-05-03 09:22:06'),
(278, 'Tai nghe Bluetooth True Wireless SoundPEATS Capsule 3 Pro', '2990000', '2481700', '17', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'SoundPEATS', '2025-05-03 09:22:51'),
(471, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL', '2025-04-30 08:30:23'),
(472, 'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds2 Pro', '2360000', '2076800', '12', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 46.00, 'am_thanh', 'Active', 'Samsung ', '2025-05-03 08:40:05'),
(473, 'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 3', '3900000', '3315000', '15', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 53.00, 'am_thanh', 'Active', 'Samsung ', '2025-05-03 08:42:56'),
(474, 'Tai nghe Bluetooth True Wireless Anker Soundcore R50i A3949', '690000', '655500', '5', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 32.00, 'am_thanh', 'Active', 'Anker', '2025-05-03 08:45:17'),
(475, 'Tai nghe Bluetooth True Wireless QCY T13 ANC2 (HT09)', '2130000', '1853100', '13', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 46.00, 'am_thanh', 'Active', 'QCY', '2025-05-03 08:47:29'),
(476, 'Loa Bluetooth Harman Kardon Onyx Studio 9', '9690000', '8042700', '17', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 2500.00, 'am_thanh', 'Active', 'Onyx ', '2025-05-03 08:49:38'),
(477, 'Loa Bluetooth JBL Charge 5', '5900000', '5428000', '8', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 1200.00, 'am_thanh', 'Active', 'JBL', '2025-05-03 08:51:42'),
(478, 'Loa Bluetooth Harman Kardon Go + Play 3 Đen', '3650000', '3102500', '15', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 3300.00, 'am_thanh', 'Active', 'Kardon ', '2025-05-03 08:53:44'),
(479, 'Loa Bluetooth Marshall Emberton III', '8690000', '6343700', '27', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 4500.00, 'am_thanh', 'Active', 'Marshall ', '2025-05-03 08:55:44'),
(480, 'Loa Bluetooth Karaoke Mini Havit SK819BT', '3470000', '2845400', '18', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 2600.00, 'am_thanh', 'Active', 'Havit ', '2025-05-03 08:57:38'),
(481, 'Microphone không dây DJI Mini (TX+TX+RX) 2 Mic', '2130000', '1938300', '9', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 23.00, 'am_thanh', 'Active', 'DJI ', '2025-05-03 08:59:28'),
(482, 'Micro thu âm không dây Boya Link', '390000', '378300', '3', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 20.00, 'am_thanh', 'Active', 'Boya ', '2025-05-03 09:01:17'),
(483, 'Microphone Saramonic Blink 500 B2+', '1590000', '1383300', '13', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 18.00, 'am_thanh', 'Active', 'Saramonic ', '2025-05-03 09:03:18'),
(484, 'Microphone thu âm Podcast/phòng thu/livestream Boya K3', '890000', '845500', '5', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 320.00, 'am_thanh', 'Active', 'Boya ', '2025-05-03 09:05:12'),
(485, 'Microphone thu âm Podcast/phòng thu/Livestream Shure MV6', '4100000', '3772000', '8', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 300.00, 'am_thanh', 'Active', 'Shure ', '2025-05-03 09:08:01'),
(486, 'Tai nghe Bluetooth chụp tai Sony WH-1000XM4', '2150000', '1913500', '11', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 254.00, 'am_thanh', 'Active', 'Sony ', '2025-05-03 09:10:24'),
(487, 'Tai nghe chụp tai Gaming Hyperx Cloud Stinger 2 Core', '1800000', '1710000', '5', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 273.00, 'am_thanh', 'Active', 'Hyperx ', '2025-05-03 09:12:28');

--
-- Triggers `am_thanh`
--
DELIMITER $$
CREATE TRIGGER `after_update_am_thanh` AFTER UPDATE ON `am_thanh` FOR EACH ROW BEGIN
  INSERT INTO `am_thanh_history` (
    am_thanh_id, name, gia_goc, gia, giam_gia,
    inventory, description, trong_luong, Page, Status, company, last_updated
  )
  VALUES (
    OLD.id, OLD.name, OLD.gia_goc, OLD.gia, OLD.giam_gia,
    OLD.inventory, OLD.description, OLD.trong_luong, OLD.Page, OLD.Status, OLD.company, NOW()
  );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_or_update_price_am_thanh` BEFORE INSERT ON `am_thanh` FOR EACH ROW BEGIN
  SET NEW.gia = NEW.gia_goc - (NEW.gia_goc * (NEW.giam_gia / 100));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `am_thanh_history`
--

CREATE TABLE `am_thanh_history` (
  `history_id` int(11) NOT NULL,
  `am_thanh_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` decimal(10,2) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dien_thoai_taplet`
--

CREATE TABLE `dien_thoai_taplet` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dien_thoai_taplet`
--

INSERT INTO `dien_thoai_taplet` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`, `last_updated`) VALUES
(347, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:39'),
(348, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:39'),
(349, 'Samsung Galaxy S25 Ultra 12GB 256GB', '33990000', '27192000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '218', 'dien_thoai_taplet', 'Active', 'Samsung', '2025-05-04 09:53:11'),
(350, 'OPPO FIND N5', '44990000', '44990000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '229', 'dien_thoai_taplet', 'Active', 'OPPO', '2025-05-04 09:58:47'),
(351, 'Xiaomi 14T 12GB 512GB', '13990000', '11891500', '15', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '195', 'dien_thoai_taplet', 'Active', 'Xiaomi', '2025-05-04 10:02:31'),
(352, 'Nothing Phone 2A 5G 8GB 128GB', '8990000', '7012200', '22', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '190', 'dien_thoai_taplet', 'Active', 'Nothing', '2025-05-04 10:07:44'),
(353, 'Máy tính bảng Teclast P30 4GB 64GB', '2490000', '1992000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '544', 'dien_thoai_taplet', 'Active', 'Teclast', '2025-05-04 10:11:06'),
(354, 'Samsung Galaxy Tab S9 Wifi 12GB 256GB', '21990000', '15393000', '30', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '498', 'dien_thoai_taplet', 'Active', 'Samsung', '2025-05-04 10:19:12'),
(355, 'Máy Tính Bảng Huawei Matepad 11.5 8GB 256GB Xám', '14490000', '11592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '510', 'dien_thoai_taplet', 'Active', 'Huawei', '2025-05-04 10:25:52'),
(356, 'iPad Pro M4 11 inch Wifi 256GB', '28990000', '27540500', '5', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '444', 'dien_thoai_taplet', 'Active', 'Apple', '2025-05-04 10:32:18'),
(357, 'Máy Tính Bảng Lenovo Tab M11 4G 8GB 128GB', '6990000', '5592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '465', 'dien_thoai_taplet', 'Active', 'Lenovo', '2025-05-04 10:36:51');

--
-- Triggers `dien_thoai_taplet`
--
DELIMITER $$
CREATE TRIGGER `after_update_dien_thoai_taplet` AFTER UPDATE ON `dien_thoai_taplet` FOR EACH ROW BEGIN
  INSERT INTO `dien_thoai_taplet_history` (
    dien_thoai_taplet_id, name, gia_goc, gia, giam_gia,
    inventory, description, trong_luong, Page, Status, company, last_updated
  )
  VALUES (
    OLD.id, OLD.name, OLD.gia_goc, OLD.gia, OLD.giam_gia,
    OLD.inventory, OLD.description, OLD.trong_luong, OLD.Page, OLD.Status, OLD.company, NOW()
  );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_or_update_price_dien_thoai_taplet` BEFORE INSERT ON `dien_thoai_taplet` FOR EACH ROW BEGIN
  SET NEW.gia = NEW.gia_goc - (NEW.gia_goc * (NEW.giam_gia / 100));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `dien_thoai_taplet_history`
--

CREATE TABLE `dien_thoai_taplet_history` (
  `history_id` int(11) NOT NULL,
  `dien_thoai_taplet_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dong_ho_camera`
--

CREATE TABLE `dong_ho_camera` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dong_ho_camera`
--

INSERT INTO `dong_ho_camera` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`, `last_updated`) VALUES
(306, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'dong_ho_camera', 'Active', 'Huawei', '2025-04-30 15:05:33'),
(307, 'Đồng hồ thông minh Xiaom', '4290000', '3992703', '6.93', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '44.5', 'dong_ho_camera', 'Active', 'Xiaomi', '2025-05-04 07:43:09'),
(308, 'Đồng hồ thông minh Amazfit Active 2', '2790000', '2790000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '29.5', 'dong_ho_camera', 'Active', 'Amazit', '2025-05-04 09:26:02'),
(309, 'Đồng hồ thông minh KAVVO Macaron 36mm', '2990000', '1794000', '40', 0, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '21', '', 'Active', 'KAVVO', '2025-05-04 09:36:42'),
(310, 'Apple Watch Series 10 42mm (GPS) Viền Nhôm Dây Cao Su', '10990000', '8242500', '25', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '30', 'dong_ho_camera', 'Active', 'Apple', '2025-05-04 09:05:06'),
(311, 'Đồng hồ thông minh Garmin Forerunner 55', '5290000', '3808800', '28', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '37', 'dong_ho_camera', 'Active', 'Garmin', '2025-05-04 09:11:09'),
(312, 'Đồng Hồ Samsung Galaxy Watch 7', '7990000', '4953800', '38', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '28.9', 'dong_ho_camera', 'Active', 'Samsung', '2025-05-04 09:41:49'),
(313, 'Đồng hồ thông minh Riversong Motive 10GT', '2590000', '2072000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '30', 'dong_ho_camera', 'Active', 'Riversong', '2025-05-04 09:21:26'),
(314, 'Đồng hồ định vị trẻ em Viettel MyKID 4G Lite', '1390000', '1251000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '54.9', 'dong_ho_camera', 'Active', 'Viettel', '2025-05-04 09:29:23'),
(315, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'dong_ho_camera', 'Active', 'Huawei', '2025-04-30 15:05:50'),
(318, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'dong_ho_camera', 'Active', 'Huawei', '2025-04-30 15:05:51'),
(319, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'dong_ho_camera', 'Active', 'Huawei', '2025-04-30 15:05:52'),
(320, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'dong_ho_camera', 'Active', 'Huawei', '2025-04-30 15:05:52'),
(321, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'dong_ho_camera', 'Active', 'Huawei', '2025-04-30 15:05:53'),
(323, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'dong_ho_camera', 'Active', 'Huawei', '2025-04-30 15:06:03'),
(324, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'dong_ho_camera', 'Active', 'Huawei', '2025-04-30 15:06:03'),
(325, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'dong_ho_camera', 'Active', 'Huawei', '2025-04-30 15:06:04');

--
-- Triggers `dong_ho_camera`
--
DELIMITER $$
CREATE TRIGGER `after_update_dong_ho_camera` AFTER UPDATE ON `dong_ho_camera` FOR EACH ROW BEGIN
  INSERT INTO `dong_ho_camera_history` (
    dong_ho_camera_id, name, gia_goc, gia, giam_gia,
    inventory, description, trong_luong, Page, Status, company, last_updated
  )
  VALUES (
    OLD.id, OLD.name, OLD.gia_goc, OLD.gia, OLD.giam_gia,
    OLD.inventory, OLD.description, OLD.trong_luong, OLD.Page, OLD.Status, OLD.company, NOW()
  );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_or_update_price_dong_ho_camera` BEFORE INSERT ON `dong_ho_camera` FOR EACH ROW BEGIN
  SET NEW.gia = NEW.gia_goc - (NEW.gia_goc * (NEW.giam_gia / 100));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `dong_ho_camera_history`
--

CREATE TABLE `dong_ho_camera_history` (
  `history_id` int(11) NOT NULL,
  `dong_ho_camera_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `don_dat_hang`
--

CREATE TABLE `don_dat_hang` (
  `id` int(11) NOT NULL,
  `ho_va_ten` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `dia_chi` varchar(500) NOT NULL,
  `thanh_pho` varchar(500) NOT NULL,
  `huyen` varchar(500) NOT NULL,
  `xa` varchar(500) NOT NULL,
  `total` varchar(500) NOT NULL,
  `book` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `don_dat_hang`
--

INSERT INTO `don_dat_hang` (`id`, `ho_va_ten`, `email`, `phone`, `dia_chi`, `thanh_pho`, `huyen`, `xa`, `total`, `book`, `status`) VALUES
(2, '123', '123', '123', '123', 'Tỉnh Vĩnh Phúc', 'Thành phố Phúc Yên', 'Phường Phúc Thắng', '44990000', '{id: 123(số lượng: 1)}', 'Chưa giao');

-- --------------------------------------------------------

--
-- Table structure for table `do_gia_dung`
--

CREATE TABLE `do_gia_dung` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `do_gia_dung`
--

INSERT INTO `do_gia_dung` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`, `last_updated`) VALUES
(328, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 15:08:53'),
(329, 'Robot hút bụi lau nhà tự động làm sạch Ecovacs Deebot T30 Pro Omni', '29900000', '10166000', '66', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-05-04 09:45:30'),
(331, 'Nồi chiên không dầu Fujihome A8DG1 8L', '950000', '855000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '4950', 'do_gia_dung', 'Active', 'Fujihome', '2025-05-04 09:49:07'),
(332, 'Nồi chiên không dầu Gaabor AF65T-BK01A 6.5L', '1390000', '1251000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '4320', 'do_gia_dung', 'Active', 'Gaabor', '2025-05-04 09:51:19'),
(333, 'Nồi chiên không dầu SHARP KF-AF70EV-BK 7L', '2490000', '2241000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '4400', 'do_gia_dung', 'Active', 'Sharp', '2025-05-04 09:54:03'),
(334, 'Cân thông minh Xiaomi Smart Scale 2', '300000', '270000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '1200', 'do_gia_dung', 'Active', 'Xiaomi ', '2025-05-04 09:57:29'),
(335, 'Cân điện tử thông minh 365 Selection WS2 (365-SEL-606)', '590000', '200600', '66', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', '365 Selection', '2025-05-04 09:59:34'),
(336, 'Cân Thông Minh Russell Taylor Composition Scale BWS-10', '390000', '195000', '50', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '1100', 'do_gia_dung', 'Active', 'Russell Taylor', '2025-05-04 10:02:14'),
(337, 'Máy hút bụi cầm tay Roidmi Z1 Air', '5990000', '2096500', '65', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '2700', 'do_gia_dung', 'Active', 'Roidmi', '2025-05-04 10:04:51'),
(338, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 15:08:59'),
(339, 'Máy hút bụi Gaabor GVCW-M16Y02 có dây', '998000', '499000', '50', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '1500', 'do_gia_dung', 'Active', 'Gaabor ', '2025-05-04 10:08:29'),
(340, 'Robot hút bụi lau nhà Xiaomi Vacuum E10C - Chỉ có tại CellphoneS', '3999000', '3599100', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '5420', 'do_gia_dung', 'Active', 'Xiaomi ', '2025-05-04 09:29:05'),
(341, 'Máy lọc không khí LG Puricare Aero Hit S35GGW10.ABAE', '7399000', '4957330', '33', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '3500', 'do_gia_dung', 'Active', 'LG', '2025-05-04 10:11:53'),
(342, 'Máy lọc không khí Smartmi Air Purifier E1', '2490000', '1369500', '45', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '2000', 'do_gia_dung', 'Active', 'Smartmi ', '2025-05-04 10:14:06'),
(343, 'Máy lọc không khí chống dị ứng thú cưng Levoit Vital 100S', '2590', '2331', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '4500', 'do_gia_dung', 'Active', 'Levoit ', '2025-05-04 10:15:58'),
(344, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 15:09:08'),
(345, 'Máy Massage cổ vai gáy Philips PPM3306', '1890000', '1323000', '30', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '430', 'do_gia_dung', 'Active', 'Philips ', '2025-05-04 10:20:10'),
(346, 'Máy massage lưng Breo Back 2', '2300000', '1495000', '35', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '1300', 'do_gia_dung', 'Active', 'Breo ', '2025-05-04 10:22:09');

--
-- Triggers `do_gia_dung`
--
DELIMITER $$
CREATE TRIGGER `after_update_do_gia_dung` AFTER UPDATE ON `do_gia_dung` FOR EACH ROW BEGIN
  INSERT INTO `do_gia_dung_history` (
    do_gia_dung_id, name, gia_goc, gia, giam_gia,
    inventory, description, trong_luong, Page, Status, company, last_updated
  )
  VALUES (
    OLD.id, OLD.name, OLD.gia_goc, OLD.gia, OLD.giam_gia,
    OLD.inventory, OLD.description, OLD.trong_luong, OLD.Page, OLD.Status, OLD.company, NOW()
  );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_or_update_price_do_gia_dung` BEFORE INSERT ON `do_gia_dung` FOR EACH ROW BEGIN
  SET NEW.gia = NEW.gia_goc - (NEW.gia_goc * (NEW.giam_gia / 100));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `do_gia_dung_history`
--

CREATE TABLE `do_gia_dung_history` (
  `history_id` int(11) NOT NULL,
  `do_gia_dung_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL CHECK (`gia_goc` >= 0),
  `gia` varchar(500) NOT NULL CHECK (`gia` >= 0),
  `giam_gia` varchar(500) NOT NULL CHECK (`giam_gia` >= 0),
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`, `phone`) VALUES
(350, 'OPPO FIND N5', '44990000', '44990000', '0', 0, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '229', 'trang_chu', 'Active', 'OPPO', '123');

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE `laptop` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`, `last_updated`) VALUES
(279, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'laptop', 'Active', 'Apple', '2025-04-30 14:59:20'),
(280, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'laptop', 'Active', 'Apple', '2025-04-30 15:00:02'),
(281, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'laptop', 'Active', 'Apple', '2025-04-30 15:00:05'),
(282, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'laptop', 'Active', 'Apple', '2025-04-30 15:00:07'),
(284, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'laptop', 'Active', 'Apple', '2025-04-30 15:00:10'),
(287, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'laptop', 'Active', 'Apple', '2025-04-30 15:00:15'),
(288, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'laptop', 'Active', 'Apple', '2025-04-30 15:00:16'),
(289, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'laptop', 'Active', 'Apple', '2025-04-30 15:00:17'),
(290, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'laptop', 'Active', 'Apple', '2025-04-30 15:00:18'),
(291, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'laptop', 'Active', 'Apple', '2025-04-30 15:00:20'),
(292, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'laptop', 'Active', 'Apple', '2025-04-30 15:00:48'),
(293, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'laptop', 'Active', 'Apple', '2025-04-30 15:00:49'),
(297, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'laptop', 'Active', 'Apple', '2025-04-30 15:00:55'),
(299, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'laptop', 'Active', 'Apple', '2025-04-30 15:00:59'),
(300, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'laptop', 'Active', 'Apple', '2025-04-30 15:01:00'),
(301, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'laptop', 'Active', 'Apple', '2025-04-30 15:01:01'),
(302, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'laptop', 'Active', 'Apple', '2025-04-30 15:01:02'),
(303, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'laptop', 'Active', 'Apple', '2025-04-30 15:01:03'),
(304, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'laptop', 'Active', 'Apple', '2025-04-30 15:01:05');

--
-- Triggers `laptop`
--
DELIMITER $$
CREATE TRIGGER `after_update_laptop` AFTER UPDATE ON `laptop` FOR EACH ROW BEGIN
  INSERT INTO `laptop_history` (
    laptop_id, name, gia_goc, gia, giam_gia,
    inventory, description, trong_luong, Page, Status, company, last_updated
  )
  VALUES (
    OLD.id, OLD.name, OLD.gia_goc, OLD.gia, OLD.giam_gia,
    OLD.inventory, OLD.description, OLD.trong_luong, OLD.Page, OLD.Status, OLD.company, NOW()
  );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_or_update_price_laptop` BEFORE INSERT ON `laptop` FOR EACH ROW BEGIN
  SET NEW.gia = NEW.gia_goc - (NEW.gia_goc * (NEW.giam_gia / 100));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `laptop_history`
--

CREATE TABLE `laptop_history` (
  `history_id` int(11) NOT NULL,
  `laptop_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pc_man_hinh_may_in`
--

CREATE TABLE `pc_man_hinh_may_in` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pc_man_hinh_may_in`
--

INSERT INTO `pc_man_hinh_may_in` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`, `last_updated`) VALUES
(420, 'Máy in HP LaserJet M211d (9YF82A)', '3890000', '2917500', '25', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '5600', 'pc_man_hinh_may_in', 'Active', 'HP', '2025-05-04 10:44:42'),
(421, 'Máy in Laser Brother HL-L2321D', '3690000', '3136500', '15', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '6800', 'pc_man_hinh_may_in', 'Active', 'Laser Brother', '2025-05-04 10:48:56'),
(422, 'Máy in ảnh chuyên nghiệp HPRT CP4100', '2990000', '2541500', '15', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '1000', 'pc_man_hinh_may_in', 'Active', 'HPRT', '2025-05-04 10:54:45'),
(423, 'Màn hình Gaming ASUS ROG Swift OLED PG32UCDP 32 inch', '41990000', '39890500', '5', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '4500', 'pc_man_hinh_may_in', 'Active', 'ASUS', '2025-05-04 11:00:39'),
(424, 'Màn hình Gaming Samsung Odyssey G9 G91F LS49FG912EEXXV 49 inch', '24990000', '22491000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '10600', 'pc_man_hinh_may_in', 'Active', 'Samsung', '2025-05-04 11:04:41'),
(425, 'Màn hình Gaming LG UltraGear OLED 45GS95QE-B 45 inch', '34990000', '27992000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '9000', 'pc_man_hinh_may_in', 'Active', 'LG', '2025-05-04 11:09:11'),
(426, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:38'),
(427, 'Máy tính AIO ASUS A3202WBAK-WPB018W', '15990000', '14071200', '12', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '4800', 'pc_man_hinh_may_in', 'Active', 'ASUS', '2025-05-04 11:26:39'),
(428, 'Máy tính PC Mini Asus ROG NUC 14TH Scorpion Canyon U7', '49990000', '49490100', '1', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '2000', 'pc_man_hinh_may_in', 'Active', 'ASUS', '2025-05-04 13:26:36'),
(429, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:39'),
(430, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:39'),
(431, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:39'),
(432, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:39'),
(433, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:40'),
(434, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:40'),
(435, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:40'),
(436, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:40'),
(437, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:48'),
(438, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:49'),
(439, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:49'),
(440, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:49'),
(441, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:50'),
(442, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:50'),
(443, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:50'),
(444, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:50'),
(445, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:51');

--
-- Triggers `pc_man_hinh_may_in`
--
DELIMITER $$
CREATE TRIGGER `after_update_pc_man_hinh_may_in` AFTER UPDATE ON `pc_man_hinh_may_in` FOR EACH ROW BEGIN
  INSERT INTO `pc_man_hinh_may_in_history` (
    pc_man_hinh_may_in_id, name, gia_goc, gia, giam_gia,
    inventory, description, trong_luong, Page, Status, company, last_updated
  )
  VALUES (
    OLD.id, OLD.name, OLD.gia_goc, OLD.gia, OLD.giam_gia,
    OLD.inventory, OLD.description, OLD.trong_luong, OLD.Page, OLD.Status, OLD.company, NOW()
  );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_or_update_price_pc_man_hinh_may_in` BEFORE INSERT ON `pc_man_hinh_may_in` FOR EACH ROW BEGIN
  SET NEW.gia = NEW.gia_goc - (NEW.gia_goc * (NEW.giam_gia / 100));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pc_man_hinh_may_in_history`
--

CREATE TABLE `pc_man_hinh_may_in_history` (
  `history_id` int(11) NOT NULL,
  `pc_man_hinh_may_in_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phu_kien`
--

CREATE TABLE `phu_kien` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phu_kien`
--

INSERT INTO `phu_kien` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`, `last_updated`) VALUES
(379, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:17:44'),
(380, 'Chuột Gaming không dây Logitech G304 Lightspeed', '949000', '721240', '24', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '99', 'phu_kien', 'Active', 'Logitech', '2025-05-04 13:01:16'),
(381, 'Chuột Apple Magic Mouse 3 2024 (MXK53)', '2290000', '1809100', '21', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '99', 'phu_kien', 'Active', 'Apple', '2025-05-04 13:04:15'),
(382, 'Dán cường lực Apple iPhone 15 Pro Max Zeelot Solidleek Full cao cấp', '390000', '351000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '30', 'phu_kien', 'Active', 'Zeelot ', '2025-05-04 13:06:50'),
(383, 'Dán chống va đập Xiaomi Redmi Note 14 Pro Plus 5g Mipow Premium Full Cao Cấp Đen', '430000', '387000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '45', 'phu_kien', 'Active', 'Mipow ', '2025-05-04 13:08:44'),
(384, 'Bộ dán Full Jcpal Macbook 5in1 For Macbook Pro 16 M2/M3/M4', '820000', '738000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Jcpal', '2025-05-04 13:10:46'),
(385, 'Bàn phím Apple Magic Keyboard 2 Kèm Phím Số Trắng', '4990000', '2994000', '40', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '800', 'phu_kien', 'Active', 'Apple', '2025-05-04 13:12:51'),
(386, 'Bàn phím cơ không dây AULA F75 Ice Green', '1790000', '1199300', '33', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '1450', 'phu_kien', 'Active', 'AULA ', '2025-05-04 13:14:32'),
(387, 'Bàn phím cơ E-DRA không dây EK368L Alpha', '549000', '499590', '9', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '1450', 'phu_kien', 'Active', 'E-DRA', '2025-05-04 13:15:54'),
(388, 'Bàn phím Bluetooth Logitech Pebble Key 2 K380S', '1129000', '699980', '38', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '1450', 'phu_kien', 'Active', 'Logitech', '2025-05-04 13:17:31'),
(389, 'Balo Laptop Divoom Pixoo Led BackPack 2022', '3000000', '2400000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '1000', 'phu_kien', 'Active', 'Divoom ', '2025-05-04 13:19:30'),
(390, 'Balo laptop Kmore The Wesley Backpack 15.6 inch', '690000', '621000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '1000', 'phu_kien', 'Active', 'Wesley', '2025-05-04 13:22:37'),
(391, 'Túi chống sốc JINYA VOGUE SLEEVE 13 inch', '650000', '520000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '1000', 'phu_kien', 'Active', 'JINYA ', '2025-05-04 13:24:16'),
(392, 'Pin sạc dự phòng Anker 321 Maggo 1C 7.5W 5000mAh A1616', '780000', '390000', '50', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '200', 'phu_kien', 'Active', 'Anker', '2025-05-04 12:46:13'),
(393, 'Pin sạc dự phòng Pisen 10W 10000mAh D094', '469000', '234500', '50', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Pisen', '2025-05-04 12:49:35'),
(394, 'Pin sạc dự phòng Anker Prime 20000mAh 200W A1336', '3600000', '1980000', '45', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '1500', 'phu_kien', 'Active', 'Anker ', '2025-05-04 12:51:42'),
(395, 'Ốp lưng iPhone 16 Pro Max Apple With Magsafe Clear', '1429000', '1257520', '12', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'phu_kien', 'Active', 'Apple', '2025-05-04 12:53:14'),
(396, 'Hộp đựng tai nghe Apple Airpods 4 Raigor Cara', '250000', '200000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Raigor Cara', '2025-05-04 12:55:38'),
(397, 'Ví da Apple cho iPhone chính hãng hỗ trợ sạc MagSafe', '1890000', '1134000', '40', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '45', 'phu_kien', 'Active', 'Apple', '2025-05-04 12:58:02'),
(398, 'Router Wifi TP-Link Archer C54 băng tần kép AC1200', '699000', '349500', '50', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '650', 'phu_kien', 'Active', 'TP-Link', '2025-05-04 13:27:10'),
(399, 'Thiết bị phát Wifi di động 4G LTE TP-Link M7000', '1190000', '797300', '33', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '350', 'phu_kien', 'Active', 'TP-Link', '2025-05-04 13:28:36'),
(400, 'Hub chuyển đổi Ugreen USB-C 5 IN 1 CM478 15495', '416000', '332800', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '120', 'phu_kien', 'Active', 'Ugreen ', '2025-05-04 13:30:35'),
(401, 'Hub chuyển đổi Baseus Spacemate Series 11 in 1 dùng cho Mac', '6190000', '4333000', '30', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '485', 'phu_kien', 'Active', 'Baseus', '2025-05-04 13:34:59');

--
-- Triggers `phu_kien`
--
DELIMITER $$
CREATE TRIGGER `after_update_phu_kien` AFTER UPDATE ON `phu_kien` FOR EACH ROW BEGIN
  INSERT INTO `phu_kien_history` (
    phu_kien_id, name, gia_goc, gia, giam_gia,
    inventory, description, trong_luong, Page, Status, company, last_updated
  )
  VALUES (
    OLD.id, OLD.name, OLD.gia_goc, OLD.gia, OLD.giam_gia,
    OLD.inventory, OLD.description, OLD.trong_luong, OLD.Page, OLD.Status, OLD.company, NOW()
  );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_or_update_price_phu_kien` BEFORE INSERT ON `phu_kien` FOR EACH ROW BEGIN
  SET NEW.gia = NEW.gia_goc - (NEW.gia_goc * (NEW.giam_gia / 100));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `phu_kien_history`
--

CREATE TABLE `phu_kien_history` (
  `history_id` int(11) NOT NULL,
  `phu_kien_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL CHECK (`gia_goc` >= 0),
  `gia` varchar(500) NOT NULL CHECK (`gia` >= 0),
  `giam_gia` varchar(500) NOT NULL CHECK (`giam_gia` >= 0),
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL CHECK (`trong_luong` >= 0),
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
(350, 'OPPO FIND N5', '44990000', '44990000', '0', 0, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '229', 'trang_chu', 'Active', 'OPPO', 1, '123');

-- --------------------------------------------------------

--
-- Table structure for table `tivi`
--

CREATE TABLE `tivi` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trang_chu`
--

CREATE TABLE `trang_chu` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `inventory` int(11) NOT NULL CHECK (`inventory` >= 0),
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL CHECK (`trong_luong` >= 0),
  `Page` varchar(500) NOT NULL,
  `Status` enum('Active','Inactive') NOT NULL,
  `company` varchar(500) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trang_chu`
--

INSERT INTO `trang_chu` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`, `last_updated`) VALUES
(268, 'Tai nghe Bluetooth chụp tai QCY H2', '690000.00', '621000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50.00', 'am_thanh', 'Active', 'QCY', '2025-05-03 08:24:40'),
(270, 'Tai nghe chống ồn Sennheiser Momentum True Wireless 4', '1390000.00', '1390000', '0.00', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50.00', 'am_thanh', 'Active', 'JBL ', '2025-04-30 08:00:38'),
(275, 'Tai nghe Bluetooth chụp tai Anker Soundcore Space One', '2150000', '2150000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50.00', 'am_thanh', 'Active', 'Anker', '2025-04-30 07:41:46'),
(276, 'Tai nghe Bluetooth chụp tai Edifier W820NB', '1440000', '1440000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50.00', 'am_thanh', 'Active', 'Edifier', '2025-04-30 07:41:46'),
(277, 'Tai nghe Bluetooth True Wireless JBL Tour Pro 2', '599000', '599000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50.00', 'am_thanh', 'Active', 'JBL ', '2025-04-30 07:41:46'),
(278, 'Tai nghe Bluetooth True Wireless SoundPEATS Capsule 3 Pro', '1690000', '1690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50.00', 'am_thanh', 'Active', 'SoundPEATS', '2025-04-30 07:41:46'),
(279, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 07:59:20'),
(280, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 08:00:02'),
(281, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 08:00:05'),
(282, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 08:00:07'),
(284, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 08:00:10'),
(287, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 08:00:15'),
(288, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 08:00:16'),
(289, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 08:00:17'),
(290, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 08:00:18'),
(291, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 08:00:20'),
(292, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 08:00:48'),
(293, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 08:00:49'),
(297, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 08:00:55'),
(299, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 08:00:59'),
(300, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 08:01:00'),
(301, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 08:01:01'),
(302, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 08:01:02'),
(303, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 08:01:03'),
(304, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 08:01:05'),
(306, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 08:05:33'),
(307, 'Đồng hồ thông minh Xiaom', '4290000', '3992703', '6.93', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '44.5', 'dong_ho_camera', 'Active', 'Xiaomi', '2025-05-04 00:43:09'),
(308, 'Đồng hồ thông minh Amazfit Active 2', '2790000', '2790000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '29.5', 'dong_ho_camera', 'Active', 'Amazit', '2025-05-04 02:26:02'),
(309, 'Đồng hồ thông minh KAVVO Macaron 36mm', '2990000', '1794000', '40', 0, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '21', '', 'Active', 'KAVVO', '2025-05-04 02:36:42'),
(310, 'Apple Watch Series 10 42mm (GPS) Viền Nhôm Dây Cao Su', '10990000', '8242500', '25', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '30', 'dong_ho_camera', 'Active', 'Apple', '2025-05-04 02:05:06'),
(311, 'Đồng hồ thông minh Garmin Forerunner 55', '5290000', '3808800', '28', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '37', 'dong_ho_camera', 'Active', 'Garmin', '2025-05-04 02:11:09'),
(312, 'Đồng Hồ Samsung Galaxy Watch 7', '7990000', '4953800', '38', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '28.9', 'dong_ho_camera', 'Active', 'Samsung', '2025-05-04 02:41:49'),
(313, 'Đồng hồ thông minh Riversong Motive 10GT', '2590000', '2072000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '30', 'dong_ho_camera', 'Active', 'Riversong', '2025-05-04 02:21:26'),
(314, 'Đồng hồ định vị trẻ em Viettel MyKID 4G Lite', '1390000', '1251000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '54.9', 'dong_ho_camera', 'Active', 'Viettel', '2025-05-04 02:29:23'),
(315, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 08:05:50'),
(318, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 08:05:51'),
(319, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 08:05:52'),
(320, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 08:05:52'),
(321, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 08:05:53'),
(323, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 08:06:03'),
(324, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 08:06:03'),
(325, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 08:06:04'),
(328, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 08:08:53'),
(329, 'Robot hút bụi lau nhà tự động làm sạch Ecovacs Deebot T30 Pro Omni', '29900000', '10166000', '66', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-05-04 02:45:30'),
(331, 'Nồi chiên không dầu Fujihome A8DG1 8L', '950000', '855000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '4950', 'do_gia_dung', 'Active', 'Fujihome', '2025-05-04 02:49:07'),
(332, 'Nồi chiên không dầu Gaabor AF65T-BK01A 6.5L', '1390000', '1251000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '4320', 'do_gia_dung', 'Active', 'Gaabor', '2025-05-04 02:51:19'),
(333, 'Nồi chiên không dầu SHARP KF-AF70EV-BK 7L', '2490000', '2241000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '4400', 'do_gia_dung', 'Active', 'Sharp', '2025-05-04 02:54:03'),
(334, 'Cân thông minh Xiaomi Smart Scale 2', '300000', '270000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '1200', 'do_gia_dung', 'Active', 'Xiaomi ', '2025-05-04 02:57:29'),
(335, 'Cân điện tử thông minh 365 Selection WS2 (365-SEL-606)', '590000', '200600', '66', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', '365 Selection', '2025-05-04 02:59:34'),
(336, 'Cân Thông Minh Russell Taylor Composition Scale BWS-10', '390000', '195000', '50', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '1100', 'do_gia_dung', 'Active', 'Russell Taylor', '2025-05-04 03:02:14'),
(337, 'Máy hút bụi cầm tay Roidmi Z1 Air', '5990000', '2096500', '65', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '2700', 'do_gia_dung', 'Active', 'Roidmi', '2025-05-04 03:04:51'),
(338, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 08:08:59'),
(339, 'Máy hút bụi Gaabor GVCW-M16Y02 có dây', '998000', '499000', '50', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '1500', 'do_gia_dung', 'Active', 'Gaabor ', '2025-05-04 03:08:29'),
(340, 'Robot hút bụi lau nhà Xiaomi Vacuum E10C - Chỉ có tại CellphoneS', '3999000', '3599100', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '5420', 'do_gia_dung', 'Active', 'Xiaomi ', '2025-05-04 02:29:05'),
(341, 'Máy lọc không khí LG Puricare Aero Hit S35GGW10.ABAE', '7399000', '4957330', '33', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '3500', 'do_gia_dung', 'Active', 'LG', '2025-05-04 03:11:53'),
(342, 'Máy lọc không khí Smartmi Air Purifier E1', '2490000', '1369500', '45', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '2000', 'do_gia_dung', 'Active', 'Smartmi ', '2025-05-04 03:14:06'),
(343, 'Máy lọc không khí chống dị ứng thú cưng Levoit Vital 100S', '2590', '2331', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '4500', 'do_gia_dung', 'Active', 'Levoit ', '2025-05-04 03:15:58'),
(344, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 08:09:08'),
(345, 'Máy Massage cổ vai gáy Philips PPM3306', '1890000', '1323000', '30', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '430', 'do_gia_dung', 'Active', 'Philips ', '2025-05-04 03:20:10'),
(346, 'Máy massage lưng Breo Back 2', '2300000', '1495000', '35', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '1300', 'do_gia_dung', 'Active', 'Breo ', '2025-05-04 03:22:09'),
(347, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 08:12:39'),
(348, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 08:12:39'),
(349, 'Samsung Galaxy S25 Ultra 12GB 256GB', '33990000', '27192000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '218', 'dien_thoai_taplet', 'Active', 'Samsung', '2025-05-04 02:53:11'),
(350, 'OPPO FIND N5', '44990000', '44990000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '229', 'dien_thoai_taplet', 'Active', 'OPPO', '2025-05-04 02:58:47'),
(351, 'Xiaomi 14T 12GB 512GB', '13990000', '11891500', '15', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '195', 'dien_thoai_taplet', 'Active', 'Xiaomi', '2025-05-04 03:02:31'),
(352, 'Nothing Phone 2A 5G 8GB 128GB', '8990000', '7012200', '22', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '190', 'dien_thoai_taplet', 'Active', 'Nothing', '2025-05-04 03:07:44'),
(353, 'Máy tính bảng Teclast P30 4GB 64GB', '2490000', '1992000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '544', 'dien_thoai_taplet', 'Active', 'Teclast', '2025-05-04 03:11:06'),
(354, 'Samsung Galaxy Tab S9 Wifi 12GB 256GB', '21990000', '15393000', '30', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '498', 'dien_thoai_taplet', 'Active', 'Samsung', '2025-05-04 03:19:12'),
(355, 'Máy Tính Bảng Huawei Matepad 11.5 8GB 256GB Xám', '14490000', '11592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '510', 'dien_thoai_taplet', 'Active', 'Huawei', '2025-05-04 03:25:52'),
(356, 'iPad Pro M4 11 inch Wifi 256GB', '28990000', '27540500', '5', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '444', 'dien_thoai_taplet', 'Active', 'Apple', '2025-05-04 03:32:18'),
(357, 'Máy Tính Bảng Lenovo Tab M11 4G 8GB 128GB', '6990000', '5592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '465', 'dien_thoai_taplet', 'Active', 'Lenovo', '2025-05-04 03:36:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `don_dat_hang`
--
ALTER TABLE `don_dat_hang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `don_dat_hang`
--
ALTER TABLE `don_dat_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
