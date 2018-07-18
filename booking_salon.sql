-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2018 at 05:10 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking_salon`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(15) NOT NULL,
  `nama_admin` varchar(100) DEFAULT NULL,
  `email_admin` varchar(100) DEFAULT NULL,
  `tanggal_lahir_admin` date DEFAULT NULL,
  `tempat_lahir_admin` varchar(40) DEFAULT NULL,
  `agama_admin` varchar(15) DEFAULT NULL,
  `password_admin` varchar(100) DEFAULT NULL,
  `jk_admin` enum('L','P') DEFAULT NULL,
  `status_kerja` enum('Aktif','Tidak Aktif') DEFAULT NULL,
  `alamat_admin` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `email_admin`, `tanggal_lahir_admin`, `tempat_lahir_admin`, `agama_admin`, `password_admin`, `jk_admin`, `status_kerja`, `alamat_admin`) VALUES
('adm0001', 'Novi A', 'mail@mail.com', '1995-01-01', 'Jakarta', 'Islam', 'admin', 'P', 'Aktif', 'Jatiwaringin');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_servis`
--

CREATE TABLE `kategori_servis` (
  `id_kategori` varchar(15) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `ruang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_servis`
--

INSERT INTO `kategori_servis` (`id_kategori`, `nama_kategori`, `ruang`) VALUES
('KAT001', 'body treatment', 0),
('KAT002', 'facial treatment', 0),
('KAT003', 'hair treatment', 0),
('KAT004', 'hand and foot treatment', 0),
('KAT005', 'salon service', 0),
('KAT006', 'Paket PUTRI', 0),
('KAT007', 'paket AYU', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(15) NOT NULL,
  `nama_pelanggan` varchar(100) DEFAULT NULL,
  `email_pelanggan` varchar(100) DEFAULT NULL,
  `tanggal_lahir_pelanggan` date DEFAULT NULL,
  `tempat_lahir_pelanggan` varchar(40) DEFAULT NULL,
  `agama_pelanggan` varchar(15) DEFAULT NULL,
  `alamat_pelanggan` text,
  `password_pelanggan` varchar(100) DEFAULT NULL,
  `jk_pelanggan` enum('L','P') DEFAULT NULL,
  `tanggal_daftar` date DEFAULT NULL,
  `status_selesai_transaksi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email_pelanggan`, `tanggal_lahir_pelanggan`, `tempat_lahir_pelanggan`, `agama_pelanggan`, `alamat_pelanggan`, `password_pelanggan`, `jk_pelanggan`, `tanggal_daftar`, `status_selesai_transaksi`) VALUES
('PL000001', 'Mohammad Ichsan', 'ichsan.clay@gmail.com', '1997-06-17', 'Jakarta', 'Islam', 'JTW', 'password', 'L', '2018-05-17', NULL),
('PL000002', 'Harun A', 'har@mail.com', '1997-06-17', 'Jakarta', 'Islam', 'JTW', '1997-06-17', 'L', '2018-07-02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pimpinan`
--

CREATE TABLE `pimpinan` (
  `id_pimpinan` varchar(15) NOT NULL,
  `nama_pimpinan` varchar(100) DEFAULT NULL,
  `email_pimpinan` varchar(100) DEFAULT NULL,
  `tanggal_lahir_pimpinan` date DEFAULT NULL,
  `tempat_lahir_pimpinan` varchar(40) DEFAULT NULL,
  `agama_pimpinan` varchar(15) DEFAULT NULL,
  `password_pimpinan` varchar(100) DEFAULT NULL,
  `alamat_pimpinan` text,
  `jk_pimpinan` enum('L','P') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pimpinan`
--

INSERT INTO `pimpinan` (`id_pimpinan`, `nama_pimpinan`, `email_pimpinan`, `tanggal_lahir_pimpinan`, `tempat_lahir_pimpinan`, `agama_pimpinan`, `password_pimpinan`, `alamat_pimpinan`, `jk_pimpinan`) VALUES
('PM0001', 'Novi Feryanti', 'ichsan.clay@gmail.com', '1997-05-06', 'Jakarta', 'Islam', 'password', 'Jakarta', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `tipe_servis`
--

CREATE TABLE `tipe_servis` (
  `kode_servis` varchar(15) NOT NULL,
  `nama_servis` varchar(100) DEFAULT NULL,
  `id_kategori` varchar(15) DEFAULT NULL,
  `keterangan_servis` varchar(100) DEFAULT NULL,
  `gambar_servis` varchar(100) DEFAULT NULL,
  `harga_servis` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipe_servis`
--

INSERT INTO `tipe_servis` (`kode_servis`, `nama_servis`, `id_kategori`, `keterangan_servis`, `gambar_servis`, `harga_servis`) VALUES
('SVR0001', 'body massage', 'KAT001', '', '01_totok.jpg', 195000),
('SVR0002', 'body scrub (lulur)', 'KAT001', '', '02_facial.jpg', 250000),
('SVR0003', 'body masker', 'KAT001', '', '03_ear_candle.jpg', 255000),
('SVR0004', 'body steam', 'KAT001', '', '04_creambath.jpg', 110000),
('SVR0005', 'ratus', 'KAT001', '', '05_catok.jpg', 85000),
('SVR0006', 'basic facial wardah', 'KAT002', '', '06_curly.jpg', 100000),
('SVR0007', 'facial ristra biokos', 'KAT002', '', '07_lulur.jpg', 135000),
('SVR0008', 'anti aging facial', 'KAT002', '', '08_masker.jpg', 110000),
('SVR0009', 'acne treatment facial', 'KAT002', '', '09_manicure.jpg', 150000),
('SVR0010', 'whitening facial', 'KAT002', '', '10_spa.jpg', 120000),
('SVR0011', 'totok wajah', 'KAT002', '', '', 120000),
('SVR0012', 'masker wajah', 'KAT002', '', '', 120000),
('SVR0013', 'creambath buah (pendek)', 'KAT003', '', '', 120000),
('SVR0014', 'creambath buah (panjang)', 'KAT003', '', '', 120000),
('SVR0015', 'hair spa texture makarizo (pendek)', 'KAT003', '', '', 120000),
('SVR0016', 'hair spa texture makarizo (panjang)', 'KAT003', '', '', 120000),
('SVR0017', 'anti dandruff', 'KAT003', '', '', 120000),
('SVR0018', 'creambath matrix', 'KAT003', '', '', 120000),
('SVR0019', 'manicure', 'KAT004', '', '', 120000),
('SVR0020', 'pedicure', 'KAT004', '', '', 120000),
('SVR0021', 'manicure + pedicure', 'KAT004', '', '', 120000),
('SVR0022', 'foot spa', 'KAT004', '', '', 120000),
('SVR0023', 'reflexi', 'KAT004', '', '', 120000),
('SVR0024', 'hair cut (pendek)', 'KAT005', '', '', 120000),
('SVR0025', 'hair cut (panjang)', 'KAT005', '', '', 120000),
('SVR0026', 'potong poni', 'KAT005', '', '', 120000),
('SVR0027', 'blow variasi (pendek)', 'KAT005', '', '', 120000),
('SVR0028', 'blow variasi (panjang)', 'KAT005', '', '', 120000),
('SVR0029', 'jasa colouring henna', 'KAT005', '', '', 120000),
('SVR0030', 'Facial biokos + totok', 'KAT006', '', '', 120000),
('SVR0031', 'Facial wardah + totok', 'KAT006', '', '', 120000),
('SVR0032', 'body steam + body massage + scrub', 'KAT007', '', '', 120000),
('SVR0033', 'body massage + scrub + totok', 'KAT007', '', '', 120000),
('SVR0034', 'body masssage + Scrub ', 'KAT007', '', '', 120000),
('SVR0035', 'body massage + lulur + menipedi', 'KAT007', '', '', 120000),
('SVR0036', 'test', 'KAT001', 'test', '18_1.jpg', 123);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `kode_transaksi` varchar(15) NOT NULL,
  `id_pelanggan` varchar(15) DEFAULT NULL,
  `tanggal_transaksi` date DEFAULT NULL,
  `waktu_input_transaksi` time DEFAULT NULL,
  `id_admin` varchar(15) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `total_bayar` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`kode_transaksi`, `id_pelanggan`, `tanggal_transaksi`, `waktu_input_transaksi`, `id_admin`, `status`, `total_bayar`) VALUES
('TRA000001', 'PL000001', '2018-06-30', '00:33:06', '', 'Kadaluwarsa', 445000),
('TRA000002', 'PL000001', '2018-06-30', '01:07:38', '', 'Kadaluwarsa', 280000),
('TRA000003', 'PL000001', '2018-07-01', '22:20:59', '', 'Kadaluwarsa', 315000),
('TRA000004', 'adm0001', '2018-07-10', '16:22:09', 'adm0001', 'Telah Dibayar', 195000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id` int(11) NOT NULL,
  `kode_transaksi` varchar(15) DEFAULT NULL,
  `kode_servis` varchar(15) DEFAULT NULL,
  `tanggal_pemesanan` date DEFAULT NULL,
  `hari_pemesanan` varchar(15) DEFAULT NULL,
  `waktu_pemesanan` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id`, `kode_transaksi`, `kode_servis`, `tanggal_pemesanan`, `hari_pemesanan`, `waktu_pemesanan`) VALUES
(3, 'TRA000001', 'SVR0001', '2018-07-03', 'Selasa', '08:00:00'),
(4, 'TRA000001', 'SVR0002', '2018-07-03', 'Selasa', '09:00:00'),
(5, 'TRA000002', 'SVR0001', '2018-07-01', 'Minggu', '08:00:00'),
(6, 'TRA000002', 'SVR0005', '2018-07-02', 'Senin', '11:00:00'),
(7, 'TRA000003', 'SVR0001', '2018-07-05', 'Kamis', '08:00:00'),
(8, 'TRA000003', 'SVR0012', '2018-07-05', 'Kamis', '09:00:00'),
(10, 'TRA000004', 'SVR0001', '2018-07-13', 'Jumat', '08:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `kategori_servis`
--
ALTER TABLE `kategori_servis`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pimpinan`
--
ALTER TABLE `pimpinan`
  ADD PRIMARY KEY (`id_pimpinan`);

--
-- Indexes for table `tipe_servis`
--
ALTER TABLE `tipe_servis`
  ADD PRIMARY KEY (`kode_servis`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kode_transaksi`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
