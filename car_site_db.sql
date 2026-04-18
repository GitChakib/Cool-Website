-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2026 at 08:23 PM
-- Server version: 8.0.45
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_site_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auctions`
--

CREATE TABLE `auctions` (
  `id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `current_price` int DEFAULT NULL,
  `winner_id` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `car` int DEFAULT NULL,
  `is_popular` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` int NOT NULL,
  `placed_by` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `placed_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `auction` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int NOT NULL,
  `full_name` varchar(70) DEFAULT NULL,
  `make` varchar(20) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `vin` varchar(20) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `mileage` int DEFAULT NULL,
  `horsepower` int DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `transmission` enum('Automatic','Manual','Other') DEFAULT NULL,
  `engine` varchar(50) DEFAULT NULL,
  `seller` int DEFAULT NULL,
  `is_popular` tinyint(1) DEFAULT NULL,
  `has_reserve` tinyint(1) DEFAULT NULL,
  `brief_desc` varchar(150) DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `full_name`, `make`, `model`, `year`, `vin`, `color`, `mileage`, `horsepower`, `location`, `transmission`, `engine`, `seller`, `is_popular`, `has_reserve`, `brief_desc`, `main_image`) VALUES
(1, '2022 Audi Q8', 'Audi', 'Q8', 2022, 'WA1BVBF11ND030320', 'Carrara White', 8600, 335, 'New York', 'Automatic', '3.0L Turbocharged V6', 1, 0, 0, 'Turbocharged V6, AWD, Premium Plus Package, Okapi Brown Interior', NULL),
(2, '2021 Ford F-150 Lariat SuperCrew 4x4', 'Ford', 'F-150', 2021, '1FTFW1E86MKD62342', 'Carbonized Gray Metallic', 72300, 400, 'Texas', 'Automatic', '3.5L Turbocharged V6\n', 1, 0, 0, '400-hp EcoBoost V6, 4WD, Arizona-Owned, Mostly Unmodified', NULL),
(3, '2021 BMW X6 M', 'BMW', 'X6', 2021, '5YMCY0C03M9D95210', 'Sapphire Black Metallic', 30900, 600, 'Seattle', 'Automatic', '4.4L Turbocharged V8\n', 1, 1, 0, '600-hp Twin-Turbo V8, Executive Package, Sakhir Orange Interior', NULL),
(4, '2020 Ferrari 488 Pista', 'Ferrari', '488', 2020, 'ZFF90HLA5L0248955', 'Nero DS/Rosso Corsa', 3200, 710, 'Los Angeles', 'Automatic', '3.9L Turbocharged V8\n', 1, 1, 0, '3,200 Miles, 710-hp Twin-Turbo V8, Daytona Racing Seats', NULL),
(5, '2004 Toyota Land Cruiser', 'Toyota', 'Land Cruiser', 2004, 'JTEHT05J542053293', 'Black', 307800, 285, 'Philadelphia', 'Automatic', '4.7L V8', 1, 0, 0, 'V8 Power, 4WD, Locking Center Differential, Mostly Unmodified', NULL),
(6, '2023 Porsche 911 GT3', 'Porsche', '992 911', 2023, 'WP0AC2A9XPS270517', 'Gold Bronze Metallic', 1700, 502, 'Florida', 'Automatic', '4.0L Flat-6', 1, 1, 0, '1,700 Miles, 502-hp Flat-6, PTS Gold Bronze Metallic, Over $60,000 in Options', NULL),
(7, '2005 BMW 330Ci ZHP Coupe', 'BMW', '3 Series', 2005, 'WBABD53475PD99674', 'Titanium Silver Metallic', 209400, 280, 'Ohio', 'Manual', '3.0L I6', 1, 0, 0, '6-Speed Manual, ZHP Performance Package, Unmodified', NULL),
(8, '2020 Aston Martin Vantage Coupe', 'Aston Martin', 'Vantage', 2020, 'SCFSMGAW1LGN03347', 'Ocellus Teal', 14100, 503, 'New York', 'Automatic', '4.0L Turbocharged V8', 1, 1, 0, '14,100 Miles, 503-hp Twin-Turbo V8, Ocellus Teal, Highly Equipped', NULL),
(9, '2018 Mercedes-AMG E63 S Wagon', 'Mercedes-Benz', 'E-Class', 2018, 'WDDZH8KB0JA463688', 'Selenite Grey Metallic', 89000, 603, 'Utah', 'Automatic', '4.0L Turbocharged V8', 1, 0, 0, '603-hp Twin-Turbo V8, AWD, Highly Equipped, AMG Performance Exhaust', NULL),
(10, '1980 Mercedes-Benz 300TD', 'Mercedes-Benz', 'E-Class', 1980, 'WDDZH8KB0JA463688', 'Manila Beige', 164000, 140, 'Arizona', 'Automatic', '3.0L Diesel I5', 1, 0, 0, 'OM617 3.0-Liter Diesel 5-Cylinder, Mostly Unmodified, Palomino Interior', NULL),
(11, '2022 Volvo V60 Recharge T8 Polestar Engineered Extended Range', 'Volvo', 'V60', 2022, 'YV1H60EP7N1492710', 'Crystal White Pearl', 31900, 455, 'Montana', 'Automatic', '2.0L Turbocharged Hybrid I4', 1, 0, 0, '455-hp Plug-In Hybrid Powertrain, AWD, Unmodified', NULL),
(12, '2023 Toyota GR Corolla Morizo Edition', 'Toyota', 'GR Corolla', 2023, 'JTNABBAEXPA003492', 'Wind Chill Pearl', 400, 288, 'Los Angeles', 'Manual', '1.6L Turbocharged I3', 1, 0, 0, '400 Miles, #186 of 200 U.S. Morizo Edition Models, 6-Speed Manual, AWD', NULL),
(13, '2006 Range Rover Sport Supercharged', 'Land Rover', 'Range Rover Sport', 2006, 'SALSH23466A940567', 'Giverny Green', 97100, 316, 'Florida', 'Automatic', '4.2L Supercharged V8', 1, 0, 0, 'Supercharged V8, 4WD, California-Owned, Unmodified', NULL),
(14, '1974 Volkswagen Type 2 Kombi 23-Window Bus Conversion', 'Volkswagen', 'Bus', 1974, 'BH316604', 'Red/White', 275600, 90, 'San Diego', 'Manual', '1.6L Flat-4', 1, 0, 0, 'Brazilian-Market Split-Window, Samba-Style Restoration, U.S. Title', NULL),
(15, '1998 Chevrolet C1500', 'Chevrolet', 'C series', 1998, '1GCEC14RXWZ100378', 'Red', 202748, 296, 'Alabama', 'Automatic', '8.1L V8', 1, 0, 0, '8.1-Liter V8 Engine and Allison Transmission Swaps, Mostly Dry Climate-Owned', NULL),
(16, '2024 Porsche Macan GTS', 'Porsche', 'Macam', 2024, 'WP1AF2A56RLB56336', 'Black', 7600, 434, 'Texas', 'Automatic', '2.9L Turbocharged V6', 1, 0, 0, '7,600 Miles, 434-hp Twin-Turbo V6, AWD, Premium Package Plus, Unmodified', NULL),
(17, '2017 Fiat 500e', 'Fiat', '500', 2017, '3C3CFFGE3HT500866', 'Celeste Blue', 41900, 115, 'Boston', 'Automatic', 'Single Electric Motor', 1, 0, 0, 'Single Electric Motor, Celeste Blu, California-Owned', NULL),
(18, '2017 Volkswagen Golf Alltrack SE', 'Volkswagen', 'Golf', 2017, '3VWM17AU3HM540814', 'Silk Blue Metallic', 133900, 210, 'Kentucky', 'Manual', '1.8L Turbocharged I4', 1, 0, 0, 'Single Electric Motor, Celeste Blu, Kentucky-Owned', NULL),
(19, '2004 Volkswagen Passat GLS 1.8T Wagon', 'Volkswagen', 'Passat', 2004, 'WVWVD63B94E134816', 'Blue Anthracite Pearl', 100300, 183, 'Ohio', 'Manual', '1.8L Turbocharged I4', 1, 0, 0, '1 Owner, 5-Speed Manual, Turbo 4-Cylinder, Unmodified', NULL),
(20, '2014 Volkswagen Touareg TDI R-Line', 'Volkswagen', 'Touareg', 2014, 'WVGDP9BP1ED008860', 'Canyon Gray Metallic', 73100, 304, 'California', 'Automatic', '3.0L Turbodiesel V6', 1, 0, 0, '1 Owner, Turbodiesel V6, AWD, R-Line Trim, California-Owned, Unmodified', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cars_backup`
--

CREATE TABLE `cars_backup` (
  `id` int NOT NULL DEFAULT '0',
  `full_name` varchar(50) DEFAULT NULL,
  `make` varchar(20) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `vin` varchar(20) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `mileage` int DEFAULT NULL,
  `horsepower` int DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `transmission` enum('Manual','AUTO','OTHER') DEFAULT NULL,
  `engine` varchar(50) DEFAULT NULL,
  `seller` int DEFAULT NULL,
  `is_popular` tinyint(1) DEFAULT NULL,
  `has_reserve` tinyint(1) DEFAULT NULL,
  `brief_desc` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cars_backup`
--

INSERT INTO `cars_backup` (`id`, `full_name`, `make`, `model`, `year`, `vin`, `color`, `mileage`, `horsepower`, `location`, `transmission`, `engine`, `seller`, `is_popular`, `has_reserve`, `brief_desc`) VALUES
(1, '2022 Audi Q8', 'Audi', 'Q8', 2022, 'WA1BVBF11ND030320', 'Carrara White', 8600, 335, 'New York', 'AUTO', '3.0L Turbocharged V6', 1, 0, 0, 'Turbocharged V6, AWD, Premium Plus Package, Okapi Brown Interior'),
(2, '2021 Ford F-150 Lariat SuperCrew 4x4', 'Ford', 'F-150', 2021, '1FTFW1E86MKD62342', 'Carbonized Gray Metallic', 72300, 400, 'Texas', 'AUTO', '3.5L Turbocharged V6\n', 1, 0, 0, '400-hp EcoBoost V6, 4WD, Arizona-Owned, Mostly Unmodified'),
(3, '2021 BMW X6 M', 'BMW', 'X6', 2021, '5YMCY0C03M9D95210', 'Sapphire Black Metallic', 30900, 600, 'Seattle', 'AUTO', '4.4L Turbocharged V8\n', 1, 0, 0, '600-hp Twin-Turbo V8, Executive Package, Sakhir Orange Interior'),
(4, '2020 Ferrari 488 Pista', 'Ferrari', '488', 2020, 'ZFF90HLA5L0248955', 'Nero DS/Rosso Corsa', 3200, 710, 'Los Angeles', 'AUTO', '3.9L Turbocharged V8\n', 1, 1, 0, '3,200 Miles, 710-hp Twin-Turbo V8, Daytona Racing Seats'),
(5, '2004 Toyota Land Cruiser', 'Toyota', 'Land Cruiser', 2004, 'JTEHT05J542053293', 'Black', 307800, 285, 'Philadelphia', 'AUTO', '4.7L V8', 1, 0, 0, 'V8 Power, 4WD, Locking Center Differential, Mostly Unmodified'),
(6, '2023 Porsche 911 GT3', 'Porsche', '992 911', 2023, 'WP0AC2A9XPS270517', 'Gold Bronze Metallic', 1700, 502, 'Florida', 'AUTO', '4.0L Flat-6', 1, 1, 0, '1,700 Miles, 502-hp Flat-6, PTS Gold Bronze Metallic, Over $60,000 in Options'),
(7, '2005 BMW 330Ci ZHP Coupe', 'BMW', '3 Series', 2005, 'WBABD53475PD99674', 'Titanium Silver Metallic', 209400, 280, 'Ohio', 'Manual', '3.0L I6', 1, 0, 0, '6-Speed Manual, ZHP Performance Package, Unmodified'),
(8, '2020 Aston Martin Vantage Coupe', 'Aston Martin', 'Vantage', 2020, 'SCFSMGAW1LGN03347', 'Ocellus Teal', 14100, 503, 'New York', 'AUTO', '4.0L Turbocharged V8', 1, 1, 0, '14,100 Miles, 503-hp Twin-Turbo V8, Ocellus Teal, Highly Equipped');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int NOT NULL,
  `is_main` tinyint(1) DEFAULT '0',
  `car_id` int DEFAULT NULL,
  `url` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `is_main`, `car_id`, `url`) VALUES
(1, 0, 1, 'Images/1/1 (2).jpeg'),
(2, 0, 1, 'Images/1/1 (3).jpg'),
(3, 0, 1, 'Images/1/1 (4).jpg'),
(4, 0, 1, 'Images/1/1 (5).jpg'),
(5, 0, 1, 'Images/1/1 (6).jpg'),
(6, 0, 1, 'Images/1/1 (7).jpeg'),
(7, 0, 1, 'Images/1/1 (7).jpg'),
(8, 0, 1, 'Images/1/1 (8).jpeg'),
(9, 1, 1, 'Images/1/1.jpg'),
(10, 0, 10, 'Images/10/1 (1).jpg'),
(11, 0, 10, 'Images/10/1 (2).jpg'),
(12, 0, 10, 'Images/10/1 (3).jpg'),
(13, 0, 10, 'Images/10/1 (4).jpg'),
(14, 0, 10, 'Images/10/1 (5).jpg'),
(15, 0, 10, 'Images/10/1 (6).jpg'),
(16, 0, 10, 'Images/10/1 (7).jpg'),
(17, 0, 10, 'Images/10/1 (8).jpg'),
(18, 1, 10, 'Images/10/1.jpg'),
(19, 0, 11, 'Images/11/1 (1).jpeg'),
(20, 0, 11, 'Images/11/1 (2).jpg'),
(21, 0, 11, 'Images/11/1 (3).jpg'),
(22, 0, 11, 'Images/11/1 (4).jpg'),
(23, 0, 11, 'Images/11/1 (5).jpg'),
(24, 0, 11, 'Images/11/1 (6).jpg'),
(25, 0, 11, 'Images/11/1 (7).jpg'),
(26, 0, 11, 'Images/11/1 (8).jpg'),
(27, 1, 11, 'Images/11/1.jpg'),
(28, 0, 12, 'Images/12/1 (1).jpg'),
(29, 0, 12, 'Images/12/1 (2).jpg'),
(30, 0, 12, 'Images/12/1 (3).jpg'),
(31, 0, 12, 'Images/12/1 (4).jpg'),
(32, 0, 12, 'Images/12/1 (5).jpg'),
(33, 0, 12, 'Images/12/1 (6).jpg'),
(34, 0, 12, 'Images/12/1 (7).jpg'),
(35, 0, 12, 'Images/12/1 (8).jpg'),
(36, 1, 12, 'Images/12/1.jpg'),
(37, 0, 13, 'Images/13/1 (1).jpeg'),
(38, 0, 13, 'Images/13/1 (2).jpeg'),
(39, 0, 13, 'Images/13/1 (3).jpeg'),
(40, 0, 13, 'Images/13/1 (4).jpg'),
(41, 0, 13, 'Images/13/1 (5).jpg'),
(42, 0, 13, 'Images/13/1 (6).jpg'),
(43, 0, 13, 'Images/13/1 (7).jpg'),
(44, 0, 13, 'Images/13/1 (8).jpeg'),
(45, 1, 13, 'Images/13/1.jpg'),
(46, 0, 14, 'Images/14/1 (1).jpeg'),
(47, 0, 14, 'Images/14/1 (2).jpg'),
(48, 0, 14, 'Images/14/1 (3).jpg'),
(49, 0, 14, 'Images/14/1 (4).jpeg'),
(50, 0, 14, 'Images/14/1 (5).jpg'),
(51, 0, 14, 'Images/14/1 (6).jpeg'),
(52, 0, 14, 'Images/14/1 (7).jpg'),
(53, 0, 14, 'Images/14/1 (8).jpg'),
(54, 1, 14, 'Images/14/1.jpg'),
(55, 0, 15, 'Images/15/1 (1).jpeg'),
(56, 0, 15, 'Images/15/1 (2).jpg'),
(57, 0, 15, 'Images/15/1 (3).jpg'),
(58, 0, 15, 'Images/15/1 (4).jpg'),
(59, 0, 15, 'Images/15/1 (5).jpg'),
(60, 0, 15, 'Images/15/1 (6).jpg'),
(61, 0, 15, 'Images/15/1 (7).jpg'),
(62, 0, 15, 'Images/15/1 (8).jpg'),
(63, 1, 15, 'Images/15/1.jpg'),
(64, 0, 16, 'Images/16/1 (1).jpeg'),
(65, 0, 16, 'Images/16/1 (2).jpg'),
(66, 0, 16, 'Images/16/1 (3).jpg'),
(67, 0, 16, 'Images/16/1 (4).jpg'),
(68, 0, 16, 'Images/16/1 (5).jpg'),
(69, 0, 16, 'Images/16/1 (6).jpg'),
(70, 0, 16, 'Images/16/1 (7).jpeg'),
(71, 0, 16, 'Images/16/1 (8).jpeg'),
(72, 1, 16, 'Images/16/1.jpg'),
(73, 0, 17, 'Images/17/1 (1).jpg'),
(74, 0, 17, 'Images/17/1 (2).jpg'),
(75, 0, 17, 'Images/17/1 (3).jpg'),
(76, 0, 17, 'Images/17/1 (4).jpg'),
(77, 0, 17, 'Images/17/1 (5).jpg'),
(78, 0, 17, 'Images/17/1 (6).jpg'),
(79, 0, 17, 'Images/17/1 (7).jpg'),
(80, 0, 17, 'Images/17/1 (8).jpg'),
(81, 1, 17, 'Images/17/1.jpg'),
(82, 0, 18, 'Images/18/1 (1).jpg'),
(83, 0, 18, 'Images/18/1 (2).jpg'),
(84, 0, 18, 'Images/18/1 (3).jpg'),
(85, 0, 18, 'Images/18/1 (4).jpg'),
(86, 0, 18, 'Images/18/1 (5).jpg'),
(87, 0, 18, 'Images/18/1 (6).jpg'),
(88, 0, 18, 'Images/18/1 (7).jpg'),
(89, 0, 18, 'Images/18/1 (8).jpg'),
(90, 1, 18, 'Images/18/1.jpg'),
(91, 0, 19, 'Images/19/1 (1).jpeg'),
(92, 0, 19, 'Images/19/1 (2).jpeg'),
(93, 0, 19, 'Images/19/1 (3).jpg'),
(94, 0, 19, 'Images/19/1 (4).jpg'),
(95, 0, 19, 'Images/19/1 (5).jpg'),
(96, 0, 19, 'Images/19/1 (6).jpg'),
(97, 0, 19, 'Images/19/1 (7).jpeg'),
(98, 0, 19, 'Images/19/1 (8).jpg'),
(99, 1, 19, 'Images/19/1.jpg'),
(100, 0, 2, 'Images/2/1 (1).jpg'),
(101, 0, 2, 'Images/2/1 (2).jpg'),
(102, 0, 2, 'Images/2/1 (3).jpg'),
(103, 0, 2, 'Images/2/1 (4).jpg'),
(104, 0, 2, 'Images/2/1 (5).jpg'),
(105, 0, 2, 'Images/2/1 (6).jpg'),
(106, 0, 2, 'Images/2/1 (7).jpg'),
(107, 0, 2, 'Images/2/1 (8).jpg'),
(108, 1, 2, 'Images/2/1.jpg'),
(109, 0, 20, 'Images/20/1 (1).jpeg'),
(110, 0, 20, 'Images/20/1 (2).jpg'),
(111, 0, 20, 'Images/20/1 (3).jpg'),
(112, 0, 20, 'Images/20/1 (4).jpg'),
(113, 0, 20, 'Images/20/1 (5).jpg'),
(114, 0, 20, 'Images/20/1 (6).jpeg'),
(115, 0, 20, 'Images/20/1 (7).jpeg'),
(116, 0, 20, 'Images/20/1 (8).jpeg'),
(117, 1, 20, 'Images/20/1.jpg'),
(118, 0, 3, 'Images/3/1 (1).jpg'),
(119, 0, 3, 'Images/3/1 (2).jpg'),
(120, 0, 3, 'Images/3/1 (3).jpg'),
(121, 0, 3, 'Images/3/1 (4).jpg'),
(122, 0, 3, 'Images/3/1 (5).jpg'),
(123, 0, 3, 'Images/3/1 (6).jpg'),
(124, 0, 3, 'Images/3/1 (7).jpg'),
(125, 0, 3, 'Images/3/1 (8).jpg'),
(126, 1, 3, 'Images/3/1.jpg'),
(127, 0, 4, 'Images/4/1 (1).jpg'),
(128, 0, 4, 'Images/4/1 (2).jpg'),
(129, 0, 4, 'Images/4/1 (3).jpg'),
(130, 0, 4, 'Images/4/1 (4).jpg'),
(131, 0, 4, 'Images/4/1 (5).jpg'),
(132, 0, 4, 'Images/4/1 (6).jpg'),
(133, 0, 4, 'Images/4/1 (7).jpg'),
(134, 0, 4, 'Images/4/1 (8).jpg'),
(135, 1, 4, 'Images/4/1.jpg'),
(136, 0, 5, 'Images/5/1 (1).jpeg'),
(137, 0, 5, 'Images/5/1 (2).jpg'),
(138, 0, 5, 'Images/5/1 (3).jpg'),
(139, 0, 5, 'Images/5/1 (4).jpg'),
(140, 0, 5, 'Images/5/1 (5).jpg'),
(141, 0, 5, 'Images/5/1 (6).jpg'),
(142, 0, 5, 'Images/5/1 (7).jpg'),
(143, 0, 5, 'Images/5/1 (8).jpeg'),
(144, 1, 5, 'Images/5/1.jpg'),
(145, 0, 6, 'Images/6/1 (1).jpg'),
(146, 0, 6, 'Images/6/1 (2).jpg'),
(147, 0, 6, 'Images/6/1 (3).jpg'),
(148, 0, 6, 'Images/6/1 (4).jpg'),
(149, 0, 6, 'Images/6/1 (5).jpg'),
(150, 0, 6, 'Images/6/1 (6).jpg'),
(151, 0, 6, 'Images/6/1 (7).jpg'),
(152, 0, 6, 'Images/6/1 (8).jpg'),
(153, 1, 6, 'Images/6/1.jpg'),
(154, 0, 7, 'Images/7/1 (1).jpg'),
(155, 0, 7, 'Images/7/1 (2).jpg'),
(156, 0, 7, 'Images/7/1 (3).jpg'),
(157, 0, 7, 'Images/7/1 (4).jpg'),
(158, 0, 7, 'Images/7/1 (5).jpg'),
(159, 0, 7, 'Images/7/1 (6).jpg'),
(160, 0, 7, 'Images/7/1 (7).jpg'),
(161, 0, 7, 'Images/7/1 (8).jpg'),
(162, 1, 7, 'Images/7/1.jpg'),
(163, 0, 8, 'Images/8/1 (1).jpeg'),
(164, 0, 8, 'Images/8/1 (2).jpg'),
(165, 0, 8, 'Images/8/1 (3).jpg'),
(166, 0, 8, 'Images/8/1 (4).jpg'),
(167, 0, 8, 'Images/8/1 (5).jpg'),
(168, 0, 8, 'Images/8/1 (6).jpg'),
(169, 0, 8, 'Images/8/1 (7).jpeg'),
(170, 0, 8, 'Images/8/1 (8).jpeg'),
(171, 1, 8, 'Images/8/1.jpg'),
(172, 1, 9, 'Images/9/1.jpg'),
(173, 0, 9, 'Images/9/1 (1).jpeg'),
(174, 0, 9, 'Images/9/1 (2).jpg'),
(175, 0, 9, 'Images/9/1 (3).jpeg'),
(176, 0, 9, 'Images/9/1 (4).jpg'),
(177, 0, 9, 'Images/9/1 (5).jpg'),
(178, 0, 9, 'Images/9/1 (6).jpg'),
(179, 0, 9, 'Images/9/1 (7).jpeg'),
(180, 0, 9, 'Images/9/1 (8).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `first_name` char(20) DEFAULT NULL,
  `last_name` char(20) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `user_name`, `email`, `password`, `created_at`) VALUES
(1, 'Chakib Fehd', 'Senoussi', 'chakibdz05', 'chakib@gmail.com', '$2y$10$5bMV6Ox5zleSGYEIyaaN2OITyK3l0mUt7WbFisKP2QhUFTByW08tu', '2026-04-11 17:46:31'),
(2, 'alaa', 'bouab', 'alaagamercraft', 'alaabouab@gmail.com', '$2y$10$gKFpko5URXbhye/KEo8NHOxfxnKVX.yoqsmEVpCfZ0zQ1TOn3nXqK', '2026-04-11 17:53:46'),
(3, 'Imad', 'Ziani', 'drakso17', 'zianiimad@gmail.com', '$2y$10$O65rv.Aem46MwsU/A6lw6eAf.hA4/LCIq95m404JwbTRLUfzUFDjW', '2026-04-11 17:54:25'),
(4, 'mehdi', 'rett', '3sila', 'mehdi@gmail.com', '$2y$10$NwH2GpjZ/8hI0FiUnwj8YusTq2Sc69KmjgpR8B8ch68BgzvBUeGBa', '2026-04-11 20:30:15'),
(5, 'abdou', 'taha', 'abdoujel', 'abdou55@gmail.com', '$2y$10$EcEaRXPY1YcytOO2UDbARO9VFxFfMpV/Dob4kvM2WnALY/DELsNry', '2026-04-12 20:05:19'),
(6, 'senoussi', 'said', 'saidsaid', 'senoussi@gmail.com', '$2y$10$dGwfyVOhONLpeA2xzBtTFegYAUFRz6e9Jp0R1WJgaEJ/0wEYbza8m', '2026-04-18 14:58:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auctions`
--
ALTER TABLE `auctions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_createdby` (`created_by`),
  ADD KEY `fk_car` (`car`);

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_placed_by` (`placed_by`),
  ADD KEY `fk_auction` (`auction`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_seller` (`seller`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_car_id` (`car_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auctions`
--
ALTER TABLE `auctions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auctions`
--
ALTER TABLE `auctions`
  ADD CONSTRAINT `fk_car` FOREIGN KEY (`car`) REFERENCES `cars` (`id`),
  ADD CONSTRAINT `fk_createdby` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `bids`
--
ALTER TABLE `bids`
  ADD CONSTRAINT `fk_auction` FOREIGN KEY (`auction`) REFERENCES `auctions` (`id`),
  ADD CONSTRAINT `fk_placed_by` FOREIGN KEY (`placed_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `fk_seller` FOREIGN KEY (`seller`) REFERENCES `users` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `fk_car_id` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
