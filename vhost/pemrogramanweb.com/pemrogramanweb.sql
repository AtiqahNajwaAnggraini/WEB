-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 09:20 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemrogramanweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_datadiri`
--

CREATE TABLE `tbl_datadiri` (
  `id_datadiri` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `email` varchar(40) NOT NULL,
  `deskripsi` varchar(400) NOT NULL,
  `sandi` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_datadiri`
--

INSERT INTO `tbl_datadiri` (`id_datadiri`, `nama`, `no_hp`, `email`, `deskripsi`, `sandi`) VALUES
(1, 'Atiqah Najwa Anggraini', '082390400998', 'atiqahnajwaanggraini@gmail.com', 'Saya berasal dari Indragiri Hilir, Tembilahan, Riau. Sekarang saya berkuliah di Politeknik Kampar di program studi Teknik Informatika. Sekarang saya sedang menjalani semester 4.', 202013024);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galery`
--

CREATE TABLE `tbl_galery` (
  `id_galery` int(5) NOT NULL,
  `tahun_galery` year(4) NOT NULL,
  `label` varchar(15) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_keahlian`
--

CREATE TABLE `tbl_keahlian` (
  `id_keahlian` int(5) NOT NULL,
  `nama_skill` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_keahlian`
--

INSERT INTO `tbl_keahlian` (`id_keahlian`, `nama_skill`) VALUES
(1, 'Desain Grafis'),
(2, 'Web Desain'),
(3, 'Desain UI & UX'),
(4, 'Pemetaan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_organisasi`
--

CREATE TABLE `tbl_organisasi` (
  `id_organisasi` int(5) NOT NULL,
  `nama_organisasi` varchar(30) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `periode` varchar(10) NOT NULL,
  `deskripsi` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_organisasi`
--

INSERT INTO `tbl_organisasi` (`id_organisasi`, `nama_organisasi`, `jabatan`, `periode`, `deskripsi`) VALUES
(1, 'BEM', 'Sekretaris', '2021-2022', ''),
(2, 'HIMA Teknik Informatika', 'Anggota Bidang Norma & Etika', '2022-2023', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_datadiri`
--
ALTER TABLE `tbl_datadiri`
  ADD PRIMARY KEY (`id_datadiri`);

--
-- Indexes for table `tbl_galery`
--
ALTER TABLE `tbl_galery`
  ADD PRIMARY KEY (`id_galery`);

--
-- Indexes for table `tbl_keahlian`
--
ALTER TABLE `tbl_keahlian`
  ADD PRIMARY KEY (`id_keahlian`);

--
-- Indexes for table `tbl_organisasi`
--
ALTER TABLE `tbl_organisasi`
  ADD PRIMARY KEY (`id_organisasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_datadiri`
--
ALTER TABLE `tbl_datadiri`
  MODIFY `id_datadiri` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_galery`
--
ALTER TABLE `tbl_galery`
  MODIFY `id_galery` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_keahlian`
--
ALTER TABLE `tbl_keahlian`
  MODIFY `id_keahlian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_organisasi`
--
ALTER TABLE `tbl_organisasi`
  MODIFY `id_organisasi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
