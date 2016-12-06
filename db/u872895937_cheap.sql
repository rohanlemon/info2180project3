
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 19, 2013 at 04:35 PM
-- Server version: 5.1.67
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u872895937_cheap`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `subject` text NOT NULL,
  `user_id` varchar(25) NOT NULL,
  `recipient_ids` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `body`, `subject`, `user_id`, `recipient_ids`, `date`) VALUES
(1, 'sdad', 'osha', 'b4oshany', 'b4oshany', '0000-00-00 00:00:00'),
(2, 'sada, this user does not exists', 'Unable to deliever to sada', 'admin', 'b4oshany', '0000-00-00 00:00:00'),
(3, 'sdadasd', 'sada', 'b4oshany', 'sada', '0000-00-00 00:00:00'),
(4, 'Just want to say hi', 'hi', 'b4oshany', 'admin', '0000-00-00 00:00:00'),
(5, 'Hi', 'Hola', 'britts', 'b4oshany', '0000-00-00 00:00:00'),
(6, 'Briits, this user does not exists', 'Unable to deliever to Briits', 'admin', 'b4oshany', '0000-00-00 00:00:00'),
(8, 'Hola you', 'Hi Back', 'b4oshany', 'britts', '0000-00-00 00:00:00'),
(9, 'dsf, this user does not exists', 'Unable to deliever to dsf', 'admin', 'admin', '0000-00-00 00:00:00'),
(10, 'cxzcxzc', 'sadasd', 'admin', 'dsf', '0000-00-00 00:00:00'),
(11, 'dsadsadad', 'adsadsad', 'b4oshany', 'admin', '0000-00-00 00:00:00'),
(12, '...1..2..3...', 'Testing...', 'ramobull', 'b4oshany;britts;admin', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `message_read`
--

CREATE TABLE IF NOT EXISTS `message_read` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL,
  `read_id` varchar(25) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `message_read`
--

INSERT INTO `message_read` (`id`, `message_id`, `read_id`, `date`) VALUES
(1, 8, 'britts', '2013-12-15 04:10:17'),
(2, 1, 'b4oshany', '2013-12-15 04:29:29'),
(3, 4, 'admin', '2013-12-15 05:20:09'),
(4, 9, 'admin', '2013-12-15 07:27:50'),
(5, 12, 'admin', '2013-12-18 04:55:12'),
(6, 11, 'admin', '2013-12-18 04:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `password`, `username`) VALUES
(1, 'Oshane', 'Bailey', 'dfb2576a6828ca862396db19cf4590e2', 'b4oshany'),
(2, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(3, 'Brittaney', 'Bailey', '4519b61367593114b9287d8c3ed74660', 'britts'),
(4, 'Ramoy', 'Leachman', 'f7d40225372cf7e28a50ab878af8cf3f', 'ramobull');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
