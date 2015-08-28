-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 17, 2014 at 03:15 AM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `feedback`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch_master`
--

CREATE TABLE IF NOT EXISTS `batch_master` (
  `batch_id` int(20) NOT NULL AUTO_INCREMENT,
  `batch_name` varchar(255) NOT NULL,
  `feedback_no` int(2) NOT NULL,
  PRIMARY KEY (`batch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `batch_master`
--

INSERT INTO `batch_master` (`batch_id`, `batch_name`, `feedback_no`) VALUES
(1, '2015', 1),
(2, '2016', 1),
(3, '2017', 1),
(4, '2018', 1);

-- --------------------------------------------------------

--
-- Table structure for table `branch_master`
--

CREATE TABLE IF NOT EXISTS `branch_master` (
  `b_id` int(20) NOT NULL AUTO_INCREMENT,
  `b_name` varchar(255) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `branch_master`
--

INSERT INTO `branch_master` (`b_id`, `b_name`) VALUES
(1, 'CS'),
(2, 'Civil'),
(3, 'EC'),
(4, 'Mechanical');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_master`
--

CREATE TABLE IF NOT EXISTS `faculty_master` (
  `f_id` int(20) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `b_id` int(20) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `faculty_master`
--

INSERT INTO `faculty_master` (`f_id`, `f_name`, `l_name`, `b_id`) VALUES
(1, 'Dr.K.C.', 'Ravishankar', 1),
(2, 'Mr. Raghu', 'M.E', 1),
(3, 'Mr.Chethan', 'K.C', 1),
(4, 'Mr.', 'Annaaiah', 1),
(5, 'Mr.', 'Ranganath', 1),
(6, 'Ms.', 'Sushmita K C', 1),
(7, 'Ms.', 'Kavyashree', 1),
(8, 'Ms.', 'Ramya N P', 1),
(9, 'Ms.', 'Smitha S P', 1),
(10, 'Ms.', 'Sangeetha D N', 1),
(11, 'Ms.', 'Shilpa', 1),
(12, 'Mr.', 'Prashanth P', 1),
(13, 'Mr.', 'Thirthegowda', 1),
(14, 'Ms.', 'Shruthi', 1),
(15, 'Dr.', 'Prashanth S', 2),
(16, 'Mr.', 'Devanand R', 2),
(17, 'Mr. ', 'Vijaykumar H. A.', 2),
(18, 'Mr.', 'Kumbar P K', 2),
(19, 'Mr.', 'Harsha H. N', 2),
(20, 'Mr.', 'Raghu K', 2),
(21, 'Mr.', 'Chethan B A', 2),
(22, 'Mr.', 'Anilkumar', 2),
(23, 'Dr.', 'Basavaraju Simpi', 2),
(24, 'Mr.', 'H. S. Narasimhan', 2),
(25, 'Mr.', 'Devraj S B', 2),
(26, 'Mrs.', 'Dakshayani', 2),
(27, 'Ms.', 'Girishwetha', 2),
(28, 'Mr.', 'Amar R', 2),
(29, 'Mr.', 'Nagaraju', 2),
(30, 'Dr.', 'Paramesh', 3),
(31, 'Mrs. Pallavi', 'H.V', 3),
(32, 'Sharon', 'A', 3),
(33, 'Mr.', 'Ravikumar', 3),
(34, 'Mr. Prakash', 'M.B', 3),
(35, 'Ms.', 'Baby H. T', 3),
(36, 'Ms.', 'Chaitra K N', 3),
(37, 'Ms.', 'Bhagyalaxmi', 3),
(38, 'Mr.', 'Punith H J', 3),
(39, 'Ms.', 'Ruchita Sinha', 3),
(40, 'Ms.', 'Spoorthi S P', 3),
(41, 'Shruthi', 'K N', 3),
(42, 'Prof.', 'Nagaraju K R', 4),
(43, 'Dr.', 'T Rangaswamy', 4),
(44, 'Mr.', 'Doddahanumesha', 4),
(45, 'Mr.', 'Chennabasava Gouda', 4),
(46, 'Mrs.', 'Manjula S', 4),
(47, 'Mr.', 'Amit Kumar', 4),
(48, 'Mr.', 'Mahesh T S', 4),
(49, 'Mr.', 'Manjunath K', 4),
(50, 'Mr.', 'Vinay S S', 4),
(51, 'Mr.', 'Satyanarayana', 4),
(52, 'Mr.', 'Darshan', 4),
(53, 'Mr.', 'Prakasha', 4),
(54, 'Mr.', 'Manjunatha', 4),
(55, 'Ms.', 'Priyanka', 4),
(56, 'Mr.', 'Hanmantharayappa', 4),
(57, 'Mr.', 'Channakeshava K R', 4);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_master`
--

CREATE TABLE IF NOT EXISTS `feedback_master` (
  `feed_id` int(20) NOT NULL AUTO_INCREMENT,
  `b_id` int(20) NOT NULL,
  `batch_id` int(20) NOT NULL,
  `feedback_no` int(20) NOT NULL,
  `sem_id` int(20) NOT NULL,
  `f_id` int(20) NOT NULL,
  `sub_id` int(20) NOT NULL,
  `ans1` int(20) NOT NULL,
  `ans2` int(20) NOT NULL,
  `ans3` int(20) NOT NULL,
  `ans4` int(20) NOT NULL,
  `ans5` int(20) NOT NULL,
  `ans6` int(20) NOT NULL,
  `ans7` int(20) NOT NULL,
  `ans8` int(20) NOT NULL,
  `ans9` int(20) NOT NULL,
  `ans10` int(20) NOT NULL,
  `ans11` int(20) NOT NULL,
  `ans12` int(20) NOT NULL,
  `ans13` int(20) NOT NULL,
  `ans14` int(20) NOT NULL,
  `ans15` int(20) NOT NULL,
  `total` int(20) NOT NULL,
  `feed_date` date NOT NULL,
  PRIMARY KEY (`feed_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=167 ;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_para`
--

CREATE TABLE IF NOT EXISTS `feedback_para` (
  `para_id` int(1) NOT NULL,
  `batch_id` int(10) NOT NULL,
  `b_id` int(10) NOT NULL,
  `sem_id` int(10) NOT NULL,
  `usn_no` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_para`
--

INSERT INTO `feedback_para` (`para_id`, `batch_id`, `b_id`, `sem_id`, `usn_no`) VALUES
(1, 2, 1, 6, '4GH10ME002');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_ques_master`
--

CREATE TABLE IF NOT EXISTS `feedback_ques_master` (
  `q_id` int(20) NOT NULL AUTO_INCREMENT,
  `ques` varchar(255) NOT NULL,
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `feedback_ques_master`
--

INSERT INTO `feedback_ques_master` (`q_id`, `ques`) VALUES
(1, 'Regularity and Punctuality in taking classes.'),
(2, 'Preparation for the classes.'),
(3, 'Attitude and presentation in the class.'),
(4, 'Teaching methodology and Oral communication.'),
(5, 'Coverage of the syllabus.'),
(6, 'Motivating the students towards better subject understanding.'),
(7, 'Maintenance of discipline in the class.'),
(8, 'Availability in the department for discussion.'),
(9, 'Clearing doubts inside/ outside class.'),
(10, 'Internal Assessment question paper and conducting.'),
(11, 'Valuation of Internal Assessment answer books.'),
(12, 'Discussion on Internal Assessment questions.'),
(13, 'Stimulating nature of Assignments and Quiz.'),
(14, 'Level of interest taken in the classes.'),
(15, 'General relationship with the students.');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`username`, `password`) VALUES
('1GG13CS017', 'VnKB8r'),
('4GH04CS001', 'x39kXc'),
('4GH07CS037', 'r9pvnQ'),
('4GH07CS052', 'RYXP6q'),
('4GH07CS057', 'drNxtG'),
('4GH07CS058', 'tngHFA'),
('4GH07CS061', 'pgkNMm'),
('4GH07CS062', 'JBGDLP'),
('4GH07CS069', 'PTJDFp'),
('4GH07CS071', 'wADQ8X'),
('4GH07CV010', 'tkbLdx'),
('4GH07CV026', 'tmkq63'),
('4GH07CV029', 'npmG3w'),
('4GH07CV034', 'fK6VG9'),
('4GH07CV038', 'xCcqR2'),
('4GH07CV043', 'P8jHpg'),
('4GH07CV055', 'w7xYtV'),
('4GH07CV056', 'TYBp6k'),
('4GH07CV059', 'jHYVQM'),
('4GH07CV060', 'qkpzmB'),
('4GH07CV061', 'BJhgnc'),
('4GH07EC011', 'cxKVMX'),
('4GH07EC023', 'M7gGc2'),
('4GH07EC024', 'KLkdQJ'),
('4GH07EC031', 'RjcKVW'),
('4GH07EC033', 'BXbKfy'),
('4GH07EC065', 'R93YyD'),
('4GH07EC067', 'CmqATg'),
('4GH07ME009', 'Hqc32J'),
('4GH07ME010', 'jXhWJr'),
('4GH07ME023', 'gnDHLP'),
('4GH07ME024', '2xzpQ8'),
('4GH07ME030', 'vkP9FG'),
('4GH07ME031', 'G63d4j'),
('4GH07ME032', 'THPxCD'),
('4GH07ME039', 'RBjkcK'),
('4GH07ME046', 'VFgBtx'),
('4GH07ME049', 'HW9Pkv'),
('4GH07ME055', 'rTybn2'),
('4GH07ME058', 'c2nXwY'),
('4GH07ME059', 'JWLYQ6'),
('4GH08CS001', 'KhBqgD'),
('4GH08CS002', 'LDwnGf'),
('4GH08CS003', 'P8A2TW'),
('4GH08CS004', 'QVjK9Y'),
('4GH08CS005', 'AypMK3'),
('4GH08CS006', 'c6VMjv'),
('4GH08CS007', 'DgBmyq'),
('4GH08CS008', 'zQRCyr'),
('4GH08CS010', '7fvPct'),
('4GH08CS011', 'TtkYK2'),
('4GH08CS013', 'f37pA4'),
('4GH08CS014', '9y7KYj'),
('4GH08CS015', 'nTc2JH'),
('4GH08CS016', '8HC64T'),
('4GH08CS017', 'rfthRW'),
('4GH08CS018', 'XQ6YGF'),
('4GH08CS019', '7hCy48'),
('4GH08CS021', 'zDByvV'),
('4GH08CS023', 'DBfbpw'),
('4GH08CS024', '9W6gwR'),
('4GH09CS011', 'rTybn2'),
('4GH10CS007', 'LMxwVD'),
('4GH10CS051', 'c2nXwY'),
('4GH10CS058', 'M8Xhdz'),
('4GH11CS002', 'FXjwk3'),
('4GH11CS003', 'vCzgkM'),
('4GH11CS004', 'hQHN9K'),
('4GH11CS005', '9bYFGK'),
('4GH11CS006', 'z9vHA7'),
('4GH11CS007', 'nv8B9H'),
('4GH11CS008', 'AtTfWM'),
('4GH11CS009', '2BXfjh'),
('4GH11CS010', '98LrHP'),
('4GH11CS011', 'fG3pbk'),
('4GH11CS012', '2kyQYq'),
('4GH11CS013', 'rdC4xv'),
('4GH11CS014', 'CYP72Q'),
('4GH11CS016', 'vrn7bR'),
('4GH11CS017', 'cJLFHw'),
('4GH11CS018', 'fYRyBm'),
('4GH11CS019', 'J92Hcm'),
('4GH11CS020', 'DC3QzT'),
('4GH11CS021', 'fNMAcJ'),
('4GH11CS022', 'jJMF4k'),
('4GH11CS024', 'L2z8fc'),
('4GH11CS025', 'mTyYWB'),
('4GH11CS026', 'ThcnWx'),
('4GH11CS027', 'HQD2yW'),
('4GH11CS029', 'rh7GD9'),
('4GH11CS030', 'C4DWw2'),
('4GH11CS031', 'bM9NK8'),
('4GH11CS032', '4npLWy'),
('4GH11CS033', 'TK98jX'),
('4GH11CS034', '8RJD6z'),
('4GH11CS035', 'RMwY93'),
('4GH11CS036', '9bHWGd'),
('4GH11CS037', 'LVKMkT'),
('4GH11CS038', 'MvFHrA'),
('4GH11CS039', 'GFHvPc'),
('4GH11CS040', 'fvdABz'),
('4GH11CS041', 'rHNhgT'),
('4GH11CS042', '348Xmk'),
('4GH11CS043', 'jfQPWx'),
('4GH11CS044', 'MGCtBL'),
('4GH11CS045', 'PbG9gz'),
('4GH11CS046', 'npVm8J'),
('4GH11CS047', 'BGqvF4'),
('4GH11CS048', 'Hnr7dc'),
('4GH11CS049', 'kmjWMz'),
('4GH11CS050', '7zxHdY'),
('4GH11CS051', 'bBx7KG'),
('4GH11CS052', 'FJtB6V'),
('4GH11CS053', 'LbtQ7v'),
('4GH11CS054', '43Mr6c'),
('4GH11CS055', '7AxzNF'),
('4GH11CS056', 'b8gVRc'),
('4GH11CS057', 'DgWjAz'),
('4GH11CS058', 'Fg9LRx'),
('4GH11CS059', '94WfLY'),
('4GH11CS061', 'n6hxrB'),
('4GH11CS062', '3BFRXN'),
('4GH11CS063', '94GzfY'),
('4GH11CS064', 'Qz2ABN'),
('4GH11CS401', 'cvMD7C'),
('4GH11CS406', 'mxXq3C'),
('4GH12CS002', '7RXCh4'),
('4GH12CS003', 'WkF2v9'),
('4GH12CS004', 'Q2TM9Y'),
('4GH12CS005', 'Qfx7Lc'),
('4GH12CS006', 'TKGAwL'),
('4GH12CS007', 'Yvqnp2'),
('4GH12CS008', 'CBKDYF'),
('4GH12CS009', 'VkLxqY'),
('4GH12CS010', 'FqvkCj'),
('4GH12CS011', 'V6Qw8c'),
('4GH12CS012', 'BfKQMP'),
('4GH12CS013', '2CrJ7k'),
('4GH12CS014', 'qzMjNF'),
('4GH12CS015', '8Tmytg'),
('4GH12CS017', 'MdHkD9'),
('4GH12CS018', 'zN4L2M'),
('4GH12CS019', 'X6GKAb'),
('4GH12CS020', 'dPJA3p'),
('4GH12CS021', 'Bh6WyR'),
('4GH12CS022', 'kCL8Rb'),
('4GH12CS023', 'hx9fL4'),
('4GH12CS025', 'L34h6z'),
('4GH12CS026', 'w9TKqM'),
('4GH12CS027', 'NVMF92'),
('4GH12CS028', 'Lt7MyR'),
('4GH12CS029', 'y7kXnq'),
('4GH12CS030', 'dcmfH7'),
('4GH12CS031', '7AgxnH'),
('4GH12CS032', 'CkqcHw'),
('4GH12CS034', 'xz8jw6'),
('4GH12CS036', 'zmNWBx'),
('4GH12CS037', 'fQ7W89'),
('4GH12CS038', 'GnVPTX'),
('4GH12CS040', 'GrnRbm'),
('4GH12CS041', 'CAX3Hh'),
('4GH12CS042', 'HPMqjp'),
('4GH12CS043', 'LRv8Wp'),
('4GH12CS044', 'gx9cnG'),
('4GH12CS045', 'PW2yQh'),
('4GH12CS046', 'TkWpqB'),
('4GH12CS047', 'jRkLA9'),
('4GH12CS048', 'zj8xW6'),
('4GH12CS049', 'PAgLNK'),
('4GH12CS050', 'N4BFmT'),
('4GH12CS051', 'KQcJGy'),
('4GH12CS052', 'CLnrpV'),
('4GH12CS055', 'JNBzqt'),
('4GH12CS056', 'mVfWRj'),
('4GH12CS057', 'mBjQ3n'),
('4GH12CS058', 'F9qNkp'),
('4GH12CS059', 'KRyHmk'),
('4GH12CS060', 'wmLpHq'),
('4GH12CS061', 'WVvfzP'),
('4GH12CS062', 'ptwCRD'),
('4GH12CS400', 'nzdGjH'),
('4GH12CS401', 'QHBnvM'),
('4GH12CS402', '24jGKX'),
('4GH12CS403', 'j2mPLC'),
('4GH12CS404', 'qv6RkC'),
('4GH12CS405', 'yqXfbP'),
('4GH12CS406', 'X2rymT'),
('4GH12CS407', 'y64CNL'),
('4GH12CS408', 'tqPpLD'),
('4GH12CS409', '9WvqNV'),
('4GH12CS410', 'HRQfnV'),
('4GH12CS411', '8tc7TG'),
('4GH13CS001', 'FpwH7A'),
('4GH13CS002', 'APkRxw'),
('4GH13CS003', '2JgwAC'),
('4GH13CS004', 'X72C6v'),
('4GH13CS005', 'hzYXRK'),
('4GH13CS006', 'dCzThX'),
('4GH13CS007', 'cxFQCq'),
('4GH13CS008', 'gnmXBR'),
('4GH13CS009', 'JH7FQ9'),
('4GH13CS010', 'YKXN47'),
('4GH13CS012', 'G2v6nw'),
('4GH13CS013', 'b9B4jw'),
('4GH13CS014', 'BQzgt9'),
('4GH13CS015', 'mCzjhv'),
('4GH13CS016', 'LznYtb'),
('4GH13CS017', '3NDjkX'),
('4GH13CS018', 'JQnMg4'),
('4GH13CS019', 'rbXcMm'),
('4GH13CS020', 'HJGh4y'),
('4GH13CS021', 'FHvn2c'),
('4GH13CS022', '3nf2NC'),
('4GH13CS023', '8DfPmL'),
('4GH13CS024', 'WXfhYw'),
('4GH13CS025', 'LMpQB3'),
('4GH13CS026', 'DP2VTJ'),
('4GH13CS027', 'b2CgWQ'),
('4GH13CS028', 'wAHbTM'),
('4GH13CS029', 'yjPbnD'),
('4GH13CS030', 'hJ6wqn'),
('4GH13CS031', 'Dtgxzh'),
('4GH13CS032', 'MP4DKq'),
('4GH13CS033', 'LpyNfd'),
('4GH13CS034', 'vfgxHd'),
('4GH13CS035', 'wYGnxL'),
('4GH13CS036', 'rJQWGz'),
('4GH13CS038', 'H8rXhp'),
('4GH13CS039', 'YvGKyw'),
('4GH13CS040', 'gqnBdt'),
('4GH13CS041', 'AN4Lnd'),
('4GH13CS042', 'ph3NXj'),
('4GH13CS043', 'cF9Nft'),
('4GH13CS044', 'A3hkwT'),
('4GH13CS045', 'NyCF2g'),
('4GH13CS046', 'GzBhJ6'),
('4GH13CS047', 'hBHMAV'),
('4GH13CS048', 'YRqt9X'),
('4GH13CS049', 'qnPrYQ'),
('4GH13CS050', 'dhYjDv'),
('4GH13CS051', 'GBfz8N'),
('4GH13CS052', 'v7zCgM'),
('4GH13CS053', 'qB9GDT'),
('4GH13CS055', 'jTY8Nn'),
('4GH13CS056', '9jyRVv'),
('4GH13CS057', 'BgDNK2'),
('4GH13CS058', 'Hfr9cd'),
('4GH13CS059', 'yHf3wA'),
('4GH13CS060', 'Kt68AW'),
('4GH13CS061', 'mJGYBP'),
('4GH13CS062', 'xgjtf8'),
('4GH13CS401', '2PJA7F'),
('4GH13CS402', 'FpwT8y'),
('4GH13CS404', 'QrBWbj'),
('4GH13CS405', 'h6HBq8'),
('4GH13CS406', 'JWLYQ6'),
('4GH13CS407', 'Hqc32J'),
('4GH13CS408', 'jXhWJr'),
('4GH13CS409', 'gnDHLP'),
('4GH13CS410', 'vkP9FG'),
('4GH14CS400', 'bWMn7N'),
('4GH14CS401', '9G2gHD'),
('4GH14CS402', 'VBcX9H'),
('4GH14CS403', 'wPfLGW'),
('4GH14CS404', 'MhtHd3'),
('4GH14CS405', '6JRc9h'),
('4GH14CS406', 'tGR3T2'),
('4GH14CS407', 'dBX2Hp'),
('4GH14CS408', 'mTxR8W'),
('4GH14CS409', '2xzpQ8'),
('4GH14CS410', 'THPxCD'),
('4GH14CS411', 'VFgBtx'),
('4GH14CS412', 'HW9Pkv'),
('4GK12CS031', 'XCkLn4'),
('4GK12CS036', 'yVjC2D'),
('4GK13CS058', 'hc43BL'),
('4GL13CS403', 'G63d4j'),
('4GL13CS404', 'RBjkcK'),
('admin', '*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19');

-- --------------------------------------------------------

--
-- Table structure for table `semester_master`
--

CREATE TABLE IF NOT EXISTS `semester_master` (
  `sem_id` int(20) NOT NULL AUTO_INCREMENT,
  `sem_name` varchar(255) NOT NULL,
  PRIMARY KEY (`sem_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `semester_master`
--

INSERT INTO `semester_master` (`sem_id`, `sem_name`) VALUES
(1, 'Ccycle'),
(2, 'Pcycle'),
(3, 'III'),
(4, 'IV'),
(5, 'V'),
(6, 'VI'),
(7, 'VII'),
(8, 'VIII');

-- --------------------------------------------------------

--
-- Table structure for table `subject_master`
--

CREATE TABLE IF NOT EXISTS `subject_master` (
  `sub_id` int(20) NOT NULL,
  `sub_name` varchar(255) NOT NULL,
  `sem_id` int(20) NOT NULL,
  `f_id` int(20) NOT NULL,
  `batch_id` int(20) NOT NULL,
  `b_id` int(11) NOT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_master`
--

INSERT INTO `subject_master` (`sub_id`, `sub_name`, `sem_id`, `f_id`, `batch_id`, `b_id`) VALUES
(1, 'EC', 3, 7, 3, 1),
(2, 'LD', 3, 4, 3, 1),
(3, 'DMS', 3, 8, 3, 1),
(4, 'DS', 3, 2, 3, 1),
(5, 'M III', 3, 6, 3, 1),
(6, 'OOP C++', 3, 5, 3, 1),
(7, 'SE', 5, 9, 2, 1),
(8, 'SS', 5, 10, 2, 1),
(9, 'OS', 5, 11, 2, 1),
(10, 'DBMS', 5, 13, 2, 1),
(11, 'CN', 5, 3, 2, 1),
(12, 'FLAT', 5, 13, 2, 1),
(13, 'OOMD', 7, 3, 1, 1),
(14, 'ECS', 7, 14, 1, 1),
(15, 'PW', 7, 5, 1, 1),
(16, 'ACA', 7, 13, 1, 1),
(17, 'JAVA', 7, 1, 1, 1),
(18, 'SAN', 7, 4, 1, 1),
(19, 'M III', 3, 28, 3, 2),
(20, 'BMCT', 3, 27, 3, 2),
(21, 'SOM', 3, 28, 3, 2),
(22, 'Surveying-I', 3, 20, 3, 2),
(23, 'FM', 3, 22, 3, 2),
(24, 'AEG', 3, 23, 3, 2),
(25, 'M&E', 5, 16, 2, 2),
(26, 'RCC', 5, 24, 2, 2),
(27, 'SA-II', 5, 25, 2, 2),
(28, 'GE-I', 5, 21, 2, 2),
(29, 'H&IE', 5, 22, 2, 2),
(30, 'TE-I', 5, 17, 2, 2),
(31, 'EE-I', 7, 20, 1, 2),
(32, 'DSS', 7, 26, 1, 2),
(33, 'QS&E', 7, 19, 1, 2),
(34, 'DPC', 7, 18, 1, 2),
(35, 'HGD', 7, 17, 1, 2),
(36, 'AP&C', 7, 15, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `usn`
--

CREATE TABLE IF NOT EXISTS `usn` (
  `usn_id` int(20) NOT NULL AUTO_INCREMENT,
  `usn_no` varchar(255) NOT NULL,
  `b_id` int(20) NOT NULL,
  `sub_id` int(20) NOT NULL,
  `sem_id` int(20) NOT NULL,
  PRIMARY KEY (`usn_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=167 ;

-- --------------------------------------------------------

--
-- Table structure for table `usn_para`
--

CREATE TABLE IF NOT EXISTS `usn_para` (
  `usn_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `sem_id` int(11) NOT NULL,
  `usn_no` varchar(32) NOT NULL,
  PRIMARY KEY (`usn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usn_para`
--

INSERT INTO `usn_para` (`usn_id`, `batch_id`, `b_id`, `sem_id`, `usn_no`) VALUES
(1, 3, 1, 3, '4GH10CS007'),
(2, 3, 1, 3, '4GH11CS041'),
(3, 3, 1, 3, '4GH13CS001'),
(4, 3, 1, 3, '4GH13CS002'),
(5, 3, 1, 3, '4GH13CS003'),
(6, 3, 1, 3, '4GH13CS004'),
(7, 3, 1, 3, '4GH13CS005'),
(8, 3, 1, 3, '4GH13CS006'),
(9, 3, 1, 3, '4GH13CS007'),
(10, 3, 1, 3, '4GH13CS008'),
(11, 3, 1, 3, '4GH13CS009'),
(12, 3, 1, 3, '4GH13CS010'),
(13, 3, 1, 3, '4GH13CS012'),
(14, 3, 1, 3, '4GH13CS013'),
(15, 3, 1, 3, '4GH13CS014'),
(16, 3, 1, 3, '4GH13CS015'),
(17, 3, 1, 3, '4GH13CS016'),
(18, 3, 1, 3, '4GH13CS017'),
(19, 3, 1, 3, '4GH13CS018'),
(20, 3, 1, 3, '4GH13CS019'),
(21, 3, 1, 3, '4GH13CS020'),
(22, 3, 1, 3, '4GH13CS021'),
(23, 3, 1, 3, '4GH13CS022'),
(24, 3, 1, 3, '4GH13CS023'),
(25, 3, 1, 3, '4GH13CS024'),
(26, 3, 1, 3, '4GH13CS025'),
(27, 3, 1, 3, '4GH13CS026'),
(28, 3, 1, 3, '4GH13CS027'),
(29, 3, 1, 3, '4GH13CS028'),
(30, 3, 1, 3, '4GH13CS029'),
(31, 3, 1, 3, '4GH13CS030'),
(32, 3, 1, 3, '4GH13CS031'),
(33, 3, 1, 3, '4GH13CS032'),
(34, 3, 1, 3, '4GH13CS033'),
(35, 3, 1, 3, '4GH13CS034'),
(36, 3, 1, 3, '4GH13CS035'),
(37, 3, 1, 3, '4GH13CS036'),
(38, 3, 1, 3, '4GH13CS038'),
(39, 3, 1, 3, '4GH13CS039'),
(40, 3, 1, 3, '4GH13CS040'),
(41, 3, 1, 3, '4GH13CS041'),
(42, 3, 1, 3, '4GH13CS042'),
(43, 3, 1, 3, '4GH13CS043'),
(44, 3, 1, 3, '4GH13CS044'),
(45, 3, 1, 3, '4GH13CS045'),
(46, 3, 1, 3, '4GH13CS046'),
(47, 3, 1, 3, '4GH13CS047'),
(48, 3, 1, 3, '4GH13CS048'),
(49, 3, 1, 3, '4GH13CS049'),
(50, 3, 1, 3, '4GH13CS050'),
(51, 3, 1, 3, '4GH13CS051'),
(52, 3, 1, 3, '4GH13CS052'),
(53, 3, 1, 3, '4GH13CS053'),
(54, 3, 1, 3, '4GH13CS055'),
(55, 3, 1, 3, '4GH13CS056'),
(56, 3, 1, 3, '4GH13CS057'),
(57, 3, 1, 3, '4GH13CS058'),
(58, 3, 1, 3, '4GH13CS059'),
(59, 3, 1, 3, '4GH13CS060'),
(60, 3, 1, 3, '4GH13CS061'),
(61, 3, 1, 3, '4GH13CS062'),
(62, 3, 1, 3, '1GG13CS017'),
(63, 3, 1, 3, '4GK13CS058'),
(64, 3, 1, 3, '4GH14CS400'),
(65, 3, 1, 3, '4GH14CS401'),
(66, 3, 1, 3, '4GH14CS402'),
(67, 3, 1, 3, '4GH14CS403'),
(68, 3, 1, 3, '4GH14CS404'),
(69, 3, 1, 3, '4GH14CS405'),
(70, 3, 1, 3, '4GH14CS406'),
(71, 3, 1, 3, '4GH14CS407'),
(72, 3, 1, 3, '4GH14CS408'),
(73, 3, 1, 3, '4GH14CS409'),
(74, 3, 1, 3, '4GH14CS410'),
(75, 3, 1, 3, '4GH14CS411'),
(76, 3, 1, 3, '4GH14CS412'),
(77, 2, 1, 5, '4GH11CS053'),
(78, 2, 1, 5, '4GH12CS002'),
(79, 2, 1, 5, '4GH12CS003'),
(80, 2, 1, 5, '4GH12CS004'),
(81, 2, 1, 5, '4GH12CS005'),
(82, 2, 1, 5, '4GH12CS006'),
(83, 2, 1, 5, '4GH12CS007'),
(84, 2, 1, 5, '4GH12CS008'),
(85, 2, 1, 5, '4GH12CS009'),
(86, 2, 1, 5, '4GH12CS010'),
(87, 2, 1, 5, '4GH12CS011'),
(88, 2, 1, 5, '4GH12CS012'),
(89, 2, 1, 5, '4GH12CS013'),
(90, 2, 1, 5, '4GH12CS014'),
(91, 2, 1, 5, '4GH12CS015'),
(92, 2, 1, 5, '4GH12CS017'),
(93, 2, 1, 5, '4GH12CS018'),
(94, 2, 1, 5, '4GH12CS019'),
(95, 2, 1, 5, '4GH12CS020'),
(96, 2, 1, 5, '4GH12CS021'),
(97, 2, 1, 5, '4GH12CS022'),
(98, 2, 1, 5, '4GH12CS023'),
(99, 2, 1, 5, '4GH12CS025'),
(100, 2, 1, 5, '4GH12CS026'),
(101, 2, 1, 5, '4GH12CS027'),
(102, 2, 1, 5, '4GH12CS028'),
(103, 2, 1, 5, '4GH12CS029'),
(104, 2, 1, 5, '4GH12CS030'),
(105, 2, 1, 5, '4GH12CS031'),
(106, 2, 1, 5, '4GH12CS032'),
(107, 2, 1, 5, '4GH12CS034'),
(108, 2, 1, 5, '4GH12CS036'),
(109, 2, 1, 5, '4GH12CS037'),
(110, 2, 1, 5, '4GH12CS038'),
(111, 2, 1, 5, '4GH12CS040'),
(112, 2, 1, 5, '4GH12CS041'),
(113, 2, 1, 5, '4GH12CS042'),
(114, 2, 1, 5, '4GH12CS043'),
(115, 2, 1, 5, '4GH12CS044'),
(116, 2, 1, 5, '4GH12CS045'),
(117, 2, 1, 5, '4GH12CS046'),
(118, 2, 1, 5, '4GH12CS047'),
(119, 2, 1, 5, '4GH12CS048'),
(120, 2, 1, 5, '4GH12CS049'),
(121, 2, 1, 5, '4GH12CS050'),
(122, 2, 1, 5, '4GH12CS051'),
(123, 2, 1, 5, '4GH12CS052'),
(124, 2, 1, 5, '4GH12CS055'),
(125, 2, 1, 5, '4GH12CS056'),
(126, 2, 1, 5, '4GH12CS057'),
(127, 2, 1, 5, '4GH12CS058'),
(128, 2, 1, 5, '4GH12CS059'),
(129, 2, 1, 5, '4GH12CS060'),
(130, 2, 1, 5, '4GH12CS061'),
(131, 2, 1, 5, '4GH12CS062'),
(132, 2, 1, 5, '4GK12CS031'),
(133, 2, 1, 5, '4GK12CS036'),
(134, 2, 1, 5, '4GH11CS406'),
(135, 2, 1, 5, '4GH13CS401'),
(136, 2, 1, 5, '4GH13CS402'),
(137, 2, 1, 5, '4GH13CS404'),
(138, 2, 1, 5, '4GH13CS405'),
(139, 2, 1, 5, '4GH13CS406'),
(140, 2, 1, 5, '4GH13CS407'),
(141, 2, 1, 5, '4GH13CS408'),
(142, 2, 1, 5, '4GH13CS409'),
(143, 2, 1, 5, '4GH13CS410'),
(144, 2, 1, 5, '4GL13CS403'),
(145, 2, 1, 5, '4GL13CS404'),
(146, 1, 1, 7, '4GH09CS011'),
(147, 1, 1, 7, '4GH10CS051'),
(148, 1, 1, 7, '4GH10CS058'),
(149, 1, 1, 7, '4GH11CS002'),
(150, 1, 1, 7, '4GH11CS003'),
(151, 1, 1, 7, '4GH11CS004'),
(152, 1, 1, 7, '4GH11CS005'),
(153, 1, 1, 7, '4GH11CS006'),
(154, 1, 1, 7, '4GH11CS007'),
(155, 1, 1, 7, '4GH11CS008'),
(156, 1, 1, 7, '4GH11CS009'),
(157, 1, 1, 7, '4GH11CS010'),
(158, 1, 1, 7, '4GH11CS011'),
(159, 1, 1, 7, '4GH11CS012'),
(160, 1, 1, 7, '4GH11CS013'),
(161, 1, 1, 7, '4GH11CS014'),
(162, 1, 1, 7, '4GH11CS016'),
(163, 1, 1, 7, '4GH11CS017'),
(164, 1, 1, 7, '4GH11CS018'),
(165, 1, 1, 7, '4GH11CS019'),
(166, 1, 1, 7, '4GH11CS020'),
(167, 1, 1, 7, '4GH11CS021'),
(168, 1, 1, 7, '4GH11CS022'),
(169, 1, 1, 7, '4GH11CS024'),
(170, 1, 1, 7, '4GH11CS025'),
(171, 1, 1, 7, '4GH11CS026'),
(172, 1, 1, 7, '4GH11CS027'),
(173, 1, 1, 7, '4GH11CS029'),
(174, 1, 1, 7, '4GH11CS030'),
(175, 1, 1, 7, '4GH11CS031'),
(176, 1, 1, 7, '4GH11CS032'),
(177, 1, 1, 7, '4GH11CS033'),
(178, 1, 1, 7, '4GH11CS034'),
(179, 1, 1, 7, '4GH11CS035'),
(180, 1, 1, 7, '4GH11CS036'),
(181, 1, 1, 7, '4GH11CS037'),
(182, 1, 1, 7, '4GH11CS038'),
(183, 1, 1, 7, '4GH11CS039'),
(184, 1, 1, 7, '4GH11CS040'),
(185, 1, 1, 7, '4GH11CS042'),
(186, 1, 1, 7, '4GH11CS043'),
(187, 1, 1, 7, '4GH11CS044'),
(188, 1, 1, 7, '4GH11CS045'),
(189, 1, 1, 7, '4GH11CS046'),
(190, 1, 1, 7, '4GH11CS047'),
(191, 1, 1, 7, '4GH11CS048'),
(192, 1, 1, 7, '4GH11CS049'),
(193, 1, 1, 7, '4GH11CS050'),
(194, 1, 1, 7, '4GH11CS051'),
(195, 1, 1, 7, '4GH11CS052'),
(196, 1, 1, 7, '4GH11CS054'),
(197, 1, 1, 7, '4GH11CS055'),
(198, 1, 1, 7, '4GH11CS056'),
(199, 1, 1, 7, '4GH11CS057'),
(200, 1, 1, 7, '4GH11CS058'),
(201, 1, 1, 7, '4GH11CS059'),
(202, 1, 1, 7, '4GH11CS061'),
(203, 1, 1, 7, '4GH11CS062'),
(204, 1, 1, 7, '4GH11CS063'),
(205, 1, 1, 7, '4GH11CS064'),
(206, 1, 1, 7, '4GH11CS401'),
(207, 1, 1, 7, '4GH12CS400'),
(208, 1, 1, 7, '4GH12CS401'),
(209, 1, 1, 7, '4GH12CS402'),
(210, 1, 1, 7, '4GH12CS403'),
(211, 1, 1, 7, '4GH12CS404'),
(212, 1, 1, 7, '4GH12CS405'),
(213, 1, 1, 7, '4GH12CS406'),
(214, 1, 1, 7, '4GH12CS407'),
(215, 1, 1, 7, '4GH12CS408'),
(216, 1, 1, 7, '4GH12CS409'),
(217, 1, 1, 7, '4GH12CS410'),
(218, 1, 1, 7, '4GH12CS411');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
