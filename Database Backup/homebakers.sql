-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2020 at 07:01 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homebakers`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `cityid` int(10) NOT NULL,
  `locationid` int(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cityid`, `locationid`, `city`, `description`, `status`) VALUES
(14, 9, 'Pandeshwar', '', 'Active'),
(15, 9, 'kankanady', '', 'Active'),
(16, 9, 'Falnir', '', 'Active'),
(17, 10, 'Malpe', '', 'Active'),
(18, 10, 'Udyavara', '', 'Active'),
(19, 10, 'Maravanthe', '', 'Active'),
(20, 11, 'Eshwar nagar', '', 'Active'),
(21, 11, 'End point', '', 'Active'),
(22, 11, 'vidhya nagar', '', 'Active'),
(23, 12, 'Krishnapura', '', 'Active'),
(24, 12, 'Chokabettu', '', 'Active'),
(25, 12, 'Kambla', '', 'Active'),
(26, 13, 'vamanjoor', '', 'Active'),
(27, 13, 'Onikatte', '', 'Active'),
(28, 13, 'Iruvail', '', 'Active'),
(29, 14, 'Natekal', '', 'Active'),
(30, 14, 'Assaigoli', '', 'Active'),
(31, 14, 'Konaje', '', 'Active'),
(32, 15, 'Ullal', '', 'Active'),
(33, 15, 'Beeri', '', 'Active'),
(34, 15, 'K C road', '', 'Active'),
(35, 16, 'Kannur', '', 'Active'),
(36, 16, 'Pudu', '', 'Active'),
(37, 16, 'Thumbe', '', 'Active'),
(38, 10, 'kapettu', '', 'Active'),
(39, 10, 'Jodukatte', '', 'Active'),
(40, 10, 'Chitpady', '', 'Active'),
(41, 10, 'KinniMulki', '', 'Active'),
(42, 9, 'Valencia', '', 'Active'),
(43, 9, 'kudroli', '', 'Active'),
(44, 17, 'Jaya nagar', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` int(10) NOT NULL,
  `customername` varchar(100) NOT NULL,
  `companyname` varchar(25) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `locationid` int(10) NOT NULL,
  `cityid` int(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `customername`, `companyname`, `emailid`, `password`, `contactno`, `address`, `locationid`, `cityid`, `status`) VALUES
(19, 'haneena mariyama', '', 'haneenamariyama@gmail.com', '123456', '9663699954', '3rd fkiir, city light building', 0, 0, 'Active'),
(24, 'Shaizan', '', 'shaizan@gmail.com', 'shaizan12', '9063621374', 'tippu sulthan nagar', 11, 20, 'Active'),
(26, 'Diana fernandis', '', 'diana@gmail.com', 'diana12', '9663711354', 'tippu sulthan nagar', 11, 21, 'Active'),
(28, 'haseeba', '', 'haseeba@gmail.com', 'haseeba1', '9967548865', 'Sanjeevani castle , flat 201 old kent road', 9, 14, 'Active'),
(29, 'fathima', '', 'fathima@gmail.com', 'fathima', '9999999999', '', 0, 0, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeid` int(10) NOT NULL,
  `employeename` varchar(50) NOT NULL,
  `locationid` int(10) NOT NULL,
  `loginid` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `employeetype` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeid`, `employeename`, `locationid`, `loginid`, `password`, `employeetype`, `status`) VALUES
(8, 'admin', 0, 'admin', 'admin', 'Admin', 'active'),
(9, 'Shankar', 9, 'shankar@gmail.com', 'shankar1', 'Employee', 'Active'),
(10, 'Hareesh', 9, 'hareesh@gmail.com', 'hareesh1', 'Employee', 'Active'),
(11, 'Shamsudeen', 9, 'shamsu@gmail.com', 'shamsu1', 'Employee', 'Active'),
(12, 'Zakir', 10, 'zakir@gmail.com', 'zakir12', 'Employee', 'Active'),
(13, 'Elreen', 10, 'elreen@gmail.com', 'elreen12', 'Employee', 'Active'),
(14, 'Mahesh', 10, 'mahesh@gmail.com', 'mahesh1', 'Employee', 'Active'),
(15, 'Shakir', 11, 'shakir@gmail.com', 'shakir12', 'Employee', 'Active'),
(16, 'Anantha', 11, 'anantha@gmail.com', 'anantha1', 'Employee', 'Active'),
(17, 'Anddy', 11, 'anddy@gmail.com', 'anddy12', 'Employee', 'Active'),
(18, 'Ramesh', 12, 'ramesh@gmail.com', 'ramesh12', 'Employee', 'Active'),
(19, 'Hameed', 12, 'hameed@gmail.com', 'hameed1', 'Employee', 'Active'),
(20, 'Issac', 12, 'issac@gmail.com', 'isaac1', 'Employee', 'Active'),
(21, 'Suresh', 13, 'suresh@gmail.com', 'suresh12', 'Employee', 'Active'),
(22, 'Yusaf', 13, 'yusaf@gmail.com', 'yusaf12', 'Employee', 'Active'),
(23, 'Micheal F', 13, 'micheal@gmail.com', 'micheal12', 'Employee', 'Active'),
(24, 'Nishmith', 14, 'nishmith@gmail.com', 'nishmith12', 'Employee', 'Active'),
(25, 'Mazin', 14, 'mazin@gmail.com', 'mazin12', 'Employee', 'Active'),
(26, 'Adel', 14, 'adel@gmail.com', 'adel123', 'Employee', 'Active'),
(27, 'Harshan', 16, 'harshan@gmail.com', 'harshan1', 'Employee', 'Active'),
(28, 'Haziman', 16, 'haziman@gmail.com', 'haziman1', 'Employee', 'Active'),
(29, 'Felix', 16, 'felix@gmail.com', 'felix12', 'Employee', 'Active'),
(30, 'Sujan', 15, 'sujan@gmail.com', 'sujan12', 'Employee', 'Active'),
(31, 'Faraz', 15, 'faraz@gmail.com', 'faraz12', 'Employee', 'Active'),
(32, 'Alexander', 15, 'alexander@gmail.com', 'alex123', 'Employee', 'Active'),
(33, 'Khader', 9, 'khader@gmail.com', '123456', 'Admin', 'Active'),
(35, 'Preetham kumar', 17, 'preethamkumar', 'q1w2e3r4', 'Employee', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `foodcategory`
--

CREATE TABLE `foodcategory` (
  `foodcategoryid` int(10) NOT NULL,
  `foodcategoryname` varchar(100) NOT NULL,
  `foodcategorydescription` text NOT NULL,
  `foodcategoryimage` varchar(100) NOT NULL,
  `foodcategorystatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodcategory`
--

INSERT INTO `foodcategory` (`foodcategoryid`, `foodcategoryname`, `foodcategorydescription`, `foodcategoryimage`, `foodcategorystatus`) VALUES
(1, 'Burger', 'Burger is a food typically consisting of vegetables, sliced cheese or meat, placed on or between slices of bread, or more generally any dish wherein bread serves as a container or wrapper for another food type.', '526734282b1.jpeg', 'Active'),
(2, 'Cake', 'Cake is a form of sweet food made from flour, sugar, and other ingredients, that is usually baked. ', '1491388702ck5.JPG', 'Active'),
(3, 'Sandwich', 'A sandwich is a food typically consisting of vegetables, sliced cheese or meat, placed on or between slices of bread, or more generally any dish wherein bread serves as a container or wrapper for another food type.', '923494170sandwich1.jpeg', 'Active'),
(4, 'Pizza', 'Pizza (Italian: [Ëˆpittsa], Neapolitan: [ËˆpittsÉ™]) is a savory dish of Italian origin, consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (anchovies, olives, meat, etc.) baked at a high temperature, traditionally in a wood-fired ...', '1231388955p1.jpeg', 'Active'),
(5, 'Papad', 'The papad is a thin Indian wafer, sometimes described as a cracker or flatbread. It is usually made from dried lentils; eaten fried or roasted', '1409045773pl2.jpeg', 'Active'),
(6, 'Pickle', 'Search Results\r\nFeatured snippet from the web\r\nA pickle is a type of preserved food that has been placed in a brine. They brine typically contains a lot of salt or sugar and spices which act as a preservative. ... So a sweet pickle will taste sweet, a sour pickle with be sour and so on', '1662565449pd3.jpeg', 'Active'),
(7, 'Mayonnaise', 'Mayonnaise informally mayo  is a thick cold condiment or dressing commonly used in sandwiches and composed salads or on French fries. It is also a base in sauces such as Tartar sauce. It is a stable emulsion of oil, egg yolk, and an acid, either vinegar or lemon juice.There are many variants using additional flavoring', '1549681117my2.jpeg', 'Active'),
(8, 'Biriyani', 'A world-renowned Indian dish, biryani takes time and practice to make but is worth every bit of the effort. Long-grained rice (like basmati) flavored with exotic spices, such as saffron, is layered with lamb, chicken, fish, or vegetables, and a thick gravy.', '239666690br5.JPG', 'Active'),
(9, 'Appam', 'Appam is originated from South India and Sri Lanka, made with fermented rice batter and coconut milk, common in Tamil Nadu, Kerala and Sri Lanka. It is eaten most frequently for breakfast or dinner.', '1812361986a1.JPG', 'Active'),
(10, 'Spice Powder', 'spice powder definition is - a blend of spices typically including anise, pepper, fennel, cloves, and cinnamon that is used in Chinese cooking', '1991536998ms3.JPG', 'Active'),
(11, 'Kunafa', ' A Kunufa is a cooked sweet food made with flour, fat , and eggs, and usually served hot.', '1142353768kf5.jpeg', 'Active'),
(12, 'Pudding', ' A pudding is a cooked sweet food made with flour, fat , and eggs, and usually served hot.', '2010856808pdn3.JPG', 'Active'),
(13, 'Starters', ' starter is a small quantity of food that is served as the first course of a meal. ...', '287583115stt1.JPG', 'Active'),
(14, 'Snacks', ' snack is a small service of food and generally eaten between meals. Snacks come in a variety of forms including packaged snack foods and other processed foods, as well as items made from fresh ingredients at home. ... Snack foods are typically designed to be portable, quick, and satisfying.', '1247983659st1.JPG', 'Active'),
(15, 'deserts', 'Dessert is a course that concludes a meal.The term dessert can apply to many confections, such as biscuits, cakes, cookies, custards, gelatins, ice creams, pastries, pies, puddings, sweet soups, and tarts. Fruit is also commonly found in dessert courses because of its naturally occurring sweetness.\r\n', '685795433ds1.JPG', 'Active'),
(16, 'Breads', 'Bread is a staple food prepared from a dough of flour and water, usually by baking. ... Bread may be leavened by processes such as reliance on naturally occurring sourdough microbes, chemicals, industrially produced yeast, or high-pressure aeration.', '1293766823bd5.JPG', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `foodorder`
--

CREATE TABLE `foodorder` (
  `orderid` int(10) NOT NULL,
  `customerid` int(10) NOT NULL,
  `paymentid` int(10) NOT NULL,
  `homechefid` int(10) NOT NULL,
  `itemid` int(10) NOT NULL,
  `qty` float(10,2) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodorder`
--

INSERT INTO `foodorder` (`orderid`, `customerid`, `paymentid`, `homechefid`, `itemid`, `qty`, `cost`, `description`, `status`) VALUES
(13, 10, 2, 4, 3, 3.00, 150.00, '', 'Delivered'),
(14, 10, 2, 4, 4, 3.00, 113.00, '', 'Delivered'),
(15, 11, 3, 4, 3, 6.00, 150.00, 'no papaya', 'Delivered'),
(16, 11, 3, 4, 4, 4.00, 113.00, '', 'Delivered'),
(19, 19, 4, 10, 1, 1.00, 150.00, 'hi', 'Delivered'),
(20, 19, 4, 10, 2, 1.00, 120.00, 'hello', 'Delivered'),
(21, 21, 5, 10, 1, 3.00, 150.00, 'spicy food', 'Delivered'),
(22, 21, 5, 10, 2, 4.00, 120.00, '', 'Delivered'),
(27, 21, 6, 10, 2, 4.00, 120.00, '', 'Delivered'),
(28, 21, 6, 10, 1, 5.00, 150.00, 'less spicy', 'Delivered'),
(30, 28, 7, 12, 11, 5.00, 113.00, '', 'Delivered'),
(31, 28, 7, 12, 12, 4.00, 78.00, 'less spicy', 'Delivered'),
(32, 26, 8, 20, 27, 4.00, 230.00, 'more cheesy', 'Delivered'),
(33, 26, 8, 20, 28, 1.00, 280.00, '', 'Delivered'),
(34, 26, 8, 20, 29, 2.00, 550.00, '', 'Delivered'),
(35, 24, 9, 18, 19, 1.00, 250.00, '', 'Delivered'),
(36, 24, 9, 18, 20, 2.00, 113.00, 'spicy', 'Delivered'),
(38, 24, 9, 18, 22, 3.00, 45.00, '', 'Delivered'),
(49, 20, 10, 8, 7, 3.00, 200.00, 'more spicy', 'Delivered'),
(50, 20, 10, 8, 9, 2.00, 135.00, '', 'Delivered'),
(52, 26, 11, 20, 28, 2.00, 280.00, '', 'Delivered'),
(53, 26, 11, 20, 27, 2.00, 230.00, '', 'Delivered'),
(54, 26, 11, 20, 29, 3.00, 550.00, '', 'Delivered'),
(55, 26, 12, 19, 23, 3.00, 180.00, '', 'Delivered'),
(56, 26, 12, 19, 26, 3.00, 30.00, 'spicy', 'Delivered'),
(57, 26, 13, 19, 23, 3.00, 180.00, 'spicy', 'Delivered'),
(58, 26, 13, 19, 24, 2.00, 200.00, '', 'Delivered'),
(59, 26, 13, 19, 25, 4.00, 160.00, '', 'Delivered'),
(60, 26, 14, 6, 3, 4.00, 250.00, '', 'Delivered'),
(61, 26, 14, 6, 4, 3.00, 180.00, '', 'Delivered'),
(63, 24, 1, 20, 30, 5.00, 150.00, 'More Spicy', 'Delivered'),
(64, 24, 1, 20, 28, 3.00, 280.00, 'More Pista', 'Delivered'),
(65, 19, 15, 18, 19, 1.00, 250.00, '', 'Delivered'),
(68, 31, 28, 7, 5, 5.00, 120.00, 'This is test record', 'Active'),
(69, 31, 28, 7, 6, 10.00, 90.00, '', 'Active'),
(70, 19, 42, 6, 3, 5.00, 250.00, '', 'Active'),
(71, 19, 42, 6, 4, 4.00, 180.00, '', 'Active'),
(75, 34, 46, 93, 38, 2.00, 250.57, '', 'Delivered'),
(77, 19, 47, 7, 5, 3.00, 120.00, '', 'Active'),
(78, 19, 47, 7, 6, 1.00, 90.00, '', 'Active'),
(82, 36, 48, 95, 39, 100.00, 100.00, 'Add Sugar', 'Delivered'),
(83, 29, 49, 6, 42, 5.00, 300.00, 'B', 'Delivered'),
(84, 29, 50, 10, 1, 3.00, 150.00, 'no tomato', 'Delivered'),
(86, 29, 51, 6, 3, 10.00, 250.00, '', 'Delivered'),
(87, 29, 51, 6, 4, 5.00, 180.00, '', 'Delivered'),
(88, 29, 51, 6, 40, 10.00, 290.00, '', 'Delivered'),
(91, 29, 52, 6, 43, 10.00, 250.00, '', 'Packed'),
(92, 29, 52, 6, 66, 5.00, 20.00, '', 'Packed');

-- --------------------------------------------------------

--
-- Table structure for table `homechef`
--

CREATE TABLE `homechef` (
  `homechefid` int(10) NOT NULL,
  `homechefname` varchar(100) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `locationid` int(10) NOT NULL,
  `address` text NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `foodtype` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homechef`
--

INSERT INTO `homechef` (`homechefid`, `homechefname`, `emailid`, `password`, `locationid`, `address`, `contactno`, `foodtype`, `image`, `description`, `status`) VALUES
(6, 'Seema Banerji', 'fathimarafiya54164@gmail.com', 'seema12', 9, 'subhash nagar 3rd cross pandeshwar', '9663621354', 'Both', '1621058334h1.JPG', '', 'Active'),
(7, 'reena', 'reena@gmail.com', 'reena12', 9, 'Old  Kent Road,Sanjeev Castle D-1 pandeshwar', '9731189378', 'Both', '1015538489h2.JPG', '', 'Active'),
(8, 'Faiza', 'faiza@gmail.com', 'faiza123', 9, 'julie bagh aparment, A-502, Pandeshwar', '9876567890', 'Non-Vegetarian', '238769658h5.JPG', '', 'Active'),
(9, 'Ankitha K', 'ankitha@gmail.com', 'ankitha', 10, 'Pearl Apartment flat 302 , ganjimat', '9663621354', 'Vegetarian', '1146369314h7.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(10, 'Sandra Fernandis', 'sandra@gmail.com', 'sandra1', 10, 'Northern sky ,flat 404, Shanthi Nagar', '9809876546', 'Both', '479926984h4.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(12, 'Smitha', 'smitha@gmail.com', 'smitha12', 10, 'julie bagh apartment, shanthi nagar', '9972723363', 'Both', '1468969518h11.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(13, 'bindra', 'indra@gmail.com', '123456789', 9, '4rd floor', '789456123', 'Vegetarian', '1461578248h9.JPG', '', 'Active'),
(16, 'Raveena', 'raveena@gmail.com', 'raveena', 11, 'Golden Chamber flat 301, Subash nagar', '9663621354', 'Both', '855885906h14.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(17, 'Pooja ', 'pooja@gmail.com', 'pooja12', 10, 'plantinum apartment , flat 202, shiv nagar', '9663621354', 'Non-Vegetarian', '212971174h8.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(18, 'Sumitha bandra', 'sumitha@gmail.com', 'sumitha1', 11, 'Casca apartment , flat 202 ,shiv bagh', '9663621354', 'Vegetarian', '50546222h16.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(19, 'Zafreen', 'zafreen@gmail.com', 'zafreen1', 11, 'Shareef Manzil, 3rd cross , Valencia ', '8967542365', 'Non-Vegetarian', '1335796448h19.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(20, 'Rafiya', 'fathimarafiya5416@gmail.com', 'rafiya123', 11, 'Julie bagh apartment, A-502 Bunder', '9972723363', 'Both', '1361988135h20.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(21, 'Caroline', 'caroline@gmail.com', 'caroline1', 12, 'Smitha complex , flat103 ,Krishnapura', '9663621354', 'Non-Vegetarian', '88920658h21.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(22, 'Neha Kanchan', 'neha@gmail.com', 'neha1234', 12, 'cozy corner flat 203 , Baikampady', '9663621354', 'Vegetarian', '172538661h22.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(23, 'Shamikha Aysha', 'shamika@gmail.com', 'shaami123', 12, 'star residency , flat 202, Katipalla', '9972723363', 'Both', '975935411h13.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(25, 'Shwwetha M', 'shwetha@gmail.com', 'shwetha1', 13, 'maurishkha apartment, flat 302 ,shivaji nagar', '8967542365', 'Both', '1913996070h24.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(26, 'Haneena Mariyamma', 'hani@gmail.com', 'hani123', 13, 'Misbah apartment , flat 505 , Vijayawada nagar', '9972723363', 'Non-Vegetarian', '1343098248h25.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(27, 'Kavitha B', 'kavitha@gmail.com', 'kavitha1', 14, 'Zafir manzil apartment, flat 306 , Chillimbi', '9663621354', 'Vegetarian', '574731678h27.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(28, 'Shama Safiya', 'shama@gmail.com', 'shama12', 14, 'Saleem villa , 4th cross shubnagar', '9972723363', 'Both', '2093058282h28.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(29, 'Audry Micheal', 'audry@gmail.com', 'audry123', 15, 'Micheal Paradise , 4th cross Old kent road , Ullal', '9731189378', 'Vegetarian', '1707417468h41.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(30, 'Methali Das', 'methali@gmail.com', 'methali1', 15, 'West gate , flat 203 , Nehru road', '8967542365', 'Non-Vegetarian', '331202173h30.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(31, 'Farath', 'fara@gmail.com', 'fara123', 15, 'julie bagh sulthan apartment, flat 502 , B.c road', '9972723363', 'Both', '1318168083h35.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(32, 'Sunaina aysha', 'sunaina@gmail.com', 'sunnu123', 16, 'Aksa manzil , 2nd cross ,Bejai ', '8967542365', 'Vegetarian', '2063602686h31.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(33, 'Pratheeksha', 'prathiksha@gmail.com', 'prathi12', 16, 'Pratheeksha Shenoy, 2nd cross ,Kulai ', '9972723363', 'Both', '1880497121h33.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(34, 'Anan aysha', 'anan@gmail.com', 'anan12', 16, 'star residency , flat 204, kandathpalli', '9972723363', 'Non-Vegetarian', '1750162448h32.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(35, 'Rifath ', 'rifath@gmail.com', 'rifa123', 14, 'Shfeel Manzil, 4th cross jeppu', '9663621354', 'Non-Vegetarian', '1243598492h36.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(36, 'Ashwathi', 'ashwati@gmail.com', 'ashwathi123', 13, 'Iwary tower, flat 204 , vijayeenagar', '8967542365', 'Both', '948651283h42.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(37, 'kaavya rao', 'kaavya@gmail.com', 'KAAVYA12', 13, 'Sahara heights , flat 405 , tippu nagar', '9663621354', 'Vegetarian', '1006588269h45.JPG', 'It is not always easy to prepare all your meals at home due to the hustle and bustle of everyday life. I know that most people would love to cook at home but sometimes, the time isn\'t just there. Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsome, and tempting.', 'Active'),
(94, 'Meghana', 'haneenamariyam00@gmail.com', 'meghana1', 10, 'vishawas royal block A 505', '9663621354', 'Vegetarian', '1758322554h43.JPG', '', 'Active'),
(95, 'Peter k', 'peterk@gmail.com', 'q1w2e3r4', 17, '3rd floor,City light', '9876543221', 'Both', '1943675424Peter k.jpg', '', 'Active'),
(96, 'zoya', 'zoya@gmail.com', 'zoya123', 14, '', '7890654345', 'Both', '1307246536girl1.jpg', '', 'Active'),
(97, 'kreethi', 'kreethi@gmail.com', 'kreethi123', 15, '', '9087765445', 'Both', '1516116132girl2.jpg', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `itemid` int(10) NOT NULL,
  `homechefid` int(10) NOT NULL,
  `foodcategoryid` int(10) NOT NULL,
  `foodtype` varchar(200) NOT NULL,
  `itemname` varchar(100) NOT NULL,
  `itemcost` float(10,2) NOT NULL,
  `itemimage` varchar(100) NOT NULL,
  `itemdescription` text NOT NULL,
  `itemtype` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itemid`, `homechefid`, `foodcategoryid`, `foodtype`, `itemname`, `itemcost`, `itemimage`, `itemdescription`, `itemtype`, `status`) VALUES
(1, 10, 1, 'Non Vegitarian', 'Chicken Burger', 150.00, '1068495986b2.jpeg', 'A hamburger (also burger for short) is a food consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled.', '', 'Active'),
(2, 10, 1, 'Vegetarian', 'Veg Burger', 120.00, '2007812891b3.jpeg', 'A hamburger (also burger for short) is a food consisting of one or more cooked patties of paneer placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled..', '', 'Active'),
(3, 6, 8, 'Non Vegitarian', 'Chicken Hyderabadi Biriyani', 250.00, '538036201br4.JPG', '', '', 'Active'),
(4, 6, 13, 'Non Vegitarian', 'Chicken Lollipop', 180.00, '1808949809stt2.JPG', '', '', 'Active'),
(5, 7, 4, 'Non Vegitarian', 'Margeritta Pizza', 120.00, '627484298p4.jpeg', '', '', 'Active'),
(6, 7, 1, 'Vegetarian', 'Veg Burger', 90.00, '2084939390b1.jpeg', '', '', 'Active'),
(7, 8, 6, 'Non Vegitarian', 'Mutton Pickle', 200.00, '720329661pd4.jpeg', '', '', 'Active'),
(8, 8, 5, 'Non Vegitarian', 'Masala Papad', 120.00, '787655403pl5.jpeg', '', '', 'Active'),
(9, 8, 7, 'Non Vegitarian', 'Egg Mayonnaise', 135.00, '1468829219my3.jpeg', '', '', 'Active'),
(10, 12, 6, 'Vegetarian', 'Lime Pickle', 85.00, '1788185552pd2.jpeg', 'Sweet & Spicy lemon pickle with added jaggery that is good to store for a year or more. ... Lime Pickle Recipe also known as the Naranga Achaar is delicious when homemade. ... Serve Spicy Lime Pickle Recipe (Naranga Achaar) along with Cabbage Paneer Parathas Recipe and curd.', '', 'Active'),
(11, 12, 6, 'Vegetarian', 'Mango pickle', 113.00, '1718649650pd3.jpeg', '', '', 'Active'),
(12, 12, 5, 'Vegetarian', 'Aam Papad', 78.00, '297064393pl1.jpeg', '', '', 'Active'),
(13, 17, 8, 'Non Vegitarian', 'Tikka Biriyani', 140.00, '1164911023br2.JPG', '', '', 'Active'),
(14, 17, 14, 'Vegetarian', 'Samosa', 30.00, '1287546635st1.JPG', '', '', 'Active'),
(15, 17, 14, 'Non Vegitarian', 'Chicken Roll', 25.00, '170944361st3.JPG', '', '', 'Active'),
(16, 9, 11, 'Vegetarian', 'Vanilla Pudding', 120.00, '1916002448pdn3.JPG', '', '', 'Active'),
(17, 9, 11, 'Vegetarian', 'Bread pudding', 150.00, '447842895pdn4.JPG', '', '', 'Active'),
(18, 9, 2, 'Vegetarian', 'Chocolate Cake', 320.00, '1018588397ck1.JPG', '', '', 'Active'),
(19, 18, 6, 'Non Vegitarian', 'Mutton Pickle', 250.00, '894813619pd5.jpeg', '', '', 'Active'),
(20, 18, 6, 'Vegetarian', 'Lime Pickle', 113.00, '751584726pd3.jpeg', '', '', 'Active'),
(21, 18, 5, 'Vegetarian', 'Plain Papad', 50.00, '1490578200pl5.jpeg', '', '', 'Active'),
(22, 18, 10, 'Vegetarian', 'Garam Masala Powder ', 45.00, '1411344604ms4.JPG', '', '', 'Active'),
(23, 19, 8, 'Non Vegitarian', 'Chicken Dum Biriyani ', 180.00, '518381620br3.JPG', '', '', 'Active'),
(24, 19, 13, 'Non Vegitarian', 'Chicken Skewers', 200.00, '2038823671stt4.JPG', '', '', 'Active'),
(25, 19, 13, 'Vegetarian', 'Paneer Tikka', 160.00, '449858747stt3.JPG', '', '', 'Active'),
(26, 19, 14, 'Non Vegitarian', 'Chicken Cutlet', 30.00, '1648827654st2.JPG', '', '', 'Active'),
(27, 20, 11, 'Non Vegitarian', 'Cheese Kunafa', 230.00, '1304251264kf2.jpeg', '', '', 'Active'),
(28, 20, 11, 'Non Vegitarian', 'Pistachio Kunafa', 280.00, '1214855104kf4.jpeg', '', '', 'Active'),
(29, 20, 2, 'Non Vegitarian', 'Rainbow Cake', 550.00, '945894365ck3.JPG', '', '', 'Active'),
(30, 20, 7, 'Non Vegitarian', 'Chilli Mayonnaise', 150.00, '231187088my5.jpeg', '', '', 'Active'),
(31, 38, 8, 'Vegetarian', 'chicken ', 250.00, '893683653br3.JPG', '', '', 'Active'),
(32, 38, 9, 'Vegetarian', 'dosa', 40.00, '1972772590a4.JPG', '', '', 'Active'),
(33, 38, 2, 'Vegetarian', 'chicken', 200.00, '1247951995a3.JPG', 'test', '', 'Active'),
(34, 38, 3, 'Vegetarian', 'chicken', 100.00, '634339688a4.JPG', 'test', '', 'Active'),
(35, 38, 3, 'Non Vegitarian', 'chicken', 100.00, '791867440a4.JPG', 'test', '', 'Active'),
(36, 38, 3, 'Non Vegitarian', 'chicken', 100.00, '236049891a4.JPG', 'test', '', 'Active'),
(37, 38, 3, 'Non Vegitarian', 'chicken', 100.00, '2113576931a4.JPG', 'test', '', 'Active'),
(38, 93, 12, 'Non Vegitarian', 'caramel pudding', 250.57, '480582862pdn2.JPG', '', '', 'Active'),
(39, 95, 17, 'Vegetarian', 'Peda', 100.00, '703183288peda.jpg', 'Peda or Pera is a sweet dish hailing from the Indian subcontinent. It originated from Mathura, Uttar Pradesh, India. Usually prepared in thick, semi-soft pieces, its main ingredients are khoa, sugar and traditional flavorings including cardamom seeds, pistachio nuts and saffron. ', '', 'Active'),
(40, 6, 4, 'Non Vegitarian', 'mozerrella pizza', 290.00, '372490315IMG_2963 (1).JPG', '', '', 'Active'),
(41, 6, 1, 'Vegetarian', 'paneer burger', 150.00, '2141156860b3.jpeg', '', '', 'Active'),
(42, 6, 2, 'Non Vegitarian', 'strawberry cake', 300.00, '2111678487ck2.JPG', '', '', 'Active'),
(43, 6, 11, 'Non Vegitarian', 'cheese Kunafa', 250.00, '168303676kf1.jpeg', '', '', 'Active'),
(44, 7, 5, 'Vegetarian', 'palak papad', 50.00, '1898536020pl1.jpeg', '', '', 'Active'),
(45, 7, 6, 'Vegetarian', 'mixed veg pickle', 75.00, '1679065790pd4.jpeg', '', '', 'Active'),
(46, 7, 12, 'Non Vegitarian', 'mango pudding', 250.00, '768997493pdn2.JPG', '', '', 'Active'),
(47, 8, 7, 'Vegetarian', 'veg Mayonnise', 125.00, '2002278881my3.jpeg', '', '', 'Active'),
(48, 8, 8, 'Non Vegitarian', 'chicken Hyderabadi biriyani', 220.00, '717603348br5.JPG', '', '', 'Active'),
(49, 8, 9, 'Vegetarian', 'Neer Dosa', 50.00, '1837115452a4.JPG', '', '', 'Active'),
(50, 8, 13, 'Non Vegitarian', 'chicken Lollipop', 150.00, '612353651stt2.JPG', '', '', 'Active'),
(51, 13, 10, 'Vegetarian', 'garam malasa powder', 85.00, '1741140300IMG_3314 (1).JPG', '', '', 'Active'),
(52, 13, 15, 'Non Vegitarian', 'Pancake', 110.00, '448048644ds5.JPG', '', '', 'Active'),
(53, 13, 14, 'Vegetarian', 'Veg Sandwich', 35.00, '2100263065sandwich1 (1).jpeg', '', '', 'Active'),
(54, 13, 1, 'Non Vegitarian', 'Chicken Burger ', 215.00, '1849431175b5.jpeg', '', '', 'Active'),
(55, 13, 2, 'Non Vegitarian', 'Chocolate Cake', 450.00, '1413751651ck4.JPG', '', '', 'Active'),
(56, 13, 11, 'Non Vegitarian', 'Pistachio Kunafa', 225.00, '368038019IMG_2972.JPG', '', '', 'Active'),
(57, 8, 4, 'Non Vegitarian', 'Cheese Pizza', 160.00, '702485577IMG_2998.JPG', '', '', 'Active'),
(58, 8, 5, 'Vegetarian', 'Ajwine Papad', 64.00, '1283086980pl5.jpeg', '', '', 'Active'),
(59, 8, 6, 'Vegetarian', 'Lemon Papad', 110.00, '1707709230pd2.jpeg', '', '', 'Active'),
(60, 8, 12, 'Non Vegitarian', 'Vanilla Pudding', 150.00, '498035929pdn3.JPG', '', '', 'Active'),
(61, 7, 7, 'Non Vegitarian', 'Shezwan Mayonnaise', 110.00, '1893978293IMG_2980.JPG', '', '', 'Active'),
(62, 7, 8, 'Non Vegitarian', 'Tikka Biriyani', 160.00, '1096843409br3.JPG', '', '', 'Active'),
(63, 7, 13, 'Non Vegitarian', 'Paneer Tandoori', 230.00, '610583191stt3.JPG', '', '', 'Active'),
(64, 16, 1, 'Non Vegitarian', 'Chicken Cheese Burger', 290.00, '694704165b1.jpeg', '', '', 'Active'),
(65, 6, 15, 'Vegetarian', 'Chocolate jar', 130.00, '1568711725pd1.JPG', '', '', 'Active'),
(66, 6, 14, 'Vegetarian', 'Punjabi Samosa', 20.00, '910586493st1.JPG', '', '', 'Active'),
(67, 6, 16, 'Vegetarian', 'Brown Bread', 35.00, '343047730IMG_2991.JPG', '', '', 'Active'),
(68, 6, 10, 'Vegetarian', 'Coriander Powder', 220.00, '659992493IMG_2988.JPG', '', '', 'Active'),
(69, 16, 1, 'Non Vegitarian', 'Firy Chicken Burger', 210.00, '54010056IMG_3019.JPG', '', '', 'Active'),
(70, 16, 4, 'Vegetarian', 'Tomata Pizza', 110.00, '2101060219IMG_2963.JPG', '', '', 'Active'),
(71, 21, 1, 'Vegetarian', 'Cheese Veg Burger', 105.00, '1151605938IMG_3020.JPG', '', '', 'Active'),
(72, 29, 1, 'Non Vegitarian', 'Spicy Zinger Burger', 195.00, '1323952356IMG_3038.JPG', '', '', 'Active'),
(73, 23, 1, 'Non Vegitarian', 'Crispy Chicken burger', 210.00, '1502376424IMG_3016.JPG', '', '', 'Active'),
(74, 31, 1, 'Non Vegitarian', 'Patty Burger', 130.00, '1867342012IMG_3012.JPG', '', '', 'Active'),
(75, 21, 4, 'Vegetarian', 'Seven Cheese Pizza', 150.00, '1529179072IMG_3008.JPG', '', '', 'Active'),
(76, 29, 4, 'Vegetarian', 'Veg Farm Pizza', 145.00, '1112969652IMG_3001.JPG', '', '', 'Active'),
(77, 23, 4, 'Non Vegitarian', 'Chicken Loaded Pizza', 155.00, '953399352IMG_2997.JPG', '', '', 'Active'),
(78, 31, 4, 'Vegetarian', 'Veg Loaded Pizza', 120.00, '1541607397p2.jpeg', '', '', 'Active'),
(79, 21, 3, 'Vegetarian', 'Grilled Sandwich', 80.00, '1930853923sandwich1 (1).jpeg', '', '', 'Active'),
(80, 29, 3, 'Vegetarian', 'Veg Cheesey Sandwich', 110.00, '1656959039sandwich3.jpeg', '', '', 'Active'),
(81, 23, 3, 'Non Vegitarian', 'Chicken Sandwich', 115.00, '200837646IMG_3081.JPG', '', '', 'Active'),
(82, 31, 3, 'Non Vegitarian', 'Buldozer sandwich', 120.00, '1495345578IMG_3088.GIF', '', '', 'Active'),
(83, 21, 12, 'Vegetarian', 'pineapple Pudding', 120.00, '1582588908IMG_3166.JPG', '', '', 'Active'),
(84, 29, 12, 'Vegetarian', 'Rasmalai Pudding', 230.00, '267669954IMG_3155.JPG', '', '', 'Active'),
(85, 23, 12, 'Vegetarian', 'Banana Pudding', 180.00, '1466375073IMG_3167.JPG', '', '', 'Active'),
(86, 31, 12, 'Vegetarian', 'Chocolate Pudding', 210.00, '726584107pd1.JPG', '', '', 'Active'),
(87, 22, 2, 'Non Vegitarian', 'Unicorn Cake', 550.00, '337462061IMG_3044.JPG', '', '', 'Active'),
(88, 30, 2, 'Non Vegitarian', 'strawberry cake', 500.00, '584834233IMG_3046.JPG', '', '', 'Active'),
(89, 97, 2, 'Vegetarian', 'Eggless Strawberry Cake', 440.00, '79754116IMG_3042.JPG', '', '', 'Active'),
(90, 22, 14, 'Vegetarian', 'Cheese Bread Roll', 30.00, '1940542241IMG_3074.JPG', '', '', 'Active'),
(91, 30, 14, 'Non Vegitarian', 'Chicken Roll', 35.00, '1113935912st5.JPG', '', '', 'Active'),
(92, 97, 14, 'Non Vegitarian', 'Cutlet', 25.00, '1286909389st2.JPG', '', '', 'Active'),
(93, 22, 8, 'Non Vegitarian', 'Egg Biriyani', 180.00, '1969814810IMG_3184.JPG', '', '', 'Active'),
(94, 30, 8, 'Non Vegitarian', 'chicken Hariyali biriyani', 240.00, '1143278050IMG_2982.JPG', '', '', 'Active'),
(95, 97, 8, 'Vegetarian', 'Veg Biriyani', 210.00, '1274329434IMG_3189.JPG', '', '', 'Active'),
(96, 22, 9, 'Vegetarian', 'Kulcha', 15.00, '23041963bd2.JPG', '', '', 'Active'),
(97, 30, 9, 'Vegetarian', 'Rava Dosa', 10.00, '972663601IMG_3123.JPG', '', '', 'Active'),
(98, 97, 9, 'Vegetarian', 'Ghee Appam', 12.00, '767956718IMG_3126.JPG', '', '', 'Active'),
(99, 25, 6, 'Vegetarian', 'Mango Pickle', 70.00, '1669298697IMG_3148.JPG', '', '', 'Active'),
(100, 32, 6, 'Vegetarian', 'Mixed Veg Pickle', 110.00, '1235480135pd4.jpeg', '', '', 'Active'),
(101, 33, 6, 'Non Vegitarian', 'Mutton Pickle', 200.00, '869393134pd5.jpeg', '', '', 'Active'),
(102, 36, 6, 'Vegetarian', 'Mango Pickle', 35.00, '1351173788IMG_3149.JPG', '', '', 'Active'),
(103, 25, 5, 'Vegetarian', 'Masala Papad', 80.00, '2075589540IMG_3106.JPG', '', '', 'Active'),
(104, 32, 5, 'Vegetarian', 'Flavoured Papad', 75.00, '70702678IMG_3102.JPG', '', '', 'Active'),
(105, 33, 5, 'Vegetarian', 'Ragi Papad ', 85.00, '172943982IMG_3113.JPG', '', '', 'Active'),
(106, 36, 5, 'Vegetarian', 'Spicy Papad', 77.00, '1935615653IMG_3118.JPG', '', '', 'Active'),
(107, 25, 11, 'Non Vegitarian', 'Pistachio Kunafa', 210.00, '438828137kf4.jpeg', '', '', 'Active'),
(108, 32, 11, 'Vegetarian', 'Kunafa', 180.00, '1003786983kf3.jpeg', '', '', 'Active'),
(109, 36, 11, 'Vegetarian', 'Classic Kunafa', 190.00, '264259793kf2.jpeg', '', '', 'Active'),
(110, 33, 11, 'Vegetarian', 'Creamy Kunafa', 220.00, '1518458620kf1.jpeg', '', '', 'Active'),
(111, 25, 7, 'Vegetarian', 'veg Mayonnise', 120.00, '657543885IMG_3206.JPG', '', '', 'Active'),
(112, 32, 7, 'Vegetarian', 'Eggless Mayonnaise', 150.00, '1907967221IMG_3210.JPG', '', '', 'Active'),
(113, 33, 7, 'Non Vegitarian', 'Schezwan Mayonnaise', 150.00, '2061702944IMG_3208.JPG', '', '', 'Active'),
(114, 36, 7, 'Non Vegitarian', 'Tikka Mayonnaise', 130.00, '1736702665IMG_3209.JPG', '', '', 'Active'),
(115, 26, 13, 'Vegetarian', 'Cheese Ball', 110.00, '1461108207IMG_3223.JPG', '', '', 'Active'),
(116, 34, 13, 'Non Vegitarian', 'Chicken Tandoori', 250.00, '722272399IMG_3229.JPG', '', '', 'Active'),
(117, 37, 13, 'Vegetarian', 'Gobi Manchuri', 120.00, '2031599861IMG_3230.JPG', '', '', 'Active'),
(118, 26, 8, 'Non Vegitarian', 'Prawn Biriyani', 270.00, '817094246IMG_3197.JPG', '', '', 'Active'),
(119, 33, 8, 'Non Vegitarian', 'Chicken Biriyani', 220.00, '540372161IMG_3189.JPG', '', '', 'Active'),
(120, 37, 8, 'Non Vegitarian', 'Veg Biriyani', 180.00, '1457266186IMG_2982.JPG', '', '', 'Active'),
(121, 26, 10, 'Vegetarian', 'Tikka powder', 80.00, '1788339296ms4.JPG', '', '', 'Active'),
(122, 34, 10, 'Non Vegitarian', 'Green tikka Powder', 110.00, '89594183ms2.JPG', '', '', 'Active'),
(123, 37, 10, 'Vegetarian', 'Turmeric Powder', 50.00, '2008765217ms5.JPG', '', '', 'Active'),
(124, 26, 15, 'Vegetarian', 'Gulab Jamun', 120.00, '957228044IMG_3161.JPG', '', '', 'Active'),
(125, 34, 15, 'Vegetarian', 'Mousssee', 90.00, '1232761699IMG_3164.JPG', '', '', 'Active'),
(126, 37, 15, 'Vegetarian', 'Mari Feast', 120.00, '1725033399IMG_3169.JPG', '', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `locationid` int(10) NOT NULL,
  `locationname` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`locationid`, `locationname`, `description`, `status`) VALUES
(9, 'Mangalore', '', 'Active'),
(10, 'Udupi', '', 'Active'),
(11, 'Manipal', '', 'Active'),
(12, 'Surathkal', '', 'Active'),
(13, 'Moodabidri', '', 'Active'),
(14, 'Deralakatte', '', 'Active'),
(15, 'Thokottu', '', 'Active'),
(16, 'Adyar', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `offerid` int(10) NOT NULL,
  `offertype` varchar(20) NOT NULL,
  `offertitle` varchar(100) NOT NULL,
  `offercode` varchar(100) NOT NULL,
  `offeramt` float(10,2) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`offerid`, `offertype`, `offertitle`, `offercode`, `offeramt`, `startdate`, `enddate`, `status`) VALUES
(1, 'Flat Discount', 'HOMEBAKERS', 'HB50', 100.00, '2020-03-03', '2020-04-04', 'Active'),
(2, 'Percentage discount', 'MEGAHOMEBAKERS', 'MEGAOFF', 20.00, '2020-03-03', '2020-04-04', 'Active'),
(3, 'Flat Discount', 'Summer Offer', 'S100', 150.00, '2020-03-01', '2020-05-01', 'Active'),
(4, 'Flat Discount', 'Flat discount Offer', 'FLATDISCOUNT', 100.00, '2020-08-31', '2020-09-06', 'Active'),
(5, 'Percentage discount', 'Percentage Discount', 'PERCENT', 100.00, '2020-08-30', '2020-09-05', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentid` int(10) NOT NULL,
  `customerid` int(10) NOT NULL,
  `homechefid` int(10) NOT NULL,
  `paidamount` float(10,2) NOT NULL,
  `offerid` int(10) NOT NULL,
  `paymenttype` varchar(25) NOT NULL,
  `paymentdetail` text NOT NULL,
  `orderdatetime` datetime NOT NULL,
  `delivertype` varchar(50) NOT NULL COMMENT 'pick and deliver or home deliver',
  `deliverydatetime` datetime NOT NULL,
  `employeeid` int(10) NOT NULL,
  `address` text NOT NULL,
  `locationid` int(10) NOT NULL,
  `cityid` int(10) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentid`, `customerid`, `homechefid`, `paidamount`, `offerid`, `paymenttype`, `paymentdetail`, `orderdatetime`, `delivertype`, `deliverydatetime`, `employeeid`, `address`, `locationid`, `cityid`, `contactno`, `status`) VALUES
(2, 10, 4, 789.00, 0, 'Master card', 'Card Holder : rafa | Card Number:  123455676789 | CVV No. 123 | Expiry date: 2021-01', '2020-02-26 06:11:36', '', '2020-02-26 01:01:00', 12, 'adff', 0, 1, '9972723363', 'Active'),
(3, 11, 4, 1352.00, 0, 'Master card', 'Card Holder : zdsf | Card Number:  123344566677888 | CVV No. 123 | Expiry date: 2021-01', '2020-02-26 12:53:17', '', '2020-02-26 22:02:00', 9, 'dxrtdf', 0, 1, '9663621354', 'Active'),
(4, 19, 10, 270.00, 0, 'Visa', 'Card Holder : rafa | Card Number:  1234567890123456 | CVV No. 568 | Expiry date: 2022-01', '2020-03-03 14:32:53', '', '2020-03-04 01:59:00', 3, '3rd floor', 9, 14, '9663621354', 'Active'),
(5, 21, 10, 930.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 458 | Expiry date: 2022-01', '2020-03-03 15:22:15', '', '2020-03-03 01:00:00', 3, '3rd floor', 13, 27, '9731189378', 'Active'),
(6, 21, 10, 1230.00, 0, 'Master card', 'Card Holder : rafa | Card Number:  1234567987654678 | CVV No. 123 | Expiry date: 2021-12', '2020-03-03 19:57:42', '', '2020-03-03 02:58:00', 10, 'asd', 9, 14, '9731189378', 'Active'),
(7, 28, 12, 877.00, 0, 'Visa', 'Card Holder : haseeba | Card Number:  1234567899876543 | CVV No. 458 | Expiry date: 2021-01', '2020-03-04 11:17:28', '', '2020-03-04 14:30:00', 20, 'Sanjeevani castle , flat 201 old kent road', 9, 14, '8967542365', 'Active'),
(8, 26, 20, 2300.00, 0, 'Visa', 'Card Holder : diana | Card Number:  1234567890123456 | CVV No. 123 | Expiry date: 2021-01', '2020-03-04 13:49:19', '', '2020-03-04 20:20:00', 20, 'tippu sulthan nagar', 11, 21, '9663621354', 'Active'),
(9, 24, 18, 611.00, 0, 'Master card', 'Card Holder : shaizan | Card Number:  9999999999999999 | CVV No. 990 | Expiry date: 2021-04', '2020-03-04 14:30:48', '', '2020-03-04 20:25:00', 10, 'tippu sulthan nagar', 11, 20, '9663621354', 'Active'),
(10, 20, 20, 696.00, 2, 'Rupay', 'Card Holder : Aifa | Card Number:  3423546778897812 | CVV No. 345 | Expiry date: 2021-02', '2020-03-04 20:38:55', '', '2020-03-31 12:31:00', 13, 'Kunil Apartment , flat 302', 9, 16, '9632930623', 'Active'),
(11, 26, 20, 2136.00, 2, 'Master card', 'Card Holder : diana | Card Number:  1234567890123456 | CVV No. 098 | Expiry date: 2021-02', '2020-03-05 10:16:28', '', '2020-03-05 20:30:00', 9, 'tippu sulthan nagar', 11, 21, '9663621354', 'Active'),
(12, 26, 19, 504.00, 2, 'Master card', 'Card Holder : diana | Card Number:  1234567898765432 | CVV No. 345 | Expiry date: 2021-02', '2020-03-05 12:02:13', '', '2020-03-05 12:30:00', 9, 'tippu sulthan nagar', 9, 16, '9663621354', 'Active'),
(13, 26, 19, 1480.00, 1, 'Master card', 'Card Holder : diana | Card Number:  1234567898765432 | CVV No. 123 | Expiry date: 2021-02', '2020-03-05 12:16:24', '', '2020-03-06 03:01:00', 9, 'tippu sulthan nagar', 9, 16, '9663621354', 'Active'),
(14, 26, 6, 1232.00, 2, 'Visa', 'Card Holder : diana | Card Number:  7777777777777777 | CVV No. 676 | Expiry date: 2021-01', '2020-03-05 13:56:56', '', '2020-03-05 20:22:00', 10, 'tippu sulthan nagar', 14, 29, '9663621354', 'Active'),
(15, 19, 20, 250.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 458 | Expiry date: 2021-01', '2020-03-09 14:36:25', '', '2020-03-09 23:00:00', 15, 'raj kiran', 11, 20, '9663621354', 'Active'),
(16, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:01:33', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(17, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:04:18', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(18, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:04:35', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(19, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:06:47', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(20, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:07:37', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(21, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:08:43', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(22, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:09:11', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(23, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:09:38', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(24, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:10:52', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(25, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:12:42', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(26, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:13:06', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(27, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:13:21', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(28, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:16:44', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(29, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:18:03', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(30, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:18:16', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(31, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:19:29', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(32, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:20:23', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(33, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:20:31', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(34, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:21:31', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(35, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:22:55', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(36, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:23:18', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(37, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:23:42', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(38, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:24:19', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(39, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:24:24', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(40, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:25:32', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(41, 31, 20, 1500.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 584 | Expiry date: 2021-01', '2020-03-10 15:26:01', '', '2020-03-11 01:00:00', 0, '3rd floor', 9, 14, '9055991354', 'Active'),
(42, 19, 20, 1970.00, 0, 'Visa', 'Card Holder : raja | Card Number:  1234567890123456 | CVV No. 458 | Expiry date: 2021-01', '2020-03-16 14:30:16', '', '2020-03-18 23:59:00', 0, '3rd floor', 9, 14, '9663699954', 'Active'),
(43, 0, 20, 0.00, 0, '', 'Card Holder :  | Card Number:   | CVV No.  | Expiry date: ', '2020-03-16 15:56:07', '', '2020-03-16 00:00:00', 0, '', 0, 0, '', 'Active'),
(44, 0, 20, 0.00, 0, '', 'Card Holder :  | Card Number:   | CVV No.  | Expiry date: ', '2020-03-16 15:56:34', '', '2020-03-16 00:00:00', 0, '', 0, 0, '', 'Active'),
(45, 0, 20, 0.00, 0, '', 'Card Holder :  | Card Number:   | CVV No.  | Expiry date: ', '2020-03-16 15:58:36', '', '2020-03-16 00:00:00', 0, '', 0, 0, '', 'Active'),
(46, 34, 20, 501.14, 0, 'Visa', 'Card Holder : harshad | Card Number:  2343546576654654 | CVV No. 458 | Expiry date: 2021-01', '2020-03-17 10:30:26', '', '2020-03-19 05:10:00', 12, 'julie bagh aprtment a-502 ', 10, 17, '8967542365', 'Active'),
(47, 19, 20, 450.00, 0, 'Visa', 'Card Holder : Rah krian | Card Number:  1234567890123456 | CVV No. 478 | Expiry date: 2021-01', '2020-03-17 14:30:21', '', '2020-03-18 10:00:00', 0, '3rd fkiir, city light building', 9, 14, '9663699954', 'Active'),
(48, 36, 20, 9900.00, 4, 'Visa', 'Card Holder : Raj kiarn | Card Number:  1234567890123456 | CVV No. 852 | Expiry date: 2020-11', '2020-08-31 15:44:31', '', '2020-08-31 12:00:00', 35, 'candle garen, 404, jayanagar', 17, 44, '9865432117', 'Active'),
(49, 29, 20, 1500.00, 0, 'Master card', 'Card Holder : fjhghglgjlgj | Card Number:  2345678900987612 | CVV No. 078 | Expiry date: 2020-10', '2020-09-23 16:37:17', '', '2020-09-24 12:30:00', 9, 'dddddd', 9, 43, '9999999999', 'Active'),
(50, 29, 20, 450.00, 0, 'Visa', 'Card Holder : Aifa | Card Number:  1212121212121212 | CVV No. 123 | Expiry date: 2020-11', '2020-09-23 17:03:00', '', '2020-09-24 12:04:00', 12, 'deararad', 10, 18, '9999999999', 'Active'),
(51, 29, 6, 6300.00, 0, 'Visa', 'Card Holder : Raj kiarn | Card Number:  1234567890123456 | CVV No. 538 | Expiry date: 2020-12', '2020-09-24 08:54:47', '', '2020-09-25 09:55:00', 9, 'third floor city light building', 9, 15, '9999999999', 'Active'),
(52, 29, 6, 2600.00, 0, 'Visa', 'Card Holder : diana | Card Number:  1234561234234321 | CVV No. 435 | Expiry date: 2020-12', '2020-09-24 09:08:31', '', '2020-09-25 10:08:00', 9, '3rd floor,\r\nCity light building, Mangalore', 9, 15, '9999999999', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`cityid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`),
  ADD UNIQUE KEY `emailid` (`emailid`),
  ADD UNIQUE KEY `contactno` (`contactno`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeid`);

--
-- Indexes for table `foodcategory`
--
ALTER TABLE `foodcategory`
  ADD PRIMARY KEY (`foodcategoryid`);

--
-- Indexes for table `foodorder`
--
ALTER TABLE `foodorder`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `homechef`
--
ALTER TABLE `homechef`
  ADD PRIMARY KEY (`homechefid`),
  ADD UNIQUE KEY `emailid` (`emailid`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`locationid`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`offerid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `cityid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `foodcategory`
--
ALTER TABLE `foodcategory`
  MODIFY `foodcategoryid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `foodorder`
--
ALTER TABLE `foodorder`
  MODIFY `orderid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `homechef`
--
ALTER TABLE `homechef`
  MODIFY `homechefid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `itemid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `locationid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `offerid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
