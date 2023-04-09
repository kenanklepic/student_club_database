-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2023 at 01:12 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student club`
--

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `clubName` varchar(15) DEFAULT NULL,
  `clubType` varchar(15) DEFAULT NULL,
  `clubSize` decimal(5,0) DEFAULT NULL,
  `clubID` decimal(10,0) NOT NULL,
  `studentID` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`clubName`, `clubType`, `clubSize`, `clubID`, `studentID`) VALUES
('Music Club', 'Arts', '7', '1', '170302001'),
('Table Tennis Cl', 'Sports', '12', '2', '170302029'),
('IT Club', 'Engineering', '4', '3', '180302033'),
('Movie Club', 'Arts', '7', '4', '170302002');

-- --------------------------------------------------------

--
-- Table structure for table `contest`
--

CREATE TABLE `contest` (
  `place` decimal(5,0) DEFAULT NULL,
  `score` decimal(10,0) DEFAULT NULL,
  `studentID` decimal(10,0) NOT NULL,
  `contestDate` varchar(15) NOT NULL,
  `contestName` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contest`
--

INSERT INTO `contest` (`place`, `score`, `studentID`, `contestDate`, `contestName`) VALUES
('2', '93', '200302001', '17.05.2022', 'Sarajevo Song '),
('1', '97', '200302009', '09.10.2021', 'Mistral Hackath'),
('1', '96', '220302001', '12.02.2022', 'BiH Music ');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentName` varchar(15) DEFAULT NULL,
  `departmentNumber` decimal(15,0) NOT NULL,
  `facultyNumber` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentName`, `departmentNumber`, `facultyNumber`) VALUES
('SE', '100200001', '100100001'),
('VACD', '100200002', '100100003'),
('CSE', '100200003', '100100001'),
('GBE', '100200004', '100100001'),
('Management', '100200005', '100100005'),
('Architecture', '100200006', '100100001');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventName` varchar(15) NOT NULL,
  `eventDATE` varchar(15) DEFAULT NULL,
  `eventType` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventName`, `eventDATE`, `eventType`) VALUES
('Annual Concert', '19.05.2022', 'Concert'),
('Cinema Night', '03.04.2022', 'Movie Viewing');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `facultyName` varchar(15) DEFAULT NULL,
  `address` varchar(15) DEFAULT NULL,
  `facultyNumber` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`facultyName`, `address`, `facultyNumber`) VALUES
('FENS', 'Hrasnicka c. 15', '100100001'),
('FASS', 'Hrasnicka c. 15', '100100003'),
('FBA', 'Hrasnicka c. 1', '100100005');

-- --------------------------------------------------------

--
-- Table structure for table `has`
--

CREATE TABLE `has` (
  `facultyNumber` decimal(10,0) NOT NULL,
  `roomNumber` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `has`
--

INSERT INTO `has` (`facultyNumber`, `roomNumber`) VALUES
('100100001', '1'),
('100100001', '3'),
('100100001', '4'),
('100100003', '2'),
('100100003', '5');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `clubID` decimal(10,0) NOT NULL,
  `studentID` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`clubID`, `studentID`) VALUES
('1', '170302001'),
('1', '170302002'),
('1', '180302001'),
('1', '190302001'),
('1', '200302001'),
('1', '220302001'),
('1', '230302001'),
('2', '170302029'),
('2', '180302011'),
('2', '180302016'),
('2', '190302005'),
('2', '190302019'),
('2', '200302017'),
('2', '200302051'),
('2', '210302016'),
('2', '210302022'),
('2', '210302025'),
('2', '210302042'),
('2', '220302045'),
('3', '170302022'),
('3', '180302033'),
('3', '200302009'),
('3', '220302007'),
('4', '170302002'),
('4', '170302022'),
('4', '180302033'),
('4', '190302019'),
('4', '200302001'),
('4', '210302025'),
('4', '210302042');

-- --------------------------------------------------------

--
-- Table structure for table `organise`
--

CREATE TABLE `organise` (
  `clubID` decimal(10,0) NOT NULL,
  `eventName` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organise`
--

INSERT INTO `organise` (`clubID`, `eventName`) VALUES
('1', 'Annual Concert'),
('4', 'Cinema Night');

-- --------------------------------------------------------

--
-- Table structure for table `oversee`
--

CREATE TABLE `oversee` (
  `professorID` decimal(10,0) NOT NULL,
  `clubID` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oversee`
--

INSERT INTO `oversee` (`professorID`, `clubID`) VALUES
('100000001', '3'),
('100000002', '2'),
('100000005', '4'),
('100000009', '1');

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `professorID` decimal(10,0) NOT NULL,
  `profFName` varchar(10) DEFAULT NULL,
  `profMName` varchar(10) DEFAULT NULL,
  `profLName` varchar(10) DEFAULT NULL,
  `profDOB` decimal(8,0) DEFAULT NULL,
  `superProfID` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`professorID`, `profFName`, `profMName`, `profLName`, `profDOB`, `superProfID`) VALUES
('100000001', 'Ajla', 'Daisy', 'Holland', '18', '100000001'),
('100000002', 'Belma', 'Lily', 'Jackson', '18', '100000001'),
('100000005', 'Lily', 'Violet', 'Peterson', '17', '100000001'),
('100000009', 'Selma', 'Rose', 'Stan', '11', '100000001');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomNumber` decimal(10,0) NOT NULL,
  `roomSize` decimal(5,0) DEFAULT NULL,
  `roomType` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomNumber`, `roomSize`, `roomType`) VALUES
('1', '8', 'Amphitheater'),
('2', '10', 'Amphitheater'),
('3', '6', 'Classroom'),
('4', '6', 'Computer Lab'),
('5', '14', 'Sports Hall');

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

CREATE TABLE `sponsor` (
  `contribution` varchar(40) DEFAULT NULL,
  `sponsorName` varchar(15) DEFAULT NULL,
  `sponsorNumber` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sponsor`
--

INSERT INTO `sponsor` (`contribution`, `sponsorName`, `sponsorNumber`) VALUES
('Snacks and Beverages', 'RedBull', '1'),
('Snacks and Beverages', 'Cinestar', '2');

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `sponsorNumber` decimal(10,0) NOT NULL,
  `eventName` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`sponsorNumber`, `eventName`) VALUES
('1', 'Annual Concert'),
('2', 'Cinema night');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` decimal(10,0) NOT NULL,
  `studFName` varchar(15) DEFAULT NULL,
  `studMName` varchar(15) DEFAULT NULL,
  `studLName` varchar(15) DEFAULT NULL,
  `studDOB` decimal(10,0) DEFAULT NULL,
  `departmentNumber` decimal(15,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `studFName`, `studMName`, `studLName`, `studDOB`, `departmentNumber`) VALUES
('170302001', 'Ella', 'Summer', 'Rivera', '24', '100200002'),
('170302002', 'Sam', 'Thomas', 'Kingston', '14', '100200001'),
('170302022', 'Elain', 'Feyra', 'Rosa', '1', '100200003'),
('170302029', 'Timothy', 'Dawson', 'Matthews', '25', '100200005'),
('180302001', 'Emma', 'Aurora', 'Smith', '19', '100200004'),
('180302011', 'Abby', 'Aleena', 'Lowe', '1', '100200001'),
('180302016', 'Esther', 'Ann', 'Holmes', '25', '100200002'),
('180302033', 'Amina', 'Meliha', 'Kadic', '25', '100200001'),
('190302001', 'Ali', 'Carter', 'Jones', '2', '100200002'),
('190302005', 'Ria', 'Elliot', 'Benton', '16', '100200002'),
('190302019', 'Dominic', 'James', 'Black', '15', '100200006'),
('200302001', 'Sarah', 'Nova', 'Gomez', '5', '100200006'),
('200302009', 'Emina', 'Ema', 'Velaris', '29', '100200003'),
('200302017', 'Heidi', 'Emma', 'Hansen', '6', '100200001'),
('200302051', 'Zara', 'Stella', 'Pierce', '3', '100200003'),
('210302016', 'Alan', 'Tony', 'Fleming', '6', '100200006'),
('210302022', 'Layla', 'Lana', 'Daniels', '12', '100200004'),
('210302025', 'Leon', 'Camron', 'Hale', '10', '100200002'),
('210302042', 'Sebastian', 'Stan', 'Grant', '2', '100200002'),
('220302001', 'Maria', 'Luna', 'Zolota', '30', '100200003'),
('220302007', 'Nadir', 'Ali', 'Karaman', '24', '100200001'),
('220302045', 'Ziya', 'Maddy', 'Bergman', '16', '100200004'),
('230302001', 'Mia', 'Grace', 'Brown', '30', '100200005');

-- --------------------------------------------------------

--
-- Table structure for table `studentskills`
--

CREATE TABLE `studentskills` (
  `studentID` decimal(10,0) NOT NULL,
  `skills` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentskills`
--

INSERT INTO `studentskills` (`studentID`, `skills`) VALUES
('170302001', 'Plays Piano'),
('170302002', 'Plays Guitar'),
('230302001', 'Plays Drums');

-- --------------------------------------------------------

--
-- Table structure for table `takeplace`
--

CREATE TABLE `takeplace` (
  `clubID` decimal(10,0) NOT NULL,
  `roomNumber` decimal(10,0) NOT NULL,
  `day` varchar(10) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `takeplace`
--

INSERT INTO `takeplace` (`clubID`, `roomNumber`, `day`, `time`) VALUES
('1', '2', 'Monday', '14:30'),
('2', '5', 'Wednesday', '15:00'),
('3', '4', 'Thursday', '17:00'),
('4', '1', 'Friday', '16:30');

-- --------------------------------------------------------

--
-- Table structure for table `teach`
--

CREATE TABLE `teach` (
  `departmentNumber` decimal(15,0) NOT NULL,
  `professorID` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teach`
--

INSERT INTO `teach` (`departmentNumber`, `professorID`) VALUES
('100200001', '100000001'),
('100200003', '100000002'),
('100200004', '100000009'),
('100200006', '100000005');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`clubID`),
  ADD KEY `studentID` (`studentID`);

--
-- Indexes for table `contest`
--
ALTER TABLE `contest`
  ADD PRIMARY KEY (`studentID`,`contestDate`,`contestName`),
  ADD KEY `studentID` (`studentID`),
  ADD KEY `contestName` (`contestName`),
  ADD KEY `contestDate` (`contestDate`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentNumber`),
  ADD KEY `facultyNumber` (`facultyNumber`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventName`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`facultyNumber`);

--
-- Indexes for table `has`
--
ALTER TABLE `has`
  ADD PRIMARY KEY (`facultyNumber`,`roomNumber`),
  ADD KEY `facultyNumber` (`facultyNumber`),
  ADD KEY `roomNumber` (`roomNumber`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`clubID`,`studentID`),
  ADD KEY `clubID` (`clubID`),
  ADD KEY `studentID` (`studentID`);

--
-- Indexes for table `organise`
--
ALTER TABLE `organise`
  ADD PRIMARY KEY (`clubID`,`eventName`),
  ADD KEY `CONS21` (`eventName`);

--
-- Indexes for table `oversee`
--
ALTER TABLE `oversee`
  ADD PRIMARY KEY (`professorID`,`clubID`),
  ADD KEY `professorID` (`professorID`),
  ADD KEY `clubID` (`clubID`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`professorID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`roomNumber`);

--
-- Indexes for table `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`sponsorNumber`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`sponsorNumber`,`eventName`),
  ADD KEY `sponsorNumber` (`sponsorNumber`),
  ADD KEY `eventName` (`eventName`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`),
  ADD KEY `departmentNumber` (`departmentNumber`);

--
-- Indexes for table `studentskills`
--
ALTER TABLE `studentskills`
  ADD PRIMARY KEY (`studentID`,`skills`),
  ADD KEY `studentID` (`studentID`),
  ADD KEY `skills` (`skills`);

--
-- Indexes for table `takeplace`
--
ALTER TABLE `takeplace`
  ADD PRIMARY KEY (`clubID`,`roomNumber`),
  ADD KEY `clubID` (`clubID`),
  ADD KEY `roomNumber` (`roomNumber`);

--
-- Indexes for table `teach`
--
ALTER TABLE `teach`
  ADD PRIMARY KEY (`departmentNumber`,`professorID`),
  ADD KEY `departmentNumber` (`departmentNumber`),
  ADD KEY `professorID` (`professorID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `club`
--
ALTER TABLE `club`
  ADD CONSTRAINT `CONS12` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`);

--
-- Constraints for table `contest`
--
ALTER TABLE `contest`
  ADD CONSTRAINT `CONS25` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `CONS6` FOREIGN KEY (`facultyNumber`) REFERENCES `faculty` (`facultyNumber`);

--
-- Constraints for table `has`
--
ALTER TABLE `has`
  ADD CONSTRAINT `CONS3` FOREIGN KEY (`facultyNumber`) REFERENCES `faculty` (`facultyNumber`),
  ADD CONSTRAINT `CONS4` FOREIGN KEY (`roomNumber`) REFERENCES `room` (`roomNumber`);

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `CONS14` FOREIGN KEY (`clubID`) REFERENCES `club` (`clubID`),
  ADD CONSTRAINT `CONS15` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`);

--
-- Constraints for table `organise`
--
ALTER TABLE `organise`
  ADD CONSTRAINT `CONS20` FOREIGN KEY (`clubID`) REFERENCES `club` (`clubID`),
  ADD CONSTRAINT `CONS21` FOREIGN KEY (`eventName`) REFERENCES `event` (`eventName`);

--
-- Constraints for table `oversee`
--
ALTER TABLE `oversee`
  ADD CONSTRAINT `CONS17` FOREIGN KEY (`professorID`) REFERENCES `professor` (`professorID`),
  ADD CONSTRAINT `CONS18` FOREIGN KEY (`clubID`) REFERENCES `club` (`clubID`);

--
-- Constraints for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD CONSTRAINT `CON1` FOREIGN KEY (`sponsorNumber`) REFERENCES `sponsor` (`sponsorNumber`),
  ADD CONSTRAINT `CON2` FOREIGN KEY (`eventName`) REFERENCES `event` (`eventName`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `CONSTRAINT10` FOREIGN KEY (`departmentNumber`) REFERENCES `department` (`departmentNumber`);

--
-- Constraints for table `studentskills`
--
ALTER TABLE `studentskills`
  ADD CONSTRAINT `CONS01` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`);

--
-- Constraints for table `takeplace`
--
ALTER TABLE `takeplace`
  ADD CONSTRAINT `CONS23` FOREIGN KEY (`clubID`) REFERENCES `club` (`clubID`),
  ADD CONSTRAINT `CONS24` FOREIGN KEY (`roomNumber`) REFERENCES `room` (`roomNumber`);

--
-- Constraints for table `teach`
--
ALTER TABLE `teach`
  ADD CONSTRAINT `CONSTRAINT8` FOREIGN KEY (`departmentNumber`) REFERENCES `department` (`departmentNumber`),
  ADD CONSTRAINT `CONSTRAINT9` FOREIGN KEY (`professorID`) REFERENCES `professor` (`professorID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
