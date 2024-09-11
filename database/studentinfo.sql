-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2021 at 07:05 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentinfo`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `pCollege` (IN `firstname` VARCHAR(50), IN `lastname` VARCHAR(50), IN `mname` VARCHAR(50), IN `gender` VARCHAR(50), IN `bdate` VARCHAR(50), IN `address` VARCHAR(50), IN `guardian` VARCHAR(50), IN `contact` VARCHAR(50), IN `fbaccount` VARCHAR(50), IN `email` VARCHAR(50), IN `mobile` VARCHAR(50), IN `lastschool` VARCHAR(50), IN `schooladdress` VARCHAR(50), IN `yrgrad` VARCHAR(50), IN `course` VARCHAR(50))  BEGIN
if(select count(*) from college where
	fname=firstname and
    lname=lastname and
    mname = mname and
    gender = gender and
    bdate = bdate and
    address = address)=0 then
		INSERT INTO college(
		fname,lname,mname,
		gender,bdate,address,
		nguardian,gcontact,fbaccount,
		email,mobile,
		lastschool,schooladdress,yrgrad,
		course)
		values (firstname, lastname,mname,
		gender,bdate,address,
		guardian,contact,fbaccount,
		email,mobile,
		lastschool,schooladdress,
		yrgrad,course);
		select 'Success' as status, 'Thank you! Your submission has been received! <br><br>
OUR ADMISSION OFFICER WILL CONTATACT YOU AS SOON AS POSSIBLE. <br>
IF YOU HAVE ANY QUESTIONS YOU MAY CONTACT US <br>
VIA FB PAGE https://www.facebook.com/ACLCCManilaOfficial / <br>
YOU CAN CALL 8735-0385
' as msg;
	else
		select 'Error' as status, 'Duplicate entry detected' as msg;
	end if;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pSHS` (IN `firstname` VARCHAR(50), IN `middlename` VARCHAR(50), IN `lastname` VARCHAR(50), IN `gender` VARCHAR(50), IN `bdate` VARCHAR(50), IN `address` VARCHAR(50), IN `guardian` VARCHAR(50), IN `contact` VARCHAR(50), IN `fbaccount` VARCHAR(50), IN `lrn` VARCHAR(50), IN `email` VARCHAR(50), IN `mobile` VARCHAR(50), IN `lastschool` VARCHAR(50), IN `schooladdress` VARCHAR(50), IN `yrgrad` VARCHAR(50), IN `strand` VARCHAR(50), IN `type` VARCHAR(50))  BEGIN
if(select count(*) from shs where
	fname=firstname and
    lname=lastname and
    mname = middlename and
    gender = gender and
    bdate = bdate and
    address = address)=0 then
		INSERT INTO shs(
		fname,lname,mname,
		gender,bdate,address,
		nguardian,gcontact,fbaccount,
		lrn,email,mobile,
		lastschool,schooladdress,yrgrad,
		strand,stype)
		values (firstname, lastname,middlename,
		gender,bdate,address,
		guardian,contact,fbaccount,
		lrn,email,mobile,
		lastschool,schooladdress,
		yrgrad,strand,stype);
		select 'Success' as status, 'Thank you! Your submission has been received! <br><br>\r\nOUR ADMISSION OFFICER WILL CONTATACT YOU AS SOON AS POSSIBLE. <br>\r\nIF YOU HAVE ANY QUESTIONS YOU MAY CONTACT US <br>\r\nVIA FB PAGE https://www.facebook.com/ACLCCManilaOfficial / <br>\r\nYOU CAN CALL 8735-0385\r\n' as msg;
	else
		select 'Error' as status, 'Duplicate entry detected' as msg;
	end if;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bdate` varchar(10) NOT NULL,
  `address` varchar(500) NOT NULL,
  `nguardian` varchar(50) NOT NULL,
  `gcontact` varchar(20) NOT NULL,
  `fbaccount` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `lastschool` varchar(100) NOT NULL,
  `schooladdress` varchar(500) NOT NULL,
  `yrgrad` varchar(20) NOT NULL,
  `course` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`id`, `fname`, `mname`, `lname`, `gender`, `bdate`, `address`, `nguardian`, `gcontact`, `fbaccount`, `email`, `mobile`, `lastschool`, `schooladdress`, `yrgrad`, `course`) VALUES
(1, 'Von', 'C', 'Toledo', 'Male', '05-15-2000', 'Craig St.', 'Eileen', '09161951432', 'karbu', 'patricktld@gmail.com', '09161951432', 'NBCS', 'Baguio City', '2000', 'BSIS'),
(4, 'a', 'a', 'a', 'Male', '04-06-2021', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'BSIS'),
(5, 'b', 'b', 'b', 'Male', '04-06-2021', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'BSIS'),
(6, 'c', 'c', 'c', 'Male', '04-05-2021', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'c', 'BSENTREP'),
(7, 'MARICRIS', 'REYES', 'CABAIS', 'Female', '02-13-1995', 'blk 17A old site Baseco Compound', 'syber kim berboso', '09657527925', 'MC Cris', 'maricriscabais0213@gmail.com', '09652013806', 'AMA Morayta', 'Sampaloc, Manila', '2014', 'BSENTREP');

-- --------------------------------------------------------

--
-- Table structure for table `contribution`
--

CREATE TABLE `contribution` (
  `student` text NOT NULL,
  `contribution` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contribution`
--

INSERT INTO `contribution` (`student`, `contribution`) VALUES
('harry', 10),
('maddy', 20),
('andy', 25),
('pandy', 10);

-- --------------------------------------------------------

--
-- Table structure for table `shs`
--

CREATE TABLE `shs` (
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bdate` varchar(10) NOT NULL,
  `address` varchar(500) NOT NULL,
  `nguardian` varchar(50) NOT NULL,
  `gcontact` varchar(20) NOT NULL,
  `fbaccount` varchar(50) NOT NULL,
  `lrn` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `lastschool` varchar(100) NOT NULL,
  `schooladdress` varchar(500) NOT NULL,
  `yrgrad` varchar(20) NOT NULL,
  `strand` varchar(50) NOT NULL,
  `stype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shs`
--

INSERT INTO `shs` (`ID`, `fname`, `mname`, `lname`, `gender`, `bdate`, `address`, `nguardian`, `gcontact`, `fbaccount`, `lrn`, `email`, `mobile`, `lastschool`, `schooladdress`, `yrgrad`, `strand`, `stype`) VALUES
(1, 'Vincent', 'C.', 'Toledo', 'male', '2021-03-23', 'Tondo, Manila', 'Patrick Toledo', '09161951432', 'VincentT', '136436090498', 'barracudaskynet@gmail.com', '09161951432', 'Legarda Elem. School', 'España Manila', '2020', 'abm', 'FULL VOUCHER'),
(23, 'Von', 'Carandang', 'Toledo', 'Male', '11-17-2011', 'Craig St. Samp. Manila', 'Patrick Toledo', '09161951432', 'Karbu.FB', '12345678912', 'patricktld@gmail.com', '09161951432', 'Legarda Elem. School', 'Loyola', '2011', 'humss', 'FULL VOUCHER'),
(83, 'joseph', 'luken', 'domingo', 'Male', '08-16-1985', 'Manila, MM, PH', 'Jane Domingo', '098867754', 'joseph.domingo', '7768857', 'domingo.joseph@gmail.com', '09064825210', 'TIP', 'Manila', '2017', 'ictp', ''),
(84, 'Patrick', 'Santiago', 'Toledo', 'Male', '07-08-2015', '919-D Craig St. Samp. Manila', 'Eileen Toledo', '09161951432', 'fb/patrick', '12345678910', 'patricktld@gmail.com', '09161951432', 'NBCS', 'Baguio', '200', 'abm', ''),
(85, 'aasdasd', 'asdasd', 'asdasd', 'Female', '04-07-2021', 'asdasdas', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdas', 'dasdas', 'dasdasd', 'abm', ''),
(86, 'Monica', 'Lopez', 'Valladolid', 'Female', '05-28-1991', 'bsjsksks', 'ssfgg', 'uxjxkd', 'hsjskak', 'zhsjsks', 'hsjsks', 'hsnsjjs', 'sgnsjs', 'dhjss', 'jsjsks', 'abm', ''),
(87, 'test1', 'test1', 'test1', 'Male', '04-20-2021', 'test1', 'test1', 'test1', 'test1', 'test1', 'test1', 'test1', 'test1', 'test1', 'test1', 'icta', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(1, 'admin', 'admin', 'Patrick', 'Toledo'),
(2, 'karburador', 'cuteako03', 'Patrick', 'Toledo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shs`
--
ALTER TABLE `shs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shs`
--
ALTER TABLE `shs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
