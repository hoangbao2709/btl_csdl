-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2025 at 12:33 PM
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
-- Table structure for table `am_thanh`
--

CREATE TABLE `am_thanh` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL,
  `gia_goc` varchar(500) NOT NULL,
  `gia` varchar(500) NOT NULL,
  `giam_gia` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `am_thanh`
--

INSERT INTO `am_thanh` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `description`, `trong_luong`, `Page`, `Status`, `company`) VALUES
(2, 'bao123', '1000000123', '-100230012328', '10123', '10000123', '10000123', 'am_thanh', 'Active', 'apple123');

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
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dien_thoai_taplet`
--

INSERT INTO `dien_thoai_taplet` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `description`, `trong_luong`, `Page`, `Status`, `company`) VALUES
(6, '123', '123', '-28', '123', '123', '123', 'dien_thoai_taplet', 'Active', '123');

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
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dong_ho_camera`
--

INSERT INTO `dong_ho_camera` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `description`, `trong_luong`, `Page`, `Status`, `company`) VALUES
(3, '123', '123', '-28', '123', '123', '1231', 'trang_chu', 'Active', '123'),
(4, '123', '123', '-28', '123', '123', '123', 'dong_ho_camera', 'Active', '123'),
(5, '123', '123', '-28', '123', '123', '1231', 'trang_chu', 'Active', '123'),
(6, '123', '123', '-28', '123', '123', '1231', 'trang_chu', 'Active', '123');

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
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `do_gia_dung`
--

INSERT INTO `do_gia_dung` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `description`, `trong_luong`, `Page`, `Status`, `company`) VALUES
(5, '123', '123', '-28', '123', '123', '123', 'do_gia_dung', 'Active', '123');

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
  `tap` varchar(500) NOT NULL,
  `tac_gia` varchar(500) NOT NULL,
  `doi_tuong` varchar(500) NOT NULL,
  `khuon_kho` varchar(500) NOT NULL,
  `so_trang` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `tap`, `tac_gia`, `doi_tuong`, `khuon_kho`, `so_trang`, `trong_luong`, `Page`, `Status`) VALUES
(4, 'Chúa tể bóng tối (Manga)​​​​​​​', '1000000', '900000', '10', '6', 'Daisuke Aizawa', 'Tuổi trưởng thành (trên 18 tuổi)', '13x18 cm', '144', '165', 'tat_ca_san_pham', 'Active'),
(5, 'Chúa tể bóng tối (Manga)​​​​​​​', '1000000', '900000', '10', '6', 'Daisuke Aizawa', 'Tuổi trưởng thành (trên 18 tuổi)', '13x18 cm', '144', '165', 'tat_ca_san_pham', 'Active'),
(6, 'Chúa tể bóng tối (Manga)​​​​​​​', '1000000', '900000', '10', '6', 'Daisuke Aizawa', 'Tuổi trưởng thành (trên 18 tuổi)', '13x18 cm', '144', '165', 'tat_ca_san_pham', 'Active'),
(7, 'Chúa tể bóng tối (Manga)​​​​​​​', '1000000', '900000', '10', '6', 'Daisuke Aizawa', 'Tuổi trưởng thành (trên 18 tuổi)', '13x18 cm', '144', '165', 'tat_ca_san_pham', 'Active'),
(8, 'Chúa tể bóng tối (Manga)​​​​​​​', '1000000', '900000', '10', '6', 'Daisuke Aizawa', 'Tuổi trưởng thành (trên 18 tuổi)', '13x18 cm', '144', '165', 'tat_ca_san_pham', 'Active'),
(9, 'Chúa tể bóng tối (Manga)​​​​​​​', '1000000', '900000', '10', '6', 'Daisuke Aizawa', 'Tuổi trưởng thành (trên 18 tuổi)', '13x18 cm', '144', '165', 'tat_ca_san_pham', 'Active');

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
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `description`, `trong_luong`, `Page`, `Status`, `company`) VALUES
(21, '123', '123', '-28', '123', '123', '123', 'laptop', 'Active', '123'),
(22, '123', '123', '-28', '123', '123', '123', 'laptop', 'Active', '123'),
(23, '123', '123', '-28', '123', '123', '123', 'laptop', 'Active', '123'),
(24, '123', '123', '-28', '123', '123', '123', 'laptop', 'Active', '123'),
(25, '123', '123', '-28', '123', '123', '123', 'laptop', 'Active', '123');

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
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pc_man_hinh_may_in`
--

INSERT INTO `pc_man_hinh_may_in` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `description`, `trong_luong`, `Page`, `Status`, `company`) VALUES
(7, '123', '123', '-28', '123', '123', '123', 'pc_man_hinh_may_in', 'Active', '123'),
(8, '123', '123', '-28', '123', '123', '123', 'pc_man_hinh_may_in', 'Active', '123'),
(9, '123', '123', '-28', '123', '123', '123', 'pc_man_hinh_may_in', 'Active', '123');

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
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phu_kien`
--

INSERT INTO `phu_kien` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `description`, `trong_luong`, `Page`, `Status`, `company`) VALUES
(10, '123', '123', '-28', '123', '123', '123', 'phu_kien', 'Active', '123'),
(11, '123', '123', '-28', '123', '123', '123', 'phu_kien', 'Active', '123'),
(12, '123', '123', '-28', '123', '123', '123', 'phu_kien', 'Active', '123'),
(13, '123', '123', '-28', '123', '123', '123', 'phu_kien', 'Active', '123'),
(14, '123', '123', '-28', '123', '123', '123', 'phu_kien', 'Active', '123');

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
  `tap` varchar(500) NOT NULL,
  `tac_gia` varchar(500) NOT NULL,
  `doi_tuong` varchar(500) NOT NULL,
  `khuon_kho` varchar(500) NOT NULL,
  `so_trang` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `so_luong` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `tap`, `tac_gia`, `doi_tuong`, `khuon_kho`, `so_trang`, `trong_luong`, `Page`, `Status`, `so_luong`) VALUES
(5, 'Chúa tể bóng tối (Manga)​​​​​​​', '1000000', '900000', '10', '6', 'Daisuke Aizawa', 'Tuổi trưởng thành (trên 18 tuổi)', '13x18 cm', '144', '165', 'tat_ca_san_pham', 'Active', 1),
(7, 'Chúa tể bóng tối (Manga)​​​​​​​', '1000000', '900000', '10', '6', 'Daisuke Aizawa', 'Tuổi trưởng thành (trên 18 tuổi)', '13x18 cm', '144', '165', 'tat_ca_san_pham', 'Active', 1);

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
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tivi`
--

INSERT INTO `tivi` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `description`, `trong_luong`, `Page`, `Status`, `company`) VALUES
(15, '123', '123', '-28', '123', '123', '123', 'tivi', 'Active', '123'),
(16, '123', '123', '-28', '123', '123', '123', 'tivi', 'Active', '123'),
(17, '123', '123', '-28', '123', '123', '123', 'tivi', 'Active', '123'),
(18, '123', '123', '-28', '123', '123', '123', 'tivi', 'Active', '123'),
(19, '123', '123', '-28', '123', '123', '123', 'tivi', 'Active', '123'),
(20, '123', '123', '-28', '123', '123', '123', 'tivi', 'Active', '123');

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
  `description` varchar(500) NOT NULL,
  `trong_luong` varchar(500) NOT NULL,
  `Page` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trang_chu`
--

INSERT INTO `trang_chu` (`id`, `name`, `gia_goc`, `gia`, `giam_gia`, `description`, `trong_luong`, `Page`, `Status`, `company`) VALUES
(1, 'bao', '1000000', '900000', '10', '10000', '10000', 'trang_chu', 'Active', 'apple'),
(2, 'bao123', '1000000123', '-100230012328', '10123', '10000123', '10000123', 'trang_chu', 'Active', 'apple123'),
(3, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(4, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(5, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(6, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(7, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(8, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(9, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(10, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(11, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(12, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(13, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(14, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(15, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(16, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(17, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(18, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(19, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(20, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(21, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(22, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(23, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(24, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123'),
(25, '123', '123', '-28', '123', '123', '123', 'trang_chu', 'Active', '123');

--
-- Indexes for dumped tables
--

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tivi`
--
ALTER TABLE `tivi`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `trang_chu`
--
ALTER TABLE `trang_chu`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
