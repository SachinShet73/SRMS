-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2019 at 03:43 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(9, 'first', 1, 'a', '2019-11-26 09:30:51', NULL),
(10, 'first', 1, 'b', '2019-11-26 09:31:02', NULL),
(11, 'second', 2, 'a', '2019-11-26 13:01:46', NULL),
(12, 'second', 2, 'b', '2019-11-26 13:16:32', NULL),
(13, 'third', 3, 'a', '2019-11-26 13:33:42', NULL),
(14, 'third', 3, 'b', '2019-11-26 13:33:59', NULL),
(15, 'fourth', 4, 'a', '2019-11-26 13:34:20', NULL),
(16, 'fourth', 4, 'b', '2019-11-26 13:34:35', NULL),
(17, 'fifth', 5, 'a', '2019-11-26 13:34:55', NULL),
(18, 'fifth', 5, 'b', '2019-11-26 13:35:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(1, 1, 9, 1, 100, '2019-11-26 09:35:10', NULL),
(2, 2, 10, 2, 100, '2019-11-26 09:36:04', NULL),
(3, 11, 10, 13, 58, '2019-11-26 14:21:40', NULL),
(4, 11, 10, 13, 65, '2019-11-26 14:21:40', NULL),
(5, 11, 10, 12, 74, '2019-11-26 14:21:40', NULL),
(6, 11, 10, 14, 83, '2019-11-26 14:21:40', NULL),
(7, 11, 10, 10, 92, '2019-11-26 14:21:40', NULL),
(8, 11, 10, 15, 45, '2019-11-26 14:21:41', NULL),
(9, 11, 10, 2, 20, '2019-11-26 14:21:41', NULL),
(10, 11, 10, 16, 85, '2019-11-26 14:21:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'umair', '46', 'a@a', 'Male', '2019-11-01', 9, '2019-11-26 09:32:06', NULL, 0),
(2, 'nischal', '45', 'a2@b', 'Male', '2019-11-02', 10, '2019-11-26 09:32:30', NULL, 0),
(3, 'prajwal', '63', 'prajwal@gmail.com', 'Male', '1999-12-08', 17, '2019-11-26 13:38:25', NULL, 1),
(4, 'nischal', '046', 'nischal@gmail.com', 'Male', '1999-12-05', 18, '2019-11-26 13:39:06', NULL, 1),
(5, 'poorvik', '058', 'poorvik@gmail.com', 'Male', '1999-12-04', 15, '2019-11-26 13:39:48', NULL, 1),
(6, 'gagan', '032', 'gagan@gmail.com', 'Male', '1999-06-16', 16, '2019-11-26 13:40:55', NULL, 1),
(7, 'dhanush', '072', 'dhan@gmail.com', 'Male', '2000-12-12', 13, '2019-11-26 13:41:55', NULL, 1),
(8, 'kunal', 'e071', 'k@gmail.com', 'Male', '2000-05-07', 14, '2019-11-26 13:43:01', NULL, 1),
(9, 'shreyas', 'ee19', 'shreyas@gmail.com', 'Male', '2000-07-05', 11, '2019-11-26 13:44:01', NULL, 1),
(10, 'karthik', 'cs55', 'k@gmail.com', 'Male', '2001-03-17', 9, '2019-11-26 13:45:12', NULL, 1),
(11, 'nikhil', 'is42', 'n@gmail.com', 'Male', '2001-02-15', 10, '2019-11-26 13:46:26', NULL, 1),
(12, 'nihal', '055', 'nihal@gmail.com', 'Male', '2001-12-31', 12, '2019-11-26 13:47:04', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(1, 9, 1, 1, '2019-11-26 09:31:36', NULL),
(2, 10, 2, 1, '2019-11-26 09:31:40', NULL),
(3, 9, 4, 1, '2019-11-26 13:53:28', NULL),
(4, 9, 5, 1, '2019-11-26 13:53:35', NULL),
(5, 9, 6, 1, '2019-11-26 13:53:46', NULL),
(6, 9, 7, 1, '2019-11-26 13:53:54', NULL),
(7, 9, 8, 1, '2019-11-26 13:54:06', NULL),
(8, 9, 9, 1, '2019-11-26 13:54:13', NULL),
(9, 10, 10, 1, '2019-11-26 13:59:54', NULL),
(10, 10, 11, 1, '2019-11-26 14:00:02', NULL),
(11, 10, 12, 1, '2019-11-26 14:00:16', NULL),
(12, 10, 13, 1, '2019-11-26 14:00:24', NULL),
(13, 10, 13, 0, '2019-11-26 14:00:32', '2019-11-26 14:01:33'),
(14, 10, 14, 1, '2019-11-26 14:00:47', NULL),
(15, 10, 15, 1, '2019-11-26 14:01:58', NULL),
(16, 10, 16, 1, '2019-11-26 14:03:26', NULL),
(17, 13, 17, 1, '2019-11-26 14:09:17', NULL),
(18, 13, 18, 1, '2019-11-26 14:09:37', NULL),
(19, 13, 19, 1, '2019-11-26 14:10:01', NULL),
(20, 13, 20, 1, '2019-11-26 14:16:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Engineering Mathematics-1', '17MAT11', '2019-11-26 09:31:19', NULL),
(2, 'Engineering Mathematics-2', '17MAT21', '2019-11-26 09:31:27', NULL),
(3, 'Data Structures', '17cs35', '2019-11-26 13:48:28', NULL),
(4, 'Engineering Physics', '17phy12', '2019-11-26 13:50:13', NULL),
(5, 'Elements of civil engineering and mechanics', '17civ13', '2019-11-26 13:50:52', NULL),
(6, 'Elements of mechanical engineering', '17eme14', '2019-11-26 13:51:15', NULL),
(7, 'Basic Electrical Engineering', '17ele15', '2019-11-26 13:51:55', NULL),
(8, 'Workshop Practice', '17Wsl16', '2019-11-26 13:52:22', NULL),
(9, 'Engineering Physics Laboratory', '17phyl17', '2019-11-26 13:52:59', NULL),
(10, 'Engineering Chemistry', '17che12', '2019-11-26 13:56:04', NULL),
(11, 'Programming in C and Data Structures', '17PCD23', '2019-11-26 13:57:22', NULL),
(12, 'Computer Aided Engineering Drawing', '17CED24', '2019-11-26 13:57:55', NULL),
(13, 'Basic Electronics', '17ELN25', '2019-11-26 13:58:30', NULL),
(14, 'Computer Programming Laboratory', '17CPL26', '2019-11-26 13:58:48', NULL),
(15, 'Engineering Chemistry Laboratory', '17CHEL27', '2019-11-26 13:59:16', NULL),
(16, 'Environmental Studies (Audit Course)', '17CIV28', '2019-11-26 13:59:37', NULL),
(17, 'Engineering Mathematics - III', '17MAT31', '2019-11-26 14:04:37', NULL),
(18, 'Analog and Digital Electronics', '17CS32', '2019-11-26 14:05:26', NULL),
(19, 'Data Structures and Applications', '17CS33', '2019-11-26 14:05:48', NULL),
(20, 'Computer Organization', '17CS34', '2019-11-26 14:06:06', NULL),
(21, 'Unix and Shell Programming', '17CS35', '2019-11-26 14:06:31', NULL),
(22, 'Discrete Mathematical Structures', '17CS36	', '2019-11-26 14:07:11', NULL),
(23, 'Analog and Digital Electronics Laboratory', '17CSL37', '2019-11-26 14:07:37', NULL),
(24, 'Data Structures Laboratory', '17CSL38', '2019-11-26 14:07:59', NULL),
(25, 'Constitution of India, Professional Ethics and Human Rights', '17CPH39', '2019-11-26 14:08:22', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
