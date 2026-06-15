-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 15, 2026 at 05:08 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_latihan_pbo_ti1c`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_tiket`
--

CREATE TABLE `table_tiket` (
  `id_tiket` int NOT NULL,
  `nama_film` varchar(255) NOT NULL,
  `jadwal_tayang` datetime NOT NULL,
  `jumlah_kursi` int NOT NULL,
  `harga_dasar_tiket` decimal(10,2) NOT NULL,
  `jenis_studio` enum('Reguler','IMAX','Velvet') NOT NULL,
  `tipe_audio` varchar(50) DEFAULT NULL,
  `lokasi_baris` varchar(10) DEFAULT NULL,
  `kacamata_3d_id` varchar(50) DEFAULT NULL,
  `efek_gerak_fitur` varchar(100) DEFAULT NULL,
  `bantal_selimut_pack` varchar(50) DEFAULT NULL,
  `layanan_butler` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `table_tiket`
--

INSERT INTO `table_tiket` (`id_tiket`, `nama_film`, `jadwal_tayang`, `jumlah_kursi`, `harga_dasar_tiket`, `jenis_studio`, `tipe_audio`, `lokasi_baris`, `kacamata_3d_id`, `efek_gerak_fitur`, `bantal_selimut_pack`, `layanan_butler`) VALUES
(1, 'Avenger: Secret Wars', '2026-07-01 13:00:00', 150, '50000.00', 'Reguler', 'Dolby Digital 5.1', 'A', NULL, NULL, NULL, NULL),
(2, 'Avenger: Secret Wars', '2026-07-01 16:00:00', 150, '50000.00', 'Reguler', 'Dolby Digital 5.1', 'B', NULL, NULL, NULL, NULL),
(3, 'Batman: Resurrection', '2026-07-01 14:00:00', 120, '45000.00', 'Reguler', 'Stereo', 'C', NULL, NULL, NULL, NULL),
(4, 'Batman: Resurrection', '2026-07-01 19:00:00', 120, '45000.00', 'Reguler', 'Stereo', 'D', NULL, NULL, NULL, NULL),
(5, 'Spiderman: HomeRun', '2026-07-02 11:00:00', 180, '40000.00', 'Reguler', 'Dolby Digital 5.1', 'E', NULL, NULL, NULL, NULL),
(6, 'Spiderman: HomeRun', '2026-07-02 15:30:00', 180, '40000.00', 'Reguler', 'Dolby Digital 5.1', 'F', NULL, NULL, NULL, NULL),
(7, 'Shrek 5', '2026-07-02 13:00:00', 200, '35000.00', 'Reguler', 'Stereo', 'G', NULL, NULL, NULL, NULL),
(8, 'Avenger: Secret Wars', '2026-07-01 13:00:00', 300, '95000.00', 'IMAX', 'Dolby Atmos 12.1', 'H', '3D-IMAX-01', '4DX Motion Seat', NULL, NULL),
(9, 'Avenger: Secret Wars', '2026-07-01 17:00:00', 300, '95000.00', 'IMAX', 'Dolby Atmos 12.1', 'I', '3D-IMAX-02', '4DX Motion Seat', NULL, NULL),
(10, 'Interstellar: Re-Release', '2026-07-01 20:00:00', 250, '85000.00', 'IMAX', 'IMAX 6-Channel', 'J', NULL, 'Vibration Only', NULL, NULL),
(11, 'Interstellar: Re-Release', '2026-07-02 14:00:00', 250, '85000.00', 'IMAX', 'IMAX 6-Channel', 'K', NULL, 'Vibration Only', NULL, NULL),
(12, 'Avatar 4', '2026-07-02 12:00:00', 350, '110000.00', 'IMAX', 'Dolby Atmos 12.1', 'L', '3D-IMAX-03', '4DX Full Effects', NULL, NULL),
(13, 'Avatar 4', '2026-07-02 16:30:00', 350, '110000.00', 'IMAX', 'Dolby Atmos 12.1', 'M', '3D-IMAX-04', '4DX Full Effects', NULL, NULL),
(14, 'Dune: Part Three', '2026-07-03 19:00:00', 280, '90000.00', 'IMAX', 'IMAX 6-Channel', 'N', NULL, NULL, NULL, NULL),
(15, 'Avenger: Secret Wars', '2026-07-01 14:30:00', 40, '250000.00', 'Velvet', 'Dolby Atmos', 'VIP-A', NULL, NULL, 'Premium Pack A', 'Personal Butler Service'),
(16, 'Avenger: Secret Wars', '2026-07-01 19:30:00', 40, '250000.00', 'Velvet', 'Dolby Atmos', 'VIP-B', NULL, NULL, 'Premium Pack A', 'Personal Butler Service'),
(17, 'The Great Gatsby 2', '2026-07-01 21:00:00', 30, '200000.00', 'Velvet', 'Dolby Digital', 'VIP-C', NULL, NULL, 'Standard Velvet Pack', 'On-Call Butler'),
(18, 'The Great Gatsby 2', '2026-07-02 18:00:00', 30, '200000.00', 'Velvet', 'Dolby Digital', 'VIP-D', NULL, NULL, 'Standard Velvet Pack', 'On-Call Butler'),
(19, 'Inception: Dream On', '2026-07-02 20:00:00', 40, '220000.00', 'Velvet', 'Dolby Atmos', 'VIP-E', NULL, NULL, 'Premium Pack B', 'Personal Butler Service'),
(20, 'Inception: Dream On', '2026-07-03 21:30:00', 40, '220000.00', 'Velvet', 'Dolby Atmos', 'VIP-F', NULL, NULL, 'Premium Pack B', 'Personal Butler Service'),
(21, 'Conjuring 4', '2026-07-03 23:45:00', 30, '200000.00', 'Velvet', 'Dolby Digital', 'VIP-G', NULL, NULL, 'Standard Velvet Pack', 'On-Call Butler');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_tiket`
--
ALTER TABLE `table_tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_tiket`
--
ALTER TABLE `table_tiket`
  MODIFY `id_tiket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
