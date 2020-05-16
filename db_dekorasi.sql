-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 19, 2020 at 07:18 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_dekorasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dekorasi`
--

CREATE TABLE IF NOT EXISTS `tb_dekorasi` (
  `id_dekorasi` int(50) NOT NULL AUTO_INCREMENT,
  `jenis_dekorasi` varchar(50) NOT NULL,
  `harga_sewa` int(50) NOT NULL,
  `detail_dekorasi` varchar(50) NOT NULL,
  `ketersediaan` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  PRIMARY KEY (`id_dekorasi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tb_dekorasi`
--

INSERT INTO `tb_dekorasi` (`id_dekorasi`, `jenis_dekorasi`, `harga_sewa`, `detail_dekorasi`, `ketersediaan`, `foto`) VALUES
(1, 'Tenda', 150000, 'detail Tenda', '10', 'tenda.JPEG'),
(2, 'Kursi Pelaminan', 200000, 'detail', '5', 'kursipelaminan.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_member`
--

CREATE TABLE IF NOT EXISTS `tb_member` (
  `id_member` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id_member`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyewa`
--

CREATE TABLE IF NOT EXISTS `tb_penyewa` (
  `id_penyewa` int(250) NOT NULL AUTO_INCREMENT,
  `nama_penyewa` varchar(50) NOT NULL,
  `alamat_penyewa` varchar(100) NOT NULL,
  `no_telepon` int(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `id_dekorasi` int(100) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  PRIMARY KEY (`id_penyewa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE IF NOT EXISTS `tb_transaksi` (
  `id_transaksi` int(50) NOT NULL AUTO_INCREMENT,
  `id_penyewa` int(50) NOT NULL,
  `id_dekorasi` int(50) NOT NULL,
  `harga_sewa` int(50) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `total_sewa` int(100) NOT NULL,
  `denda` int(50) NOT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `id_user` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
