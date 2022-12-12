-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2021 at 10:41 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `user` varchar(90) NOT NULL,
  `pass` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`user`, `pass`) VALUES
('admin', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_info`
--

CREATE TABLE `quiz_info` (
  `id` int(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `quizpass` int(255) NOT NULL,
  `question` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_info`
--

INSERT INTO `quiz_info` (`id`, `department`, `subject`, `year`, `quizpass`, `question`, `a`, `b`, `c`, `d`, `answer`) VALUES
(28, 'I.T', 'Internet Technology', 'B.E', 9090, 'A _______ is a program providing services to the ______ program.', 'server; client', 'client; server', 'server; server', 'None of the choices are correct', 'server; client');

-- --------------------------------------------------------

--
-- Table structure for table `stud_info`
--

CREATE TABLE `stud_info` (
  `id` int(255) NOT NULL,
  `name` varchar(90) NOT NULL,
  `Department` varchar(90) NOT NULL,
  `Year` varchar(90) NOT NULL,
  `moblie` varchar(255) NOT NULL,
  `email` varchar(90) NOT NULL,
  `username` varchar(90) NOT NULL,
  `pass` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stud_info`
--

INSERT INTO `stud_info` (`id`, `name`, `Department`, `Year`, `moblie`, `email`, `username`, `pass`) VALUES
(12, 'jude', 'I.T', 'F.E', '6397421311', 'de@gmail.com', 'jude', '123');

-- --------------------------------------------------------

--
-- Table structure for table `submit_quiz`
--

CREATE TABLE `submit_quiz` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `correct` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submit_quiz`
--

INSERT INTO `submit_quiz` (`id`, `username`, `subject`, `total`, `correct`) VALUES
(27, 'nick', 'Data Structure', '1', '1'),
(28, 'nik', 'Internet Technology', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tech_info`
--

CREATE TABLE `tech_info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `moblie` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tech_info`
--

INSERT INTO `tech_info` (`id`, `name`, `department`, `subject`, `moblie`, `email`, `user`, `pass`) VALUES
(5, 'jude suarez', 'I.T', 'Java', '7972466112', 'jude@gmail.com', 'jude', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quiz_info`
--
ALTER TABLE `quiz_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stud_info`
--
ALTER TABLE `stud_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`username`);

--
-- Indexes for table `submit_quiz`
--
ALTER TABLE `submit_quiz`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tech_info`
--
ALTER TABLE `tech_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quiz_info`
--
ALTER TABLE `quiz_info`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `stud_info`
--
ALTER TABLE `stud_info`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `submit_quiz`
--
ALTER TABLE `submit_quiz`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tech_info`
--
ALTER TABLE `tech_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
