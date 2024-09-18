-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 18, 2024 at 05:47 PM
-- Server version: 10.5.23-MariaDB-1:10.5.23+maria~deb11
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tccframework_000001`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartments`
--

CREATE TABLE `apartments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `citizenid` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apartments`
--

INSERT INTO `apartments` (`id`, `name`, `type`, `label`, `citizenid`) VALUES
(7, 'apartment11186', 'apartment1', 'South Rockford Drive 1186', '8144'),
(8, 'apartment48245', 'apartment4', 'Tinsel Towers 8245', '8006'),
(9, 'apartment31478', 'apartment3', 'Integrity Way 1478', '6506'),
(10, 'apartment57940', 'apartment5', 'Fantastic Plaza 7940', '2705'),
(11, 'apartment2429', 'apartment2', 'Morningwood Blvd 429', '4730'),
(12, 'apartment39868', 'apartment3', 'Integrity Way 9868', '2468'),
(14, 'apartment38699', 'apartment3', 'Integrity Way 8699', '1814');

-- --------------------------------------------------------

--
-- Table structure for table `ballots_votes`
--

CREATE TABLE `ballots_votes` (
  `ballot_id` int(11) NOT NULL DEFAULT 0,
  `steam_id` varchar(50) NOT NULL,
  `vote` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `account_balance` int(11) NOT NULL DEFAULT 0,
  `account_type` enum('shared','job','gang') NOT NULL,
  `users` longtext DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `citizenid`, `account_name`, `account_balance`, `account_type`, `users`) VALUES
(1, NULL, 'trucker', 0, 'job', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts_new`
--

CREATE TABLE `bank_accounts_new` (
  `id` varchar(50) NOT NULL,
  `amount` int(11) DEFAULT 0,
  `transactions` longtext DEFAULT '[]',
  `auth` longtext DEFAULT '[]',
  `isFrozen` int(11) DEFAULT 0,
  `creator` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bank_accounts_new`
--

INSERT INTO `bank_accounts_new` (`id`, `amount`, `transactions`, `auth`, `isFrozen`, `creator`) VALUES
('ambulance', 0, '[]', '[]', 0, NULL),
('ballas', 0, '[]', '[]', 0, NULL),
('cardealer', 0, '[]', '[]', 0, NULL),
('cartel', 0, '[]', '[]', 0, NULL),
('families', 0, '[]', '[]', 0, NULL),
('lostmc', 0, '[]', '[]', 0, NULL),
('mechanic', 0, '[]', '[]', 0, NULL),
('police', 0, '[]', '[]', 0, NULL),
('realestate', 0, '[]', '[]', 0, NULL),
('test', 0, '[]', '[\"6506\"]', 0, '6506'),
('triads', 0, '[]', '[]', 0, NULL),
('vagos', 0, '[]', '[]', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bank_statements`
--

CREATE TABLE `bank_statements` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT 'checking',
  `amount` int(11) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `statement_type` enum('deposit','withdraw') DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  `bannedby` varchar(255) NOT NULL DEFAULT 'LeBanhammer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `barrels`
--

CREATE TABLE `barrels` (
  `id` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `barrels`
--

INSERT INTO `barrels` (`id`, `x`, `y`, `z`, `amount`) VALUES
(1, 1918.11, 1962.45, 58.5143, 490),
(2, 1915.28, 1970.76, 58.093, 5),
(3, 1919.85, 1975.04, 59.0872, 1),
(4, 1919.64, 1978.35, 59.0872, 1),
(5, -261.64, -1586.94, 31.8411, 100000),
(6, 476.703, -880.708, 36.4579, 100),
(7, -550.075, -197.09, 38.2102, 500),
(8, -558.897, -194.505, 38.2102, 500),
(9, -550.906, -199.793, 38.2102, 500),
(10, -505.622, -260.07, 35.5311, 500),
(11, 408.514, -1036.02, 29.3136, 100),
(12, 418.378, -1036.14, 29.6337, 100),
(13, -580.853, -1074.84, 22.3209, 100),
(14, -15.3494, 6582.55, 31.4703, 2000000),
(15, -15.8242, 6582.91, 31.4703, 2000000),
(16, -409.543, 1195.81, 325.634, 500);

-- --------------------------------------------------------

--
-- Table structure for table `businesses_dishes`
--

CREATE TABLE `businesses_dishes` (
  `id` int(11) NOT NULL,
  `foodchain` text NOT NULL,
  `type` text NOT NULL,
  `dish_id` text NOT NULL DEFAULT '',
  `ingredients` longtext NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `businesses_dishes`
--

INSERT INTO `businesses_dishes` (`id`, `foodchain`, `type`, `dish_id`, `ingredients`) VALUES
(1, 'Burger Shot', 'Main', 'burger-bacon-cheeseburger', '[\"beef\",\"grain\",\"dairy\",\"oil\",\"seasoning\"]'),
(2, 'Burger Shot', 'Main', 'burger-dino-nuggies', '[\"seasoning\",\"beef\",\"oil\",\"dairy\",\"seasoning\"]'),
(3, 'Burger Shot', 'Main', 'burger-heart-stopper', '[\"beef\",\"beef\",\"seasoning\",\"vegetables\",\"grain\"]'),
(4, 'Burger Shot', 'Main', 'burger-money-shot', '[\"seasoning\",\"vegetables\",\"grain\",\"beef\",\"oil\"]'),
(5, 'Burger Shot', 'Main', 'burger-bleeder', '[\"seasoning\",\"vegetables\",\"grain\",\"beef\",\"oil\"]'),
(6, 'Burger Shot', 'Main', 'burger-torpedo', '[\"seasoning\",\"vegetables\",\"grain\",\"beef\",\"oil\"]'),
(7, 'Burger Shot', 'Side', 'burger-fries', '[\"seasoning\",\"sugar\",\"oil\",\"oil\"]'),
(8, 'Burger Shot', 'Side', 'burger-union-rings', '[\"seasoning\",\"vegetables\",\"oil\",\"oil\"]'),
(9, 'Burger Shot', 'Dessert', 'burger-cherry-popper', '[\"grain\",\"seasoning\",\"sugar\"]'),
(10, 'Burger Shot', 'Drink', 'burger-green-juice', '[\"vegetables\",\"dairy\"]'),
(11, 'Burger Shot', 'Drink', 'burger-milkshake', '[\"dairy\",\"cream\"]'),
(12, 'Burger Shot', 'Drink', 'burger-soda', '[\"sugar\",\"sugar\"]'),
(13, 'Burger Shot', 'Drink', 'burger-strawberry-soda', '[\"vegetables\",\"sugar\"]'),
(14, 'Burger Shot', 'Drink', 'burger-burger-shot-koffie', '[\"beans\",\"beans\"]'),
(15, 'Maldinis Pizza', 'Main', 'pizza-pizza-margherita', '[\"seasoning\",\"vegetables\",\"grain\",\"seasoning\",\"oil\"]'),
(16, 'Maldinis Pizza', 'Main', 'pizza-pizza-caprese', '[\"seasoning\",\"vegetables\",\"grain\",\"oil\",\"seasoning\"]'),
(17, 'Maldinis Pizza', 'Main', 'pizza-pizza-salami', '[\"seasoning\",\"vegetables\",\"grain\",\"beef\",\"oil\"]'),
(18, 'Maldinis Pizza', 'Main', 'pizza-pizza-hawai', '[\"seasoning\",\"vegetables\",\"grain\",\"oil\",\"seasoning\"]'),
(19, 'Maldinis Pizza', 'Main', 'pizza-pizza-tonijn', '[\"seasoning\",\"beef\",\"grain\",\"oil\",\"seasoning\"]'),
(20, 'Maldinis Pizza', 'Main', 'pizza-pizza-calzone', '[\"seasoning\",\"vegetables\",\"grain\",\"oil\",\"seasoning\"]'),
(21, 'Maldinis Pizza', 'Main', 'pizza-spaghetti-bolognese', '[\"seasoning\",\"beef\",\"oil\",\"seasoning\",\"beef\"]'),
(22, 'Maldinis Pizza', 'Main', 'pizza-pasta-carbonara', '[\"seasoning\",\"beef\",\"oil\",\"seasoning\",\"beef\"]'),
(23, 'Maldinis Pizza', 'Main', 'pizza-lasagne', '[\"seasoning\",\"seasoning\",\"beef\",\"oil\",\"oil\"]'),
(24, 'Maldinis Pizza', 'Side', 'pizza-mozzarella-sticks', '[\"seasoning\",\"dairy\",\"oil\",\"seasoning\"]'),
(25, 'Maldinis Pizza', 'Side', 'pizza-caeser-salad', '[\"seasoning\",\"oil\",\"vegetables\",\"dairy\"]'),
(26, 'Maldinis Pizza', 'Dessert', 'pizza-cannoli', '[\"seasoning\",\"seasoning\",\"oil\"]'),
(27, 'Maldinis Pizza', 'Dessert', 'pizza-tiramisu', '[\"seasoning\",\"beans\",\"dairy\"]'),
(28, 'Maldinis Pizza', 'Drink', 'pizza-italian-creme-soda', '[\"cream\",\"dairy\"]'),
(29, 'Maldinis Pizza', 'Drink', 'pizza-brunello-di-montalcino', '[\"seasoning\",\"dairy\"]'),
(30, 'Maldinis Pizza', 'Drink', 'pizza-strawberry-soda', '[\"vegetables\",\"dairy\"]'),
(31, 'Prison', 'Main', 'prison-dienblad-eten', '[\"seasoning\",\"seasoning\",\"oil\",\"vegetables\",\"vegetables\"]'),
(32, 'Prison', 'Drink', 'prison-koffie', '[\"beans\",\"sugar\"]'),
(44, 'Prison', 'Main', 'prison-tray-met-voedsel', '[\"grain\",\"grain\",\"seasoning\",\"vegetables\",\"beef\"]'),
(45, 'Prison', 'Main', 'prison-tray-met-voedsel2', '[\"grain\",\"grain\",\"seasoning\",\"vegetables\",\"beef\"]'),
(46, 'Prison', 'Main', 'prison-tray-met-voedsel3', '[\"grain\",\"grain\",\"seasoning\",\"vegetables\",\"beef\"]'),
(47, 'Prison', 'Side', 'prison-tomaat-pompoensoep', '[\"sugar\",\"seasoning\",\"vegetables\",\"dairy\"]'),
(48, 'Prison', 'Side', 'prison-bruine-bonensoep', '[\"vegetables\",\"cream\",\"seasoning\",\"vegetables\"]'),
(49, 'Prison', 'Side', 'prison-romige-champignonsoep', '[\"seasoning\",\"vegetables\",\"vegetables\",\"cream\"]'),
(50, 'Prison', 'Side', 'prison-groentesoep', '[\"seasoning\",\"vegetables\",\"vegetables\",\"vegetables\"]'),
(51, 'Prison', 'Side', 'prison-jay\'s-kippensoep', '[\"beef\",\"beef\",\"seasoning\",\"oil\"]'),
(52, 'Prison', 'Drink', 'prison-multifruit-limonade', '[\"sugar\",\"sugar\"]'),
(53, 'Prison', 'Drink', 'prison-chocolademelk', '[\"cream\",\"cream\"]'),
(54, 'Prison', 'Drink', 'prison-lauwe-koffie', '[\"beans\",\"dairy\"]'),
(55, 'Prison', 'Dessert', 'prison-mokka-taartje', '[\"beans\",\"grain\",\"oil\"]'),
(56, 'Prison', 'Dessert', 'prison-aardbeien-taartje', '[\"grain\",\"cream\",\"oil\"]'),
(57, 'Prison', 'Dessert', 'prison-bosfruit-chocolade-taartje', '[\"grain\",\"sugar\",\"oil\"]'),
(58, 'Prison', 'Dessert', 'prison-chocolade-slagroom-taartje', '[\"grain\",\"sugar\",\"cream\"]'),
(86, 'UwU Café', 'Drink', 'uwu-oreo-frap', '[\"cream\",\"dairy\"]'),
(87, 'UwU Café', 'Drink', 'uwu-boba-kiwi-breeze', '[\"seasoning\",\"sugar\"]'),
(104, 'UwU Café', 'Drink', 'uwu-uwu-espresso-matcha-latte', '[\"sugar\",\"beans\"]'),
(105, 'Burger Shot', 'Main', 'burger-vega-burger', '[\"vegetables\",\"vegetables\",\"seasoning\",\"grain\",\"oil\"]'),
(106, 'Burger Shot', 'Main', 'burger-taco', '[\"beef\",\"grain\",\"vegetables\",\"seasoning\",\"oil\"]'),
(107, 'Burger Shot', 'Dessert', 'burger-vanille-ijsje', '[\"dairy\",\"cream\",\"cream\"]'),
(108, 'UwU Café', 'Drink', 'uwu-watermelon-peach-refresher', '[\"sugar\",\"vegetables\"]'),
(114, 'Maldinis Pizza', 'Side', 'pizza-carpaccio', '[\"oil\",\"beef\",\"vegetables\",\"seasoning\"]'),
(115, 'Maldinis Pizza', 'Dessert', 'pizza-coupe-aardbei', '[\"sugar\",\"dairy\",\"cream\"]'),
(116, 'Maldinis Pizza', 'Drink', 'pizza-mantonico-bianco', '[\"seasoning\",\"dairy\"]'),
(118, 'UwU Café', 'Dessert', 'uwu-uwu-panda-cupcake', '[\"grain\",\"sugar\",\"dairy\"]'),
(120, 'UwU Café', 'Side', 'uwu-uwu-panda-healthy-bowl', '[\"dairy\",\"grain\",\"sugar\",\"vegetables\"]'),
(121, 'UwU Café', 'Drink', 'uwu-strawberry-milk-bubble', '[\"seasoning\",\"sugar\"]'),
(125, 'UwU Café', 'Dessert', 'uwu-uwu-panda-macarons', '[\"sugar\",\"cream\",\"grain\"]'),
(128, 'Prison', 'Drink', 'prison-pinky\'s-', '[\"cream\",\"dairy\"]'),
(129, 'UwU Café', 'Dessert', 'uwu-uwu-panda-dream', '[\"cream\",\"oil\",\"grain\"]'),
(131, 'UwU Café', 'Dessert', 'uwu-uwu-mochi-ice-', '[\"dairy\",\"cream\",\"grain\"]'),
(133, 'UwU Café', 'Drink', 'uwu-uwu-panda-soda-', '[\"beans\",\"sugar\"]'),
(134, 'UwU Café', 'Side', 'uwu-uwu-panda-frietatjes', '[\"vegetables\",\"oil\",\"seasoning\",\"grain\"]'),
(137, 'UwU Café', 'Side', 'uwu-uwu-panda-noodle-soup', '[\"vegetables\",\"oil\",\"seasoning\",\"grain\"]'),
(138, 'UwU Café', 'Side', 'uwu-uwu-panda-miso-soup-', '[\"grain\",\"seasoning\",\"vegetables\",\"oil\"]'),
(149, 'Dragons Den', 'Main', 'dragonsden-peking-eend', '[\"vegetables\",\"beef\",\"seasoning\",\"sugar\",\"oil\"]'),
(150, 'Dragons Den', 'Main', 'dragonsden-babi-pangang', '[\"vegetables\",\"seasoning\",\"oil\",\"beef\",\"sugar\"]'),
(151, 'Dragons Den', 'Main', 'dragonsden-chow-mein', '[\"vegetables\",\"seasoning\",\"oil\",\"sugar\",\"beef\"]'),
(153, 'Dragons Den', 'Side', 'dragonsden-sushi-rollen', '[\"oil\",\"grain\",\"sugar\",\"vegetables\"]'),
(154, 'Dragons Den', 'Side', 'dragonsden-gyoza\'s', '[\"vegetables\",\"seasoning\",\"grain\",\"oil\"]'),
(155, 'Dragons Den', 'Side', 'dragonsden-loempia’s', '[\"vegetables\",\"seasoning\",\"oil\",\"beef\"]'),
(156, 'Dragons Den', 'Side', 'dragonsden-chinese-tomatensoep', '[\"vegetables\",\"seasoning\",\"grain\",\"oil\"]'),
(157, 'Dragons Den', 'Dessert', 'dragonsden-maancakejes', '[\"sugar\",\"dairy\",\"cream\"]'),
(158, 'Dragons Den', 'Dessert', 'dragonsden-sesamijs', '[\"sugar\",\"cream\",\"dairy\"]'),
(159, 'Dragons Den', 'Dessert', 'dragonsden-tofu-pudding', '[\"dairy\",\"cream\",\"sugar\"]'),
(160, 'Dragons Den', 'Dessert', 'dragonsden-lychee-jelly', '[\"sugar\",\"cream\",\"dairy\"]'),
(161, 'Dragons Den', 'Drink', 'dragonsden-sojamelk', '[\"sugar\",\"dairy\"]'),
(162, 'Dragons Den', 'Drink', 'dragonsden-chinese-thee', '[\"vegetables\",\"seasoning\"]'),
(163, 'Dragons Den', 'Drink', 'dragonsden-sour-plum-soda', '[\"sugar\",\"dairy\"]'),
(164, 'Dragons Den', 'Drink', 'dragonsden-baijiu', '[\"dairy\",\"sugar\"]'),
(165, 'Burger Shot', 'Main', 'burger-chicken-wrap', '[\"grain\",\"vegetables\",\"vegetables\",\"seasoning\",\"beef\"]'),
(175, 'Dragons Den', 'Side', 'dragonsden-oriental-pearl', '[\"vegetables\",\"sugar\",\"seasoning\",\"oil\"]'),
(176, 'Dragons Den', 'Side', 'dragonsden-buddha-jumps-over-the-wall', '[\"grain\",\"seasoning\",\"oil\",\"vegetables\"]'),
(177, 'Dragons Den', 'Side', 'dragonsden-yin-yang-scallops', '[\"seasoning\",\"oil\",\"vegetables\",\"sugar\"]'),
(178, 'Dragons Den', 'Drink', 'dragonsden-kweichow-moutai', '[\"dairy\",\"sugar\"]'),
(179, 'Burger Shot', 'Dessert', 'burger-vefrissende-salade', '[\"vegetables\",\"vegetables\",\"vegetables\"]'),
(180, 'UwU Café', 'Main', 'uwu-uwu-panda-cheeseburger', '[\"vegetables\",\"beef\",\"seasoning\",\"grain\",\"oil\"]'),
(181, 'UwU Café', 'Main', 'uwu-uwu-sushi-panda-box-', '[\"seasoning\",\"beef\",\"grain\",\"vegetables\",\"oil\"]'),
(182, 'UwU Café', 'Main', 'uwu-uwu-panda-pancakes', '[\"sugar\",\"cream\",\"dairy\",\"grain\",\"beans\"]'),
(184, 'UwU Café', 'Main', 'uwu-uwu-panda-pokebowl', '[\"vegetables\",\"oil\",\"grain\",\"seasoning\",\"vegetables\"]'),
(191, 'Dragons Den', 'Side', 'dragonsden-sambal', '[\"oil\",\"vegetables\",\"seasoning\",\"seasoning\"]'),
(203, 'Burger Shot', 'Dessert', 'burger-wiet-lollipop', '[\"sugar\",\"sugar\",\"seasoning\"]'),
(204, 'Burger Shot', 'Drink', 'burger-puff-a-chino', '[\"beans\",\"dairy\"]'),
(211, 'UwU Café', 'Drink', 'uwu-dom-perignon', '[\"grain\",\"vegetables\"]'),
(212, 'UwU Café', 'Drink', 'uwu--kikusui-perfect-snow-', '[\"sugar\",\"seasoning\"]'),
(213, 'UwU Café', 'Main', 'uwu-golden-wagyu-beef-burger', '[\"beef\",\"seasoning\",\"grain\",\"oil\",\"vegetables\"]'),
(214, 'UwU Café', 'Main', 'uwu-tuna-nigiri', '[\"seasoning\",\"beef\",\"oil\",\"vegetables\",\"grain\"]'),
(215, 'UwU Café', 'Main', 'uwu-wagashi', '[\"seasoning\",\"cream\",\"dairy\",\"sugar\",\"grain\"]'),
(216, 'Burger Shot', 'Main', 'burger-black-angus-steak', '[\"beef\",\"seasoning\",\"seasoning\",\"vegetables\",\"grain\"]'),
(217, 'Burger Shot', 'Drink', 'burger-whisky-cola', '[\"sugar\",\"seasoning\"]'),
(227, 'UwU Café', 'Drink', 'uwu-banana-kush-ijs-koffie', '[\"beans\",\"sugar\"]'),
(229, 'UwU Café', 'Dessert', 'uwu-monster-koekie', '[\"dairy\",\"grain\",\"sugar\"]'),
(230, 'UwU Café', 'Dessert', 'uwu-critical-kush-cupcake', '[\"grain\",\"cream\",\"sugar\"]'),
(232, 'Dragons Den', 'Drink', 'dragonsden-energy-drink', '[\"dairy\",\"sugar\"]'),
(233, 'Dragons Den', 'Side', 'dragonsden-gelukskoekje', '[\"sugar\",\"grain\",\"oil\",\"sugar\"]'),
(234, 'Dragons Den', 'Drink', 'dragonsden-chinese-cannabis-thee', '[\"seasoning\",\"dairy\"]'),
(246, 'Dragons Den', 'Main', 'dragonsden-tjap-tjoy', '[\"grain\",\"sugar\",\"vegetables\",\"seasoning\",\"oil\"]'),
(293, 'UwU Café', 'Drink', 'uwu-jaljeera', '[\"vegetables\",\"vegetables\"]'),
(294, 'UwU Café', 'Drink', 'uwu--mango-lassi', '[\"vegetables\",\"vegetables\"]'),
(295, 'UwU Café', 'Dessert', 'uwu-pani-puri', '[\"oil\",\"seasoning\",\"vegetables\"]'),
(296, 'UwU Café', 'Side', 'uwu-pav-bhaji', '[\"oil\",\"seasoning\",\"vegetables\",\"grain\"]'),
(297, 'UwU Café', 'Main', 'uwu-butter-chicken-curry-met-basmati-rijst-en-naan', '[\"beef\",\"oil\",\"seasoning\",\"vegetables\",\"grain\"]'),
(311, 'De petit croissant', 'Drink', 'undefined-jus-d\'orange', '[\"sugar\",\"vegetables\"]'),
(312, 'De petit croissant', 'Dessert', 'undefined-croissantje---', '[\"grain\",\"sugar\",\"dairy\"]'),
(313, 'De petit croissant', 'Drink', 'undefined-wijn', '[\"sugar\",\"vegetables\"]'),
(314, 'De petit croissant', 'Drink', 'undefined-schuimwijn', '[\"sugar\",\"vegetables\"]'),
(315, 'De petit croissant', 'Main', 'undefined-chocolade-muffin', '[\"dairy\",\"sugar\",\"grain\",\"grain\",\"sugar\"]'),
(316, 'De petit croissant', 'Drink', 'undefined-coffee', '[\"beans\",\"sugar\"]'),
(317, 'De petit croissant', 'Main', 'undefined-donuts', '[\"dairy\",\"oil\",\"sugar\",\"sugar\",\"grain\"]'),
(318, 'De petit croissant', 'Main', 'undefined-macaron', '[\"dairy\",\"sugar\",\"grain\",\"sugar\",\"cream\"]'),
(319, 'De petit croissant', 'Main', 'undefined-appelgebak', '[\"grain\",\"grain\",\"vegetables\",\"vegetables\",\"sugar\"]'),
(320, 'De petit croissant', 'Dessert', 'undefined-lollypop', '[\"sugar\",\"vegetables\",\"sugar\"]'),
(321, 'De petit croissant', 'Main', 'undefined-baguette', '[\"grain\",\"grain\",\"dairy\",\"dairy\",\"oil\"]'),
(322, 'De petit croissant', 'Main', 'undefined-bladerdeeg-koekje', '[\"grain\",\"grain\",\"sugar\",\"sugar\",\"dairy\"]'),
(323, 'De petit croissant', 'Drink', 'undefined-chocolade-melk', '[\"cream\",\"beans\"]'),
(324, 'De petit croissant', 'Main', 'undefined-paris-brest', '[\"grain\",\"grain\",\"sugar\",\"sugar\",\"cream\"]'),
(325, 'De petit croissant', 'Drink', 'undefined-iced-coffee', '[\"cream\",\"beans\"]'),
(326, 'De petit croissant', 'Drink', 'undefined-jus-de-pomme', '[\"vegetables\",\"sugar\"]'),
(327, 'De petit croissant', 'Main', 'undefined-smos-gezond', '[\"grain\",\"grain\",\"vegetables\",\"vegetables\",\"oil\"]'),
(328, 'De petit croissant', 'Main', 'undefined-broodje-kaas-en-hesp', '[\"grain\",\"grain\",\"dairy\",\"dairy\",\"oil\"]'),
(329, 'De petit croissant', 'Main', 'undefined-brusselse-wafel', '[\"grain\",\"grain\",\"dairy\",\"sugar\",\"sugar\"]'),
(330, 'De petit croissant', 'Main', 'undefined-cupcake', '[\"grain\",\"grain\",\"sugar\",\"sugar\",\"cream\"]'),
(331, 'De petit croissant', 'Main', 'undefined-fruittaart', '[\"grain\",\"grain\",\"cream\",\"sugar\",\"vegetables\"]'),
(332, 'De petit croissant', 'Main', 'undefined-kaneelbroodje', '[\"grain\",\"grain\",\"sugar\",\"sugar\",\"oil\"]'),
(333, 'De petit croissant', 'Drink', 'undefined-irish-coffee', '[\"beans\",\"cream\"]'),
(334, 'De petit croissant', 'Main', 'undefined-oliebol', '[\"grain\",\"grain\",\"oil\",\"oil\",\"sugar\"]'),
(335, 'De petit croissant', 'Main', 'undefined-sandwich', '[\"grain\",\"grain\",\"vegetables\",\"vegetables\",\"oil\"]'),
(336, 'De petit croissant', 'Drink', 'undefined-slush', '[\"sugar\",\"sugar\"]'),
(337, 'De petit croissant', 'Main', 'undefined-smos-préparé', '[\"grain\",\"grain\",\"vegetables\",\"vegetables\",\"oil\"]'),
(338, 'De petit croissant', 'Drink', 'undefined-mint-thee', '[\"beans\",\"vegetables\"]'),
(339, 'De petit croissant', 'Main', 'undefined-torres-koekjes', '[\"grain\",\"grain\",\"sugar\",\"sugar\",\"dairy\"]'),
(340, 'De petit croissant', 'Main', 'undefined-worstebroodje', '[\"grain\",\"grain\",\"dairy\",\"dairy\",\"sugar\"]'),
(341, 'De petit croissant', 'Main', 'undefined-kerstkoekje', '[\"grain\",\"grain\",\"sugar\",\"sugar\",\"dairy\"]'),
(342, 'De petit croissant', 'Main', 'undefined-kerststronk', '[\"grain\",\"grain\",\"beans\",\"dairy\",\"sugar\"]'),
(343, 'De petit croissant', 'Drink', 'undefined-freakshake', '[\"dairy\",\"sugar\"]'),
(344, 'De petit croissant', 'Drink', 'undefined-aardbeien-smoothie', '[\"sugar\",\"vegetables\"]'),
(345, 'De petit croissant', 'Drink', 'undefined-ananas-smoothie', '[\"sugar\",\"vegetables\"]'),
(346, 'De petit croissant', 'Main', 'undefined-luikse-wafels', '[\"grain\",\"grain\",\"sugar\",\"sugar\",\"dairy\"]'),
(347, 'De petit croissant', 'Main', 'undefined-luikse-wafel-met-suiker', '[\"grain\",\"grain\",\"sugar\",\"sugar\",\"dairy\"]'),
(348, 'De petit croissant', 'Main', 'undefined-wafel-met-fruit', '[\"grain\",\"grain\",\"sugar\",\"sugar\",\"dairy\"]');

-- --------------------------------------------------------

--
-- Table structure for table `character_current`
--

CREATE TABLE `character_current` (
  `id` int(11) NOT NULL,
  `citizenid` longtext DEFAULT NULL,
  `model` longtext NOT NULL DEFAULT '',
  `drawables` longtext NOT NULL DEFAULT '',
  `props` longtext NOT NULL DEFAULT '',
  `drawtextures` longtext NOT NULL DEFAULT '',
  `proptextures` longtext NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `character_current`
--

INSERT INTO `character_current` (`id`, `citizenid`, `model`, `drawables`, `props`, `drawtextures`, `proptextures`) VALUES
(1, '9693', '1885233650', '{\"1\":[\"masks\",0],\"2\":[\"hair\",0],\"3\":[\"torsos\",48],\"4\":[\"legs\",176],\"5\":[\"bags\",-1],\"6\":[\"shoes\",10],\"7\":[\"neck\",7],\"8\":[\"undershirts\",213],\"9\":[\"vest\",0],\"10\":[\"decals\",152],\"11\":[\"jackets\",460],\"0\":[\"face\",0]}', '{\"1\":[\"glasses\",-1],\"2\":[\"earrings\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1]}', '[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",2],[\"bags\",0],[\"shoes\",0],[\"neck\",0],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",3]]', '[[\"hats\",-1],[\"glasses\",-1],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]]'),
(2, '8521', '1885233650', '{\"1\":[\"masks\",0],\"2\":[\"hair\",139],\"3\":[\"torsos\",22],\"4\":[\"legs\",178],\"5\":[\"bags\",81],\"6\":[\"shoes\",6],\"7\":[\"neck\",208],\"8\":[\"undershirts\",0],\"9\":[\"vest\",0],\"10\":[\"decals\",0],\"11\":[\"jackets\",656],\"0\":[\"face\",0]}', '{\"1\":[\"glasses\",-1],\"2\":[\"earrings\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",237]}', '[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",9],[\"neck\",0],[\"undershirts\",1],[\"vest\",0],[\"decals\",0],[\"jackets\",0]]', '[[\"hats\",0],[\"glasses\",-1],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]]'),
(3, '4163', '1885233650', '{\"1\":[\"masks\",272],\"2\":[\"hair\",22],\"3\":[\"torsos\",21],\"4\":[\"legs\",257],\"5\":[\"bags\",0],\"6\":[\"shoes\",6],\"7\":[\"neck\",0],\"8\":[\"undershirts\",15],\"9\":[\"vest\",-1],\"10\":[\"decals\",0],\"11\":[\"jackets\",621],\"0\":[\"face\",-1]}', '{\"1\":[\"glasses\",15],\"2\":[\"earrings\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1]}', '[[\"face\",0],[\"masks\",10],[\"hair\",0],[\"torsos\",0],[\"legs\",1],[\"bags\",0],[\"shoes\",2],[\"neck\",0],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",0]]', '[[\"hats\",-1],[\"glasses\",7],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]]'),
(4, '3392', '1885233650', '{\"1\":[\"masks\",272],\"2\":[\"hair\",0],\"3\":[\"torsos\",234],\"4\":[\"legs\",42],\"5\":[\"bags\",174],\"6\":[\"shoes\",32],\"7\":[\"neck\",223],\"8\":[\"undershirts\",15],\"9\":[\"vest\",-1],\"10\":[\"decals\",-1],\"11\":[\"jackets\",656],\"0\":[\"face\",0]}', '{\"1\":[\"glasses\",7],\"2\":[\"earrings\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"7\":[\"braclets\",1],\"0\":[\"hats\",99]}', '[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",5],[\"bags\",10],[\"shoes\",14],[\"neck\",1],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",6]]', '[[\"hats\",0],[\"glasses\",0],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",0]]'),
(5, '8190', '1885233650', '{\"1\":[\"masks\",0],\"2\":[\"hair\",13],\"3\":[\"torsos\",20],\"4\":[\"legs\",176],\"5\":[\"bags\",0],\"6\":[\"shoes\",25],\"7\":[\"neck\",0],\"8\":[\"undershirts\",15],\"9\":[\"vest\",104],\"10\":[\"decals\",152],\"11\":[\"jackets\",458],\"0\":[\"face\",-1]}', '{\"1\":[\"glasses\",5],\"2\":[\"earrings\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1]}', '[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",0],[\"neck\",0],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",3]]', '[[\"hats\",-1],[\"glasses\",0],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]]'),
(6, '1314', '1885233650', '{\"1\":[\"masks\",0],\"2\":[\"hair\",0],\"3\":[\"torsos\",0],\"4\":[\"legs\",0],\"5\":[\"bags\",0],\"6\":[\"shoes\",1],\"7\":[\"neck\",0],\"8\":[\"undershirts\",0],\"9\":[\"vest\",0],\"10\":[\"decals\",0],\"11\":[\"jackets\",0],\"0\":[\"face\",0]}', '{\"1\":[\"glasses\",-1],\"2\":[\"earrings\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1]}', '[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",2],[\"neck\",0],[\"undershirts\",1],[\"vest\",0],[\"decals\",0],[\"jackets\",11]]', '[[\"hats\",-1],[\"glasses\",-1],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]]'),
(7, '8144', '1885233650', '{\"1\":[\"masks\",279],\"2\":[\"hair\",13],\"3\":[\"torsos\",19],\"4\":[\"legs\",33],\"5\":[\"bags\",-1],\"6\":[\"shoes\",24],\"7\":[\"neck\",-1],\"8\":[\"undershirts\",16],\"9\":[\"vest\",-1],\"10\":[\"decals\",-1],\"11\":[\"jackets\",656],\"0\":[\"face\",0]}', '{\"1\":[\"glasses\",5],\"2\":[\"earrings\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1]}', '[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",0],[\"neck\",0],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",3]]', '[[\"hats\",-1],[\"glasses\",0],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]]'),
(8, '8006', '1885233650', '{\"1\":[\"masks\",0],\"2\":[\"hair\",0],\"3\":[\"torsos\",0],\"4\":[\"legs\",0],\"5\":[\"bags\",0],\"6\":[\"shoes\",1],\"7\":[\"neck\",0],\"8\":[\"undershirts\",0],\"9\":[\"vest\",0],\"10\":[\"decals\",0],\"11\":[\"jackets\",0],\"0\":[\"face\",0]}', '{\"1\":[\"glasses\",-1],\"2\":[\"earrings\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1]}', '[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",2],[\"neck\",0],[\"undershirts\",1],[\"vest\",0],[\"decals\",0],[\"jackets\",11]]', '[[\"hats\",-1],[\"glasses\",-1],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]]'),
(9, '6506', '1885233650', '{\"1\":[\"masks\",0],\"2\":[\"hair\",0],\"3\":[\"torsos\",0],\"4\":[\"legs\",0],\"5\":[\"bags\",0],\"6\":[\"shoes\",1],\"7\":[\"neck\",0],\"8\":[\"undershirts\",0],\"9\":[\"vest\",0],\"10\":[\"decals\",0],\"11\":[\"jackets\",0],\"0\":[\"face\",0]}', '{\"1\":[\"glasses\",-1],\"2\":[\"earrings\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",1]}', '[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",2],[\"neck\",0],[\"undershirts\",1],[\"vest\",0],[\"decals\",0],[\"jackets\",11]]', '[[\"hats\",0],[\"glasses\",-1],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]]'),
(10, '2705', '1885233650', '{\"1\":[\"masks\",0],\"2\":[\"hair\",0],\"3\":[\"torsos\",0],\"4\":[\"legs\",0],\"5\":[\"bags\",0],\"6\":[\"shoes\",1],\"7\":[\"neck\",0],\"8\":[\"undershirts\",0],\"9\":[\"vest\",0],\"10\":[\"decals\",0],\"11\":[\"jackets\",0],\"0\":[\"face\",0]}', '{\"1\":[\"glasses\",-1],\"2\":[\"earrings\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1]}', '[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",2],[\"neck\",0],[\"undershirts\",1],[\"vest\",0],[\"decals\",0],[\"jackets\",11]]', '[[\"hats\",-1],[\"glasses\",-1],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]]'),
(11, '4730', '1885233650', '{\"1\":[\"masks\",0],\"2\":[\"hair\",1],\"3\":[\"torsos\",1],\"4\":[\"legs\",31],\"5\":[\"bags\",0],\"6\":[\"shoes\",25],\"7\":[\"neck\",226],\"8\":[\"undershirts\",21],\"9\":[\"vest\",118],\"10\":[\"decals\",0],\"11\":[\"jackets\",130],\"0\":[\"face\",0]}', '{\"1\":[\"glasses\",5],\"2\":[\"earrings\",28],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1]}', '[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",0],[\"neck\",0],[\"undershirts\",0],[\"vest\",3],[\"decals\",0],[\"jackets\",0]]', '[[\"hats\",-1],[\"glasses\",0],[\"earrings\",0],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]]');

-- --------------------------------------------------------

--
-- Table structure for table `character_face`
--

CREATE TABLE `character_face` (
  `id` int(11) NOT NULL,
  `citizenid` longtext DEFAULT NULL,
  `hairColor` varchar(255) NOT NULL DEFAULT '',
  `headBlend` varchar(255) NOT NULL DEFAULT '',
  `headStructure` varchar(255) NOT NULL DEFAULT '',
  `headOverlay` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `character_face`
--

INSERT INTO `character_face` (`id`, `citizenid`, `hairColor`, `headBlend`, `headStructure`, `headOverlay`) VALUES
(1, '9693', '[1,1]', '{\"shapeMix\":0.0,\"skinMix\":1.0,\"shapeFirst\":0,\"shapeThird\":0,\"thirdMix\":0.0,\"skinThird\":0,\"hasParent\":false,\"skinFirst\":15,\"skinSecond\":0,\"shapeSecond\":0}', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '[{\"overlayOpacity\":1.0,\"firstColour\":0,\"overlayValue\":255,\"name\":\"Blemishes\",\"colourType\":0,\"secondColour\":0},{\"overlayOpacity\":1.0,\"firstColour\":0,\"overlayValue\":255,\"name\":\"FacialHair\",\"colourType\":0,\"secondColour\":0},{\"overlayOpacity\":1.0,\"firstColour\"'),
(2, '4163', '[1,1]', '{\"shapeFirst\":0,\"thirdMix\":0.0,\"shapeThird\":0,\"skinMix\":0.0,\"skinThird\":0,\"shapeMix\":0.0,\"hasParent\":false,\"shapeSecond\":0,\"skinSecond\":0,\"skinFirst\":15}', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '[{\"name\":\"Blemishes\",\"overlayOpacity\":1.0,\"overlayValue\":255,\"firstColour\":0,\"colourType\":0,\"secondColour\":0},{\"name\":\"FacialHair\",\"overlayOpacity\":1.0,\"overlayValue\":255,\"firstColour\":0,\"colourType\":0,\"secondColour\":0},{\"name\":\"Eyebrows\",\"overlayOpacity\"'),
(3, '8521', '[56,56]', '{\"thirdMix\":0.0,\"shapeSecond\":0,\"skinMix\":0.0,\"shapeMix\":0.0,\"shapeThird\":0,\"hasParent\":false,\"skinFirst\":15,\"shapeFirst\":6,\"skinSecond\":0,\"skinThird\":0}', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '[{\"firstColour\":0,\"overlayValue\":255,\"colourType\":0,\"overlayOpacity\":1.0,\"name\":\"Blemishes\",\"secondColour\":0},{\"firstColour\":3,\"overlayValue\":255,\"colourType\":0,\"overlayOpacity\":1.0,\"name\":\"FacialHair\",\"secondColour\":3},{\"firstColour\":0,\"overlayValue\":255'),
(4, '3392', '[56,56]', '{\"skinMix\":0.34000000357627,\"shapeSecond\":0,\"shapeFirst\":44,\"skinFirst\":15,\"shapeThird\":0,\"skinSecond\":0,\"shapeMix\":0.0,\"thirdMix\":0.0,\"hasParent\":false,\"skinThird\":0}', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '[{\"overlayValue\":255,\"colourType\":0,\"overlayOpacity\":1.0,\"firstColour\":0,\"name\":\"Blemishes\",\"secondColour\":0},{\"overlayValue\":255,\"colourType\":0,\"overlayOpacity\":1.0,\"firstColour\":0,\"name\":\"FacialHair\",\"secondColour\":0},{\"overlayValue\":255,\"colourType\":0,'),
(5, '8190', '[1,28]', '{\"shapeMix\":1.0,\"shapeThird\":0,\"skinMix\":0.0,\"thirdMix\":1.0,\"skinThird\":2,\"hasParent\":false,\"skinSecond\":3,\"shapeSecond\":0,\"shapeFirst\":0,\"skinFirst\":20}', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '[{\"colourType\":0,\"overlayValue\":255,\"overlayOpacity\":1.0,\"secondColour\":0,\"firstColour\":0,\"name\":\"Blemishes\"},{\"colourType\":0,\"overlayValue\":255,\"overlayOpacity\":1.0,\"secondColour\":0,\"firstColour\":0,\"name\":\"FacialHair\"},{\"colourType\":0,\"overlayValue\":255,'),
(6, '1314', '[1,1]', '{\"skinMix\":1.0,\"skinThird\":0,\"shapeFirst\":0,\"thirdMix\":0.0,\"hasParent\":false,\"skinFirst\":15,\"skinSecond\":0,\"shapeSecond\":0,\"shapeThird\":0,\"shapeMix\":0.0}', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '[{\"overlayValue\":255,\"overlayOpacity\":1.0,\"colourType\":0,\"secondColour\":0,\"firstColour\":0,\"name\":\"Blemishes\"},{\"overlayValue\":255,\"overlayOpacity\":0.0,\"colourType\":1,\"secondColour\":0,\"firstColour\":0,\"name\":\"FacialHair\"},{\"overlayValue\":255,\"overlayOpacity'),
(7, '8144', '[1,1]', '{\"shapeFirst\":0,\"shapeMix\":0.0,\"shapeSecond\":0,\"skinSecond\":0,\"hasParent\":false,\"skinMix\":1.0,\"skinThird\":0,\"thirdMix\":0.0,\"skinFirst\":15,\"shapeThird\":0}', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '[{\"overlayOpacity\":1.0,\"name\":\"Blemishes\",\"firstColour\":0,\"colourType\":0,\"overlayValue\":255,\"secondColour\":0},{\"overlayOpacity\":1.0,\"name\":\"FacialHair\",\"firstColour\":0,\"colourType\":0,\"overlayValue\":255,\"secondColour\":0},{\"overlayOpacity\":1.0,\"name\":\"Eyebr'),
(8, '8006', '[1,1]', '{\"shapeFirst\":0,\"skinMix\":1.0,\"skinThird\":0,\"shapeMix\":0.0,\"skinSecond\":0,\"hasParent\":false,\"shapeSecond\":0,\"shapeThird\":0,\"skinFirst\":15,\"thirdMix\":0.0}', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '[{\"overlayOpacity\":1.0,\"name\":\"Blemishes\",\"secondColour\":0,\"firstColour\":0,\"overlayValue\":255,\"colourType\":0},{\"overlayOpacity\":0.0,\"name\":\"FacialHair\",\"secondColour\":0,\"firstColour\":0,\"overlayValue\":255,\"colourType\":1},{\"overlayOpacity\":1.0,\"name\":\"Eyebr'),
(9, '6506', '[1,1]', '{\"skinMix\":1.0,\"shapeMix\":0.0,\"skinFirst\":15,\"shapeFirst\":0,\"thirdMix\":0.0,\"hasParent\":false,\"skinThird\":0,\"shapeThird\":0,\"shapeSecond\":0,\"skinSecond\":0}', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '[{\"secondColour\":0,\"overlayValue\":255,\"firstColour\":0,\"name\":\"Blemishes\",\"overlayOpacity\":1.0,\"colourType\":0},{\"secondColour\":0,\"overlayValue\":255,\"firstColour\":0,\"name\":\"FacialHair\",\"overlayOpacity\":0.0,\"colourType\":1},{\"secondColour\":0,\"overlayValue\":25'),
(10, '2705', '[1,1]', '{\"shapeThird\":0,\"shapeFirst\":0,\"skinMix\":1.0,\"thirdMix\":0.0,\"skinSecond\":0,\"hasParent\":false,\"shapeSecond\":0,\"shapeMix\":0.0,\"skinThird\":0,\"skinFirst\":15}', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '[{\"overlayValue\":255,\"name\":\"Blemishes\",\"firstColour\":0,\"colourType\":0,\"overlayOpacity\":1.0,\"secondColour\":0},{\"overlayValue\":255,\"name\":\"FacialHair\",\"firstColour\":0,\"colourType\":1,\"overlayOpacity\":0.0,\"secondColour\":0},{\"overlayValue\":255,\"name\":\"Eyebrow'),
(11, '4730', '[0,0]', '{\"hasParent\":false,\"shapeSecond\":0,\"thirdMix\":0.0,\"shapeFirst\":0,\"skinFirst\":15,\"shapeThird\":0,\"skinSecond\":0,\"skinMix\":1.0,\"shapeMix\":0.0,\"skinThird\":0}', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]', '[{\"colourType\":0,\"secondColour\":0,\"overlayValue\":255,\"overlayOpacity\":1.0,\"firstColour\":0,\"name\":\"Blemishes\"},{\"colourType\":0,\"secondColour\":0,\"overlayValue\":255,\"overlayOpacity\":1.0,\"firstColour\":0,\"name\":\"FacialHair\"},{\"colourType\":0,\"secondColour\":0,\"o');

-- --------------------------------------------------------

--
-- Table structure for table `character_outfits`
--

CREATE TABLE `character_outfits` (
  `id` int(11) NOT NULL,
  `citizenid` longtext DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slot` varchar(11) NOT NULL DEFAULT '',
  `model` longtext DEFAULT NULL,
  `drawables` longtext DEFAULT NULL,
  `props` longtext DEFAULT NULL,
  `drawtextures` longtext DEFAULT NULL,
  `proptextures` longtext DEFAULT NULL,
  `hairColor` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crypto`
--

CREATE TABLE `crypto` (
  `crypto` varchar(50) NOT NULL DEFAULT 'qbit',
  `worth` int(11) NOT NULL DEFAULT 0,
  `history` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crypto_transactions`
--

CREATE TABLE `crypto_transactions` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dealers`
--

CREATE TABLE `dealers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `coords` longtext DEFAULT NULL,
  `time` longtext DEFAULT NULL,
  `createdby` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dpkeybinds`
--

CREATE TABLE `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dpkeybinds`
--

INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
('steam:110000144994abb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000014da6263e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000016129137a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');

-- --------------------------------------------------------

--
-- Table structure for table `farms_gardens`
--

CREATE TABLE `farms_gardens` (
  `garden_id` int(11) NOT NULL,
  `cid` varchar(11) DEFAULT NULL,
  `timestamp` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farms_gardens`
--

INSERT INTO `farms_gardens` (`garden_id`, `cid`, `timestamp`) VALUES
(1, NULL, 0),
(2, NULL, 0),
(3, NULL, 0),
(4, NULL, 0),
(5, NULL, 0),
(6, NULL, 0),
(7, NULL, 0),
(8, NULL, 0),
(9, NULL, 0),
(10, NULL, 0),
(11, NULL, 0),
(12, NULL, 0),
(13, NULL, 0),
(14, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `financials_transactions`
--

CREATE TABLE `financials_transactions` (
  `id` int(11) NOT NULL,
  `account_id` varchar(50) NOT NULL DEFAULT '0',
  `trans_accountname` varchar(50) NOT NULL DEFAULT '',
  `trans_accountid` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `uuid` varchar(50) NOT NULL DEFAULT '',
  `amount` bigint(20) NOT NULL DEFAULT 0,
  `negative` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `receiver` varchar(50) NOT NULL DEFAULT '',
  `sender` varchar(50) NOT NULL DEFAULT '',
  `comment` longtext NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gloveboxitems`
--

CREATE TABLE `gloveboxitems` (
  `id` int(11) NOT NULL,
  `plate` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `gloveboxitems`
--

INSERT INTO `gloveboxitems` (`id`, `plate`, `items`) VALUES
(895, '06CGC524', '[]'),
(860, '06WDS796', '[]'),
(853, '25KOC688', '[]'),
(889, '27NTX501', '[]'),
(861, '28YHV999', '[]'),
(851, '29DZY983', '[]'),
(874, '40POQ358', '[]'),
(896, '43FPN954', '[]'),
(888, '47KLC955', '[]'),
(863, '63YDZ419', '[]'),
(852, '64JTS191', '[]'),
(838, '69FOI971', '[]'),
(880, '83NQN656', '[]'),
(849, '85AYX760', '[]'),
(836, '85TUZ800', '[]'),
(841, '86DUO860', '[{\"type\":\"item\",\"weight\":500,\"label\":\"Вода\",\"amount\":15,\"name\":\"water\",\"slot\":1,\"info\":[],\"useable\":true,\"image\":\"water.png\",\"unique\":false}]'),
(862, '86HAN008', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `houselocations`
--

CREATE TABLE `houselocations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `owned` tinyint(2) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tier` tinyint(4) DEFAULT NULL,
  `garage` text NOT NULL DEFAULT '{"y":0,"x":0,"w":0,"z":0}'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `houselocations`
--

INSERT INTO `houselocations` (`id`, `name`, `label`, `coords`, `owned`, `price`, `tier`, `garage`) VALUES
(1, 'grove st1', 'Grove St 1', '{\"cam\":{\"y\":-1959.844970703125,\"h\":221.3643035888672,\"z\":21.1216926574707,\"x\":85.75517272949219,\"yaw\":-10.0},\"enter\":{\"y\":-1959.844970703125,\"h\":221.3643035888672,\"x\":85.75517272949219,\"z\":21.1216926574707}}', 0, 100, 12, '{\"y\":0,\"x\":0,\"w\":0,\"z\":0}'),
(2, 'nikola pl1', 'Nikola Pl 1', '{\"cam\":{\"x\":1348.291259765625,\"y\":-546.7667236328125,\"yaw\":-10.0,\"z\":73.89168548583985,\"h\":333.510986328125},\"enter\":{\"x\":1348.291259765625,\"y\":-546.7667236328125,\"z\":73.89168548583985,\"h\":333.510986328125}}', 1, 1, 12, '{\"y\":0,\"x\":0,\"w\":0,\"z\":0}'),
(3, 'procopio dr1', 'Procopio Dr 1', '{\"enter\":{\"z\":31.86080551147461,\"y\":6597.2822265625,\"h\":221.98379516601563,\"x\":-26.44452667236328},\"cam\":{\"yaw\":-10.0,\"z\":31.86080551147461,\"y\":6597.2822265625,\"x\":-26.44452667236328,\"h\":221.98379516601563}}', 1, 1, 10, '{\"y\":0,\"x\":0,\"w\":0,\"z\":0}'),
(4, 'signal st1', 'Signal St 1', '{\"enter\":{\"h\":319.4887390136719,\"x\":126.02324676513672,\"z\":10.70343589782714,\"y\":-3013.04345703125},\"cam\":{\"yaw\":-10.0,\"x\":126.02324676513672,\"h\":319.4887390136719,\"z\":10.70343589782714,\"y\":-3013.04345703125}}', 0, 1, 1, '{\"y\":0,\"x\":0,\"w\":0,\"z\":0}');

-- --------------------------------------------------------

--
-- Table structure for table `house_plants`
--

CREATE TABLE `house_plants` (
  `id` int(11) NOT NULL,
  `building` varchar(50) DEFAULT NULL,
  `stage` int(11) DEFAULT 1,
  `sort` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `food` int(11) DEFAULT 100,
  `health` int(11) DEFAULT 100,
  `progress` int(11) DEFAULT 0,
  `coords` text DEFAULT NULL,
  `plantid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `items` longtext DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lapraces`
--

CREATE TABLE `lapraces` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text DEFAULT NULL,
  `records` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laptop_boosting`
--

CREATE TABLE `laptop_boosting` (
  `id` int(11) NOT NULL,
  `cid` varchar(255) NOT NULL DEFAULT '1001',
  `class` varchar(255) NOT NULL DEFAULT 'B',
  `contractor` varchar(255) NOT NULL DEFAULT 'RedFox',
  `vehicle` varchar(255) NOT NULL DEFAULT 'blista',
  `xp` int(11) NOT NULL DEFAULT 0,
  `expire` bigint(20) NOT NULL DEFAULT 0,
  `started` int(11) NOT NULL DEFAULT 0,
  `auction` tinyint(1) NOT NULL DEFAULT 0,
  `seller` varchar(255) NOT NULL DEFAULT 'Emmett Brown',
  `start_bid` int(11) NOT NULL DEFAULT 0,
  `bid` int(11) NOT NULL DEFAULT 0,
  `bidder` varchar(255) NOT NULL DEFAULT '1001',
  `auction_end` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laptop_data`
--

CREATE TABLE `laptop_data` (
  `id` int(11) NOT NULL,
  `cid` varchar(50) NOT NULL DEFAULT '',
  `boosting` longtext NOT NULL DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laptop_gangs`
--

CREATE TABLE `laptop_gangs` (
  `id` int(11) NOT NULL,
  `gang_id` text NOT NULL,
  `gang_label` text NOT NULL,
  `gang_leader` text NOT NULL,
  `gang_members` longtext NOT NULL,
  `gang_metadata` longtext NOT NULL,
  `discovered_sprays` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laptop_gangs`
--

INSERT INTO `laptop_gangs` (`id`, `gang_id`, `gang_label`, `gang_leader`, `gang_members`, `gang_metadata`, `discovered_sprays`) VALUES
(1, 'dev', 'Dev Gang', '1001', '[]', '[]', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `laptop_gangs_chat`
--

CREATE TABLE `laptop_gangs_chat` (
  `id` int(11) NOT NULL,
  `gang_id` text NOT NULL,
  `sender` text NOT NULL,
  `message` longtext NOT NULL,
  `attachments` longtext NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT curtime()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laptop_market`
--

CREATE TABLE `laptop_market` (
  `id` int(11) NOT NULL,
  `cid` varchar(50) NOT NULL DEFAULT '0',
  `item_data` longtext DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laptop_sprays`
--

CREATE TABLE `laptop_sprays` (
  `id` int(11) NOT NULL,
  `gang_id` text NOT NULL,
  `type` text NOT NULL,
  `position` longtext NOT NULL,
  `rotation` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mdt_bolos`
--

CREATE TABLE `mdt_bolos` (
  `id` int(11) NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `individual` varchar(50) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `gallery` text DEFAULT NULL,
  `officersinvolved` text DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `jobtype` varchar(25) NOT NULL DEFAULT 'police'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mdt_bulletin`
--

CREATE TABLE `mdt_bulletin` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `desc` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `time` varchar(20) NOT NULL,
  `jobtype` varchar(25) DEFAULT 'police'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mdt_clocking`
--

CREATE TABLE `mdt_clocking` (
  `id` int(10) NOT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `clock_in_time` varchar(255) NOT NULL DEFAULT '',
  `clock_out_time` varchar(50) DEFAULT NULL,
  `total_time` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mdt_clocking`
--

INSERT INTO `mdt_clocking` (`id`, `user_id`, `firstname`, `lastname`, `clock_in_time`, `clock_out_time`, `total_time`) VALUES
(7, '8190', 'Roberto', 'Thecholo', '2024-08-22 16:44:02', '2024-08-23 15:10:31', 80789);

-- --------------------------------------------------------

--
-- Table structure for table `mdt_convictions`
--

CREATE TABLE `mdt_convictions` (
  `id` int(11) NOT NULL,
  `cid` varchar(50) DEFAULT NULL,
  `linkedincident` int(11) NOT NULL DEFAULT 0,
  `warrant` varchar(50) DEFAULT NULL,
  `guilty` varchar(50) DEFAULT NULL,
  `processed` varchar(50) DEFAULT NULL,
  `associated` varchar(50) DEFAULT '0',
  `charges` text DEFAULT NULL,
  `fine` int(11) DEFAULT 0,
  `sentence` int(11) DEFAULT 0,
  `recfine` int(11) DEFAULT 0,
  `recsentence` int(11) DEFAULT 0,
  `time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mdt_data`
--

CREATE TABLE `mdt_data` (
  `id` int(11) NOT NULL,
  `cid` varchar(20) NOT NULL,
  `information` mediumtext DEFAULT NULL,
  `tags` text NOT NULL,
  `gallery` text NOT NULL,
  `jobtype` varchar(25) DEFAULT 'police',
  `pfp` text DEFAULT NULL,
  `fingerprint` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mdt_data`
--

INSERT INTO `mdt_data` (`id`, `cid`, `information`, `tags`, `gallery`, `jobtype`, `pfp`, `fingerprint`) VALUES
(1, '1314', '', '[]', '[]', 'police', '', ''),
(3, '9693', '', '[]', '[]', 'police', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mdt_impound`
--

CREATE TABLE `mdt_impound` (
  `id` int(11) NOT NULL,
  `vehicleid` int(11) NOT NULL,
  `linkedreport` int(11) NOT NULL,
  `fee` int(11) DEFAULT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mdt_incidents`
--

CREATE TABLE `mdt_incidents` (
  `id` int(11) NOT NULL,
  `author` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '0',
  `details` text NOT NULL,
  `tags` text NOT NULL,
  `officersinvolved` text NOT NULL,
  `civsinvolved` text NOT NULL,
  `evidence` text NOT NULL,
  `time` varchar(20) DEFAULT NULL,
  `jobtype` varchar(25) NOT NULL DEFAULT 'police'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mdt_incidents`
--

INSERT INTO `mdt_incidents` (`id`, `author`, `title`, `details`, `tags`, `officersinvolved`, `civsinvolved`, `evidence`, `time`, `jobtype`) VALUES
(1, 'Robin Banks', 'Name - Charge - 8/22/2024', '\n      <div style=\"color: white;\">\n          <p><strong>📝 Summary:</strong></p>\n          <p><em>[Insert Report Summary Here]</em></p>\n          <p>&nbsp;</p>\n          <p><strong>🧍 Hostage:</strong> [Name Here]</p>\n          <p>&nbsp;</p>\n          <p><strong>🗄️ Evidence Location:</strong> Stash # | Drawer #</p>\n          <p>&nbsp;</p>\n          <p><strong>🔪 Weapons/Items Confiscated:</strong></p>\n          <p><em>· [Insert List Here]</em></p>\n          <p>&nbsp;</p>\n          <p>-----</p>\n          <p><strong style=\"background-color: var(--color-1);\">💸 Fine:</strong></p>\n          <p>&nbsp;</p>\n          <p><strong>⌚ Sentence:</strong></p>\n          <p>-----</p>\n      </div>\n  ', '[]', '[]', '[]', '[]', '1724327350341', 'police');

-- --------------------------------------------------------

--
-- Table structure for table `mdt_logs`
--

CREATE TABLE `mdt_logs` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `time` varchar(20) DEFAULT NULL,
  `jobtype` varchar(25) DEFAULT 'police'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mdt_logs`
--

INSERT INTO `mdt_logs` (`id`, `text`, `time`, `jobtype`) VALUES
(1, 'A new report was created by Ivan Chehlonov with the title (test) and ID (0)', '1724437633000', 'police'),
(2, 'A report was updated by Ivan Chehlonov with the title (test) and ID (1)', '1724437634000', 'police'),
(3, 'A vehicle with the plate () has a new image () edited by Bennett magregur', '1725549388000', 'police'),
(4, 'A vehicle with the plate () was added to the vehicle information database by Bennett magregur', '1725549388000', 'police'),
(5, 'A vehicle with the plate () has a new image () edited by Bennett magregur', '1725549389000', 'police');

-- --------------------------------------------------------

--
-- Table structure for table `mdt_reports`
--

CREATE TABLE `mdt_reports` (
  `id` int(11) NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `officersinvolved` text DEFAULT NULL,
  `civsinvolved` text DEFAULT NULL,
  `gallery` text DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `jobtype` varchar(25) DEFAULT 'police'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mdt_reports`
--

INSERT INTO `mdt_reports` (`id`, `author`, `title`, `type`, `details`, `tags`, `officersinvolved`, `civsinvolved`, `gallery`, `time`, `jobtype`) VALUES
(1, 'Ivan Chehlonov', 'test', 'aaananna tets a', '', '[]', '[]', '[]', '[]', '1724437620307', 'police');

-- --------------------------------------------------------

--
-- Table structure for table `mdt_vehicleinfo`
--

CREATE TABLE `mdt_vehicleinfo` (
  `id` int(11) NOT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `information` text NOT NULL DEFAULT '',
  `stolen` tinyint(1) NOT NULL DEFAULT 0,
  `code5` tinyint(1) NOT NULL DEFAULT 0,
  `image` text NOT NULL DEFAULT '',
  `points` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mdt_vehicleinfo`
--

INSERT INTO `mdt_vehicleinfo` (`id`, `plate`, `information`, `stolen`, `code5`, `image`, `points`) VALUES
(1, '', '', 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mdt_weaponinfo`
--

CREATE TABLE `mdt_weaponinfo` (
  `id` int(11) NOT NULL,
  `serial` varchar(50) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `information` text NOT NULL DEFAULT '',
  `weapClass` varchar(50) DEFAULT NULL,
  `weapModel` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mdw_certs`
--

CREATE TABLE `mdw_certs` (
  `id` int(11) NOT NULL,
  `certificate` longtext NOT NULL,
  `color` longtext NOT NULL DEFAULT '#ffffff',
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mdw_certs`
--

INSERT INTO `mdw_certs` (`id`, `certificate`, `color`, `deleted`) VALUES
(1, 'Interceptor', '#ffffff', 0),
(2, 'High Speed Pursuit Driver', '#ffffff', 0),
(3, 'HSPU Lead', '#ffffff', 0),
(4, 'FTO', '#ffffff', 0),
(5, 'FTI', '#ffffff', 0),
(6, 'PTD Lead', '#ffffff', 0),
(7, 'Major Crimes Unit', '#ffffff', 0),
(8, 'MCU Lead', '#ffffff', 0),
(9, 'Air Corps', '#ffffff', 0),
(10, 'Air Corps Lead', '#ffffff', 0),
(11, 'Motorcycle', '#ffffff', 0),
(12, 'Motorcycle Lead', '#ffffff', 0),
(13, 'Rifle/Smg', '#ffffff', 0),
(14, 'PTD Supervisor', '#ffffff', 0),
(15, 'Life Flight', '#ffffff', 0),
(16, 'Flight Doctor', '#ffffff', 0),
(17, 'Physiotherapy', '#ffffff', 0),
(18, 'Psychology', '#ffffff', 0),
(19, 'Water Rescue', '#ffffff', 0),
(20, 'Dispatch', '#ffffff', 0),
(21, 'Critical Care', '#ffffff', 0),
(22, 'Neurology', '#ffffff', 0),
(23, 'General Surgery', '#ffffff', 0),
(24, 'Anesthesiology', '', 0),
(25, 'Spokesperson', '', 0),
(26, 'Dispatch Lead', '#ffffff', 0),
(27, 'Internal Affairs', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mdw_charges`
--

CREATE TABLE `mdw_charges` (
  `id` int(11) NOT NULL,
  `gov_type` longtext NOT NULL,
  `category` longtext NOT NULL,
  `fine` int(11) NOT NULL DEFAULT 0,
  `jail` int(11) NOT NULL DEFAULT 0,
  `points` int(11) NOT NULL DEFAULT 0,
  `name` longtext NOT NULL,
  `description` longtext NOT NULL DEFAULT '',
  `type` longtext NOT NULL,
  `accomplice` longtext NOT NULL,
  `attempted` longtext NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mdw_charges`
--

INSERT INTO `mdw_charges` (`id`, `gov_type`, `category`, `fine`, `jail`, `points`, `name`, `description`, `type`, `accomplice`, `attempted`, `deleted`) VALUES
(1, 'pd', 'Wet Wapen & Munitie', 1500, 15, 0, 'Bezit wapen van de 1ste categorie', 'De wapens uit categorie 1 zijn voornamelijk messen/slagwapens. Zo vallen hieronder andere stiletto\'s, valmessen, vlindermessen en slagwapens. Sommige andere stiletto\'s, valmessen en vlindermessen (en andere opvouwbare messen) vallen ook in categorie I. Het bezit van munitie valt ook onder deze straf.', 'normal', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(2, 'pd', 'Wet Wapen & Munitie', 4500, 60, 0, 'Bezit (semi)-automatische vuurwapen', 'Een (semi)automatisch wapen is een vuurwapen dat af te vuren is zonder tussen de schoten een handeling uit te voeren waardoor de kogel afgevuurd kan worden.', 'normal', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(3, 'pd', 'Wet Wapen & Munitie', 3200, 40, 0, 'Bezit wapen van de 2de categorie', 'Hij/zij die in het bezit is van een vuurwapen. Denk hierbij aan een handpistool', 'normal', '{\"fine\":\"0\",\"points\":0,\"jail\":\"0\"}', '{\"fine\":\"0\",\"points\":0,\"jail\":\"0\"}', 0),
(4, 'pd', 'Wetboek van Strafrecht', 2400, 15, 0, 'Bedreiging', 'Als iemand dreigt je iets aan te doen, spreken we van een bedreiging. De persoon kan je bijvoorbeeld bedreigen  met de dood of dreigen met geweld, dit is dan met woorden. Dit kan ook zijn met bijvoorbeeld een steek- of vuurwapen.', 'normal', '{\"jail\":10,\"points\":0,\"fine\":2100}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(5, 'pd', 'Wetboek van Strafrecht', 1200, 0, 0, 'Wet ID', 'Het niet kunnen of willen tonen van een origineel of geldig identiteitsbewijs. Of het niet willen tonen van een rijbewijs.', 'normal', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(6, 'pd', 'Wetboek van Strafrecht', 2800, 15, 0, 'Smaad & Laster', 'Laster is als iemand een leugen verspreidt, terwijl die persoon weet dat het een leugen is. Smaad is een vorm van belediging waarbij je opzettelijk iemands goede naam en eer aantast door deze persoon van iets te beschuldigen.', 'normal', '{\"jail\":\"10\",\"points\":0,\"fine\":\"2200\"}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(7, 'pd', 'Wetboek van Strafrecht', 3800, 25, 0, 'Valsheid in geschrifte', 'De wet spreekt van valsheid in geschrifte als iemand een geschrift dat bestemd is om tot bewijs van enig feit te dienen, valselijk opmaakt of vervalst, met het oogmerk om het als echt en onvervalst te gebruiken of door anderen te doen gebruiken. Valsheid in geschrifte is een misdrijf en hierop staat een gevangenisstraf van ten hoogste zes jaren of geldboete van de vijfde categorie. Ook het gebruik van een vervalst document, wetende dat het vervalst is, is een strafbaar feit.', 'major', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(8, 'pd', 'Wetboek van Strafrecht', 850, 0, 0, 'Inbrekerswerktuig', 'Onder inbrekerswerktuigen verstaat het college middelen die ertoe kunnen dienen zich onrechtmatig de toegang tot een gebouw of erf te verschaffen, onrechtmatig sluitingen te openen of te verbreken, diefstal door middel van braak te vergemakkelijken of het maken van sporen te voorkomen.', 'normal', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(10, 'pd', 'Wetboek van Strafrecht', 950, 0, 0, 'Artk. 266 - Eenvoudige belediging', 'Van eenvoudige belediging is sprake als een dader een ander mondeling, schriftelijk of door een feitelijkheid opzettelijk aanrand in eer of goede naam. Voorbeelden van eenvoudige belediging zijn het grof uitschelden van iemand, het opsteken van een middelvinger of het spugen in het gezicht.', 'normal', '{\"points\":0,\"jail\":0,\"fine\":\"0\"}', '{\"points\":0,\"jail\":0,\"fine\":\"0\"}', 0),
(11, 'pd', 'Wetboek van Strafrecht', 1250, 0, 0, 'Gebruik van soft drugs in het openbaar', 'Het gebruik van softdrugs op de openbare weg, dus op straat of op een pleintje. Voorbeelden zijn cannabisproducten (hasj en wiet) en slaapmiddelen.', 'normal', '{\"jail\":0,\"points\":0,\"fine\":\"0\"}', '{\"jail\":0,\"points\":0,\"fine\":\"0\"}', 0),
(12, 'pd', 'Wetboek van Strafrecht', 1700, 8, 0, 'Gebruik van hard drugs in het openbaar', 'Het gebruik van hard drugs op de openbare weg, dus op straat of op een pleintje. Voorbeelden hiervan zijn heroïne, cocaïne, MDMA, LSD, speed en oxycodon.', 'normal', '{\"jail\":0,\"points\":0,\"fine\":\"0\"}', '{\"jail\":0,\"points\":0,\"fine\":\"0\"}', 0),
(13, 'pd', 'Wetboek van Strafrecht', 1600, 0, 0, 'Venten', 'Venten is het huis aan huis te koop aanbieden of afleveren van goederen op of aan de weg, aan huis of op een andere voor het publiek toegankelijke en in de open lucht gelegen plaats. Een venter is in beweging en biedt zijn waren voortdurend aan vanaf een andere plaats.', 'normal', '{\"jail\":0,\"points\":0,\"fine\":\"1250\"}', '{\"jail\":0,\"points\":0,\"fine\":\"0\"}', 0),
(14, 'pd', 'Wetboek van Strafrecht', 950, 0, 0, 'Collecteren', 'Inzamelen, geld ophalen voor armen of noodlijdenden, met de schaal rondgaan zonder vergunning.', 'normal', '{\"jail\":0,\"points\":0,\"fine\":\"0\"}', '{\"jail\":0,\"points\":0,\"fine\":\"0\"}', 0),
(15, 'pd', 'Wetboek van Strafrecht', 1200, 0, 0, 'Opgeven valse gegevens', 'Niet enkel het zelf plegen van valsheid in geschrifte is strafbaar. Ook het opgeven van valse gegevens die daarna in een authentieke akte (tot bewijs van die gegevens) worden opgenomen kan in een dergelijk geval strafbaar zijn.', 'normal', '{\"jail\":0,\"points\":0,\"fine\":\"0\"}', '{\"jail\":0,\"points\":0,\"fine\":\"0\"}', 0),
(16, 'pd', 'Wetboek van Strafrecht', 1600, 12, 0, 'Huisvredebreuk', 'Onder huisvredebreuk moet worden verstaan het wederrechtelijk binnendringen in een woning of wederrechtelijk aldaar vertoevende, zich niet aanstonds verwijderen op vordering van een rechthebbende.', 'major', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(17, 'pd', 'Wetboek van Strafrecht', 3000, 40, 0, 'Mishandeling op ambtenaar', 'Mishandeling is het bewust verwonden of pijn doen van een ander, door iemand bijvoorbeeld te slaan of te schoppen.', 'major', '{\"jail\":30,\"points\":0,\"fine\":2400}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(18, 'pd', 'Wetboek van Strafrecht', 4200, 20, 0, 'Meineed', 'Als iemand opzettelijk een valse getuigenis aflegt onder ede, dan pleegt deze persoon meineed.', 'major', '{\"jail\":0,\"points\":0,\"fine\":0}', '{\"jail\":0,\"points\":0,\"fine\":0}', 0),
(19, 'pd', 'Wetboek van Strafrecht', 5250, 40, 0, 'Omkoping', 'Omkoping is een vorm van corruptie. Het houdt in dat bijvoorbeeld bestuurders of werknemers van een bedrijf, maar bijvoorbeeld ook ambtenaren van de overheid, kunnen worden omgekocht.', 'major', '{\"jail\":\"30\",\"points\":0,\"fine\":\"4800\"}', '{\"jail\":\"25\",\"points\":0,\"fine\":\"4600\"}', 0),
(20, 'pd', 'Wetboek van Strafrecht', 3600, 25, 0, 'Oplichting', 'Oplichting is, in ‘normale taal’, het tegen de wet in behalen van een bepaald voordeel door het misleiden van iemand.', 'major', '{\"jail\":20,\"points\":0,\"fine\":\"2800\"}', '{\"jail\":20,\"points\":0,\"fine\":\"2800\"}', 0),
(21, 'pd', 'Wetboek van Strafrecht', 4000, 30, 0, 'Heling', 'Heling is het krijgen of kopen, in bezit hebben of overdragen van een product of voertuig dat gestolen is.', 'major', '{\"jail\":\"20\",\"fine\":\"3500\",\"points\":0}', '{\"jail\":\"0\",\"fine\":\"0\",\"points\":0}', 0),
(22, 'pd', 'Wetboek van Strafrecht', 1050, 0, 0, 'Vernieling', 'Vernieling is expres dingen kapot maken. Bijvoorbeeld spiegels van auto\'s aftrappen, bushokjes vernielen, verkeersborden kapot maken, bloembakken omgooien, etcetera.', 'major', '{\"jail\":\"0\",\"points\":0,\"fine\":\"850\"}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(23, 'pd', 'Wetboek van Strafrecht', 2650, 25, 0, 'Helpen ontsnappen', 'Het helpen bij het ontkomen, bij hij die word achtervolgd of is aangehouden door de politie, en of is veroordeeld door een rechter.', 'major', '{\"points\":0,\"fine\":\"2000\",\"jail\":20}', '{\"points\":0,\"fine\":\"1650\",\"jail\":20}', 0),
(24, 'pd', 'Wetboek van Strafrecht', 2200, 15, 0, 'Valse aangifte ', 'Hij die aangifte of klacht doet dat een strafbaar feit gepleegd is, wetende dat het niet gepleegd is.', 'major', '{\"jail\":\"12\",\"points\":0,\"fine\":\"1800\"}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(25, 'pd', 'Wetboek van Strafrecht', 1850, 20, 0, 'Wederspannigheid', 'Wanneer iemand zich met geweld of onder bedreiging met geweld verzet tegen een handeling van een ambtenaar', 'major', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(26, 'pd', 'Wetboek van Strafrecht', 700, 0, 0, 'Misbruik noodnummer', 'Het opzettelijk gebruiken van het noodnummer, zonder dat er ook maar enige nood is.', 'normal', '{\"jail\":0,\"points\":0,\"fine\":\"0\"}', '{\"jail\":0,\"points\":0,\"fine\":\"0\"}', 0),
(27, 'pd', 'Wetboek van Strafrecht', 1200, 12, 0, 'Verboden toegang', 'Het betreden van een terrein of gebied zonder bevoegdheid.', 'major', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(28, 'pd', 'Wetboek van Strafrecht', 2650, 35, 0, 'Vrijheidsontneming', 'Het ontnemen van iemand zijn/haar vrijheid, zonder wettelijk gegronde reden en bevoegdheid.', 'major', '{\"jail\":25,\"points\":0,\"fine\":\"2000\"}', '{\"jail\":25,\"points\":0,\"fine\":\"1750\"}', 0),
(29, 'pd', 'Wetboek van Strafrecht', 3200, 30, 0, 'Ambtsdwang', 'Het uitoefenen van dwang of het nemen van dwingende maatregelen door een ambtenaar of overheidsfunctionaris om wetten, voorschriften of beslissingen af te dwingen of te handhaven.', 'major', '{\"jail\":20,\"points\":0,\"fine\":\"2250\"}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(30, 'pd', 'Wetboek van Strafrecht', 1750, 8, 0, 'Negeren ambtelijk bevel', 'Het negeren van een ambtelijk bevel betekent dat iemand weigert te gehoorzamen aan een instructie of bevel van een ambtenaar of overheidsfunctionaris.', 'normal', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(31, 'pd', 'Wetboek van Strafrecht', 4250, 45, 0, 'Onrechtmatig voordoen als ambtenaar', 'Het onrechtmatig voordoen als een ambtenaar betekent dat iemand zich ten onrechte presenteert als een ambtenaar of overheidsfunctionaris terwijl dit niet het geval is.', 'major', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(32, 'pd', 'Wetboek van Strafrecht', 1150, 0, 0, 'Belediging van een ambtenaar ', 'Belediging van een ambtenaar betekent dat iemand een ambtenaar of overheidsfunctionaris beledigt, vernedert of respectloos behandelt tijdens de uitoefening van zijn of haar ambt. Dit kan zowel verbaal als non-verbaal gedrag omvatten dat de ambtenaar beledigt of hinderlijk is.', 'normal', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(33, 'pd', 'Wetboek van Strafrecht', 1600, 15, 0, 'Verstoring openbare orde ', 'Verstoring van de openbare orde betekent dat er een situatie ontstaat waarin de normale gang van zaken in de openbare ruimte wordt verstoord en de veiligheid, rust, orde, of het welzijn van de samenleving in gevaar wordt gebracht. Dit kan verschillende vormen aannemen, zoals rellen, gewelddadige demonstraties, vandalisme, luidruchtig gedrag, of andere verstoringen die de normale activiteiten van mensen en het functioneren van de maatschappij belemmeren.', 'normal', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(34, 'pd', 'Wetboek van Strafrecht', 60000, 200, 0, 'Terrorisme ', 'Een handeling die opzettelijk, direct of indirect, bedoeld is om angst te zaaien en/of levensbedreigende situaties te veroorzaken, door geweld of dreiging met geweld.\n\nDit is vooral in de volgende situaties:\n1. Een aanval op overheidsgebouwen\n2. Met explosieven gooien alsof het niks is', 'extreme', '{\"points\":0,\"fine\":\"45000\",\"jail\":180}', '{\"points\":0,\"fine\":30000,\"jail\":180}', 0),
(35, 'pd', 'Wetboek van Strafrecht', 2500, 15, 0, 'Stalking', 'Stalking is een patroon van herhaalde, ongewenste aandacht, achtervolging of contact met een persoon, wat resulteert in een gevoel van angst, onveiligheid of lastigvallen voor het slachtoffer. Het kan verschillende vormen aannemen, zoals fysiek achtervolgen, digitaal stalken via sociale media of berichten, ongewenste telefoontjes of brieven sturen, enzovoort.', 'major', '{\"jail\":10,\"points\":0,\"fine\":2200}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(36, 'pd', 'Wetboek van Strafrecht', 1950, 17, 0, 'Bezit hard-drugs', 'Bezit van harddrugs verwijst naar het onrechtmatig in bezit hebben van verboden en illegale drugs die als \'harddrugs\' worden geclassificeerd.', 'major', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(37, 'pd', 'Wetboek van Strafrecht', 3400, 30, 0, 'Afpersing', 'Afpersing is een strafbaar feit waarbij iemand dreigt om iemand anders letsel toe te brengen, hun reputatie te beschadigen, hun eigendommen te beschadigen of op een andere manier schadelijke acties te ondernemen, als het slachtoffer geen geld, goederen, diensten of iets anders van waarde levert aan de afperser.', 'major', '{\"jail\":\"25\",\"points\":0,\"fine\":\"2800\"}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(38, 'pd', 'Wetboek van Strafrecht', 1150, 10, 0, 'Diefstal zonder geweld', 'Het onrechtmatig wegnemen van eigendommen of bezittingen van een ander persoon zonder het gebruik van geweld of bedreigingen.', 'normal', '{\"fine\":\"1000\",\"points\":0,\"jail\":\"8\"}', '{\"fine\":\"950\",\"points\":0,\"jail\":\"5\"}', 0),
(39, 'pd', 'Wetboek van Strafrecht', 3500, 35, 0, 'Gekwalificeerde diefstal', 'Een vorm van diefstal waarbij naast het stelen van eigendommen ook bijkomende strafverzwarende factoren aanwezig zijn. Enkele voorbeelden van strafverzwarende factoren zijn; geweld, bedreiging met geweld, gebruik van een wapen, inbraak, hoge waarde van gestolen goederen.', 'major', '{\"jail\":\"25\",\"points\":0,\"fine\":\"2800\"}', '{\"jail\":20,\"points\":0,\"fine\":\"2300\"}', 0),
(40, 'pd', 'Wetboek van Strafrecht', 4000, 45, 0, 'Diefstal met geweld', 'Een misdrijf waarbij een persoon eigendommen van een ander steelt met gebruik van fysiek geweld, bedreiging met geweld of het gebruik van een wapen.', 'major', '{\"jail\":40,\"points\":0,\"fine\":\"3500\"}', '{\"jail\":\"35\",\"points\":0,\"fine\":3000}', 0),
(41, 'pd', 'Wetboek van Strafrecht', 1600, 25, 0, 'Eenvoudige mishandeling', 'Eenvoudige mishandeling verwijst naar een vorm van mishandeling waarbij het slachtoffer lichte verwondingen, letsel of pijn oploopt als gevolg van fysiek geweld of een aanval.', 'major', '[]', '[]', 0),
(42, 'pd', 'Wetboek van Strafrecht', 2400, 30, 0, 'Zware mishandeling', 'Zware mishandeling verwijst naar een ernstige vorm van fysieke aanval of geweld waarbij het slachtoffer ernstige verwondingen, lichamelijk letsel of gezondheidscomplicaties oploopt als gevolg van de aanval.', 'major', '{\"jail\":25,\"points\":0,\"fine\":2000}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(43, 'pd', 'Wetboek van Strafrecht', 5000, 90, 0, 'Doodslag', 'Een misdrijf waarbij een persoon opzettelijk het leven van een ander persoon beëindigt, maar zonder de voorbedachte rade of intentie om te doden. (Poging tot is bij richten)', 'extreme', '{\"points\":0,\"fine\":\"4200\",\"jail\":\"70\"}', '{\"points\":0,\"fine\":\"4500\",\"jail\":\"80\"}', 0),
(44, 'pd', 'Wetboek van Strafrecht', 7500, 100, 0, 'Moord', 'Moord is een zeer ernstig misdrijf waarbij een persoon opzettelijk en met voorbedachte rade het leven van een ander persoon beëindigt. ', 'extreme', '{\"jail\":\"80\",\"points\":0,\"fine\":\"6500\"}', '{\"jail\":\"70\",\"points\":0,\"fine\":\"6250\"}', 0),
(45, 'pd', 'Wetboek van Strafrecht', 1850, 20, 0, 'Openlijke geweldpleging', 'Een strafbaar feit waarbij een groep mensen samenkomt en gezamenlijk geweld gebruikt tegen personen of eigendommen in de openbare ruimte. Het kenmerkt zich door het openlijk en gewelddadig optreden van de daders in het bijzijn van anderen, vaak met de intentie om schade aan te richten, anderen te intimideren of een bepaald doel te bereiken.', 'major', '{\"jail\":\"15\",\"points\":0,\"fine\":1400}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(46, 'pd', 'Wet Wapen & Munitie', 50000, 240, 0, 'Bezit politiewapens', 'Het bezitten en of beroven van wapens die zijn gefabriceerd voor de politie.', 'extreme', '{\"points\":0,\"fine\":\"32500\",\"jail\":\"210\"}', '{\"points\":0,\"fine\":\"0\",\"jail\":\"0\"}', 0),
(47, 'pd', 'Wetboek van Strafrecht', 375, 0, 0, 'Vissen zonder vispas', 'Het vissen zonder (geldige) vergunning', 'normal', '[]', '[]', 0),
(48, 'pd', 'Wetboek van Strafrecht', 675, 8, 0, 'Illegaal jagen', 'Het jagen op beschermde dieren, het jagen zonder jaagvergunning, of het jagen in een niet daarvoor wettelijk toegekende locatie.\n', 'normal', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', '{\"jail\":\"0\",\"points\":0,\"fine\":\"0\"}', 0),
(49, 'pd', 'Wetboek van Strafrecht', 2300, 15, 0, 'Dierenmishandeling', 'Het opzettelijk of nalatig veroorzaken van fysiek letsel, pijn, lijden, of het verwaarlozen van dieren.', 'normal', '{\"points\":0,\"jail\":\"0\",\"fine\":\"0\"}', '{\"points\":0,\"jail\":\"0\",\"fine\":\"0\"}', 0),
(82, 'pd', 'Verkeers-overtredingen', 250, 0, 1, 'Snelheidsovertreding 20 km/u', 'Hij die 20 km/u harder rijdt dan de toegestaande snelheid.', 'normal', '[]', '[]', 0),
(83, 'pd', 'Verkeers-overtredingen', 425, 0, 2, 'Snelheidsovertreding 30 km/u', 'Hij die 30 km/u harder rijdt dan de toegestaande snelheid.', 'normal', '[]', '[]', 0),
(84, 'pd', 'Verkeers-overtredingen', 500, 0, 3, 'Snelheidsovertreding 40 km/u', 'Hij die 40 km/u harder rijdt dan de toegestaande snelheid.', 'normal', '[]', '[]', 0),
(85, 'pd', 'Verkeers-overtredingen', 750, 0, 4, 'Snelheidsovertreding 50 km/u of meer', 'Hij die meer dan 50 km/u harder rijdt dan de toegestaande snelheid.', 'normal', '[]', '[]', 0),
(86, 'pd', 'Verkeers-overtredingen', 180, 0, 1, 'Het niet opvolgen van een verkeers stoplicht', 'Hij die zich niet aan een stoplicht houdt.', 'normal', '[]', '[]', 0),
(87, 'pd', 'Verkeers-overtredingen', 250, 0, 1, 'Niet doorrijden bij groen licht', '', 'normal', '{}', '{}', 1),
(88, 'pd', 'Verkeers-overtredingen', 250, 0, 1, 'Spookrijden', 'Hij die aan de tegengestelde kant van de weg rijdt.', 'normal', '[]', '[]', 0),
(89, 'pd', 'Verkeers-overtredingen', 250, 0, 1, 'Niet zoveel mogelijk rechts houden', '', 'normal', '[]', '[]', 0),
(90, 'pd', 'Verkeers-overtredingen', 300, 0, 1, 'Blokkeren van een kruispunt', '', 'normal', '[]', '[]', 0),
(91, 'pd', 'Verkeers-overtredingen', 400, 0, 1, 'Foutief parkeren', 'Hij die een voertuig parkeert op een niet daarvoor bestemde plek.', 'normal', '[]', '[]', 0),
(92, 'pd', 'Verkeers-overtredingen', 400, 0, 1, 'Onrechtmatig stil laten staan', 'Hij die zijn voertuig stil zet op een niet daarvoor bestemde plek.', 'normal', '[]', '[]', 0),
(93, 'pd', 'Verkeers-overtredingen', 250, 0, 1, 'Voertuig niet voor laten gaan', '', 'normal', '[]', '[]', 0),
(94, 'pd', 'Verkeers-overtredingen', 250, 0, 0, 'Onnodig claxonneren', '', 'normal', '[]', '[]', 0),
(95, 'pd', 'Verkeers-overtredingen', 150, 0, 3, 'Zonder helm een motorvoertuig besturen', '', 'normal', '[]', '[]', 0),
(97, 'pd', 'Verkeers-overtredingen', 650, 0, 2, 'Het niet opvolgen van een stopteken', '', 'normal', '{}', '{}', 0),
(98, 'pd', 'Verkeers-overtredingen', 400, 0, 1, 'Overschrijden doorgetrokken streep', '', 'normal', '[]', '[]', 0),
(100, 'pd', 'Verkeers-overtredingen', 450, 0, 0, 'Kenteken niet zichtbaar op voertuig', '', 'normal', '{}', '{}', 0),
(101, 'pd', 'Verkeers-overtredingen', 250, 0, 0, 'Lichtdoorlatendheid lager dan 55%', '', 'normal', '{}', '{}', 0),
(103, 'pd', 'Verkeers-overtredingen', 900, 0, 3, 'Roekeloos rijgedrag', '', 'major', '{}', '{}', 0),
(104, 'pd', 'Verkeers-overtredingen', 950, 0, 2, 'Ongeluk door schuld', '', 'major', '{}', '{}', 0),
(105, 'pd', 'Verkeers-overtredingen', 950, 2, 1, 'Verlaten plaats ongeval', '', 'major', '{}', '{}', 0),
(106, 'pd', 'Verkeers-overtredingen', 150, 5, 1, 'Rijden onder invloed', '', 'major', '{}', '{}', 0),
(107, 'pd', 'Verkeers-overtredingen', 1050, 12, 3, 'Rijden met ongeldig verklaard rijbewijs', '', 'major', '{}', '{}', 0),
(108, 'pd', 'Verkeers-overtredingen', 1575, 21, 4, 'Straatracen', '', 'major', '{}', '{}', 0),
(109, 'pd', 'Verkeers-overtredingen', 800, 8, 3, 'Joyriding', '', 'major', '{}', '{}', 0),
(110, 'pd', 'Verkeers-overtredingen', 1050, 7, 0, 'Invordering rijbewijs', '', 'major', '{}', '{}', 0),
(112, 'pd', 'Wetboek van Strafrecht', 17500, 110, 0, 'Bezit politie apparatuur', 'Het bezitten en of beroven van apparatuur die gefabriceerd is voor de politie.', 'extreme', '{\"points\":0,\"fine\":\"13500\",\"jail\":\"75\"}', '{\"points\":0,\"fine\":\"0\",\"jail\":\"0\"}', 0),
(113, 'pd', 'Verkeers-overtredingen', 240, 0, 0, 'VA010 - Snelheidsovertreding 10 km/u', '', 'major', '{\"jail\":0,\"fine\":0,\"points\":0}', '{\"jail\":0,\"fine\":0,\"points\":0}', 0),
(114, 'ems', 'Operaties', 1000, 0, 0, 'Harttransplantatie', '', 'normal', '{}', '{}', 0),
(115, 'ems', 'Operaties', 1000, 0, 0, 'Orgaantransplantatie', '', 'normal', '{}', '{}', 0),
(116, 'ems', 'Operaties', 1000, 0, 0, 'Kunstheup', '', 'normal', '{}', '{}', 0),
(117, 'ems', 'Operaties', 1000, 0, 0, 'Amputatie', '', 'normal', '{}', '{}', 0),
(118, 'ems', 'Operaties', 250, 0, 0, 'Schotwonden <5', '', 'normal', '{}', '{}', 0),
(119, 'ems', 'Operaties', 500, 0, 0, 'Schotwonden >5', '', 'normal', '{}', '{}', 0),
(120, 'ems', 'Operaties', 250, 0, 0, 'Auto ongeluk', '', 'normal', '[]', '[]', 0),
(121, 'ems', 'Operaties', 1000, 0, 0, 'Kunstknie', '', 'normal', '{}', '{}', 0),
(122, 'ems', 'Operaties', 750, 0, 0, 'Pacemaker', '', 'normal', '{}', '{}', 0),
(123, 'ems', 'Operaties', 250, 0, 0, 'Jachtongeluk', '', 'normal', '{}', '{}', 0),
(124, 'ems', 'Operaties', 250, 0, 0, 'Vliegongeluk', '', 'normal', '{}', '{}', 0),
(125, 'ems', 'Operaties', 200, 0, 0, 'Snij- of steekwonden', '', 'normal', '{}', '{}', 0),
(126, 'ems', 'Operaties', 500, 0, 0, 'Plastische chirurgie', '', 'normal', '{}', '{}', 0),
(127, 'ems', 'Kleine Behandelingen', 150, 0, 0, 'Hechtingen', '', 'normal', '{}', '{}', 0),
(128, 'ems', 'Kleine Behandelingen', 100, 0, 0, 'Bloedonderzoek', '', 'normal', '{}', '{}', 0),
(129, 'ems', 'Kleine Behandelingen', 75, 0, 0, 'Kneuzing/blauwe plek', '', 'normal', '{}', '{}', 0),
(130, 'ems', 'Kleine Behandelingen', 50, 0, 0, 'Controle', '', 'normal', '{}', '{}', 0),
(131, 'ems', 'Kleine Behandelingen', 150, 0, 0, 'MRI-scan', '', 'normal', '{}', '{}', 0),
(132, 'ems', 'Kleine Behandelingen', 150, 0, 0, 'Röntgenfoto', '', 'normal', '{}', '{}', 0),
(133, 'ems', 'Kleine Behandelingen', 150, 0, 0, 'Gips', '', 'normal', '{}', '{}', 0),
(134, 'ems', 'Kleine Behandelingen', 150, 0, 0, 'Echo', '', 'normal', '{}', '{}', 0),
(135, 'ems', 'Kleine Behandelingen', 100, 0, 0, 'Verhongerd / uitgedroogd', '', 'normal', '{}', '{}', 0),
(136, 'ems', 'Kleine Behandelingen', 50, 0, 0, 'Algemene behandeling', '', 'normal', '{}', '{}', 0),
(137, 'ems', 'Kleine Behandelingen', 150, 0, 0, 'Reanimatie / verdrinking', '', 'normal', '{}', '{}', 0),
(138, 'ems', 'Kleine Behandelingen', 50, 0, 0, 'Beademing / intuberen', '', 'normal', '{}', '{}', 0),
(139, 'ems', 'Kleine Behandelingen', 150, 0, 0, 'Brandwonden', '', 'normal', '{}', '{}', 0),
(140, 'ems', 'Kleine Behandelingen', 75, 0, 0, 'Aambeien', '', 'normal', '{}', '{}', 0),
(141, 'ems', 'Medicijnen', 15, 0, 0, 'Oxycodon', '', 'normal', '{}', '{}', 0),
(142, 'ems', 'Medicijnen', 15, 0, 0, 'Paracetamol', '', 'normal', '{}', '{}', 0),
(143, 'ems', 'Medicijnen', 15, 0, 0, 'Ibuprofen', '', 'normal', '{}', '{}', 0),
(144, 'ems', 'Medicijnen', 20, 0, 0, 'Antibiotica', '', 'normal', '{}', '{}', 0),
(145, 'ems', 'Medicijnen', 30, 0, 0, 'Ketamine', '', 'normal', '{}', '{}', 0),
(146, 'ems', 'Medicijnen', 30, 0, 0, 'Morfine', '', 'normal', '{}', '{}', 0),
(147, 'ems', 'Medicijnen', 30, 0, 0, 'Narcosespuit', '', 'normal', '{}', '{}', 0),
(148, 'ems', 'Medicijnen', 15, 0, 0, 'Slaappillen', '', 'normal', '{}', '{}', 0),
(149, 'ems', 'Medicijnen', 25, 0, 0, 'Adrenalinespuit', '', 'normal', '{}', '{}', 0),
(150, 'ems', 'Overige', 15, 0, 0, 'Verband', '', 'normal', '{}', '{}', 0),
(151, 'ems', 'Hulpmiddelen', 0, 0, 0, 'Teddybeer', '', 'normal', '[]', '[]', 0),
(152, 'ems', 'Overige', 35, 0, 0, 'Administratiekosten', '', 'normal', '{}', '{}', 0),
(153, 'ems', 'Hulpmiddelen', 50, 0, 0, 'Wandelstok', '', 'normal', '[]', '[]', 0),
(154, 'ems', 'Overige', 50, 0, 0, 'Ambulance transport', '', 'normal', '[]', '[]', 0),
(155, 'ems', 'Overige', 100, 0, 0, 'Lifeflight transport', '', 'normal', '[]', '[]', 0),
(156, 'ems', 'Hulpmiddelen', 350, 0, 0, 'Rolstoel', 'Patiënt krijgt de borg terug bij inlevering van het hulpmiddel.', 'normal', '[]', '[]', 0),
(157, 'ems', 'Overige', 30, 0, 0, 'Plaatselijke verdoving', '', 'normal', '{}', '{}', 0),
(158, 'ems', 'Hulpmiddelen', 50, 0, 0, 'Rugkorset', '', 'normal', '[]', '[]', 0),
(159, 'ems', 'Overige', 500, 0, 0, 'Werkbelemmering', '', 'normal', '{}', '{}', 0),
(160, 'ems', 'Overige', 50, 0, 0, 'Coldpack', '', 'normal', '{}', '{}', 0),
(161, 'ems', 'Overige', 50, 0, 0, 'Infuus', '', 'normal', '{}', '{}', 0),
(162, 'ems', 'Overige', 20, 0, 0, 'Zalfje', '', 'normal', '{}', '{}', 0),
(163, 'ems', 'Zielenknijper', 75, 0, 0, 'Afkicken', '', 'normal', '{}', '{}', 0),
(164, 'ems', 'Zielenknijper', 50, 0, 0, 'Depressie', '', 'normal', '{}', '{}', 0),
(165, 'ems', 'Zielenknijper', 75, 0, 0, 'PTSS', '', 'normal', '{}', '{}', 0),
(166, 'ems', 'Zielenknijper', 50, 0, 0, 'Hoortest', '', 'normal', '{}', '{}', 0),
(167, 'ems', 'Zielenknijper', 50, 0, 0, 'Oogtest', '', 'normal', '{}', '{}', 0),
(168, 'ems', 'Zielenknijper', 100, 0, 0, 'Relatie- en gezinstherapie', '', 'normal', '{}', '{}', 0),
(169, 'ems', 'Zielenknijper', 150, 0, 0, 'Eerste consult psycholoog', '', 'normal', '{}', '{}', 0),
(170, 'ems', 'Zielenknijper', 300, 0, 0, 'Consult psycholoog', '', 'normal', '{}', '{}', 0),
(171, 'pd', 'Wet Wapen & Munitie', 5750, 60, 0, 'Fabriceren van een vuurwapen', 'Een persoon die een vuurwapen of onderdelen van een vuurwapen vervaardigt zonder een vergunning.', 'major', '{\"jail\":\"50\",\"points\":\"0\",\"fine\":\"4750\"}', '{\"jail\":\"0\",\"points\":\"0\",\"fine\":\"0\"}', 0),
(172, 'pd', 'Wet Wapen & Munitie', 5250, 40, 0, 'Distributie van een vuurwapen', 'Een persoon die een vuurwapen distribueert zonder een vergunning.', 'major', '{\"jail\":\"30\",\"points\":\"0\",\"fine\":\"4500\"}', '{\"jail\":\"0\",\"points\":\"0\",\"fine\":\"0\"}', 0),
(173, 'pd', 'Wetboek van Strafrecht', 6500, 100, 0, 'Doodslag op ambtenaar', 'Een misdrijf waarbij een persoon opzettelijk het leven van een ambtenaar beëindigt, maar zonder de voorbedachte rade of intentie om te doden. (Poging tot bij richten)', 'extreme', '{\"points\":\"0\",\"fine\":\"5200\",\"jail\":\"80\"}', '{\"points\":\"0\",\"fine\":\"5500\",\"jail\":\"90\"}', 0),
(174, 'pd', 'Wetboek van Strafrecht', 8500, 110, 0, 'Moord op ambtenaar', 'Moord is een zeer ernstig misdrijf waarbij een persoon opzettelijk en met voorbedachte rade het leven van een ambtenaar beëindigt. ', 'extreme', '{\"jail\":\"90\",\"points\":\"0\",\"fine\":\"7500\"}', '{\"jail\":\"80\",\"points\":\"0\",\"fine\":\"7250\"}', 0),
(175, 'pd', 'Wetboek van Strafrecht', 80000, 4320, 0, 'Corruptie', 'Misbruik maken van toegekende bevoegdheden of macht voor persoonlijk gewin.', 'extreme', '{\"points\":\"\",\"fine\":\"\",\"jail\":\"\"}', '{\"points\":\"\",\"fine\":\"\",\"jail\":\"\"}', 0),
(176, 'pd', 'Wetboek van Strafrecht', 80000, 4320, 0, 'Corruptie', 'Misbruik maken van toegekende bevoegdheden of macht voor persoonlijk gewin.', 'extreme', '{\"points\":\"0\",\"fine\":\"0\",\"jail\":\"0\"}', '{\"points\":\"0\",\"fine\":\"0\",\"jail\":\"0\"}', 1),
(177, 'pd', 'Wetboek van Strafrecht', 1000, 0, 0, 'Voorhanden hebben van soft drugs', 'Het voorhanden hebben van softdrugs (wiet of hasj), meer dan de toegestane hoeveelheid (5 stuks).', 'normal', '{\"fine\":\"\",\"points\":\"\",\"jail\":\"\"}', '{\"fine\":\"\",\"points\":\"\",\"jail\":\"\"}', 0),
(178, 'pd', 'Wetboek van Strafrecht', 1500, 15, 0, 'Distributie van soft drugs', 'Distributie van verdovende middelen (Wiet en Hasj)', 'major', '{\"fine\":\"\",\"jail\":\"\",\"points\":\"\"}', '{\"fine\":\"\",\"jail\":\"\",\"points\":\"\"}', 0),
(179, 'pd', 'Wetboek van Strafrecht', 4000, 60, 0, 'Distributie van hard drugs', 'Distributie van verdovende middelen (hard drugs)', 'extreme', '{\"fine\":\"\",\"jail\":\"\",\"points\":\"\"}', '{\"fine\":\"\",\"jail\":\"\",\"points\":\"\"}', 0),
(180, 'pd', 'Wetboek van Strafrecht', 500, 0, 0, 'Lelijk hoofd', 'De verdachte is in bezit of uitvoering van een lelijk hoofd.', 'normal', '{\"points\":\"0\",\"fine\":\"300\",\"jail\":\"0\"}', '{\"points\":\"0\",\"fine\":\"150\",\"jail\":\"0\"}', 1),
(181, 'ems', 'Overige', 6000, 0, 0, 'Scootmobiel', '', 'normal', '[]', '[]', 1),
(182, 'ems', 'Hulpmiddelen', 6000, 0, 0, 'Scootmobiel', 'Patiënt krijgt de borg terug bij inlevering van het hulpmiddel.', 'normal', '[]', '[]', 0),
(183, 'ems', 'Kleine Behandelingen', 50, 0, 0, 'Taserpijltjes', '', 'normal', '[]', '[]', 0),
(184, 'ems', 'Kleine Behandelingen', 75, 0, 0, 'Infectie', '', 'normal', '[]', '[]', 0),
(185, 'ems', 'Medicijnen', 30, 0, 0, 'Melatonine', '', 'normal', '[]', '[]', 0),
(186, 'ems', 'Zielenknijper', 75, 0, 0, 'Schaamluizen', '', 'normal', '[]', '[]', 0),
(187, 'ems', 'Hulpmiddelen', 30, 0, 0, 'Mitella', '', 'normal', '[]', '[]', 0),
(188, 'ems', 'Zielenknijper', 100, 0, 0, 'Fysiotherapie', '', 'normal', '[]', '[]', 0),
(189, 'ems', 'Overige', 500, 0, 0, 'Pakketdienst', '', 'major', '[]', '[]', 1),
(190, 'pd', 'Wetboek van Strafrecht', 15000, 0, 0, 'Overschrijding maximale hoeveelheid softdrugs', 'Hij/ Zij die eigenaar is van een coffeeshop en de maximale hoeveelheid soft drugs heeft overschreden in de opslag van de coffeeshop. (1000 Gram)', 'major', '{\"fine\":\"\",\"points\":\"\",\"jail\":\"\"}', '{\"fine\":\"\",\"points\":\"\",\"jail\":\"\"}', 0),
(191, 'pd', 'Wetboek van Strafrecht', 1500, 0, 0, 'Adverteren van drugs met de intentie tot verkoop', 'Hij/Zij die adverteert met het verkoop van drugs op welke manier dan ook.', 'normal', '{\"fine\":\"\",\"points\":\"\",\"jail\":\"\"}', '{\"fine\":\"\",\"points\":\"\",\"jail\":\"\"}', 0),
(192, 'pd', 'Wet Wapen & Munitie', 6500, 80, 0, 'Bezit van Explosieven', 'Hij of zij die in bezit is van een explosief, denk hieraan bijvoorbeeld C4 of Thermiet', 'extreme', '{\"fine\":\"\",\"points\":\"\",\"jail\":\"\"}', '{\"fine\":\"\",\"points\":\"\",\"jail\":\"\"}', 0),
(193, 'pd', 'Wet Wapen & Munitie', 4000, 50, 0, 'Bezit wapen van de 3e catergorie', 'Hij of zij die in bezit is van een vuurwapen uit de 3e catergorie. Dit geldt voor (semi) automatische shotguns en shotguns die een extra handeling nodig hebben voordat er gevuurd kan worden.', 'major', '{\"fine\":\"\",\"points\":\"\",\"jail\":\"\"}', '{\"fine\":\"\",\"points\":\"\",\"jail\":\"\"}', 0),
(194, 'ems', 'Kleine Behandelingen', 75, 0, 0, 'Massage', '', 'normal', '[]', '[]', 0),
(195, 'pd', 'Speciaal', 10, 1, 0, 'Heterdaad Janken', 'Het heterdaad janken in een situatie die je zelf hebt veroorzaakt.', 'extreme', '{\"jail\":\"\",\"points\":\"\",\"fine\":\"\"}', '{\"jail\":\"\",\"points\":\"\",\"fine\":\"\"}', 1),
(196, 'ems', 'Operaties', 500, 0, 0, 'Orgaan (deels) verwijderen', '', 'normal', '[]', '[]', 0),
(197, 'ems', 'Kleine Behandelingen', 75, 0, 0, 'Schrammen / schaafwonden', '', 'normal', '[]', '[]', 0),
(198, 'ems', 'Medicijnen', 15, 0, 0, 'Laxeermiddel', '', 'normal', '[]', '[]', 0),
(199, 'ems', 'Medicijnen', 25, 0, 0, 'Viagra', '', 'normal', '[]', '[]', 0),
(200, 'ems', 'Medicijnen', 15, 0, 0, 'Laxeermiddel', '', 'normal', '[]', '[]', 1),
(201, 'ems', 'Operaties', 200, 0, 0, 'Aangereden', '', 'normal', '[]', '[]', 0),
(202, 'ems', 'Kleine Behandelingen', 150, 0, 0, 'Spoedhulp', '', 'normal', '[]', '[]', 0),
(203, 'ems', 'Hulpmiddelen', 6000, 0, 0, 'Duikuitrusting', '', 'normal', '[]', '[]', 0),
(204, 'pd', 'Wetboek van Strafrecht', 3500, 15, 0, 'Belemmering Ambtenaar ', 'Hij die opzettelijk niet voldoet aan een bevel of een vordering, krachtens wettelijk voorschrift gedaan door een ambtenaar met de uitoefening van enig toezicht belast of door een ambtenaar belast met of bevoegd verklaard tot het opsporen of onderzoeken van strafbare feiten, alsmede hij die opzettelijk enige handeling, door een van die ambtenaren ondernomen ter uitvoering van enig wettelijk voorschrift, belet, belemmert of verijdelt.', 'normal', '{\"jail\":\"\",\"fine\":\"\",\"points\":\"\"}', '{\"jail\":\"\",\"fine\":\"\",\"points\":\"\"}', 0),
(205, 'pd', 'Verkeers-overtredingen', 125, 0, 0, 'Oversteken zonder zebrapad', 'Oversteken op de openbare weg zonder het gebruiken van een zebra pad', 'normal', '{\"jail\":\"\",\"fine\":\"\",\"points\":\"\"}', '{\"jail\":\"\",\"fine\":\"\",\"points\":\"\"}', 0),
(206, 'pd', 'Wetboek van Strafrecht', 120, 0, 0, 'Wildplassen', 'In het openbaar urineren', 'normal', '{\"jail\":\"\",\"points\":\"\",\"fine\":\"\"}', '{\"jail\":\"\",\"points\":\"\",\"fine\":\"\"}', 0),
(207, 'ems', 'Operaties', 200, 0, 0, 'Klaplong', '', 'normal', '[]', '[]', 0),
(208, 'pd', 'Wetboek van Strafrecht', 3250, 20, 0, 'Doxing', 'Een handeling waarbij identificerende informatie over iemand online wordt onthuld, zoals zijn of haar echte naam, woonadres, werkplek, telefoon, financiële en andere persoonlijke informatie. Die informatie wordt dan openbaar gemaakt - zonder toestemming van het slachtoffer.', 'major', '{\"points\":\"\",\"fine\":\"\",\"jail\":\"\"}', '{\"points\":\"\",\"fine\":\"\",\"jail\":\"\"}', 0),
(209, 'pd', 'Wetboek van Strafrecht', 3000, 25, 0, 'Bedreiging ambtenaar', 'Met bedreiging wordt bedoeld dat u of iemand anders wordt bedreigd met fysiek geweld of de dood.', 'major', '{\"points\":\"\",\"fine\":\"\",\"jail\":\"\"}', '{\"points\":\"\",\"fine\":\"\",\"jail\":\"\"}', 0),
(210, 'pd', 'Wetboek van Strafrecht', 3000, 25, 0, 'Bedreiging ambtenaar in functie', 'Met bedreiging wordt bedoeld dat u of iemand anders wordt bedreigd met fysiek geweld of de dood.', 'major', '{\"points\":\"\",\"fine\":\"\",\"jail\":\"\"}', '{\"points\":\"\",\"fine\":\"\",\"jail\":\"\"}', 1),
(211, 'pd', 'Wetboek van Strafrecht', 5000, 25, 0, 'Verstoring van een rechtszaak', 'Het is een ieder verboden een rechtszaak te verstoren of te verhinderen. ', 'normal', '{\"jail\":\"10\",\"fine\":\"5000\",\"points\":\"\"}', '{\"jail\":\"\",\"fine\":\"\",\"points\":\"\"}', 0),
(212, 'pd', '', 0, 0, 0, '', '', '', '{\"fine\":\"\",\"jail\":\"\",\"points\":\"\"}', '{\"fine\":\"\",\"jail\":\"\",\"points\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mdw_evidence`
--

CREATE TABLE `mdw_evidence` (
  `id` int(11) NOT NULL,
  `type` longtext NOT NULL,
  `identifier` longtext NOT NULL,
  `description` longtext NOT NULL,
  `citizenid` longtext NOT NULL,
  `tags` longtext NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mdw_evidence_types`
--

CREATE TABLE `mdw_evidence_types` (
  `id` int(11) NOT NULL,
  `type` longtext NOT NULL,
  `color` longtext NOT NULL DEFAULT '#ffffff',
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mdw_evidence_types`
--

INSERT INTO `mdw_evidence_types` (`id`, `type`, `color`, `deleted`) VALUES
(1, 'Anders', '#ffffff', 0),
(2, 'Bloed', '#f44436', 0),
(3, 'Kogelhuls', '#7db966', 0),
(4, 'Vuurwapen', '#000000', 0),
(5, 'Projectiel', '#fd9808', 0),
(6, 'Glas', '#ffffff', 0),
(7, 'Voertuig Fragment', '#ffffff', 0),
(8, 'Foto', '#4eab57', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mdw_legislation`
--

CREATE TABLE `mdw_legislation` (
  `id` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `content` longtext NOT NULL,
  `tags` longtext NOT NULL DEFAULT '[]',
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mdw_profiles`
--

CREATE TABLE `mdw_profiles` (
  `id` int(11) NOT NULL,
  `citizenid` longtext NOT NULL,
  `name` longtext NOT NULL,
  `notes` longtext NOT NULL,
  `image` longtext NOT NULL,
  `tags` longtext NOT NULL DEFAULT '[]',
  `wanted` int(11) NOT NULL DEFAULT 0,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mdw_ranks`
--

CREATE TABLE `mdw_ranks` (
  `id` int(11) NOT NULL,
  `rank` longtext NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mdw_ranks`
--

INSERT INTO `mdw_ranks` (`id`, `rank`, `deleted`) VALUES
(1, 'Rechter', 0),
(2, 'Cadet', 0),
(3, 'Solo Cadet', 0),
(4, 'Officer', 0),
(5, 'Senior Officer', 0),
(6, 'Deputy', 0),
(7, 'Senior Deputy', 0),
(8, 'Sergeant', 0),
(9, 'Lieutenant', 0),
(10, 'Assistant Chief', 0),
(11, 'Chief of Police', 0),
(12, 'Undersheriff', 0),
(13, 'Sheriff', 0),
(14, 'State Officer', 0),
(15, 'Trooper', 0),
(16, 'Deputy Commissioner', 0),
(17, 'Commissioner', 0),
(18, 'Trainee', 0),
(19, 'Emergency Medical Technician', 0),
(20, 'Advanced EMT', 0),
(21, 'Paramedic', 0),
(22, 'Captain', 0),
(23, 'Deputy Chief', 0),
(24, 'Chief of EMS', 0),
(25, 'Ranger', 0),
(26, 'Ranger Corporal', 0),
(27, 'Ranger Sergeant', 0),
(28, 'Ranger Lieutenant', 0),
(29, 'Deputy Game Warden', 0),
(30, 'Game Warden', 0),
(31, 'Corporal', 0),
(32, 'Underchief', 0),
(33, 'Trooper Sergeant', 0),
(34, 'District Attorney', 0),
(35, 'Chief of Justice', 0),
(36, 'Winkelpolitie', 0),
(37, 'Trooper Lieutenant', 0),
(38, 'Trooper Captain', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mdw_reports`
--

CREATE TABLE `mdw_reports` (
  `id` int(11) NOT NULL,
  `author` varchar(256) DEFAULT NULL,
  `category` varchar(256) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `report` longtext DEFAULT NULL,
  `evidence` text DEFAULT '[]',
  `tags` longtext DEFAULT '[]',
  `officers` longtext DEFAULT '[]',
  `persons` longtext DEFAULT '[]',
  `vehicles` longtext DEFAULT '[]',
  `scums` longtext DEFAULT '[]',
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mdw_roles`
--

CREATE TABLE `mdw_roles` (
  `id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `icon` longtext NOT NULL,
  `color` longtext NOT NULL,
  `permissions` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mdw_roles`
--

INSERT INTO `mdw_roles` (`id`, `name`, `icon`, `color`, `permissions`) VALUES
(1, 'Systeem Adminstrator', 'users-cog', '#F44336', '{\"Staff.GiveStrikes\":true,\"Profiles.Delete\":true,\"Profiles.Create\":true,\"Dashboard.Visible\":true,\"Legislation.Edit\":true,\"Reports.Edit\":true,\"Profiles.ShowHousing\":true,\"Profiles.Edit\":true,\"Reports.Visible\":true,\"Evidence.Delete\":true,\"Dashboard.ShowBulletin\":true,\"Reports.Delete\":true,\"Staff.ShowStrikes\":true,\"Reports.Create\":true,\"Profiles.ShowNotes\":true,\"Evidence.Edit\":true,\"Evidence.Visible\":true,\"Evidence.Create\":true,\"Staff.GiveCerts\":true,\"Legislation.Create\":true,\"Legislation.Delete\":true,\"Dashboard.ShowWarrents\":true,\"Reports.Export\":true,\"Config.EditCharges\":true,\"Config.DeleteCharges\":true}'),
(2, 'PD Edit', 'user-edit', '#ffffff', '{\"Staff.GiveStrikes\":false,\"Profiles.Delete\":false,\"Profiles.Create\":true,\"Dashboard.Visible\":true,\"Legislation.Edit\":false,\"Reports.Edit\":true,\"Profiles.ShowHousing\":true,\"Profiles.Edit\":true,\"Reports.Visible\":true,\"Evidence.Delete\":false,\"Dashboard.ShowBulletin\":true,\"Reports.Delete\":false,\"Staff.ShowStrikes\":false,\"Reports.Create\":true,\"Profiles.ShowNotes\":true,\"Evidence.Edit\":true,\"Evidence.Visible\":true,\"Evidence.Create\":true,\"Staff.GiveCerts\":false,\"Legislation.Create\":false,\"Legislation.Delete\":false,\"Dashboard.ShowWarrents\":true,\"Reports.Export\":true,\"Config.EditCharges\":false,\"Config.DeleteCharges\":false}'),
(3, 'EMS Edit', 'user-edit', '#ffffff', '{\"Staff.GiveStrikes\":false,\"Profiles.Delete\":false,\"Profiles.Create\":true,\"Dashboard.Visible\":true,\"Legislation.Edit\":false,\"Reports.Edit\":true,\"Profiles.ShowHousing\":false,\"Profiles.Edit\":true,\"Reports.Visible\":true,\"Evidence.Delete\":false,\"Dashboard.ShowBulletin\":true,\"Reports.Delete\":false,\"Staff.ShowStrikes\":false,\"Reports.Create\":true,\"Profiles.ShowNotes\":true,\"Evidence.Edit\":true,\"Evidence.Visible\":false,\"Evidence.Create\":true,\"Staff.GiveCerts\":false,\"Legislation.Create\":false,\"Legislation.Delete\":false,\"Dashboard.ShowWarrents\":false,\"Reports.Export\":true,\"Config.EditCharges\":false,\"Config.DeleteCharges\":false}'),
(4, 'Cert Edit', 'user-edit', '#ffffff', '{\"Staff.GiveStrikes\":false,\"Profiles.Delete\":false,\"Profiles.Create\":false,\"Dashboard.Visible\":false,\"Legislation.Edit\":false,\"Reports.Edit\":false,\"Profiles.ShowHousing\":false,\"Profiles.Edit\":false,\"Reports.Visible\":false,\"Evidence.Delete\":false,\"Dashboard.ShowBulletin\":false,\"Reports.Delete\":false,\"Staff.ShowStrikes\":false,\"Reports.Create\":false,\"Profiles.ShowNotes\":false,\"Evidence.Edit\":false,\"Evidence.Visible\":false,\"Evidence.Create\":false,\"Staff.GiveCerts\":true,\"Legislation.Create\":false,\"Legislation.Delete\":false,\"Dashboard.ShowWarrents\":false,\"Reports.Export\":false,\"Config.EditCharges\":false,\"Config.DeleteCharges\":false}'),
(5, 'Rechter', 'gavel', '#ffffff', '{\"Staff.GiveStrikes\":false,\"Profiles.Delete\":true,\"Profiles.Create\":true,\"Dashboard.Visible\":true,\"Legislation.Edit\":true,\"Reports.Edit\":true,\"Profiles.ShowHousing\":true,\"Profiles.Edit\":true,\"Reports.Visible\":true,\"Evidence.Delete\":true,\"Dashboard.ShowBulletin\":true,\"Reports.Delete\":true,\"Staff.ShowStrikes\":true,\"Reports.Create\":true,\"Profiles.ShowNotes\":true,\"Evidence.Edit\":true,\"Evidence.Visible\":true,\"Evidence.Create\":true,\"Staff.GiveCerts\":false,\"Legislation.Create\":true,\"Legislation.Delete\":true,\"Dashboard.ShowWarrents\":true,\"Reports.Export\":true,\"Config.EditCharges\":true,\"Config.DeleteCharges\":true}'),
(6, 'Straffen', 'users-cog', '#ffffff', '{\"Profiles.Delete\":false,\"Legislation.Delete\":false,\"Staff.ShowStrikes\":false,\"Profiles.Edit\":false,\"Dashboard.ShowBulletin\":false,\"Evidence.Edit\":false,\"Evidence.Visible\":false,\"Evidence.Delete\":false,\"Staff.GiveCerts\":false,\"Reports.Create\":false,\"Reports.Visible\":false,\"Dashboard.ShowWarrents\":false,\"Dashboard.Visible\":false,\"Reports.Delete\":false,\"Profiles.ShowHousing\":false,\"Staff.GiveStrikes\":false,\"Legislation.Create\":false,\"Profiles.Create\":false,\"Evidence.Create\":false,\"Legislation.Edit\":false,\"Profiles.ShowNotes\":false,\"Reports.Edit\":false}'),
(7, 'Trainee', 'vial', '#ffffff', '{\"Dashboard.ShowBulletin\":true,\"Profiles.Delete\":false,\"Evidence.Create\":false,\"Dashboard.Visible\":true,\"Legislation.Delete\":false,\"Staff.GiveStrikes\":false,\"Staff.ShowStrikes\":false,\"Evidence.Delete\":false,\"Profiles.ShowHousing\":false,\"Evidence.Edit\":false,\"Evidence.Visible\":false,\"Profiles.Edit\":false,\"Reports.Delete\":false,\"Reports.Create\":false,\"Profiles.Create\":false,\"Profiles.ShowNotes\":false,\"Staff.GiveCerts\":false,\"Reports.Edit\":false,\"Reports.Visible\":true,\"Legislation.Edit\":false,\"Legislation.Create\":false,\"Dashboard.ShowWarrents\":false}');

-- --------------------------------------------------------

--
-- Table structure for table `mdw_staff`
--

CREATE TABLE `mdw_staff` (
  `id` int(11) NOT NULL,
  `citizenid` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `callsign` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alias` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phonenumber` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `department` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rank` int(11) NOT NULL DEFAULT 0,
  `certs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '[]',
  `strikes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '[]',
  `roles` longtext NOT NULL DEFAULT '[]',
  `deleted` int(11) NOT NULL DEFAULT 0,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mdw_tags`
--

CREATE TABLE `mdw_tags` (
  `id` int(11) NOT NULL,
  `tag` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `color` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#ffffff',
  `icon` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mdw_tags`
--

INSERT INTO `mdw_tags` (`id`, `tag`, `color`, `icon`, `deleted`) VALUES
(1, 'Lifer', '#a87532', '', 0),
(2, 'BCSO', '#a87d32', '', 0),
(3, 'LSPD', '#202291', '', 0),
(4, 'Law Enforcement', '#1b76a1', '', 0),
(5, 'SASP', '#15327a', '', 0),
(6, 'SAPR', '#12660f', '', 0),
(7, 'UPD', '#535452', '', 0),
(8, 'Bearly Legal MC', '#D50000', 'fas fa-motorcycle', 0),
(9, 'Death Sinners MC', '#D50000', 'fas fa-motorcycle', 0),
(10, 'Lost Holland MC', '#D50000', 'fas fa-motorcycle', 0),
(11, 'Flying Dragons', '#D32F2F', 'fas fa-dragon', 0),
(12, 'Skull Gang', '#757575', 'fas fa-skull', 0),
(13, 'Los Aztecas', '#FAFAFA', '', 0),
(14, 'ESB', '#6A1B9A', 'fas fa-wheelchair', 0),
(15, 'OG’s', '#FAFAFA', '', 0),
(16, 'Bumper Gang', '#FF8A65', 'fas fa-car-crash', 0),
(17, 'Dark Wolves MC', '#D50000', 'fas fa-motorcycle', 0),
(18, 'Los Muertos MC', '#D50000', 'fas fa-motorcycle', 0),
(19, 'Grizzley Gang', '#F44336', 'fas fa-paw-claws', 0),
(20, 'Copkiller', '#ffffff', 'user-shield', 0),
(21, 'Gevangenis', '#ffffff', 'voicemail', 0),
(22, 'Terrorisme', '#D50000', 'fas fa-bomb', 0),
(23, 'Vatos Locos', '#FBC02D', 'fas fa-skull-crossbones', 0);

-- --------------------------------------------------------

--
-- Table structure for table `musictapes`
--

CREATE TABLE `musictapes` (
  `id` int(11) NOT NULL,
  `tape_id` longtext NOT NULL,
  `tape_title` longtext NOT NULL,
  `tape_artist` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `occasion_vehicles`
--

CREATE TABLE `occasion_vehicles` (
  `id` int(11) NOT NULL,
  `seller` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `mods` text DEFAULT NULL,
  `occasionid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_adverts`
--

CREATE TABLE `phone_adverts` (
  `id` int(11) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_bank_logs`
--

CREATE TABLE `phone_bank_logs` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL DEFAULT '0',
  `amount` varchar(255) NOT NULL DEFAULT '0',
  `comment` longtext NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_businesses`
--

CREATE TABLE `phone_businesses` (
  `id` int(11) NOT NULL,
  `business_owner` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `business_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `business_account` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `business_employees` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '[]',
  `business_ranks` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phone_businesses`
--

INSERT INTO `phone_businesses` (`id`, `business_owner`, `business_name`, `business_account`, `business_employees`, `business_ranks`) VALUES
(1, '1001', 'De Staat van San Andreas', '1', '[]', '[]'),
(2, '1001', 'Bennys Motorworks', '37489523', '[]', '[]'),
(3, '1001', 'Dynasty 8', '90184729', '[]', '[]'),
(5, '1001', 'Premium Deluxe Motorsports', '51872694', '[]', '[]'),
(6, '1001', 'The Lost Holland', '62984571', '[]', '[]'),
(7, '1001', 'UwU Café', '10485732', '[]', '[]'),
(8, '1001', 'Burger Shot', '72938410', '[]', '[]'),
(9, '1001', 'Maldinis Pizza', '51293764', '[]', '[]'),
(10, '1001', 'Digital Den', '93571284', '[]', '[]'),
(11, '1001', 'Los Santos Vliegschool', '64859127', '[]', '[]'),
(12, '1001', 'Hayes Repairs', '38104795', '[]', '[]'),
(13, '1001', 'Los Santos Events', '73948510', '[]', '[]'),
(14, '1001', 'Diamond Casino & Resort', '29483617', '[]', '[]'),
(15, '1001', 'PawnNGo', '61739284', '[]', '[]'),
(16, '1001', 'Muertos Motorcycle Shop', '24581397', '[]', '[]'),
(19, '1001', 'Dark Wolves MC', '97461523', '[]', '[]'),
(21, '1001', 'Dragons Den', '58004141', '[]', '[]'),
(23, '1001', 'Guard Vision', '47050658', '[]', '[]'),
(24, '1001', 'Mattronics', '41977204', '[]', '[]'),
(25, '1001', 'van Binskerken', '93846474', '[]', '[]'),
(26, '1001', 'Department of Corrections', '5', '[]', '[]'),
(27, '1001', 'Algemene Court', '38038770', '[]', '[]'),
(28, '1001', 'Οίνος από οντίν', '39771131', '[]', '[]'),
(29, '1001', 'BBV&A', '86339923', '[]', '[]'),
(30, '1001', 'Court of Justice', '13480488', '[]', '[]'),
(31, '1001', 'Advocatenbureau Wilson', '73521984', '[]', '[]'),
(32, '1001', 'Downtown Cab Co.', '76132625', '[]', '[]'),
(33, '1001', 'Quick House Makelaar', '57281946', '[]', '[]'),
(34, '1001', 'DA De Boer', '42868446', '[]', '[]'),
(35, '1001', 'Bijtjes Revalidatie Centrum', '59298776', '[]', '[]'),
(36, '1001', 'Van Den Bossche & Van Gisteren', '26498564', '[]', '[]'),
(37, '1001', 'Benny\'s Diensten', '06474063', '[]', '[]'),
(38, '1001', 'MarleyGo', '78720543', '[]', '[]'),
(39, '1001', 'Magnus Kalus', '39358889', '[]', '[]'),
(40, '1001', 'US Marshals Service', '70339460', '[]', '[]'),
(41, '1001', 'AshWin', '06624517', '[]', '[]'),
(42, '1001', 'Van Dam D.A.', '52999542', '[]', '[]'),
(43, '1001', 'Puff Puff Pass', '35677967', '[]', '[]'),
(44, '1001', 'Bahama Mamas', '64879604', '[]', '[]'),
(45, '1001', 'Happy Shark', '17819483', '[]', '[]'),
(46, '1001', 'The Mile High Service', '67041512', '[]', '[]'),
(47, '1001', 'Dragons Den Investment Group', '76599570', '[]', '[]'),
(48, '1001', 'White Widow', '53855382', '[]', '[]'),
(49, '1001', 'De Oude Wortol', '61175693', '[]', '[]'),
(50, '1001', 'Triad Records', '27076967', '[]', '[]'),
(51, '1001', 'The Pink Cage', '49693784', '[]', '[]'),
(52, '1001', 'Coopers Arcade', '35110332', '[]', '[]'),
(53, '1001', 'Gruppe6', '70177095', '[]', '[]'),
(54, '1001', 'Weazel News', '99641954', '[]', '[]'),
(55, '1001', 'Harmony Repairs', '12010470', '[]', '[]'),
(56, '1001', 'King Of Investments', '43615999', '[]', '[]'),
(57, '1001', 'Chi-Vents', '39288407', '[]', '[]'),
(58, '1001', 'Johnson en Dolder advocatuur', '39288407', '[]', '[]'),
(59, '1001', 'Kebab King', '89455582', '[]', '[]'),
(60, '1001', 'FINAX', '91439092', '[]', '[]'),
(62, '1001', 'ORO LOCOS', '50779961', '[]', '[]'),
(63, '1001', 'PD Tow', '2', '[]', '[]'),
(64, '1001', 'Binsbergen International Network', '57877227', '[]', '[]'),
(65, '1001', 'Daily Fresh', '65873458', '[]', '[]'),
(66, '1001', 'Perfect Shine', '39244577', '[]', '[]'),
(67, '1001', 'Digital Dean', '92594208', '[]', '[]'),
(68, '1001', 'De petit croissant', '65560390', '[]', '[]'),
(69, '1001', 'Le Commerçant', '14723574', '[]', '[]'),
(70, '1001', 'Cortainer', '50407380', '[]', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `phone_cases`
--

CREATE TABLE `phone_cases` (
  `id` int(11) NOT NULL,
  `victim` varchar(255) NOT NULL DEFAULT '0',
  `judge` varchar(255) NOT NULL DEFAULT '0',
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_contacts`
--

CREATE TABLE `phone_contacts` (
  `id` int(11) NOT NULL,
  `citizenid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_debt`
--

CREATE TABLE `phone_debt` (
  `id` int(10) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `sender` varchar(50) DEFAULT NULL,
  `sendercitizenid` varchar(50) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `phone_debt`
--

INSERT INTO `phone_debt` (`id`, `citizenid`, `amount`, `sender`, `sendercitizenid`, `reason`) VALUES
(50, '6506', 1, 'William Groover', '6506', '1');

-- --------------------------------------------------------

--
-- Table structure for table `phone_documents`
--

CREATE TABLE `phone_documents` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` int(11) DEFAULT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `signatures` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '[]',
  `sharees` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '[]',
  `finalized` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_events`
--

CREATE TABLE `phone_events` (
  `id` int(11) NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Dumping data for table `phone_events`
--

INSERT INTO `phone_events` (`id`, `time`, `date`) VALUES
(1, '20:30', '21/12/2021');

-- --------------------------------------------------------

--
-- Table structure for table `phone_gallery`
--

CREATE TABLE `phone_gallery` (
  `citizenid` varchar(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_invoices`
--

CREATE TABLE `phone_invoices` (
  `id` int(10) NOT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `society` tinytext DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `sendercitizenid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_mails`
--

CREATE TABLE `phone_mails` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `time` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `messages` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_messagesinner`
--

CREATE TABLE `phone_messagesinner` (
  `id` int(11) NOT NULL,
  `number` bigint(20) NOT NULL DEFAULT 0,
  `gonderenumber` bigint(20) NOT NULL DEFAULT 0,
  `mesaj` varchar(255) DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_newsarticles`
--

CREATE TABLE `phone_newsarticles` (
  `id` int(11) NOT NULL,
  `network` longtext NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `author` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_tierup`
--

CREATE TABLE `phone_tierup` (
  `id` int(11) NOT NULL,
  `members` longtext NOT NULL DEFAULT '[]',
  `experience` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_tweets`
--

CREATE TABLE `phone_tweets` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  `firstName` varchar(25) DEFAULT NULL,
  `lastName` varchar(25) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `url` text DEFAULT NULL,
  `picture` varchar(512) DEFAULT './img/default.png',
  `tweetId` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phone_tweets`
--

INSERT INTO `phone_tweets` (`id`, `citizenid`, `firstName`, `lastName`, `message`, `date`, `url`, `picture`, `tweetId`) VALUES
(1, '4163', 'Kiril', 'Slavchev', 'шъефа нъ балъс на груове', '2024-08-18 17:56:09', '', 'default', 'TWEET-64576346'),
(2, '9693', 'Robin', 'Banks', 'asd', '2024-08-23 11:08:37', '', 'default', 'TWEET-26911960'),
(3, '9693', 'Robin', 'Banks', '123', '2024-08-23 11:10:35', '', 'default', 'TWEET-43655697'),
(4, '9693', 'Robin', 'Banks', '123', '2024-08-23 11:11:22', '', 'default', 'TWEET-75564164'),
(5, '9693', 'Robin', 'Banks', '@Robin_Banks ', '2024-08-23 11:14:23', '', 'default', 'TWEET-33510592'),
(6, '9693', 'Robin', 'Banks', 'с', '2024-08-23 11:14:28', '', 'default', 'TWEET-15410863'),
(7, '9693', 'Robin', 'Banks', 's', '2024-08-23 11:23:53', '', 'default', 'TWEET-71446829'),
(8, '9693', 'Robin', 'Banks', 'asd', '2024-08-23 11:31:47', '', 'default', 'TWEET-70353940'),
(9, '9693', 'Robin', 'Banks', '@Robin_Banks asd', '2024-08-23 11:52:22', '', 'default', 'TWEET-55341895'),
(10, '9693', 'Robin', 'Banks', 'асдф', '2024-08-23 11:54:35', '', 'default', 'TWEET-56422986'),
(11, '8006', 'Ivan', 'Ivanov', 'mazna', '2024-08-24 20:59:18', '', 'default', 'TWEET-94273557'),
(12, '2705', 'Мазна', 'Пишка', 'dasdas', '2024-08-27 22:43:46', '', 'default', 'TWEET-75905741'),
(13, '2705', 'Мазна', 'Пишка', 'a', '2024-08-27 22:50:09', '', 'default', 'TWEET-29591055'),
(14, '2705', 'Мазна', 'Пишка', 'a', '2024-08-27 22:50:51', '', 'default', 'TWEET-37520442'),
(15, '2705', 'Мазна', 'Пишка', 'a', '2024-08-27 22:51:05', '', 'default', 'TWEET-70419433'),
(16, '2705', 'Мазна', 'Пишка', 'a', '2024-08-27 22:51:17', '', 'default', 'TWEET-37011944'),
(17, '2705', 'Мазна', 'Пишка', 'a', '2024-08-27 22:51:19', '', 'default', 'TWEET-27760029'),
(18, '2705', 'Мазна', 'Пишка', 'a', '2024-08-27 22:52:25', '', 'default', 'TWEET-55498826'),
(19, '2705', 'Мазна', 'Пишка', 'a', '2024-08-27 22:52:32', '', 'default', 'TWEET-21558092'),
(20, '2705', 'Мазна', 'Пишка', 'q', '2024-08-27 23:02:00', '', 'default', 'TWEET-55403550'),
(21, '2705', 'Мазна', 'Пишка', 'k', '2024-08-27 23:02:46', '', 'default', 'TWEET-28139877'),
(22, '2705', 'Мазна', 'Пишка', 'a', '2024-08-27 23:03:13', '', 'default', 'TWEET-52998265'),
(23, '6506', 'William', 'Groover', 'Мазна_Пишка ', '2024-08-27 23:04:13', '', 'default', 'TWEET-67123982'),
(24, '6506', 'William', 'Groover', 'William_Groover ', '2024-08-27 23:04:23', '', 'default', 'TWEET-36075688'),
(25, '6506', 'William', 'Groover', '@William_Groover ', '2024-08-27 23:04:38', '', 'default', 'TWEET-89934527'),
(26, '6506', 'William', 'Groover', '@William_Groover ', '2024-08-27 23:04:59', '', 'default', 'TWEET-13914565'),
(27, '2705', 'Мазна', 'Пишка', 'a', '2024-08-27 23:10:35', '', 'default', 'TWEET-55748178'),
(28, '6506', 'William', 'Groover', 'adsd', '2024-08-27 23:12:08', '', 'default', 'TWEET-92934035'),
(29, '6506', 'William', 'Groover', '@William_Groover ', '2024-08-27 23:12:10', '', 'default', 'TWEET-90125720'),
(30, '6506', 'William', 'Groover', 'sadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadad', '2024-08-27 23:12:20', '', 'default', 'TWEET-39069158'),
(31, '6506', 'William', 'Groover', 'asd', '2024-08-29 15:19:28', '', 'default', 'TWEET-51091910'),
(32, '0928', 'Martin', 'Milenov', 'Има ли полицаи', '2024-09-15 19:34:10', '', 'default', 'TWEET-74331666');

-- --------------------------------------------------------

--
-- Table structure for table `phone_wenmo`
--

CREATE TABLE `phone_wenmo` (
  `id` int(11) NOT NULL,
  `from_citizenid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `to_citizenid` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT curtime()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` text NOT NULL,
  `charinfo` text DEFAULT NULL,
  `job` text NOT NULL,
  `gang` text DEFAULT NULL,
  `position` text NOT NULL,
  `metadata` text NOT NULL,
  `inventory` longtext DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `paycheck` int(11) DEFAULT 0,
  `luckywheel_spins` varchar(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `citizenid`, `cid`, `license`, `name`, `money`, `charinfo`, `job`, `gang`, `position`, `metadata`, `inventory`, `last_updated`, `paycheck`, `luckywheel_spins`) VALUES
(5901, '0928', 1, 'license:ce30bc152f5786584eee98b127ef89c6dc76b6f0', 'filipteofilov29', '{\"bank\":245515,\"crypto\":0,\"cash\":26}', '{\"backstory\":\"placeholder backstory\",\"lastname\":\"Milenov\",\"birthdate\":\"undefined\",\"nationality\":\"USA\",\"cid\":\"1\",\"firstname\":\"Martin\",\"phone\":\"6941472\",\"gender\":0,\"account\":88144548}', '{\"payment\":150,\"label\":\"Община\",\"isboss\":true,\"name\":\"realestate\",\"type\":\"none\",\"grade\":{\"name\":\"Кмет\",\"level\":4},\"onduty\":true}', '{\"name\":\"none\",\"isboss\":false,\"label\":\"No Gang Affiliaton\",\"grade\":{\"name\":\"none\",\"level\":0}}', '{\"x\":-195.44175720214845,\"y\":-1141.9912109375,\"z\":22.5567626953125}', '{\"licences\":{\"driver\":true,\"weapon\":false,\"business\":false},\"tracker\":false,\"criminalrecord\":{\"hasRecord\":false},\"callsign\":\"NO CALLSIGN\",\"jailitems\":[],\"inlaststand\":false,\"hunger\":100,\"injail\":0,\"fitbit\":[],\"fingerprint\":\"mD661i97UjY3236\",\"status\":[],\"craftingrep\":0,\"walletid\":27076799,\"bloodtype\":\"O-\",\"phonedata\":{\"SerialNumber\":71748415,\"InstalledApps\":[]},\"jobrep\":{\"tow\":0,\"taxi\":0,\"trucker\":0,\"hotdog\":0},\"attachmentcraftingrep\":0,\"thirst\":100,\"dealerrep\":0,\"phone\":[],\"ishandcuffed\":false,\"armor\":0,\"inside\":{\"apartment\":[]},\"stress\":23,\"isdead\":false}', '[{\"amount\":1,\"name\":\"phone\",\"type\":\"item\",\"info\":[],\"slot\":1},{\"amount\":1,\"name\":\"weapon_pistol\",\"type\":\"weapon\",\"info\":{\"quality\":100,\"serie\":\"98OlN4Lw252mvJH\"},\"slot\":2},{\"amount\":10,\"name\":\"pistol_ammo\",\"type\":\"item\",\"info\":[],\"slot\":3},{\"amount\":1,\"name\":\"radio\",\"type\":\"item\",\"info\":[],\"slot\":4},{\"amount\":1,\"name\":\"megaphone\",\"type\":\"item\",\"info\":[],\"slot\":10}]', '2024-09-16 16:38:29', 0, '0'),
(5908, '3191', 1, 'license:ce5a95d8d8bcca13d185b0091b75e0bf6068858d', 'debeloto kuche', '{\"crypto\":0,\"bank\":924000,\"cash\":2030}', '{\"gender\":0,\"backstory\":\"placeholder backstory\",\"cid\":\"1\",\"account\":99827088,\"birthdate\":\"undefined\",\"nationality\":\"USA\",\"lastname\":\"Ivanov\",\"phone\":\"6925212\",\"firstname\":\"Vladislav\"}', '{\"type\":\"none\",\"onduty\":true,\"name\":\"unemployed\",\"label\":\"Безработен\",\"payment\":100,\"grade\":{\"name\":\"Безработен\",\"level\":0},\"isboss\":false}', '{\"isboss\":false,\"grade\":{\"name\":\"none\",\"level\":0},\"name\":\"none\",\"label\":\"No Gang Affiliaton\"}', '{\"x\":969.4813232421875,\"y\":33.74505615234375,\"z\":71.89306640625}', '{\"criminalrecord\":{\"hasRecord\":false},\"ishandcuffed\":false,\"hunger\":95,\"craftingrep\":0,\"phone\":[],\"attachmentcraftingrep\":0,\"fitbit\":[],\"jobrep\":{\"trucker\":0,\"taxi\":0,\"hotdog\":0,\"tow\":0},\"fingerprint\":\"NB202i05ryO7322\",\"isdead\":false,\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":42757227},\"injail\":0,\"walletid\":33027924,\"bloodtype\":\"O-\",\"tracker\":false,\"callsign\":\"NO CALLSIGN\",\"inlaststand\":false,\"inside\":{\"apartment\":[]},\"thirst\":95,\"armor\":0,\"stress\":0,\"licences\":{\"weapon\":false,\"driver\":true,\"business\":false},\"jailitems\":[],\"dealerrep\":0,\"status\":[]}', '[{\"name\":\"weapon_pistol\",\"info\":{\"serie\":\"47YJY9Ke060xdiM\",\"ammo\":242,\"quality\":88.75000000000172},\"amount\":1,\"slot\":1,\"type\":\"weapon\"},{\"name\":\"pistol_ammo\",\"info\":[],\"amount\":2,\"slot\":2,\"type\":\"item\"},{\"name\":\"bread\",\"info\":[],\"amount\":1,\"slot\":3,\"type\":\"item\"},{\"name\":\"bread\",\"info\":[],\"amount\":1,\"slot\":4,\"type\":\"item\"},{\"name\":\"water\",\"info\":[],\"amount\":10,\"slot\":5,\"type\":\"item\"},{\"name\":\"meth\",\"info\":[],\"amount\":3,\"slot\":7,\"type\":\"item\"},{\"name\":\"bluemeth\",\"info\":[],\"amount\":1,\"slot\":8,\"type\":\"item\"},{\"name\":\"bread\",\"info\":[],\"amount\":1,\"slot\":12,\"type\":\"item\"},{\"name\":\"bread\",\"info\":[],\"amount\":1,\"slot\":13,\"type\":\"item\"},{\"name\":\"bread\",\"info\":[],\"amount\":1,\"slot\":14,\"type\":\"item\"},{\"name\":\"bread\",\"info\":[],\"amount\":1,\"slot\":15,\"type\":\"item\"},{\"name\":\"bread\",\"info\":[],\"amount\":1,\"slot\":17,\"type\":\"item\"},{\"name\":\"phone\",\"info\":[],\"amount\":1,\"slot\":36,\"type\":\"item\"},{\"name\":\"driver_license\",\"info\":{\"firstname\":\"Vladislav\",\"birthdate\":\"undefined\",\"lastname\":\"Ivanov\",\"type\":\"Class C Driver License\"},\"amount\":1,\"slot\":37,\"type\":\"item\"},{\"name\":\"id_card\",\"info\":{\"firstname\":\"Vladislav\",\"lastname\":\"Ivanov\",\"birthdate\":\"undefined\",\"nationality\":\"USA\",\"gender\":0,\"citizenid\":\"3191\"},\"amount\":1,\"slot\":31,\"type\":\"item\"},{\"name\":\"bread\",\"info\":[],\"amount\":1,\"slot\":18,\"type\":\"item\"},{\"name\":\"armor\",\"info\":[],\"amount\":3,\"slot\":40,\"type\":\"item\"},{\"name\":\"bread\",\"info\":[],\"amount\":1,\"slot\":20,\"type\":\"item\"},{\"name\":\"bread\",\"info\":[],\"amount\":1,\"slot\":19,\"type\":\"item\"}]', '2024-09-15 16:58:20', 0, '0'),
(6080, '3350', 1, 'license:c41bda43b4546734ab94157c41648db01fc97de0', 'Nikolovv', '{\"crypto\":0,\"bank\":500,\"cash\":500}', '{\"gender\":0,\"backstory\":\"placeholder backstory\",\"cid\":\"1\",\"account\":71238505,\"phone\":\"6921390\",\"nationality\":\"USA\",\"firstname\":\"Николай\",\"lastname\":\"Константинов\",\"birthdate\":\"undefined\"}', '{\"type\":\"none\",\"onduty\":true,\"name\":\"unemployed\",\"label\":\"Безработен\",\"isboss\":false,\"grade\":{\"name\":\"Безработен\",\"level\":0},\"payment\":10}', '{\"grade\":{\"name\":\"none\",\"level\":0},\"isboss\":false,\"name\":\"none\",\"label\":\"No Gang Affiliaton\"}', '{\"x\":-894.7252807617188,\"y\":-2759.353759765625,\"z\":16.4066162109375}', '{\"walletid\":20950868,\"ishandcuffed\":false,\"hunger\":100,\"craftingrep\":0,\"phone\":[],\"criminalrecord\":{\"hasRecord\":false},\"inside\":{\"apartment\":[]},\"jobrep\":{\"trucker\":0,\"taxi\":0,\"hotdog\":0,\"tow\":0},\"armor\":0,\"isdead\":false,\"phonedata\":{\"SerialNumber\":44046520,\"InstalledApps\":[]},\"fingerprint\":\"LM003y34Xrh5688\",\"fitbit\":[],\"attachmentcraftingrep\":0,\"inlaststand\":false,\"callsign\":\"NO CALLSIGN\",\"stress\":0,\"injail\":0,\"tracker\":false,\"bloodtype\":\"B+\",\"jailitems\":[],\"licences\":{\"weapon\":false,\"driver\":true,\"business\":false},\"thirst\":100,\"dealerrep\":0,\"status\":[]}', '[{\"name\":\"driver_license\",\"info\":{\"lastname\":\"Константинов\",\"birthdate\":\"undefined\",\"firstname\":\"Николай\",\"type\":\"Class C Driver License\"},\"amount\":1,\"slot\":1,\"type\":\"item\"},{\"name\":\"id_card\",\"info\":{\"firstname\":\"Николай\",\"lastname\":\"Константинов\",\"birthdate\":\"undefined\",\"nationality\":\"USA\",\"gender\":0,\"citizenid\":\"3350\"},\"amount\":1,\"slot\":2,\"type\":\"item\"},{\"name\":\"phone\",\"info\":[],\"amount\":1,\"slot\":3,\"type\":\"item\"}]', '2024-09-15 16:54:13', 0, '0'),
(6032, '3370', 1, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', 'WhitePr0', '{\"cash\":500,\"bank\":2800,\"crypto\":0}', '{\"phone\":\"6923468\",\"cid\":\"1\",\"nationality\":\"USA\",\"firstname\":\"William\",\"gender\":0,\"lastname\":\"Groover\",\"account\":98739485,\"backstory\":\"placeholder backstory\",\"birthdate\":\"undefined\"}', '{\"payment\":10,\"type\":\"none\",\"label\":\"Безработен\",\"name\":\"unemployed\",\"isboss\":false,\"grade\":{\"name\":\"Безработен\",\"level\":0},\"onduty\":true}', '{\"label\":\"No Gang Affiliaton\",\"isboss\":false,\"grade\":{\"name\":\"none\",\"level\":0},\"name\":\"none\"}', '{\"x\":602.4923095703125,\"y\":363.5604248046875,\"z\":118.4490966796875}', '{\"callsign\":\"NO CALLSIGN\",\"stress\":0,\"criminalrecord\":{\"hasRecord\":false},\"thirst\":100,\"fitbit\":[],\"attachmentcraftingrep\":0,\"ishandcuffed\":false,\"jailitems\":[],\"hunger\":100,\"phonedata\":{\"SerialNumber\":84194054,\"InstalledApps\":[]},\"craftingrep\":0,\"armor\":0,\"licences\":{\"driver\":true,\"weapon\":false,\"business\":false},\"phone\":[],\"status\":[],\"inlaststand\":false,\"bloodtype\":\"AB+\",\"fingerprint\":\"at786g27bHL9307\",\"tracker\":false,\"walletid\":45753954,\"injail\":0,\"dealerrep\":0,\"isdead\":false,\"inside\":{\"apartment\":[]},\"jobrep\":{\"taxi\":0,\"trucker\":0,\"tow\":0,\"hotdog\":0}}', '[{\"name\":\"weapon_scarh\",\"info\":{\"serie\":\"12FsR4jd263ysQR\",\"quality\":100},\"slot\":1,\"amount\":1,\"type\":\"weapon\"}]', '2024-09-15 13:06:38', 0, '0'),
(5918, '4714', 1, 'license:b643acec3ad84a90b4dfbc6f42e0ef48316b866e', '💙👹  𝓐𝐤-❹➆  ♡', '{\"cash\":500,\"crypto\":0,\"bank\":1900}', '{\"gender\":0,\"lastname\":\"Петков\",\"backstory\":\"placeholder backstory\",\"firstname\":\"Илиян\",\"nationality\":\"USA\",\"phone\":\"6949925\",\"cid\":\"1\",\"birthdate\":\"undefined\",\"account\":52870829}', '{\"payment\":1200,\"onduty\":true,\"grade\":{\"name\":\"Шеф\",\"level\":11},\"name\":\"police\",\"label\":\"LSPD\",\"isboss\":true,\"type\":\"leo\"}', '{\"name\":\"none\",\"label\":\"No Gang Affiliaton\",\"isboss\":false,\"grade\":{\"name\":\"none\",\"level\":0}}', '{\"x\":579.046142578125,\"y\":-387.3758239746094,\"z\":24.781005859375}', '{\"walletid\":79130931,\"jailitems\":[],\"hunger\":100,\"jobrep\":{\"taxi\":0,\"tow\":0,\"hotdog\":0,\"trucker\":0},\"thirst\":100,\"isdead\":false,\"injail\":0,\"ishandcuffed\":false,\"armor\":0,\"fitbit\":[],\"criminalrecord\":{\"hasRecord\":false},\"bloodtype\":\"AB-\",\"status\":[],\"phonedata\":{\"SerialNumber\":50216576,\"InstalledApps\":[]},\"licences\":{\"weapon\":false,\"driver\":true,\"business\":false},\"tracker\":false,\"stress\":0,\"craftingrep\":0,\"phone\":[],\"dealerrep\":0,\"inlaststand\":false,\"inside\":{\"apartment\":[]},\"callsign\":\"NO CALLSIGN\",\"fingerprint\":\"Vm202Q72zTN9255\",\"attachmentcraftingrep\":0}', '[{\"slot\":1,\"name\":\"phone\",\"info\":[],\"amount\":1,\"type\":\"item\"},{\"slot\":2,\"name\":\"driver_license\",\"info\":{\"birthdate\":\"undefined\",\"lastname\":\"Петков\",\"firstname\":\"Илиян\",\"type\":\"Class C Driver License\"},\"amount\":1,\"type\":\"item\"},{\"slot\":3,\"name\":\"id_card\",\"info\":{\"birthdate\":\"undefined\",\"lastname\":\"Петков\",\"firstname\":\"Илиян\",\"gender\":0,\"nationality\":\"USA\",\"citizenid\":\"4714\"},\"amount\":1,\"type\":\"item\"}]', '2024-09-10 13:30:12', 0, '0'),
(6076, '6389', 1, 'license:33255f03ab4dedd10d4eb2a4ffe4812e7ce2eba6', 'Fox69', '{\"crypto\":0,\"bank\":500,\"cash\":500}', '{\"gender\":1,\"backstory\":\"placeholder backstory\",\"cid\":\"1\",\"account\":28594224,\"phone\":\"6949561\",\"nationality\":\"USA\",\"lastname\":\"Ivanowa\",\"firstname\":\"Simona\",\"birthdate\":\"undefined\"}', '{\"type\":\"none\",\"onduty\":true,\"name\":\"unemployed\",\"label\":\"Безработен\",\"isboss\":false,\"grade\":{\"name\":\"Безработен\",\"level\":0},\"payment\":10}', '{\"grade\":{\"name\":\"none\",\"level\":0},\"isboss\":false,\"name\":\"none\",\"label\":\"No Gang Affiliaton\"}', '{\"x\":-790.7868041992188,\"y\":334.5758361816406,\"z\":210.81982421875}', '{\"walletid\":76380346,\"ishandcuffed\":false,\"hunger\":100,\"craftingrep\":0,\"phone\":[],\"criminalrecord\":{\"hasRecord\":false},\"inside\":{\"apartment\":[]},\"jobrep\":{\"trucker\":0,\"taxi\":0,\"hotdog\":0,\"tow\":0},\"armor\":0,\"isdead\":false,\"phonedata\":{\"SerialNumber\":92815417,\"InstalledApps\":[]},\"fingerprint\":\"QD278k24wCp8420\",\"fitbit\":[],\"attachmentcraftingrep\":0,\"inlaststand\":false,\"callsign\":\"NO CALLSIGN\",\"stress\":0,\"injail\":0,\"tracker\":false,\"bloodtype\":\"B-\",\"jailitems\":[],\"licences\":{\"weapon\":false,\"driver\":true,\"business\":false},\"thirst\":100,\"dealerrep\":0,\"status\":[]}', '[{\"name\":\"driver_license\",\"info\":{\"lastname\":\"Ivanowa\",\"birthdate\":\"undefined\",\"firstname\":\"Simona\",\"type\":\"Class C Driver License\"},\"amount\":1,\"slot\":1,\"type\":\"item\"},{\"name\":\"id_card\",\"info\":{\"firstname\":\"Simona\",\"lastname\":\"Ivanowa\",\"birthdate\":\"undefined\",\"nationality\":\"USA\",\"gender\":1,\"citizenid\":\"6389\"},\"amount\":1,\"slot\":2,\"type\":\"item\"},{\"name\":\"phone\",\"info\":[],\"amount\":1,\"slot\":3,\"type\":\"item\"}]', '2024-09-15 16:52:50', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `playerskins`
--

CREATE TABLE `playerskins` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playerskins`
--

INSERT INTO `playerskins` (`id`, `citizenid`, `model`, `skin`, `active`) VALUES
(8, '1814', '1885233650', '{\"mask\":{\"defaultTexture\":0,\"item\":264,\"defaultItem\":0,\"texture\":0},\"blush\":{\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1,\"texture\":1},\"pants\":{\"defaultTexture\":0,\"item\":245,\"defaultItem\":0,\"texture\":14},\"bracelet\":{\"defaultTexture\":0,\"item\":5,\"defaultItem\":-1,\"texture\":0},\"moles\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"glass\":{\"defaultTexture\":0,\"item\":15,\"defaultItem\":0,\"texture\":0},\"shoes\":{\"defaultTexture\":0,\"item\":25,\"defaultItem\":1,\"texture\":0},\"makeup\":{\"defaultTexture\":1,\"item\":22,\"defaultItem\":-1,\"texture\":1},\"bag\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"chimp_bone_lenght\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"hat\":{\"defaultTexture\":0,\"item\":230,\"defaultItem\":-1,\"texture\":0},\"hair\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"cheek_2\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"nose_0\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"nose_4\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"eyebrows\":{\"defaultTexture\":1,\"item\":17,\"defaultItem\":-1,\"texture\":1},\"beard\":{\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1,\"texture\":1},\"torso2\":{\"defaultTexture\":0,\"item\":633,\"defaultItem\":0,\"texture\":3},\"eyebrown_forward\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"vest\":{\"defaultTexture\":0,\"item\":131,\"defaultItem\":0,\"texture\":0},\"eye_opening\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"nose_5\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"t-shirt\":{\"defaultTexture\":0,\"item\":15,\"defaultItem\":1,\"texture\":0},\"jaw_bone_back_lenght\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"chimp_bone_width\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"chimp_bone_lowering\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"eyebrown_high\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"jaw_bone_width\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"lips_thickness\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"cheek_3\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"ageing\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"cheek_1\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"arms\":{\"defaultTexture\":0,\"item\":74,\"defaultItem\":0,\"texture\":0},\"neck_thikness\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"decals\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"nose_3\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"face\":{\"defaultTexture\":0,\"item\":44,\"defaultItem\":0,\"texture\":2},\"nose_2\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"nose_1\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"eye_color\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"accessory\":{\"defaultTexture\":0,\"item\":112,\"defaultItem\":0,\"texture\":0},\"watch\":{\"defaultTexture\":0,\"item\":27,\"defaultItem\":-1,\"texture\":0},\"chimp_hole\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"lipstick\":{\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1,\"texture\":1},\"ear\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0}}', 1),
(32, '6506', '-2063996617', '{\"nose_3\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"eye_color\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"accessory\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"vest\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"hat\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"beard\":{\"defaultItem\":-1,\"defaultTexture\":1,\"texture\":1,\"item\":-1},\"blush\":{\"defaultItem\":-1,\"defaultTexture\":1,\"texture\":1,\"item\":-1},\"ageing\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"cheek_1\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"nose_0\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"mask\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"cheek_2\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"neck_thikness\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"ear\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"chimp_hole\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"lipstick\":{\"defaultItem\":-1,\"defaultTexture\":1,\"texture\":1,\"item\":-1},\"chimp_bone_lenght\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"chimp_bone_width\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"chimp_bone_lowering\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"bag\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"nose_1\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"lips_thickness\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"t-shirt\":{\"defaultItem\":1,\"defaultTexture\":0,\"texture\":0,\"item\":1},\"eyebrown_high\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"nose_5\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"jaw_bone_width\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"eyebrown_forward\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"hair\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"eye_opening\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"torso2\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"glass\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"nose_4\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"shoes\":{\"defaultItem\":1,\"defaultTexture\":0,\"texture\":0,\"item\":1},\"nose_2\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"jaw_bone_back_lenght\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"pants\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"face\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"cheek_3\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"decals\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"bracelet\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"watch\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"moles\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"arms\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"makeup\":{\"defaultItem\":-1,\"defaultTexture\":1,\"texture\":1,\"item\":-1},\"eyebrows\":{\"defaultItem\":-1,\"defaultTexture\":1,\"texture\":1,\"item\":-1}}', 1),
(49, '3087', '1885233650', '{\"accessory\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"jaw_bone_width\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"nose_5\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"chimp_bone_lowering\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"chimp_hole\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"eye_opening\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"eyebrows\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"torso2\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":527},\"ear\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"t-shirt\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":1,\"item\":15},\"chimp_bone_lenght\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"eye_color\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"eyebrown_forward\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"neck_thikness\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"moles\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"watch\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":10},\"face\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"eyebrown_high\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"arms\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":41},\"chimp_bone_width\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"blush\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"shoes\":{\"defaultTexture\":0,\"texture\":2,\"defaultItem\":1,\"item\":8},\"nose_1\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"lips_thickness\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"nose_3\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"ageing\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"hair\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":39},\"cheek_1\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"vest\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"bag\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"cheek_2\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"cheek_3\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"mask\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":54},\"nose_2\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"jaw_bone_back_lenght\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"decals\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"lipstick\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"hat\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"nose_0\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"glass\":{\"defaultTexture\":0,\"texture\":1,\"defaultItem\":0,\"item\":5},\"bracelet\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":11},\"makeup\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"beard\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"nose_4\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"pants\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":192}}', 1),
(55, '4955', '1885233650', '{\"lipstick\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"cheek_3\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"lips_thickness\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"decals\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"eyebrown_high\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"accessory\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"hat\":{\"defaultItem\":-1,\"item\":36,\"texture\":0,\"defaultTexture\":0},\"chimp_bone_lowering\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"eye_opening\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"bracelet\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0},\"eyebrows\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"vest\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"nose_5\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"jaw_bone_width\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"mask\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"moles\":{\"defaultItem\":-1,\"item\":17,\"texture\":0,\"defaultTexture\":0},\"ear\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0},\"eyebrown_forward\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"nose_3\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"chimp_hole\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"arms\":{\"defaultItem\":0,\"item\":1,\"texture\":0,\"defaultTexture\":0},\"glass\":{\"defaultItem\":0,\"item\":35,\"texture\":0,\"defaultTexture\":0},\"chimp_bone_lenght\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"ageing\":{\"defaultItem\":-1,\"item\":11,\"texture\":0,\"defaultTexture\":0},\"jaw_bone_back_lenght\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"torso2\":{\"defaultItem\":0,\"item\":379,\"texture\":4,\"defaultTexture\":0},\"chimp_bone_width\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"nose_4\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"cheek_2\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"shoes\":{\"defaultItem\":1,\"item\":20,\"texture\":0,\"defaultTexture\":0},\"watch\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0},\"bag\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"pants\":{\"defaultItem\":0,\"item\":141,\"texture\":0,\"defaultTexture\":0},\"neck_thikness\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"makeup\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"eye_color\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0},\"hair\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"nose_0\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"blush\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"nose_1\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"face\":{\"defaultItem\":0,\"item\":0,\"texture\":5,\"defaultTexture\":0},\"cheek_1\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"beard\":{\"defaultItem\":-1,\"item\":2,\"texture\":1,\"defaultTexture\":1},\"t-shirt\":{\"defaultItem\":1,\"item\":15,\"texture\":0,\"defaultTexture\":0},\"nose_2\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0}}', 1),
(58, '2833', '1885233650', '{\"eyebrows\":{\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1,\"texture\":1},\"eyebrown_forward\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"watch\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"beard\":{\"defaultTexture\":1,\"item\":2,\"defaultItem\":-1,\"texture\":1},\"nose_1\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"ear\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"mask\":{\"defaultTexture\":0,\"item\":169,\"defaultItem\":0,\"texture\":3},\"nose_3\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"nose_0\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"arms\":{\"defaultTexture\":0,\"item\":17,\"defaultItem\":0,\"texture\":0},\"chimp_bone_lenght\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"chimp_bone_width\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"nose_4\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"cheek_3\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"accessory\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"decals\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"makeup\":{\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1,\"texture\":1},\"bag\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"lips_thickness\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"cheek_1\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"cheek_2\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"nose_5\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"vest\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"pants\":{\"defaultTexture\":0,\"item\":33,\"defaultItem\":0,\"texture\":0},\"lipstick\":{\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1,\"texture\":1},\"nose_2\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"face\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"neck_thikness\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"chimp_bone_lowering\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"jaw_bone_back_lenght\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"glass\":{\"defaultTexture\":0,\"item\":8,\"defaultItem\":0,\"texture\":1},\"eyebrown_high\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"ageing\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"moles\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"jaw_bone_width\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"torso2\":{\"defaultTexture\":0,\"item\":654,\"defaultItem\":0,\"texture\":0},\"bracelet\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"eye_opening\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"shoes\":{\"defaultTexture\":0,\"item\":24,\"defaultItem\":1,\"texture\":0},\"blush\":{\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1,\"texture\":1},\"eye_color\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"hat\":{\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1,\"texture\":0},\"t-shirt\":{\"defaultTexture\":0,\"item\":15,\"defaultItem\":1,\"texture\":0},\"chimp_hole\":{\"defaultTexture\":0,\"item\":0,\"defaultItem\":0,\"texture\":0},\"hair\":{\"defaultTexture\":0,\"item\":2,\"defaultItem\":0,\"texture\":0}}', 1),
(65, '6253', '1885233650', '{\"chimp_bone_width\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"nose_5\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"hair\":{\"item\":39,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"lipstick\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"nose_1\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"nose_2\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"bag\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"lips_thickness\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"chimp_bone_lenght\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"mask\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"arms\":{\"item\":194,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"eyebrown_high\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"neck_thikness\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"jaw_bone_back_lenght\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"bracelet\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"eyebrown_forward\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"blush\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"glass\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"chimp_hole\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"torso2\":{\"item\":659,\"defaultTexture\":0,\"texture\":3,\"defaultItem\":0},\"jaw_bone_width\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"eye_color\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"cheek_3\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"makeup\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"chimp_bone_lowering\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"accessory\":{\"item\":210,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"moles\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"eyebrows\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"ear\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"face\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"beard\":{\"item\":2,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"pants\":{\"item\":245,\"defaultTexture\":0,\"texture\":15,\"defaultItem\":0},\"eye_opening\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"nose_0\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"ageing\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"decals\":{\"item\":161,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"nose_4\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"hat\":{\"item\":26,\"defaultTexture\":0,\"texture\":4,\"defaultItem\":-1},\"cheek_1\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"shoes\":{\"item\":24,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":1},\"vest\":{\"item\":111,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"cheek_2\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"t-shirt\":{\"item\":15,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":1},\"watch\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"nose_3\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0}}', 1),
(66, '0748', '1885233650', '{\"face\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"cheek_3\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"chimp_bone_lowering\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"accessory\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"ear\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"lipstick\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"eye_color\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"cheek_2\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"bracelet\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"decals\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"jaw_bone_width\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"blush\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"neck_thikness\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"glass\":{\"texture\":0,\"item\":5,\"defaultTexture\":0,\"defaultItem\":0},\"nose_4\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"hat\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"arms\":{\"texture\":0,\"item\":17,\"defaultTexture\":0,\"defaultItem\":0},\"mask\":{\"texture\":0,\"defaultTexture\":0,\"defaultItem\":0},\"nose_2\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"chimp_bone_lenght\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"shoes\":{\"texture\":0,\"item\":25,\"defaultTexture\":0,\"defaultItem\":1},\"eye_opening\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"chimp_hole\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"vest\":{\"texture\":0,\"item\":69,\"defaultTexture\":0,\"defaultItem\":0},\"torso2\":{\"texture\":0,\"item\":646,\"defaultTexture\":0,\"defaultItem\":0},\"beard\":{\"texture\":1,\"item\":2,\"defaultTexture\":1,\"defaultItem\":-1},\"watch\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"ageing\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"jaw_bone_back_lenght\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"t-shirt\":{\"texture\":0,\"item\":15,\"defaultTexture\":0,\"defaultItem\":1},\"nose_0\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"cheek_1\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"eyebrown_high\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"moles\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"nose_5\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"chimp_bone_width\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"lips_thickness\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"eyebrows\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"pants\":{\"texture\":0,\"item\":33,\"defaultTexture\":0,\"defaultItem\":0},\"hair\":{\"texture\":0,\"item\":2,\"defaultTexture\":0,\"defaultItem\":0},\"makeup\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"nose_1\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"bag\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"nose_3\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"eyebrown_forward\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0}}', 1),
(72, '9625', '797459875', '{\"blush\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"glass\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_1\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eyebrows\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"bag\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"beard\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"chimp_bone_width\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"cheek_2\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"bracelet\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"pants\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"hair\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_4\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_0\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"jaw_bone_width\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"shoes\":{\"texture\":0,\"item\":1,\"defaultItem\":1,\"defaultTexture\":0},\"makeup\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"ear\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"ageing\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"arms\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"decals\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"watch\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"chimp_bone_lowering\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"lipstick\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"accessory\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"chimp_hole\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"neck_thikness\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eye_opening\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"face\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"jaw_bone_back_lenght\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eyebrown_forward\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"torso2\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eyebrown_high\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"chimp_bone_lenght\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"lips_thickness\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eye_color\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"nose_3\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"cheek_1\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_5\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"cheek_3\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_2\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"moles\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"hat\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"mask\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"vest\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"t-shirt\":{\"texture\":0,\"item\":1,\"defaultItem\":1,\"defaultTexture\":0}}', 1),
(75, '2309', '1885233650', '{\"nose_0\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"cheek_2\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"chimp_bone_lenght\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"neck_thikness\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"eye_color\":{\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0},\"glass\":{\"item\":5,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":1},\"ageing\":{\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0},\"jaw_bone_back_lenght\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"jaw_bone_width\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"beard\":{\"item\":7,\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1},\"nose_1\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"pants\":{\"item\":24,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"blush\":{\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1},\"t-shirt\":{\"item\":34,\"defaultTexture\":0,\"defaultItem\":1,\"texture\":0},\"face\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"accessory\":{\"item\":27,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":2},\"lips_thickness\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"torso2\":{\"item\":294,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"eyebrows\":{\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1},\"nose_4\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"bracelet\":{\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0},\"chimp_bone_width\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"vest\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"watch\":{\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0},\"cheek_3\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"hair\":{\"item\":15,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"eyebrown_high\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"nose_5\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"ear\":{\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0},\"moles\":{\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0},\"hat\":{\"item\":61,\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0},\"mask\":{\"item\":169,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":13},\"bag\":{\"item\":81,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"arms\":{\"item\":172,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"nose_2\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"chimp_hole\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"shoes\":{\"item\":10,\"defaultTexture\":0,\"defaultItem\":1,\"texture\":0},\"makeup\":{\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1},\"decals\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"chimp_bone_lowering\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"cheek_1\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"lipstick\":{\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1},\"nose_3\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"eye_opening\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0},\"eyebrown_forward\":{\"item\":0,\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0}}', 1),
(76, '9457', '-1868718465', '{\"hair\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"decals\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"ageing\":{\"defaultTexture\":0,\"item\":-1,\"texture\":0,\"defaultItem\":-1},\"t-shirt\":{\"defaultTexture\":0,\"item\":1,\"texture\":0,\"defaultItem\":1},\"jaw_bone_width\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"arms\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"pants\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"vest\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"lipstick\":{\"defaultTexture\":1,\"item\":-1,\"texture\":1,\"defaultItem\":-1},\"moles\":{\"defaultTexture\":0,\"item\":-1,\"texture\":0,\"defaultItem\":-1},\"eye_color\":{\"defaultTexture\":0,\"item\":-1,\"texture\":0,\"defaultItem\":-1},\"accessory\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"watch\":{\"defaultTexture\":0,\"item\":-1,\"texture\":0,\"defaultItem\":-1},\"mask\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"face\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"eyebrown_forward\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"nose_3\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"hat\":{\"defaultTexture\":0,\"item\":-1,\"texture\":0,\"defaultItem\":-1},\"cheek_1\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"eyebrows\":{\"defaultTexture\":1,\"item\":-1,\"texture\":1,\"defaultItem\":-1},\"nose_0\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"beard\":{\"defaultTexture\":1,\"item\":-1,\"texture\":1,\"defaultItem\":-1},\"cheek_3\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"bracelet\":{\"defaultTexture\":0,\"item\":-1,\"texture\":0,\"defaultItem\":-1},\"chimp_bone_width\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"chimp_bone_lowering\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"bag\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"chimp_bone_lenght\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"jaw_bone_back_lenght\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"eyebrown_high\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"chimp_hole\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"eye_opening\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"blush\":{\"defaultTexture\":1,\"item\":-1,\"texture\":1,\"defaultItem\":-1},\"cheek_2\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"makeup\":{\"defaultTexture\":1,\"item\":-1,\"texture\":1,\"defaultItem\":-1},\"nose_5\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"neck_thikness\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"nose_2\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"torso2\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"nose_1\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"nose_4\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"lips_thickness\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"ear\":{\"defaultTexture\":0,\"item\":-1,\"texture\":0,\"defaultItem\":-1},\"glass\":{\"defaultTexture\":0,\"item\":0,\"texture\":0,\"defaultItem\":0},\"shoes\":{\"defaultTexture\":0,\"item\":1,\"texture\":0,\"defaultItem\":1}}', 1),
(79, '3017', '1885233650', '{\"ageing\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"decals\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"jaw_bone_width\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"blush\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"nose_5\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"lipstick\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"shoes\":{\"texture\":0,\"item\":1,\"defaultTexture\":0,\"defaultItem\":1},\"makeup\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"hair\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"eye_opening\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"bag\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"lips_thickness\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"chimp_hole\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"accessory\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"glass\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"beard\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"nose_0\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"face\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"neck_thikness\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"eyebrows\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"chimp_bone_width\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"chimp_bone_lenght\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"chimp_bone_lowering\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"eyebrown_high\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"nose_4\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"arms\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"eyebrown_forward\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"nose_1\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"moles\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"vest\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"cheek_3\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"cheek_1\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"nose_2\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"bracelet\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"mask\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"watch\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"pants\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"ear\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"jaw_bone_back_lenght\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"nose_3\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"eye_color\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"cheek_2\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"t-shirt\":{\"texture\":0,\"item\":1,\"defaultTexture\":0,\"defaultItem\":1},\"hat\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"torso2\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0}}', 1),
(80, '1771', '1885233650', '{\"ageing\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"jaw_bone_back_lenght\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"shoes\":{\"texture\":0,\"defaultItem\":1,\"item\":1,\"defaultTexture\":0},\"neck_thikness\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"cheek_3\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"hat\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"nose_1\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"bracelet\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"decals\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"pants\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"chimp_bone_lenght\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"moles\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"nose_4\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"nose_0\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"beard\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"chimp_bone_lowering\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"t-shirt\":{\"texture\":0,\"defaultItem\":1,\"item\":1,\"defaultTexture\":0},\"eye_color\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"makeup\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"nose_3\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"chimp_hole\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"mask\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"eyebrown_forward\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"ear\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"chimp_bone_width\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"nose_5\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"eyebrown_high\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"jaw_bone_width\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"lips_thickness\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"cheek_1\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"lipstick\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"glass\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"blush\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"cheek_2\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"arms\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"bag\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"eye_opening\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"nose_2\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"eyebrows\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"accessory\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"torso2\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"hair\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"face\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"watch\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"vest\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0}}', 1),
(82, '5554', '1885233650', '{\"nose_0\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"vest\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"shoes\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":1,\"item\":1},\"cheek_2\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"eye_opening\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"nose_2\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"eyebrown_high\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"decals\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"eyebrows\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"pants\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"hat\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"nose_4\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"mask\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"chimp_hole\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"chimp_bone_lowering\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"glass\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"lipstick\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"blush\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"hair\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"ear\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"jaw_bone_width\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"lips_thickness\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"face\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"nose_3\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"ageing\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"arms\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"watch\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"nose_1\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"torso2\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"chimp_bone_lenght\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"accessory\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"makeup\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"cheek_3\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"jaw_bone_back_lenght\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"chimp_bone_width\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"bag\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"cheek_1\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"bracelet\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"beard\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"t-shirt\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":1,\"item\":1},\"eyebrown_forward\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"moles\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"eye_color\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"nose_5\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"neck_thikness\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0}}', 1);
INSERT INTO `playerskins` (`id`, `citizenid`, `model`, `skin`, `active`) VALUES
(88, '3191', '1885233650', '{\"lipstick\":{\"defaultItem\":-1,\"item\":-3,\"defaultTexture\":1,\"texture\":1},\"watch\":{\"defaultItem\":-1,\"item\":36,\"defaultTexture\":0,\"texture\":0},\"hair\":{\"defaultItem\":0,\"item\":15,\"defaultTexture\":0,\"texture\":0},\"accessory\":{\"defaultItem\":0,\"item\":27,\"defaultTexture\":0,\"texture\":2},\"glass\":{\"defaultItem\":0,\"item\":5,\"defaultTexture\":0,\"texture\":1},\"chimp_bone_width\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"cheek_1\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"hat\":{\"defaultItem\":-1,\"item\":62,\"defaultTexture\":0,\"texture\":0},\"nose_2\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"cheek_3\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"eye_color\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"nose_0\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"t-shirt\":{\"defaultItem\":1,\"item\":35,\"defaultTexture\":0,\"texture\":0},\"ear\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"neck_thikness\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"beard\":{\"defaultItem\":-1,\"item\":5,\"defaultTexture\":1,\"texture\":1},\"chimp_bone_lenght\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"chimp_hole\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"shoes\":{\"defaultItem\":1,\"item\":10,\"defaultTexture\":0,\"texture\":0},\"jaw_bone_width\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"pants\":{\"defaultItem\":0,\"item\":24,\"defaultTexture\":0,\"texture\":0},\"chimp_bone_lowering\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"bag\":{\"defaultItem\":0,\"item\":44,\"defaultTexture\":0,\"texture\":0},\"jaw_bone_back_lenght\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"eyebrown_forward\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"lips_thickness\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"face\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"mask\":{\"defaultItem\":0,\"item\":169,\"defaultTexture\":0,\"texture\":13},\"eye_opening\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"eyebrown_high\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"torso2\":{\"defaultItem\":0,\"item\":295,\"defaultTexture\":0,\"texture\":0},\"cheek_2\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"ageing\":{\"defaultItem\":-1,\"item\":5,\"defaultTexture\":0,\"texture\":0},\"nose_5\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"arms\":{\"defaultItem\":0,\"item\":174,\"defaultTexture\":0,\"texture\":0},\"eyebrows\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"nose_4\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"nose_1\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"nose_3\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"moles\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"makeup\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1},\"decals\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"bracelet\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0,\"texture\":0},\"vest\":{\"defaultItem\":0,\"item\":0,\"defaultTexture\":0,\"texture\":0},\"blush\":{\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1,\"texture\":1}}', 1),
(89, '4714', '1885233650', '{\"face\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"bag\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"watch\":{\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1},\"nose_1\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"shoes\":{\"texture\":0,\"defaultItem\":1,\"defaultTexture\":0,\"item\":1},\"mask\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"hat\":{\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1},\"jaw_bone_back_lenght\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"lipstick\":{\"texture\":1,\"defaultItem\":-1,\"defaultTexture\":1,\"item\":-1},\"chimp_bone_width\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"eyebrows\":{\"texture\":1,\"defaultItem\":-1,\"defaultTexture\":1,\"item\":-1},\"makeup\":{\"texture\":1,\"defaultItem\":-1,\"defaultTexture\":1,\"item\":-1},\"ageing\":{\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1},\"neck_thikness\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"chimp_bone_lenght\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"chimp_hole\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"t-shirt\":{\"texture\":0,\"defaultItem\":1,\"defaultTexture\":0,\"item\":1},\"lips_thickness\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"eyebrown_forward\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"torso2\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":2},\"eyebrown_high\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"eye_color\":{\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1},\"chimp_bone_lowering\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"eye_opening\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"cheek_3\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"jaw_bone_width\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"bracelet\":{\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1},\"cheek_1\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"nose_5\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"nose_4\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"glass\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"cheek_2\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"ear\":{\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1},\"pants\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"nose_2\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"nose_0\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"moles\":{\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1},\"arms\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"blush\":{\"texture\":1,\"defaultItem\":-1,\"defaultTexture\":1,\"item\":-1},\"hair\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"nose_3\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"beard\":{\"texture\":1,\"defaultItem\":-1,\"defaultTexture\":1,\"item\":-1},\"decals\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"accessory\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"vest\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0}}', 1),
(96, '3370', '-520477356', '{\"nose_3\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"nose_5\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"eye_opening\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"chimp_bone_lenght\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"torso2\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"ageing\":{\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1},\"chimp_bone_lowering\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"lipstick\":{\"texture\":1,\"defaultItem\":-1,\"defaultTexture\":1,\"item\":-1},\"arms\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"beard\":{\"texture\":1,\"defaultItem\":-1,\"defaultTexture\":1,\"item\":-1},\"face\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"pants\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"lips_thickness\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"nose_2\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"hat\":{\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1},\"cheek_3\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"bag\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"accessory\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"watch\":{\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1},\"jaw_bone_back_lenght\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"nose_1\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"blush\":{\"texture\":1,\"defaultItem\":-1,\"defaultTexture\":1,\"item\":-1},\"shoes\":{\"texture\":0,\"defaultItem\":1,\"defaultTexture\":0,\"item\":1},\"t-shirt\":{\"texture\":0,\"defaultItem\":1,\"defaultTexture\":0,\"item\":1},\"eyebrown_high\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"cheek_2\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"cheek_1\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"nose_4\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"eye_color\":{\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1},\"moles\":{\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1},\"eyebrown_forward\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"chimp_hole\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"decals\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"neck_thikness\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"makeup\":{\"texture\":1,\"defaultItem\":-1,\"defaultTexture\":1,\"item\":-1},\"eyebrows\":{\"texture\":1,\"defaultItem\":-1,\"defaultTexture\":1,\"item\":-1},\"hair\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"bracelet\":{\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1},\"vest\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"jaw_bone_width\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"glass\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"mask\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"chimp_bone_width\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"nose_0\":{\"texture\":0,\"defaultItem\":0,\"defaultTexture\":0,\"item\":0},\"ear\":{\"texture\":0,\"defaultItem\":-1,\"defaultTexture\":0,\"item\":-1}}', 1),
(97, '1958', '-1667301416', '{\"pants\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"cheek_3\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"nose_2\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"neck_thikness\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"blush\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"nose_5\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"nose_4\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"bracelet\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"lips_thickness\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"beard\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"jaw_bone_back_lenght\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"eyebrown_forward\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"t-shirt\":{\"defaultTexture\":0,\"defaultItem\":1,\"texture\":0,\"item\":14},\"cheek_2\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"eye_opening\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"hat\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"bag\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"nose_1\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"nose_0\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"chimp_hole\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"mask\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"chimp_bone_width\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"shoes\":{\"defaultTexture\":0,\"defaultItem\":1,\"texture\":0,\"item\":1},\"accessory\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"watch\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"ageing\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"face\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":11,\"item\":21},\"glass\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"hair\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"vest\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"eyebrows\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"lipstick\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"eye_color\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"torso2\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"eyebrown_high\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"arms\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":15},\"makeup\":{\"defaultTexture\":1,\"defaultItem\":-1,\"texture\":1,\"item\":-1},\"chimp_bone_lenght\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"ear\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"chimp_bone_lowering\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"jaw_bone_width\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"decals\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"nose_3\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0},\"moles\":{\"defaultTexture\":0,\"defaultItem\":-1,\"texture\":0,\"item\":-1},\"cheek_1\":{\"defaultTexture\":0,\"defaultItem\":0,\"texture\":0,\"item\":0}}', 1),
(98, '0928', '1885233650', '{\"nose_5\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"arms\":{\"texture\":0,\"item\":12,\"defaultTexture\":0,\"defaultItem\":0},\"decals\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"chimp_hole\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"pants\":{\"texture\":2,\"item\":20,\"defaultTexture\":0,\"defaultItem\":0},\"cheek_3\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"eye_opening\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"makeup\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"beard\":{\"texture\":1,\"item\":2,\"defaultTexture\":1,\"defaultItem\":-1},\"lips_thickness\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"ear\":{\"texture\":0,\"item\":2,\"defaultTexture\":0,\"defaultItem\":-1},\"face\":{\"texture\":0,\"item\":1,\"defaultTexture\":0,\"defaultItem\":0},\"neck_thikness\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"eye_color\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"vest\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"nose_0\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"chimp_bone_width\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"shoes\":{\"texture\":0,\"item\":5,\"defaultTexture\":0,\"defaultItem\":1},\"bracelet\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"ageing\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"jaw_bone_width\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"hat\":{\"texture\":5,\"item\":31,\"defaultTexture\":0,\"defaultItem\":-1},\"hair\":{\"texture\":0,\"item\":7,\"defaultTexture\":0,\"defaultItem\":0},\"blush\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"jaw_bone_back_lenght\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"glass\":{\"texture\":0,\"item\":4,\"defaultTexture\":0,\"defaultItem\":0},\"t-shirt\":{\"texture\":0,\"item\":21,\"defaultTexture\":0,\"defaultItem\":1},\"lipstick\":{\"texture\":1,\"item\":-1,\"defaultTexture\":1,\"defaultItem\":-1},\"nose_2\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"cheek_2\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"cheek_1\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"chimp_bone_lowering\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"nose_3\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"torso2\":{\"texture\":0,\"item\":28,\"defaultTexture\":0,\"defaultItem\":0},\"eyebrown_forward\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"eyebrown_high\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"bag\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"watch\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"nose_1\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"nose_4\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"eyebrows\":{\"texture\":1,\"item\":2,\"defaultTexture\":1,\"defaultItem\":-1},\"moles\":{\"texture\":0,\"item\":-1,\"defaultTexture\":0,\"defaultItem\":-1},\"chimp_bone_lenght\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"accessory\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0},\"mask\":{\"texture\":0,\"item\":0,\"defaultTexture\":0,\"defaultItem\":0}}', 1),
(99, '3350', '1885233650', '{\"bag\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"cheek_1\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_1\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"watch\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"nose_0\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"chimp_bone_width\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"lipstick\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"beard\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"makeup\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"chimp_bone_lowering\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"chimp_bone_lenght\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eyebrown_high\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"ageing\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"hat\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"arms\":{\"texture\":0,\"item\":1,\"defaultItem\":0,\"defaultTexture\":0},\"vest\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"glass\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"shoes\":{\"texture\":0,\"item\":1,\"defaultItem\":1,\"defaultTexture\":0},\"chimp_hole\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"lips_thickness\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"torso2\":{\"texture\":0,\"item\":12,\"defaultItem\":0,\"defaultTexture\":0},\"eye_color\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"blush\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"mask\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"face\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"neck_thikness\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"jaw_bone_back_lenght\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"ear\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"eyebrown_forward\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"t-shirt\":{\"texture\":0,\"item\":1,\"defaultItem\":1,\"defaultTexture\":0},\"eyebrows\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"accessory\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eye_opening\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"cheek_3\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"moles\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"cheek_2\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_5\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_4\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"pants\":{\"texture\":0,\"item\":4,\"defaultItem\":0,\"defaultTexture\":0},\"nose_3\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_2\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"decals\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"jaw_bone_width\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"bracelet\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"hair\":{\"texture\":0,\"item\":1,\"defaultItem\":0,\"defaultTexture\":0}}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `playerstattoos`
--

CREATE TABLE `playerstattoos` (
  `id` int(11) NOT NULL,
  `citizenid` longtext DEFAULT NULL,
  `tattoos` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `playerstattoos`
--

INSERT INTO `playerstattoos` (`id`, `citizenid`, `tattoos`) VALUES
(2, '9693', '[[-1398869298,-369452741],[-975527441,962023066]]'),
(3, '8521', '[]'),
(4, '4163', '[]'),
(5, '3392', '[[-2086773,1819096318],[-240234547,1593302778],[62137527,1744801848]]'),
(6, '8190', '[]'),
(7, '8144', '[]'),
(8, '8006', '[]'),
(9, '6506', '[]'),
(10, '4730', '[]'),
(11, '2705', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `player_contacts`
--

CREATE TABLE `player_contacts` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `iban` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player_contacts`
--

INSERT INTO `player_contacts` (`id`, `citizenid`, `name`, `number`, `iban`) VALUES
(2, '8144', 'ja', '6992415', 'nil'),
(4, '2705', 'bqlo pro', '6998545', 'nil'),
(5, '6506', '123', '144124', 'nil'),
(6, '6506', 'test', '6998545', 'nil'),
(9, '4955', 'осиновения', '6955344', 'nil'),
(10, '2833', 'bashtata', '6915181', 'nil'),
(11, '4955', 'Бенет сина ми (предател)', '6940595', ''),
(12, '2833', 'brata', '6940595', 'nil'),
(15, '0748', 'bashtata', '6988178', 'nil'),
(18, '0748', 'PREDATEL 1', '6940595', 'nil'),
(19, '0748', 'PREDATEL', '6940595', 'nil');

-- --------------------------------------------------------

--
-- Table structure for table `player_drugs`
--

CREATE TABLE `player_drugs` (
  `id` int(255) NOT NULL,
  `coords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci DEFAULT NULL,
  `growth` double DEFAULT NULL,
  `water` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player_drugs`
--

INSERT INTO `player_drugs` (`id`, `coords`, `growth`, `water`) VALUES
(0, '{\"x\":-1452.1197509765626,\"y\":5420.76513671875,\"z\":23.31172370910644}', 100, 0),
(0, '{\"x\":-1483.9627685546876,\"y\":-608.662841796875,\"z\":30.82550239562988}', 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `player_houses`
--

CREATE TABLE `player_houses` (
  `id` int(255) NOT NULL,
  `house` varchar(50) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `keyholders` text DEFAULT NULL,
  `decorations` text DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player_houses`
--

INSERT INTO `player_houses` (`id`, `house`, `identifier`, `citizenid`, `keyholders`, `decorations`, `stash`, `outfit`, `logout`) VALUES
(1, 'nikola pl1', 'license:ce5a95d8d8bcca13d185b0091b75e0bf6068858d', '4955', '[\"4955\",\"2833\"]', '[{\"rotz\":0.0,\"y\":-539.557373046875,\"x\":1342.4814453125,\"objectId\":1,\"hashname\":\"v_res_d_bed\",\"z\":58.18632507324219,\"roty\":-0.0,\"rotx\":0.0,\"object\":118023},null,{\"rotz\":0.0,\"y\":-549.0294189453125,\"x\":1351.9385986328126,\"objectId\":3,\"hashname\":\"prop_ld_int_safe_01\",\"z\":57.87005996704101,\"roty\":-0.0,\"rotx\":0.0,\"object\":118279}]', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `player_mails`
--

CREATE TABLE `player_mails` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_outfits`
--

CREATE TABLE `player_outfits` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `skin` text DEFAULT NULL,
  `outfitId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player_outfits`
--

INSERT INTO `player_outfits` (`id`, `citizenid`, `outfitname`, `model`, `skin`, `outfitId`) VALUES
(1, '4955', 'police', '1885233650', '{\"glass\":{\"texture\":0,\"defaultTexture\":0,\"item\":4,\"defaultItem\":0},\"nose_5\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"chimp_hole\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"torso2\":{\"texture\":0,\"defaultTexture\":0,\"item\":468,\"defaultItem\":0},\"cheek_2\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"shoes\":{\"texture\":0,\"defaultTexture\":0,\"item\":25,\"defaultItem\":1},\"nose_0\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"watch\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1},\"nose_1\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"arms\":{\"texture\":0,\"defaultTexture\":0,\"item\":24,\"defaultItem\":0},\"chimp_bone_lenght\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"ear\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1},\"mask\":{\"texture\":0,\"defaultTexture\":0,\"item\":270,\"defaultItem\":0},\"nose_3\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"nose_2\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"t-shirt\":{\"texture\":0,\"defaultTexture\":0,\"item\":213,\"defaultItem\":1},\"face\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"ageing\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1},\"moles\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":-1},\"makeup\":{\"texture\":1,\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1},\"lipstick\":{\"texture\":1,\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1},\"nose_4\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"eyebrows\":{\"texture\":1,\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1},\"neck_thikness\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"eyebrown_high\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"eye_color\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1},\"cheek_3\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"eye_opening\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"eyebrown_forward\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"beard\":{\"texture\":1,\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1},\"cheek_1\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"vest\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"jaw_bone_back_lenght\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"chimp_bone_width\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"bag\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"lips_thickness\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"jaw_bone_width\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"bracelet\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1},\"decals\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"hat\":{\"texture\":0,\"defaultTexture\":0,\"item\":21,\"defaultItem\":-1},\"hair\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"blush\":{\"texture\":1,\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1},\"accessory\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"pants\":{\"texture\":0,\"defaultTexture\":0,\"item\":176,\"defaultItem\":0},\"chimp_bone_lowering\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0}}', 'outfit-5-1560'),
(2, '4955', 'police2', '1885233650', '{\"glass\":{\"texture\":0,\"defaultTexture\":0,\"item\":4,\"defaultItem\":0},\"lipstick\":{\"texture\":1,\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1},\"chimp_hole\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"torso2\":{\"texture\":0,\"defaultTexture\":0,\"item\":468,\"defaultItem\":0},\"cheek_2\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"shoes\":{\"texture\":0,\"defaultTexture\":0,\"item\":25,\"defaultItem\":1},\"nose_0\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"watch\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1},\"nose_1\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"arms\":{\"texture\":0,\"defaultTexture\":0,\"item\":24,\"defaultItem\":0},\"chimp_bone_lenght\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"ear\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1},\"mask\":{\"texture\":0,\"defaultTexture\":0,\"item\":270,\"defaultItem\":0},\"nose_3\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"nose_2\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"t-shirt\":{\"texture\":0,\"defaultTexture\":0,\"item\":213,\"defaultItem\":1},\"face\":{\"texture\":19,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"ageing\":{\"texture\":0,\"defaultTexture\":0,\"item\":11,\"defaultItem\":-1},\"moles\":{\"texture\":0,\"defaultTexture\":0,\"item\":27,\"defaultItem\":-1},\"makeup\":{\"texture\":1,\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1},\"nose_5\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"jaw_bone_back_lenght\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"eyebrows\":{\"texture\":1,\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1},\"eyebrown_high\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"eye_opening\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"eye_color\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1},\"nose_4\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"neck_thikness\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"eyebrown_forward\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"beard\":{\"texture\":1,\"defaultTexture\":1,\"item\":5,\"defaultItem\":-1},\"cheek_1\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"vest\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"cheek_3\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"chimp_bone_width\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"bag\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"lips_thickness\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"jaw_bone_width\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"bracelet\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1},\"decals\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"hat\":{\"texture\":0,\"defaultTexture\":0,\"item\":21,\"defaultItem\":-1},\"hair\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"blush\":{\"texture\":1,\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1},\"accessory\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"pants\":{\"texture\":0,\"defaultTexture\":0,\"item\":176,\"defaultItem\":0},\"chimp_bone_lowering\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0}}', 'outfit-9-6872'),
(3, '2833', 'police', '1885233650', '{\"glass\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_5\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eye_opening\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"torso2\":{\"texture\":0,\"item\":674,\"defaultItem\":0,\"defaultTexture\":0},\"cheek_2\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"shoes\":{\"texture\":0,\"item\":1,\"defaultItem\":1,\"defaultTexture\":0},\"nose_0\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"watch\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"nose_1\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"arms\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"chimp_bone_lenght\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"ear\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"mask\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_3\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_2\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"t-shirt\":{\"texture\":0,\"item\":1,\"defaultItem\":1,\"defaultTexture\":0},\"face\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"ageing\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"moles\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"makeup\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"bracelet\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"eyebrows\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"eyebrown_high\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"bag\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"hair\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eye_color\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"chimp_hole\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_4\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eyebrown_forward\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"beard\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"cheek_1\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"vest\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"chimp_bone_lowering\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"lipstick\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"neck_thikness\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"lips_thickness\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"jaw_bone_width\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"jaw_bone_back_lenght\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"cheek_3\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"hat\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"decals\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"blush\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"accessory\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"pants\":{\"texture\":0,\"item\":24,\"defaultItem\":0,\"defaultTexture\":0},\"chimp_bone_width\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0}}', 'outfit-5-1987'),
(4, '2833', 'police2', '1885233650', '{\"glass\":{\"texture\":0,\"item\":5,\"defaultItem\":0,\"defaultTexture\":0},\"nose_5\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eye_opening\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"torso2\":{\"texture\":0,\"item\":674,\"defaultItem\":0,\"defaultTexture\":0},\"cheek_2\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"shoes\":{\"texture\":0,\"item\":24,\"defaultItem\":1,\"defaultTexture\":0},\"nose_0\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"watch\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"nose_1\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"arms\":{\"texture\":0,\"item\":17,\"defaultItem\":0,\"defaultTexture\":0},\"chimp_bone_lenght\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"ear\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"mask\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_3\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_2\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"t-shirt\":{\"texture\":0,\"item\":15,\"defaultItem\":1,\"defaultTexture\":0},\"face\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"ageing\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"moles\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"makeup\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"bracelet\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"eyebrows\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"eyebrown_high\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"bag\":{\"texture\":0,\"item\":195,\"defaultItem\":0,\"defaultTexture\":0},\"hair\":{\"texture\":0,\"item\":2,\"defaultItem\":0,\"defaultTexture\":0},\"eye_color\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"chimp_hole\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_4\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eyebrown_forward\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"beard\":{\"texture\":1,\"item\":2,\"defaultItem\":-1,\"defaultTexture\":1},\"cheek_1\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"vest\":{\"texture\":0,\"item\":69,\"defaultItem\":0,\"defaultTexture\":0},\"chimp_bone_lowering\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"lipstick\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"neck_thikness\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"lips_thickness\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"jaw_bone_width\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"jaw_bone_back_lenght\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"cheek_3\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"hat\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"decals\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"blush\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"accessory\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"pants\":{\"texture\":0,\"item\":33,\"defaultItem\":0,\"defaultTexture\":0},\"chimp_bone_width\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0}}', 'outfit-6-8900'),
(5, '3087', 'ko', '1885233650', '{\"bracelet\":{\"texture\":0,\"item\":11,\"defaultItem\":-1,\"defaultTexture\":0},\"accessory\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"blush\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"ageing\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"cheek_3\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"chimp_hole\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_1\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"makeup\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"hat\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"chimp_bone_lenght\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"moles\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"nose_0\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eye_opening\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_2\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"lips_thickness\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"glass\":{\"texture\":1,\"item\":5,\"defaultItem\":0,\"defaultTexture\":0},\"arms\":{\"texture\":0,\"item\":41,\"defaultItem\":0,\"defaultTexture\":0},\"decals\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eyebrown_high\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"jaw_bone_back_lenght\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"ear\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"neck_thikness\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"cheek_1\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"cheek_2\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eyebrows\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"chimp_bone_width\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"vest\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eyebrown_forward\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_5\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eye_color\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"pants\":{\"texture\":0,\"item\":178,\"defaultItem\":0,\"defaultTexture\":0},\"torso2\":{\"texture\":0,\"item\":527,\"defaultItem\":0,\"defaultTexture\":0},\"beard\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"shoes\":{\"texture\":2,\"item\":8,\"defaultItem\":1,\"defaultTexture\":0},\"t-shirt\":{\"texture\":0,\"item\":15,\"defaultItem\":1,\"defaultTexture\":0},\"face\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_4\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"hair\":{\"texture\":0,\"item\":39,\"defaultItem\":0,\"defaultTexture\":0},\"lipstick\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"nose_3\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"jaw_bone_width\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"watch\":{\"texture\":0,\"item\":10,\"defaultItem\":-1,\"defaultTexture\":0},\"chimp_bone_lowering\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"mask\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"bag\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0}}', 'outfit-4-6796'),
(6, '4955', 'walter', '1885233650', '{\"bracelet\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"lipstick\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"blush\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"beard\":{\"texture\":1,\"item\":5,\"defaultItem\":-1,\"defaultTexture\":1},\"cheek_3\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"chimp_hole\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_3\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"makeup\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"hat\":{\"texture\":0,\"item\":36,\"defaultItem\":-1,\"defaultTexture\":0},\"chimp_bone_lenght\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"moles\":{\"texture\":0,\"item\":27,\"defaultItem\":-1,\"defaultTexture\":0},\"nose_4\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eye_opening\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_2\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"lips_thickness\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"glass\":{\"texture\":0,\"item\":35,\"defaultItem\":0,\"defaultTexture\":0},\"arms\":{\"texture\":0,\"item\":1,\"defaultItem\":0,\"defaultTexture\":0},\"decals\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eyebrown_high\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_5\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"ear\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"neck_thikness\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"t-shirt\":{\"texture\":0,\"item\":15,\"defaultItem\":1,\"defaultTexture\":0},\"cheek_2\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eyebrows\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"mask\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"vest\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"chimp_bone_width\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"torso2\":{\"texture\":4,\"item\":379,\"defaultItem\":0,\"defaultTexture\":0},\"eye_color\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"pants\":{\"texture\":0,\"item\":176,\"defaultItem\":0,\"defaultTexture\":0},\"eyebrown_forward\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_1\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"shoes\":{\"texture\":0,\"item\":20,\"defaultItem\":1,\"defaultTexture\":0},\"watch\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"face\":{\"texture\":19,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_0\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"bag\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"hair\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"accessory\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"cheek_1\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"ageing\":{\"texture\":0,\"item\":11,\"defaultItem\":-1,\"defaultTexture\":0},\"chimp_bone_lowering\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"jaw_bone_back_lenght\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"jaw_bone_width\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0}}', 'outfit-10-3272'),
(7, '4955', 'walter2', '1885233650', '{\"bracelet\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"lipstick\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"blush\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"beard\":{\"texture\":1,\"item\":5,\"defaultItem\":-1,\"defaultTexture\":1},\"cheek_3\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"chimp_hole\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_3\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"makeup\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"hat\":{\"texture\":0,\"item\":36,\"defaultItem\":-1,\"defaultTexture\":0},\"chimp_bone_lenght\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"moles\":{\"texture\":0,\"item\":27,\"defaultItem\":-1,\"defaultTexture\":0},\"nose_4\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eye_opening\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_2\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"lips_thickness\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"glass\":{\"texture\":0,\"item\":35,\"defaultItem\":0,\"defaultTexture\":0},\"arms\":{\"texture\":0,\"item\":1,\"defaultItem\":0,\"defaultTexture\":0},\"decals\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eyebrown_high\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_5\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"ear\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"neck_thikness\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"t-shirt\":{\"texture\":0,\"item\":15,\"defaultItem\":1,\"defaultTexture\":0},\"cheek_2\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"eyebrows\":{\"texture\":1,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":1},\"mask\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"vest\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"chimp_bone_width\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"torso2\":{\"texture\":4,\"item\":379,\"defaultItem\":0,\"defaultTexture\":0},\"eye_color\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"pants\":{\"texture\":0,\"item\":141,\"defaultItem\":0,\"defaultTexture\":0},\"eyebrown_forward\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_1\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"shoes\":{\"texture\":0,\"item\":20,\"defaultItem\":1,\"defaultTexture\":0},\"watch\":{\"texture\":0,\"item\":-1,\"defaultItem\":-1,\"defaultTexture\":0},\"face\":{\"texture\":19,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"nose_0\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"bag\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"hair\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"accessory\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"cheek_1\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"ageing\":{\"texture\":0,\"item\":11,\"defaultItem\":-1,\"defaultTexture\":0},\"chimp_bone_lowering\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"jaw_bone_back_lenght\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0},\"jaw_bone_width\":{\"texture\":0,\"item\":0,\"defaultItem\":0,\"defaultTexture\":0}}', 'outfit-7-4214'),
(8, '6253', '.', '1885233650', '{\"bracelet\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"accessory\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"blush\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"ageing\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"cheek_3\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"chimp_hole\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"hair\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"makeup\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"hat\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"chimp_bone_lenght\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"moles\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"nose_4\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"eye_opening\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"nose_2\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"lips_thickness\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"glass\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"arms\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"decals\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"eyebrown_high\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"nose_5\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"bag\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"neck_thikness\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"beard\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"cheek_2\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"eyebrows\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"chimp_bone_width\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"vest\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"ear\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"jaw_bone_width\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"eye_color\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"pants\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"torso2\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"nose_0\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"shoes\":{\"texture\":0,\"defaultItem\":1,\"item\":1,\"defaultTexture\":0},\"t-shirt\":{\"texture\":0,\"defaultItem\":1,\"item\":1,\"defaultTexture\":0},\"face\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"nose_1\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"nose_3\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"cheek_1\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"lipstick\":{\"texture\":1,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":1},\"watch\":{\"texture\":0,\"defaultItem\":-1,\"item\":-1,\"defaultTexture\":0},\"eyebrown_forward\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"chimp_bone_lowering\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"jaw_bone_back_lenght\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0},\"mask\":{\"texture\":0,\"defaultItem\":0,\"item\":0,\"defaultTexture\":0}}', 'outfit-9-8055'),
(9, '6253', 'police', '1885233650', '{\"bracelet\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1},\"beard\":{\"texture\":1,\"defaultTexture\":1,\"item\":2,\"defaultItem\":-1},\"glass\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"chimp_bone_lowering\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"lips_thickness\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"nose_1\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"chimp_bone_width\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"hat\":{\"texture\":4,\"defaultTexture\":0,\"item\":26,\"defaultItem\":-1},\"nose_4\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"decals\":{\"texture\":0,\"defaultTexture\":0,\"item\":161,\"defaultItem\":0},\"eye_opening\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"eyebrown_high\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"blush\":{\"texture\":1,\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1},\"makeup\":{\"texture\":1,\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1},\"hair\":{\"texture\":0,\"defaultTexture\":0,\"item\":39,\"defaultItem\":0},\"cheek_2\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"lipstick\":{\"texture\":1,\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1},\"jaw_bone_back_lenght\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"nose_3\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"watch\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1},\"face\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"arms\":{\"texture\":0,\"defaultTexture\":0,\"item\":194,\"defaultItem\":0},\"jaw_bone_width\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"vest\":{\"texture\":0,\"defaultTexture\":0,\"item\":111,\"defaultItem\":0},\"shoes\":{\"texture\":0,\"defaultTexture\":0,\"item\":24,\"defaultItem\":1},\"mask\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"cheek_1\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"eyebrown_forward\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"chimp_hole\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"eyebrows\":{\"texture\":1,\"defaultTexture\":1,\"item\":-1,\"defaultItem\":-1},\"nose_0\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"bag\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"t-shirt\":{\"texture\":0,\"defaultTexture\":0,\"item\":15,\"defaultItem\":1},\"neck_thikness\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"cheek_3\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"nose_2\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"pants\":{\"texture\":15,\"defaultTexture\":0,\"item\":245,\"defaultItem\":0},\"chimp_bone_lenght\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"nose_5\":{\"texture\":0,\"defaultTexture\":0,\"item\":0,\"defaultItem\":0},\"ageing\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1},\"eye_color\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1},\"ear\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1},\"torso2\":{\"texture\":3,\"defaultTexture\":0,\"item\":659,\"defaultItem\":0},\"accessory\":{\"texture\":0,\"defaultTexture\":0,\"item\":210,\"defaultItem\":0},\"moles\":{\"texture\":0,\"defaultTexture\":0,\"item\":-1,\"defaultItem\":-1}}', 'outfit-6-5777'),
(10, '3191', '', '1885233650', '{\"watch\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"hair\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"makeup\":{\"defaultItem\":-1,\"defaultTexture\":1,\"texture\":1,\"item\":-1},\"eye_color\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"hat\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"jaw_bone_back_lenght\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"lipstick\":{\"defaultItem\":-1,\"defaultTexture\":1,\"texture\":1,\"item\":-1},\"eyebrows\":{\"defaultItem\":-1,\"defaultTexture\":1,\"texture\":1,\"item\":-1},\"shoes\":{\"defaultItem\":1,\"defaultTexture\":0,\"texture\":0,\"item\":10},\"eyebrown_high\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"glass\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"chimp_bone_lenght\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"face\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"blush\":{\"defaultItem\":-1,\"defaultTexture\":1,\"texture\":1,\"item\":-1},\"torso2\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":295},\"lips_thickness\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"vest\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"mask\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"beard\":{\"defaultItem\":-1,\"defaultTexture\":1,\"texture\":1,\"item\":-1},\"pants\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":24},\"bracelet\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"cheek_1\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"moles\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"nose_3\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"cheek_2\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"chimp_hole\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"nose_4\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"arms\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":174},\"cheek_3\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"nose_5\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"ageing\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"accessory\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":2,\"item\":27},\"decals\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"nose_2\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"bag\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"t-shirt\":{\"defaultItem\":1,\"defaultTexture\":0,\"texture\":0,\"item\":35},\"chimp_bone_lowering\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"neck_thikness\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"chimp_bone_width\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"nose_0\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"ear\":{\"defaultItem\":-1,\"defaultTexture\":0,\"texture\":0,\"item\":-1},\"nose_1\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"jaw_bone_width\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"eyebrown_forward\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0},\"eye_opening\":{\"defaultItem\":0,\"defaultTexture\":0,\"texture\":0,\"item\":0}}', 'outfit-4-7273'),
(11, '0928', 'mec', '1885233650', '{\"bag\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"chimp_bone_width\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"hair\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":7},\"ageing\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"jaw_bone_width\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"accessory\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"lips_thickness\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"nose_4\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"torso2\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":25},\"chimp_bone_lowering\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"decals\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"nose_3\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"eye_color\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"face\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":1},\"cheek_1\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"pants\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":15},\"eyebrows\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":2},\"nose_0\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"moles\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"blush\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"mask\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"bracelet\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"cheek_2\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"eye_opening\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"lipstick\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"glass\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"vest\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"watch\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"arms\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":5},\"nose_1\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"hat\":{\"defaultTexture\":0,\"texture\":2,\"defaultItem\":-1,\"item\":14},\"eyebrown_high\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"t-shirt\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":1,\"item\":15},\"neck_thikness\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"makeup\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":-1},\"chimp_bone_lenght\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"nose_2\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"nose_5\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"ear\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1,\"item\":-1},\"eyebrown_forward\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"shoes\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":1,\"item\":5},\"chimp_hole\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"cheek_3\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"jaw_bone_back_lenght\":{\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0,\"item\":0},\"beard\":{\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1,\"item\":2}}', 'outfit-2-7149'),
(12, '0928', 'kmet', '1885233650', '{\"face\":{\"defaultItem\":0,\"item\":1,\"texture\":0,\"defaultTexture\":0},\"lipstick\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"t-shirt\":{\"defaultItem\":1,\"item\":21,\"texture\":0,\"defaultTexture\":0},\"nose_5\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"chimp_bone_lowering\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"nose_1\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"bracelet\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0},\"hair\":{\"defaultItem\":0,\"item\":7,\"texture\":0,\"defaultTexture\":0},\"moles\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0},\"ageing\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0},\"eye_color\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0},\"cheek_1\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"nose_4\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"nose_0\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"glass\":{\"defaultItem\":0,\"item\":4,\"texture\":0,\"defaultTexture\":0},\"shoes\":{\"defaultItem\":1,\"item\":5,\"texture\":0,\"defaultTexture\":0},\"jaw_bone_back_lenght\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"vest\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"nose_2\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"chimp_bone_lenght\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"watch\":{\"defaultItem\":-1,\"item\":-1,\"texture\":0,\"defaultTexture\":0},\"cheek_3\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"accessory\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"mask\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"hat\":{\"defaultItem\":-1,\"item\":31,\"texture\":5,\"defaultTexture\":0},\"eyebrows\":{\"defaultItem\":-1,\"item\":2,\"texture\":1,\"defaultTexture\":1},\"chimp_hole\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"nose_3\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"beard\":{\"defaultItem\":-1,\"item\":2,\"texture\":1,\"defaultTexture\":1},\"bag\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"arms\":{\"defaultItem\":0,\"item\":12,\"texture\":0,\"defaultTexture\":0},\"decals\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"lips_thickness\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"eyebrown_forward\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"cheek_2\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"jaw_bone_width\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"ear\":{\"defaultItem\":-1,\"item\":2,\"texture\":0,\"defaultTexture\":0},\"torso2\":{\"defaultItem\":0,\"item\":28,\"texture\":0,\"defaultTexture\":0},\"makeup\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"neck_thikness\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"eyebrown_high\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"pants\":{\"defaultItem\":0,\"item\":20,\"texture\":2,\"defaultTexture\":0},\"chimp_bone_width\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0},\"blush\":{\"defaultItem\":-1,\"item\":-1,\"texture\":1,\"defaultTexture\":1},\"eye_opening\":{\"defaultItem\":0,\"item\":0,\"texture\":0,\"defaultTexture\":0}}', 'outfit-6-2958'),
(13, '3350', '111', '1885233650', '{\"moles\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"pants\":{\"item\":4,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"cheek_2\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"neck_thikness\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"face\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"chimp_bone_lenght\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"decals\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"torso2\":{\"item\":12,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"hat\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"t-shirt\":{\"item\":1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":1},\"vest\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"watch\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"chimp_hole\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"eyebrown_forward\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"accessory\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"nose_0\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"arms\":{\"item\":1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"eyebrown_high\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"glass\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"hair\":{\"item\":1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"cheek_3\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"bracelet\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"jaw_bone_width\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"eyebrows\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"lipstick\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"nose_2\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"nose_3\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"nose_5\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"nose_1\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"nose_4\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"lips_thickness\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"eye_opening\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"bag\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"makeup\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"shoes\":{\"item\":1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":1},\"mask\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"ageing\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"eye_color\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"ear\":{\"item\":-1,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":-1},\"chimp_bone_width\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"beard\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1},\"chimp_bone_lowering\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"jaw_bone_back_lenght\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"cheek_1\":{\"item\":0,\"defaultTexture\":0,\"texture\":0,\"defaultItem\":0},\"blush\":{\"item\":-1,\"defaultTexture\":1,\"texture\":1,\"defaultItem\":-1}}', 'outfit-5-5232');

-- --------------------------------------------------------

--
-- Table structure for table `player_transactions`
--

CREATE TABLE `player_transactions` (
  `id` varchar(50) NOT NULL,
  `isFrozen` int(11) DEFAULT 0,
  `transactions` longtext DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `player_transactions`
--

INSERT INTO `player_transactions` (`id`, `isFrozen`, `transactions`) VALUES
('6506', 0, '[{\"trans_id\":\"e758acfa-9977-436d-8c67-bac6e51a9514\",\"time\":1725230125,\"trans_type\":\"withdraw\",\"title\":\"Personal Account / 6506\",\"receiver\":\"William Groover\",\"issuer\":\"William Groover\",\"message\":\"test\",\"amount\":1000}]');

-- --------------------------------------------------------

--
-- Table structure for table `player_vehicles`
--

CREATE TABLE `player_vehicles` (
  `id` int(11) NOT NULL,
  `license` varchar(50) DEFAULT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `plate` varchar(8) NOT NULL,
  `fakeplate` varchar(8) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `engine` float DEFAULT 1000,
  `body` float DEFAULT 1000,
  `state` int(11) DEFAULT 1,
  `depotprice` int(11) NOT NULL DEFAULT 0,
  `drivingdistance` int(50) DEFAULT NULL,
  `noslevel` int(10) DEFAULT 0,
  `hasnitro` tinyint(4) DEFAULT 0,
  `status` text DEFAULT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `paymentamount` int(11) NOT NULL DEFAULT 0,
  `paymentsleft` int(11) NOT NULL DEFAULT 0,
  `financetime` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player_vehicles`
--

INSERT INTO `player_vehicles` (`id`, `license`, `citizenid`, `vehicle`, `hash`, `mods`, `plate`, `fakeplate`, `garage`, `image`, `fuel`, `engine`, `body`, `state`, `depotprice`, `drivingdistance`, `noslevel`, `hasnitro`, `status`, `balance`, `paymentamount`, `paymentsleft`, `financetime`) VALUES
(35, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '8144', 'npolexp', '719025956', '{\"modRearBumper\":-1,\"modSuspension\":3,\"color1\":12,\"modRoof\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modAirFilter\":-1,\"modKit17\":-1,\"modHood\":-1,\"modBrakes\":2,\"xenonColor\":1,\"modShifterLeavers\":-1,\"modDial\":-1,\"modTransmission\":3,\"modHorns\":-1,\"dashboardColor\":112,\"modFrame\":-1,\"modEngine\":4,\"extras\":{\"7\":false,\"8\":false,\"1\":true,\"2\":false,\"3\":false,\"4\":true,\"5\":false,\"6\":false},\"modTrimA\":-1,\"plateIndex\":4,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modTrimB\":0,\"modExhaust\":-1,\"modTrunk\":-1,\"neonColor\":[255,0,255],\"modFender\":-1,\"modFrontBumper\":-1,\"modEngineBlock\":-1,\"modSideSkirt\":-1,\"pearlescentColor\":83,\"oilLevel\":7.94328234724281,\"modXenon\":1,\"plate\":\"85AYX760\",\"bodyHealth\":977.0237287108662,\"liveryRoof\":-1,\"tankHealth\":997.6762628136975,\"modWindows\":-1,\"modSeats\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true},\"modKit49\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modLivery\":4,\"modAerials\":-1,\"modBProofTires\":false,\"fuelLevel\":73.87252582935818,\"modKit21\":-1,\"modSpoilers\":0,\"interiorColor\":112,\"modStruts\":-1,\"modKit47\":-1,\"modCustomTiresR\":false,\"modArchCover\":0,\"modDashboard\":0,\"modDrift\":false,\"modVanityPlate\":-1,\"modTurbo\":1,\"modDoorSpeaker\":-1,\"modArmor\":4,\"modSmokeEnabled\":false,\"modOrnaments\":0,\"wheelSize\":0.74971389770507,\"windowTint\":2,\"modSteeringWheel\":-1,\"modHydrolic\":-1,\"modKit19\":-1,\"modAPlate\":-1,\"engineHealth\":966.6974616594505,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modCustomTiresF\":false,\"neonEnabled\":[false,false,false,false],\"modTank\":0,\"modSpeakers\":-1,\"modBackWheels\":-1,\"modGrille\":-1,\"wheelColor\":0,\"modFrontWheels\":28,\"headlightColor\":1,\"dirtLevel\":0.0,\"wheels\":4,\"wheelWidth\":0.54597103595733,\"model\":719025956,\"modPlateHolder\":-1,\"color2\":12}', '85AYX760', NULL, 'pdgarage', NULL, 74, 967, 977, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(36, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '8144', 'npolmm', '-826092757', '{}', '80DSV786', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(37, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '8144', 'npolvic', '-901056903', '{\"engineHealth\":1000.0592475178704,\"modFrame\":-1,\"modEngine\":4,\"modShifterLeavers\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSuspension\":3,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modArmor\":4,\"modAPlate\":-1,\"interiorColor\":111,\"pearlescentColor\":0,\"modKit19\":-1,\"modWindows\":-1,\"windowTint\":1,\"modTurbo\":1,\"modKit21\":-1,\"color1\":12,\"modAerials\":-1,\"tankHealth\":1000.0592475178704,\"modSideSkirt\":-1,\"modDashboard\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modLivery\":4,\"modPlateHolder\":-1,\"modTrimA\":-1,\"model\":-901056903,\"wheelSize\":1.0,\"modTransmission\":3,\"modHorns\":-1,\"modKit49\":-1,\"modSteeringWheel\":-1,\"neonEnabled\":[false,false,false,false],\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modDial\":-1,\"modRightFender\":-1,\"modTrimB\":0,\"modDoorSpeaker\":-1,\"modSmokeEnabled\":false,\"plate\":\"82HGU445\",\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"dirtLevel\":8.73761058196709,\"modSpoilers\":0,\"headlightColor\":1,\"modGrille\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontBumper\":-1,\"modAirFilter\":-1,\"wheelColor\":0,\"wheels\":1,\"modEngineBlock\":-1,\"modBProofTires\":false,\"modHood\":-1,\"modKit47\":-1,\"modFender\":-1,\"bodyHealth\":1000.0592475178704,\"modRoof\":-1,\"modKit17\":-1,\"fuelLevel\":64.3405870126668,\"modSeats\":-1,\"liveryRoof\":-1,\"modArchCover\":0,\"modSpeakers\":-1,\"modExhaust\":-1,\"modRearBumper\":-1,\"modXenon\":1,\"modStruts\":-1,\"color2\":12,\"modCustomTiresF\":false,\"xenonColor\":1,\"modDrift\":false,\"oilLevel\":4.76596940834568,\"modVanityPlate\":-1,\"modFrontWheels\":-1,\"dashboardColor\":111,\"modBrakes\":2,\"extras\":{\"6\":false,\"7\":false,\"1\":true,\"2\":false,\"3\":false,\"4\":false,\"5\":true},\"wheelWidth\":1.0,\"modTrunk\":-1,\"modTank\":0,\"modCustomTiresR\":false,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"neonColor\":[255,0,255],\"modBackWheels\":-1,\"plateIndex\":4}', '82HGU445', NULL, 'pdgarage', NULL, 64, 1001, 1001, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(38, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '8144', 'npolvette', '-1109563416', '{\"modRearBumper\":-1,\"modSuspension\":3,\"color1\":12,\"modRoof\":0,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modAirFilter\":-1,\"modKit17\":-1,\"modHood\":-1,\"modBrakes\":2,\"xenonColor\":1,\"modShifterLeavers\":-1,\"modDial\":-1,\"modTransmission\":3,\"modHorns\":-1,\"dashboardColor\":63,\"fuelLevel\":53.21999172652686,\"modEngine\":4,\"extras\":{\"1\":true,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":true},\"modTrimA\":-1,\"plateIndex\":4,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modTrimB\":0,\"modExhaust\":-1,\"modTrunk\":-1,\"neonColor\":[255,0,255],\"modFender\":-1,\"modFrontBumper\":-1,\"modEngineBlock\":-1,\"modSideSkirt\":-1,\"pearlescentColor\":66,\"modStruts\":-1,\"modXenon\":1,\"modKit49\":-1,\"liveryRoof\":-1,\"modTurbo\":1,\"modAerials\":-1,\"modWindows\":-1,\"modSeats\":-1,\"modCustomTiresF\":false,\"plate\":\"25KOC688\",\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modLivery\":2,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"modBProofTires\":false,\"modGrille\":-1,\"modHydrolic\":-1,\"modArchCover\":0,\"interiorColor\":111,\"modDoorSpeaker\":-1,\"modKit47\":-1,\"modCustomTiresR\":false,\"bodyHealth\":976.2294004761419,\"modDashboard\":0,\"modArmor\":4,\"modSmokeEnabled\":false,\"modDrift\":false,\"windowTint\":1,\"modFrontWheels\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modOrnaments\":0,\"modSpoilers\":-1,\"tankHealth\":997.6762628136975,\"modSteeringWheel\":-1,\"dirtLevel\":0.0,\"modKit19\":-1,\"modAPlate\":-1,\"engineHealth\":965.1088051900019,\"modKit21\":-1,\"modSpeakers\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":0,\"modBackWheels\":-1,\"wheelSize\":1.0,\"color2\":12,\"wheelColor\":0,\"modFrame\":-1,\"headlightColor\":1,\"model\":-1109563416,\"wheels\":0,\"wheelWidth\":1.0,\"modVanityPlate\":-1,\"modPlateHolder\":-1,\"oilLevel\":7.14895411251853}', '25KOC688', NULL, 'pdgarage', NULL, 53, 966, 977, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(39, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '8144', 'npolstang', '-1336796853', '{\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"wheelSize\":1.0,\"modTransmission\":3,\"model\":-1336796853,\"modXenon\":1,\"modSuspension\":3,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"plate\":\"29DZY983\",\"windowTint\":1,\"modFrontWheels\":-1,\"pearlescentColor\":83,\"modTurbo\":1,\"headlightColor\":1,\"neonEnabled\":[false,false,false,false],\"tankHealth\":997.6762628136975,\"modRoof\":0,\"modSpoilers\":-1,\"modAPlate\":-1,\"modDial\":-1,\"bodyHealth\":995.2932781095246,\"modShifterLeavers\":-1,\"xenonColor\":1,\"modWindows\":-1,\"dashboardColor\":111,\"liveryRoof\":-1,\"modStruts\":-1,\"wheelColor\":0,\"modDrift\":false,\"modTrimB\":0,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"wheels\":7,\"modEngine\":4,\"oilLevel\":4.76596940834568,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modRearBumper\":0,\"engineHealth\":1000.0592475178704,\"interiorColor\":111,\"modAirFilter\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modPlateHolder\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"color2\":12,\"modFrontBumper\":4,\"modDoorSpeaker\":-1,\"modBProofTires\":false,\"modKit47\":-1,\"modCustomTiresF\":false,\"modSmokeEnabled\":false,\"color1\":12,\"modArmor\":4,\"modRightFender\":-1,\"modTank\":0,\"modBackWheels\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"dirtLevel\":7.94328234724281,\"modTrunk\":-1,\"extras\":{\"6\":false,\"1\":true,\"3\":false,\"2\":true,\"5\":false,\"4\":false},\"modEngineBlock\":-1,\"fuelLevel\":72.28386935990962,\"modFrame\":-1,\"modTrimA\":-1,\"modKit19\":-1,\"modOrnaments\":-1,\"modKit17\":-1,\"modDashboard\":-1,\"modArchCover\":0,\"modExhaust\":-1,\"modLivery\":2,\"modGrille\":-1,\"wheelWidth\":1.0,\"modBrakes\":2,\"modFender\":-1,\"modCustomTiresR\":false,\"tireHealth\":{\"1\":1000.0,\"2\":997.0674438476563,\"3\":1000.0,\"0\":1000.0},\"modKit49\":-1,\"modKit21\":-1,\"modHood\":-1,\"neonColor\":[255,0,255],\"modSeats\":-1,\"modSpeakers\":-1}', '29DZY983', NULL, 'pdgarage', NULL, 72, 1000, 995, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(40, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '8144', 'npolchal', '1949729657', '{}', '28UKO111', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(41, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '8144', 'npolchal', '1949729657', '{}', '25UHK064', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(42, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '8144', 'npolchal', '1949729657', '{\"engineHealth\":989.7329804664547,\"modFrame\":-1,\"modEngine\":2,\"modShifterLeavers\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSuspension\":3,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modArmor\":4,\"modAPlate\":-1,\"interiorColor\":111,\"pearlescentColor\":83,\"modKit19\":-1,\"modWindows\":-1,\"windowTint\":1,\"modTurbo\":1,\"modKit21\":-1,\"color1\":12,\"modAerials\":-1,\"tankHealth\":998.4705910484217,\"modSideSkirt\":-1,\"modDashboard\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modLivery\":2,\"modPlateHolder\":-1,\"modTrimA\":-1,\"model\":1949729657,\"wheelSize\":1.0,\"modTransmission\":2,\"modHorns\":-1,\"modKit49\":-1,\"modSteeringWheel\":-1,\"neonEnabled\":[false,false,false,false],\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modDial\":-1,\"modRightFender\":-1,\"modTrimB\":0,\"modDoorSpeaker\":-1,\"modSmokeEnabled\":false,\"plate\":\"64JTS191\",\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"dirtLevel\":4.76596940834568,\"modSpoilers\":0,\"headlightColor\":0,\"modGrille\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontBumper\":-1,\"modAirFilter\":-1,\"wheelColor\":0,\"wheels\":7,\"modEngineBlock\":-1,\"modBProofTires\":false,\"modHood\":-1,\"modKit47\":-1,\"modFender\":-1,\"bodyHealth\":991.3216369359033,\"modRoof\":0,\"modKit17\":-1,\"fuelLevel\":59.57461760432111,\"modSeats\":-1,\"liveryRoof\":-1,\"modArchCover\":0,\"modSpeakers\":-1,\"modExhaust\":-1,\"modRearBumper\":-1,\"modXenon\":1,\"modStruts\":-1,\"color2\":12,\"modCustomTiresF\":false,\"xenonColor\":0,\"modDrift\":false,\"oilLevel\":4.76596940834568,\"modVanityPlate\":-1,\"modFrontWheels\":-1,\"dashboardColor\":111,\"modBrakes\":1,\"extras\":{\"6\":true,\"1\":true,\"2\":false,\"3\":false,\"4\":false,\"5\":false},\"wheelWidth\":1.0,\"modTrunk\":-1,\"modTank\":0,\"modCustomTiresR\":false,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"neonColor\":[255,0,255],\"modBackWheels\":-1,\"plateIndex\":4}', '64JTS191', NULL, 'pdgarage', NULL, 60, 991, 992, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(43, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '8144', 'npolchar', '-1457394361', '{\"extras\":{\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"1\":true,\"2\":true},\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":true,\"5\":false,\"0\":false},\"liveryRoof\":-1,\"modAerials\":-1,\"modKit49\":-1,\"modAirFilter\":-1,\"modFrontWheels\":-1,\"modDial\":-1,\"modGrille\":-1,\"modTrimB\":0,\"neonColor\":[255,0,255],\"modCustomTiresR\":false,\"modStruts\":-1,\"modFrame\":-1,\"modKit19\":-1,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"modSeats\":-1,\"modSteeringWheel\":-1,\"dashboardColor\":111,\"oilLevel\":4.76596940834568,\"modDrift\":false,\"tankHealth\":996.0876063442489,\"modWindows\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modKit17\":-1,\"modSpoilers\":1,\"modDashboard\":-1,\"modOrnaments\":0,\"interiorColor\":111,\"modHydrolic\":-1,\"modTurbo\":1,\"modCustomTiresF\":false,\"modSuspension\":3,\"plateIndex\":4,\"wheelSize\":1.0,\"modPlateHolder\":-1,\"color2\":12,\"engineHealth\":998.4705910484217,\"neonEnabled\":[false,false,false,false],\"fuelLevel\":59.57461760432111,\"modBProofTires\":false,\"wheelWidth\":1.0,\"model\":-1457394361,\"modEngineBlock\":-1,\"windowTint\":1,\"pearlescentColor\":83,\"modRearBumper\":-1,\"modEngine\":-1,\"modXenon\":1,\"color1\":12,\"tireHealth\":{\"1\":998.8689575195313,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"plate\":\"62MHA044\",\"modTransmission\":-1,\"modExhaust\":-1,\"modAPlate\":-1,\"modBackWheels\":-1,\"modShifterLeavers\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSmokeEnabled\":false,\"bodyHealth\":930.9526910968579,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":false,\"0\":true},\"modKit21\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFender\":-1,\"modArmor\":4,\"modRoof\":0,\"modBrakes\":-1,\"modTrimA\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"modLivery\":2,\"dirtLevel\":10.32626705141565,\"modTrunk\":-1,\"xenonColor\":2,\"modHood\":-1,\"modVanityPlate\":-1,\"wheels\":0,\"wheelColor\":0,\"headlightColor\":2,\"modTank\":0,\"modKit47\":-1,\"modFrontBumper\":-1,\"modArchCover\":0}', '62MHA044', NULL, 'pdgarage', NULL, 59, 999, 932, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(44, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '8144', 'ap2', '-1549019518', '{\"modRearBumper\":-1,\"modSuspension\":3,\"color1\":0,\"modRoof\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modAirFilter\":-1,\"modKit17\":-1,\"modHood\":-1,\"modBrakes\":2,\"xenonColor\":255,\"modShifterLeavers\":-1,\"modDial\":-1,\"modTransmission\":3,\"modHorns\":-1,\"dashboardColor\":0,\"fuelLevel\":49.24835055290545,\"modEngine\":4,\"extras\":{\"2\":true},\"modTrimA\":-1,\"plateIndex\":3,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":999.5},\"modTrimB\":-1,\"modExhaust\":-1,\"modTrunk\":-1,\"neonColor\":[255,0,255],\"modFender\":-1,\"modFrontBumper\":-1,\"modEngineBlock\":-1,\"modSideSkirt\":-1,\"pearlescentColor\":0,\"modStruts\":-1,\"modXenon\":false,\"modKit49\":-1,\"liveryRoof\":-1,\"modTurbo\":1,\"modAerials\":-1,\"modWindows\":-1,\"modSeats\":-1,\"modCustomTiresF\":false,\"plate\":\"00BBC619\",\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modLivery\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":false,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"modBProofTires\":false,\"modGrille\":-1,\"modHydrolic\":-1,\"modArchCover\":-1,\"interiorColor\":0,\"modDoorSpeaker\":-1,\"modKit47\":-1,\"modCustomTiresR\":false,\"bodyHealth\":961.1371640163806,\"modDashboard\":-1,\"modArmor\":4,\"modSmokeEnabled\":false,\"modDrift\":false,\"windowTint\":-1,\"modFrontWheels\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modOrnaments\":-1,\"modSpoilers\":-1,\"tankHealth\":995.2932781095246,\"modSteeringWheel\":-1,\"dirtLevel\":0.79432823472428,\"modKit19\":-1,\"modAPlate\":-1,\"engineHealth\":956.3711946080349,\"modKit21\":-1,\"modSpeakers\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modBackWheels\":-1,\"wheelSize\":1.0,\"color2\":0,\"wheelColor\":156,\"modFrame\":-1,\"headlightColor\":255,\"model\":-1549019518,\"wheels\":0,\"wheelWidth\":1.0,\"modVanityPlate\":-1,\"modPlateHolder\":-1,\"oilLevel\":4.76596940834568}', '00BBC619', NULL, 'motelgarage', NULL, 49, 957, 962, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(45, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '8144', '22g63', '-2136080393', '{\"liveryRoof\":-1,\"modDoorSpeaker\":-1,\"color2\":134,\"modDrift\":false,\"modFrontBumper\":-1,\"modSteeringWheel\":-1,\"modHood\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modVanityPlate\":-1,\"modHorns\":-1,\"modAPlate\":-1,\"modXenon\":false,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modTank\":-1,\"bodyHealth\":1000.0592475178704,\"modRoof\":-1,\"modEngineBlock\":-1,\"modBrakes\":2,\"modOrnaments\":-1,\"dashboardColor\":0,\"dirtLevel\":0.0,\"extras\":{\"2\":true,\"1\":true},\"modShifterLeavers\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true},\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"modTrunk\":-1,\"modAerials\":-1,\"modRightFender\":-1,\"modWindows\":-1,\"modSideSkirt\":-1,\"modAirFilter\":-1,\"xenonColor\":255,\"windowTint\":-1,\"modSpoilers\":-1,\"modBackWheels\":-1,\"interiorColor\":0,\"modKit47\":-1,\"wheels\":3,\"modKit49\":-1,\"modEngine\":4,\"plate\":\"67KIX980\",\"modCustomTiresR\":false,\"oilLevel\":7.94328234724281,\"modTurbo\":1,\"modSeats\":-1,\"modArchCover\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modCustomTiresF\":false,\"engineHealth\":1000.0592475178704,\"modFender\":-1,\"modSpeakers\":-1,\"modFrame\":-1,\"headlightColor\":255,\"pearlescentColor\":0,\"modArmor\":4,\"modLivery\":-1,\"modRearBumper\":-1,\"modTrimA\":-1,\"wheelWidth\":0.0,\"neonColor\":[255,0,255],\"plateIndex\":4,\"modTrimB\":-1,\"modFrontWheels\":-1,\"model\":-2136080393,\"tankHealth\":1000.0592475178704,\"modKit17\":-1,\"modPlateHolder\":-1,\"modDashboard\":-1,\"modBProofTires\":false,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"wheelColor\":0,\"modTransmission\":3,\"modSuspension\":3,\"modDial\":-1,\"modSmokeEnabled\":false,\"fuelLevel\":78.63849523770387,\"wheelSize\":0.0,\"color1\":134,\"tyreSmokeColor\":[255,255,255],\"modHydrolic\":-1,\"modKit21\":-1,\"modKit19\":-1}', '67KIX980', NULL, 'motelgarage', NULL, 79, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(46, 'license:77704cb9ed6f90e7779dddadcd7ad6ec01ff2a16', '8006', 'npolchal', '1949729657', '{}', '84MOW340', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(47, 'license:77704cb9ed6f90e7779dddadcd7ad6ec01ff2a16', '8006', 'npolvette', '-1109563416', '{}', '89DJN948', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(48, 'license:77704cb9ed6f90e7779dddadcd7ad6ec01ff2a16', '8006', 'npolvette', '-1109563416', '{}', '49YVW012', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(49, 'license:77704cb9ed6f90e7779dddadcd7ad6ec01ff2a16', '8006', 'npolvette', '-1109563416', '{\"modKit47\":-1,\"modLivery\":2,\"modExhaust\":-1,\"modKit21\":-1,\"modSteeringWheel\":-1,\"modFrontWheels\":-1,\"plate\":\"02MWY658\",\"engineHealth\":1000.0592475178704,\"modCustomTiresF\":false,\"headlightColor\":0,\"pearlescentColor\":66,\"modOrnaments\":0,\"bodyHealth\":1000.0592475178704,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSideSkirt\":1,\"tyreSmokeColor\":[255,255,255],\"modKit17\":-1,\"modSpoilers\":2,\"modStruts\":-1,\"modFrame\":-1,\"windowTint\":-1,\"color2\":141,\"modBProofTires\":false,\"extras\":{\"6\":false,\"5\":false,\"4\":false,\"3\":false,\"2\":false,\"1\":true},\"modTurbo\":1,\"modTrimB\":-1,\"modTransmission\":2,\"modAerials\":0,\"xenonColor\":0,\"modAirFilter\":-1,\"modTank\":-1,\"modSuspension\":-1,\"modBrakes\":1,\"wheels\":0,\"modFrontBumper\":1,\"interiorColor\":111,\"dashboardColor\":63,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"oilLevel\":7.14895411251853,\"modVanityPlate\":-1,\"modRoof\":0,\"modHood\":-1,\"modDrift\":false,\"dirtLevel\":10.32626705141565,\"modShifterLeavers\":-1,\"modKit19\":-1,\"modTrunk\":1,\"modArmor\":-1,\"plateIndex\":4,\"wheelWidth\":1.0,\"modGrille\":-1,\"fuelLevel\":63.54625877794252,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modSeats\":-1,\"modWindows\":-1,\"modCustomTiresR\":false,\"modAPlate\":-1,\"modXenon\":1,\"neonColor\":[0,0,0],\"color1\":141,\"modHydrolic\":-1,\"modBackWheels\":-1,\"modEngine\":3,\"modPlateHolder\":-1,\"modHorns\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"wheelColor\":0,\"modDial\":0,\"modArchCover\":-1,\"tankHealth\":1000.0592475178704,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modTrimA\":-1,\"modEngineBlock\":-1,\"model\":-1109563416,\"modRightFender\":-1,\"modKit49\":-1,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"wheelSize\":1.0,\"modSpeakers\":-1,\"modDashboard\":0,\"modSmokeEnabled\":false,\"liveryRoof\":-1,\"modDoorSpeaker\":-1,\"modRearBumper\":0}', '02MWY658', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(50, 'license:77704cb9ed6f90e7779dddadcd7ad6ec01ff2a16', '8006', 'npolchal', '1949729657', '{}', '08YXT367', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(51, 'license:77704cb9ed6f90e7779dddadcd7ad6ec01ff2a16', '8006', 'npolchar', '-1457394361', '{}', '61FXP207', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(52, 'license:77704cb9ed6f90e7779dddadcd7ad6ec01ff2a16', '8006', 'npolchal', '1949729657', '{\"modKit47\":-1,\"modLivery\":2,\"modExhaust\":-1,\"modKit21\":-1,\"modSteeringWheel\":-1,\"modFrontWheels\":-1,\"plate\":\"21FTA006\",\"engineHealth\":1000.0592475178704,\"modCustomTiresF\":false,\"headlightColor\":255,\"pearlescentColor\":66,\"modOrnaments\":0,\"bodyHealth\":1000.0592475178704,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSideSkirt\":-1,\"tyreSmokeColor\":[255,255,255],\"modKit17\":-1,\"modSpoilers\":0,\"modStruts\":-1,\"modFrame\":1,\"windowTint\":1,\"color2\":12,\"modBProofTires\":false,\"extras\":{\"6\":false,\"5\":true,\"4\":false,\"3\":false,\"2\":false,\"1\":true},\"modTurbo\":1,\"modTrimB\":-1,\"modTransmission\":-1,\"modAerials\":-1,\"xenonColor\":255,\"modAirFilter\":-1,\"modTank\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"wheels\":7,\"modFrontBumper\":-1,\"interiorColor\":111,\"dashboardColor\":111,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"oilLevel\":4.76596940834568,\"modVanityPlate\":-1,\"modRoof\":0,\"modHood\":-1,\"modDrift\":false,\"dirtLevel\":7.94328234724281,\"modShifterLeavers\":-1,\"modKit19\":-1,\"modTrunk\":-1,\"modArmor\":-1,\"plateIndex\":4,\"wheelWidth\":1.0,\"modGrille\":-1,\"fuelLevel\":73.07819759463389,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modSeats\":-1,\"modWindows\":-1,\"modCustomTiresR\":false,\"modAPlate\":-1,\"modXenon\":false,\"neonColor\":[0,0,0],\"color1\":131,\"modHydrolic\":-1,\"modBackWheels\":-1,\"modEngine\":-1,\"modPlateHolder\":-1,\"modHorns\":1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"wheelColor\":0,\"modDial\":-1,\"modArchCover\":-1,\"tankHealth\":1000.0592475178704,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modTrimA\":-1,\"modEngineBlock\":-1,\"model\":1949729657,\"modRightFender\":-1,\"modKit49\":-1,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"wheelSize\":1.0,\"modSpeakers\":-1,\"modDashboard\":-1,\"modSmokeEnabled\":false,\"liveryRoof\":-1,\"modDoorSpeaker\":-1,\"modRearBumper\":-1}', '21FTA006', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(53, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'npolvic', '-901056903', '{\"modVanityPlate\":-1,\"oilLevel\":4.76596940834568,\"plate\":\"89FKR013\",\"modOrnaments\":0,\"modTransmission\":-1,\"modDashboard\":0,\"modGrille\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"wheelColor\":0,\"modTrunk\":2,\"modBrakes\":-1,\"modCustomTiresF\":false,\"engineHealth\":1000.0592475178704,\"modHood\":-1,\"modRearBumper\":-1,\"modSideSkirt\":-1,\"modAirFilter\":-1,\"modLivery\":0,\"modBackWheels\":-1,\"wheels\":1,\"headlightColor\":255,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"windowTint\":-1,\"modDrift\":false,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"modKit47\":-1,\"modKit49\":-1,\"modTrimA\":-1,\"modArchCover\":9,\"modKit21\":-1,\"modStruts\":-1,\"model\":-901056903,\"xenonColor\":255,\"color1\":112,\"modBProofTires\":false,\"modAPlate\":-1,\"modSpoilers\":0,\"plateIndex\":4,\"modAerials\":2,\"modCustomTiresR\":false,\"modSmokeEnabled\":false,\"modDoorSpeaker\":-1,\"fuelLevel\":62.75193054321823,\"modSeats\":0,\"neonColor\":[255,0,255],\"modTrimB\":9,\"modXenon\":false,\"neonEnabled\":[false,false,false,false],\"pearlescentColor\":0,\"modRoof\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modHydrolic\":-1,\"liveryRoof\":-1,\"bodyHealth\":1000.0592475178704,\"modHorns\":-1,\"modArmor\":-1,\"modExhaust\":-1,\"color2\":0,\"modFender\":9,\"modFrame\":1,\"modEngine\":-1,\"modSuspension\":-1,\"dashboardColor\":0,\"modKit19\":-1,\"modTank\":9,\"modPlateHolder\":-1,\"modSpeakers\":-1,\"modWindows\":1,\"modDial\":0,\"wheelWidth\":1.0,\"wheelSize\":1.0,\"modSteeringWheel\":-1,\"modRightFender\":9,\"modShifterLeavers\":-1,\"modFrontWheels\":-1,\"tankHealth\":1000.0592475178704,\"extras\":{\"2\":false,\"3\":false,\"4\":false,\"5\":true,\"6\":false,\"7\":false,\"1\":true},\"modTurbo\":1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modFrontBumper\":2,\"modKit17\":-1,\"modEngineBlock\":-1,\"tyreSmokeColor\":[255,255,255],\"interiorColor\":111,\"dirtLevel\":10.32626705141565}', '89FKR013', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(54, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'Sabre GT Turbo Custom', NULL, NULL, 'PDM7589', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(55, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'Deviant', NULL, NULL, 'PDM9970', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(56, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'Brigham', NULL, NULL, 'PDM8976', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(57, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'Brigham', NULL, NULL, 'PDM2649', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(58, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'Brigham', NULL, NULL, 'PDM1794', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(59, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'Brigham', NULL, NULL, 'PDM1390', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(60, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'Brigham', NULL, NULL, 'PDM1273', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(61, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'Brigham', NULL, NULL, 'PDM6246', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(62, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'Brigham', NULL, NULL, 'PDM4150', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(63, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'Brigham', NULL, NULL, 'PDM4067', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(64, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'Brigham', NULL, NULL, 'PDM4660', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(65, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'Brigham', NULL, NULL, 'PDM8825', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(66, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'Brigham', NULL, NULL, 'PDM7190', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(67, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'Mercedes-Benz G-Class', NULL, NULL, 'PDM8076', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(68, 'license:701aca4f5b0133a83b935758d721a0a83deecb40', '4730', '22g63', '-2136080393', '{\"modKit47\":-1,\"modDoorSpeaker\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1,\"wheelSize\":1.0,\"modFrontBumper\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modBProofTires\":false,\"xenonColor\":255,\"modHorns\":-1,\"modLivery\":-1,\"wheels\":3,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modRearBumper\":-1,\"modDashboard\":-1,\"modSmokeEnabled\":false,\"modTrimA\":-1,\"modTransmission\":3,\"modRoof\":-1,\"modSpeakers\":-1,\"modAirFilter\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":1},\"modVanityPlate\":-1,\"model\":-2136080393,\"modDial\":-1,\"modCustomTiresR\":false,\"tankHealth\":1000.0592475178704,\"modSpoilers\":-1,\"modKit17\":-1,\"modTurbo\":1,\"modFender\":-1,\"modGrille\":-1,\"modEngine\":4,\"modHydrolic\":-1,\"modKit19\":-1,\"bodyHealth\":1000.0592475178704,\"interiorColor\":0,\"modSeats\":-1,\"modKit21\":-1,\"modStruts\":-1,\"plate\":\"46DHE997\",\"modShifterLeavers\":-1,\"modArchCover\":-1,\"color2\":134,\"modSideSkirt\":-1,\"neonColor\":[0,0,0],\"modEngineBlock\":-1,\"modDrift\":false,\"modArmor\":4,\"modExhaust\":-1,\"modSteeringWheel\":-1,\"modPlateHolder\":-1,\"liveryRoof\":-1,\"headlightColor\":255,\"modRightFender\":-1,\"extras\":{\"2\":true,\"1\":true},\"modKit49\":-1,\"modAerials\":-1,\"dashboardColor\":0,\"dirtLevel\":0.0,\"modCustomTiresF\":false,\"wheelColor\":0,\"windowTint\":-1,\"tyreSmokeColor\":[255,255,255],\"modTrunk\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":998.75},\"plateIndex\":4,\"modTrimB\":-1,\"fuelLevel\":80.22715170715243,\"neonEnabled\":[false,false,false,false],\"oilLevel\":7.94328234724281,\"modBrakes\":2,\"wheelWidth\":1.0,\"pearlescentColor\":0,\"color1\":134,\"modXenon\":false,\"modWindows\":-1,\"modHood\":-1,\"modOrnaments\":-1,\"modBackWheels\":-1,\"engineHealth\":1000.0592475178704,\"modSuspension\":3,\"modFrame\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true},\"modTank\":-1}', '46DHE997', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(69, 'license:701aca4f5b0133a83b935758d721a0a83deecb40', '4730', '22g63', '-2136080393', '{\"engineHealth\":1000.0592475178704,\"modFrame\":-1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSuspension\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modArmor\":-1,\"modAPlate\":-1,\"interiorColor\":0,\"pearlescentColor\":0,\"modKit19\":-1,\"modWindows\":-1,\"windowTint\":-1,\"modTurbo\":false,\"modExhaust\":-1,\"color1\":134,\"modAerials\":-1,\"tankHealth\":1000.0592475178704,\"modSideSkirt\":-1,\"color2\":134,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modLivery\":-1,\"modPlateHolder\":-1,\"modTrimA\":-1,\"modSpeakers\":-1,\"wheelSize\":0.0,\"modTransmission\":-1,\"modCustomTiresF\":false,\"modKit49\":-1,\"modSteeringWheel\":-1,\"neonEnabled\":[false,false,false,false],\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modDial\":-1,\"modRightFender\":-1,\"modTrimB\":-1,\"modDoorSpeaker\":-1,\"bodyHealth\":1000.0592475178704,\"plate\":\"46YOG783\",\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true},\"modFrontBumper\":-1,\"modSpoilers\":-1,\"headlightColor\":255,\"modGrille\":-1,\"fuelLevel\":79.43282347242814,\"neonColor\":[0,0,0],\"modAirFilter\":-1,\"modKit21\":-1,\"wheels\":3,\"modEngineBlock\":-1,\"modHorns\":-1,\"modArchCover\":-1,\"wheelWidth\":0.0,\"modBackWheels\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modRoof\":-1,\"modKit17\":-1,\"modKit47\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"plateIndex\":4,\"model\":-2136080393,\"modTank\":-1,\"modRearBumper\":-1,\"modXenon\":false,\"modStruts\":-1,\"modFender\":-1,\"modBProofTires\":false,\"xenonColor\":255,\"modDrift\":false,\"oilLevel\":7.94328234724281,\"modBrakes\":-1,\"modFrontWheels\":-1,\"dashboardColor\":0,\"modCustomTiresR\":false,\"extras\":{\"2\":true,\"1\":true},\"dirtLevel\":0.0,\"modTrunk\":-1,\"modSmokeEnabled\":false,\"modVanityPlate\":-1,\"modHood\":-1,\"wheelColor\":0,\"liveryRoof\":-1,\"modDashboard\":-1}', '46YOG783', NULL, 'motelgarage', NULL, 80, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(70, 'license:701aca4f5b0133a83b935758d721a0a83deecb40', '4730', 'thruster', '1489874736', '{\"modTrimA\":-1,\"modArchCover\":-1,\"modTurbo\":false,\"neonEnabled\":[false,false,false,false],\"modSmokeEnabled\":false,\"modKit17\":-1,\"interiorColor\":158,\"modSeats\":-1,\"modSpoilers\":-1,\"modLivery\":-1,\"windowStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"0\":false},\"modSpeakers\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modPlateHolder\":-1,\"oilLevel\":7.94328234724281,\"modCustomTiresR\":false,\"modVanityPlate\":-1,\"modArmor\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modFender\":-1,\"pearlescentColor\":18,\"tankHealth\":989.7329804664547,\"modHydrolic\":-1,\"modRoof\":-1,\"modSteeringWheel\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modAPlate\":-1,\"modTransmission\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modRightFender\":-1,\"model\":1489874736,\"modHood\":-1,\"modTrunk\":-1,\"modBackWheels\":-1,\"modWindows\":-1,\"modKit47\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modBrakes\":-1,\"engineHealth\":961.1371640163806,\"fuelLevel\":27.00715998062557,\"dashboardColor\":134,\"modXenon\":false,\"modGrille\":-1,\"wheelWidth\":0.0,\"modHorns\":-1,\"dirtLevel\":0.0,\"extras\":{\"1\":true,\"2\":true},\"modTrimB\":-1,\"neonColor\":[0,0,0],\"modBProofTires\":true,\"wheelColor\":158,\"liveryRoof\":-1,\"wheels\":0,\"modAirFilter\":-1,\"plateIndex\":0,\"modCustomTiresF\":false,\"modDoorSpeaker\":-1,\"xenonColor\":255,\"modFrontWheels\":-1,\"wheelSize\":0.0,\"color2\":12,\"modDashboard\":-1,\"modFrontBumper\":-1,\"modEngineBlock\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":-1,\"modDial\":-1,\"bodyHealth\":890.4419511259196,\"modDrift\":false,\"plate\":\"08KEO995\",\"modKit49\":-1,\"modKit19\":-1,\"modKit21\":-1,\"color1\":12,\"modAerials\":-1,\"modRearBumper\":-1,\"modEngine\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"headlightColor\":255,\"modSideSkirt\":-1}', '08KEO995', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(71, 'license:4d6d1b11df4370aa1a9ab5ba198ccb8680e18fb4', '2705', 'sc1', '1352136073', '{\"modEngine\":3,\"windowTint\":-1,\"modFrontWheels\":-1,\"modDial\":-1,\"modTransmission\":2,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modEngineBlock\":-1,\"modShifterLeavers\":-1,\"modSpeakers\":-1,\"modArmor\":4,\"modSeats\":-1,\"modKit47\":-1,\"interiorColor\":93,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modLivery\":-1,\"modOrnaments\":-1,\"modTank\":-1,\"modCustomTiresF\":false,\"dashboardColor\":65,\"modPlateHolder\":-1,\"modRoof\":1,\"modKit17\":-1,\"neonColor\":[255,0,255],\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"tankHealth\":1000.0592475178704,\"modAirFilter\":-1,\"engineHealth\":1000.0592475178704,\"modExhaust\":2,\"modTurbo\":1,\"plate\":\"66RWS961\",\"modSmokeEnabled\":false,\"modFender\":-1,\"model\":1352136073,\"modFrontBumper\":1,\"extras\":[],\"modDashboard\":-1,\"modSideSkirt\":0,\"wheelWidth\":1.0,\"liveryRoof\":-1,\"modXenon\":false,\"modArchCover\":-1,\"modSpoilers\":4,\"modHorns\":1,\"wheels\":7,\"pearlescentColor\":18,\"modWindows\":-1,\"modRightFender\":-1,\"modSuspension\":2,\"oilLevel\":4.76596940834568,\"wheelSize\":1.0,\"modTrimA\":-1,\"modBProofTires\":false,\"dirtLevel\":7.14895411251853,\"modGrille\":-1,\"modKit21\":-1,\"modDoorSpeaker\":-1,\"color1\":12,\"plateIndex\":0,\"modRearBumper\":1,\"modStruts\":-1,\"modTrunk\":-1,\"windowStatus\":{\"1\":true,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":true,\"7\":false,\"0\":true},\"modAPlate\":-1,\"neonEnabled\":[false,false,false,false],\"wheelColor\":112,\"tyreSmokeColor\":[255,255,255],\"modVanityPlate\":-1,\"modHydrolic\":-1,\"modTrimB\":-1,\"headlightColor\":255,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modKit19\":-1,\"xenonColor\":255,\"modFrame\":-1,\"modDrift\":false,\"modSteeringWheel\":-1,\"modCustomTiresR\":false,\"modHood\":1,\"bodyHealth\":1000.0592475178704,\"modAerials\":-1,\"color2\":0,\"modBrakes\":2,\"fuelLevel\":62.75193054321823,\"modKit49\":-1,\"modBackWheels\":-1}', '66RWS961', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(72, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '8144', 'npolchar', '-1457394361', '{}', '87IAI044', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(73, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'npolmm', '-826092757', '{}', '44FFJ198', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(74, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'npolcoach', '2017582954', '{}', '27JRO930', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(75, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '8144', '22g63', '-2136080393', '{\"modHood\":-1,\"modAPlate\":-1,\"modFrontWheels\":-1,\"modSmokeEnabled\":false,\"plate\":\"24NPH527\",\"fuelLevel\":80.22715170715243,\"color1\":134,\"wheelWidth\":0.0,\"windowTint\":-1,\"model\":-2136080393,\"modDrift\":false,\"interiorColor\":0,\"bodyHealth\":1000.0592475178704,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modLivery\":-1,\"modEngineBlock\":-1,\"tankHealth\":1000.0592475178704,\"wheelSize\":0.0,\"modKit17\":-1,\"modBrakes\":2,\"modSuspension\":3,\"neonColor\":[255,0,255],\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"neonEnabled\":[false,false,false,false],\"modTrunk\":-1,\"color2\":134,\"modAerials\":-1,\"extras\":{\"2\":true,\"1\":true},\"modAirFilter\":-1,\"modSpoilers\":-1,\"modHydrolic\":-1,\"headlightColor\":255,\"pearlescentColor\":0,\"modRoof\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modRightFender\":-1,\"modXenon\":false,\"modTrimA\":-1,\"wheelColor\":0,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"modKit47\":-1,\"modCustomTiresR\":false,\"xenonColor\":255,\"engineHealth\":1000.0592475178704,\"modCustomTiresF\":false,\"modDashboard\":-1,\"modTrimB\":-1,\"modWindows\":-1,\"liveryRoof\":-1,\"modTurbo\":1,\"modFrontBumper\":-1,\"modTank\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modDial\":-1,\"modSideSkirt\":-1,\"modArmor\":4,\"modFender\":-1,\"modEngine\":4,\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"oilLevel\":7.94328234724281,\"modKit19\":-1,\"modShifterLeavers\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modBackWheels\":-1,\"modBProofTires\":false,\"dirtLevel\":0.0,\"modPlateHolder\":-1,\"wheels\":3,\"plateIndex\":0,\"modSeats\":-1,\"dashboardColor\":0,\"modKit21\":-1,\"modSteeringWheel\":-1,\"modRearBumper\":-1,\"modKit49\":-1,\"modExhaust\":-1,\"modTransmission\":3,\"modHorns\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true}}', '24NPH527', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(76, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '8144', '22g63', '-2136080393', '{\"modBProofTires\":false,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"liveryRoof\":-1,\"modAerials\":-1,\"modKit49\":-1,\"modAirFilter\":-1,\"modFrontWheels\":-1,\"modDial\":-1,\"modGrille\":-1,\"modTrimB\":-1,\"neonColor\":[255,0,255],\"modCustomTiresR\":false,\"modStruts\":-1,\"modFrame\":-1,\"modArmor\":4,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"modSeats\":-1,\"modSteeringWheel\":-1,\"dashboardColor\":0,\"modShifterLeavers\":-1,\"modDrift\":false,\"tankHealth\":1000.0592475178704,\"modWindows\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modKit17\":-1,\"modSpoilers\":-1,\"modDashboard\":-1,\"modOrnaments\":-1,\"interiorColor\":0,\"modHydrolic\":-1,\"modBrakes\":2,\"modCustomTiresF\":false,\"modSuspension\":3,\"plateIndex\":0,\"wheelSize\":1.0,\"modPlateHolder\":-1,\"model\":-2136080393,\"tyreSmokeColor\":[255,255,255],\"modRoof\":-1,\"fuelLevel\":79.43282347242814,\"pearlescentColor\":88,\"wheelWidth\":1.0,\"extras\":{\"1\":true,\"2\":true},\"modEngineBlock\":-1,\"color2\":134,\"modAPlate\":-1,\"modBackWheels\":-1,\"modEngine\":4,\"modKit19\":-1,\"modKit21\":-1,\"xenonColor\":255,\"modSmokeEnabled\":false,\"modTransmission\":3,\"modExhaust\":-1,\"color1\":0,\"oilLevel\":7.94328234724281,\"modTurbo\":1,\"modRightFender\":-1,\"engineHealth\":1000.0592475178704,\"bodyHealth\":979.406713415039,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true},\"neonEnabled\":[false,false,false,false],\"wheels\":3,\"modTrimA\":-1,\"modFender\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"wheelColor\":0,\"plate\":\"06CTW439\",\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modDoorSpeaker\":-1,\"modHorns\":-1,\"modLivery\":-1,\"dirtLevel\":0.0,\"modTrunk\":-1,\"windowTint\":-1,\"modHood\":-1,\"modVanityPlate\":-1,\"modRearBumper\":-1,\"modXenon\":false,\"headlightColor\":255,\"modTank\":-1,\"modKit47\":-1,\"modFrontBumper\":-1,\"modArchCover\":-1}', '06CTW439', NULL, 'motelgarage', NULL, 80, 1000, 980, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(77, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'npolvic', '-901056903', '{}', '80JCW105', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(81, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'npolchal', '1949729657', '{}', '05VTZ935', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(82, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'npolchar', '-1457394361', '{\"modDashboard\":-1,\"modFrontWheels\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modBackWheels\":-1,\"modXenon\":false,\"extras\":{\"2\":true,\"3\":false,\"1\":false,\"6\":false,\"7\":false,\"4\":false,\"5\":false},\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true},\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"neonColor\":[255,0,255],\"modKit17\":-1,\"modSideSkirt\":-1,\"wheelWidth\":1.0,\"dashboardColor\":111,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"modTrunk\":-1,\"wheelColor\":0,\"modGrille\":-1,\"color2\":62,\"modAerials\":-1,\"modStruts\":-1,\"oilLevel\":4.76596940834568,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modBProofTires\":false,\"plateIndex\":4,\"modFender\":-1,\"modArchCover\":-1,\"wheels\":0,\"bodyHealth\":1000.0592475178704,\"modAPlate\":-1,\"modHood\":-1,\"modAirFilter\":-1,\"modSuspension\":-1,\"modRoof\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modEngine\":-1,\"modSpeakers\":-1,\"model\":-1457394361,\"modCustomTiresR\":false,\"modTransmission\":-1,\"plate\":\"63DFL965\",\"modFrontBumper\":-1,\"interiorColor\":111,\"modSeats\":-1,\"modOrnaments\":-1,\"modWindows\":-1,\"modFrame\":-1,\"wheelSize\":1.0,\"modSmokeEnabled\":false,\"modKit19\":-1,\"modSpoilers\":-1,\"modPlateHolder\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modEngineBlock\":-1,\"tyreSmokeColor\":[255,255,255],\"modCustomTiresF\":false,\"dirtLevel\":3.9716411736214,\"headlightColor\":255,\"xenonColor\":255,\"modVanityPlate\":-1,\"modRightFender\":-1,\"modSteeringWheel\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"fuelLevel\":29.39014468479841,\"modTurbo\":false,\"modDial\":-1,\"modHydrolic\":-1,\"pearlescentColor\":0,\"modKit21\":-1,\"modKit47\":-1,\"modLivery\":-1,\"modDoorSpeaker\":-1,\"modTrimA\":-1,\"color1\":62,\"modTank\":-1,\"tankHealth\":1000.0592475178704,\"modHorns\":-1,\"windowTint\":-1,\"modKit49\":-1,\"engineHealth\":1000.0592475178704,\"liveryRoof\":-1,\"modDrift\":false,\"neonEnabled\":[false,false,false,false]}', '63DFL965', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(83, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'npolvic', '-901056903', '{\"modBackWheels\":-1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"modDashboard\":0,\"modTrimB\":9,\"modExhaust\":-1,\"color2\":62,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modFender\":9,\"modSpeakers\":-1,\"tyreSmokeColor\":[255,255,255],\"modSeats\":0,\"fuelLevel\":63.54625877794252,\"modSpoilers\":0,\"modKit17\":-1,\"dashboardColor\":111,\"model\":-901056903,\"modRearBumper\":-1,\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"modTrimA\":-1,\"modTurbo\":1,\"modOrnaments\":0,\"headlightColor\":255,\"modSteeringWheel\":-1,\"modCustomTiresF\":false,\"modTank\":9,\"pearlescentColor\":0,\"modLivery\":11,\"windowTint\":-1,\"dirtLevel\":6.35462587779425,\"modDrift\":false,\"modHydrolic\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modRoof\":-1,\"modEngineBlock\":-1,\"modCustomTiresR\":false,\"interiorColor\":111,\"modAPlate\":-1,\"modKit49\":-1,\"modFrontWheels\":-1,\"modArchCover\":9,\"extras\":{\"1\":true,\"7\":false,\"6\":false,\"5\":false,\"4\":false,\"3\":false,\"2\":true},\"modFrontBumper\":2,\"modGrille\":-1,\"modSuspension\":-1,\"wheels\":1,\"modTrunk\":2,\"liveryRoof\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"modPlateHolder\":-1,\"wheelSize\":1.0,\"modSideSkirt\":-1,\"modKit19\":-1,\"color1\":62,\"modDial\":0,\"modWindows\":-1,\"modAerials\":2,\"modArmor\":4,\"modStruts\":-1,\"modBProofTires\":false,\"modBrakes\":-1,\"modEngine\":-1,\"modXenon\":false,\"tankHealth\":1000.0592475178704,\"modFrame\":1,\"bodyHealth\":1000.0592475178704,\"plate\":\"47MZF317\",\"modShifterLeavers\":-1,\"modKit47\":-1,\"wheelWidth\":1.0,\"modAirFilter\":-1,\"modVanityPlate\":-1,\"modRightFender\":9,\"oilLevel\":4.76596940834568,\"modHorns\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"engineHealth\":1000.0592475178704,\"neonColor\":[255,0,255],\"modKit21\":-1,\"xenonColor\":255,\"plateIndex\":4,\"wheelColor\":0,\"modSmokeEnabled\":false,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false}}', '47MZF317', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0);
INSERT INTO `player_vehicles` (`id`, `license`, `citizenid`, `vehicle`, `hash`, `mods`, `plate`, `fakeplate`, `garage`, `image`, `fuel`, `engine`, `body`, `state`, `depotprice`, `drivingdistance`, `noslevel`, `hasnitro`, `status`, `balance`, `paymentamount`, `paymentsleft`, `financetime`) VALUES
(84, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'npolchar', '-1457394361', '{\"neonColor\":[255,0,255],\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modCustomTiresF\":false,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"extras\":{\"5\":true,\"6\":false,\"3\":false,\"4\":false,\"1\":true,\"2\":false,\"7\":false},\"modAPlate\":-1,\"xenonColor\":255,\"modTrimA\":-1,\"modFrontBumper\":1,\"modKit17\":-1,\"tankHealth\":4000.2369900714818,\"pearlescentColor\":0,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"color1\":112,\"modHydrolic\":-1,\"modFrame\":-1,\"modBProofTires\":false,\"modBackWheels\":-1,\"modWindows\":-1,\"modEngine\":-1,\"modAirFilter\":-1,\"tyreSmokeColor\":[255,255,255],\"plate\":\"45TSM297\",\"windowTint\":-1,\"bodyHealth\":1000.0592475178704,\"modFrontWheels\":-1,\"dirtLevel\":0.0,\"liveryRoof\":-1,\"fuelLevel\":57.98596113487255,\"modSeats\":-1,\"modShifterLeavers\":-1,\"modTurbo\":1,\"headlightColor\":255,\"modTank\":9,\"color2\":0,\"modDial\":0,\"modLivery\":0,\"oilLevel\":4.76596940834568,\"modKit21\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modStruts\":-1,\"wheelColor\":0,\"modSuspension\":-1,\"interiorColor\":111,\"modKit19\":-1,\"modTrunk\":-1,\"modDrift\":false,\"modArchCover\":9,\"modSteeringWheel\":-1,\"model\":-1457394361,\"modDoorSpeaker\":-1,\"neonEnabled\":[false,false,false,false],\"modBrakes\":-1,\"modTransmission\":-1,\"modExhaust\":0,\"modTrimB\":9,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true},\"modFender\":-1,\"modCustomTiresR\":false,\"modXenon\":false,\"wheels\":0,\"modKit47\":-1,\"wheelWidth\":1.0,\"modDashboard\":0,\"modOrnaments\":0,\"modSmokeEnabled\":false,\"modArmor\":4,\"modRearBumper\":-1,\"engineHealth\":1000.0592475178704,\"modRightFender\":-1,\"plateIndex\":4,\"modRoof\":-1,\"modHood\":-1,\"modAerials\":-1,\"modKit49\":-1,\"modSideSkirt\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSpoilers\":2,\"wheelSize\":1.0,\"modEngineBlock\":-1,\"modHorns\":-1,\"modGrille\":-1,\"modPlateHolder\":-1,\"dashboardColor\":111}', '45TSM297', NULL, 'pdgarage', NULL, 58, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(85, 'license:ce5a95d8d8bcca13d185b0091b75e0bf6068858d', '4955', 'npolchar', '-1457394361', '{\"modBackWheels\":-1,\"modKit49\":-1,\"modDashboard\":0,\"tyreSmokeColor\":[255,255,255],\"modTrunk\":-1,\"modBProofTires\":false,\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modKit19\":-1,\"modKit47\":-1,\"windowTint\":1,\"modKit21\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true},\"modStruts\":-1,\"extras\":{\"6\":false,\"5\":false,\"7\":false,\"2\":false,\"1\":true,\"4\":false,\"3\":false},\"modGrille\":-1,\"modDrift\":false,\"modHydrolic\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modEngineBlock\":-1,\"headlightColor\":255,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"wheels\":0,\"modKit17\":-1,\"modWindows\":-1,\"bodyHealth\":1000.0592475178704,\"wheelColor\":0,\"modRightFender\":-1,\"modVanityPlate\":-1,\"modRearBumper\":-1,\"modPlateHolder\":-1,\"color1\":112,\"modTransmission\":-1,\"wheelSize\":1.0,\"model\":-1457394361,\"pearlescentColor\":0,\"modHood\":-1,\"modOrnaments\":0,\"tankHealth\":1000.0592475178704,\"wheelWidth\":1.0,\"modFrontWheels\":-1,\"modEngine\":-1,\"modCustomTiresR\":false,\"modShifterLeavers\":-1,\"modSeats\":-1,\"dirtLevel\":3.17731293889712,\"liveryRoof\":-1,\"modArchCover\":3,\"modCustomTiresF\":false,\"modSideSkirt\":-1,\"modSpeakers\":-1,\"modAerials\":-1,\"fuelLevel\":61.95760230849395,\"modRoof\":0,\"modDoorSpeaker\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modXenon\":false,\"dashboardColor\":0,\"oilLevel\":4.76596940834568,\"modSpoilers\":2,\"neonColor\":[255,0,255],\"modLivery\":0,\"modSmokeEnabled\":false,\"engineHealth\":1000.0592475178704,\"interiorColor\":111,\"modTurbo\":1,\"modBrakes\":-1,\"plateIndex\":4,\"modTrimB\":9,\"modFender\":-1,\"color2\":0,\"modAPlate\":-1,\"xenonColor\":255,\"modTank\":6,\"modFrame\":-1,\"modTrimA\":-1,\"modFrontBumper\":1,\"modAirFilter\":-1,\"modArmor\":4,\"modExhaust\":-1,\"modSteeringWheel\":-1,\"modDial\":0,\"modSuspension\":-1,\"plate\":\"43CZU351\"}', '43CZU351', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(86, 'license:ce5a95d8d8bcca13d185b0091b75e0bf6068858d', '4955', 'npolvette', '-1109563416', '{\"modBackWheels\":-1,\"modKit49\":-1,\"modDashboard\":0,\"tyreSmokeColor\":[255,255,255],\"modTrunk\":2,\"modBProofTires\":false,\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modKit19\":-1,\"modKit47\":-1,\"windowTint\":-1,\"modKit21\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"modStruts\":-1,\"extras\":{\"6\":false,\"5\":false,\"2\":false,\"1\":true,\"4\":false,\"3\":false},\"modGrille\":-1,\"modDrift\":false,\"modHydrolic\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modEngineBlock\":-1,\"headlightColor\":255,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"wheels\":0,\"modKit17\":-1,\"modWindows\":-1,\"bodyHealth\":1000.0592475178704,\"wheelColor\":0,\"modRightFender\":-1,\"modVanityPlate\":-1,\"modRearBumper\":-1,\"modPlateHolder\":-1,\"color1\":141,\"modTransmission\":-1,\"wheelSize\":1.0,\"model\":-1109563416,\"pearlescentColor\":66,\"modHood\":-1,\"modOrnaments\":0,\"tankHealth\":1000.0592475178704,\"wheelWidth\":1.0,\"modFrontWheels\":-1,\"modEngine\":-1,\"modCustomTiresR\":false,\"modShifterLeavers\":-1,\"modSeats\":-1,\"dirtLevel\":6.35462587779425,\"liveryRoof\":-1,\"modArchCover\":3,\"modCustomTiresF\":false,\"modSideSkirt\":-1,\"modSpeakers\":-1,\"modAerials\":-1,\"fuelLevel\":63.54625877794252,\"modRoof\":0,\"modDoorSpeaker\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modXenon\":false,\"dashboardColor\":63,\"oilLevel\":7.14895411251853,\"modSpoilers\":2,\"neonColor\":[255,0,255],\"modLivery\":2,\"modSmokeEnabled\":false,\"engineHealth\":1000.0592475178704,\"interiorColor\":111,\"modTurbo\":1,\"modBrakes\":-1,\"plateIndex\":4,\"modTrimB\":9,\"modFender\":-1,\"color2\":141,\"modAPlate\":-1,\"xenonColor\":255,\"modTank\":6,\"modFrame\":1,\"modTrimA\":-1,\"modFrontBumper\":0,\"modAirFilter\":-1,\"modArmor\":4,\"modExhaust\":-1,\"modSteeringWheel\":-1,\"modDial\":0,\"modSuspension\":-1,\"plate\":\"27QIM243\"}', '27QIM243', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(87, 'license:ce5a95d8d8bcca13d185b0091b75e0bf6068858d', '4955', 'npolexp', '719025956', '{}', '88LQQ771', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(88, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '2833', 'npolvic', '-901056903', '{\"windowTint\":2,\"modXenon\":1,\"neonColor\":[255,0,255],\"modLivery\":0,\"modCustomTiresF\":false,\"neonEnabled\":[false,false,false,false],\"liveryRoof\":-1,\"modAPlate\":-1,\"modKit19\":-1,\"modGrille\":-1,\"modShifterLeavers\":-1,\"modWindows\":-1,\"modDoorSpeaker\":-1,\"modArmor\":4,\"modEngine\":4,\"modTransmission\":3,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"modDial\":-1,\"modAirFilter\":-1,\"modEngineBlock\":-1,\"dashboardColor\":111,\"modRearBumper\":-1,\"modOrnaments\":-1,\"modRightFender\":-1,\"modKit47\":-1,\"modHorns\":-1,\"modSmokeEnabled\":false,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"model\":-901056903,\"modTurbo\":1,\"fuelLevel\":65.13491524739108,\"plateIndex\":4,\"interiorColor\":111,\"modArchCover\":8,\"oilLevel\":4.76596940834568,\"modFrontWheels\":-1,\"modTrimA\":-1,\"modDrift\":false,\"extras\":{\"7\":false,\"6\":false,\"5\":false,\"4\":false,\"3\":false,\"2\":false,\"1\":true},\"modSteeringWheel\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSuspension\":3,\"modStruts\":-1,\"modKit17\":-1,\"modSideSkirt\":-1,\"modTrunk\":-1,\"modTank\":2,\"modTrimB\":9,\"modFrame\":-1,\"modFrontBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"xenonColor\":255,\"modKit49\":-1,\"modFender\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modVanityPlate\":-1,\"color1\":112,\"wheelSize\":1.0,\"modSpoilers\":0,\"modAerials\":-1,\"wheelWidth\":1.0,\"engineHealth\":1000.0592475178704,\"modRoof\":-1,\"modDashboard\":-1,\"wheelColor\":0,\"headlightColor\":255,\"wheels\":1,\"modHood\":-1,\"modSeats\":-1,\"modBrakes\":2,\"modCustomTiresR\":false,\"dirtLevel\":0.0,\"bodyHealth\":1000.0592475178704,\"modBackWheels\":-1,\"modSpeakers\":-1,\"pearlescentColor\":0,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modBProofTires\":false,\"modPlateHolder\":-1,\"tankHealth\":1000.0592475178704,\"color2\":0,\"plate\":\"27NKE356\",\"modKit21\":-1,\"modHydrolic\":-1,\"modExhaust\":-1}', '27NKE356', NULL, 'pdgarage', NULL, 65, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(89, 'license:022b01f646ce2dc3ddff1cebff61bac6108fa817', '6506', 'dubsta2', '-394074634', '{\"model\":-394074634,\"modSeats\":-1,\"modKit49\":-1,\"liveryRoof\":-1,\"modLivery\":-1,\"modTank\":-1,\"xenonColor\":255,\"color1\":158,\"modRightFender\":-1,\"modDoorSpeaker\":-1,\"modKit47\":-1,\"bodyHealth\":994.4989498748004,\"modHorns\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modGrille\":-1,\"modPlateHolder\":-1,\"modKit19\":-1,\"wheelWidth\":0.63399744033813,\"modHood\":1,\"headlightColor\":255,\"modStruts\":-1,\"tireHealth\":{\"1\":998.691162109375,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"extras\":{\"11\":false,\"12\":true},\"modTransmission\":-1,\"windowTint\":-1,\"modDial\":-1,\"engineHealth\":992.9102934053518,\"modKit21\":-1,\"modXenon\":false,\"modBrakes\":-1,\"tyreSmokeColor\":[255,255,255],\"modHydrolic\":-1,\"modArchCover\":-1,\"modWindows\":-1,\"wheels\":3,\"modFrame\":-1,\"modEngineBlock\":-1,\"tankHealth\":999.2649192831461,\"modDashboard\":-1,\"pearlescentColor\":89,\"oilLevel\":4.76596940834568,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSpoilers\":-1,\"modVanityPlate\":-1,\"modFrontWheels\":7,\"modAirFilter\":-1,\"dirtLevel\":0.0,\"modFender\":0,\"modTurbo\":false,\"fuelLevel\":61.16327407376967,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modDrift\":false,\"neonEnabled\":[false,false,false,false],\"modBackWheels\":-1,\"modTrimA\":-1,\"modCustomTiresF\":false,\"color2\":89,\"plate\":\"28YHV999\",\"wheelColor\":158,\"modFrontBumper\":1,\"modRearBumper\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"modTrunk\":-1,\"modExhaust\":0,\"modSmokeEnabled\":false,\"modEngine\":-1,\"modSuspension\":3,\"modSteeringWheel\":-1,\"modOrnaments\":-1,\"modBProofTires\":false,\"modRoof\":1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"wheelSize\":0.88900005817413,\"modAerials\":-1,\"modCustomTiresR\":false,\"interiorColor\":0,\"plateIndex\":0,\"modKit17\":-1,\"modArmor\":-1,\"dashboardColor\":0,\"modSideSkirt\":-1,\"modTrimB\":-1}', '28YHV999', NULL, 'motelgarage', NULL, 61, 994, 995, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(90, 'license:ce5a95d8d8bcca13d185b0091b75e0bf6068858d', '4955', 'npolchar', '-1457394361', '{\"pearlescentColor\":0,\"modEngineBlock\":-1,\"tankHealth\":1000.0592475178704,\"plate\":\"86HAN008\",\"modVanityPlate\":-1,\"modEngine\":-1,\"modSpoilers\":2,\"modFrontWheels\":-1,\"interiorColor\":111,\"bodyHealth\":1000.0592475178704,\"liveryRoof\":-1,\"plateIndex\":4,\"color1\":112,\"oilLevel\":4.76596940834568,\"modRightFender\":-1,\"modFrame\":-1,\"modSideSkirt\":-1,\"wheels\":0,\"modCustomTiresR\":false,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"modTurbo\":1,\"neonColor\":[255,0,255],\"modLivery\":0,\"modSmokeEnabled\":false,\"modSteeringWheel\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true},\"modTrunk\":-1,\"model\":-1457394361,\"modTransmission\":-1,\"modTank\":6,\"engineHealth\":1000.0592475178704,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modAerials\":-1,\"modFender\":-1,\"modKit19\":-1,\"modOrnaments\":0,\"modBrakes\":-1,\"modWindows\":-1,\"wheelSize\":1.0,\"modShifterLeavers\":-1,\"modDashboard\":0,\"modCustomTiresF\":false,\"modStruts\":-1,\"modBProofTires\":false,\"modSuspension\":-1,\"modArmor\":4,\"modDrift\":false,\"wheelWidth\":1.0,\"extras\":{\"1\":true,\"6\":false,\"7\":false,\"4\":true,\"5\":false,\"2\":false,\"3\":false},\"modTrimA\":-1,\"modKit49\":-1,\"modHorns\":-1,\"wheelColor\":0,\"modSeats\":-1,\"modDoorSpeaker\":-1,\"modKit17\":-1,\"neonEnabled\":[false,false,false,false],\"xenonColor\":255,\"headlightColor\":255,\"dashboardColor\":0,\"modKit47\":-1,\"modHydrolic\":-1,\"modXenon\":1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modAPlate\":-1,\"modTrimB\":9,\"modArchCover\":3,\"dirtLevel\":0.0,\"modKit21\":-1,\"modDial\":0,\"modHood\":-1,\"tyreSmokeColor\":[255,255,255],\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modRoof\":0,\"modSpeakers\":-1,\"modGrille\":-1,\"modFrontBumper\":1,\"modBackWheels\":-1,\"windowTint\":-1,\"modRearBumper\":-1,\"color2\":0,\"fuelLevel\":64.3405870126668,\"modExhaust\":0}', '86HAN008', NULL, 'pdgarage', NULL, 64, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(91, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '2833', 'sultanrs', '-295689028', '{\"modAirFilter\":-1,\"modAPlate\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"wheels\":0,\"modSuspension\":3,\"modKit21\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modDashboard\":-1,\"tankHealth\":1000.0592475178704,\"modRoof\":-1,\"color2\":64,\"liveryRoof\":-1,\"modTrunk\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"modCustomTiresR\":false,\"modDrift\":false,\"modSteeringWheel\":-1,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modRearBumper\":-1,\"modSpoilers\":-1,\"modSeats\":-1,\"modTrimA\":-1,\"modTransmission\":3,\"engineHealth\":1000.0592475178704,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modArmor\":4,\"modHydrolic\":-1,\"modLivery\":-1,\"modStruts\":-1,\"modTank\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modBProofTires\":false,\"fuelLevel\":65.13491524739108,\"headlightColor\":255,\"modKit49\":-1,\"modVanityPlate\":-1,\"modTurbo\":1,\"plate\":\"63YDZ419\",\"wheelWidth\":0.0,\"modDoorSpeaker\":-1,\"bodyHealth\":1000.0592475178704,\"modXenon\":false,\"modFrame\":-1,\"modAerials\":-1,\"modArchCover\":-1,\"color1\":64,\"modKit17\":-1,\"tyreSmokeColor\":[255,255,255],\"modTrimB\":-1,\"modEngineBlock\":-1,\"modExhaust\":-1,\"extras\":[],\"modKit47\":-1,\"wheelSize\":0.0,\"windowTint\":-1,\"modRightFender\":-1,\"xenonColor\":255,\"modCustomTiresF\":false,\"modHorns\":-1,\"oilLevel\":4.76596940834568,\"wheelColor\":158,\"modPlateHolder\":-1,\"modKit19\":-1,\"neonEnabled\":[false,false,false,false],\"modEngine\":4,\"modHood\":-1,\"modShifterLeavers\":-1,\"modFender\":-1,\"modSideSkirt\":-1,\"neonColor\":[255,0,255],\"modDial\":-1,\"dashboardColor\":134,\"modWindows\":-1,\"pearlescentColor\":70,\"modSpeakers\":-1,\"interiorColor\":31,\"dirtLevel\":0.0,\"plateIndex\":0,\"model\":-295689028,\"modSmokeEnabled\":false,\"modBrakes\":2,\"modFrontBumper\":-1}', '63YDZ419', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(92, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '0748', 'sultanrs', '-295689028', '{\"bodyHealth\":1000.0592475178704,\"modExhaust\":-1,\"modOrnaments\":-1,\"modLivery\":-1,\"wheelSize\":0.0,\"modSuspension\":3,\"interiorColor\":31,\"wheels\":0,\"modWindows\":-1,\"modSeats\":-1,\"modAPlate\":-1,\"modDoorSpeaker\":-1,\"modRearBumper\":-1,\"engineHealth\":1000.0592475178704,\"modStruts\":-1,\"wheelWidth\":0.0,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"modBrakes\":2,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSpoilers\":-1,\"tyreSmokeColor\":[255,255,255],\"modTank\":-1,\"color1\":64,\"liveryRoof\":-1,\"modSideSkirt\":-1,\"modCustomTiresF\":false,\"modTurbo\":1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modKit17\":-1,\"modShifterLeavers\":-1,\"modKit49\":-1,\"dashboardColor\":134,\"windowTint\":-1,\"pearlescentColor\":70,\"modArchCover\":-1,\"modEngine\":4,\"modDashboard\":-1,\"modRoof\":-1,\"dirtLevel\":0.0,\"modKit19\":-1,\"modFrontBumper\":-1,\"modFender\":-1,\"modSmokeEnabled\":false,\"modSteeringWheel\":-1,\"modFrontWheels\":-1,\"model\":-295689028,\"modAirFilter\":-1,\"modDial\":-1,\"wheelColor\":158,\"modTrimA\":-1,\"modPlateHolder\":-1,\"modXenon\":false,\"color2\":64,\"plateIndex\":0,\"modAerials\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modFrame\":-1,\"xenonColor\":255,\"modGrille\":-1,\"modVanityPlate\":-1,\"neonColor\":[255,0,255],\"modRightFender\":-1,\"tankHealth\":1000.0592475178704,\"modBProofTires\":false,\"plate\":\"40POQ358\",\"modKit47\":-1,\"modArmor\":4,\"modHood\":-1,\"oilLevel\":4.76596940834568,\"modHorns\":-1,\"modTrunk\":-1,\"modTransmission\":3,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modHydrolic\":-1,\"modTrimB\":-1,\"modSpeakers\":-1,\"neonEnabled\":[false,false,false,false],\"extras\":[],\"modKit21\":-1,\"modCustomTiresR\":false,\"modBackWheels\":-1,\"modEngineBlock\":-1,\"modDrift\":false,\"headlightColor\":255,\"fuelLevel\":65.13491524739108}', '40POQ358', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(93, 'license:b643acec3ad84a90b4dfbc6f42e0ef48316b866e', '6253', 'npolchar', '-1457394361', '{\"modKit19\":-1,\"modAPlate\":-1,\"modArmor\":-1,\"modCustomTiresF\":1,\"engineHealth\":1000.0592475178704,\"modTrimA\":-1,\"modDoorSpeaker\":-1,\"modSuspension\":-1,\"headlightColor\":255,\"neonEnabled\":[false,false,false,false],\"pearlescentColor\":64,\"modLivery\":2,\"modBrakes\":-1,\"modWindows\":1,\"modDrift\":false,\"xenonColor\":255,\"modBProofTires\":false,\"plateIndex\":1,\"modKit21\":-1,\"neonColor\":[0,0,0],\"modTurbo\":1,\"modSteeringWheel\":-1,\"windowTint\":2,\"tyreSmokeColor\":[255,255,255],\"modKit49\":-1,\"modSeats\":-1,\"modEngine\":-1,\"modDashboard\":0,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"dashboardColor\":111,\"bodyHealth\":1000.0592475178704,\"modBackWheels\":-1,\"modStruts\":-1,\"oilLevel\":4.76596940834568,\"modDial\":0,\"wheelWidth\":0.53275150060653,\"modFrontBumper\":1,\"modHorns\":-1,\"wheelColor\":0,\"modCustomTiresR\":false,\"modOrnaments\":-1,\"extras\":{\"6\":false,\"7\":true,\"4\":true,\"5\":true,\"2\":true,\"3\":true,\"1\":true},\"fuelLevel\":64.3405870126668,\"modKit47\":-1,\"modRoof\":-1,\"interiorColor\":111,\"modTank\":2,\"tankHealth\":4000.2369900714818,\"wheels\":0,\"modKit17\":-1,\"color2\":0,\"liveryRoof\":-1,\"modSideSkirt\":-1,\"modFrontWheels\":15,\"dirtLevel\":7.94328234724281,\"plate\":\"47KLC955\",\"modAirFilter\":-1,\"modSpeakers\":-1,\"modAerials\":-1,\"modSmokeEnabled\":false,\"modShifterLeavers\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modTransmission\":-1,\"wheelSize\":0.74102234840393,\"modEngineBlock\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"model\":-1457394361,\"modRearBumper\":-1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"color1\":0,\"modGrille\":-1,\"modArchCover\":1,\"modFender\":-1,\"modXenon\":false,\"modHood\":-1,\"modTrimB\":5,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modHydrolic\":-1,\"modVanityPlate\":-1,\"modTrunk\":-1,\"modExhaust\":-1,\"modSpoilers\":2,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true},\"modFrame\":-1}', '47KLC955', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(94, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '0748', 'sultanrs', '-295689028', '{\"modFrontWheels\":-1,\"modExhaust\":-1,\"pearlescentColor\":70,\"plate\":\"83NQN656\",\"wheelSize\":0.0,\"modSuspension\":3,\"interiorColor\":31,\"wheels\":0,\"modWindows\":-1,\"modSeats\":-1,\"modAPlate\":-1,\"modDoorSpeaker\":-1,\"modKit47\":-1,\"engineHealth\":1000.0592475178704,\"modStruts\":-1,\"wheelWidth\":0.0,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"modBrakes\":2,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSpoilers\":-1,\"modSteeringWheel\":-1,\"modTank\":-1,\"color1\":64,\"liveryRoof\":-1,\"modSideSkirt\":-1,\"modCustomTiresF\":false,\"modTurbo\":1,\"modArmor\":4,\"modKit17\":-1,\"modShifterLeavers\":-1,\"modKit49\":-1,\"dashboardColor\":134,\"windowTint\":-1,\"color2\":64,\"modAirFilter\":-1,\"modEngine\":4,\"tyreSmokeColor\":[255,255,255],\"modRoof\":-1,\"dirtLevel\":0.0,\"modKit19\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modDrift\":false,\"modFrame\":-1,\"modEngineBlock\":-1,\"model\":-295689028,\"modFrontBumper\":-1,\"modDial\":-1,\"wheelColor\":158,\"modRearBumper\":-1,\"headlightColor\":255,\"modTrimB\":-1,\"modVanityPlate\":-1,\"modHood\":-1,\"modAerials\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modBackWheels\":-1,\"xenonColor\":255,\"modPlateHolder\":-1,\"plateIndex\":0,\"neonColor\":[255,0,255],\"modRightFender\":-1,\"tankHealth\":1000.0592475178704,\"modBProofTires\":false,\"modGrille\":-1,\"bodyHealth\":1000.0592475178704,\"modArchCover\":-1,\"modSmokeEnabled\":false,\"oilLevel\":4.76596940834568,\"modHorns\":-1,\"modTrunk\":-1,\"modTransmission\":3,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modHydrolic\":-1,\"modDashboard\":-1,\"modSpeakers\":-1,\"neonEnabled\":[false,false,false,false],\"extras\":[],\"modKit21\":-1,\"modCustomTiresR\":false,\"modXenon\":false,\"modOrnaments\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modLivery\":-1,\"fuelLevel\":65.13491524739108}', '83NQN656', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(95, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '0748', 'drafter', '686471183', '{\"modDoorSpeaker\":-1,\"modHydrolic\":-1,\"modKit47\":-1,\"modStruts\":-1,\"modAPlate\":-1,\"modKit17\":-1,\"modSuspension\":4,\"extras\":[],\"modOrnaments\":-1,\"modFrontBumper\":-1,\"dirtLevel\":0.79432823472428,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSeats\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modArmor\":4,\"pearlescentColor\":4,\"plate\":\"04XGJ054\",\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":997.5},\"modEngine\":3,\"engineHealth\":999.2649192831461,\"modSpoilers\":-1,\"modAirFilter\":-1,\"modVanityPlate\":-1,\"wheelSize\":0.0,\"xenonColor\":255,\"modEngineBlock\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modXenon\":false,\"modFender\":-1,\"modTrimB\":-1,\"modCustomTiresR\":false,\"modFrame\":-1,\"modSteeringWheel\":-1,\"oilLevel\":6.35462587779425,\"modRoof\":-1,\"modWindows\":-1,\"modKit49\":-1,\"liveryRoof\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modKit21\":-1,\"modKit19\":-1,\"modSideSkirt\":-1,\"windowTint\":-1,\"modGrille\":-1,\"modTrimA\":-1,\"modTurbo\":1,\"tyreSmokeColor\":[255,255,255],\"wheelColor\":111,\"modArchCover\":-1,\"modSmokeEnabled\":false,\"modDial\":-1,\"modBProofTires\":false,\"modShifterLeavers\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modSpeakers\":-1,\"modBackWheels\":-1,\"modDashboard\":-1,\"dashboardColor\":111,\"modRearBumper\":-1,\"interiorColor\":111,\"modHorns\":-1,\"modDrift\":false,\"bodyHealth\":957.1655228427592,\"modTank\":-1,\"modAerials\":-1,\"wheels\":7,\"color2\":0,\"modTrunk\":-1,\"plateIndex\":0,\"model\":686471183,\"modTransmission\":3,\"modExhaust\":-1,\"headlightColor\":255,\"modBrakes\":2,\"wheelWidth\":0.0,\"modRightFender\":-1,\"color1\":9,\"fuelLevel\":53.21999172652686,\"modFrontWheels\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"modHood\":-1,\"tankHealth\":994.4989498748004,\"modCustomTiresF\":false}', '04XGJ054', NULL, 'motelgarage', NULL, 53, 1000, 957, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(96, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '0748', 'sultanrs', '-295689028', '{\"modFrontWheels\":-1,\"modExhaust\":-1,\"pearlescentColor\":70,\"headlightColor\":255,\"wheelSize\":0.0,\"modSuspension\":3,\"interiorColor\":31,\"wheels\":0,\"modWindows\":-1,\"modSeats\":-1,\"modDrift\":false,\"modDoorSpeaker\":-1,\"modRearBumper\":-1,\"engineHealth\":1000.0592475178704,\"modStruts\":-1,\"wheelWidth\":0.0,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"modBrakes\":2,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSpoilers\":-1,\"tyreSmokeColor\":[255,255,255],\"modTank\":-1,\"color1\":64,\"liveryRoof\":-1,\"modSideSkirt\":-1,\"modCustomTiresF\":false,\"modTurbo\":1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modPlateHolder\":-1,\"modShifterLeavers\":-1,\"modKit49\":-1,\"dashboardColor\":134,\"windowTint\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modEngine\":4,\"modFrontBumper\":-1,\"modRoof\":-1,\"dirtLevel\":0.0,\"modKit19\":-1,\"plate\":\"62BDS162\",\"modFender\":-1,\"modSteeringWheel\":-1,\"wheelColor\":158,\"modLivery\":-1,\"model\":-295689028,\"modArmor\":4,\"modDial\":-1,\"bodyHealth\":1000.0592475178704,\"plateIndex\":0,\"modTrimA\":-1,\"modTrimB\":-1,\"modVanityPlate\":-1,\"modXenon\":false,\"modAerials\":-1,\"modAPlate\":-1,\"modFrame\":-1,\"xenonColor\":255,\"modOrnaments\":-1,\"color2\":64,\"neonColor\":[255,0,255],\"modRightFender\":-1,\"tankHealth\":1000.0592475178704,\"modBProofTires\":false,\"modArchCover\":-1,\"modGrille\":-1,\"modDashboard\":-1,\"neonEnabled\":[false,false,false,false],\"oilLevel\":4.76596940834568,\"modHorns\":-1,\"modTrunk\":-1,\"modTransmission\":3,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modHydrolic\":-1,\"modEngineBlock\":-1,\"modSpeakers\":-1,\"modHood\":-1,\"extras\":[],\"modBackWheels\":-1,\"modCustomTiresR\":false,\"modKit17\":-1,\"modKit21\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modKit47\":-1,\"fuelLevel\":65.13491524739108}', '62BDS162', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(97, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '0748', 'npolvette', '-1109563416', '{\"modCustomTiresF\":false,\"modHydrolic\":-1,\"modKit47\":-1,\"modStruts\":-1,\"modAPlate\":-1,\"modKit17\":-1,\"modSuspension\":3,\"model\":-1109563416,\"modOrnaments\":0,\"modFrontBumper\":-1,\"dirtLevel\":0.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSeats\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modArmor\":4,\"pearlescentColor\":66,\"plate\":\"84QEU811\",\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modEngine\":-1,\"engineHealth\":995.2932781095246,\"modSpoilers\":1,\"fuelLevel\":64.3405870126668,\"modVanityPlate\":-1,\"wheelSize\":1.0,\"xenonColor\":0,\"modEngineBlock\":-1,\"color2\":0,\"modXenon\":1,\"modFender\":-1,\"wheels\":0,\"modCustomTiresR\":false,\"modFrame\":-1,\"modSteeringWheel\":-1,\"oilLevel\":7.14895411251853,\"modRoof\":0,\"modWindows\":-1,\"modKit49\":-1,\"liveryRoof\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modKit21\":-1,\"modKit19\":-1,\"modSideSkirt\":-1,\"windowTint\":1,\"modGrille\":-1,\"modHood\":-1,\"modTurbo\":1,\"tyreSmokeColor\":[255,255,255],\"wheelColor\":0,\"modArchCover\":8,\"modSmokeEnabled\":false,\"tankHealth\":1000.0592475178704,\"modBProofTires\":false,\"modShifterLeavers\":-1,\"modLivery\":2,\"modDoorSpeaker\":-1,\"modSpeakers\":-1,\"modTrimB\":9,\"modDashboard\":0,\"modPlateHolder\":-1,\"modRearBumper\":-1,\"interiorColor\":111,\"modHorns\":-1,\"modDrift\":false,\"bodyHealth\":996.0876063442489,\"modTank\":2,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"plateIndex\":4,\"modTrimA\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"modTrunk\":-1,\"modDial\":-1,\"modExhaust\":-1,\"modAirFilter\":-1,\"modBrakes\":-1,\"modAerials\":-1,\"modTransmission\":-1,\"color1\":0,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modFrontWheels\":-1,\"extras\":{\"1\":true,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":true},\"headlightColor\":0,\"wheelWidth\":1.0,\"dashboardColor\":63}', '84QEU811', NULL, 'pdgarage', NULL, 64, 995, 996, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(98, 'license:cb6abbaa8f784c9ed13143140fbd9563c38beb25', '3087', 'npolexp', '719025956', '{\"modDoorSpeaker\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"modStruts\":-1,\"modAPlate\":-1,\"modKit17\":-1,\"modSuspension\":-1,\"model\":719025956,\"modOrnaments\":-1,\"modFrontBumper\":-1,\"dirtLevel\":7.94328234724281,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSeats\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modArmor\":-1,\"pearlescentColor\":0,\"plate\":\"24XTS625\",\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modEngine\":-1,\"engineHealth\":1000.0592475178704,\"modSpoilers\":-1,\"fuelLevel\":61.95760230849395,\"modVanityPlate\":-1,\"wheelSize\":0.0,\"xenonColor\":255,\"modEngineBlock\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modXenon\":false,\"modFender\":-1,\"modTrimB\":-1,\"modCustomTiresR\":false,\"modFrame\":-1,\"dashboardColor\":112,\"oilLevel\":7.94328234724281,\"modRoof\":-1,\"modWindows\":-1,\"modKit49\":-1,\"liveryRoof\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"headlightColor\":255,\"modKit19\":-1,\"modSideSkirt\":-1,\"windowTint\":-1,\"modGrille\":-1,\"modTrimA\":-1,\"modTurbo\":false,\"tyreSmokeColor\":[255,255,255],\"wheelColor\":0,\"modArchCover\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"modShifterLeavers\":-1,\"modLivery\":-1,\"modSteeringWheel\":-1,\"modSpeakers\":-1,\"modTransmission\":-1,\"modDashboard\":-1,\"extras\":{\"7\":true,\"8\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false},\"modRearBumper\":-1,\"interiorColor\":112,\"modHorns\":-1,\"modDrift\":false,\"bodyHealth\":1000.0592475178704,\"modBProofTires\":false,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true},\"modDial\":-1,\"modRightFender\":-1,\"modTank\":-1,\"color2\":62,\"modBackWheels\":-1,\"modAerials\":-1,\"modExhaust\":-1,\"wheels\":3,\"modBrakes\":-1,\"modTrunk\":-1,\"modKit21\":-1,\"color1\":62,\"wheelWidth\":0.0,\"modFrontWheels\":-1,\"modHood\":-1,\"modCustomTiresF\":false,\"modKit47\":-1,\"tankHealth\":1000.0592475178704}', '24XTS625', NULL, 'pdgarage', NULL, 62, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(99, 'license:54d01e74ae3fbf899e386831133bbb7a00397135', '0748', 'npolchar', '-1457394361', '{\"modCustomTiresF\":false,\"modHydrolic\":-1,\"modKit47\":-1,\"modStruts\":-1,\"modAPlate\":-1,\"modKit17\":-1,\"modSuspension\":3,\"model\":-1457394361,\"modOrnaments\":-1,\"modFrontBumper\":-1,\"dirtLevel\":10.32626705141565,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSeats\":-1,\"tireBurstCompletely\":{\"1\":1,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modArmor\":4,\"pearlescentColor\":0,\"plate\":\"27NTX501\",\"tireHealth\":{\"1\":966.0,\"2\":1000.0,\"3\":1000.0,\"0\":999.5},\"modEngine\":2,\"engineHealth\":999.2649192831461,\"modSpoilers\":-1,\"fuelLevel\":46.86536584873261,\"modVanityPlate\":-1,\"wheelSize\":1.0,\"xenonColor\":0,\"modEngineBlock\":-1,\"color2\":147,\"modXenon\":1,\"modFender\":-1,\"wheels\":0,\"modCustomTiresR\":false,\"modFrame\":-1,\"modSteeringWheel\":-1,\"oilLevel\":4.76596940834568,\"modRoof\":-1,\"modWindows\":-1,\"modKit49\":-1,\"liveryRoof\":-1,\"tireBurstState\":{\"1\":1,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modKit21\":-1,\"modKit19\":-1,\"modSideSkirt\":-1,\"windowTint\":1,\"modGrille\":-1,\"modHood\":-1,\"modTurbo\":1,\"tyreSmokeColor\":[255,255,255],\"wheelColor\":0,\"modArchCover\":-1,\"modSmokeEnabled\":false,\"tankHealth\":998.4705910484217,\"modBProofTires\":false,\"modShifterLeavers\":-1,\"modLivery\":-1,\"modDoorSpeaker\":-1,\"modSpeakers\":-1,\"modTrimB\":-1,\"modDashboard\":-1,\"modPlateHolder\":-1,\"modRearBumper\":-1,\"interiorColor\":111,\"modHorns\":-1,\"modDrift\":false,\"bodyHealth\":776.058685325623,\"modTank\":-1,\"windowStatus\":{\"1\":false,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true},\"plateIndex\":4,\"modTrimA\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"modTrunk\":-1,\"modDial\":-1,\"modExhaust\":-1,\"modAirFilter\":-1,\"modBrakes\":-1,\"modAerials\":-1,\"modTransmission\":2,\"color1\":0,\"doorStatus\":{\"1\":true,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modFrontWheels\":-1,\"extras\":{\"7\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":true},\"headlightColor\":0,\"wheelWidth\":1.0,\"dashboardColor\":111}', '27NTX501', NULL, 'pdgarage', NULL, 47, 1000, 776, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(100, 'license:cb6abbaa8f784c9ed13143140fbd9563c38beb25', '3087', 'npolstang', '-1336796853', '{}', '22ACP501', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(101, 'license:cb6abbaa8f784c9ed13143140fbd9563c38beb25', '3087', 'npolchal', '1949729657', '{}', '60JZK753', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(102, 'license:ce30bc152f5786584eee98b127ef89c6dc76b6f0', '9625', 'npolvic', '-901056903', '{}', '41QUR810', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(103, 'license:ce30bc152f5786584eee98b127ef89c6dc76b6f0', '9625', 'npolstang', '-1336796853', '{}', '29YAB472', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(104, 'license:ce30bc152f5786584eee98b127ef89c6dc76b6f0', '9625', 'utillitruck2', '887537515', '{\"modFrame\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"plate\":\"24LTV854\",\"modTrimA\":-1,\"headlightColor\":255,\"wheelSize\":0.0,\"neonEnabled\":[false,false,false,false],\"tankHealth\":994.4989498748004,\"dirtLevel\":0.0,\"modTurbo\":false,\"oilLevel\":4.76596940834568,\"modCustomTiresR\":false,\"modRearBumper\":-1,\"modLivery\":-1,\"modShifterLeavers\":-1,\"xenonColor\":255,\"modSeats\":-1,\"modSuspension\":-1,\"modSteeringWheel\":-1,\"modDashboard\":-1,\"modCustomTiresF\":false,\"modHorns\":-1,\"wheelColor\":156,\"modStruts\":-1,\"color1\":132,\"pearlescentColor\":0,\"modFender\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":false,\"0\":true},\"modFrontBumper\":-1,\"neonColor\":[255,0,255],\"modSpoilers\":-1,\"engineHealth\":1000.0592475178704,\"modHydrolic\":-1,\"model\":887537515,\"modKit49\":-1,\"modSideSkirt\":-1,\"modOrnaments\":-1,\"tyreSmokeColor\":[255,255,255],\"bodyHealth\":985.7613392928333,\"modDrift\":false,\"dashboardColor\":0,\"modEngineBlock\":-1,\"modGrille\":-1,\"modKit19\":-1,\"modKit47\":-1,\"modAPlate\":-1,\"modKit21\":-1,\"modEngine\":-1,\"modBProofTires\":false,\"modVanityPlate\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":false,\"wheels\":0,\"modDial\":-1,\"modFrontWheels\":-1,\"modSpeakers\":-1,\"modWindows\":-1,\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"fuelLevel\":17.47522116393419,\"modPlateHolder\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":998.75,\"3\":1000.0,\"0\":1000.0},\"modXenon\":false,\"liveryRoof\":-1,\"wheelWidth\":0.0,\"modExhaust\":-1,\"modBackWheels\":-1,\"modTrimB\":-1,\"modAerials\":-1,\"modTank\":-1,\"modKit17\":-1,\"modTrunk\":-1,\"plateIndex\":0,\"modRoof\":-1,\"modHood\":-1,\"windowTint\":-1,\"modRightFender\":-1,\"interiorColor\":0,\"modArmor\":-1,\"modArchCover\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":true,\"0\":false},\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"color2\":132,\"extras\":{\"6\":false,\"5\":false,\"4\":false,\"3\":false,\"2\":true,\"1\":false},\"modBrakes\":-1}', '24LTV854', NULL, 'pillboxlowergarage', NULL, 18, 1001, 987, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(105, 'license:ce5a95d8d8bcca13d185b0091b75e0bf6068858d', '3191', 'npolchar', '-1457394361', '{\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"wheelSize\":1.0,\"modBProofTires\":false,\"modShifterLeavers\":-1,\"modFender\":-1,\"modDrift\":false,\"modRearBumper\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"engineHealth\":1000.0592475178704,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modPlateHolder\":-1,\"modKit17\":-1,\"color1\":112,\"modLivery\":0,\"modKit47\":-1,\"modHood\":-1,\"modDoorSpeaker\":-1,\"modVanityPlate\":-1,\"modKit19\":-1,\"modAirFilter\":-1,\"wheels\":0,\"wheelColor\":0,\"modTrimA\":-1,\"modRoof\":0,\"modFrontBumper\":1,\"oilLevel\":4.76596940834568,\"modSmokeEnabled\":false,\"modExhaust\":-1,\"modCustomTiresR\":false,\"modBrakes\":-1,\"tankHealth\":1000.0592475178704,\"modTrunk\":-1,\"extras\":{\"1\":true,\"2\":false,\"7\":false,\"5\":false,\"6\":false,\"3\":false,\"4\":false},\"pearlescentColor\":0,\"modArchCover\":4,\"modHydrolic\":-1,\"modAPlate\":-1,\"modTank\":3,\"bodyHealth\":1000.0592475178704,\"windowTint\":-1,\"wheelWidth\":1.0,\"modFrame\":-1,\"modStruts\":-1,\"headlightColor\":255,\"modKit49\":-1,\"modSpeakers\":-1,\"modSpoilers\":2,\"neonColor\":[255,0,255],\"liveryRoof\":-1,\"modHorns\":-1,\"modAerials\":-1,\"modBackWheels\":-1,\"modGrille\":-1,\"modSteeringWheel\":-1,\"plateIndex\":4,\"modArmor\":4,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modOrnaments\":0,\"neonEnabled\":[false,false,false,false],\"modFrontWheels\":-1,\"modCustomTiresF\":false,\"modTransmission\":-1,\"modTurbo\":1,\"modSeats\":-1,\"plate\":\"21VMV655\",\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true},\"modWindows\":-1,\"fuelLevel\":62.75193054321823,\"modRightFender\":-1,\"xenonColor\":255,\"modDashboard\":0,\"modDial\":0,\"interiorColor\":111,\"modEngine\":-1,\"modEngineBlock\":-1,\"model\":-1457394361,\"dirtLevel\":3.17731293889712,\"color2\":0,\"tyreSmokeColor\":[255,255,255],\"modSuspension\":-1,\"modKit21\":-1,\"modXenon\":false,\"modSideSkirt\":-1,\"modTrimB\":9,\"dashboardColor\":0}', '21VMV655', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(106, 'license:ce5a95d8d8bcca13d185b0091b75e0bf6068858d', '3191', 'npolchar', '-1457394361', '{\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"wheelSize\":1.0,\"modBProofTires\":false,\"modShifterLeavers\":-1,\"modFender\":-1,\"modDrift\":false,\"modRearBumper\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"engineHealth\":1000.0592475178704,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modPlateHolder\":-1,\"modKit17\":-1,\"color1\":112,\"modLivery\":0,\"modKit47\":-1,\"modHood\":-1,\"modDoorSpeaker\":-1,\"modVanityPlate\":-1,\"modKit19\":-1,\"modAirFilter\":-1,\"wheels\":0,\"wheelColor\":0,\"modTrimA\":-1,\"modRoof\":0,\"modFrontBumper\":1,\"oilLevel\":4.76596940834568,\"modSmokeEnabled\":false,\"modExhaust\":-1,\"modCustomTiresR\":false,\"modBrakes\":-1,\"tankHealth\":1000.0592475178704,\"modTrunk\":-1,\"extras\":{\"1\":true,\"2\":false,\"7\":false,\"5\":true,\"6\":false,\"3\":false,\"4\":false},\"pearlescentColor\":0,\"modArchCover\":3,\"modHydrolic\":-1,\"modAPlate\":-1,\"modTank\":5,\"bodyHealth\":1000.0592475178704,\"windowTint\":-1,\"wheelWidth\":1.0,\"modFrame\":-1,\"modStruts\":-1,\"headlightColor\":255,\"modKit49\":-1,\"modSpeakers\":-1,\"modSpoilers\":1,\"neonColor\":[255,0,255],\"liveryRoof\":-1,\"modHorns\":-1,\"modAerials\":-1,\"modBackWheels\":-1,\"modGrille\":-1,\"modSteeringWheel\":-1,\"plateIndex\":4,\"modArmor\":4,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modOrnaments\":0,\"neonEnabled\":[false,false,false,false],\"modFrontWheels\":-1,\"modCustomTiresF\":false,\"modTransmission\":-1,\"modTurbo\":1,\"modSeats\":-1,\"plate\":\"06CGC524\",\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true},\"modWindows\":-1,\"fuelLevel\":61.16327407376967,\"modRightFender\":-1,\"xenonColor\":255,\"modDashboard\":0,\"modDial\":0,\"interiorColor\":0,\"modEngine\":-1,\"modEngineBlock\":-1,\"model\":-1457394361,\"dirtLevel\":3.9716411736214,\"color2\":0,\"tyreSmokeColor\":[255,255,255],\"modSuspension\":-1,\"modKit21\":-1,\"modXenon\":false,\"modSideSkirt\":-1,\"modTrimB\":6,\"dashboardColor\":0}', '06CGC524', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(107, 'license:ce30bc152f5786584eee98b127ef89c6dc76b6f0', '0928', 'npolchal', '1949729657', '{}', '66ZQD112', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(108, 'license:ce30bc152f5786584eee98b127ef89c6dc76b6f0', '0928', 'npolvic', '-901056903', '{\"modTrimA\":-1,\"modLivery\":3,\"modExhaust\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modTurbo\":false,\"modArchCover\":-1,\"modAerials\":-1,\"modStruts\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modRoof\":-1,\"modPlateHolder\":-1,\"modVanityPlate\":-1,\"modWindows\":-1,\"windowTint\":-1,\"modCustomTiresF\":false,\"extras\":{\"3\":true,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"1\":false,\"2\":false},\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"wheelColor\":0,\"modGrille\":-1,\"modHorns\":-1,\"modKit19\":-1,\"engineHealth\":1000.0592475178704,\"interiorColor\":111,\"modSideSkirt\":-1,\"modDashboard\":-1,\"fuelLevel\":59.57461760432111,\"modBProofTires\":false,\"modSmokeEnabled\":false,\"modSuspension\":-1,\"bodyHealth\":1000.0592475178704,\"neonEnabled\":[false,false,false,false],\"modSeats\":-1,\"oilLevel\":4.76596940834568,\"modEngineBlock\":-1,\"modFrontBumper\":-1,\"plate\":\"43FPN954\",\"plateIndex\":4,\"modCustomTiresR\":false,\"modRearBumper\":-1,\"modKit49\":-1,\"wheels\":1,\"modSpeakers\":-1,\"modFrame\":-1,\"modDrift\":false,\"dirtLevel\":4.76596940834568,\"xenonColor\":255,\"modEngine\":-1,\"modOrnaments\":-1,\"modBackWheels\":-1,\"dashboardColor\":111,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"color2\":62,\"modXenon\":false,\"modRightFender\":-1,\"headlightColor\":255,\"modSteeringWheel\":-1,\"tankHealth\":1000.0592475178704,\"color1\":62,\"modFrontWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"modTrunk\":-1,\"model\":-901056903,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"wheelSize\":1.0,\"pearlescentColor\":0,\"modDial\":-1,\"modAPlate\":-1,\"modFender\":-1,\"liveryRoof\":-1,\"modKit47\":-1,\"modKit17\":-1,\"modTank\":-1,\"modHood\":-1,\"neonColor\":[255,0,255],\"wheelWidth\":1.0,\"modArmor\":-1,\"modKit21\":-1,\"modHydrolic\":-1,\"modTransmission\":-1,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modDoorSpeaker\":-1,\"modBrakes\":-1,\"modShifterLeavers\":-1,\"modTrimB\":-1}', '43FPN954', NULL, 'pdgarage', NULL, 60, 1001, 1001, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(109, 'license:ce30bc152f5786584eee98b127ef89c6dc76b6f0', '0928', 'thruster', '1489874736', '{\"modEngineBlock\":-1,\"modHorns\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":18,\"modSpeakers\":-1,\"modSuspension\":-1,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modBrakes\":-1,\"modTrunk\":-1,\"modBProofTires\":true,\"liveryRoof\":-1,\"modAPlate\":-1,\"neonColor\":[255,0,255],\"tankHealth\":997.6762628136975,\"extras\":{\"1\":true,\"2\":true},\"modTransmission\":-1,\"modGrille\":-1,\"modPlateHolder\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSteeringWheel\":-1,\"modArmor\":-1,\"modOrnaments\":-1,\"headlightColor\":255,\"modTrimB\":-1,\"dirtLevel\":0.0,\"xenonColor\":255,\"modKit17\":-1,\"model\":1489874736,\"modTurbo\":false,\"modEngine\":-1,\"wheels\":0,\"windowStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"0\":false},\"modKit47\":-1,\"dashboardColor\":134,\"modXenon\":false,\"modSeats\":-1,\"color1\":12,\"modAirFilter\":-1,\"modStruts\":-1,\"oilLevel\":7.94328234724281,\"modExhaust\":-1,\"modWindows\":-1,\"modCustomTiresF\":false,\"modSpoilers\":-1,\"fuelLevel\":52.42566349180257,\"plateIndex\":0,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modLivery\":-1,\"wheelWidth\":0.0,\"plate\":\"26HBS985\",\"modFrontBumper\":-1,\"engineHealth\":992.1159651706275,\"wheelColor\":158,\"windowTint\":-1,\"modFender\":-1,\"modDial\":-1,\"modCustomTiresR\":false,\"neonEnabled\":[false,false,false,false],\"modDoorSpeaker\":-1,\"modKit19\":-1,\"color2\":12,\"bodyHealth\":945.2505993218949,\"modKit49\":-1,\"modHydrolic\":-1,\"modRearBumper\":-1,\"modTank\":-1,\"modSideSkirt\":-1,\"modHood\":-1,\"modKit21\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modRoof\":-1,\"modRightFender\":-1,\"modDrift\":false,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"wheelSize\":0.0,\"modAerials\":-1,\"modFrame\":-1,\"modSmokeEnabled\":false,\"modDashboard\":-1,\"interiorColor\":158,\"tyreSmokeColor\":[255,255,255]}', '26HBS985', NULL, NULL, NULL, 100, 1000, 1000, 1, 0, NULL, 0, 0, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `player_warns`
--

CREATE TABLE `player_warns` (
  `id` int(11) NOT NULL,
  `senderIdentifier` varchar(50) DEFAULT NULL,
  `targetIdentifier` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `warnId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `society`
--

CREATE TABLE `society` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `money` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `society`
--

INSERT INTO `society` (`id`, `name`, `money`) VALUES
(1, 'police', '0'),
(2, 'lostmc', '0');

-- --------------------------------------------------------

--
-- Table structure for table `stashitems`
--

CREATE TABLE `stashitems` (
  `id` int(11) NOT NULL,
  `stash` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `stashitems`
--

INSERT INTO `stashitems` (`id`, `stash`, `items`) VALUES
(852, ' -5.4937090873718', '[]'),
(869, ' 104.54740142822', '[]'),
(873, ' 17.469650268555', '[{\"name\":\"weapon_m9\",\"weight\":7000,\"label\":\"Beretta M9A3\",\"info\":{\"ammo\":64,\"quality\":100,\"serie\":\"00MnY3iN478upZK\"},\"slot\":1,\"image\":\"m1911.png\",\"type\":\"weapon\",\"unique\":true,\"useable\":false,\"amount\":1},{\"name\":\"weapon_glock22\",\"weight\":7000,\"label\":\"Glock 22\",\"info\":{\"ammo\":116,\"quality\":100,\"serie\":\"53tmL4Nt337KkFO\"},\"slot\":2,\"image\":\"glock.png\",\"type\":\"weapon\",\"unique\":true,\"useable\":false,\"amount\":1},{\"name\":\"weapon_ar15\",\"weight\":13000,\"label\":\"PD AR-15\",\"info\":{\"ammo\":11,\"quality\":100,\"serie\":\"70KEO5Af646YJVN\"},\"slot\":3,\"image\":\"WEAPON_AR15.png\",\"type\":\"weapon\",\"unique\":true,\"useable\":false,\"amount\":1},{\"name\":\"weapon_stungun\",\"weight\":1000,\"label\":\"Taser\",\"info\":{\"ammo\":-1,\"quality\":100,\"serie\":\"33nvJ3mL259yWtF\"},\"slot\":4,\"image\":\"weapon_stungun.png\",\"type\":\"weapon\",\"unique\":true,\"useable\":false,\"amount\":1},{\"name\":\"weapon_flashlight\",\"weight\":1000,\"label\":\"Flashlight\",\"info\":{\"ammo\":0,\"quality\":100,\"serie\":\"40Ytg8vk343zfuE\"},\"slot\":5,\"image\":\"weapon_flashlight.png\",\"type\":\"weapon\",\"unique\":true,\"useable\":false,\"amount\":1},{\"name\":\"weapon_nightstick\",\"weight\":1000,\"label\":\"Nightstick\",\"info\":{\"quality\":100,\"serie\":\"18rfD6XN790Ogam\"},\"slot\":6,\"image\":\"weapon_nightstick.png\",\"type\":\"weapon\",\"unique\":true,\"useable\":false,\"amount\":1},{\"name\":\"iron\",\"weight\":100,\"label\":\"Желязо\",\"info\":[],\"slot\":7,\"image\":\"iron.png\",\"type\":\"item\",\"unique\":false,\"useable\":false,\"amount\":1},{\"name\":\"lspd_ifak\",\"weight\":1500,\"label\":\"LSPD Аптечка\",\"info\":[],\"slot\":8,\"image\":\"ifak.png\",\"type\":\"item\",\"unique\":false,\"useable\":true,\"amount\":5},{\"name\":\"megaphone\",\"weight\":500,\"label\":\"Мегафон\",\"info\":[],\"slot\":9,\"image\":\"megaphone.png\",\"type\":\"item\",\"unique\":false,\"useable\":true,\"amount\":1},{\"name\":\"pdcamera\",\"weight\":1000,\"label\":\"Полицейска Камера\",\"info\":[],\"slot\":10,\"image\":\"camera.png\",\"type\":\"item\",\"unique\":true,\"useable\":true,\"amount\":1},{\"name\":\"heavyarmor\",\"weight\":30000,\"label\":\"LSPD Бронежилетка\",\"info\":[],\"slot\":11,\"image\":\"armor.png\",\"type\":\"item\",\"unique\":false,\"useable\":true,\"amount\":3}]'),
(868, ' 19.810167312622', '[]'),
(887, ' 25.756107330322', '[]'),
(834, ' 27.94522857666', '[]'),
(884, ' 27.972465515137', '[]'),
(886, ' 27.972829818726', '[]'),
(885, ' 27.974132537842', '[]'),
(859, ' 28.200622558594', '[]'),
(872, ' 28.216352462769', '[]'),
(878, ' 28.257480621338', '[]'),
(836, ' 28.314470291138', '[]'),
(812, ' 62.317958831787', '[{\"type\":\"item\",\"weight\":1000,\"label\":\"Саксия с канабис\",\"amount\":1,\"name\":\"weedpot\",\"slot\":1,\"info\":[],\"useable\":true,\"image\":\"weedpot.png\",\"unique\":false},{\"type\":\"item\",\"weight\":1000,\"label\":\"Саксия с канабис\",\"amount\":1,\"name\":\"weedpot\",\"slot\":2,\"info\":[],\"useable\":true,\"image\":\"weedpot.png\",\"unique\":false},null,{\"type\":\"item\",\"weight\":1000,\"label\":\"Тор\",\"amount\":14,\"name\":\"weed_fertilizer\",\"slot\":4,\"info\":[],\"useable\":true,\"image\":\"weed_fertilizer.png\",\"unique\":false}]'),
(770, ' 68.214805603027', '[]'),
(771, ' 68.223915100098', '[{\"weight\":10000,\"name\":\"weapon_pistol\",\"image\":\"weapon_pistol.png\",\"info\":{\"ammo\":241,\"serie\":\"04eOc3jf701TGzE\",\"quality\":98.64999999999995},\"amount\":1,\"useable\":false,\"unique\":true,\"slot\":1,\"label\":\"Нормализатор\",\"type\":\"weapon\"}]'),
(870, ' 78.863098144531', '[]'),
(866, ' vec3(87.807564, -1957.199463, -5.493709)', '[]'),
(749, 'boss_police', '[{\"info\":[],\"amount\":1,\"useable\":false,\"weight\":2000,\"image\":\"phone.png\",\"unique\":true,\"label\":\"Телефон\",\"name\":\"phone\",\"type\":\"item\",\"slot\":1}]'),
(879, 'boss_realestate', '[]'),
(883, 'burgerstorage', '[]'),
(882, 'burgertray2', '[]'),
(772, 'cannabis_stash', '[{\"label\":\"Канабис\",\"name\":\"cannabis\",\"slot\":1,\"info\":[],\"type\":\"item\",\"image\":\"cannabis.png\",\"unique\":false,\"amount\":2,\"useable\":true,\"weight\":2500}]'),
(773, 'joint_stash', '[]'),
(752, 'SafeObject', '[{\"info\":[],\"weight\":40000,\"amount\":5,\"unique\":false,\"useable\":true,\"slot\":1,\"label\":\"Бронежилетка\",\"image\":\"armor.png\",\"name\":\"armor\",\"type\":\"item\"},null,{\"info\":{\"quality\":100,\"serie\":\"98WZK0jr225VQBi\"},\"weight\":10000,\"amount\":1,\"unique\":true,\"useable\":false,\"slot\":3,\"label\":\"Uzi\",\"image\":\"uzi.png\",\"name\":\"weapon_uzi\",\"type\":\"weapon\"},{\"info\":{\"quality\":100,\"serie\":\"86AFp8VL563DeBf\"},\"weight\":10000,\"amount\":1,\"unique\":true,\"useable\":false,\"slot\":4,\"label\":\"Uzi\",\"image\":\"uzi.png\",\"name\":\"weapon_uzi\",\"type\":\"weapon\"},{\"info\":{\"quality\":100,\"serie\":\"80lLB9HQ265iKlP\"},\"weight\":10000,\"amount\":1,\"unique\":true,\"useable\":false,\"slot\":5,\"label\":\"Uzi\",\"image\":\"uzi.png\",\"name\":\"weapon_uzi\",\"type\":\"weapon\"},{\"info\":{\"quality\":99.24999999999996,\"serie\":\"96cDH7ld573Wjfl\",\"ammo\":246},\"weight\":1000,\"amount\":1,\"unique\":true,\"useable\":false,\"slot\":6,\"label\":\"Combat Pistol\",\"image\":\"weapon_combatpistol.png\",\"name\":\"weapon_combatpistol\",\"type\":\"weapon\"},{\"info\":{\"quality\":100,\"serie\":\"91Ola2uy494wUET\",\"ammo\":0},\"weight\":1000,\"amount\":1,\"unique\":true,\"useable\":false,\"slot\":7,\"label\":\"Combat Pistol\",\"image\":\"weapon_combatpistol.png\",\"name\":\"weapon_combatpistol\",\"type\":\"weapon\"},{\"info\":{\"quality\":100,\"serie\":\"79slV7OX154XjTy\"},\"weight\":10000,\"amount\":1,\"unique\":true,\"useable\":false,\"slot\":8,\"label\":\"Uzi\",\"image\":\"uzi.png\",\"name\":\"weapon_uzi\",\"type\":\"weapon\"},{\"info\":{\"quality\":100,\"serie\":\"27LbE8RR595sgkk\"},\"weight\":10000,\"amount\":1,\"unique\":true,\"useable\":false,\"slot\":9,\"label\":\"Uzi\",\"image\":\"uzi.png\",\"name\":\"weapon_uzi\",\"type\":\"weapon\"},{\"info\":{\"quality\":100,\"serie\":\"26rdi3Ob658yIME\"},\"weight\":10000,\"amount\":1,\"unique\":true,\"useable\":false,\"slot\":10,\"label\":\"Uzi\",\"image\":\"uzi.png\",\"name\":\"weapon_uzi\",\"type\":\"weapon\"},{\"info\":{\"quality\":100,\"serie\":\"95afv0if981lpac\"},\"weight\":1000,\"amount\":1,\"unique\":true,\"useable\":false,\"slot\":11,\"label\":\"Combat Pistol\",\"image\":\"weapon_combatpistol.png\",\"name\":\"weapon_combatpistol\",\"type\":\"weapon\"}]'),
(846, 'safe_87.8_-1957.2_-5.5', '[]'),
(844, 'safe_87_-1958_-6', '[]'),
(871, 'uwuTray1', '[]'),
(880, 'uwuTray2', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE `transaction_history` (
  `id` int(11) NOT NULL,
  `citizenid` text NOT NULL,
  `trans_id` int(11) NOT NULL,
  `account` text NOT NULL,
  `amount` int(11) NOT NULL,
  `trans_type` text NOT NULL,
  `receiver` text NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `transaction_history`
--

INSERT INTO `transaction_history` (`id`, `citizenid`, `trans_id`, `account`, `amount`, `trans_type`, `receiver`, `message`, `date`) VALUES
(73, '6506', 82152, 'personal', -1000, 'withdraw', 'N/A', 'Withdrew $1,000.', '2024-08-26 17:23:34'),
(74, '6506', 44345, 'personal', -10000, 'transfer', 'Sergio', 'Transfered $10,000 to Sergio', '2024-09-01 14:08:28'),
(75, '4955', 78859, 'personal', 10000, 'transfer', 'William', 'Received $10,000 from William', '2024-09-01 14:08:28'),
(76, '6506', 71859, 'personal', -1000, 'transfer', 'Sergio', 'Transfered $1,000 to Sergio', '2024-09-01 14:21:40'),
(77, '4955', 62350, 'personal', 1000, 'transfer', 'William', 'Received $1,000 from William', '2024-09-01 14:21:40'),
(78, '6506', 17006, 'personal', -10000, 'transfer', 'Sergio', 'Transfered $10,000 to Sergio', '2024-09-01 14:33:48'),
(79, '4955', 33259, 'personal', 10000, 'transfer', 'William', 'Received $10,000 from William', '2024-09-01 14:33:48'),
(80, '3087', 88514, 'personal', -200, 'withdraw', 'N/A', 'Withdrew $200.', '2024-09-04 12:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `trunkitems`
--

CREATE TABLE `trunkitems` (
  `id` int(11) NOT NULL,
  `plate` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `trunkitems`
--

INSERT INTO `trunkitems` (`id`, `plate`, `items`) VALUES
(234, '06WDS796', '[{\"image\":\"weapon_pistol.png\",\"info\":{\"quality\":98.19999999999992,\"serie\":\"93mbi1QM069jgrU\",\"ammo\":214},\"name\":\"weapon_pistol\",\"amount\":1,\"slot\":1,\"type\":\"weapon\",\"useable\":false,\"unique\":true,\"label\":\"Нормализатор\",\"weight\":10000},{\"image\":\"moneycase.png\",\"info\":{\"money\":50000},\"name\":\"moneycase\",\"amount\":1,\"slot\":2,\"type\":\"item\",\"useable\":true,\"unique\":true,\"label\":\"Куфарче за пари\",\"weight\":5000},{\"image\":\"svinskaopashka.png\",\"info\":[],\"name\":\"svinskaopashka\",\"amount\":1,\"slot\":3,\"type\":\"item\",\"useable\":true,\"unique\":false,\"label\":\"Свинска Опашка\",\"weight\":100},{\"image\":\"pistol_ammo.png\",\"info\":[],\"name\":\"pistol_ammo\",\"amount\":20,\"slot\":4,\"type\":\"item\",\"useable\":true,\"unique\":false,\"label\":\"Патрони за пистолет\",\"weight\":200}]'),
(232, '25KOC688', '[{\"unique\":true,\"amount\":1,\"info\":[],\"type\":\"item\",\"label\":\"Хляб\",\"slot\":1,\"image\":\"bread.png\",\"useable\":true,\"weight\":1000,\"name\":\"bread\"}]'),
(237, '40POQ358', '[null,{\"weight\":1000,\"type\":\"weapon\",\"amount\":1,\"name\":\"weapon_assaultrifle\",\"slot\":2,\"label\":\"Assault Rifle\",\"image\":\"weapon_assaultrifle.png\",\"useable\":false,\"unique\":true,\"info\":{\"quality\":100,\"serie\":\"63Tjg9Es604OluH\"}}]'),
(248, '62BDS162', '[{\"weight\":10000,\"type\":\"weapon\",\"amount\":1,\"name\":\"weapon_pistol\",\"slot\":1,\"label\":\"Нормализатор\",\"image\":\"weapon_pistol.png\",\"useable\":false,\"unique\":true,\"info\":{\"ammo\":226,\"quality\":92.4999999999997,\"serie\":\"30GsC8VG315PXVA\"}},{\"weight\":1000,\"type\":\"weapon\",\"amount\":1,\"name\":\"weapon_assaultrifle\",\"slot\":2,\"label\":\"Assault Rifle\",\"image\":\"weapon_assaultrifle.png\",\"useable\":false,\"unique\":true,\"info\":{\"ammo\":242,\"quality\":99.85,\"serie\":\"96bxM3cr519nCaR\"}}]'),
(226, '69FOI971', '[]'),
(222, '85TUZ800', '[]'),
(225, '86DUO860', '[]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartments`
--
ALTER TABLE `apartments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `ballots_votes`
--
ALTER TABLE `ballots_votes`
  ADD KEY `ballot_id` (`ballot_id`),
  ADD KEY `steam_id` (`steam_id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `account_name` (`account_name`);

--
-- Indexes for table `bank_accounts_new`
--
ALTER TABLE `bank_accounts_new`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_statements`
--
ALTER TABLE `bank_statements`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `citizenid` (`citizenid`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license` (`license`),
  ADD KEY `discord` (`discord`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `barrels`
--
ALTER TABLE `barrels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesses_dishes`
--
ALTER TABLE `businesses_dishes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foodchain` (`foodchain`(768));

--
-- Indexes for table `character_current`
--
ALTER TABLE `character_current`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `character_face`
--
ALTER TABLE `character_face`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `character_outfits`
--
ALTER TABLE `character_outfits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto`
--
ALTER TABLE `crypto`
  ADD PRIMARY KEY (`crypto`);

--
-- Indexes for table `crypto_transactions`
--
ALTER TABLE `crypto_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Indexes for table `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farms_gardens`
--
ALTER TABLE `farms_gardens`
  ADD PRIMARY KEY (`garden_id`);

--
-- Indexes for table `financials_transactions`
--
ALTER TABLE `financials_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `gloveboxitems`
--
ALTER TABLE `gloveboxitems`
  ADD PRIMARY KEY (`plate`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `houselocations`
--
ALTER TABLE `houselocations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `house_plants`
--
ALTER TABLE `house_plants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `building` (`building`),
  ADD KEY `plantid` (`plantid`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`identifier`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `lapraces`
--
ALTER TABLE `lapraces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `raceid` (`raceid`);

--
-- Indexes for table `laptop_boosting`
--
ALTER TABLE `laptop_boosting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`),
  ADD KEY `expire` (`expire`),
  ADD KEY `auction_end` (`auction_end`);

--
-- Indexes for table `laptop_data`
--
ALTER TABLE `laptop_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `laptop_gangs`
--
ALTER TABLE `laptop_gangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gang_id` (`gang_id`(768)),
  ADD KEY `gang_members` (`gang_members`(768));

--
-- Indexes for table `laptop_gangs_chat`
--
ALTER TABLE `laptop_gangs_chat`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `gang_id` (`gang_id`(768)) USING BTREE;

--
-- Indexes for table `laptop_market`
--
ALTER TABLE `laptop_market`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `laptop_sprays`
--
ALTER TABLE `laptop_sprays`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `gang_id` (`gang_id`(768)) USING BTREE;

--
-- Indexes for table `mdt_bolos`
--
ALTER TABLE `mdt_bolos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdt_bulletin`
--
ALTER TABLE `mdt_bulletin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdt_clocking`
--
ALTER TABLE `mdt_clocking`
  ADD PRIMARY KEY (`user_id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `mdt_convictions`
--
ALTER TABLE `mdt_convictions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdt_data`
--
ALTER TABLE `mdt_data`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `mdt_impound`
--
ALTER TABLE `mdt_impound`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdt_incidents`
--
ALTER TABLE `mdt_incidents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdt_logs`
--
ALTER TABLE `mdt_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdt_reports`
--
ALTER TABLE `mdt_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdt_vehicleinfo`
--
ALTER TABLE `mdt_vehicleinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdt_weaponinfo`
--
ALTER TABLE `mdt_weaponinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `serial` (`serial`);

--
-- Indexes for table `mdw_certs`
--
ALTER TABLE `mdw_certs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdw_charges`
--
ALTER TABLE `mdw_charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gov_type` (`gov_type`(768));

--
-- Indexes for table `mdw_evidence`
--
ALTER TABLE `mdw_evidence`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `mdw_evidence_types`
--
ALTER TABLE `mdw_evidence_types`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `mdw_legislation`
--
ALTER TABLE `mdw_legislation`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `mdw_profiles`
--
ALTER TABLE `mdw_profiles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `mdw_ranks`
--
ALTER TABLE `mdw_ranks`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `mdw_reports`
--
ALTER TABLE `mdw_reports`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `mdw_roles`
--
ALTER TABLE `mdw_roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `mdw_staff`
--
ALTER TABLE `mdw_staff`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `mdw_tags`
--
ALTER TABLE `mdw_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `musictapes`
--
ALTER TABLE `musictapes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `occasion_vehicles`
--
ALTER TABLE `occasion_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `occasionId` (`occasionid`);

--
-- Indexes for table `phone_adverts`
--
ALTER TABLE `phone_adverts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_bank_logs`
--
ALTER TABLE `phone_bank_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_businesses`
--
ALTER TABLE `phone_businesses`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `business_owner` (`business_owner`(1024)),
  ADD KEY `business_employees` (`business_employees`(1024)),
  ADD KEY `business_name` (`business_name`(1024));

--
-- Indexes for table `phone_cases`
--
ALTER TABLE `phone_cases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_contacts`
--
ALTER TABLE `phone_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`(768));

--
-- Indexes for table `phone_debt`
--
ALTER TABLE `phone_debt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Indexes for table `phone_documents`
--
ALTER TABLE `phone_documents`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `sharees` (`sharees`(1024));

--
-- Indexes for table `phone_events`
--
ALTER TABLE `phone_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_invoices`
--
ALTER TABLE `phone_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Indexes for table `phone_mails`
--
ALTER TABLE `phone_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `number` (`number`);

--
-- Indexes for table `phone_messagesinner`
--
ALTER TABLE `phone_messagesinner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_newsarticles`
--
ALTER TABLE `phone_newsarticles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_tierup`
--
ALTER TABLE `phone_tierup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `members` (`members`(768));

--
-- Indexes for table `phone_tweets`
--
ALTER TABLE `phone_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Indexes for table `phone_wenmo`
--
ALTER TABLE `phone_wenmo`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `from_citizenid` (`from_citizenid`(768)),
  ADD KEY `to_citizenid` (`to_citizenid`(768));

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`citizenid`),
  ADD KEY `id` (`id`),
  ADD KEY `last_updated` (`last_updated`),
  ADD KEY `license` (`license`);

--
-- Indexes for table `playerskins`
--
ALTER TABLE `playerskins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `playerstattoos`
--
ALTER TABLE `playerstattoos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player_contacts`
--
ALTER TABLE `player_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Indexes for table `player_houses`
--
ALTER TABLE `player_houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `house` (`house`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `identifier` (`identifier`);

--
-- Indexes for table `player_mails`
--
ALTER TABLE `player_mails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Indexes for table `player_outfits`
--
ALTER TABLE `player_outfits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `outfitId` (`outfitId`);

--
-- Indexes for table `player_transactions`
--
ALTER TABLE `player_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player_vehicles`
--
ALTER TABLE `player_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plate` (`plate`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `license` (`license`);

--
-- Indexes for table `player_warns`
--
ALTER TABLE `player_warns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `society`
--
ALTER TABLE `society`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stashitems`
--
ALTER TABLE `stashitems`
  ADD PRIMARY KEY (`stash`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trunkitems`
--
ALTER TABLE `trunkitems`
  ADD PRIMARY KEY (`plate`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartments`
--
ALTER TABLE `apartments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_statements`
--
ALTER TABLE `bank_statements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barrels`
--
ALTER TABLE `barrels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `businesses_dishes`
--
ALTER TABLE `businesses_dishes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT for table `character_current`
--
ALTER TABLE `character_current`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `character_face`
--
ALTER TABLE `character_face`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `character_outfits`
--
ALTER TABLE `character_outfits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crypto_transactions`
--
ALTER TABLE `crypto_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `financials_transactions`
--
ALTER TABLE `financials_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gloveboxitems`
--
ALTER TABLE `gloveboxitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=897;

--
-- AUTO_INCREMENT for table `houselocations`
--
ALTER TABLE `houselocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `house_plants`
--
ALTER TABLE `house_plants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lapraces`
--
ALTER TABLE `lapraces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laptop_boosting`
--
ALTER TABLE `laptop_boosting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laptop_data`
--
ALTER TABLE `laptop_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laptop_gangs`
--
ALTER TABLE `laptop_gangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `laptop_gangs_chat`
--
ALTER TABLE `laptop_gangs_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laptop_market`
--
ALTER TABLE `laptop_market`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laptop_sprays`
--
ALTER TABLE `laptop_sprays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mdt_bolos`
--
ALTER TABLE `mdt_bolos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mdt_bulletin`
--
ALTER TABLE `mdt_bulletin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mdt_clocking`
--
ALTER TABLE `mdt_clocking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mdt_convictions`
--
ALTER TABLE `mdt_convictions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mdt_data`
--
ALTER TABLE `mdt_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mdt_impound`
--
ALTER TABLE `mdt_impound`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mdt_incidents`
--
ALTER TABLE `mdt_incidents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mdt_logs`
--
ALTER TABLE `mdt_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mdt_reports`
--
ALTER TABLE `mdt_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mdt_vehicleinfo`
--
ALTER TABLE `mdt_vehicleinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mdt_weaponinfo`
--
ALTER TABLE `mdt_weaponinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mdw_certs`
--
ALTER TABLE `mdw_certs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `mdw_charges`
--
ALTER TABLE `mdw_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `mdw_evidence`
--
ALTER TABLE `mdw_evidence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mdw_evidence_types`
--
ALTER TABLE `mdw_evidence_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mdw_legislation`
--
ALTER TABLE `mdw_legislation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mdw_profiles`
--
ALTER TABLE `mdw_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mdw_ranks`
--
ALTER TABLE `mdw_ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `mdw_reports`
--
ALTER TABLE `mdw_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mdw_roles`
--
ALTER TABLE `mdw_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mdw_staff`
--
ALTER TABLE `mdw_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mdw_tags`
--
ALTER TABLE `mdw_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `musictapes`
--
ALTER TABLE `musictapes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `occasion_vehicles`
--
ALTER TABLE `occasion_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_adverts`
--
ALTER TABLE `phone_adverts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_bank_logs`
--
ALTER TABLE `phone_bank_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_businesses`
--
ALTER TABLE `phone_businesses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `phone_cases`
--
ALTER TABLE `phone_cases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_contacts`
--
ALTER TABLE `phone_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_debt`
--
ALTER TABLE `phone_debt`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `phone_documents`
--
ALTER TABLE `phone_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_events`
--
ALTER TABLE `phone_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `phone_invoices`
--
ALTER TABLE `phone_invoices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_mails`
--
ALTER TABLE `phone_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_messagesinner`
--
ALTER TABLE `phone_messagesinner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_newsarticles`
--
ALTER TABLE `phone_newsarticles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_tierup`
--
ALTER TABLE `phone_tierup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_tweets`
--
ALTER TABLE `phone_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `phone_wenmo`
--
ALTER TABLE `phone_wenmo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6089;

--
-- AUTO_INCREMENT for table `playerskins`
--
ALTER TABLE `playerskins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `playerstattoos`
--
ALTER TABLE `playerstattoos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `player_contacts`
--
ALTER TABLE `player_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `player_houses`
--
ALTER TABLE `player_houses`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `player_mails`
--
ALTER TABLE `player_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_outfits`
--
ALTER TABLE `player_outfits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `player_vehicles`
--
ALTER TABLE `player_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `player_warns`
--
ALTER TABLE `player_warns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stashitems`
--
ALTER TABLE `stashitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=889;

--
-- AUTO_INCREMENT for table `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `trunkitems`
--
ALTER TABLE `trunkitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
