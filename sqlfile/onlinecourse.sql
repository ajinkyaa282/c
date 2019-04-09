-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2019 at 02:49 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `onlinecourse`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'ajay', '2017-01-24 16:21:18', '21-05-2018 03:31:37 PM');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseCode` varchar(255) NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `courseUnit` varchar(255) NOT NULL,
  `noofSeats` int(11) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseCode`, `courseName`, `courseUnit`, `noofSeats`, `creationDate`, `updationDate`) VALUES
(1, 'SWE1007', 'JAva', '8', 10, '2017-02-11 17:39:10', '21-05-2018 03:33:37 PM'),
(2, 'SWE1003', 'DigitalLogic', '8', 10, '2017-02-11 17:52:25', '12-02-2017 12:23:35 AM'),
(3, 'SWE1008', 'WebTech', '8', 10, '2019-04-09 12:41:15', ''),
(4, 'SWE1006', 'TOC', '1-8', 10, '2017-02-11 18:47:25', '');

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolls`
--

CREATE TABLE IF NOT EXISTS `courseenrolls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentRegno` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `session` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `course` int(11) NOT NULL,
  `enrollDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `session`, `department`, `level`, `semester`, `course`, `enrollDate`) VALUES
(5, '17MIS0118', '605110', 3, 1, 6, 4, 1, '2019-04-09 12:36:15');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(1, 'Account', '2017-02-09 18:52:00'),
(2, 'HR', '2017-02-09 18:52:04'),
(3, 'Admin', '2017-02-09 18:52:08'),
(5, 'Test', '2017-02-09 18:55:08'),
(7, 'IT', '2018-05-21 10:03:15');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE IF NOT EXISTS `level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`, `creationDate`) VALUES
(5, 'Level 1', '2017-02-09 19:04:04'),
(6, 'level 2', '2017-02-09 19:04:12'),
(7, 'level 3', '2017-02-09 19:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE IF NOT EXISTS `semester` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `semester` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(3, 'Fifth Sem', '2019-04-09 12:43:51', ''),
(4, 'Second sem', '2017-02-09 18:47:59', ''),
(5, 'Third Sem', '2017-02-09 18:48:04', ''),
(6, 'Fourth Sem', '2018-05-21 10:02:56', '');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
(1, '2015', '2017-02-09 18:16:51'),
(2, '2016', '2017-02-09 18:27:41'),
(3, '2017', '2018-05-21 10:01:54'),
(4, '2018', '2018-05-21 10:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `studentName` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `cgpa` decimal(10,2) NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`StudentRegno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa`, `creationdate`, `updationDate`) VALUES
('17MIS0118', '1.jpg', 'ajinkyaa', 'Ajay S S', '605110', '', '', '', '8.30', '0000-00-00 00:00:00', '21-05-2018 03:20:40 PM'),
('17MIS0230', '2.jpg', 'dolle', 'Sudheerkumar Viyaa', '632014', '', '', '', '9.07', '2019-04-09 12:44:57', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentRegno` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, '10806121', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-11 20:05:58', '', 1),
(2, '10806121', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-11 20:07:18', '', 1),
(3, '10806121', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-11 20:08:46', '', 1),
(4, '10806121', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-11 20:26:15', '', 1),
(5, '10806121', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-11 20:27:11', '', 1),
(6, '10806121', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-11 20:28:19', '', 1),
(7, '10806121', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-11 20:29:30', '', 1),
(8, '10806121', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-11 20:30:39', '12-02-2017 02:00:40 AM', 1),
(9, '10806121', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-11 20:32:12', '12-02-2017 02:21:40 AM', 1),
(10, '10806121', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-11 20:51:50', '12-02-2017 05:14:45 AM', 1),
(11, '10806121', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-12 05:41:24', '12-02-2017 11:49:58 AM', 1),
(12, '10806121', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-12 06:20:05', '', 1),
(13, '10806121', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-02-12 06:20:23', '12-02-2017 12:09:59 PM', 1),
(14, '10806121', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-05-21 09:49:06', '21-05-2018 03:30:53 PM', 1),
(15, '10806121', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-05-21 10:19:15', '', 1),
(16, '17MIS0118', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-04-09 12:33:42', '09-04-2019 06:15:02 PM', 1),
(17, '17MIS0118', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-04-09 12:47:17', '09-04-2019 06:17:19 PM', 1),
(18, '17MIS0230', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-04-09 12:47:42', '', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
