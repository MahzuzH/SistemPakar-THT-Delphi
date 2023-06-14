-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2023 at 03:51 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sispak_db_tht`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabelgejala`
--

CREATE TABLE `tabelgejala` (
  `KodeGejala` char(20) DEFAULT NULL,
  `NamaGejala` char(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabelgejala`
--

INSERT INTO `tabelgejala` (`KodeGejala`, `NamaGejala`) VALUES
('G0001', 'Batuk'),
('G0002', 'Bersin'),
('G0003', 'Dahak mengalir di tengg'),
('G0004', 'Demam'),
('G0005', 'Hidung mampet'),
('G0006', 'Hidung mampet sebelah'),
('G0007', 'Hidung mampet sebelah s'),
('G0008', 'Memiliki riwayat mengor'),
('G0009', 'Penciuman berkurang'),
('G0010', 'Pendengaran berkurang'),
('G0011', 'Pilek encer'),
('G0012', 'Pilek'),
('G0013', 'Sakit kepala'),
('G0014', 'Telinga berair selama k'),
('G0015', 'Telinga mampet'),
('G0016', 'Telinga gatal'),
('G0017', 'Telinga nyeri'),
('G0018', 'Telinga berdengung');

-- --------------------------------------------------------

--
-- Table structure for table `tabelpenyakit`
--

CREATE TABLE `tabelpenyakit` (
  `KodePenyakit` varchar(6) DEFAULT NULL,
  `NamaPenyakit` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabelpenyakit`
--

INSERT INTO `tabelpenyakit` (`KodePenyakit`, `NamaPenyakit`) VALUES
('P0001', 'Otitis Media Akut (OMA)'),
('P0002', 'Otitis Eksterna (OE)'),
('P0003', 'Serumen (Kotoran Telinga)'),
('P0004', 'Sinusitis'),
('P0005', 'Rhinitis Kronis');

-- --------------------------------------------------------

--
-- Table structure for table `tabelpertanyaan`
--

CREATE TABLE `tabelpertanyaan` (
  `KodePertanyaan` varchar(6) DEFAULT NULL,
  `Pertanyaan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabelpertanyaan`
--

INSERT INTO `tabelpertanyaan` (`KodePertanyaan`, `Pertanyaan`) VALUES
('T0001', 'Apakah anda menderita batuk-batuk?'),
('T0002', 'Apakah anda sering bersin?'),
('T0003', 'Apakah anda merasa dahak mengalir di tengorokan?'),
('T0004', 'Apakah anda merasa demam?'),
('T0005', 'Apakah hidung anda mampet?'),
('T0006', 'Apakah hidung anda mampet sebelah?'),
('T0007', 'Apakah hidung anda mampet sebelah secara bergantia'),
('T0008', 'Apakah anda sering mengorek telinga?'),
('T0009', 'Apakah anda merasa penciuman berkurang?'),
('T0010', 'Apakah anda merasa pendengaran berkurang?'),
('T0011', 'Apakah pilek anda encer?'),
('T0012', 'Apakah anda sedang pilek?'),
('T0013', 'Apakah anda merasa sakit kepala?'),
('T0014', 'Apakah telinga anda berair selama kurang dari 2 bu'),
('T0016', 'Apakah anda merasa telinga gatal?'),
('T0017', 'Apakah anda merasa telinga nyeri?'),
('T0018', 'Apakah anda merasa telinga berdengung?'),
('T0015', 'Apakah anda merasa telinga mampet?');

-- --------------------------------------------------------

--
-- Table structure for table `tabelrule`
--

CREATE TABLE `tabelrule` (
  `KodeRule` varchar(6) DEFAULT NULL,
  `kodepertanyaan1` varchar(60) NOT NULL,
  `kodepenyakit` varchar(6) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabelrule`
--

INSERT INTO `tabelrule` (`KodeRule`, `kodepertanyaan1`, `kodepenyakit`) VALUES
('R0001', 'T0001,T0004,T0010,T0012,T0013,T0014,T0017,T0018', 'P0001'),
('R0002', 'T0008,T0010,T0014,T0015,T0016,T0017,T0018', 'P0002'),
('R0003', 'T0008,T0010,T0015,T0016', 'P0003'),
('R0004', 'T0001,T0003,T0004,T0005,T0006,T0009,T0011,T0013', 'P0004'),
('R0005', 'T0002,T0005,T0007,T0009,T0011,T0012,T0013', 'P0005');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
