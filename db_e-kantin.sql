-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 21, 2019 at 03:21 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_e-kantin`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

DROP TABLE IF EXISTS `barang`;
CREATE TABLE IF NOT EXISTS `barang` (
  `id_barang` int(11) NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(10) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `stok` int(5) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `harga_suplayer` int(11) DEFAULT NULL,
  `laba` int(11) DEFAULT NULL,
  `nama_suplayer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `kode_barang`, `nama_barang`, `stok`, `harga`, `harga_suplayer`, `laba`, `nama_suplayer`) VALUES
(1, 'BRG0001', 'Buku', 36, 3000, 2500, 500, 'Aisyah'),
(2, 'BRG0002', 'Pena', 91, 5000, 4500, 500, 'Yusuf');

-- --------------------------------------------------------

--
-- Table structure for table `detail_tabungan`
--

DROP TABLE IF EXISTS `detail_tabungan`;
CREATE TABLE IF NOT EXISTS `detail_tabungan` (
  `no_santri` varchar(20) DEFAULT NULL,
  `saldo_tambahan` int(11) DEFAULT NULL,
  `waktu` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_tabungan`
--

INSERT INTO `detail_tabungan` (`no_santri`, `saldo_tambahan`, `waktu`) VALUES
('SN00002', 22000, '23-03-2018 18:05:19'),
('SN00002', 30000, '23-03-2018 18:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `pengambilan_suplayer`
--

DROP TABLE IF EXISTS `pengambilan_suplayer`;
CREATE TABLE IF NOT EXISTS `pengambilan_suplayer` (
  `id_pengambilan` int(11) NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(10) DEFAULT NULL,
  `tgl_pengambilan` date DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `sisa_barang` int(11) DEFAULT NULL,
  `nominal_uang` int(11) DEFAULT NULL,
  `petugas` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_pengambilan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengambilan_suplayer`
--

INSERT INTO `pengambilan_suplayer` (`id_pengambilan`, `kode_barang`, `tgl_pengambilan`, `jumlah`, `sisa_barang`, `nominal_uang`, `petugas`) VALUES
(1, 'BRG0001', '2018-07-07', 62, 38, 155000, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_detail`
--

DROP TABLE IF EXISTS `penjualan_detail`;
CREATE TABLE IF NOT EXISTS `penjualan_detail` (
  `kode_penjualan` varchar(20) DEFAULT NULL,
  `kode_barang` varchar(20) DEFAULT NULL,
  `qty` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`kode_penjualan`, `kode_barang`, `qty`) VALUES
('PJ00001', 'BRG0002', 4),
('PJ00001', 'BRG0001', 2);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_header`
--

DROP TABLE IF EXISTS `penjualan_header`;
CREATE TABLE IF NOT EXISTS `penjualan_header` (
  `id_penjualan` int(11) NOT NULL AUTO_INCREMENT,
  `kode_penjualan` varchar(20) DEFAULT NULL,
  `no_santri` varchar(30) DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL,
  `tgl_penjualan` date DEFAULT NULL,
  `kasir` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_penjualan`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan_header`
--

INSERT INTO `penjualan_header` (`id_penjualan`, `kode_penjualan`, `no_santri`, `total_harga`, `tgl_penjualan`, `kasir`) VALUES
(6, 'PJ00001', 'SN00002', 26000, '2018-03-19', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `santri`
--

DROP TABLE IF EXISTS `santri`;
CREATE TABLE IF NOT EXISTS `santri` (
  `id_santri` int(11) NOT NULL AUTO_INCREMENT,
  `no_santri` varchar(10) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` text,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `no_telp` varchar(12) DEFAULT NULL,
  `kelas` varchar(30) DEFAULT NULL,
  `unit_pendidikan` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_santri`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `santri`
--

INSERT INTO `santri` (`id_santri`, `no_santri`, `nama`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `no_telp`, `kelas`, `unit_pendidikan`) VALUES
(22, 'SN00001', 'Boy Kurniawan', 'gsg', 'sdf', '2018-12-31', '6543452', 'hgkh', 'khkjh'),
(23, 'SN00002', 'Jonii', 'hdh', 'dkhja', '2017-12-24', '987636476364', 'asdh', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setoran_suplayer`
--

DROP TABLE IF EXISTS `setoran_suplayer`;
CREATE TABLE IF NOT EXISTS `setoran_suplayer` (
  `id_setoran` int(11) NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(10) DEFAULT NULL,
  `tgl_setoran` date DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `petugas` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_setoran`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setoran_suplayer`
--

INSERT INTO `setoran_suplayer` (`id_setoran`, `kode_barang`, `tgl_setoran`, `jumlah`, `petugas`) VALUES
(1, 'BRG0001', '2018-07-10', 100, 'Administrator'),
(2, 'BRG0002', '2018-07-19', 100, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `suplayer`
--

DROP TABLE IF EXISTS `suplayer`;
CREATE TABLE IF NOT EXISTS `suplayer` (
  `id_suplayer` int(11) NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(50) DEFAULT NULL,
  `nama_suplayer` varchar(50) DEFAULT NULL,
  `jumlah_storan` int(10) DEFAULT NULL,
  `tgl_penyetoran` date DEFAULT NULL,
  `jumlah_terjual` int(5) DEFAULT NULL,
  `sisa_barang` int(5) DEFAULT NULL,
  `nominal_uang` int(11) DEFAULT NULL,
  `tgl_pengambilan` date DEFAULT NULL,
  `petugas` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_suplayer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabungan`
--

DROP TABLE IF EXISTS `tabungan`;
CREATE TABLE IF NOT EXISTS `tabungan` (
  `id_tabungan` int(11) NOT NULL AUTO_INCREMENT,
  `no_santri` varchar(10) DEFAULT NULL,
  `saldo` int(10) DEFAULT NULL,
  `pengeluaran` int(10) DEFAULT '0',
  `waktu` varchar(50) DEFAULT NULL,
  `saldo_tambahan` int(10) DEFAULT '0',
  PRIMARY KEY (`id_tabungan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabungan`
--

INSERT INTO `tabungan` (`id_tabungan`, `no_santri`, `saldo`, `pengeluaran`, `waktu`, `saldo_tambahan`) VALUES
(2, 'SN00001', 101000, 0, '19-03-2018 18:43:20', 1000),
(3, 'SN00002', 41000, 29000, '19-03-2018 18:56:14', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `unit` varchar(30) DEFAULT '0',
  `level` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `username`, `password`, `foto`, `unit`, `level`) VALUES
(1, 'Administrator', 'admin', 'admin', 'user_1521020506.png', '0', 'admin'),
(2, 'Kasir', 'kasir', 'kasir', 'user_1521461555.png', '0', 'kasir'),
(3, 'Tabungan', 'tabungan', 'tabungan', 'user_1521805089.png', '0', 'tabungan');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
