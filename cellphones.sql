-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2025 at 05:32 PM
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
(268, 'Tai nghe Bluetooth chụp tai QCY H2 Pro +', '690000.00', '621000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'QCY', '2025-04-30 14:41:46'),
(270, 'Tai nghe chống ồn Sennheiser Momentum True Wireless 4', '1390000.00', '1390000', '0.00', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL ', '2025-04-30 15:00:38'),
(275, 'Tai nghe Bluetooth chụp tai Anker Soundcore Space One', '2150000', '2150000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'Anker', '2025-04-30 14:41:46'),
(276, 'Tai nghe Bluetooth chụp tai Edifier W820NB', '1440000', '1440000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'Edifier', '2025-04-30 14:41:46'),
(277, 'Tai nghe Bluetooth True Wireless JBL Tour Pro 2', '599000', '599000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL ', '2025-04-30 14:41:46'),
(278, 'Tai nghe Bluetooth True Wireless SoundPEATS Capsule 3 Pro', '1690000', '1690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'SoundPEATS', '2025-04-30 14:41:46'),
(471, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL', '2025-04-30 15:30:23'),
(472, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL', '2025-04-30 15:30:24'),
(473, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL', '2025-04-30 15:30:25'),
(474, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL', '2025-04-30 15:30:25'),
(475, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL', '2025-04-30 15:30:25'),
(476, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL', '2025-04-30 15:30:26'),
(477, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL', '2025-04-30 15:30:26'),
(478, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL', '2025-04-30 15:30:26'),
(479, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL', '2025-04-30 15:30:27'),
(480, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL', '2025-04-30 15:30:27'),
(481, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL', '2025-04-30 15:30:27'),
(482, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL', '2025-04-30 15:30:27'),
(483, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL', '2025-04-30 15:30:36'),
(484, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL', '2025-04-30 15:30:36'),
(485, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL', '2025-04-30 15:30:36'),
(486, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL', '2025-04-30 15:30:37'),
(487, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'JBL', '2025-04-30 15:30:37');

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

--
-- Dumping data for table `am_thanh_history`
--

INSERT INTO `am_thanh_history` (`history_id`, `am_thanh_id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`, `last_updated`) VALUES
(1, 270, 'Tai nghe Bluetooth True Wireless Anker Soundcore R50I NC', '749000', '749000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 50.00, 'am_thanh', 'Active', 'Anker ', '2025-04-30 15:00:38');

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
(349, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:40'),
(350, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:40'),
(351, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:40'),
(352, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:41'),
(353, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:41'),
(354, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:42'),
(355, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:42'),
(356, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:42'),
(357, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:43'),
(358, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:43'),
(359, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:44'),
(360, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:44'),
(362, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:55'),
(363, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:55'),
(364, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:55'),
(365, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:56'),
(366, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:56'),
(367, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:56'),
(368, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:56'),
(369, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:57'),
(370, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:57'),
(371, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:57'),
(372, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:12:58'),
(373, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:13:12'),
(374, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:13:12'),
(375, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:13:12'),
(376, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:13:13'),
(377, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:13:13'),
(378, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'dien_thoai_taplet', 'Active', 'Apple', '2025-04-30 15:13:14');

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
(307, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'dong_ho_camera', 'Active', 'Huawei', '2025-04-30 15:05:34'),
(308, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'dong_ho_camera', 'Active', 'Huawei', '2025-04-30 15:05:34'),
(310, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'dong_ho_camera', 'Active', 'Huawei', '2025-04-30 15:05:35'),
(311, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'dong_ho_camera', 'Active', 'Huawei', '2025-04-30 15:05:35'),
(312, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'dong_ho_camera', 'Active', 'Huawei', '2025-04-30 15:05:36'),
(313, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'dong_ho_camera', 'Active', 'Huawei', '2025-04-30 15:05:38'),
(314, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'dong_ho_camera', 'Active', 'Huawei', '2025-04-30 15:05:48'),
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
(329, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 15:08:54'),
(331, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 15:08:55'),
(332, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 15:08:56'),
(333, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 15:08:57'),
(334, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 15:08:57'),
(335, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 15:08:58'),
(336, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 15:08:58'),
(337, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 15:08:59'),
(338, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 15:08:59'),
(339, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 15:08:59'),
(340, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 15:09:00'),
(341, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 15:09:00'),
(342, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 15:09:00'),
(343, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 15:09:01'),
(344, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 15:09:08'),
(345, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 15:09:09'),
(346, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'do_gia_dung', 'Active', 'Ecovacs', '2025-04-30 15:09:09');

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
(223, 'Samsung Galaxy Z Flip6 12GB 256GB', '1000000.00', '900000.00', '10.00', 0, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '165.00', 'trang_chu', 'Active', 'Samsung', '123'),
(224, 'Samsung Galaxy Z Flip6 12GB 256GB', '1000000.00', '900000.00', '10.00', 0, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '165.00', 'trang_chu', 'Active', 'Samsung', '123'),
(225, 'Samsung Galaxy Z Flip6 12GB 256GB', '1000000.00', '900000.00', '10.00', 0, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '165.00', 'trang_chu', 'Active', 'Samsung', '123');

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
(420, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:35'),
(421, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:36'),
(422, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:36'),
(423, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:36'),
(424, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:37'),
(425, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:37'),
(426, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:38'),
(427, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:38'),
(428, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:38'),
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
(445, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:51'),
(446, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'pc_man_hinh_may_in', 'Active', 'PC CPS', '2025-04-30 15:24:51');

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
(380, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:17:45'),
(381, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:17:46'),
(382, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:17:46'),
(383, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:17:47'),
(384, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:17:48'),
(385, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:17:48'),
(386, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:17:49'),
(387, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:17:49'),
(388, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:17:50'),
(389, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:17:51'),
(390, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:17:51'),
(391, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:17:51'),
(392, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:17:52'),
(393, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:17:52'),
(394, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:17:52'),
(395, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:17:52'),
(396, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:17:53'),
(397, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:17:53'),
(398, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:17:54'),
(399, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:18:03'),
(400, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:18:03'),
(401, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'phu_kien', 'Active', 'Logitech', '2025-04-30 15:18:03');

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
(222, 'Samsung Galaxy Z Flip6 12GB 256GB', '1000000.00', '900000.00', '10.00', 0, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '165.00', 'trang_chu', 'Active', 'Samsung', 4, '123');

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

--
-- Dumping data for table `tivi`
--

INSERT INTO `tivi` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`, `last_updated`) VALUES
(447, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:00'),
(448, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:01'),
(449, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:02'),
(450, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:02'),
(451, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:02'),
(452, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:03'),
(453, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:03'),
(454, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:04'),
(455, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:04'),
(456, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:05'),
(457, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:05'),
(458, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:05'),
(459, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:06'),
(460, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:06'),
(461, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:06'),
(462, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:07'),
(463, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:07'),
(464, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:08'),
(465, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:08'),
(466, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:08'),
(467, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:09'),
(468, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:17'),
(469, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:18'),
(470, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'tivi', 'Active', 'Coocaa', '2025-04-30 15:27:18');

--
-- Triggers `tivi`
--
DELIMITER $$
CREATE TRIGGER `after_update_tivi` AFTER UPDATE ON `tivi` FOR EACH ROW BEGIN
  INSERT INTO `tivi_history` (
    tivi_id, name, gia_goc, gia, giam_gia,
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
CREATE TRIGGER `before_insert_or_update_price_tivi` BEFORE INSERT ON `tivi` FOR EACH ROW BEGIN
  SET NEW.gia = NEW.gia_goc - (NEW.gia_goc * (NEW.giam_gia / 100));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tivi_history`
--

CREATE TABLE `tivi_history` (
  `history_id` int(11) NOT NULL,
  `tivi_id` int(11) NOT NULL,
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
(268, 'Tai nghe Bluetooth chụp tai QCY H2 Pro +', '690000.00', '621000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50.00', 'am_thanh', 'Active', 'QCY', '2025-04-30 14:41:46'),
(270, 'Tai nghe chống ồn Sennheiser Momentum True Wireless 4', '1390000.00', '1390000', '0.00', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50.00', 'am_thanh', 'Active', 'JBL ', '2025-04-30 15:00:38'),
(275, 'Tai nghe Bluetooth chụp tai Anker Soundcore Space One', '2150000', '2150000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50.00', 'am_thanh', 'Active', 'Anker', '2025-04-30 14:41:46'),
(276, 'Tai nghe Bluetooth chụp tai Edifier W820NB', '1440000', '1440000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50.00', 'am_thanh', 'Active', 'Edifier', '2025-04-30 14:41:46'),
(277, 'Tai nghe Bluetooth True Wireless JBL Tour Pro 2', '599000', '599000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50.00', 'am_thanh', 'Active', 'JBL ', '2025-04-30 14:41:46'),
(278, 'Tai nghe Bluetooth True Wireless SoundPEATS Capsule 3 Pro', '1690000', '1690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50.00', 'am_thanh', 'Active', 'SoundPEATS', '2025-04-30 14:41:46'),
(279, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 14:59:20'),
(280, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:00:02'),
(281, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:00:05'),
(282, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:00:07'),
(284, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:00:10'),
(287, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:00:15'),
(288, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:00:16'),
(289, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:00:17'),
(290, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:00:18'),
(291, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:00:20'),
(292, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:00:48'),
(293, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:00:49'),
(297, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:00:55'),
(299, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:00:59'),
(300, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:01:00'),
(301, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:01:01'),
(302, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:01:02'),
(303, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:01:03'),
(304, 'MacBook Air M4 13 inch 2025 10CPU 8GPU 16GB 256GB | Chính hãng Apple Việt Nam', '26690000', '24021000', '10', 0, 'MacBook Air 13 M4 2025 sở hữu thiết kế siêu mỏng nhẹ với màu sắc sang trọng, độ dày chỉ 1.13 cm và trọng lượng 1.24 kg.', '1240', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:01:05'),
(306, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 15:05:33'),
(307, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 15:05:34'),
(308, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 15:05:34'),
(310, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 15:05:35'),
(311, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 15:05:35'),
(312, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 15:05:36'),
(313, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 15:05:38'),
(314, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 15:05:48'),
(315, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 15:05:50'),
(318, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 15:05:51'),
(319, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 15:05:52'),
(320, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 15:05:52'),
(321, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 15:05:53'),
(323, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 15:06:03'),
(324, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 15:06:03'),
(325, 'Đồng hồ thông minh Huawei Watch GT 5', '4190000', '3771000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Huawei', '2025-04-30 15:06:04'),
(328, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'trang_chu', 'Active', 'Ecovacs', '2025-04-30 15:08:53'),
(329, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'trang_chu', 'Active', 'Ecovacs', '2025-04-30 15:08:54'),
(331, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'trang_chu', 'Active', 'Ecovacs', '2025-04-30 15:08:55'),
(332, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'trang_chu', 'Active', 'Ecovacs', '2025-04-30 15:08:56'),
(333, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'trang_chu', 'Active', 'Ecovacs', '2025-04-30 15:08:57'),
(334, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'trang_chu', 'Active', 'Ecovacs', '2025-04-30 15:08:57'),
(335, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'trang_chu', 'Active', 'Ecovacs', '2025-04-30 15:08:58'),
(336, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'trang_chu', 'Active', 'Ecovacs', '2025-04-30 15:08:58'),
(337, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'trang_chu', 'Active', 'Ecovacs', '2025-04-30 15:08:59'),
(338, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'trang_chu', 'Active', 'Ecovacs', '2025-04-30 15:08:59'),
(339, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'trang_chu', 'Active', 'Ecovacs', '2025-04-30 15:08:59'),
(340, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'trang_chu', 'Active', 'Ecovacs', '2025-04-30 15:09:00'),
(341, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'trang_chu', 'Active', 'Ecovacs', '2025-04-30 15:09:00'),
(342, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'trang_chu', 'Active', 'Ecovacs', '2025-04-30 15:09:00'),
(343, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'trang_chu', 'Active', 'Ecovacs', '2025-04-30 15:09:01'),
(344, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'trang_chu', 'Active', 'Ecovacs', '2025-04-30 15:09:08'),
(345, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'trang_chu', 'Active', 'Ecovacs', '2025-04-30 15:09:09'),
(346, 'Robot hút bụi lau nhà Ecovacs Deebot N30 Pro Omni', '20900000', '18810000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '11620', 'trang_chu', 'Active', 'Ecovacs', '2025-04-30 15:09:09'),
(347, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:39'),
(348, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:39'),
(349, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:40'),
(350, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:40'),
(351, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:40'),
(352, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:41'),
(353, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:41'),
(354, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:42'),
(355, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:42'),
(356, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:42'),
(357, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:43'),
(358, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:43'),
(359, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:44'),
(360, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:44'),
(362, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:55'),
(363, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:55'),
(364, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:55'),
(365, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:56'),
(366, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:56'),
(367, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:56'),
(368, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:56'),
(369, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:57'),
(370, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:57'),
(371, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:57'),
(372, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:12:58'),
(373, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:13:12'),
(374, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:13:12'),
(375, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:13:12'),
(376, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:13:13'),
(377, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:13:13'),
(378, 'iPhone 13 128GB | Chính hãng VN/A', '11690000', '11690000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '173', 'trang_chu', 'Active', 'Apple', '2025-04-30 15:13:14'),
(379, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:17:44'),
(380, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:17:45'),
(381, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:17:46'),
(382, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:17:46'),
(383, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:17:47'),
(384, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:17:48'),
(385, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:17:48'),
(386, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:17:49'),
(387, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:17:49'),
(388, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:17:50'),
(389, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:17:51'),
(390, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:17:51'),
(391, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:17:51'),
(392, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:17:52'),
(393, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:17:52'),
(394, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:17:52'),
(395, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:17:52'),
(396, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:17:53'),
(397, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:17:53'),
(398, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:17:54'),
(399, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:18:03'),
(400, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:18:03'),
(401, 'Chuột không dây Logitech MX Master 2S', '1890000', '1701000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '145', 'trang_chu', 'Active', 'Logitech', '2025-04-30 15:18:03'),
(420, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:35'),
(421, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:36'),
(422, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:36'),
(423, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:36'),
(424, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:37'),
(425, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:37'),
(426, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:38'),
(427, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:38'),
(428, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:38'),
(429, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:39'),
(430, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:39'),
(431, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:39'),
(432, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:39'),
(433, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:40'),
(434, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:40'),
(435, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:40'),
(436, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:40'),
(437, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:48'),
(438, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:49'),
(439, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:49'),
(440, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:49'),
(441, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:50'),
(442, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:50'),
(443, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:50'),
(444, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:50'),
(445, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:51'),
(446, 'PC CPS Gaming G01 i3 12100F / 16GB - 256GB / RX 6500', '15290000', '13761000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'PC CPS', '2025-04-30 15:24:51'),
(447, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:00'),
(448, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:01'),
(449, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:02'),
(450, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:02'),
(451, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:02'),
(452, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:03'),
(453, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:03'),
(454, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:04'),
(455, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:04'),
(456, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:04'),
(457, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:05'),
(458, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:05'),
(459, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:06'),
(460, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:06'),
(461, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:06'),
(462, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:07'),
(463, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:07'),
(464, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:08'),
(465, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:08'),
(466, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:08'),
(467, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:09'),
(468, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:17'),
(469, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:18'),
(470, 'Smart Tivi Coocaa FHD 43 inch 43S3U+', '4490000', '3592000', '20', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '300', 'trang_chu', 'Active', 'Coocaa', '2025-04-30 15:27:18'),
(471, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'JBL', '2025-04-30 15:30:23'),
(472, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'JBL', '2025-04-30 15:30:24'),
(473, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'JBL', '2025-04-30 15:30:25'),
(474, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'JBL', '2025-04-30 15:30:25'),
(475, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'JBL', '2025-04-30 15:30:25'),
(476, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'JBL', '2025-04-30 15:30:26'),
(477, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'JBL', '2025-04-30 15:30:26'),
(478, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'JBL', '2025-04-30 15:30:26'),
(479, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'JBL', '2025-04-30 15:30:27'),
(480, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'JBL', '2025-04-30 15:30:27'),
(481, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'JBL', '2025-04-30 15:30:27'),
(482, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'JBL', '2025-04-30 15:30:27'),
(483, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'JBL', '2025-04-30 15:30:36'),
(484, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'JBL', '2025-04-30 15:30:36'),
(485, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'JBL', '2025-04-30 15:30:36'),
(486, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'JBL', '2025-04-30 15:30:37'),
(487, 'Tai nghe Bluetooth True Wireless JBL Wave Beam', '1490000', '1341000', '10', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50', 'trang_chu', 'Active', 'JBL', '2025-04-30 15:30:37');

--
-- Triggers `trang_chu`
--
DELIMITER $$
CREATE TRIGGER `after_update_trang_chu` AFTER UPDATE ON `trang_chu` FOR EACH ROW BEGIN
  INSERT INTO `trang_chu_history` (
    trang_chu_id, name, gia_goc, gia, giam_gia,
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
CREATE TRIGGER `before_insert_or_update_price_trang_chu` BEFORE INSERT ON `trang_chu` FOR EACH ROW BEGIN
  SET NEW.gia = NEW.gia_goc - (NEW.gia_goc * (NEW.giam_gia / 100));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `trang_chu_history`
--

CREATE TABLE `trang_chu_history` (
  `history_id` int(11) NOT NULL,
  `trang_chu_id` int(11) NOT NULL,
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

--
-- Dumping data for table `trang_chu_history`
--

INSERT INTO `trang_chu_history` (`history_id`, `trang_chu_id`, `name`, `gia_goc`, `gia`, `giam_gia`, `inventory`, `description`, `trong_luong`, `Page`, `Status`, `company`, `last_updated`) VALUES
(1, 270, 'Tai nghe Bluetooth True Wireless Anker Soundcore R50I NC', '749000', '749000', '0', 1000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', '50.00', 'am_thanh', 'Active', 'Anker ', '2025-04-30 15:00:38');

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
-- Indexes for table `am_thanh_history`
--
ALTER TABLE `am_thanh_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `am_thanh_id` (`am_thanh_id`);

--
-- Indexes for table `dien_thoai_taplet`
--
ALTER TABLE `dien_thoai_taplet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dien_thoai_taplet_history`
--
ALTER TABLE `dien_thoai_taplet_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `dien_thoai_taplet_id` (`dien_thoai_taplet_id`);

--
-- Indexes for table `dong_ho_camera`
--
ALTER TABLE `dong_ho_camera`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dong_ho_camera_history`
--
ALTER TABLE `dong_ho_camera_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `dong_ho_camera_id` (`dong_ho_camera_id`);

--
-- Indexes for table `do_gia_dung`
--
ALTER TABLE `do_gia_dung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `do_gia_dung_history`
--
ALTER TABLE `do_gia_dung_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `do_gia_dung_id` (`do_gia_dung_id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD KEY `fk_phone` (`phone`);

--
-- Indexes for table `laptop`
--
ALTER TABLE `laptop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laptop_history`
--
ALTER TABLE `laptop_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `laptop_id` (`laptop_id`);

--
-- Indexes for table `pc_man_hinh_may_in`
--
ALTER TABLE `pc_man_hinh_may_in`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pc_man_hinh_may_in_history`
--
ALTER TABLE `pc_man_hinh_may_in_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `pc_man_hinh_may_in_id` (`pc_man_hinh_may_in_id`);

--
-- Indexes for table `phu_kien`
--
ALTER TABLE `phu_kien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phu_kien_history`
--
ALTER TABLE `phu_kien_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `phu_kien_id` (`phu_kien_id`);

--
-- Indexes for table `tivi`
--
ALTER TABLE `tivi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tivi_history`
--
ALTER TABLE `tivi_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `tivi_id` (`tivi_id`);

--
-- Indexes for table `trang_chu`
--
ALTER TABLE `trang_chu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trang_chu_history`
--
ALTER TABLE `trang_chu_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `trang_chu_id` (`trang_chu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `am_thanh`
--
ALTER TABLE `am_thanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=488;

--
-- AUTO_INCREMENT for table `am_thanh_history`
--
ALTER TABLE `am_thanh_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dien_thoai_taplet`
--
ALTER TABLE `dien_thoai_taplet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `dien_thoai_taplet_history`
--
ALTER TABLE `dien_thoai_taplet_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dong_ho_camera`
--
ALTER TABLE `dong_ho_camera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `dong_ho_camera_history`
--
ALTER TABLE `dong_ho_camera_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `do_gia_dung`
--
ALTER TABLE `do_gia_dung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT for table `do_gia_dung_history`
--
ALTER TABLE `do_gia_dung_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laptop`
--
ALTER TABLE `laptop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `laptop_history`
--
ALTER TABLE `laptop_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pc_man_hinh_may_in`
--
ALTER TABLE `pc_man_hinh_may_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;

--
-- AUTO_INCREMENT for table `pc_man_hinh_may_in_history`
--
ALTER TABLE `pc_man_hinh_may_in_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phu_kien`
--
ALTER TABLE `phu_kien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT for table `phu_kien_history`
--
ALTER TABLE `phu_kien_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tivi`
--
ALTER TABLE `tivi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;

--
-- AUTO_INCREMENT for table `tivi_history`
--
ALTER TABLE `tivi_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trang_chu`
--
ALTER TABLE `trang_chu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=488;

--
-- AUTO_INCREMENT for table `trang_chu_history`
--
ALTER TABLE `trang_chu_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `am_thanh_history`
--
ALTER TABLE `am_thanh_history`
  ADD CONSTRAINT `am_thanh_history_ibfk_1` FOREIGN KEY (`am_thanh_id`) REFERENCES `am_thanh` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dien_thoai_taplet_history`
--
ALTER TABLE `dien_thoai_taplet_history`
  ADD CONSTRAINT `dien_thoai_taplet_history_ibfk_1` FOREIGN KEY (`dien_thoai_taplet_id`) REFERENCES `dien_thoai_taplet` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dong_ho_camera_history`
--
ALTER TABLE `dong_ho_camera_history`
  ADD CONSTRAINT `dong_ho_camera_history_ibfk_1` FOREIGN KEY (`dong_ho_camera_id`) REFERENCES `dong_ho_camera` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `do_gia_dung_history`
--
ALTER TABLE `do_gia_dung_history`
  ADD CONSTRAINT `do_gia_dung_history_ibfk_1` FOREIGN KEY (`do_gia_dung_id`) REFERENCES `do_gia_dung` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `fk_phone` FOREIGN KEY (`phone`) REFERENCES `account` (`phone`);

--
-- Constraints for table `laptop_history`
--
ALTER TABLE `laptop_history`
  ADD CONSTRAINT `laptop_history_ibfk_1` FOREIGN KEY (`laptop_id`) REFERENCES `laptop` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pc_man_hinh_may_in_history`
--
ALTER TABLE `pc_man_hinh_may_in_history`
  ADD CONSTRAINT `pc_man_hinh_may_in_history_ibfk_1` FOREIGN KEY (`pc_man_hinh_may_in_id`) REFERENCES `pc_man_hinh_may_in` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `phu_kien_history`
--
ALTER TABLE `phu_kien_history`
  ADD CONSTRAINT `phu_kien_history_ibfk_1` FOREIGN KEY (`phu_kien_id`) REFERENCES `phu_kien` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tivi_history`
--
ALTER TABLE `tivi_history`
  ADD CONSTRAINT `tivi_history_ibfk_1` FOREIGN KEY (`tivi_id`) REFERENCES `tivi` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trang_chu_history`
--
ALTER TABLE `trang_chu_history`
  ADD CONSTRAINT `trang_chu_history_ibfk_1` FOREIGN KEY (`trang_chu_id`) REFERENCES `trang_chu` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
