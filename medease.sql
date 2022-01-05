-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 05, 2022 at 07:03 PM
-- Server version: 8.0.26-0ubuntu0.20.04.2
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medease`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `patient` varchar(30) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `problem` varchar(50) NOT NULL,
  `user` varchar(30) NOT NULL,
  `agora_token` varchar(256) DEFAULT NULL,
  `agora_channel` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `doctor`, `patient`, `contact`, `problem`, `user`, `agora_token`, `agora_channel`) VALUES
(23, '1', 'Patient 60', '09012345678', 'A new problem', 'abc@abc.com', '0067d0e17b354854bf18e63ae6204e0f395IABrx3fUXxLYMeMzF8twMg5ynMqv40PYblzCMlrjrGXbHq7Szxy379yDIgB2QgEAFAVWYQQAAQAUBVZhAwAUBVZhAgAUBVZhBAAUBVZh', 'v1632940948d'),
(24, '1', 'Helen Backeen', '09023456789', 'ddddd', 'abc@abc.com', '0067d0e17b354854bf18e63ae6204e0f395IACkXHmpzjfj6eIkCJUwMt5peRcdcZAvcf8ApWjow5HoK0kK/Mq379yDIgAKvgAAqAVWYQQAAQCoBVZhAwCoBVZhAgCoBVZhBACoBVZh', 'v1632941096d'),
(25, '1', 'John Doe', '09012345678', 'Keyword for disease', 'abc@abc.com', '0067d0e17b354854bf18e63ae6204e0f395IADWN664UOWCdnYjzu3JLzuQvG9vzA7PvhHel+DCWNFRRQTKEp6379yDIgAfTgEApwZWYQQAAQCnBlZhAwCnBlZhAgCnBlZhBACnBlZh', 'v1632941351d'),
(26, '1', 'aaa', '09023456789', 'Just a test appointment', 'abc@abc.com', '0067d0e17b354854bf18e63ae6204e0f395IADKaJh9LZ94i6J0/sXc1rigOXoAfvoTJaIaJQKRnl3UFP/6P2m379yDIgB6SQEAigdWYQQAAQCKB1ZhAwCKB1ZhAgCKB1ZhBACKB1Zh', 'v1632941578d'),
(27, '1', 'Patient 61', '07089445134', 'ddddd', 'abc@abc.com', '0067d0e17b354854bf18e63ae6204e0f395IAB8RuRPpkD4hW8KWAPj5X6vD70rx2wgVeGlcVWw3gsT5dKOU3C379yDIgBC6QAAHQhWYQQAAQAdCFZhAwAdCFZhAgAdCFZhBAAdCFZh', 'v1632941725d');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `fid` varchar(10) NOT NULL,
  `uid` varchar(30) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `fid`, `uid`, `comment`) VALUES
(1, '8', 'abc@gmail.com', 'khf klahflah falfh al'),
(3, '8', 'abc@gmail.com', 'khf klahflah falfh al'),
(4, '8', 'abc@gmail.com', 'dvwvw'),
(5, '9', 'abc@gmail.com', 'hl flashf'),
(6, '8', 'abc@gmail.com', 'k fnklasfn'),
(7, '9', 'abc@gmail.com', 'bscajsbc'),
(8, '7', 'abc@gmail.com', 'dla bdlnjqjq'),
(9, '8', 'abc@abc.com', ',dnkafc'),
(10, '10', 'abc@abc.com', 'fq kfqgf qgfl  qf'),
(11, '11', 'abc@abc.com', 'h dflqhdlqhld'),
(12, '7', 'abc@abc.com', 'shdfjshs'),
(13, '7', 'abc@abc.com', 'efiwg'),
(14, '8', 'abc@gmail.com', 'I add another comment here to signify presence.');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(70) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `fees` varchar(20) NOT NULL,
  `time` varchar(30) NOT NULL,
  `special` varchar(30) NOT NULL,
  `description` varchar(300) NOT NULL,
  `city` varchar(30) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `doctor_type` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `email`, `pass`, `name`, `address`, `contact`, `fees`, `time`, `special`, `description`, `city`, `sex`, `doctor_type`) VALUES
(1, 'abc@gmail.com', '12345678', 'Dr. John umoren', 'House # gcuibv e huww  uiwh ', '0345252857', 'Rs. 500', '10 AM to 5 PM', '1,', 'J wjrlwjefk wekhewighe ighuiwhuiw3', '1', 'Male', 'admin'),
(2, 'doctor1@gmail.com', 'password1', 'Dr. John Njoku', '#434 A city on the high mountain', '08179842529', 'Rs. 1500', '10 AM to 5 PM', 'General Medicine,', 'This is a test doctor here.', 'Bahawalnagar', 'Male', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `id` int NOT NULL,
  `uid` varchar(30) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `discussion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`id`, `uid`, `topic`, `discussion`) VALUES
(7, 'abc@gmail.com', 'hello 1', 'heloo ididhah'),
(8, 'abc@gmail.com', 'AIDS', 'How to prevent from adis??'),
(9, 'abc@gmail.com', 'hello ', 'fh akfhafaw fj kf wdguiweuihuhwirhiwr iwj \r\n rwr iwiih wihiqw\r\n w uhrqwuhr'),
(10, 'abc@abc.com', 'Heart Problem Disease Which doctor is better?', 'dyt wdgwuruwhuhh  iwerj iwejr ijwij irjw ijwie rjiwe rjiwerj ijijwrij riwjiwej ij rijwie jeiorj ijw riojioje jn jkngjnjngjrgngnrowrgniohrogio gioweirhiwriqw riwerienfefnofnfnfn'),
(11, 'abc@abc.com', 'You can easily get involved with us. Reply on other forum topics or create your own by click on the ', 'dk klq');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `sex` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `phone`, `email`, `pass`, `sex`) VALUES
(1, 'jkdhkwd', '123456789', 'abc@abc.com', '12345678', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
