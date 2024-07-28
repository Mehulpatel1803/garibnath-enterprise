-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2024 at 08:01 AM
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
-- Database: `garibnath_stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `chaaki`
--

CREATE TABLE `chaaki` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chaaki`
--

INSERT INTO `chaaki` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(5, 'mehulpatel', 100, 60, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `cr_bearing`
--

CREATE TABLE `cr_bearing` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cr_bearing`
--

INSERT INTO `cr_bearing` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(14, 'abc', 20, 30, 110.00),
(16, 'mehul', 0, 0, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `dayfrem`
--

CREATE TABLE `dayfrem` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dayfrem`
--

INSERT INTO `dayfrem` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(3, 'xyz', 2, 6, 100.00),
(5, 'mehulpatel', 100, 60, 10000.00),
(6, 'mehulpatel', 1, 0, 10.00),
(7, 'bhawna', 0, 100, 20.00),
(8, 'ashish magaj', 0, 0, 10.00),
(9, 'smit', 0, 100, 1000.00),
(10, 'umage', 5, 20, 100.00),
(11, 'meet', 20, 20, 20.00);

-- --------------------------------------------------------

--
-- Table structure for table `dp_hc`
--

CREATE TABLE `dp_hc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dp_hc`
--

INSERT INTO `dp_hc` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(14, 'abc', 20, 30, 110.00),
(16, 'mehul', 0, 0, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `dp_hji`
--

CREATE TABLE `dp_hji` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dp_hji`
--

INSERT INTO `dp_hji` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(3, 'xyz', 2, 6, 100.00),
(5, 'mehulpatel', 100, 60, 10000.00),
(6, 'mehulpatel', 1, 0, 10.00),
(7, 'bhawna', 0, 100, 20.00),
(8, 'ashish magaj', 0, 0, 10.00),
(9, 'smit', 0, 100, 1000.00),
(10, 'umage', 5, 20, 100.00),
(11, 'meet', 20, 20, 20.00);

-- --------------------------------------------------------

--
-- Table structure for table `gear`
--

CREATE TABLE `gear` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gear`
--

INSERT INTO `gear` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(14, 'abc', 20, 30, 110.00),
(16, 'mehul', 0, 0, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `gs_bolt`
--

CREATE TABLE `gs_bolt` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gs_bolt`
--

INSERT INTO `gs_bolt` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(14, 'abc', 20, 30, 110.00),
(16, 'mehul', 0, 0, 100.00),
(18, 'GERA SETTING BOLT', 2, 12, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `hafhround`
--

CREATE TABLE `hafhround` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hafhround`
--

INSERT INTO `hafhround` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(14, 'abc', 20, 30, 110.00),
(16, 'mehul', 0, 0, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `haighlet`
--

CREATE TABLE `haighlet` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `haighlet`
--

INSERT INTO `haighlet` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(5, 'mehulpatel', 100, 60, 1000.00);

-- --------------------------------------------------------

--
-- Table structure for table `hj_r`
--

CREATE TABLE `hj_r` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hj_r`
--

INSERT INTO `hj_r` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(3, 'xyz', 2, 6, 100.00),
(5, 'mehulpatel', 100, 60, 10000.00),
(6, 'mehulpatel', 1, 0, 10.00),
(7, 'bhawna', 0, 100, 20.00),
(8, 'ashish magaj', 0, 0, 10.00),
(9, 'smit', 0, 100, 1000.00),
(10, 'umage', 5, 20, 100.00),
(11, 'meet', 20, 20, 20.00);

-- --------------------------------------------------------

--
-- Table structure for table `hj_rr`
--

CREATE TABLE `hj_rr` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hj_rr`
--

INSERT INTO `hj_rr` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(14, 'abc', 20, 30, 110.00),
(16, 'mehul', 0, 0, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `jaadi`
--

CREATE TABLE `jaadi` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jaadi`
--

INSERT INTO `jaadi` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(5, 'mehulpatel', 100, 60, 10000.00),
(6, 'mehulpatel', 1, 0, 10.00),
(7, 'bhawna', 0, 100, 20.00),
(8, 'ashish magaj', 0, 0, 10.00),
(9, 'smit', 0, 100, 1000.00),
(10, 'umage', 5, 20, 100.00),
(11, 'meet', 20, 20, 20.00);

-- --------------------------------------------------------

--
-- Table structure for table `jkr_roller`
--

CREATE TABLE `jkr_roller` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jkr_roller`
--

INSERT INTO `jkr_roller` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(14, 'abc', 20, 30, 110.00),
(16, 'mehul', 0, 0, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `jk_roller`
--

CREATE TABLE `jk_roller` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jk_roller`
--

INSERT INTO `jk_roller` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(5, 'mehulpatel', 100, 60, 100.00),
(7, '14x25 stud bolt', 2, 10, 20.00);

-- --------------------------------------------------------

--
-- Table structure for table `nut_bolt`
--

CREATE TABLE `nut_bolt` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nut_bolt`
--

INSERT INTO `nut_bolt` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(3, 'xyz', 2, 6, 100.00),
(5, 'mehulpatel', 100, 60, 10000.00),
(6, 'mehulpatel', 1, 0, 10.00),
(7, 'bhawna', 0, 100, 20.00),
(8, 'ashish magaj', 0, 0, 10.00),
(9, 'smit', 0, 100, 1000.00),
(10, 'umage', 5, 20, 100.00),
(11, 'meet', 20, 20, 20.00);

-- --------------------------------------------------------

--
-- Table structure for table `oil_seal`
--

CREATE TABLE `oil_seal` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oil_seal`
--

INSERT INTO `oil_seal` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(14, 'abc', 20, 30, 110.00),
(16, 'mehul', 0, 0, 100.00),
(18, 'OIL SEAL', 1, 2, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `o_motar`
--

CREATE TABLE `o_motar` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `o_motar`
--

INSERT INTO `o_motar` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(5, 'mehulpatel', 100, 60, 10000.00);

-- --------------------------------------------------------

--
-- Table structure for table `pulley`
--

CREATE TABLE `pulley` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pulley`
--

INSERT INTO `pulley` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(14, 'abc', 20, 30, 110.00),
(16, 'mehul', 0, 0, 100.00),
(18, 'Ramesh bhai patel', 6, 9, 10.00);

-- --------------------------------------------------------

--
-- Table structure for table `p_bearing`
--

CREATE TABLE `p_bearing` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_bearing`
--

INSERT INTO `p_bearing` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(5, 'mehulpatel', 100, 60, 10000.00);

-- --------------------------------------------------------

--
-- Table structure for table `p_bolt`
--

CREATE TABLE `p_bolt` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_bolt`
--

INSERT INTO `p_bolt` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(14, 'abc', 20, 30, 110.00),
(16, 'mehul', 0, 0, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `r_fream`
--

CREATE TABLE `r_fream` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `r_fream`
--

INSERT INTO `r_fream` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(3, 'xyz', 2, 6, 100.00),
(5, 'mehulpatel', 100, 60, 10000.00),
(6, 'mehulpatel', 1, 0, 10.00),
(7, 'bhawna', 0, 100, 20.00),
(9, 'smit', 0, 100, 1000.00),
(10, 'umage', 5, 20, 100.00),
(11, 'meet', 20, 20, 20.00);

-- --------------------------------------------------------

--
-- Table structure for table `stud_bolt`
--

CREATE TABLE `stud_bolt` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stud_bolt`
--

INSERT INTO `stud_bolt` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(14, 'abc', 20, 30, 110.00),
(16, 'mehul', 0, 0, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `togal`
--

CREATE TABLE `togal` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `togal`
--

INSERT INTO `togal` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(14, 'abc', 20, 30, 110.00),
(16, 'mehul', 0, 0, 100.00),
(20, 'TOGAL', 1, 3, 10.00);

-- --------------------------------------------------------

--
-- Table structure for table `togal_spring`
--

CREATE TABLE `togal_spring` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `togal_spring`
--

INSERT INTO `togal_spring` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(14, 'abc', 20, 30, 110.00),
(16, 'mehul', 0, 0, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `ts_rod`
--

CREATE TABLE `ts_rod` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ts_rod`
--

INSERT INTO `ts_rod` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(5, 'mehulpatel', 100, 60, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `t_pin`
--

CREATE TABLE `t_pin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_pin`
--

INSERT INTO `t_pin` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(3, 'xyz', 2, 6, 100.00),
(5, 'mehulpatel', 100, 60, 10000.00),
(6, 'mehulpatel', 1, 0, 10.00),
(7, 'bhawna', 0, 100, 20.00),
(8, 'ashish magaj', 0, 0, 10.00),
(9, 'smit', 0, 100, 1000.00);

-- --------------------------------------------------------

--
-- Table structure for table `t_spring`
--

CREATE TABLE `t_spring` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_spring`
--

INSERT INTO `t_spring` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(14, 'abc', 20, 30, 110.00),
(16, 'mehul', 0, 0, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `v_belt`
--

CREATE TABLE `v_belt` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `v_qty` int(11) NOT NULL,
  `g_qty` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_belt`
--

INSERT INTO `v_belt` (`id`, `name`, `v_qty`, `g_qty`, `rate`) VALUES
(5, 'mehulpatel', 100, 60, 10000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chaaki`
--
ALTER TABLE `chaaki`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_bearing`
--
ALTER TABLE `cr_bearing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dayfrem`
--
ALTER TABLE `dayfrem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_hc`
--
ALTER TABLE `dp_hc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_hji`
--
ALTER TABLE `dp_hji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gear`
--
ALTER TABLE `gear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_bolt`
--
ALTER TABLE `gs_bolt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hafhround`
--
ALTER TABLE `hafhround`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `haighlet`
--
ALTER TABLE `haighlet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hj_r`
--
ALTER TABLE `hj_r`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hj_rr`
--
ALTER TABLE `hj_rr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jaadi`
--
ALTER TABLE `jaadi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jkr_roller`
--
ALTER TABLE `jkr_roller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jk_roller`
--
ALTER TABLE `jk_roller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nut_bolt`
--
ALTER TABLE `nut_bolt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oil_seal`
--
ALTER TABLE `oil_seal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `o_motar`
--
ALTER TABLE `o_motar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pulley`
--
ALTER TABLE `pulley`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_bearing`
--
ALTER TABLE `p_bearing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_bolt`
--
ALTER TABLE `p_bolt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `r_fream`
--
ALTER TABLE `r_fream`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stud_bolt`
--
ALTER TABLE `stud_bolt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `togal`
--
ALTER TABLE `togal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `togal_spring`
--
ALTER TABLE `togal_spring`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ts_rod`
--
ALTER TABLE `ts_rod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_pin`
--
ALTER TABLE `t_pin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_spring`
--
ALTER TABLE `t_spring`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v_belt`
--
ALTER TABLE `v_belt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chaaki`
--
ALTER TABLE `chaaki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cr_bearing`
--
ALTER TABLE `cr_bearing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `dayfrem`
--
ALTER TABLE `dayfrem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dp_hc`
--
ALTER TABLE `dp_hc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `dp_hji`
--
ALTER TABLE `dp_hji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gear`
--
ALTER TABLE `gear`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `gs_bolt`
--
ALTER TABLE `gs_bolt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `hafhround`
--
ALTER TABLE `hafhround`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `haighlet`
--
ALTER TABLE `haighlet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hj_r`
--
ALTER TABLE `hj_r`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hj_rr`
--
ALTER TABLE `hj_rr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `jaadi`
--
ALTER TABLE `jaadi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jkr_roller`
--
ALTER TABLE `jkr_roller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `jk_roller`
--
ALTER TABLE `jk_roller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nut_bolt`
--
ALTER TABLE `nut_bolt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oil_seal`
--
ALTER TABLE `oil_seal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `o_motar`
--
ALTER TABLE `o_motar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pulley`
--
ALTER TABLE `pulley`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `p_bearing`
--
ALTER TABLE `p_bearing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `p_bolt`
--
ALTER TABLE `p_bolt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `r_fream`
--
ALTER TABLE `r_fream`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stud_bolt`
--
ALTER TABLE `stud_bolt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `togal`
--
ALTER TABLE `togal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `togal_spring`
--
ALTER TABLE `togal_spring`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ts_rod`
--
ALTER TABLE `ts_rod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `t_pin`
--
ALTER TABLE `t_pin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `t_spring`
--
ALTER TABLE `t_spring`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `v_belt`
--
ALTER TABLE `v_belt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
