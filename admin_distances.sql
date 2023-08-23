-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 23, 2023 at 02:32 AM
-- Server version: 10.6.14-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_distances`
--

-- --------------------------------------------------------

--
-- Table structure for table `application_settings`
--

CREATE TABLE `application_settings` (
  `setting_id` int(11) NOT NULL,
  `setting_type` varchar(255) NOT NULL,
  `setting_content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `application_settings`
--

INSERT INTO `application_settings` (`setting_id`, `setting_type`, `setting_content`) VALUES
(1, 'api_setting', '1'),
(2, 'api_token', 'thVqINnKb2YOcRpZrbqgH38DzM8Yn');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `loc_id` int(11) NOT NULL,
  `loc_org_name` text NOT NULL,
  `loc_sub_urb` text NOT NULL,
  `loc_address` text NOT NULL,
  `loc_facility` text NOT NULL,
  `loc_facility_type` tinyint(1) NOT NULL DEFAULT 1,
  `loc_latitude` varchar(255) NOT NULL,
  `loc_longitude` varchar(255) NOT NULL,
  `loc_status` tinyint(1) NOT NULL DEFAULT 0,
  `loc_created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`loc_id`, `loc_org_name`, `loc_sub_urb`, `loc_address`, `loc_facility`, `loc_facility_type`, `loc_latitude`, `loc_longitude`, `loc_status`, `loc_created_date`) VALUES
(3, 'Xpresss bess', 'bobbili', 'agraharam street', 'xpress bess', 1, '18.571152696679796', '83.3571324246082', 1, '2023-08-04 14:43:26'),
(4, 'waves', 'malls', 'address', 'facility', 1, '17.725706953523446', '83.31030251109433', 1, '2023-08-04 14:44:24'),
(5, 'cmr', 'shopping mall', 'madhilapalem', 'vizag', 1, '17.73427302522894', '83.3183980957537', 1, '2023-08-05 03:43:05'),
(6, 'cmr test', 'shopping mall`', 'madillapalem', 'vizag', 1, '17.734252587244487', '83.31851611302244', 1, '2023-08-06 08:30:43'),
(7, 'AMB Cinemas,', 'Kothaguda', 'Kothaguda, Hyderabad, Telangana 500084', 'AMB Cinemas', 1, '17.45948557719894478', '36333428386865', 1, '2023-08-07 17:22:57'),
(8, 'AMB', 'HYDERABAD', 'HYD', 'AMB', 1, '17.4579789455791978', '36326432522203', 1, '2023-08-07 17:25:32'),
(9, 'AMB', 'HYD', 'HYD', 'AMB', 1, '17.45799941485002278', '36320531680795', 1, '2023-08-07 17:33:43'),
(11, 'Railways', 'rails', 'vizag', 'railways', 1, '17.721559338287765', '83.29052453934172', 1, '2023-08-08 10:15:18'),
(12, 'PRAGATHI CENTRAL SCHOOL', 'Pragathi Nagar', 'opp. Jntu, Pragathi Nagar, Hyderabad, Telangana 500090', 'PRAGATHI CENTRAL SCHOOL', 1, '17.5209205720370478', '3942523786246', 1, '2023-08-08 15:49:01'),
(13, 'indore divison', 'M P', 'M P', 'indore', 1, '21.96802211719671', '76.20467831312135', 1, '2023-08-08 15:49:13'),
(14, 'PRAGATHI CENTRAL SCHOOL', 'Pragathi Nagar', 'opp. Jntu, Pragathi Nagar, Hyderabad, Telangana 500090', 'PRAGATHI CENTRAL SCHOOL', 1, '17.52075687446032', '78.39384468289302', 1, '2023-08-08 15:52:13'),
(15, 'Sri Abhayanjaneya Swamy Devalayam', 'Nizampet', 'bus stop, near, Nizampet Rd, near Nizampet village, Kukatpally Housing Board Colony, Nizampet, Hyderabad, Telangana 500090', 'Sri Abhayanjaneya Swamy Devalayam', 1, '17.516794899957578', '78.383155201749', 1, '2023-08-08 15:55:19'),
(19, 'The Terrace Hotel Adelaide', 'Adelaide', '208 South Tce, Adelaide SA 5000, Australia', 'The Terrace Hotel Adelaide', 1, '-34.93502315516492', '138.6041863372384', 1, '2023-08-18 15:36:28'),
(21, 'Clarke & Co Real Estate Pty Ltd ', 'Munno Para West ', '1087 Stebonheath Rd, Munno Para West SA 5115, Australia', 'Clarke & Co Real Estate Pty Ltd ', 1, '-34.65725420960624138', '68099803398798', 1, '2023-08-19 11:12:56'),
(24, 'ringwood', 'ringwood', 'ringwood', 'ringwood', 1, '-37.80381640047793', '145.25065895808473', 1, '2023-08-19 11:59:46'),
(25, 'Annesley Junior School', 'Adelide', '28 Rose Terrace, Wayville SA 5034, Australia', 'Annesley Junior School', 1, '-34.94208340150027', '138.59765772166705', 1, '2023-08-21 06:49:28'),
(27, 'Estia Health', 'Oakleigh East', 'Towergrange Bellview Rac, 23A Elizabeth St, Oakleigh East VIC 3166, Australia', 'Estia Health Oakleigh East', 1, '-37.89820951', '145.1097253', 0, '2023-08-21 07:38:40'),
(28, 'Estia Health', 'South Morang', '879 Plenty Rd, South Morang, VIC, 3752', 'Estia Health South Morang', 1, '-37.64702839', '145.0901993', 0, '2023-08-21 07:38:40'),
(29, 'Estia Health', 'Bentleigh', '34-36 Clairmont Ave, Bentleigh, VIC, 3204', 'Estia Health Bentleigh', 1, '-37.92189011', '145.0270259', 0, '2023-08-21 07:38:40'),
(30, 'Estia Health', 'Ringwood', '211-217 Wantirna Rd, Ringwood, VIC, 3134', 'Estia Health Ringwood', 1, '-37.83817082', '145.2282036', 0, '2023-08-21 07:38:40'),
(31, 'Estia Health', 'Ardeer', '30 North Street, Ardeer, VIC, 3022', 'Estia Health Ardeer', 1, '-37.7792975', '144.8083295', 0, '2023-08-21 07:38:40'),
(32, 'Estia Health', 'Epping', '30 Epping Road, Epping, VIC, 3076', 'Estia Health Epping VIC', 1, '-37.63524263', '145.0278026', 0, '2023-08-21 07:38:40'),
(33, 'Estia Health', 'Glen Waverley', '2B Grace St, Glen Waverley, VIC, 3150', 'Estia Health Glen Waverley', 1, '-37.87969824', '145.1561909', 0, '2023-08-21 07:38:40'),
(34, 'Estia Health', 'Altona Meadows', '297 Queen St, Altona Meadows, VIC, 3028', 'Estia Health Altona Meadows', 1, '-37.87363443', '144.7881887', 0, '2023-08-21 07:38:40'),
(35, 'Estia Health', 'Coolaroo', '15 Mladen Court, Coolaroo, VIC, 3048', 'Estia Health Coolaroo', 1, '-37.65699391', '144.9315727', 0, '2023-08-21 07:38:40'),
(36, 'Estia Health', 'Werribee', '8-10 Russell St, Werribee, VIC, 3030', 'Estia Health Werribee', 1, '-37.90825778', '144.6644592', 0, '2023-08-21 07:38:40'),
(37, 'Estia Health', 'Keysborough', '15 Stanley Road, Melbourne, VIC, 3173', 'Estia Health Keysborough', 1, '-37.99518466', '145.1696632', 0, '2023-08-21 07:38:40'),
(38, 'Estia Health', 'Plenty Valley', '806 Plenty Road, South Morang, VIC, 3752', 'Estia Health Plenty Valley', 1, '-37.65262628', '145.0877008', 0, '2023-08-21 07:38:40'),
(39, 'Estia Health', 'Dandenong', '147-151 David St, Dandenong, VIC, 3175', 'Estia Health Dandenong', 1, '-37.97746438', '145.2240114', 0, '2023-08-21 07:38:40'),
(40, 'Estia Health', 'Knoxfield', '428 Scoresby Rd, Knoxfield, VIC, 3180', 'Estia Health Knoxfield', 1, '-37.88296471', '145.257361', 0, '2023-08-21 07:38:40'),
(41, 'Estia Health', 'Heidelberg\r', '413-415 Waterdale Rd, Heidelberg, VIC, 3081', 'Estia Health Heidelberg', 1, '-37.74791264', '145.046033', 0, '2023-08-21 07:38:40'),
(42, 'Estia Health', 'Wattle Glen', '45 Silvan Road, Wattle Glen, VIC, 3096', 'Estia Health Wattle Glen', 1, '-37.65397585', '145.1940387', 0, '2023-08-21 07:38:40'),
(43, 'Estia Health', 'Melton South', '34-42 Brooklyn Rd, Melton South, VIC, 3338', 'Estia Health Melton South', 1, '-37.70210019', '144.5722525', 0, '2023-08-21 07:38:40'),
(44, 'Estia Health', 'Bannockburn', '71 McPhillips Road, Bannockburn, VIC, 3331', 'Estia Health Bannockburn', 1, '-38.03718059', '144.1651051', 0, '2023-08-21 07:38:40'),
(45, 'Estia Health', 'Bendigo', '9 Brown St, Long Gully, Bendigo, VIC, 3550', 'Estia Health Bendigo', 1, '-36.74464256', '144.2655962', 0, '2023-08-21 07:38:40'),
(46, 'Estia Health', 'Yarra Valley', '21 Hoddle St, Yarra Junction, VIC, 3797', 'Estia Health Yarra Valley', 1, '-37.78532924', '145.6130785', 0, '2023-08-21 07:38:40'),
(47, 'Estia Health', 'Leopold', '52-60 Ash Road, Leopold, VIC, 3224', 'Estia Health Leopold', 1, '-38.19557459', '144.4671439', 0, '2023-08-21 07:38:40'),
(48, 'Estia Health', 'Benalla', '73 Samaria Road, Benalla, VIC, 3672', 'Estia Health Benalla', 1, '-36.5578296', '145.9958265', 0, '2023-08-21 07:38:40'),
(50, 'BUPA', 'Bonbeach', '53-59 Broadway, Bonbeach VIC 3196, Australia', 'Bupa Aged Care Bonbeach', 1, '-38.05759315', '145.1262121', 0, '2023-08-21 07:38:40'),
(51, 'BUPA', 'Croydon', '120/122-124 Maroondah Hwy, Croydon VIC 3136, Australia', 'Bupa Aged Care Croydon', 1, '-37.78841973', '145.2731655', 0, '2023-08-21 07:38:40'),
(52, 'BUPA', 'Kyneton', '2 Edgecombe St, Kyneton VIC 3444, Australia', 'Bupa Aged Care Kyneton,', 1, '-37.25710743', '144.4624659', 0, '2023-08-21 07:38:40'),
(53, 'BUPA', 'Coburg', '24 Sutherland Street,Coburg, VIC 3058', 'Bupa Coburg', 1, '-37.73881178', '144.9614311', 0, '2023-08-21 07:38:40'),
(54, 'BUPA', 'Templestowe', '222 Serpells Road,Templestowe, VIC 3074', 'Bupa Aged Care Templestowe', 1, '-37.76756767', '145.1536246', 0, '2023-08-21 07:38:40'),
(55, 'BUPA', 'Clayton', '12 Burton Ave, Clayton VIC 3168, Australia', 'Bupa Aged Care Clayton', 1, '-37.92745291', '145.1161467', 0, '2023-08-21 07:38:40'),
(56, 'BUPA', 'Woodend', '2 Sullivans Rd, Woodend VIC 3442, Australia', 'Bupa Aged Care Woodend', 1, '-37.36342751', '144.5357137', 0, '2023-08-21 07:38:40'),
(57, 'BUPA', 'Donvale', '296-304 Springvale Road DONVALE VIC 3111', 'Bupa Donvale', 1, '-37.79177407', '145.1795179', 0, '2023-08-21 07:38:40'),
(58, 'BUPA', 'Mildura', '514 Deakin Ave, Mildura VIC 3500, Australia', 'Bupa Aged Care Mildura', 1, '-34.20970962', '142.1343895', 0, '2023-08-21 07:38:40'),
(59, 'BUPA', 'Caulfield', '349/351A North Rd, Caulfield South VIC 3162, Australia', 'Bupa Aged Care Caulfield', 1, '-37.90219049', '145.0279853', 0, '2023-08-21 07:38:40'),
(60, 'BUPA', 'Narre Warren North', '359 Narre Warren North Rd, Narre Warren North VIC 3804, Australia', 'Bupa Aged Care Berwick', 1, '-37.99451067', '145.3123923', 0, '2023-08-21 07:38:40'),
(61, 'BUPA', 'Windsor', '102/104A Union St, Windsor VIC 3181, Australia', 'Bupa Aged Care Windsor,', 1, '-37.85423585', '144.9886439', 0, '2023-08-21 07:38:40'),
(62, 'BUPA', 'South Morang', '18-22 McGlynn Ave, South Morang VIC 3752, Australia', 'Bupa South Morang', 1, '-37.65432207', '145.088172', 0, '2023-08-21 07:38:40'),
(63, 'BUPA', 'Belmont', '55 Barrabool Rd, Belmont VIC 3216, Australia', 'Bupa Barrabool', 1, '-38.166027376887776, ', '144.3368076', 1, '2023-08-21 07:38:40'),
(64, 'BUPA', 'Greensborough', ' 264 Diamond Creek Rd, Greensborough VIC 3088, Australia', 'Bupa Greensborough', 1, '-37.68125352', '145.1226557', 0, '2023-08-21 07:38:40'),
(65, 'BUPA', 'Echuca', '7 Fehring Ln, Echuca VIC 3564, Australia', 'Bupa Aged Care Echuca', 1, '-36.15464222', '144.7320107', 1, '2023-08-21 07:38:40'),
(66, 'BUPA', 'Traralgon', '96 Park Ln, Traralgon VIC 3844, Australia', 'Bupa Traralgon', 1, '-38.17955839', '146.5509529', 0, '2023-08-21 07:38:40'),
(67, 'BUPA', 'Ballarat', '305 Smythes Rd, Delacombe VIC 3356, Australia', 'Bupa Aged Care Ballarat,', 1, '-37.59123035', '143.809069', 0, '2023-08-21 07:38:40'),
(68, 'BUPA', 'Wodonga', '11-19 Melrose Drive,West Wodonga, VIC 3590', 'Bupa Wodonga', 1, '-36.1161039', '146.866888', 0, '2023-08-21 07:38:40'),
(69, 'BUPA', 'Bendigo', '208 Holdsworth Rd,Bendigo, VIC 3550', 'Bupa Bendigo', 1, '-36.73488818', '144.2809778', 0, '2023-08-21 07:38:40'),
(71, 'Khorban Care Solutions', '', 'Corporate One Building, Suite 101, 84 Hotham Street, Preston VIC 3072, Melbourne, Australia', 'Khorban Care Solutions', 1, '-37.74657637', '145.0082202', 2, '2023-08-21 07:38:40'),
(73, 'Calvary', 'Ballarat East', '207 Richards St, Ballarat East VIC 3350, Australia', 'Calvary Kirralee', 1, '-37.56726874', '143.8904689', 0, '2023-08-21 07:38:40'),
(74, 'Calvary', ' Windsor', '101 Punt Rd, Windsor VIC 3181, Australia', 'Calvary Central Park', 1, '-37.8517692', '144.9831739', 0, '2023-08-21 07:38:40'),
(75, 'Calvary', ' Bendigo', '92-100 McIvor Hwy, Bendigo VIC 3550, Australia', 'Calvary Mirridong', 1, '-36.75877103', '144.2982116', 0, '2023-08-21 07:38:40'),
(76, 'Calvary', ' Wendouree ', '2/4 Park St, Wendouree VIC 3355, Australia', 'Calvary Kelaston\r\n', 1, '-37.5389548', '143.8255836', 0, '2023-08-21 07:38:40'),
(77, 'Calvary', ' Springvale ', '340-344 Springvale Rd, Springvale VIC 3171, Australia', 'Calvary Springvale', 1, '-37.95694247', '145.1505762', 0, '2023-08-21 07:38:40'),
(78, 'Calvary', ' Anglesea', '5 Weir St, Anglesea VIC 3230, Australia', 'Calvary', 1, '-38.40511083', '144.1813085', 0, '2023-08-21 07:38:40'),
(79, 'Calvary', ' Hallam', '47-49 Belgrave-Hallam Rd, Hallam VIC 3803, Australia', 'Calvary Hallam', 1, '-37.99986766', '145.2736565', 0, '2023-08-21 07:38:40'),
(80, 'Calvary', 'Carrum Downs ', '1295 Frankston - Dandenong Rd, Carrum Downs VIC 3201, Australia', '\r\nCalvary Bayview', 1, '-38.10197813', '145.1717233', 0, '2023-08-21 07:38:40'),
(81, 'Calvary', 'Rosanna ', '269/267-271 Lower Plenty Rd, Rosanna VIC 3084, Australia', 'Calvary Rosanna Views', 1, '-37.73616955', '145.0755757', 0, '2023-08-21 07:38:40'),
(82, 'Calvary', 'Dandenong', '71 Scott St, Dandenong VIC 3175, Australia', 'Calvary Scottvale', 1, '-37.98624797', '145.2057699', 0, '2023-08-21 07:38:40'),
(83, 'Calvary', 'Mount Waverley', ' 35/39 Regent St, Mount Waverley VIC 3149, Australia', 'Calvary The Regent', 1, '-37.88332689', '145.1366884', 0, '2023-08-21 07:38:40'),
(84, 'Calvary', ' Carrum Downs ', '20 Herbert Rd, Carrum Downs VIC 3201, Australia', 'Calvary Sandhurst', 1, '-38.09085874', '145.1858977', 0, '2023-08-21 07:38:40'),
(85, 'Calvary', 'Springvale South', '201 Clarke Rd, Springvale South VIC 3172, Australia', 'Calvary Kingston Gardens', 1, '-37.97557532', '145.1453389', 0, '2023-08-21 07:38:40'),
(87, 'San Carlo homes for aged (Victoria)', 'outh Morang', ' 970 Plenty Rd, South Morang VIC 3752, Australia', 'San Carlo Homes for the Aged', 1, '-37.63955969', '145.0978592', 0, '2023-08-21 07:38:40'),
(89, 'Edwards Lodge (Aged Care) -- not preferable', 'Reservoir', '14 Barton St, Reservoir VIC 3073 , Australia', 'Edwards Lodge', 1, '-37.71117463', '145.0044127', 0, '2023-08-21 07:41:03'),
(91, 'St James Terrace (Aged Care)', 'Cheltenham', '296 Warrigal Rd, Cheltenham VIC 3192, Australia', 'St James Terrace', 1, '-37.96722926', '145.0744819', 0, '2023-08-21 07:41:03'),
(93, 'Northern Gardens Clinical (Aged Care)', 'Coburg North', '867 Sydney Rd, Coburg North VIC 3058, Australia', 'Northern Gardens', 1, '-37.72902289', '144.9635262', 0, '2023-08-21 07:41:03'),
(99, 'Allity (Medina Manor Aged Care)', 'Thornbury ', '200A Smith Street, Thornbury Victoria 3071, Australia', 'Medina Manor Aged Care', 1, '-37.75518428', '144.9836142', 0, '2023-08-21 07:41:03'),
(102, 'Homestyle Aged Care Point Cook Manor', ' Point Cook', '9 Hewett Drive, Point Cook Victoria 3030, Australia', 'Homestyle Aged Care Point Cook Manor', 1, '-37.89172569', '144.7259891', 0, '2023-08-21 07:41:03'),
(104, 'little sister of poor', 'northcote', 'St Joseph\'s Home, 112B St Georges Rd, Northcote VIC 3070, Australia', 'ittle Sisters Of The Poor', 1, '-37.77202756', '144.9918421', 0, '2023-08-21 07:41:03'),
(106, 'Arcare', 'Brighton', 'Arcare Brighton, 58 Cochrane St, Brighton VIC 3186, Australia', 'Arcare Brighton\r', 1, '-37.90026549', '144.9992901', 0, '2023-08-21 07:41:03'),
(107, 'Arcare', 'Burnside', '2 Nicol Avenue, Burnside Victoria, Australia', 'Arcare Burnside ', 1, '-37.75614327', '144.7536588', 0, '2023-08-21 07:41:03'),
(108, 'Arcare', 'Camegie', '47 Rosanna St, Carnegie VIC 3163, Australia', 'Arcare Carnegie', 3, '-37.89906041', '145.0616056', 0, '2023-08-21 07:41:03'),
(109, 'Arcare', 'Caulfield', '141 Kooyong Rd, Caulfield North VIC 3161, Australia', 'Arcare Caulfield', 1, '-37.87419114', '145.0169894', 0, '2023-08-21 07:41:03'),
(110, 'Arcare', 'Cheltenham', '161A Centre Dandenong Rd, Cheltenham VIC 3192, Australia', 'Arcare Cheltenham', 1, '-37.96699259', '145.0762756', 0, '2023-08-21 07:41:03'),
(111, 'Arcare', 'Epping', '7 Civic Dr, Epping VIC 3076, Australia', 'Arcare Civic Manor', 1, '-37.64840095', '145.0656043', 0, '2023-08-21 07:41:03'),
(112, 'Arcare', ' Essendon', '33 Raleigh Street, Essendon Victoria, Australia', 'Arcare Essendon', 1, '-37.75367889', '144.922375', 0, '2023-08-21 07:41:03'),
(113, 'Arcare', 'Sydenham', '50 Community Hub, Sydenham VIC 3037, Australia', 'Arcare Hillside', 1, '-37.70130865', '144.7584108', 0, '2023-08-21 07:41:03'),
(114, 'Arcare', 'Keysborough', '85 Stanley Rd, Keysborough VIC 3173, Australia', 'Arcare Keysborough', 1, '-38.00166048', '145.1678057', 0, '2023-08-21 07:41:03'),
(115, 'Arcare', 'Wantirna South ', '478 Burwood Hwy, Wantirna South VIC 3152, Australia', 'Arcare Knox', 1, '-37.8718821', '145.242762', 0, '2023-08-21 07:41:03'),
(116, 'Arcare', 'Wantirna South ', '478 Burwood Hwy, Wantirna South VIC 3152, Australia', 'Arcare Knox (The Lodge)', 1, '-37.87187422', '145.2427645', 0, '2023-08-21 07:41:03'),
(117, 'Arcare', 'Maidstone ', '31 Hampstead Rd, Maidstone VIC 3012, Australia', 'Arcare Maidstone', 1, '-37.77759236', '144.8756258', 0, '2023-08-21 07:41:03'),
(118, 'Arcare', 'Malvern East ', '1997-2005 Malvern Road, Malvern East VIC 3145, Australia', 'Arcare Malvern East', 1, '-37.87189004', '145.0637675', 0, '2023-08-21 07:41:03'),
(119, 'Arcare', ' Malvern East', '78 Nirvana Avenue, Malvern East Victoria, Australia', 'Arcare Nirvana', 1, '-37.87833801', '145.0645941', 0, '2023-08-21 07:41:03'),
(120, 'Arcare', 'Malvern East', '1287 Dandenong Road, Malvern East Victoria, Australia', 'Arcare Parkview', 1, '-37.88500053', '145.0732722', 0, '2023-08-21 07:41:03'),
(121, 'Arcare', 'Reservoir', 'Plenty Road & Gremel Road, Reservoir VIC, Australia', 'Arcare Reservoir', 1, '-37.72376072', '145.0303625', 0, '2023-08-21 07:41:03'),
(122, 'Arcare', 'Surrey Hills', '18 Florence Road, Surrey Hills Victoria, Australia', 'Arcare Surrey Hills', 1, '-37.82826248', '145.1023447', 0, '2023-08-21 07:41:03'),
(123, 'Arcare', 'Sydenham ', '31 Trickey Ave, Sydenham VIC 3037, Australia', '\r\nArcare Sydenham', 1, '-37.69662591', '144.7673812', 0, '2023-08-21 07:41:03'),
(124, 'Arcare', 'Templestowe', '75 King Street, Templestowe VIC, Australia', 'Arcare Templestowe', 1, '-37.7734377', '145.1541711', 0, '2023-08-21 07:41:03'),
(125, 'Arcare', 'Craigieburn', '251 Waterview Blvd, Craigieburn VIC 3064, Australia', 'Arcare Waterview (Craigieburn)', 1, '-37.5840532', '144.9064779', 0, '2023-08-21 07:41:03'),
(127, 'Victorian Elderly Chinese Hostel', 'Ascot Vale', ' Address: 77 Hurtle St, Ascot Vale, VIC 3032', 'Victorian Elderly Chinese Hostel', 1, '-37.77436093', '144.9059918', 0, '2023-08-21 07:41:03'),
(129, 'Hope Aged Care', ' Brunswick', '34 Lux way, Brunswick, VIC 3056', 'Hope Aged Care Brunswick', 1, '-37.76554932', '144.9596005', 0, '2023-08-21 07:41:03'),
(130, 'Hope Aged Care', 'Gladstone Park', '14 South Circular Rd.Gladstone Park, VIC 3043', 'Hope Aged Care Gladstone Park', 1, '-37.68686688', '144.8860614', 0, '2023-08-21 07:41:03'),
(131, 'Hope Aged Care', 'Sunshine West', '2 Killara St, Sunshine West VIC 3020', 'Hope Aged Care Sunshine', 1, '-37.78704138', '144.8235192', 0, '2023-08-21 07:41:03'),
(132, 'Hope Aged Care', ' Swan Hill', '39 Acacia St, Swan Hill VIC 3585', 'Hope Swan Hill', 1, '-35.3440719', '143.5259545', 0, '2023-08-21 07:41:03'),
(133, 'Aurrum Aged Care', 'Brunswick', '17 Egginton Street, Brunswick West VIC 3055', 'AURRUM AGED CARE BRUNSWICK', 1, '-37.76000388', '144.9389126', 0, '2023-08-21 07:41:03'),
(134, 'Aurrum Aged Care', 'Healesville', '27 Smith St Healesville VIC 377', 'AURRUM AGED CARE HEALESVILLE', 1, '-37.66073662', '145.5087195', 0, '2023-08-21 07:41:03'),
(135, 'Aurrum Aged Care', 'Plenty', '321 Diamond Creek Road, Plenty VIC 3090', 'AURRUM AGED CARE PLENTY', 1, '-37.67706339', '145.1252878', 0, '2023-08-21 07:41:03'),
(136, 'Aurrum Aged Care', ' Reservoir', '1 Aberdeen St, Reservoir VIC 3073', 'AURRUM RESERVOIR', 1, '-37.70339145', '145.0181402', 0, '2023-08-21 07:41:03'),
(138, 'Calvary', ' Bonbeach', '440 Station St, Bonbeach VIC 3196, Australia', 'Calvary Bonbeach', 1, '-38.06678143', '145.1208646', 0, '2023-08-21 07:41:03'),
(139, 'Calvary', ' Windsor ', '101 Punt Rd, Windsor VIC 3181, Australia', 'Calvary Central Park', 1, '-37.85177509', '144.9831718', 0, '2023-08-21 07:41:03'),
(140, 'BUPA', 'Belmont', '55 Barrabool Rd, Belmont VIC 3216, Australia', 'Bupa Barrabool', 1, '-38.166027376887776', '144.3368076', 0, '2023-08-22 05:19:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application_settings`
--
ALTER TABLE `application_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`loc_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application_settings`
--
ALTER TABLE `application_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `loc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
