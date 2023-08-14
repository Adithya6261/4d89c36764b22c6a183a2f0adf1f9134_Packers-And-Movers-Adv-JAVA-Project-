-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2019 at 01:01 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `safex`
--

-- --------------------------------------------------------

--
-- Table structure for table `safexlogindetails`
--

CREATE TABLE `safexlogindetails` (
  `userid` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `user_type` varchar(15) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `safexlogindetails`
--

INSERT INTO `safexlogindetails` (`userid`, `email`, `password`, `name`, `user_type`, `status`) VALUES
(1, 'nkp@gmail.com', 'abc@123', 'Neelesh Kumar Prajapati', 'admin', 'active'),
(2, 'admin@admin.com', '123', 'Admin', 'admin', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `safexonlinequote`
--

CREATE TABLE `safexonlinequote` (
  `qquoteid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `moving_from` varchar(50) NOT NULL,
  `moving_to` varchar(50) NOT NULL,
  `moving_date` date NOT NULL,
  `message` varchar(250) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `isread` varchar(10) NOT NULL DEFAULT 'NO',
  `query_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `items_quantity` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `safexonlinequote`
--

INSERT INTO `safexonlinequote` (`qquoteid`, `name`, `phone`, `email`, `moving_from`, `moving_to`, `moving_date`, `message`, `company_name`, `isread`, `query_time`, `items_quantity`) VALUES
(1, 'Gunjan', '4444555569', 'gunjan@gmail.com', 'Bhopal', 'Habibganj', '2019-04-08', 'Test DATA', 'Wst', 'No', '2019-04-08 10:58:07', ' <br>tv-led-lcd - 1 <br>tv-trolly - 1');

-- --------------------------------------------------------

--
-- Table structure for table `safexquery`
--

CREATE TABLE `safexquery` (
  `queryid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `query` varchar(500) NOT NULL,
  `isread` varchar(20) NOT NULL DEFAULT 'NO',
  `query_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `safexquery`
--

INSERT INTO `safexquery` (`queryid`, `name`, `email`, `phone`, `subject`, `query`, `isread`, `query_time`) VALUES
(5, 'Neelesh ', 'nnn@gmail.com', '4545454444', 'asd', 'dsadasdasd', 'No', '2019-04-08 10:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `safexquickquote`
--

CREATE TABLE `safexquickquote` (
  `qquoteid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `moving_from` varchar(50) NOT NULL,
  `movingto` varchar(50) NOT NULL,
  `moving_date` date NOT NULL,
  `message` varchar(250) NOT NULL,
  `isread` varchar(10) NOT NULL DEFAULT 'NO',
  `query_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `safexquickquote`
--

INSERT INTO `safexquickquote` (`qquoteid`, `name`, `phone`, `email`, `moving_from`, `movingto`, `moving_date`, `message`, `isread`, `query_time`) VALUES
(3, 'Neelesh44', '4545454444', 'nnn4@gmail.com', 'Bhopal', 'Nagpur', '2019-04-16', 'Testtt 4', 'No', '2019-04-08 10:52:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `safexlogindetails`
--
ALTER TABLE `safexlogindetails`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `safexonlinequote`
--
ALTER TABLE `safexonlinequote`
  ADD PRIMARY KEY (`qquoteid`);

--
-- Indexes for table `safexquery`
--
ALTER TABLE `safexquery`
  ADD PRIMARY KEY (`queryid`);

--
-- Indexes for table `safexquickquote`
--
ALTER TABLE `safexquickquote`
  ADD PRIMARY KEY (`qquoteid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `safexlogindetails`
--
ALTER TABLE `safexlogindetails`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `safexonlinequote`
--
ALTER TABLE `safexonlinequote`
  MODIFY `qquoteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `safexquery`
--
ALTER TABLE `safexquery`
  MODIFY `queryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `safexquickquote`
--
ALTER TABLE `safexquickquote`
  MODIFY `qquoteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
