-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.31 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for studentvotesystem
CREATE DATABASE IF NOT EXISTS `studentvotesystem` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `studentvotesystem`;

-- Dumping structure for table studentvotesystem.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table studentvotesystem.admin: ~1 rows (approximately)
INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
	(1, 'nurhodelta', '$2y$07$BCryptRequires22Chrcte/VlQH0piJtjXl.0t1XkA8pw9dMXTpOq', 'Neovic', 'Devierte', 'facebook-profile-image.jpeg', '2023-03-24');

-- Dumping structure for table studentvotesystem.candidates
CREATE TABLE IF NOT EXISTS `candidates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `position_id` int NOT NULL,
  `candidate_id` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `candidatecollegeID` int NOT NULL,
  `candidatelevelID` int NOT NULL,
  `candidatesexID` int NOT NULL,
  `election_typeID` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- Dumping data for table studentvotesystem.candidates: ~16 rows (approximately)
INSERT INTO `candidates` (`id`, `position_id`, `candidate_id`, `firstname`, `lastname`, `photo`, `candidatecollegeID`, `candidatelevelID`, `candidatesexID`, `election_typeID`) VALUES
	(18, 8, '19/24167/ue', 'Michael', 'Dawson', 'test_image_2.jpg', 6, 4, 1, 1),
	(19, 10, '19/31615/de', 'Georgina', 'Lewis', 'test_image_7.jpg', 12, 4, 2, 3),
	(20, 9, '18/29102/ue', 'Mira', 'Davis', 'test_image_6.jpg', 10, 5, 2, 3),
	(21, 11, '17/34216/ue', 'Michael', 'Douglas', 'test_image_12.jpg', 6, 4, 1, 1),
	(22, 10, '18/23147/ue', 'tevin', 'campbell', 'test_image_5.jpg', 3, 4, 1, 2),
	(25, 10, '17/23190/ue', 'Caleb', 'Avakaa', 'test_image_9.jpg', 6, 4, 1, 1),
	(28, 8, '14/24171/ue', 'Benjamin', 'Ukeh', 'test_image_16.jpg', 5, 4, 1, 2),
	(29, 9, '15/10241/ue', 'Jennifer', 'Tile', 'test_image_1.jpg', 6, 4, 2, 2),
	(30, 11, '16/21680/ue', 'Ternenge', 'Tarfa', 'test_image_10.jpg', 3, 5, 1, 2),
	(31, 9, '15/24171/UE', 'Doose', 'Fater', 'test_image_18.jpg', 4, 4, 2, 1),
	(32, 9, '15/24161/ue', 'Chinyere', 'Okafor', 'test_image_8.jpg', 10, 4, 2, 1),
	(33, 11, '14/24156/ue', 'Doris', 'Okuneye', 'test_image_17.jpg', 4, 5, 2, 1),
	(34, 8, '18/34521/UE', 'David', 'Okaka', 'test_image_28.jpg', 6, 4, 1, 3),
	(35, 11, '18/51234/UE', 'Dennis', 'Akawe', 'test_image_22.jpg', 10, 4, 1, 3),
	(36, 10, '19/3561/de', 'Mary', 'Smith', 'test_image_29.jpg', 4, 4, 2, 1),
	(37, 10, '18/2380/ue', 'Dylan', 'Breman', 'test_image_24.jpg', 12, 3, 1, 2);

-- Dumping structure for table studentvotesystem.election_type
CREATE TABLE IF NOT EXISTS `election_type` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ElectionName` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table studentvotesystem.election_type: 3 rows
/*!40000 ALTER TABLE `election_type` DISABLE KEYS */;
INSERT INTO `election_type` (`ID`, `ElectionName`) VALUES
	(1, 'Student Union Election'),
	(2, 'Departmental Union Election'),
	(3, 'College Union Election');
/*!40000 ALTER TABLE `election_type` ENABLE KEYS */;

-- Dumping structure for table studentvotesystem.positions
CREATE TABLE IF NOT EXISTS `positions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `max_vote` int NOT NULL,
  `priority` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table studentvotesystem.positions: ~4 rows (approximately)
INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
	(8, 'President', 1, 1),
	(9, 'Vice-President', 1, 2),
	(10, 'Secretary', 1, 3),
	(11, 'Treasurer', 1, 4);

-- Dumping structure for table studentvotesystem.usersupport
CREATE TABLE IF NOT EXISTS `usersupport` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table studentvotesystem.usersupport: ~2 rows (approximately)
INSERT INTO `usersupport` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
	(1, 'pf 3402', '$2y$10$thKBGHpdRi2sHJNIY.D8D.PX1wl7lejlualJwAzpFUHJoJ25r6Iy6', 'bukky', 'smith', 'staff_test_image_2.jpg', '2023-03-19'),
	(2, 'pf 3667', '$2y$10$UqcJCqci3fVUePM0xcaXl.BPkh4Z58y5NNm6nBL/DlNV7k62.2Oyi', 'terry', 'james', 'staff_test_image_1.jpg', '2023-05-30');

-- Dumping structure for table studentvotesystem.voters
CREATE TABLE IF NOT EXISTS `voters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `votercollegeID` int NOT NULL,
  `voterlevelID` int NOT NULL,
  `votersexID` int NOT NULL,
  `votetypeID` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table studentvotesystem.voters: ~9 rows (approximately)
INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`, `votercollegeID`, `voterlevelID`, `votersexID`, `votetypeID`, `status`) VALUES
	(2, '18/14512/ue', '$2y$10$aUaqbcWfmMccS3gX1a1TxOTg.2kCih9gFxGdZmnbZE8dFkuHX8v.m', 'john', 'sokpo', 'test_image_3.jpg', 11, 4, 1, 3, -1),
	(3, '19/19215/de', '$2y$10$hfYFnzH0wYLDhOwvZxPvk.5oU0MUtX3mOiOfOYwmpv1pXkejdx1Tu', 'George', 'Smith', 'test_image_15.jpg', 8, 3, 1, 1, -1),
	(4, '20/17189/ue', '$2y$10$uXWnLcslOZWuGgOXpz2cn.6nmeu77krNApR0Id57H232CsrkgGoDi', 'margaret', 'Rowlings', 'test_image_14.jpg', 4, 3, 2, 2, -1),
	(5, '18/23180/de', '$2y$10$oYECBR3SKYbg2D4Jgcdeu.RzbAAyGLNOeGlW27hKBUg3zxbQGHSJC', 'josepep', 'mansul', 'test_image_13.jpg', 5, 3, 1, 2, -1),
	(6, '18/2413/ue', '$2y$10$7ic3w.3Po1i8fuxY/em.nO2Ez2Xbc1xK6Gr0wi93vA4xqXcoJDoZK', 'Jerry', 'martin', 'test_image_19.jpg', 12, 3, 1, 3, -1),
	(7, '16/63512/ue', '$2y$10$mrlRb0w9AHSKI48YtvoKwuxeZP/cuXm.keGTf3imzo0TzI.RpXxEu', 'Jenifer', 'Ankeli', 'test_image_25.jpeg', 4, 4, 2, 1, -1),
	(8, '19/51671/ue', '$2y$10$I6IqI56Rqpj/Nxw2YkAcBu4HJUA2a6xjBSA8q1/.xmEmU4eFgoWt2', 'Christabel', 'Eze', 'test_image_20.jpg', 6, 3, 2, 1, -1),
	(9, '18/3142/ue', '$2y$10$9cx7b7M.qGP2JfWb78YX/uYECBMJu2zGuO8u4q5XL0oZB1m3gToTO', 'Agatha', 'Tila', 'test_image_26.jpg', 12, 4, 2, 2, -1),
	(10, '18/34512/ue', '$2y$10$2LCpNJFfEcDH5/wzyNo9keOo9HWDsrMYidFJ3xvYrN/mejIjAZTKO', 'Michael', 'Garret', 'test_image_4.jpg', 5, 4, 1, 3, -1);

-- Dumping structure for table studentvotesystem.voter_college
CREATE TABLE IF NOT EXISTS `voter_college` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CollegeName` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table studentvotesystem.voter_college: 13 rows
/*!40000 ALTER TABLE `voter_college` DISABLE KEYS */;
INSERT INTO `voter_college` (`ID`, `CollegeName`) VALUES
	(1, 'Agronomy'),
	(2, 'Science Education'),
	(3, 'Animal Science'),
	(4, 'Forestry and Fisheries'),
	(5, 'Food Technology and Human Ecology'),
	(6, 'Engineering'),
	(7, 'Central Admininstration'),
	(8, 'Science'),
	(9, 'Veterinary Medicine'),
	(10, 'Management Sciences'),
	(11, 'Agricultural and Science Education'),
	(12, 'Agricultural Economics and Extension'),
	(13, 'Agricultural Extension and Communication');
/*!40000 ALTER TABLE `voter_college` ENABLE KEYS */;

-- Dumping structure for table studentvotesystem.voter_level
CREATE TABLE IF NOT EXISTS `voter_level` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Levelname` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table studentvotesystem.voter_level: 8 rows
/*!40000 ALTER TABLE `voter_level` DISABLE KEYS */;
INSERT INTO `voter_level` (`ID`, `Levelname`) VALUES
	(1, '100'),
	(2, '200'),
	(3, '300'),
	(4, '400'),
	(5, '500'),
	(6, '600'),
	(7, 'postgraduate'),
	(8, 'sandwich program');
/*!40000 ALTER TABLE `voter_level` ENABLE KEYS */;

-- Dumping structure for table studentvotesystem.voter_sex
CREATE TABLE IF NOT EXISTS `voter_sex` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `sex` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table studentvotesystem.voter_sex: 2 rows
/*!40000 ALTER TABLE `voter_sex` DISABLE KEYS */;
INSERT INTO `voter_sex` (`ID`, `sex`) VALUES
	(1, 'Male'),
	(2, 'Female');
/*!40000 ALTER TABLE `voter_sex` ENABLE KEYS */;

-- Dumping structure for table studentvotesystem.votes
CREATE TABLE IF NOT EXISTS `votes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voters_id` int NOT NULL,
  `candidate_id` int NOT NULL,
  `position_id` int NOT NULL,
  `votetypeID` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

-- Dumping data for table studentvotesystem.votes: ~7 rows (approximately)
INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`, `votetypeID`) VALUES
	(93, 2, 18, 8, 1),
	(94, 2, 29, 9, 2),
	(95, 2, 19, 10, 3),
	(96, 2, 21, 11, 1),
	(97, 4, 28, 8, 2),
	(98, 4, 29, 9, 2),
	(99, 4, 19, 10, 3);

-- Dumping structure for table studentvotesystem.votetimer
CREATE TABLE IF NOT EXISTS `votetimer` (
  `id` int NOT NULL,
  `date` date NOT NULL,
  `h` int NOT NULL,
  `m` int NOT NULL,
  `s` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table studentvotesystem.votetimer: ~0 rows (approximately)
INSERT INTO `votetimer` (`id`, `date`, `h`, `m`, `s`) VALUES
	(1, '2023-06-29', 6, 22, 50);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
