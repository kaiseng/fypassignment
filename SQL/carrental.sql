{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf600
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- phpMyAdmin SQL Dump\
-- version 4.7.7\
-- https://www.phpmyadmin.net/\
--\
-- Host: localhost\
-- Generation Time: Oct 12, 2018 at 07:02 AM\
-- Server version: 5.6.38\
-- PHP Version: 7.2.1\
\
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";\
SET time_zone = "+00:00";\
\
--\
-- Database: `car_rental`\
--\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `bank`\
--\
\
CREATE TABLE `bank` (\
  `Bid` int(10) NOT NULL,\
  `Bname` varchar(20) DEFAULT NULL,\
  `City` varchar(20) DEFAULT NULL,\
  `Owner_id` int(10) DEFAULT NULL\
) ENGINE=MyISAM DEFAULT CHARSET=latin1;\
\
--\
-- Dumping data for table `bank`\
--\
\
INSERT INTO `bank` (`Bid`, `Bname`, `City`, `Owner_id`) VALUES\
(29239, 'trmdnf', 'sg', NULL),\
(2000, '3wd3e', 'kluang', NULL),\
(393, '8e8r', '83ru', NULL),\
(123321, 'tks', 'sg', NULL),\
(1234358, 'mohan', 'singapore', NULL);\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `car`\
--\
\
CREATE TABLE `car` (\
  `Vehicle_id` int(10) NOT NULL,\
  `License_no` varchar(20) DEFAULT NULL,\
  `Model` varchar(20) DEFAULT NULL,\
  `Year` date DEFAULT NULL,\
  `Ctype` varchar(20) DEFAULT NULL,\
  `Daily_Rate` varchar(10) DEFAULT NULL,\
  `Status` varchar(20) DEFAULT NULL,\
  `City` varchar(20) DEFAULT NULL\
) ENGINE=MyISAM DEFAULT CHARSET=latin1;\
\
--\
-- Dumping data for table `car`\
--\
\
INSERT INTO `car` (`Vehicle_id`, `License_no`, `Model`, `Year`, `Ctype`, `Daily_Rate`, `Status`, `City`) VALUES\
(8388, 'auf29dsjf1', 'Audi Suv', '2018-06-15', 'SUV', '$550', NULL, 'Singapore'),\
(8387, 'lde39sfn2q', 'Mini Cooper', '2018-05-15', 'Compact', '$400', NULL, 'Singapore'),\
(8386, 'eid39sk12a', 'Nissan Truck', '2018-05-17', 'Truck', '$700', NULL, 'Singapore'),\
(8391, 'sfj299aeb2', 'Toyota van', '2018-06-06', 'Van', '$600', NULL, 'Singapore'),\
(8390, 'sj234sdn33', 'Toyota innova', '2018-05-31', 'Large', '$450', NULL, 'Singapore'),\
(8389, 'jsfn232jdjd', 'Big Truck', '2018-05-31', 'Truck', '$700', NULL, 'Singapore'),\
(8392, 'wrjenr212n', 'Mercedes SUV', '2018-06-19', 'SUV', '$550', NULL, 'Singapore'),\
(8393, 'sjnfn2j341j', 'Compact s1', '2018-06-12', 'Compact', '$400', NULL, 'Singapore'),\
(8394, 'fk2894dn39', 'BMW 528i', '2018-07-17', 'Medium', '$500', NULL, 'Singapore'),\
(8395, 'gjnr399d2nd', 'BMW X3', '2018-07-26', 'Medium', '$500', NULL, 'Singapore');\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `customer`\
--\
\
CREATE TABLE `customer` (\
  `Cid` int(10) NOT NULL,\
  `NRIC` varchar(9) NOT NULL,\
  `Fname` varchar(10) DEFAULT NULL,\
  `Lname` varchar(20) DEFAULT NULL,\
  `Mobile` int(12) DEFAULT NULL,\
  `Email_address` varchar(30) DEFAULT NULL,\
  `Dno` int(10) DEFAULT NULL,\
  `Vehicle_id` int(10) DEFAULT NULL,\
  `AGE` int(12) NOT NULL,\
  `Insurance_no` int(12) NOT NULL\
) ENGINE=MyISAM DEFAULT CHARSET=latin1;\
\
--\
-- Dumping data for table `customer`\
--\
\
INSERT INTO `customer` (`Cid`, `NRIC`, `Fname`, `Lname`, `Mobile`, `Email_address`, `Dno`, `Vehicle_id`, `AGE`, `Insurance_no`) VALUES\
(248, 'G4929368X', 'cindy', 'tan', 84059204, 'cindytan@outlook.com', NULL, NULL, 35, 0),\
(247, 'S4839482X', 'Mindy', 'loh', 94029582, 'mindyloh@hotmail.com', NULL, NULL, 23, 0),\
(246, 'T1949297K', 'vanessa', 'chong', 98258482, 'vanessa@gmail.com', NULL, NULL, 32, 0),\
(245, 'G1948393X', 'vivian', 'ngui', 90394924, 'vivianngui@yahoo.com.sg', NULL, NULL, 28, 0),\
(240, 'S8462848X', 'andy', 'tiew', 84689672, 'andytiew@gmail.com', NULL, NULL, 35, 0),\
(239, 'S4233241G', 'boon', 'alan', 84920482, 'alanboon@outlook.com', NULL, NULL, 23, 0);\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `owner`\
--\
\
CREATE TABLE `owner` (\
  `Company_id` int(10) NOT NULL,\
  `Amount` int(10) DEFAULT NULL,\
  `Category` varchar(20) DEFAULT NULL,\
  `Earnings` int(10) DEFAULT NULL,\
  `Vid` int(10) DEFAULT NULL,\
  `Car type` varchar(10) DEFAULT NULL\
) ENGINE=MyISAM DEFAULT CHARSET=latin1;\
\
--\
-- Dumping data for table `owner`\
--\
\
INSERT INTO `owner` (`Company_id`, `Amount`, `Category`, `Earnings`, `Vid`, `Car type`) VALUES\
(123, 1000, 'compact', 900, 321, 'audi');\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `owns`\
--\
\
CREATE TABLE `owns` (\
  `Owner_id` int(10) NOT NULL,\
  `Vehicle_id` int(10) DEFAULT NULL\
) ENGINE=MyISAM DEFAULT CHARSET=latin1;\
\
--\
-- Dumping data for table `owns`\
--\
\
INSERT INTO `owns` (`Owner_id`, `Vehicle_id`) VALUES\
(123, 8000);\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `rental`\
--\
\
CREATE TABLE `rental` (\
  `Rid` int(10) NOT NULL,\
  `Nric` varchar(9) NOT NULL,\
  `Rdate` date DEFAULT NULL,\
  `Amount` varchar(10) DEFAULT NULL,\
  `Dno` int(10) DEFAULT NULL,\
  `Vehicle_id` int(10) DEFAULT NULL,\
  `Cid` int(9) DEFAULT NULL,\
  `Ctype` varchar(20) DEFAULT NULL,\
  `Rtype` int(10) DEFAULT NULL,\
  `Sdate` date DEFAULT NULL,\
  `Nodays` int(10) DEFAULT NULL\
) ENGINE=MyISAM DEFAULT CHARSET=latin1;\
\
--\
-- Dumping data for table `rental`\
--\
\
INSERT INTO `rental` (`Rid`, `Nric`, `Rdate`, `Amount`, `Dno`, `Vehicle_id`, `Cid`, `Ctype`, `Rtype`, `Sdate`, `Nodays`) VALUES\
(321, 'S4233241A', '2018-06-20', '$2800', 32, 8491, 243, 'Compact', 243, '2018-06-26', 7),\
(123, 'S2847324G', '2018-06-20', '$3000', 39, 8392, 342, 'SUV', 434, '2018-06-25', 6),\
(503, 'G1847393Q', '2018-06-15', '$1800', 23, 8320, 345, 'Medium', 344, '2018-06-17', 3),\
(505, 'S9582042A', '2018-07-19', '$2250', 13, 8390, 321, 'Large', 212, '2018-06-23', 5),\
(506, 'T9472940K', '2018-06-29', '$1200', 23, 1234, 839, 'Van', 521, '2018-06-30', 2),\
(9543, 'F2894582Q', '2018-07-02', '$500', 103, 8389, 123, 'Truck', 204, '2018-07-02', 1);\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `userpass`\
--\
\
CREATE TABLE `userpass` (\
  `id` int(11) NOT NULL,\
  `user` varchar(255) DEFAULT NULL,\
  `pass` varchar(255) DEFAULT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
--\
-- Dumping data for table `userpass`\
--\
\
INSERT INTO `userpass` (`id`, `user`, `pass`) VALUES\
(1, 'admin', 'admin'),\
(2, 'testing', 'testing');\
\
--\
-- Indexes for dumped tables\
--\
\
--\
-- Indexes for table `bank`\
--\
ALTER TABLE `bank`\
  ADD PRIMARY KEY (`Bid`),\
  ADD KEY `Owner_id` (`Owner_id`);\
\
--\
-- Indexes for table `car`\
--\
ALTER TABLE `car`\
  ADD PRIMARY KEY (`Vehicle_id`),\
  ADD UNIQUE KEY `License_no` (`License_no`);\
\
--\
-- Indexes for table `customer`\
--\
ALTER TABLE `customer`\
  ADD PRIMARY KEY (`Cid`),\
  ADD KEY `Dno` (`Dno`),\
  ADD KEY `Vehicle_id` (`Vehicle_id`);\
\
--\
-- Indexes for table `owner`\
--\
ALTER TABLE `owner`\
  ADD PRIMARY KEY (`Company_id`);\
\
--\
-- Indexes for table `owns`\
--\
ALTER TABLE `owns`\
  ADD PRIMARY KEY (`Owner_id`);\
\
--\
-- Indexes for table `rental`\
--\
ALTER TABLE `rental`\
  ADD PRIMARY KEY (`Rid`),\
  ADD UNIQUE KEY `Cid` (`Cid`),\
  ADD UNIQUE KEY `Vehicle_id_2` (`Vehicle_id`),\
  ADD KEY `Vehicle_id` (`Vehicle_id`),\
  ADD KEY `Dno` (`Dno`);\
\
--\
-- Indexes for table `userpass`\
--\
ALTER TABLE `userpass`\
  ADD PRIMARY KEY (`id`);\
\
--\
-- AUTO_INCREMENT for dumped tables\
--\
\
--\
-- AUTO_INCREMENT for table `bank`\
--\
ALTER TABLE `bank`\
  MODIFY `Bid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1234359;\
\
--\
-- AUTO_INCREMENT for table `car`\
--\
ALTER TABLE `car`\
  MODIFY `Vehicle_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8414;\
\
--\
-- AUTO_INCREMENT for table `customer`\
--\
ALTER TABLE `customer`\
  MODIFY `Cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;\
\
--\
-- AUTO_INCREMENT for table `owner`\
--\
ALTER TABLE `owner`\
  MODIFY `Company_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3945;\
\
--\
-- AUTO_INCREMENT for table `owns`\
--\
ALTER TABLE `owns`\
  MODIFY `Owner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;\
\
--\
-- AUTO_INCREMENT for table `rental`\
--\
ALTER TABLE `rental`\
  MODIFY `Rid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9546;\
\
--\
-- AUTO_INCREMENT for table `userpass`\
--\
ALTER TABLE `userpass`\
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;\
}