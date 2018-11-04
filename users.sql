-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2018 at 02:03 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `search`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`) VALUES
(1, 'dusan', 'dusan.pavlovic88@yahoo.com', 'dusan'),
(2, 'nenad', 'nenad@gmail.com', 'nenad'),
(3, 'dusan', 'dusan.pavlovic88@yahoo.com', 'dusan'),
(4, 'nenad', 'nenad@gmail.com', 'nenad'),
(5, 'klaker', 'klaker@gmail.com', 'klaker'),
(6, 'kucica', 'kucica@gmail.com', 'kucica'),
(7, 'kucica', 'kucica@gmail.com', 'petice'),
(8, 'kucice', 'kucice@gmail.com', 'kucicw'),
(9, '', '', ''),
(10, '', '', ''),
(11, 'jana', 'jana@gmail.com', 'janajana'),
(12, '', '', ''),
(13, '', '', ''),
(14, '', '', ''),
(15, '', '', ''),
(16, '', 'rade.mag@gmail.com', 'rade'),
(17, '', 'rade.mag@gmail.com', 'rade'),
(18, '', 'rade.mag@gmail.com', ''),
(19, '', '', ''),
(20, '', '', ''),
(21, '', '', ''),
(22, '', '', ''),
(23, '', '', ''),
(24, '', '', ''),
(25, 'Milana', 'milana@gmail.com', ''),
(26, 'Milana', 'milana@gmail.com', 'admin22'),
(27, '', '', ''),
(28, '', '', ''),
(29, '', '', ''),
(30, '', '', ''),
(31, '', '', ''),
(32, '', '', ''),
(33, 'telefoni', 'telefoni@gmail.com', 'telefoni'),
(34, 'admin', 'admin22@gmail.com', 'admin'),
(35, 'admin', 'admin@gmail.com', 'admin'),
(36, 'admin', 'adminadmin@gamil.com', 'admin'),
(37, 'admin', 'ajkula@gmail.com', 'admin'),
(38, 'nidzavestica', 'nidzav@gmail.com', 'nidzavestica'),
(39, 'dusa', 'dusan@gmail.com', '123'),
(40, 'nikola', 'nikola.nikolic@gmail.com', '123456'),
(41, 'flasica', 'flasica@yahoo.com', 'flasica');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
