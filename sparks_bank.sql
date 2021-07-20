-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2021 at 03:50 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Shruthi', 'Swathi', 25000, '2021-07-10 21:42:57'),
(2, 'Bhavana', 'Arpitha', 30000, '2021-07-10 21:46:35'),
(3, 'Keerthana', 'Vaishnavi', 45000, '2021-07-10 21:48:37'),
(4, 'Shreesh', 'Krishna', 20000, '2021-07-10 21:53:28'),
(5, 'Anjan', 'Abhi', 30000, '2021-07-10 21:58:07'),
(6, 'Rakshith', 'Ranjith', 35000, '2021-07-10 21:58:55'),
(7, 'Aishwarya', 'Amogh', 42000, '2021-07-10 21:59:33'),
(8, 'John', 'Mary', 55000, '2021-07-10 22:01:35'),
(9, 'Swadish', 'Bindu', 60000, '2021-07-10 22:02:28');
(10, 'Sankeerth', 'Surya', 58000, '2021-07-10 22:03:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Shruthi', 'shruthi18@gmail.com', 6632),
(2, 'Bhavana', 'bhav19@gmail.com', 87400),
(3, 'Keerthana', 'keerthi08@gmail.com', 3456),
(4, 'Shreesh', 'shreesht@gmail.com', 23868),
(5, 'Anjan', 'anjan24@gmail.com', 23430),
(6, 'Ranjith', 'ranjithr@gmail.com', 12000),
(7, 'Aishwarya', 'aishwarya24@gmail.com', 53020),
(8, 'John', 'john@gmail.com', 23850),
(9, 'Swadish', 'swadish20@gmail.com', 85000),
(10, 'Sankeerth', 'sankeerth07@gmail.com', 7320);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
