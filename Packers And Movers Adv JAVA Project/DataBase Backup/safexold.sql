-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2018 at 11:15 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `safex`
--

-- --------------------------------------------------------

--
-- Table structure for table `safex_logindetails`
--

CREATE TABLE IF NOT EXISTS `safex_logindetails` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `usertype` varchar(15) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `safex_logindetails`
--

INSERT INTO `safex_logindetails` (`userid`, `email`, `password`, `name`, `usertype`, `status`) VALUES
(1, 'nkp@gmail.com', 'abc@123', 'Neelesh Kumar Prajapati', 'admin', 'active'),
(2, 'admin@safexpackersmovers.com', '123', 'Admin', 'admin', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `safex_online_quote`
--

CREATE TABLE IF NOT EXISTS `safex_online_quote` (
  `qquoteid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `movingfrom` varchar(50) NOT NULL,
  `movingto` varchar(50) NOT NULL,
  `movingdate` date NOT NULL,
  `message` varchar(250) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `isread` varchar(10) NOT NULL DEFAULT 'NO',
  `query_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `itemsnqty` varchar(4000) NOT NULL,
  PRIMARY KEY (`qquoteid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `safex_query`
--

CREATE TABLE IF NOT EXISTS `safex_query` (
  `queryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `query` varchar(500) NOT NULL,
  `isread` varchar(20) NOT NULL DEFAULT 'NO',
  `query_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`queryid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `safex_query`
--

INSERT INTO `safex_query` (`queryid`, `name`, `email`, `phone`, `subject`, `query`, `isread`, `query_time`) VALUES
(1, 'Neelesh', 'nkp@gmail.com', '7828867719', 'test', 'test', 'YES', '2017-10-13 09:13:46'),
(2, 'Neelesh', 'nkp@gmail.com', '123123', '', 'dsdadadas\r\nsd\r\nad\r\nad', 'YES', '2017-10-14 11:31:27'),
(3, 'ranjeet', 'ranjeet@gmail.com', '7548754812', 'testing ', 'tttt', 'YES', '2017-10-14 11:42:17'),
(4, 'ranjeet', 'ranjeet@gmail.com', '7548754812', 'testing ', 'tttt', 'NO', '2017-10-14 12:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `safex_quick_quote`
--

CREATE TABLE IF NOT EXISTS `safex_quick_quote` (
  `qquoteid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `movingfrom` varchar(50) NOT NULL,
  `movingto` varchar(50) NOT NULL,
  `movingdate` date NOT NULL,
  `message` varchar(250) NOT NULL,
  `isread` varchar(10) NOT NULL DEFAULT 'NO',
  `query_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`qquoteid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `safex_quick_quote`
--

INSERT INTO `safex_quick_quote` (`qquoteid`, `name`, `phone`, `email`, `movingfrom`, `movingto`, `movingdate`, `message`, `isread`, `query_time`) VALUES
(1, 'Neelesh', '123123', 'nkp@gmail.com', 'bpl', 'cnb', '2017-10-12', 'dsdadadas\r\nsd\r\nad\r\nad', 'YES', '2017-10-14 11:36:32'),
(2, 'Neelesh', '123123', 'nkp@gmail.com', 'bpl', 'cnb', '2017-10-27', 'dsdadadas\r\nsd\r\nad\r\nad', 'YES', '2017-10-14 11:37:19');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
