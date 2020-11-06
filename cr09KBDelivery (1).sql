-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2020 at 08:45 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr09KBDelivery`
--
CREATE DATABASE IF NOT EXISTS `cr09KBDelivery` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cr09KBDelivery`;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `addressId` int(11) NOT NULL,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `house_number` int(11) DEFAULT NULL,
  `street` varchar(55) DEFAULT NULL,
  `city` varchar(55) DEFAULT NULL,
  `country` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`addressId`, `first_name`, `last_name`, `house_number`, `street`, `city`, `country`) VALUES
(1, 'Sue', 'Morgan', 22, 'Sunny St.', 'Atlanta', 'USA'),
(2, 'John', 'Peterson', 467, 'Hope St', 'Chicago', 'USA'),
(3, 'Alex', 'Jones', 111, 'Dearborn Ave', 'Chicago', 'USA'),
(4, 'Sarah', 'Henry', 21, 'supergasse', 'Vienna', 'Austria'),
(5, 'Max', 'Good', 12, 'Rue du Four', 'Paris', 'France'),
(6, 'Jane', 'Doe', 485, 'Rue Dar', 'Paris', 'France'),
(7, 'Jaques', 'Cousteau', 67, 'Rue Jean Goujon', 'Paris', 'France'),
(8, 'Marcelle', 'Allard', 7, 'Rue De Monttessuy', 'Paris', 'France'),
(9, 'Julien', 'Badeaux', 2, 'Rue Labat', 'Paris', 'France'),
(10, 'Peter', 'Parker', 7649, 'Central Ave', 'New York', 'USA'),
(11, 'Jenny', 'Adams', 8943, 'Madison Ave', 'New York', 'USA'),
(12, 'Yvonne', 'Henderson', 583, '14th St', 'New York', 'USA'),
(13, 'Sam', 'Cook', 223, 'Fullerton Ave', 'Chicago', 'USA'),
(14, 'Daniel', 'Kelly', 38, 'Milwaukee Ave', 'Chicago', 'USA'),
(15, 'Amy', 'Sanders', 8730, 'Fourth St', 'Saint Paul', 'USA'),
(16, 'Johann', 'Strauss', 7, 'Helbinggasse', 'Vienna', 'Austria'),
(17, 'Wolfgang', 'Mozart', 5, 'Domgasse', 'Vienna', 'Austria');

-- --------------------------------------------------------

--
-- Table structure for table `endPost`
--

CREATE TABLE `endPost` (
  `endId` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `postAddressId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `endPost`
--

INSERT INTO `endPost` (`endId`, `name`, `postAddressId`) VALUES
(1, 'Atlanta Post Office', 1),
(2, 'Chicago Post Office', 2),
(3, 'New York Post Office', 3),
(4, 'Saint Paul Post Office', 4),
(5, 'Vienna Post Office', 5),
(6, 'Paris Post Office', 6);

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `packageId` int(11) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `date_dropOff` date DEFAULT NULL,
  `date_sent` date DEFAULT NULL,
  `date_recieved` date DEFAULT NULL,
  `recipientId` int(11) DEFAULT NULL,
  `senderId` int(11) DEFAULT NULL,
  `startId` int(11) DEFAULT NULL,
  `endId` int(11) DEFAULT NULL,
  `processingId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`packageId`, `type`, `date_dropOff`, `date_sent`, `date_recieved`, `recipientId`, `senderId`, `startId`, `endId`, `processingId`) VALUES
(1, 'letter', '1984-04-05', '1984-04-06', '1984-04-10', 1, 1, 1, 6, 1),
(2, 'large package', '1996-01-03', '1996-01-03', '1996-01-05', 2, 2, 6, 5, 1),
(3, 'letter', '2010-10-15', '2010-10-15', '2010-10-16', 3, 3, 3, 4, 2),
(4, 'small package', '2020-01-25', '2020-01-26', '2020-01-27', 4, 4, 3, 3, 2),
(5, 'letter', '2018-03-03', '2018-03-05', '2018-03-09', 5, 5, 3, 2, 2),
(6, 'large package', '2020-08-13', '2020-08-13', '2020-08-16', 6, 6, 3, 5, 1),
(7, 'letter', '2019-11-11', '2019-11-21', '2019-11-24', 7, 7, 2, 6, 2),
(8, 'documents', '2020-07-24', '2020-07-26', '2020-07-27', 8, 8, 6, 1, 1),
(9, 'letter', '2020-04-06', '2020-04-08', '2020-04-12', 9, 9, 6, 5, 2),
(10, 'large package', '2017-09-09', '2017-09-10', '2017-09-12', 10, 10, 6, 3, 1),
(11, 'letter', '2019-12-24', '2019-12-26', '2020-01-03', 11, 11, 1, 2, 2),
(12, 'documents', '2020-05-21', '2020-05-21', '2020-05-22', 12, 12, 1, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `postAddress`
--

CREATE TABLE `postAddress` (
  `postAddressId` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `street` varchar(55) DEFAULT NULL,
  `city` varchar(55) DEFAULT NULL,
  `country` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postAddress`
--

INSERT INTO `postAddress` (`postAddressId`, `number`, `street`, `city`, `country`) VALUES
(1, 123, 'Sugar St', 'Atlanta', 'USA'),
(2, 222, 'High St', 'Chicago', 'USA'),
(3, 356, 'Pumpkin Ave', 'New York City', 'USA'),
(4, 9083, 'Snow St', 'Saint Paul', 'USA'),
(5, 13, 'Herrengasse', 'Vienna', 'Austria'),
(6, 3, 'Saint Germain', 'Paris', 'France');

-- --------------------------------------------------------

--
-- Table structure for table `processing`
--

CREATE TABLE `processing` (
  `processingId` int(11) NOT NULL,
  `delivery_pickup` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `processing`
--

INSERT INTO `processing` (`processingId`, `delivery_pickup`) VALUES
(1, 'pickup'),
(2, 'delivery');

-- --------------------------------------------------------

--
-- Table structure for table `recipient`
--

CREATE TABLE `recipient` (
  `recipientId` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `addressId` int(11) DEFAULT NULL,
  `packageId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipient`
--

INSERT INTO `recipient` (`recipientId`, `name`, `addressId`, `packageId`) VALUES
(1, 'Max', 5, 1),
(2, 'Sarah', 4, 2),
(3, 'Amy', 15, 3),
(4, 'Peter', 10, 4),
(5, 'Daniel', 14, 5),
(6, 'Johann', 16, 6),
(7, 'Marcelle', 8, 7),
(8, 'Sue', 1, 8),
(9, 'Sarah', 4, 9),
(10, 'Peter', 10, 10),
(11, 'Sam', 13, 11),
(12, 'Amy', 15, 12);

-- --------------------------------------------------------

--
-- Table structure for table `sender`
--

CREATE TABLE `sender` (
  `senderId` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `addressId` int(11) DEFAULT NULL,
  `packageId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sender`
--

INSERT INTO `sender` (`senderId`, `name`, `addressId`, `packageId`) VALUES
(1, 'Sue', 1, 1),
(2, 'Jaques', 7, 2),
(3, 'Jenny', 11, 3),
(4, 'Yvonne', 12, 4),
(5, 'Yvonne', 12, 5),
(6, 'Peter', 10, 6),
(7, 'John', 2, 7),
(8, 'Max', 5, 8),
(9, 'Jane', 6, 9),
(10, 'Jane', 6, 10),
(11, 'Sue', 1, 11),
(12, 'Sue', 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `startPost`
--

CREATE TABLE `startPost` (
  `startId` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `postAddressId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `startPost`
--

INSERT INTO `startPost` (`startId`, `name`, `postAddressId`) VALUES
(1, 'Atlanta Post Office', 1),
(2, 'Chicago Post Office', 2),
(3, 'New York City Post Office', 3),
(4, 'Saint Paul Post Office', 4),
(5, 'Vienna Post Office', 5),
(6, 'Paris Post Office', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`addressId`);

--
-- Indexes for table `endPost`
--
ALTER TABLE `endPost`
  ADD PRIMARY KEY (`endId`),
  ADD KEY `postAddressId` (`postAddressId`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`packageId`),
  ADD KEY `recipientId` (`recipientId`),
  ADD KEY `senderId` (`senderId`),
  ADD KEY `processingId` (`processingId`),
  ADD KEY `startId` (`startId`),
  ADD KEY `endId` (`endId`);

--
-- Indexes for table `postAddress`
--
ALTER TABLE `postAddress`
  ADD PRIMARY KEY (`postAddressId`);

--
-- Indexes for table `processing`
--
ALTER TABLE `processing`
  ADD PRIMARY KEY (`processingId`);

--
-- Indexes for table `recipient`
--
ALTER TABLE `recipient`
  ADD PRIMARY KEY (`recipientId`),
  ADD KEY `addressId` (`addressId`),
  ADD KEY `packageId` (`packageId`);

--
-- Indexes for table `sender`
--
ALTER TABLE `sender`
  ADD PRIMARY KEY (`senderId`),
  ADD KEY `addressId` (`addressId`),
  ADD KEY `packageId` (`packageId`);

--
-- Indexes for table `startPost`
--
ALTER TABLE `startPost`
  ADD PRIMARY KEY (`startId`),
  ADD KEY `postAddressId` (`postAddressId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `addressId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `endPost`
--
ALTER TABLE `endPost`
  MODIFY `endId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `packageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `postAddress`
--
ALTER TABLE `postAddress`
  MODIFY `postAddressId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `processing`
--
ALTER TABLE `processing`
  MODIFY `processingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `recipient`
--
ALTER TABLE `recipient`
  MODIFY `recipientId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sender`
--
ALTER TABLE `sender`
  MODIFY `senderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `startPost`
--
ALTER TABLE `startPost`
  MODIFY `startId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `endPost`
--
ALTER TABLE `endPost`
  ADD CONSTRAINT `endpost_ibfk_3` FOREIGN KEY (`postAddressId`) REFERENCES `post`.`postAddress` (`postAddressId`),
  ADD CONSTRAINT `endpost_ibfk_4` FOREIGN KEY (`postAddressId`) REFERENCES `postAddress` (`postAddressId`);

--
-- Constraints for table `package`
--
ALTER TABLE `package`
  ADD CONSTRAINT `package_ibfk_5` FOREIGN KEY (`processingId`) REFERENCES `processing` (`processingId`),
  ADD CONSTRAINT `package_ibfk_6` FOREIGN KEY (`startId`) REFERENCES `startpost` (`startId`),
  ADD CONSTRAINT `package_ibfk_7` FOREIGN KEY (`endId`) REFERENCES `endpost` (`endId`);

--
-- Constraints for table `recipient`
--
ALTER TABLE `recipient`
  ADD CONSTRAINT `recipient_ibfk_1` FOREIGN KEY (`addressId`) REFERENCES `address` (`addressId`),
  ADD CONSTRAINT `recipient_ibfk_2` FOREIGN KEY (`packageId`) REFERENCES `package` (`packageId`);

--
-- Constraints for table `sender`
--
ALTER TABLE `sender`
  ADD CONSTRAINT `sender_ibfk_1` FOREIGN KEY (`addressId`) REFERENCES `address` (`addressId`),
  ADD CONSTRAINT `sender_ibfk_2` FOREIGN KEY (`packageId`) REFERENCES `package` (`packageId`);

--
-- Constraints for table `startPost`
--
ALTER TABLE `startPost`
  ADD CONSTRAINT `startpost_ibfk_3` FOREIGN KEY (`postAddressId`) REFERENCES `postaddress` (`postAddressId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
