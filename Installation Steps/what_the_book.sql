-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2016 at 07:08 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `what_the_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `u_id` int(4) NOT NULL,
  `u_fnm` varchar(35) NOT NULL,
  `u_unm` varchar(25) NOT NULL,
  `u_pwd` varchar(20) NOT NULL,
  `u_gender` varchar(7) NOT NULL,
  `u_email` varchar(35) NOT NULL,
  `u_contact` varchar(12) NOT NULL,
  `u_city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`u_id`, `u_fnm`, `u_unm`, `u_pwd`, `u_gender`, `u_email`, `u_contact`, `u_city`) VALUES
(0, 'Karan Patil', 'karan', 'karan', 'Male', 'karan@gmail.com', '3216549870', 'Navi Mumbai'),
(1, 'Nita Patil', 'nita', 'nita', 'Female', 'abc@gmail.com', '9632587410', 'Navi Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `b_id` int(4) NOT NULL,
  `b_nm` varchar(120) DEFAULT NULL,
  `b_subcat` varchar(25) DEFAULT NULL,
  `b_desc` varchar(20000) DEFAULT NULL,
  `b_publisher` varchar(40) DEFAULT NULL,
  `b_edition` varchar(20) DEFAULT NULL,
  `b_isbn` varchar(15) DEFAULT NULL,
  `b_page` int(5) DEFAULT NULL,
  `b_price` int(5) DEFAULT NULL,
  `b_img` longtext,
  `b_pdf` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`b_id`, `b_nm`, `b_subcat`, `b_desc`, `b_publisher`, `b_edition`, `b_isbn`, `b_page`, `b_price`, `b_img`, `b_pdf`) VALUES
(2, 'Architecture and Landscape Architecture', '8', 'Need a handbook to your architect''s business or studies? Struggling with your latest DIY project? Interested in the art of architecture? This classic work, now in its fifth edition, covers every aspect of architecture and landscape architecture. Ranging from ancient times to contemporary trends, it adopts a truly international perspective, focussing on countries and cultures such as Coptic, Tibet and De Stijl. Without doubt, this is the standard work in the field. As reflected by its new title, "The Penguin Dictionary of Architecture and Landscape Architecture" has now been expanded to include recent developments in the field of landscape architecture. Full account has been taken, too, of the huge range of building traditions around the world. The text has been completely reset and all the illustrations redrawn. ''Immensely useful, succinct and judicious...this is a book rich in fact and accumulated wisdom.'' - "The Times Literary Supplement".', 'Penguin Books Ltd', '1999', '9780140513233', 656, 350, 'upload_image/014051323X.jpg', 'upload_ebook/qhlogs.doc'),
(3, 'Castle', '8', 'Beginning with their introduction in the eleventh century', 'Cornerstone', '2012', '9780099558491', 288, 250, 'upload_image/0099558491.jpg', 'upload_ebook/books.docx'),
(4, 'Antons Dance Class', '9', 'mnm', 'Kyle Books', '2007', '9781856267311', 224, 290, 'upload_image/1856267318.jpg', 'upload_ebook/net exam syllabus.txt'),
(5, '  Mud, Sweat and Tears', '11', 'Bear Grylls is a man who has always sought the ultimate in adventure. Growing up on the Isle of Wight, he was taught by his father to sail and climb at an early age', 'Transworld Publishers Ltd', '2012', '9781905026494', 480, 650, 'upload_image/1905026498.jpg', 'upload_ebook/soup.txt');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(4) NOT NULL,
  `cat_nm` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_nm`) VALUES
(1, 'Arts'),
(2, 'Biography and true stories');

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

CREATE TABLE `subcat` (
  `subcat_id` int(4) NOT NULL,
  `parent_id` int(4) NOT NULL,
  `subcat_nm` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`subcat_id`, `parent_id`, `subcat_nm`) VALUES
(8, 1, 'Architecture'),
(9, 1, 'Dance'),
(10, 1, 'Music'),
(11, 2, 'Biography: general'),
(12, 2, 'True stories'),
(13, 3, 'Mathematics'),
(14, 3, 'Physics'),
(15, 3, 'Chemistry');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(4) NOT NULL,
  `u_fnm` varchar(35) NOT NULL,
  `u_unm` varchar(25) NOT NULL,
  `u_pwd` varchar(20) NOT NULL,
  `u_gender` varchar(7) NOT NULL,
  `u_email` varchar(35) NOT NULL,
  `u_contact` varchar(12) NOT NULL,
  `u_city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_fnm`, `u_unm`, `u_pwd`, `u_gender`, `u_email`, `u_contact`, `u_city`) VALUES
(1, 'Aditi Sakhare', 'aditi', '123456', 'Female', 'aditisakhare21@gmail.com', '9819397043', 'Navi Mumbai'),
(2, 'Nilesh Patil', 'nilesh', 'aditi', 'Male', 'nilpatil2411@gmail.com', '9768742885', 'Navi Mumbai'),
(5, 'Abhishek Saha', 'abhi', 'abhishek', 'Male', 'test@gmail.com', '9874566210', 'Bhavnagar'),
(6, 'Durva Patil', 'durva', 'durva', 'Female', 'durvapatil@gmail.com', '9632586471', 'Mehsana');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `subcat`
--
ALTER TABLE `subcat`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `u_unm` (`u_unm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `b_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subcat`
--
ALTER TABLE `subcat`
  MODIFY `subcat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
