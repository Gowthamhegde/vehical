-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2023 at 05:48 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vrmsdb`
--
CREATE DATABASE IF NOT EXISTS `vrmsdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `vrmsdb`;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8989898911, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-09-17 06:49:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblbookingcar`
--

DROP TABLE IF EXISTS `tblbookingcar`;
CREATE TABLE IF NOT EXISTS `tblbookingcar` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `VehicleID` varchar(20) DEFAULT NULL,
  `Userid` varchar(20) NOT NULL,
  `FullName` varchar(50) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Location` mediumtext DEFAULT NULL,
  `BookingDate` varchar(120) DEFAULT NULL,
  `ReturnDate` varchar(120) DEFAULT NULL,
  `BookingNumber` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `TotalCost` varchar(120) NOT NULL,
  `Remark` varchar(120) NOT NULL,
  `Status` varchar(120) NOT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbookingcar`
--

INSERT INTO `tblbookingcar` (`ID`, `VehicleID`, `Userid`, `FullName`, `Email`, `MobileNumber`, `Location`, `BookingDate`, `ReturnDate`, `BookingNumber`, `CreationDate`, `TotalCost`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, '1', '4', 'Abir Malhotra', 'abir@gmail.com', 2556444557, 'H.N0: 13 Rajouri Garden', '2019/09/24', '2019/09/27', '488070867', '2019-09-23 11:08:58', '1500', 'hkjhkjhk', 'Approved', '2019-09-26 04:41:07'),
(2, '1', '5', 'Perth Kaushal', 'perth@gmail.com', 3232565689, 'TCS building Noida Sector 63 ', '2019/09/25', '2019/09/30', '990414271', '2019-09-24 05:50:01', '2500', 'Your car has been booked', 'Approved', '2019-09-26 04:42:17'),
(4, '1', '3', 'Devesh Gupta', 'devesh@gmail.com', 5656565656, 'hgjhguguyghg', '2019/09/27', '2019/09/30', '865483905', '2019-09-24 05:51:27', '0', 'Car is not available', 'Unapproved', '2019-09-26 04:42:50'),
(5, '2', '3', 'Devesh Gupta', 'devesh@gmail.com', 5656565656, 'errwtt54y776', '2019/09/25', '2019/09/29', '974262733', '2019-09-24 07:22:15', '600', 'hhkjhkhk', 'Approved', '2019-09-26 04:43:31'),
(6, '2', '5', 'Perth Kaushal', 'perth@gmail.com', 3232565690, 'sdstrytr', '2019-09-27', '2019-09-28', '745691656', '2019-09-26 11:17:39', '600', 'Booking Cancelled', 'Unapproved', '2019-10-22 17:53:03'),
(7, '1', '6', 'Shagun Mishra', 'shagun@gmail', 7897978798, 'jhgjgh', '2019-10-14', '2019-10-17', '596396046', '2019-10-14 12:51:08', '', '', '', '0000-00-00 00:00:00'),
(8, '2', '6', 'Shagun Mishra', 'shagun@gmail', 7897978798, 'Test', '2019-11-01', '2019-11-05', '722811595', '2019-10-30 15:50:39', '', '', '', '2019-10-30 15:52:48'),
(9, '2', '6', 'Shagun Mishra', 'shagun@gmail', 7897978798, 'hghg', '2019-11-06', '2019-11-08', '451028497', '2019-10-30 16:33:34', '', '', '', '0000-00-00 00:00:00'),
(10, '1', '7', 'Anuj  kumar', 'anc@test.com', 1234567809, 'New Delhi', '2019-12-15', '2019-12-18', '220018497', '2019-12-14 05:03:14', '1500', 'Your booking is confirmed', 'Approved', NULL),
(11, '2', '7', 'Anuj  kumar', 'anc@test.com', 1234567809, 'MANGALORE', '2023-01-11', '2023-01-13', '613102555', '2023-01-12 12:36:36', '1200', 'Done', 'Approved', NULL),
(12, '1', '7', 'Anuj  kumar', 'anc@test.com', 1234567809, 'MAN', '2023-01-12', '2023-01-13', '349640825', '2023-01-12 12:51:29', '500', 'NO', 'Unapproved', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbookingtwowheeler`
--

DROP TABLE IF EXISTS `tblbookingtwowheeler`;
CREATE TABLE IF NOT EXISTS `tblbookingtwowheeler` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `VehicleID` varchar(20) DEFAULT NULL,
  `Userid` varchar(20) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Location` mediumtext DEFAULT NULL,
  `BookingDate` varchar(120) DEFAULT NULL,
  `ReturnDate` varchar(120) DEFAULT NULL,
  `BookingNumber` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `TotalCost` varchar(120) NOT NULL,
  `Remark` varchar(200) NOT NULL,
  `Status` varchar(120) NOT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbookingtwowheeler`
--

INSERT INTO `tblbookingtwowheeler` (`ID`, `VehicleID`, `Userid`, `FullName`, `Email`, `MobileNumber`, `Location`, `BookingDate`, `ReturnDate`, `BookingNumber`, `CreationDate`, `TotalCost`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, '2', '4', 'Abir Malhotra', 'abir@gmail.com', 2556444557, 'H.NO 13 Rajouri Garden', '2019-09-25', '2019-09-26', '319838542', '2019-09-23 11:09:50', '600', 'Your vehicle request has been approved', 'Approved', '2019-09-25 11:50:16'),
(2, '1', '3', 'Devesh Gupta', 'devesh@gmail.com', 5656565656, 'y5464y64u64', '2019-09-24', '2019-09-26', '722575507', '2019-09-24 07:22:34', '', '', '', '2019-09-25 12:07:14'),
(3, '2', '3', 'Devesh Gupta', 'devesh@gmail.com', 5656565656, 'dgrrtuyui897', '2019-09-25', '2019-09-26', '754883122', '2019-09-25 06:22:05', '', '', '', '0000-00-00 00:00:00'),
(4, '1', '5', 'Perth Kaushal', 'perth@gmail.com', 3232565690, 'deeteryuyui', '2019-09-27', '2019-09-28', '800514392', '2019-09-26 11:14:36', '500', 'Your Booking has been approved', 'Approved', '2019-09-26 13:31:50'),
(5, '2', '5', 'Perth Kaushal', 'perth@gmail.com', 3232565690, 'rtetyt', '2019-09-26', '2019-09-30', '134350325', '2019-09-26 11:16:18', '', '', '', '0000-00-00 00:00:00'),
(6, '1', '6', 'Shagun Mishra', 'shagun@gmail', 7897978798, 'gryrthty', '2019-10-14', '2019-10-24', '796071902', '2019-10-14 12:52:36', '5000', 'Done', 'Approved', '2019-10-14 12:56:23'),
(7, '2', '6', 'Shagun Mishra', 'shagun@gmail', 7897978798, 'rtret', '2019-10-31', '2019-11-04', '569214177', '2019-10-30 16:36:47', '', '', '', NULL),
(8, '2', '7', 'Varad', 'anc@test.com', 1234567809, 'Kulur', '2023-01-13', '2023-01-23', '788873691', '2023-01-12 12:45:45', '2000', 'Wait', 'Unapproved', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbrand`
--

DROP TABLE IF EXISTS `tblbrand`;
CREATE TABLE IF NOT EXISTS `tblbrand` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(200) DEFAULT NULL,
  `BrandLogo` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `BrandName` (`BrandName`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrand`
--

INSERT INTO `tblbrand` (`ID`, `BrandName`, `BrandLogo`, `CreationDate`) VALUES
(1, 'Honda', '55ccf27d26d7b23839986b6ae2e447ab.jpg', '2019-09-18 06:00:11'),
(2, 'Kinectic', '41b586905e6233e72b076191f8bf9512.png', '2019-09-18 06:01:42'),
(3, 'Bajaj', '7fdc1a630c238af0815181f9faa190f5.jpg', '2019-09-18 06:02:16'),
(4, 'Yamaha', '5c642ec854a6a92a56d7ebf0b9648eea.jpg', '2019-09-18 06:03:35'),
(5, 'TVS', 'c26be60cfd1ba40772b5ac48b95ab19b.png', '2019-09-18 06:04:35'),
(6, 'Mahindra', 'b64810fde7027715e614449aff1d595f.png', '2019-09-18 06:05:41'),
(7, 'Hyundai', '37e2b52f19da778fba43ab3c1897f840.png', '2019-09-18 06:06:09'),
(8, 'Renault', 'e76de47f621d84adbab3266e3239baee.png', '2019-09-18 06:07:43'),
(9, 'Volvo', '2d99ae9e904f880eef8feb4e61882b79.jpg', '2019-09-18 06:08:42'),
(10, 'Skoda', '4389d9b5e3ba297410a11afc0b8e101b.png', '2019-09-18 06:09:23'),
(11, 'Maruti Suzuki', '1f868f31d7bb9b00f86cad27759faf95.png', '2019-09-18 06:10:10'),
(12, 'Fiat', 'e9db84d0e11b5c26723e9951e4f7204b.jpg', '2019-09-18 06:10:42'),
(13, 'Toyoto', '2122001dca390ac45fd38a57fa8c51ea.png', '2019-09-18 06:11:20'),
(14, 'Volvo', '0e1e65d3e2c5997fd8a95f244eab1a7d.jpg', '2019-09-26 12:39:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

DROP TABLE IF EXISTS `tblcategory`;
CREATE TABLE IF NOT EXISTS `tblcategory` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(50) DEFAULT NULL,
  `UpdateDate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `CategoryName` (`CategoryName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `UpdateDate`) VALUES
(1, 'Two Wheeler', '2019-09-17 11:18:40'),
(2, 'Four Wheeler', '2019-09-17 11:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
CREATE TABLE IF NOT EXISTS `tbluser` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(120) DEFAULT NULL,
  `LastName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(7, 'Anuj', ' kumar', 'anc@test.com', 1234567809, 'f925916e2754e5e03f75dd58a5733251', '2019-12-14 05:02:04'),
(8, 'admin', 'admin', 'admin@gmail.com', 7090789012, 'e10adc3949ba59abbe56e057f20f883e', '2023-01-12 13:19:12'),
(9, 'v', 'k', 'vk@gmail.com', 99889900, 'e10adc3949ba59abbe56e057f20f883e', '2023-01-16 15:29:16'),
(10, 'G', 'KAMATH', 'admin1@gmail.com', 9879879798, 'e10adc3949ba59abbe56e057f20f883e', '2023-01-21 04:38:06');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicle`
--

DROP TABLE IF EXISTS `tblvehicle`;
CREATE TABLE IF NOT EXISTS `tblvehicle` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(120) DEFAULT NULL,
  `BrandName` varchar(50) DEFAULT NULL,
  `VehicleName` varchar(120) DEFAULT NULL,
  `RegistrationNumber` varchar(120) DEFAULT NULL,
  `RentalPrice` varchar(120) DEFAULT NULL,
  `VehicleModel` varchar(120) DEFAULT NULL,
  `VehicleDescription` mediumtext DEFAULT NULL,
  `SeatingCapacity` int(10) NOT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `Image1` varchar(200) DEFAULT NULL,
  `Image2` varchar(200) DEFAULT NULL,
  `Image3` varchar(200) DEFAULT NULL,
  `Image4` varchar(200) DEFAULT NULL,
  `Image5` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicle`
--

INSERT INTO `tblvehicle` (`ID`, `CategoryName`, `BrandName`, `VehicleName`, `RegistrationNumber`, `RentalPrice`, `VehicleModel`, `VehicleDescription`, `SeatingCapacity`, `Image`, `Image1`, `Image2`, `Image3`, `Image4`, `Image5`, `CreationDate`) VALUES
(1, 'Two Wheeler', 'Yamaha', 'Yamaha YZF R15 V3', 'KA20EF0202', '500', '2018', '\"\"\"The YZF-R15 changed the 150cc segment in the Indian market the way the CBZ did when it was launched. It was an everyday motorcycle that could genuinely be used as a trackday tool. The second version of the R15 traded practicality for more focused performance, but the advent of the KTM RC200 meant that a far better performance was available for the sportbike enthusiast at a similar price. The R15 Version 3.0 reduces that gap significantly with technology. On the list is an engine with a few more ccs, but featuring variable valve timing which takes the maximum power output to nearly 19bhp with a nominal decrease in torque which is now spread over a wider rev range. It also gets all-LED lamps and an all-digital LCD instrument cluster that displays a wealth of information, including when the Variable Valve Actuation switches to the different camshaft profile.\"\"\"', 2, 'af457c29a6bce1b40f45386173b51064.jpg', 'efc1a80c391be252d7d777a437f868701568817086.jpg', 'cff8ad28cf40ebf4fbdd383fe546098d1568817086.jpg', '19c10f4e66067da4b5eb1dac874e46721568817086.jpg', '74375080377499ab76dad37484ee7f151568817086.jpg', 'b9fb9d37bdf15a699bc071ce49baea531568817086.jpg', NULL),
(2, 'Two Wheeler', 'Honda', 'Honda Activa 5G', 'KA19EC5678', '200', '2018', '\"The very popular Honda Activa 5G received a major update at the Auto Expo 2018 in February, and now the company has listed the scooter on its website at a starting price of Rs 52,460 (ex-showroom) for the standard variant and Rs 54,325 (ex-showroom) for the Deluxe variant. Bookings were already underway for the Activa 5G since it was unveiled in February. The 2018 Honda Activa 5G comes with subtle changes to its design with all-LED headlamp with a position lamp along with new color options and minor changes to its styling. The mechanics of the Activa 5G, however, remains the same.\"', 2, '83b5009e040969ee7b60362ad7426573jpeg', '941e62e1e18f45f7a4108c7bc692bc9e.jpg', 'e0ac3c5d2c5bcd60234e29de9477328e1568868021.jpg', '553d1f568dcda350727b015978f2456e1568868021.jpg', 'f490adaea0d324c2fc638b4162af61291568868021.jpg', 'fbd8be3d214221f1a4394fbfac8064ca1568868021.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehiclecar`
--

DROP TABLE IF EXISTS `tblvehiclecar`;
CREATE TABLE IF NOT EXISTS `tblvehiclecar` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(120) DEFAULT NULL,
  `BrandName` varchar(120) DEFAULT NULL,
  `VehicleName` varchar(200) DEFAULT NULL,
  `RegistrationNumber` varchar(100) DEFAULT NULL,
  `RentalPrice` varchar(50) DEFAULT NULL,
  `VehicleModel` varchar(50) DEFAULT NULL,
  `VehicleDescription` mediumtext DEFAULT NULL,
  `SeatingCapacity` int(10) DEFAULT NULL,
  `Class` varchar(50) DEFAULT NULL,
  `Fuel` varchar(50) DEFAULT NULL,
  `Doors` varchar(50) DEFAULT NULL,
  `GearBox` varchar(50) DEFAULT NULL,
  `AirCondition` varchar(50) DEFAULT NULL,
  `ABS` varchar(50) DEFAULT NULL,
  `AirBags` varchar(50) DEFAULT NULL,
  `Bluetooth` varchar(50) DEFAULT NULL,
  `CarKit` varchar(50) DEFAULT NULL,
  `GPS` varchar(50) DEFAULT NULL,
  `Music` varchar(50) DEFAULT NULL,
  `CenterLocking` varchar(50) DEFAULT NULL,
  `Image` varchar(120) DEFAULT NULL,
  `Image1` varchar(120) DEFAULT NULL,
  `Image2` varchar(120) DEFAULT NULL,
  `Image3` varchar(120) DEFAULT NULL,
  `Image4` varchar(120) DEFAULT NULL,
  `Image5` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehiclecar`
--

INSERT INTO `tblvehiclecar` (`ID`, `CategoryName`, `BrandName`, `VehicleName`, `RegistrationNumber`, `RentalPrice`, `VehicleModel`, `VehicleDescription`, `SeatingCapacity`, `Class`, `Fuel`, `Doors`, `GearBox`, `AirCondition`, `ABS`, `AirBags`, `Bluetooth`, `CarKit`, `GPS`, `Music`, `CenterLocking`, `Image`, `Image1`, `Image2`, `Image3`, `Image4`, `Image5`, `CreationDate`) VALUES
(1, 'Four Wheeler', 'Hyundai', 'Hyundai Elite i20', 'Del-7889', '500', '2019', '\"Popular Korean car manufacturer, Hyundai has updated the Elite i20 range in India. The premium hatchback is available in four variants - Era, Magna Plus, Sportz Plus and Asta (O). The latest model continues to be powered by existing petrol and diesel engine options while changes are limited to cosmetic upgrades.  The Hyundai Elite i20 competes against the Maruti Suzuki Baleno, the Honda Jazz and the Volkswagen Polo in the premium hatchback segment in the Indian car market.\"', 5, 'Compact', 'Petrol and Diesel', '5', 'Manual and Automatic (CVT)', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '85521b836186ca3632770483a48a10db.jpg', '85521b836186ca3632770483a48a10db.jpg', '1fbf40517cdc7517629e1b62e15f0b161568964746.jpg', 'dab1051b997261c9f130a15c2bc6fe8f1568964746.jpg', 'fc6c1f4a82dc3123554208854de80ffa1568964746.gif', '91d295aa31f046a4aeb48704d6b94a1c1568964746.jpg', '2019-09-20 07:32:26'),
(2, 'Four Wheeler', 'Renault', 'Renault Kwid', 'Del-78907', '600', '2019', 'The entry-level product from Renault India, the Kwid, is available at an extremely competitive price and offers a good blend of practicality and efficiency. Named after the concept car that was shown at the 2014 Auto Expo, the Kwid finds itsâ€™ underpinnings on the Renaultâ€™s CMFA platform and is being produced at their Chennai factory.', 5, 'Compact', 'Petrol', '5', 'Manual and AMT', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '63c5ee8e7434754583cb02196d07ad141568965368.jpg', '938077061daafd39ed8fb52ae810f2311568965368.jpg', '938077061daafd39ed8fb52ae810f2311568965368.jpg', '1ff95e755485face77a49fe8e09a3d161568965368.jpg', '012228c710a8fc6500c92a7369d639a41568965368.jpg', '63c5ee8e7434754583cb02196d07ad141568965368.jpg', '2019-09-20 07:42:48');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
