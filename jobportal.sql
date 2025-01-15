-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2021 at 05:01 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7987979878, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-06-04 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblapplyjob`
--

CREATE TABLE `tblapplyjob` (
  `ID` int(10) NOT NULL,
  `UserId` int(5) DEFAULT NULL,
  `JobId` int(5) DEFAULT NULL,
  `Applydate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Status` varchar(200) DEFAULT NULL,
  `ResponseDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblapplyjob`
--


-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(2, 'Development - IT', 'Development -Information Technology.', '2018-09-03 06:32:34', '2020-06-05 11:53:56', 1),
(3, 'HR', 'Human resoucre', '2018-09-03 06:33:33', '0000-00-00 00:00:00', 1),
(5, 'Finance', 'Finance', '2020-06-05 11:26:40', '0000-00-00 00:00:00', 0),
(6, 'Admin', 'Adiminstrator', '2020-09-02 18:18:44', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbleducation`
--

CREATE TABLE `tbleducation` (
  `ID` int(10) NOT NULL,
  `UserID` int(5) DEFAULT NULL,
  `Qualification` varchar(200) DEFAULT NULL,
  `ClgorschName` varchar(200) DEFAULT NULL,
  `PassingYear` varchar(200) DEFAULT NULL,
  `Stream` varchar(200) DEFAULT NULL,
  `CGPA` decimal(2,0) DEFAULT NULL,
  `Percentage` decimal(4,0) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbleducation`
--


-- --------------------------------------------------------

--
-- Table structure for table `tblemployers`
--

CREATE TABLE `tblemployers` (
  `id` int(11) NOT NULL,
  `ConcernPerson` varchar(150) DEFAULT NULL,
  `EmpEmail` varchar(250) DEFAULT NULL,
  `EmpPassword` varchar(250) DEFAULT NULL,
  `CompnayName` varchar(255) DEFAULT NULL,
  `CompanyTagline` mediumtext DEFAULT NULL,
  `CompnayDescription` mediumtext DEFAULT NULL,
  `CompanyUrl` varchar(255) DEFAULT NULL,
  `CompnayLogo` varchar(200) DEFAULT NULL,
  `noOfEmployee` char(10) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `typeBusinessEntity` varchar(255) DEFAULT NULL,
  `lcation` varchar(255) DEFAULT NULL,
  `establishedIn` char(200) DEFAULT NULL,
  `RegDtae` timestamp NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployers`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblexperience`
--

CREATE TABLE `tblexperience` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `EmployerName` varchar(200) DEFAULT NULL,
  `EmployementType` varchar(200) DEFAULT NULL,
  `Designation` varchar(200) DEFAULT NULL,
  `Ctc` decimal(10,0) DEFAULT NULL,
  `FromDate` varchar(200) DEFAULT NULL,
  `ToDate` varchar(200) DEFAULT NULL,
  `Skills` varchar(200) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblexperience`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbljobs`
--

CREATE TABLE `tbljobs` (
  `jobId` int(11) NOT NULL,
  `employerId` int(11) NOT NULL,
  `jobCategory` varchar(255) DEFAULT NULL,
  `jobTitle` varchar(255) DEFAULT NULL,
  `jobType` varchar(255) DEFAULT NULL,
  `salaryPackage` char(200) DEFAULT NULL,
  `skillsRequired` varchar(255) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `jobLocation` varchar(255) DEFAULT NULL,
  `jobDescription` mediumtext DEFAULT NULL,
  `JobExpdate` date DEFAULT NULL,
  `postinDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `isActive` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbljobseekers`
--

CREATE TABLE `tbljobseekers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(150) DEFAULT NULL,
  `EmailId` varchar(150) DEFAULT NULL,
  `ContactNumber` bigint(15) DEFAULT NULL,
  `Password` varchar(150) DEFAULT NULL,
  `Resume` varchar(150) DEFAULT NULL,
  `AboutMe` mediumtext DEFAULT NULL,
  `ProfilePic` varchar(200) DEFAULT NULL,
  `Skills` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsActive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljobseekers`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblmessage`
--

CREATE TABLE `tblmessage` (
  `ID` int(10) NOT NULL,
  `JobID` int(5) DEFAULT NULL,
  `UserID` int(5) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `ResponseDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblmessage`

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `ID` int(11) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` longtext DEFAULT NULL,
  `Email` varchar(200) NOT NULL,
  `MobileNumber` bigint(10) NOT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', 'Description', '2022-06-05 12:18:06', 0, '2022-06-05 11:00:55'),
(2, 'contactus', 'Contact Us', 'Location', 'info@gmail.com', 1234567890, '2022-09-02 18:19:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblapplyjob`
--
ALTER TABLE `tblapplyjob`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `tbleducation`
--
ALTER TABLE `tbleducation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblemployers`
--
ALTER TABLE `tblemployers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblexperience`
--
ALTER TABLE `tblexperience`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `tbljobs`
--
ALTER TABLE `tbljobs`
  ADD PRIMARY KEY (`jobId`);

--
-- Indexes for table `tbljobseekers`
--
ALTER TABLE `tbljobseekers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblmessage`
--
ALTER TABLE `tblmessage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblapplyjob`
--
ALTER TABLE `tblapplyjob`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbleducation`
--
ALTER TABLE `tbleducation`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblemployers`
--
ALTER TABLE `tblemployers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblexperience`
--
ALTER TABLE `tblexperience`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbljobs`
--
ALTER TABLE `tbljobs`
  MODIFY `jobId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbljobseekers`
--
ALTER TABLE `tbljobseekers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmessage`
--
ALTER TABLE `tblmessage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
