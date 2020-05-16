-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Inang: localhost
-- Waktu pembuatan: 18 Des 2019 pada 15.19
-- Versi Server: 5.5.25a
-- Versi PHP: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `db_rentcar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mobil`
--

CREATE TABLE IF NOT EXISTS `tb_mobil` (
  `id_mobil` int(50) NOT NULL AUTO_INCREMENT,
  `nama_mobil` varchar(50) DEFAULT NULL,
  `merek_mobil` varchar(50) DEFAULT NULL,
  `tipe_mobil` varchar(50) DEFAULT NULL,
  `tahun_mobil` varchar(50) DEFAULT NULL,
  `no_pol` varchar(50) DEFAULT NULL,
  `harga_sewa` varchar(50) DEFAULT NULL,
  `kapasitas_mobil` varchar(50) DEFAULT NULL,
  `status_mobil` varchar(50) DEFAULT NULL,
  `transmisi` varchar(20) NOT NULL,
  `nama_gambar` varchar(50) NOT NULL,
  `ketersediaan_mobil` varchar(20) NOT NULL,
  PRIMARY KEY (`id_mobil`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `tb_mobil`
--

INSERT INTO `tb_mobil` (`id_mobil`, `nama_mobil`, `merek_mobil`, `tipe_mobil`, `tahun_mobil`, `no_pol`, `harga_sewa`, `kapasitas_mobil`, `status_mobil`, `transmisi`, `nama_gambar`, `ketersediaan_mobil`) VALUES
(1, 'AVANZA(DK 3474 LH)', 'TOYOTA', 'G', '2018', 'DK 3474 LH', '300000', '8 Orang', 'Sehat', 'AUTOMATIC', 'avanza1.jpg', 'Tersedia'),
(2, 'KIJANG INNOVA(DK 4567 KW)', 'TOYOTA', 'V', '2017', 'DK 4567 KW', '400000', '8 Orang', 'Sehat', 'MANUAL', 'innova.jpg', 'Tersedia'),
(3, 'FORTUNER(DK 348 VU)', 'TOYOTA', 'TRD', '2018', 'DK 348 VU', '500000', '6 Orang', 'Sehat', 'AUTOMATIC', 'Fortuner.jpg', 'Tersedia'),
(4, 'G63 CLASS(DK 1 VU)', 'MERCEDES-BENZ', '4.0 SUV', '2019', 'DK 1 VU', '600000', '6 Orang', 'Sehat', 'AUTOMATIC', 'G63class.jpg', 'Tidak Tersedia'),
(5, 'Xpander(DK 789 QZ)', 'MITSHUBISHI', 'Xcross', '2018', 'DK 789 QZ', '400000', '6 Orang', 'Sehat', 'MANUAL', 'Xpander.jpg', 'Tidak Tersedia'),
(6, 'ALPHARD(DK 5557 QW)', 'TOYOTA', 'G', '2019', 'DK 5557 QW', '550000', '7 Orang', 'Sehat', 'AUTOMATIC', 'Alpard.jpg', 'Tidak Tersedia'),
(7, '488 SPIDER(B 178 LN)', 'FERRARI', 'SUPERCAR', '2016', 'B 178 LN', '5000000', '2 Orang', 'Sehat', 'AUTOMATIC', 'ferrari488.jpg', 'Tersedia'),
(8, 'SLK 250 AMG(B 250 AMG)', 'MERCEDES-BENZ', 'AMG', '2015', 'B 250 AMG', '3000000', '2 Orang', 'Sehat', 'MANUAL', 'Mercyslk250 (1).jpg', 'Tersedia'),
(9, 'CALIFORNIA(DK 6696 QZ)', 'FERRARI', 'SUPERCAR', '2016', 'DK 6696 QZ', '4000000', '2 Orang', 'Sehat', 'AUTOMATIC', 'FerrariCalifornia1.jpg', 'Tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penyewa`
--

CREATE TABLE IF NOT EXISTS `tb_penyewa` (
  `id_penyewa` int(50) NOT NULL AUTO_INCREMENT,
  `nama_penyewa` varchar(50) DEFAULT NULL,
  `alamat_penyewa` varchar(50) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_ktp` int(50) DEFAULT NULL,
  `id_mobil` varchar(50) DEFAULT NULL,
  `tanggal_peminjaman` date NOT NULL,
  `lama_peminjaman` varchar(50) NOT NULL,
  `tanggal_kembali` date NOT NULL,
  PRIMARY KEY (`id_penyewa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `tb_penyewa`
--

INSERT INTO `tb_penyewa` (`id_penyewa`, `nama_penyewa`, `alamat_penyewa`, `telepon`, `email`, `no_ktp`, `id_mobil`, `tanggal_peminjaman`, `lama_peminjaman`, `tanggal_kembali`) VALUES
(1, 'Tompel', 'Banjar Jawe', '087850767661', 'hendra.sudarmawan@undiksha.ac.id', 1234567890, '9', '2019-12-10', '2 hari', '2019-12-11'),
(5, 'Dekwis', 'Desa Mayong', '087863182610', 'dekwis@gmail.com', 123456789, '3', '2019-12-13', '4 Hari', '2019-12-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE IF NOT EXISTS `tb_transaksi` (
  `id_transaksi` int(50) NOT NULL AUTO_INCREMENT,
  `id_penyewa` varchar(50) DEFAULT NULL,
  `id_mobil` varchar(50) DEFAULT NULL,
  `no_pol` varchar(50) DEFAULT NULL,
  `harga_sewa` decimal(50,0) DEFAULT NULL,
  `tanggal_peminjaman` date DEFAULT NULL,
  `lama_peminjaman` varchar(50) DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `total` decimal(50,0) DEFAULT NULL,
  `denda` decimal(50,0) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `id_user` int(50) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `foto_user` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
