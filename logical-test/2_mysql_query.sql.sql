-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 11, 2022 at 04:08 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mhs`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `mhs_id` int(11) NOT NULL,
  `mhs_nim` varchar(50) NOT NULL,
  `mhs_nama` varchar(100) NOT NULL,
  `mhs_angkatan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`mhs_id`, `mhs_nim`, `mhs_nama`, `mhs_angkatan`) VALUES
(1, '2018001', 'Jono', '2018'),
(2, '2018002', 'Taufik', '2018'),
(3, '2018003', 'Maria', '2018'),
(4, '2019001', 'Sari', '2019'),
(5, '2019002', 'Bambang', '2019');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa_nilai`
--

CREATE TABLE `tb_mahasiswa_nilai` (
  `mhs_nilai_id` int(11) NOT NULL,
  `mhs_id` int(11) NOT NULL,
  `mk_id` int(11) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mahasiswa_nilai`
--

INSERT INTO `tb_mahasiswa_nilai` (`mhs_nilai_id`, `mhs_id`, `mk_id`, `nilai`) VALUES
(1, 1, 1, 70),
(2, 1, 1, 80),
(3, 2, 1, 82),
(4, 2, 2, 74),
(5, 4, 1, 76),
(6, 4, 2, 80),
(7, 5, 1, 60);

-- --------------------------------------------------------

--
-- Table structure for table `tb_matakuliah`
--

CREATE TABLE `tb_matakuliah` (
  `mk_id` int(11) NOT NULL,
  `mk_kode` varchar(5) NOT NULL,
  `mk_sks` int(2) NOT NULL,
  `mk_nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_matakuliah`
--

INSERT INTO `tb_matakuliah` (`mk_id`, `mk_kode`, `mk_sks`, `mk_nama`) VALUES
(1, 'MK202', 3, 'OOP'),
(2, 'MK303', 2, 'Basis Data');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`mhs_id`);

--
-- Indexes for table `tb_mahasiswa_nilai`
--
ALTER TABLE `tb_mahasiswa_nilai`
  ADD PRIMARY KEY (`mhs_nilai_id`),
  ADD KEY `tb_mahasiswa_mhs_id_foreign` (`mhs_id`),
  ADD KEY `tb_matakuliah_mk_id_foreign` (`mk_id`);

--
-- Indexes for table `tb_matakuliah`
--
ALTER TABLE `tb_matakuliah`
  ADD PRIMARY KEY (`mk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `mhs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_mahasiswa_nilai`
--
ALTER TABLE `tb_mahasiswa_nilai`
  MODIFY `mhs_nilai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_matakuliah`
--
ALTER TABLE `tb_matakuliah`
  MODIFY `mk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_mahasiswa_nilai`
--
ALTER TABLE `tb_mahasiswa_nilai`
  ADD CONSTRAINT `tb_mahasiswa_mhs_id_foreign` FOREIGN KEY (`mhs_id`) REFERENCES `tb_mahasiswa` (`mhs_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_matakuliah_mk_id_foreign` FOREIGN KEY (`mk_id`) REFERENCES `tb_matakuliah` (`mk_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
