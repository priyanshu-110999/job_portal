-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2023 at 09:06 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job@eepl`
--

-- --------------------------------------------------------

--
-- Table structure for table `companylogin`
--

CREATE TABLE `companylogin` (
  `comp_name` varchar(100) NOT NULL,
  `comp_reg` varchar(100) NOT NULL,
  `reg_id` varchar(10) NOT NULL,
  `UID` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` int(10) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `name` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`name`, `code`) VALUES
('Afghanistan', 'AF'),
('ÅlandIslands', 'AX'),
('Albania', 'AL'),
('Algeria', 'DZ'),
('AmericanSamoa', 'AS'),
('AndorrA', 'AD'),
('Angola', 'AO'),
('Anguilla', 'AI'),
('Antarctica', 'AQ'),
('AntiguaandBarbuda', 'AG'),
('Argentina', 'AR'),
('Armenia', 'AM'),
('Aruba', 'AW'),
('Australia', 'AU'),
('Austria', 'AT'),
('Azerbaijan', 'AZ'),
('Bahamas', 'BS'),
('Bahrain', 'BH'),
('Bangladesh', 'BD'),
('Barbados', 'BB'),
('Belarus', 'BY'),
('Belgium', 'BE'),
('Belize', 'BZ'),
('Benin', 'BJ'),
('Bermuda', 'BM'),
('Bhutan', 'BT'),
('Bolivia', 'BO'),
('BosniaandHerzegovina', 'BA'),
('Botswana', 'BW'),
('BouvetIsland', 'BV'),
('Brazil', 'BR'),
('BritishIndianOceanTerritory', 'IO'),
('BruneiDarussalam', 'BN'),
('Bulgaria', 'BG'),
('BurkinaFaso', 'BF'),
('Burundi', 'BI'),
('Cambodia', 'KH'),
('Cameroon', 'CM'),
('Canada', 'CA'),
('CapeVerde', 'CV'),
('CaymanIslands', 'KY'),
('CentralAfricanRepublic', 'CF'),
('Chad', 'TD'),
('Chile', 'CL'),
('China', 'CN'),
('ChristmasIsland', 'CX'),
('Cocos(Keeling)Islands', 'CC'),
('Colombia', 'CO'),
('Comoros', 'KM'),
('Congo', 'CG'),
('Congo,TheDemocraticRepublicofthe', 'CD'),
('CookIslands', 'CK'),
('CostaRica', 'CR'),
('CoteD\'Ivoire', 'CI'),
('Croatia', 'HR'),
('Cuba', 'CU'),
('Cyprus', 'CY'),
('CzechRepublic', 'CZ'),
('Denmark', 'DK'),
('Djibouti', 'DJ'),
('Dominica', 'DM'),
('DominicanRepublic', 'DO'),
('Ecuador', 'EC'),
('Egypt', 'EG'),
('ElSalvador', 'SV'),
('EquatorialGuinea', 'GQ'),
('Eritrea', 'ER'),
('Estonia', 'EE'),
('Ethiopia', 'ET'),
('FalklandIslands(Malvinas)', 'FK'),
('FaroeIslands', 'FO'),
('Fiji', 'FJ'),
('Finland', 'FI'),
('France', 'FR'),
('FrenchGuiana', 'GF'),
('FrenchPolynesia', 'PF'),
('FrenchSouthernTerritories', 'TF'),
('Gabon', 'GA'),
('Gambia', 'GM'),
('Georgia', 'GE'),
('Germany', 'DE'),
('Ghana', 'GH'),
('Gibraltar', 'GI'),
('Greece', 'GR'),
('Greenland', 'GL'),
('Grenada', 'GD'),
('Guadeloupe', 'GP'),
('Guam', 'GU'),
('Guatemala', 'GT'),
('Guernsey', 'GG'),
('Guinea', 'GN'),
('Guinea-Bissau', 'GW'),
('Guyana', 'GY'),
('Haiti', 'HT'),
('HeardIslandandMcdonaldIslands', 'HM'),
('HolySee(VaticanCityState)', 'VA'),
('Honduras', 'HN'),
('HongKong', 'HK'),
('Hungary', 'HU'),
('Iceland', 'IS'),
('India', 'IN'),
('Indonesia', 'ID'),
('Iran,IslamicRepublicOf', 'IR'),
('Iraq', 'IQ'),
('Ireland', 'IE'),
('IsleofMan', 'IM'),
('Israel', 'IL'),
('Italy', 'IT'),
('Jamaica', 'JM'),
('Japan', 'JP'),
('Jersey', 'JE'),
('Jordan', 'JO'),
('Kazakhstan', 'KZ'),
('Kenya', 'KE'),
('Kiribati', 'KI'),
('Korea,DemocraticPeople\'SRepublicof', 'KP'),
('Korea,Republicof', 'KR'),
('Kuwait', 'KW'),
('Kyrgyzstan', 'KG'),
('LaoPeople\'SDemocraticRepublic', 'LA'),
('Latvia', 'LV'),
('Lebanon', 'LB'),
('Lesotho', 'LS'),
('Liberia', 'LR'),
('LibyanArabJamahiriya', 'LY'),
('Liechtenstein', 'LI'),
('Lithuania', 'LT'),
('Luxembourg', 'LU'),
('Macao', 'MO'),
('Macedonia,TheFormerYugoslavRepublicof', 'MK'),
('Madagascar', 'MG'),
('Malawi', 'MW'),
('Malaysia', 'MY'),
('Maldives', 'MV'),
('Mali', 'ML'),
('Malta', 'MT'),
('MarshallIslands', 'MH'),
('Martinique', 'MQ'),
('Mauritania', 'MR'),
('Mauritius', 'MU'),
('Mayotte', 'YT'),
('Mexico', 'MX'),
('Micronesia,FederatedStatesof', 'FM'),
('Moldova,Republicof', 'MD'),
('Monaco', 'MC'),
('Mongolia', 'MN'),
('Montserrat', 'MS'),
('Morocco', 'MA'),
('Mozambique', 'MZ'),
('Myanmar', 'MM'),
('Namibia', 'NA'),
('Nauru', 'NR'),
('Nepal', 'NP'),
('Netherlands', 'NL'),
('NetherlandsAntilles', 'AN'),
('NewCaledonia', 'NC'),
('NewZealand', 'NZ'),
('Nicaragua', 'NI'),
('Niger', 'NE'),
('Nigeria', 'NG'),
('Niue', 'NU'),
('NorfolkIsland', 'NF'),
('NorthernMarianaIslands', 'MP'),
('Norway', 'NO'),
('Oman', 'OM'),
('Pakistan', 'PK'),
('Palau', 'PW'),
('PalestinianTerritory,Occupied', 'PS'),
('Panama', 'PA'),
('PapuaNewGuinea', 'PG'),
('Paraguay', 'PY'),
('Peru', 'PE'),
('Philippines', 'PH'),
('Pitcairn', 'PN'),
('Poland', 'PL'),
('Portugal', 'PT'),
('PuertoRico', 'PR'),
('Qatar', 'QA'),
('Reunion', 'RE'),
('Romania', 'RO'),
('RussianFederation', 'RU'),
('RWANDA', 'RW'),
('SaintHelena', 'SH'),
('SaintKittsandNevis', 'KN'),
('SaintLucia', 'LC'),
('SaintPierreandMiquelon', 'PM'),
('SaintVincentandtheGrenadines', 'VC'),
('Samoa', 'WS'),
('SanMarino', 'SM'),
('SaoTomeandPrincipe', 'ST'),
('SaudiArabia', 'SA'),
('Senegal', 'SN'),
('SerbiaandMontenegro', 'CS'),
('Seychelles', 'SC'),
('SierraLeone', 'SL'),
('Singapore', 'SG'),
('Slovakia', 'SK'),
('Slovenia', 'SI'),
('SolomonIslands', 'SB'),
('Somalia', 'SO'),
('SouthAfrica', 'ZA'),
('SouthGeorgiaandtheSouthSandwichIslands', 'GS'),
('Spain', 'ES'),
('SriLanka', 'LK'),
('Sudan', 'SD'),
('Suriname', 'SR'),
('SvalbardandJanMayen', 'SJ'),
('Swaziland', 'SZ'),
('Sweden', 'SE'),
('Switzerland', 'CH'),
('SyrianArabRepublic', 'SY'),
('Taiwan,ProvinceofChina', 'TW'),
('Tajikistan', 'TJ'),
('Tanzania,UnitedRepublicof', 'TZ'),
('Thailand', 'TH'),
('Timor-Leste', 'TL'),
('Togo', 'TG'),
('Tokelau', 'TK'),
('Tonga', 'TO'),
('TrinidadandTobago', 'TT'),
('Tunisia', 'TN'),
('Turkey', 'TR'),
('Turkmenistan', 'TM'),
('TurksandCaicosIslands', 'TC'),
('Tuvalu', 'TV'),
('Uganda', 'UG'),
('Ukraine', 'UA'),
('UnitedArabEmirates', 'AE'),
('UnitedKingdom', 'GB'),
('UnitedStates', 'US'),
('UnitedStatesMinorOutlyingIslands', 'UM'),
('Uruguay', 'UY'),
('Uzbekistan', 'UZ'),
('Vanuatu', 'VU'),
('Venezuela', 'VE'),
('VietNam', 'VN'),
('VirginIslands,British', 'VG'),
('VirginIslands,U.S.', 'VI'),
('WallisandFutuna', 'WF'),
('WesternSahara', 'EH'),
('Yemen', 'YE'),
('Zambia', 'ZM'),
('Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE `job_post` (
  `uid` int(11) NOT NULL,
  `post` varchar(100) NOT NULL,
  `post_description` varchar(500) NOT NULL,
  `company_name` varchar(500) NOT NULL,
  `contact_details` varchar(10) NOT NULL,
  `salary` varchar(50) NOT NULL,
  `job_location` varchar(50) NOT NULL,
  `experience` varchar(50) NOT NULL,
  `skills` varchar(50) NOT NULL,
  `min_education` varchar(50) NOT NULL,
  `language` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`uid`, `post`, `post_description`, `company_name`, `contact_details`, `salary`, `job_location`, `experience`, `skills`, `min_education`, `language`) VALUES
(454212, 'sdads', '', '', '', 'fdgdg', '', '', 'fgd', '', ''),
(0, '', '', '', '', '', '', '', '', '', ''),
(12324, 'sde', '', 'sczdcxzc', 'dfdvcx', '123445', 'dsfdvg', 'dfdv', 'vxvfd', 'xcvxcb', 'fgff'),
(12132455, 'ewfsfds', 'dvfdvcjyk', 'dvfdsvcx', 'zxcxvcvfd', 'cvxcvdff', 'vxcbvfgh', 'zcdfv', 'xcvsr', 'dcvdv', 'cxzdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `Cou_id` varchar(20) NOT NULL,
  `state_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`Cou_id`, `state_name`) VALUES
('001', 'Jharkhand'),
('001', 'Bihar');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
