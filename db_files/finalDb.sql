-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2013 at 06:52 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ratemyclub`
--
CREATE DATABASE IF NOT EXISTS `ratemyclub` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ratemyclub`;

-- --------------------------------------------------------

--
-- Table structure for table `categoryname`
--

CREATE TABLE IF NOT EXISTS `categoryname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `categoryname`
--

INSERT INTO `categoryname` (`id`, `category`) VALUES
(1, 'Athletic and Recreational'),
(2, 'Academic and Professional'),
(3, 'Visual and Performing Arts'),
(4, 'Community Service/Volunteering'),
(5, 'Governance'),
(6, 'Greek Life'),
(7, 'Science and Technology'),
(8, 'Entrepreneurship'),
(9, 'Minority and Ethnic'),
(10, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE IF NOT EXISTS `clubs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clubName` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(30) NOT NULL,
  `college` varchar(50) NOT NULL,
  `overallRating` decimal(3,1) NOT NULL DEFAULT '0.0',
  `rigor` decimal(3,1) NOT NULL DEFAULT '0.0',
  `cohesiveness` decimal(3,1) NOT NULL DEFAULT '0.0',
  `scheduleFriendliness` decimal(3,1) NOT NULL DEFAULT '0.0',
  `url` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `creator` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `clubName`, `description`, `category`, `college`, `overallRating`, `rigor`, `cohesiveness`, `scheduleFriendliness`, `url`, `image`, `hits`, `creator`) VALUES
(1, 'Club Stature', 'This is the website\r\n', 'Other', 'NIIT University, Neemrana', '0.0', '0.0', '0.0', '0.0', 'clubstature.com', 'logo.png', 125464, ''),
(5, 'Work', 'dfgdssd', 'Academic and Professional', 'UC-Berkeley', '0.0', '0.0', '0.0', '0.0', 'test.com', '2-Work', 2, ''),
(7, 'kdnskfn', 'dfg', 'Academic and Professional', 'NIIT University, Neemrana', '3.2', '2.0', '4.0', '4.0', 'dss', '', 6807, ''),
(9, 'test 5', 'dfsfsdf', 'Academic and Professional', 'UC-Berkeley', '0.0', '0.0', '0.0', '0.0', 'hjhj', '5-test5', 91, ''),
(11, 'Michigan Hackers', 'A group of people who use technology to build cool things!', 'Science and Technology', 'University of Michigan', '6.6', '7.7', '6.6', '5.5', 'http://michiganhackers.org/', '5-MichiganHackers', 2, ''),
(12, 'htrdedfghuiokjfd', 'sdrtyuikojufdfg', 'Visual and Performing Arts', 'IIT-Kanpur', '0.0', '0.0', '0.0', '0.0', 'http://www.umich.edu/', '', 0, 'amitkalay'),
(13, 'IEEE-ACM', 'frtgyhujokiugfvghj', 'Science and Technology', 'University of Michigan', '0.0', '0.0', '0.0', '0.0', 'https://www.facebook.com/sidduraheja', '', 0, 'amitkalay');

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE IF NOT EXISTS `colleges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `name`) VALUES
(1, 'NIIT University, Neemrana'),
(2, 'UC-Berkeley'),
(3, 'Barefoot College'),
(4, 'University of Michigan'),
(5, 'University of California at Los Angeles (UCLA)'),
(6, 'Massachusetts Institute of Technology (MIT)'),
(7, 'Harvard University'),
(8, 'Shri Ram School - Aravali'),
(9, 'California Institute of Technology (CalTech)'),
(10, 'Princeton University'),
(11, 'Yale University'),
(12, 'Cornell University'),
(13, 'Brown University'),
(14, 'University of Pennsylvania'),
(15, 'Columbia University'),
(16, 'Stanford University'),
(17, 'Georgia Tech'),
(18, 'Williams College'),
(19, 'Swarthmore College'),
(20, 'University of Chicago'),
(21, 'Duke University'),
(22, 'Dartmouth College'),
(23, 'Northwestern University'),
(24, 'John Hopkins University'),
(25, 'WUSTL'),
(26, 'Rice University'),
(27, 'University of Notre Dame'),
(28, 'Vanderbilt University'),
(29, 'Emory University'),
(30, 'Georgetown University'),
(31, 'Carnegie Mellon University'),
(32, 'University of South California'),
(33, 'University of Virgina'),
(34, 'Wake Forest University'),
(35, 'Tufts University'),
(36, 'IIT-Delhi'),
(37, 'IIT-Kanpur'),
(38, 'BITS-Pilani'),
(39, 'IIT-Bombay'),
(40, 'St. Stephens College');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timeStamp` varchar(30) NOT NULL,
  `clubID` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `timeStamp`, `clubID`, `username`, `comment`) VALUES
(1, '17:54 28/7/2013', 7, 'nakul', 'sdfsdfsdf'),
(2, '17:54 28/7/2013', 7, 'nakul', 'sdfsdfsd'),
(3, '17:54 28/7/2013', 7, 'nakul', 'sdfsFsd'),
(4, '18:38 28/7/2013', 7, 'nakul', 'dfgdfgdfgd'),
(5, '18:38 28/7/2013', 7, 'nakul', 'dfgdfgdfgd'),
(6, '18:51 28/7/2013', 7, 'nakul', '');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `slug` varchar(30) CHARACTER SET utf8 NOT NULL,
  `position` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menu_name`, `slug`, `position`) VALUES
(1, 'About', 'about.php', 1),
(2, 'Search Clubs', 'search.php', 2),
(3, 'Top Lists', 'topList.php', 3),
(4, 'Add a Club', 'addClub.php', 4);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clubId` int(11) NOT NULL,
  `clubName` varchar(30) CHARACTER SET utf8 NOT NULL,
  `userId` int(11) NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 NOT NULL,
  `rigor` decimal(3,1) NOT NULL,
  `cohesiveness` decimal(3,1) NOT NULL,
  `scheduleFriendliness` decimal(3,1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `clubId`, `clubName`, `userId`, `username`, `rigor`, `cohesiveness`, `scheduleFriendliness`) VALUES
(1, 7, 'kdnskfn', 1, 'nakul', '2.0', '4.0', '4.0');

-- --------------------------------------------------------

--
-- Table structure for table `usernav`
--

CREATE TABLE IF NOT EXISTS `usernav` (
  ` id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(30) NOT NULL,
  `option` varchar(30) NOT NULL,
  `heading` varchar(1) NOT NULL,
  PRIMARY KEY (` id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `usernav`
--

INSERT INTO `usernav` (` id`, `menu`, `option`, `heading`) VALUES
(1, 'Profile', 'profile', '1'),
(2, 'Edit User Profile', 'editProfile', '2'),
(3, 'Change Password', 'changePass', '2'),
(4, 'Delete Account', 'deleteAccount', '2'),
(5, 'Logout', 'logout', '3');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `hashedPass` varchar(40) NOT NULL,
  `college` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `hashedPass`, `college`) VALUES
(1, 'nakul', 'nakul', 'nakul@gmail.com', 'd54b76b2bad9d9946011ebc62a1d272f4122c7b5', 'University of Michigan'),
(2, 'gloom', '', 'gloom@gmail.com', 'd54b76b2bad9d9946011ebc62a1d272f4122c7b5', ''),
(4, 'chootad', '', 'chootmail@ghmfd', '5fa339bbbb1eeaced3b52e54f44576aaf0d77d96', ''),
(5, 'amitkalay', 'Amit Kalay', 'amitkalay@yahoo.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'University of Michigan');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;