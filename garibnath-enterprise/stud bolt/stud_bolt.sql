-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2024 at 11:45 PM
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
(3, 'xyz', 2, 6, 100.00),
(5, 'mehulpatel', 100, 60, 10000.00),
(6, 'mehulpatel', 10, 7, 10.00),
(7, 'bhawna', 0, 100, 20.00),
(8, 'ashish magaj', 0, 10, 10.00),
(9, 'smit', 0, 100, 1000.00),
(10, 'umage', 5, 20, 100.00),
(11, 'meet', 20, 20, 20.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stud_bolt`
--
ALTER TABLE `stud_bolt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stud_bolt`
--
ALTER TABLE `stud_bolt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
