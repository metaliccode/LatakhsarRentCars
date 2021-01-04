-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 05, 2017 at 12:13 PM
-- Server version: 5.0.67
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_laporan`
--

CREATE TABLE IF NOT EXISTS `tb_laporan` (
  `id_laporan` int(10) NOT NULL auto_increment,
  `peminjam` varchar(30) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `lama` int(10) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `total` varchar(20) NOT NULL,
  PRIMARY KEY  (`id_laporan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tb_laporan`
--

INSERT INTO `tb_laporan` (`id_laporan`, `peminjam`, `nopol`, `tgl_peminjaman`, `tgl_kembali`, `lama`, `harga`, `total`) VALUES
(1, 'Ihsan Miftahul Huda', 'Z 2', '2017-05-31', '2017-06-02', 2, '350000', '700000'),
(2, 'Glenn Nur Awwaluddin', 'Z 5', '2017-05-29', '2017-05-31', 2, '400000', '800000'),
(3, 'Fiki Firmansyah', 'Z 1 ', '2017-05-29', '2017-05-31', 2, '300000', '600000'),
(4, 'Rijal Zaelani', 'Z 2', '2017-05-29', '2017-05-31', 2, '400000', '800000'),
(5, 'Ibnu Aziz Nurochman', 'Z 6', '2017-05-29', '2017-05-30', 1, '350000', '350000'),
(6, 'Ihsan Miftahul Huda', 'Z 3', '2017-06-05', '2017-06-08', 3, '180000', '540000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mobil`
--

CREATE TABLE IF NOT EXISTS `tb_mobil` (
  `id_mobil` varchar(10) NOT NULL,
  `merek` varchar(20) NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY  (`id_mobil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mobil`
--

INSERT INTO `tb_mobil` (`id_mobil`, `merek`, `tipe`, `tahun`, `nopol`, `harga`, `status`) VALUES
('M001', 'VW', 'Ex', '2005', 'Z 5', '400000', 'Tersedia'),
('M002', 'Daihatsu', 'Vios', '2008', 'Z 4', '200000', 'Tersedia'),
('M003', 'Nwew', 'Sedan', '2012', 'Z 3', '180000', 'Tersedia'),
('M004', 'Suzuki', 'Eskudo', '2008', 'Z 2', '400000', 'Keluar'),
('M005', 'Toyota', 'Avanza', '2012', 'Z 1 ', '300000', 'Keluar'),
('M006', 'Toyota', 'Agya', '2015', 'Z 6', '350000', 'Keluar'),
('M008', 'Honda', 'Jazz', '2012', 'Z 9', '300000', 'Tersedia'),
('M007', 'Honda', 'Honda Mobilio', '2014', 'Z 8', '350000', 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjam`
--

CREATE TABLE IF NOT EXISTS `tb_peminjam` (
  `id_peminjam` int(10) NOT NULL auto_increment,
  `noktp` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `telp` varchar(12) NOT NULL,
  PRIMARY KEY  (`id_peminjam`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `tb_peminjam`
--

INSERT INTO `tb_peminjam` (`id_peminjam`, `noktp`, `nama`, `alamat`, `telp`) VALUES
(53, '2345678987654328', 'Febri Ardi saputra', 'Jl. AH Nasution, Asrama Granada, Kec Cibiru, Bandung', '086754266712'),
(65, '82377723849232436', 'Glenn Nur Awwaluddin', 'Cicalengka', '085452844837'),
(63, '2012732667384273', 'Ihsan Miftahul Huda', 'Ds. Talagasari, Kec. Kadungora, Kab. Garut ', '085352044517'),
(62, '123456527723132123', 'glenn', 'cicalengka', '085352044517'),
(61, '2132183789123787421', 'qoriah', 'bekasi', '085352044517'),
(60, '3200032456718293', 'Ihsan Miftahul Huda', 'Jl. Raya Kadungora, Kp. Sukamanah, Kadungora, Garut', '085352044517'),
(56, '1927382736478294', 'Rijal Zaelani', 'Jl. A.H Nasution,Asrama Granada, Cibiru, Bandung', '089976433212'),
(68, '1234566676565456', 'Ibnu Aziz Nurochman', 'Banjar', '089768877654'),
(67, '3456785433234567', 'Rijal Zaelani', 'Granada, Cibiru, Bandung', '089767766545'),
(66, '9877654321234567', 'Fiki Firmansyah', 'Granada, Cibiru, Bandung', '089263722731'),
(51, '9089764532163467', 'Fiki Firmansyah', 'Granada, Cipadung, Bandung', '089765843212'),
(52, '3204270101960006', 'Ibnu Aziz Nurochman', 'Granada, Jl.A.H Nasution, kec. Cibiru, Bandung', '085352044517'),
(69, '1232123456788987', 'Ihsan Miftahul Huda', 'Garut', '085352044517');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE IF NOT EXISTS `tb_transaksi` (
  `id_transaksi` int(20) NOT NULL auto_increment,
  `peminjam` varchar(20) NOT NULL,
  `nopol` varchar(20) default NULL,
  `harga` varchar(10) NOT NULL,
  `tgl_pinjaman` date default NULL,
  `tgl_kembali` date default NULL,
  `lama` int(10) default NULL,
  `total` varchar(10) default NULL,
  PRIMARY KEY  (`id_transaksi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `peminjam`, `nopol`, `harga`, `tgl_pinjaman`, `tgl_kembali`, `lama`, `total`) VALUES
(58, 'Ibnu Aziz Nurochman', 'Z 6', '350000', '2017-05-29', '2017-05-30', 1, '350000'),
(56, 'Fiki Firmansyah', 'Z 1 ', '300000', '2017-05-29', '2017-05-31', 2, '600000'),
(57, 'Rijal Zaelani', 'Z 2', '400000', '2017-05-29', '2017-05-31', 2, '800000'),
(59, 'Ihsan Miftahul Huda', 'Z 3', '180000', '2017-06-05', '2017-06-08', 3, '540000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` varchar(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY  (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `type`) VALUES
('U001', 'Ihsan Miftahul Huda ', 'ihsan', 'ihsan', 'Owner'),
('U002', 'Pirman Abdurrahman', 'pimen', 'Pimen', 'Admin'),
('U003', 'Febri Ardi Saputra', 'febri', 'febri', 'Admin'),
('U004', 'Admin', 'admin', 'admin', 'Admin'),
('U005', 'Owner', 'owner', 'owner', 'Owner'),
('U006', 'Ibnu Aziz Nurochman', 'ibnu', '1234', 'Admin'),
('U007', 'Fhadli Zhilal', 'fhadli', 'fhadli', 'Admin'),
('U008', 'Glenn', 'abah', '123', 'Admin');
