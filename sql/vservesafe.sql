-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2024 at 09:07 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vservesafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `datatables_demo`
--

CREATE TABLE `datatables_demo` (
  `id` int(10) NOT NULL,
  `first_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `office` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_date` datetime DEFAULT NULL,
  `age` int(8) DEFAULT NULL,
  `salary` int(8) DEFAULT NULL,
  `seq` int(8) DEFAULT NULL,
  `extn` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datatables_demo`
--

INSERT INTO `datatables_demo` (`id`, `first_name`, `last_name`, `position`, `email`, `office`, `start_date`, `age`, `salary`, `seq`, `extn`) VALUES
(1, 'Tiger', 'Nixon', 'System Architect', 't.nixon@datatables.net', 'Edinburgh', '2011-04-25 00:00:00', 61, 320800, 2, '5421'),
(2, 'Garrett', 'Winters', 'Accountant', 'g.winters@datatables.net', 'Tokyo', '2011-07-25 00:00:00', 63, 170750, 22, '8422'),
(3, 'Ashton', 'Cox', 'Junior Technical Author', 'a.cox@datatables.net', 'San Francisco', '2009-01-12 00:00:00', 66, 86000, 6, '1562'),
(4, 'Cedric', 'Kelly', 'Senior Javascript Developer', 'c.kelly@datatables.net', 'Edinburgh', '2012-03-29 00:00:00', 22, 433060, 41, '6224'),
(5, 'Airi', 'Satou', 'Accountant', 'a.satou@datatables.net', 'Tokyo', '2008-11-28 00:00:00', 33, 162700, 55, '5407'),
(6, 'Brielle', 'Williamson', 'Integration Specialist', 'b.williamson@datatables.net', 'New York', '2012-12-02 00:00:00', 61, 372000, 21, '4804'),
(7, 'Herrod', 'Chandler', 'Sales Assistant', 'h.chandler@datatables.net', 'San Francisco', '2012-08-06 00:00:00', 59, 137500, 46, '9608'),
(8, 'Rhona', 'Davidson', 'Integration Specialist', 'r.davidson@datatables.net', 'Tokyo', '2010-10-14 00:00:00', 55, 327900, 50, '6200'),
(9, 'Colleen', 'Hurst', 'Javascript Developer', 'c.hurst@datatables.net', 'San Francisco', '2009-09-15 00:00:00', 39, 205500, 26, '2360'),
(10, 'Sonya', 'Frost', 'Software Engineer', 's.frost@datatables.net', 'Edinburgh', '2008-12-13 00:00:00', 23, 103600, 18, '1667'),
(11, 'Jena', 'Gaines', 'Office Manager', 'j.gaines@datatables.net', 'London', '2008-12-19 00:00:00', 30, 90560, 13, '3814'),
(12, 'Quinn', 'Flynn', 'Support Lead', 'q.flynn@datatables.net', 'Edinburgh', '2013-03-03 00:00:00', 22, 342000, 23, '9497'),
(13, 'Charde', 'Marshall', 'Regional Director', 'c.marshall@datatables.net', 'San Francisco', '2008-10-16 00:00:00', 36, 470600, 14, '6741'),
(14, 'Haley', 'Kennedy', 'Senior Marketing Designer', 'h.kennedy@datatables.net', 'London', '2012-12-18 00:00:00', 43, 313500, 12, '3597'),
(15, 'Tatyana', 'Fitzpatrick', 'Regional Director', 't.fitzpatrick@datatables.net', 'London', '2010-03-17 00:00:00', 19, 385750, 54, '1965'),
(16, 'Michael', 'Silva', 'Marketing Designer', 'm.silva@datatables.net', 'London', '2012-11-27 00:00:00', 66, 198500, 37, '1581'),
(17, 'Paul', 'Byrd', 'Chief Financial Officer (CFO)', 'p.byrd@datatables.net', 'New York', '2010-06-09 00:00:00', 64, 725000, 32, '3059'),
(18, 'Gloria', 'Little', 'Systems Administrator', 'g.little@datatables.net', 'New York', '2009-04-10 00:00:00', 59, 237500, 35, '1721'),
(19, 'Bradley', 'Greer', 'Software Engineer', 'b.greer@datatables.net', 'London', '2012-10-13 00:00:00', 41, 132000, 48, '2558'),
(20, 'Dai', 'Rios', 'Personnel Lead', 'd.rios@datatables.net', 'Edinburgh', '2012-09-26 00:00:00', 35, 217500, 45, '2290'),
(21, 'Jenette', 'Caldwell', 'Development Lead', 'j.caldwell@datatables.net', 'New York', '2011-09-03 00:00:00', 30, 345000, 17, '1937'),
(22, 'Yuri', 'Berry', 'Chief Marketing Officer (CMO)', 'y.berry@datatables.net', 'New York', '2009-06-25 00:00:00', 40, 675000, 57, '6154'),
(23, 'Caesar', 'Vance', 'Pre-Sales Support', 'c.vance@datatables.net', 'New York', '2011-12-12 00:00:00', 21, 106450, 29, '8330'),
(24, 'Doris', 'Wilder', 'Sales Assistant', 'd.wilder@datatables.net', 'Sydney', '2010-09-20 00:00:00', 23, 85600, 56, '3023'),
(25, 'Angelica', 'Ramos', 'Chief Executive Officer (CEO)', 'a.ramos@datatables.net', 'London', '2009-10-09 00:00:00', 47, 1200000, 36, '5797'),
(26, 'Gavin', 'Joyce', 'Developer', 'g.joyce@datatables.net', 'Edinburgh', '2010-12-22 00:00:00', 42, 92575, 5, '8822'),
(27, 'Jennifer', 'Chang', 'Regional Director', 'j.chang@datatables.net', 'Singapore', '2010-11-14 00:00:00', 28, 357650, 51, '9239'),
(28, 'Brenden', 'Wagner', 'Software Engineer', 'b.wagner@datatables.net', 'San Francisco', '2011-06-07 00:00:00', 28, 206850, 20, '1314'),
(29, 'Fiona', 'Green', 'Chief Operating Officer (COO)', 'f.green@datatables.net', 'San Francisco', '2010-03-11 00:00:00', 48, 850000, 7, '2947'),
(30, 'Shou', 'Itou', 'Regional Marketing', 's.itou@datatables.net', 'Tokyo', '2011-08-14 00:00:00', 20, 163000, 1, '8899'),
(31, 'Michelle', 'House', 'Integration Specialist', 'm.house@datatables.net', 'Sydney', '2011-06-02 00:00:00', 37, 95400, 39, '2769'),
(32, 'Suki', 'Burks', 'Developer', 's.burks@datatables.net', 'London', '2009-10-22 00:00:00', 53, 114500, 40, '6832'),
(33, 'Prescott', 'Bartlett', 'Technical Author', 'p.bartlett@datatables.net', 'London', '2011-05-07 00:00:00', 27, 145000, 47, '3606'),
(34, 'Gavin', 'Cortez', 'Team Leader', 'g.cortez@datatables.net', 'San Francisco', '2008-10-26 00:00:00', 22, 235500, 52, '2860'),
(35, 'Martena', 'Mccray', 'Post-Sales support', 'm.mccray@datatables.net', 'Edinburgh', '2011-03-09 00:00:00', 46, 324050, 8, '8240'),
(36, 'Unity', 'Butler', 'Marketing Designer', 'u.butler@datatables.net', 'San Francisco', '2009-12-09 00:00:00', 47, 85675, 24, '5384'),
(37, 'Howard', 'Hatfield', 'Office Manager', 'h.hatfield@datatables.net', 'San Francisco', '2008-12-16 00:00:00', 51, 164500, 38, '7031'),
(38, 'Hope', 'Fuentes', 'Secretary', 'h.fuentes@datatables.net', 'San Francisco', '2010-02-12 00:00:00', 41, 109850, 53, '6318'),
(39, 'Vivian', 'Harrell', 'Financial Controller', 'v.harrell@datatables.net', 'San Francisco', '2009-02-14 00:00:00', 62, 452500, 30, '9422'),
(40, 'Timothy', 'Mooney', 'Office Manager', 't.mooney@datatables.net', 'London', '2008-12-11 00:00:00', 37, 136200, 28, '7580'),
(41, 'Jackson', 'Bradshaw', 'Director', 'j.bradshaw@datatables.net', 'New York', '2008-09-26 00:00:00', 65, 645750, 34, '1042'),
(42, 'Olivia', 'Liang', 'Support Engineer', 'o.liang@datatables.net', 'Singapore', '2011-02-03 00:00:00', 64, 234500, 4, '2120'),
(43, 'Bruno', 'Nash', 'Software Engineer', 'b.nash@datatables.net', 'London', '2011-05-03 00:00:00', 38, 163500, 3, '6222'),
(44, 'Sakura', 'Yamamoto', 'Support Engineer', 's.yamamoto@datatables.net', 'Tokyo', '2009-08-19 00:00:00', 37, 139575, 31, '9383'),
(45, 'Thor', 'Walton', 'Developer', 't.walton@datatables.net', 'New York', '2013-08-11 00:00:00', 61, 98540, 11, '8327'),
(46, 'Finn', 'Camacho', 'Support Engineer', 'f.camacho@datatables.net', 'San Francisco', '2009-07-07 00:00:00', 47, 87500, 10, '2927'),
(47, 'Serge', 'Baldwin', 'Data Coordinator', 's.baldwin@datatables.net', 'Singapore', '2012-04-09 00:00:00', 64, 138575, 44, '8352'),
(48, 'Zenaida', 'Frank', 'Software Engineer', 'z.frank@datatables.net', 'New York', '2010-01-04 00:00:00', 63, 125250, 42, '7439'),
(49, 'Zorita', 'Serrano', 'Software Engineer', 'z.serrano@datatables.net', 'San Francisco', '2012-06-01 00:00:00', 56, 115000, 27, '4389'),
(50, 'Jennifer', 'Acosta', 'Junior Javascript Developer', 'j.acosta@datatables.net', 'Edinburgh', '2013-02-01 00:00:00', 43, 75650, 49, '3431'),
(51, 'Cara', 'Stevens', 'Sales Assistant', 'c.stevens@datatables.net', 'New York', '2011-12-06 00:00:00', 46, 145600, 15, '3990'),
(52, 'Hermione', 'Butler', 'Regional Director', 'h.butler@datatables.net', 'London', '2011-03-21 00:00:00', 47, 356250, 9, '1016'),
(53, 'Lael', 'Greer', 'Systems Administrator', 'l.greer@datatables.net', 'London', '2009-02-27 00:00:00', 21, 103500, 25, '6733'),
(54, 'Jonas', 'Alexander', 'Developer', 'j.alexander@datatables.net', 'San Francisco', '2010-07-14 00:00:00', 30, 86500, 33, '8196'),
(55, 'Shad', 'Decker', 'Regional Director', 's.decker@datatables.net', 'Edinburgh', '2008-11-13 00:00:00', 51, 183000, 43, '6373'),
(56, 'Michael', 'Bruce', 'Javascript Developer', 'm.bruce@datatables.net', 'Singapore', '2011-06-27 00:00:00', 29, 183000, 16, '5384'),
(57, 'Donna', 'Snider', 'Customer Support', 'd.snider@datatables.net', 'New York', '2011-01-25 00:00:00', 27, 112000, 19, '4226');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `company_id`, `name`, `is_active`, `created`, `updated`) VALUES
(1, 1, 'HR', 'Y', '2024-02-01 13:09:48', '2024-02-01 13:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `formservices`
--

CREATE TABLE `formservices` (
  `id` int(11) NOT NULL,
  `name_th` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `formservices`
--

INSERT INTO `formservices` (`id`, `name_th`, `name_en`, `created`, `updated`) VALUES
(1, 'แบบฟอร์มบันทึกการทำอาหารร้อนให้เย็นลง', 'Cooling Form', '2024-02-01 11:47:04', '2024-02-01 11:49:09'),
(2, 'แบบฟอร์มการอุ่นอาหาร', 'Reheating Form', '2024-02-01 11:47:24', '2024-02-01 11:49:17'),
(3, 'แบบฟอร์มอุณหภูมิการปรุงสุกอาหาร', 'Internal Cooking Temp Form', '2024-02-01 11:47:35', '2024-02-01 11:49:25'),
(4, 'แบบฟอร์มการตรวจรับวัตถุดิบ', 'Receiving Inspection Form', '2024-02-01 11:47:54', '2024-02-01 11:49:33'),
(5, 'แบบฟอร์มการทำละลายอาหารแช่แข็ง', 'Food Thawing Form', '2024-02-01 11:48:05', '2024-02-01 11:49:41'),
(6, 'แบบฟอร์มบันทึกตู้เย็น / ตู้แช่แข็ง', 'Chilled/Frozen Storage Form', '2024-02-01 11:48:24', '2024-02-01 11:49:53'),
(7, 'แบบฟอร์มควบคุมความร้อน/เย็น ระหว่างบริการอาหาร', 'Hot/Cold Holding Service Form', '2024-02-01 11:48:36', '2024-02-01 11:50:03'),
(8, 'แบบฟอร์มการจัดวางอาหารของงานจัดเลี้ยง', 'Food Plating Form', '2024-02-01 11:48:48', '2024-02-01 11:50:11');

-- --------------------------------------------------------

--
-- Table structure for table `new_customer`
--

CREATE TABLE `new_customer` (
  `customer_id` int(11) UNSIGNED NOT NULL,
  `store_id` int(11) UNSIGNED DEFAULT NULL,
  `first_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_customer`
--

INSERT INTO `new_customer` (`customer_id`, `store_id`, `first_name`, `last_name`, `email`) VALUES
(1, 1, 'MARY', 'SMITH', 'MARY.SMITH@viriyah.co.th'),
(2, 1, 'PATRICIA', 'JOHNSON', 'PATRICIA.JOHNSON@viriyah.co.th');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `profile_id` int(11) NOT NULL,
  `site_id` int(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `profile_firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_lastname` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_lang` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_avatar` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_created` datetime DEFAULT current_timestamp(),
  `profile_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`profile_id`, `site_id`, `user_id`, `profile_firstname`, `profile_lastname`, `profile_lang`, `profile_avatar`, `profile_created`, `profile_updated`) VALUES
(1, 1, 1, 'Chawalit', 'Kiatmanaroj', 'en', 'ong.jpg', '2024-01-23 22:51:58', '2024-03-20 03:21:43'),
(2, 2, 2, 'Sasikarn', 'Jongsook', 'en', 'oum.jpg', '2024-01-23 22:55:38', '2024-03-20 03:21:43'),
(3, 3, 3, 'Dr.Patt', 'Dansai', 'en', 'patt.jpg', '2024-01-24 20:19:50', '2024-03-20 03:22:40');

-- --------------------------------------------------------

--
-- Table structure for table `rel_approve_line`
--

CREATE TABLE `rel_approve_line` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `parent_user_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rel_approve_line`
--

INSERT INTO `rel_approve_line` (`id`, `company_id`, `parent_user_id`, `user_id`, `created`, `updated`) VALUES
(1, 1, 3, 1, '2024-02-01 13:16:51', '2024-02-01 13:16:51'),
(4, 1, 2, 1, '2024-02-01 13:17:58', '2024-02-01 13:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `rel_companies_formservices`
--

CREATE TABLE `rel_companies_formservices` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `formservice_id` int(11) NOT NULL,
  `is_active` varchar(3) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rel_departments_users`
--

CREATE TABLE `rel_departments_users` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` varchar(3) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rel_users_profiles`
--

CREATE TABLE `rel_users_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `access`, `data`) VALUES
('4aa4e2541e934dd44621ead7bf8c9c75', 1709962643, 'user|s:20:\"superong@example.com\";');

-- --------------------------------------------------------

--
-- Table structure for table `shecup_fsms_answers`
--

CREATE TABLE `shecup_fsms_answers` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `audit_id` int(11) NOT NULL,
  `section_id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(3) DEFAULT NULL,
  `point` int(3) NOT NULL,
  `compliance_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finding` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `standard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `root_cause` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `corrective_action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shecup_fsms_answers`
--

INSERT INTO `shecup_fsms_answers` (`id`, `company_id`, `audit_id`, `section_id`, `question_no`, `score`, `point`, `compliance_status`, `finding`, `standard`, `root_cause`, `correction`, `corrective_action`, `created`, `updated`) VALUES
(5, 1, 1111, '1', '1.1', 5, 5, 'Compliance', NULL, NULL, NULL, NULL, NULL, '2024-03-19 16:45:56', '2024-03-19 16:45:56'),
(36, 1, 20240029, '1', '1.1', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-20 07:50:46', '2024-03-20 07:50:46'),
(37, 1, 20240029, '1', '1.2', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-20 07:50:46', '2024-03-20 07:50:46'),
(6, 1, 20240032, '1', '1.1', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 16:46:30', '2024-03-19 16:46:30'),
(7, 1, 20240032, '1', '1.2', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 16:46:30', '2024-03-19 16:46:30'),
(8, 1, 20240032, '2', '2.1', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 16:47:22', '2024-03-19 16:47:22'),
(9, 1, 20240032, '2', '2.2', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 16:47:22', '2024-03-19 16:47:22'),
(10, 1, 20240032, '2', '2.3', 1, 1, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 16:47:22', '2024-03-19 16:47:22'),
(11, 1, 20240032, '2', '2.4', 1, 1, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 16:47:22', '2024-03-19 16:47:22'),
(12, 1, 20240032, '2', '2.5', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 16:47:22', '2024-03-19 16:47:22'),
(18, 1, 20240032, '3', '3.1', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 17:13:57', '2024-03-19 17:13:57'),
(19, 1, 20240032, '3', '3.2', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 17:13:57', '2024-03-19 17:13:57'),
(20, 1, 20240032, '3', '3.3', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 17:13:57', '2024-03-19 17:13:57'),
(21, 1, 20240032, '3', '3.4', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 17:13:57', '2024-03-19 17:13:57'),
(22, 1, 20240032, '3', '3.5', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 17:13:57', '2024-03-19 17:13:57'),
(23, 1, 20240032, '3', '3.6', 1, 1, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 17:13:57', '2024-03-19 17:13:57'),
(24, 1, 20240032, '4', '4.1', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 17:14:21', '2024-03-19 17:14:21'),
(25, 1, 20240032, '4', '4.2', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 17:14:21', '2024-03-19 17:14:21'),
(26, 1, 20240032, '4', '4.3', 1, 1, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 17:14:21', '2024-03-19 17:14:21'),
(27, 1, 20240032, '4', '4.4', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 17:14:21', '2024-03-19 17:14:21'),
(28, 1, 20240032, '4', '4.5', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 17:14:21', '2024-03-19 17:14:21'),
(29, 1, 20240032, '4', '4.6', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 17:14:21', '2024-03-19 17:14:21'),
(30, 1, 20240032, '5', '5.1', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 17:15:30', '2024-03-19 17:15:30'),
(31, 1, 20240032, '5', '5.2', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 17:15:30', '2024-03-19 17:15:30'),
(32, 1, 20240032, '6', '6.1', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 17:15:52', '2024-03-19 17:15:52'),
(33, 1, 20240032, '6', '6.2', 1, 1, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-19 17:15:52', '2024-03-19 17:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `shecup_fsms_answers.old`
--

CREATE TABLE `shecup_fsms_answers.old` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `audit_id` int(11) NOT NULL,
  `section_id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(3) DEFAULT NULL,
  `point` int(3) NOT NULL,
  `compliance_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finding` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `standard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `root_cause` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `corrective_action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shecup_fsms_answers.old`
--

INSERT INTO `shecup_fsms_answers.old` (`id`, `company_id`, `audit_id`, `section_id`, `question_no`, `score`, `point`, `compliance_status`, `finding`, `standard`, `root_cause`, `correction`, `corrective_action`, `created`, `updated`) VALUES
(1, 1, 1, '1', '1.1', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-06 13:44:56', '2024-03-06 13:44:56'),
(2, 1, 1, '1', '1.2', 3, 0, 'Non Compliance', '', NULL, NULL, NULL, NULL, '2024-03-06 13:44:56', '2024-03-06 13:44:56'),
(9, 1, 5, '1', '1.1', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 11:44:47', '2024-03-13 11:44:47'),
(10, 1, 5, '1', '1.2', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 11:44:47', '2024-03-13 11:44:47'),
(11, 1, 7, '1', '1.1', 5, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 11:59:26', '2024-03-13 11:59:26'),
(12, 1, 7, '1', '1.2', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 11:59:26', '2024-03-13 11:59:26'),
(13, 1, 7, '2', '2.1', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 11:59:58', '2024-03-13 11:59:58'),
(14, 1, 7, '2', '2.2', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 11:59:58', '2024-03-13 11:59:58'),
(15, 1, 7, '2', '2.3', 1, 1, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 11:59:58', '2024-03-13 11:59:58'),
(16, 1, 7, '2', '2.4', 1, 1, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 11:59:58', '2024-03-13 11:59:58'),
(17, 1, 7, '2', '2.5', 5, 0, 'Non Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 11:59:58', '2024-03-13 11:59:58'),
(18, 1, 7, '3', '3.1', 3, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:01:14', '2024-03-13 12:01:14'),
(19, 1, 7, '3', '3.2', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:01:14', '2024-03-13 12:01:14'),
(20, 1, 7, '3', '3.3', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:01:14', '2024-03-13 12:01:14'),
(21, 1, 7, '3', '3.4', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:01:14', '2024-03-13 12:01:14'),
(22, 1, 7, '3', '3.5', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:01:14', '2024-03-13 12:01:14'),
(23, 1, 7, '3', '3.6', 1, 1, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:01:14', '2024-03-13 12:01:14'),
(24, 1, 7, '4', '4.1', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:01:51', '2024-03-13 12:01:51'),
(25, 1, 7, '4', '4.2', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:01:51', '2024-03-13 12:01:51'),
(26, 1, 7, '4', '4.3', 1, 1, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:01:51', '2024-03-13 12:01:51'),
(27, 1, 7, '4', '4.4', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:01:51', '2024-03-13 12:01:51'),
(28, 1, 7, '4', '4.5', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:01:51', '2024-03-13 12:01:51'),
(29, 1, 7, '4', '4.6', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:01:51', '2024-03-13 12:01:51'),
(30, 1, 8, '1', '1.1', 5, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:07:09', '2024-03-13 12:07:09'),
(31, 1, 8, '1', '1.2', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:07:09', '2024-03-13 12:07:09'),
(32, 1, 8, '2', '2.1', 3, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:09:25', '2024-03-13 12:09:25'),
(33, 1, 8, '2', '2.2', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:09:25', '2024-03-13 12:09:25'),
(34, 1, 8, '2', '2.3', 1, 1, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:09:25', '2024-03-13 12:09:25'),
(35, 1, 8, '2', '2.4', 1, 1, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:09:25', '2024-03-13 12:09:25'),
(36, 1, 8, '2', '2.5', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:09:25', '2024-03-13 12:09:25'),
(37, 1, 8, '3', '3.1', 3, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:10:48', '2024-03-13 12:10:48'),
(38, 1, 8, '3', '3.2', 3, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:10:48', '2024-03-13 12:10:48'),
(39, 1, 8, '3', '3.3', 3, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:10:48', '2024-03-13 12:10:48'),
(40, 1, 8, '3', '3.4', 3, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:10:48', '2024-03-13 12:10:48'),
(41, 1, 8, '3', '3.5', 5, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:10:48', '2024-03-13 12:10:48'),
(42, 1, 8, '3', '3.6', 1, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:10:48', '2024-03-13 12:10:48'),
(43, 1, 8, '4', '4.1', 3, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:12:43', '2024-03-13 12:12:43'),
(44, 1, 8, '4', '4.2', 3, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:12:43', '2024-03-13 12:12:43'),
(45, 1, 8, '4', '4.3', 1, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:12:43', '2024-03-13 12:12:43'),
(46, 1, 8, '4', '4.4', 5, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:12:43', '2024-03-13 12:12:43'),
(47, 1, 8, '4', '4.5', 5, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:12:43', '2024-03-13 12:12:43'),
(48, 1, 8, '4', '4.6', 3, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:12:43', '2024-03-13 12:12:43'),
(49, 1, 8, '5', '5.1', 3, 0, 'Non Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:13:01', '2024-03-13 12:13:01'),
(50, 1, 8, '5', '5.2', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:13:01', '2024-03-13 12:13:01'),
(51, 1, 9, '1', '1.1', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:14:01', '2024-03-13 12:14:01'),
(52, 1, 9, '1', '1.2', 3, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:14:01', '2024-03-13 12:14:01'),
(53, 1, 9, '2', '2.1', 3, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:16:07', '2024-03-13 12:16:07'),
(54, 1, 9, '2', '2.2', 3, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:16:07', '2024-03-13 12:16:07'),
(55, 1, 9, '2', '2.3', 1, 1, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:16:07', '2024-03-13 12:16:07'),
(56, 1, 9, '2', '2.4', 1, 1, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:16:07', '2024-03-13 12:16:07'),
(57, 1, 9, '2', '2.5', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:16:07', '2024-03-13 12:16:07'),
(58, 1, 9, '3', '3.1', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:16:39', '2024-03-13 12:16:39'),
(59, 1, 9, '3', '3.2', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:16:39', '2024-03-13 12:16:39'),
(60, 1, 9, '3', '3.3', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:16:39', '2024-03-13 12:16:39'),
(61, 1, 9, '3', '3.4', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:16:39', '2024-03-13 12:16:39'),
(62, 1, 9, '3', '3.5', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:16:39', '2024-03-13 12:16:39'),
(63, 1, 9, '3', '3.6', 1, 1, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:16:39', '2024-03-13 12:16:39'),
(64, 1, 9, '4', '4.1', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:17:51', '2024-03-13 12:17:51'),
(65, 1, 9, '4', '4.2', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:17:51', '2024-03-13 12:17:51'),
(66, 1, 9, '4', '4.3', 1, 1, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:17:51', '2024-03-13 12:17:51'),
(67, 1, 9, '4', '4.4', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:17:51', '2024-03-13 12:17:51'),
(68, 1, 9, '4', '4.5', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:17:51', '2024-03-13 12:17:51'),
(69, 1, 9, '4', '4.6', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:17:51', '2024-03-13 12:17:51'),
(70, 1, 9, '5', '5.1', 3, 0, 'Non Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:18:04', '2024-03-13 12:18:04'),
(71, 1, 9, '5', '5.2', 3, 0, 'Non Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:18:04', '2024-03-13 12:18:04'),
(72, 1, 9, '6', '6.1', 5, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:18:36', '2024-03-13 12:18:36'),
(73, 1, 9, '6', '6.2', 1, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:18:36', '2024-03-13 12:18:36'),
(74, 1, 9, '7', '7.1', 1, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:19:14', '2024-03-13 12:19:14'),
(75, 1, 9, '7', '7.2', 3, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:19:14', '2024-03-13 12:19:14'),
(76, 1, 9, '7', '7.3', 1, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:19:14', '2024-03-13 12:19:14'),
(77, 1, 9, '7', '7.4', 3, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:19:14', '2024-03-13 12:19:14'),
(78, 1, 9, '7', '7.5', 3, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:19:14', '2024-03-13 12:19:14'),
(79, 1, 9, '7', '7.6', 1, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:19:14', '2024-03-13 12:19:14'),
(80, 1, 9, '7', '7.7', 3, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:19:14', '2024-03-13 12:19:14'),
(81, 1, 9, '7', '7.8', 1, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 12:19:14', '2024-03-13 12:19:14'),
(82, 1, 9, '8', '8.1', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:19:42', '2024-03-13 12:19:42'),
(83, 1, 9, '8', '8.2', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 12:19:42', '2024-03-13 12:19:42'),
(84, 1, 10, '1', '1.1', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 13:24:58', '2024-03-13 13:24:58'),
(85, 1, 10, '1', '1.2', 3, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 13:24:58', '2024-03-13 13:24:58'),
(86, 1, 10, '2', '2.1', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 13:25:18', '2024-03-13 13:25:18'),
(87, 1, 10, '2', '2.2', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 13:25:18', '2024-03-13 13:25:18'),
(88, 1, 10, '2', '2.3', 1, 1, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 13:25:18', '2024-03-13 13:25:18'),
(89, 1, 10, '2', '2.4', 1, 1, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 13:25:18', '2024-03-13 13:25:18'),
(90, 1, 10, '2', '2.5', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 13:25:18', '2024-03-13 13:25:18'),
(91, 1, 10, '3', '3.1', 3, 0, 'N/A', '', NULL, NULL, NULL, NULL, '2024-03-13 13:25:35', '2024-03-13 13:25:35'),
(92, 1, 10, '3', '3.2', 3, 0, 'Non Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 13:25:35', '2024-03-13 13:25:35'),
(93, 1, 10, '3', '3.3', 3, 0, 'Non Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 13:25:35', '2024-03-13 13:25:35'),
(94, 1, 10, '3', '3.4', 3, 3, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 13:25:35', '2024-03-13 13:25:35'),
(95, 1, 10, '3', '3.5', 5, 5, 'Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 13:25:35', '2024-03-13 13:25:35'),
(96, 1, 10, '3', '3.6', 1, 0, 'Non Compliance', '', NULL, NULL, NULL, NULL, '2024-03-13 13:25:35', '2024-03-13 13:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `shecup_fsms_audit`
--

CREATE TABLE `shecup_fsms_audit` (
  `audit_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `audit_referance` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audit_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `audit_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audit_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `achievement` decimal(6,2) NOT NULL DEFAULT 0.00,
  `total_score` decimal(6,2) NOT NULL DEFAULT 0.00,
  `total_point` decimal(6,2) NOT NULL DEFAULT 0.00,
  `total_answer` int(3) NOT NULL DEFAULT 0,
  `total_na` int(3) NOT NULL DEFAULT 0,
  `additional` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audit_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `audit_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shecup_fsms_audit`
--

INSERT INTO `shecup_fsms_audit` (`audit_id`, `user_id`, `site_id`, `audit_referance`, `audit_date`, `audit_type`, `audit_name`, `achievement`, `total_score`, `total_point`, `total_answer`, `total_na`, `additional`, `audit_created`, `audit_updated`) VALUES
(20240027, 1, 1, 'SHU-20240027', '2024-03-19 14:09:57', 'Internal', 'Chawalit Kiatmanaroj', '0.00', '0.00', '0.00', 0, 0, 'AMARI PATTAYA', '2024-03-19 14:09:57', '2024-03-19 14:09:57'),
(20240028, 1, 1, 'SHU-20240028', '2024-03-19 14:18:07', 'Internal', 'Chawalit Kiatmanaroj', '0.00', '0.00', '0.00', 0, 0, 'AMARI PATTAYA', '2024-03-19 14:18:07', '2024-03-19 14:18:07'),
(20240029, 3, 3, 'SHU-20240029', '2024-03-19 15:01:40', 'External', '帕特博士 Dansai', '0.00', '0.00', '0.00', 0, 0, '', '2024-03-19 15:01:40', '2024-03-19 15:01:40'),
(20240030, 3, 3, 'SHU-20240030', '2024-03-19 15:09:44', 'External', '帕特博士 Dansai', '0.00', '0.00', '0.00', 0, 0, '', '2024-03-19 15:09:44', '2024-03-19 15:09:44'),
(20240031, 3, 3, 'SHU-20240031', '2024-03-19 15:13:32', 'External', '帕特博士 Dansai', '0.00', '0.00', '0.00', 0, 0, '', '2024-03-19 15:13:32', '2024-03-19 15:13:32'),
(20240032, 2, 2, 'SHU-20240032', '2024-03-19 15:45:50', 'Internal', 'Sasikarn Jongsook', '0.00', '0.00', '0.00', 0, 0, '', '2024-03-19 15:45:50', '2024-03-19 15:45:50'),
(20240033, 2, 2, 'SHU-20240033', '2024-03-19 15:47:20', 'Internal', 'Sasikarn Jongsook', '0.00', '0.00', '0.00', 0, 0, '', '2024-03-19 15:47:20', '2024-03-19 15:47:20'),
(20240034, 2, 2, 'SHU-20240034', '2024-03-19 15:48:52', 'Internal', 'Sasikarn Jongsook', '0.00', '0.00', '0.00', 0, 0, 'sxxsxssxsxs', '2024-03-19 15:48:52', '2024-03-19 15:48:52'),
(20240035, 2, 2, 'SHU-20240035', '2024-03-19 17:24:46', 'Internal', 'Sasikarn Jongsook', '0.00', '0.00', '0.00', 0, 0, 'dddddd', '2024-03-19 17:24:46', '2024-03-19 17:24:46'),
(20240036, 2, 2, 'SHU-20240036', '2024-03-19 17:27:48', 'Internal', 'Sasikarn Jongsookxxx', '0.00', '0.00', '0.00', 0, 0, '', '2024-03-19 17:27:48', '2024-03-19 17:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `shecup_fsms_question`
--

CREATE TABLE `shecup_fsms_question` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `question_lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_no` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `risk_level` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shecup_fsms_question`
--

INSERT INTO `shecup_fsms_question` (`id`, `parent_id`, `question_lang`, `question_no`, `question`, `risk_level`, `score`, `created`, `updated`) VALUES
(1, 0, 'en', '1', 'Supplier Approval', '', '', '2024-02-06 14:39:38', '2024-02-06 14:46:26'),
(2, 1, 'en', '1.1', 'Delivery temperatures and corrective actions are documented/maintained at the facility', 'C', '5', '2024-02-06 14:39:38', '2024-02-06 14:46:35'),
(3, 1, 'en', '1.2', 'Supplier Audit / Evaluation process are established', 'M', '3', '2024-02-06 14:39:38', '2024-02-06 14:46:43'),
(4, 0, 'en', '2', 'Receiving of Food', '', '', '2024-02-06 14:39:38', '2024-02-06 14:46:49'),
(5, 2, 'en', '2.1', 'Temperature logs are available, record has done correctly', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:21:59'),
(6, 2, 'en', '2.2', 'Food received at proper temperatures', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:22:02'),
(7, 2, 'en', '2.3', 'Area / Equipment cleanliness', 'MI', '1', '2024-02-06 14:39:38', '2024-02-27 09:22:04'),
(8, 2, 'en', '2.4', 'Area / Equipment condition', 'MI', '1', '2024-02-06 14:39:38', '2024-02-27 09:22:06'),
(9, 2, 'en', '2.5', 'Supervisor/ Staff Knowledge', 'C', '5', '2024-02-06 14:39:38', '2024-02-27 09:22:10'),
(10, 0, 'en', '3', 'Food Storage', '', '', '2024-02-06 14:39:38', '2024-02-06 14:47:33'),
(11, 3, 'en', '3.1', 'Were all foods in date and satisfactory FIFO stock rotation system being used?', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:22:15'),
(12, 3, 'en', '3.2', 'Are all foods covered?', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:22:17'),
(13, 3, 'en', '3.3', 'Are all foods dated?', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:22:19'),
(14, 3, 'en', '3.4', 'Are all cool units operating at the correct temperature?', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:22:22'),
(15, 3, 'en', '3.5', 'Is there any expired food?', 'C', '5', '2024-02-06 14:39:38', '2024-02-27 09:22:24'),
(16, 3, 'en', '3.6', 'Are food storage containers in good condition?', 'MI', '1', '2024-02-06 14:39:38', '2024-02-27 09:22:27'),
(17, 0, 'en', '4', 'Personal Hygiene and Habits', '', '', '2024-02-06 14:39:38', '2024-02-06 14:48:22'),
(18, 4, 'en', '4.1', 'Food handlers in the hotel are in good health', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:22:32'),
(19, 4, 'en', '4.2', 'Proper hair restraints worn in food service area', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:22:35'),
(20, 4, 'en', '4.3', 'In food service area is free from gum, smoking, drinking or tobacco ในพื้นที่ให้บริการอาหารปลอดจากหมากฝรั่ง การสูบบุหรี่ การดื่มสุราหรือยาสูบ', 'Mi', '1', '2024-02-06 14:39:38', '2024-02-27 09:22:38'),
(21, 4, 'en', '4.4', 'Proper Hand washing procedures', 'C', '5', '2024-02-06 14:39:38', '2024-02-27 09:22:42'),
(22, 4, 'en', '4.5', 'Hand washing sinks are accessible and useable', 'C', '5', '2024-02-06 14:39:38', '2024-02-27 09:22:48'),
(23, 4, 'en', '4.6', 'When gloves are required, food handlers avoid touching ready-to-eat foods with bare hands', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:22:51'),
(24, 0, 'en', '5', 'Using and Calibration of Probe Thermometer', '', '', '2024-02-06 14:39:38', '2024-02-06 14:49:14'),
(25, 5, 'en', '5.1', 'Accurate and calibrated thermometer available, enough for staff.', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:22:55'),
(26, 5, 'en', '5.2', 'Accurate and calibrated thermometer does not maintained in good condition.', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:23:11'),
(27, 0, 'en', '6', 'Dishwasher and Glass washer Machine', '', '', '2024-02-06 14:39:38', '2024-02-06 14:49:46'),
(28, 6, 'en', '6.1', 'Temp of final rinse for dishwashing machine is 82°C to 90°C (or ≥ 71°C at dishware surfaces)', 'C', '5', '2024-02-06 14:39:38', '2024-02-27 09:23:15'),
(29, 6, 'en', '6.2', 'Dishwasher /Glass washer Machine maintain in good condition.', 'Mi', '1', '2024-02-06 14:39:38', '2024-02-27 09:23:17'),
(30, 0, 'en', '7', 'Labelling of Food', '', '', '2024-02-06 14:39:38', '2024-02-06 14:50:11'),
(31, 7, 'en', '7.1', 'All items must be covered and labelled with date', 'Mi', '1', '2024-02-06 14:39:38', '2024-02-27 09:23:22'),
(32, 7, 'en', '7.2', 'No out of date / expired / defect items stored', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:23:25'),
(33, 7, 'en', '7.3', 'FIFO being practiced in Chillers / Freezers / Stores / Display', 'Mi', '1', '2024-02-06 14:39:38', '2024-02-27 09:23:27'),
(34, 7, 'en', '7.4', 'Chiller Storage: Chiller temperature  ≤ 5°C  (or not above ccp 8°C )*', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:23:30'),
(35, 7, 'en', '7.5', 'Freezer Storage: Freezer temperature ≤ -18°C (air temp)', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:23:32'),
(36, 7, 'en', '7.6', 'Chiller / Freezer / Dry store storage of food follows minimum space requirement as defined in policy.', 'Mi', '1', '2024-02-06 14:39:38', '2024-02-27 09:23:35'),
(37, 7, 'en', '7.7', 'Well maintained and no cross contamination risk', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:23:39'),
(38, 7, 'en', '7.8', 'Refrigerator & Freezer Temperature Form completes & sign off', 'Mi', '1', '2024-02-06 14:39:38', '2024-02-27 09:23:41'),
(39, 0, 'en', '8', 'Thawing of Foods', '', '', '2024-02-06 14:39:38', '2024-02-06 14:51:22'),
(40, 8, 'en', '8.1', 'Using correctly thawing methods', 'C', '5', '2024-02-06 14:39:38', '2024-02-27 09:23:46'),
(41, 8, 'en', '8.2', 'Well maintained and no cross contamination risk in the thawing process', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:23:48'),
(42, 0, 'en', '9', 'Cooking, Cooling of Hot Food and Reheating of Food', '', '', '2024-02-06 14:39:38', '2024-02-06 14:51:55'),
(43, 9, 'en', '9.1', 'Minimum Internal Cooking temperature for different food items follow as per policy.', 'C', '5', '2024-02-06 14:39:38', '2024-02-27 09:23:53'),
(44, 9, 'en', '9.2', 'No cross-contamination risk (food-food, food-others)', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:23:55'),
(45, 9, 'en', '9.3', 'Cooking, Cooling of Hot Food and Re-heating Temperature Form completes and sign off', 'Mi', '1', '2024-02-06 14:39:38', '2024-02-27 09:23:57'),
(46, 9, 'en', '9.4', 'Holding equipment clean & well maintained', 'Mi', '1', '2024-02-06 14:39:38', '2024-02-27 09:23:59'),
(47, 9, 'en', '9.5', 'Cold Food temperature  is  ≤ 5°C during display  ', 'C', '5', '2024-02-06 14:39:38', '2024-02-27 09:24:04'),
(48, 0, 'en', '10', 'Hot Foods, Cold Foods and Food Preparation at Room Temperature', '', '', '2024-02-06 14:39:38', '2024-02-13 17:32:18'),
(49, 10, 'en', '10.1', ' Plating (a la carte), Display (buffet / banquet), Transfer and Cold cut items are displayed less than 4 hours', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:24:10'),
(50, 0, 'en', '11', 'Prevention of Cross Contamination during Preparation of Foods', '', '', '2024-02-06 14:39:38', '2024-02-06 14:53:08'),
(51, 11, 'en', '11.1', 'No cross-contamination risk (food-food, food-others)', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:24:14'),
(52, 0, 'en', '12', 'Storage and Removal of Garbage', '', '', '2024-02-06 14:39:38', '2024-02-06 14:53:21'),
(53, 12, 'en', '12.1', 'No cross-contamination risk (food-food, food-others)', 'Mi', '1', '2024-02-06 14:39:38', '2024-02-27 09:24:18'),
(54, 12, 'en', '12.2', 'Garbage Bins in kitchen covered and well maintained', 'Mi', '1', '2024-02-06 14:39:38', '2024-02-27 09:24:21'),
(55, 0, 'en', '13', 'Chemical Control', '', '', '2024-02-06 14:39:38', '2024-02-06 14:53:38'),
(56, 13, 'en', '13.1', 'Designated storage area available and properly labelled', 'Mi', '1', '2024-02-06 14:39:38', '2024-02-27 09:24:25'),
(57, 13, 'en', '13.2', 'Approved chemical used', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:24:28'),
(58, 13, 'en', '13.3', 'MSDS available', 'C', '5', '2024-02-06 14:39:38', '2024-02-27 09:24:31'),
(59, 0, 'en', '14', 'Washing and Sanitizing of Fruits and Vegetables', '', '', '2024-02-06 14:39:38', '2024-02-06 14:54:13'),
(60, 14, 'en', '14.1', 'Daily changing of sanitizer solution', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:24:35'),
(61, 14, 'en', '14.2', 'The concentration was using correctly.', 'C', '5', '2024-02-06 14:39:38', '2024-02-27 09:24:38'),
(62, 0, 'en', '15', 'Allergen Control', '', '', '2024-02-06 14:39:38', '2024-02-06 14:54:55'),
(63, 15, 'en', '15.1', 'The product has identified allergen contain in storage area.', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:24:43'),
(64, 0, 'en', '16', 'Visitor Control', '', '', '2024-02-06 14:39:38', '2024-02-06 14:55:09'),
(65, 16, 'en', '16.1', 'Visitor adhere to proper personal hygiene and habit', 'Mi', '1', '2024-02-06 14:39:38', '2024-02-27 09:24:47'),
(66, 0, 'en', '17', 'Cleaning and Sanitizing ', '', '', '2024-02-06 14:39:38', '2024-02-06 14:55:21'),
(67, 17, 'en', '17.1', 'Clean & in good working condition', 'Mi', '1', '2024-02-06 14:39:38', '2024-02-27 09:24:52'),
(68, 17, 'en', '17.2', 'Pot washing done as per procedures of wash, rinse and sanitize', 'C', '5', '2024-02-06 14:39:38', '2024-02-27 09:24:55'),
(69, 0, 'en', '18', 'Ice Machine', '', '', '2024-02-06 14:39:38', '2024-02-06 14:55:41'),
(70, 18, 'en', '18.1', 'Daily changing of sanitizer solution ', 'M', '5', '2024-02-06 14:39:38', '2024-02-27 09:25:04'),
(71, 18, 'en', '18.2', 'Cleaning record available', 'Mi', '1', '2024-02-06 14:39:38', '2024-02-27 09:25:07'),
(72, 0, 'en', '19', 'Food Safety Training', '', '', '2024-02-06 14:39:38', '2024-02-06 14:55:59'),
(73, 19, 'en', '19.1', 'Training records available', 'Mi', '1', '2024-02-06 14:39:38', '2024-02-27 09:25:12'),
(74, 19, 'en', '19.2', 'Refresher training Available', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:25:16'),
(75, 0, 'en', '20', 'Health of Food Handlers', '', '', '2024-02-06 14:39:38', '2024-02-06 14:56:16'),
(76, 20, 'en', '20.1', 'Pre-employment, Medical check up, staff illness report policy are implemented.', 'Mi', '1', '2024-02-06 14:39:38', '2024-02-27 09:25:20'),
(77, 20, 'en', '20.2', 'First aid kit is available & well stocked', 'Mi', '1', '2024-02-06 14:39:38', '2024-02-27 09:25:24'),
(78, 20, 'en', '20.3', 'Blue water proof plaster available', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:25:29'),
(79, 0, 'en', '21', 'Preventive Maintenance', '', '', '2024-02-06 14:39:38', '2024-02-06 14:56:42'),
(80, 21, 'en', '21.1', 'Preventive Maintenance Plan/Schedule is available', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:25:34'),
(81, 21, 'en', '21.2', 'Food equipment and utensils used are clean and well maintained', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:25:36'),
(82, 21, 'en', '21.3', 'Water & ice control. Laboratory analysis available.', 'C', '5', '2024-02-06 14:39:38', '2024-02-27 09:25:43'),
(83, 0, 'en', '22', 'Pest Control', '', '', '2024-02-06 14:39:38', '2024-02-06 14:57:06'),
(84, 22, 'en', '22.1', 'Pest Control schedule & bait station layout is available', 'Mi', '1', '2024-02-06 14:39:38', '2024-02-27 09:25:48'),
(85, 22, 'en', '22.2', 'Effective in eradication / control', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:25:50'),
(86, 22, 'en', '22.3', 'Service reports and records are available', 'M', '3', '2024-02-06 14:39:38', '2024-02-27 09:25:52'),
(87, 0, 'th', '1', 'การอนุมัติจากซัพพลายเออร์', '', '', '2024-02-06 14:46:07', '2024-02-06 14:58:30'),
(88, 1, 'th', '1.1', 'อุณหภูมิในการจัดส่งและการดำเนินการแก้ไขจะได้รับการบันทึกไว้/รักษาไว้ที่โรงงาน', 'C', '5', '2024-02-06 14:46:07', '2024-02-27 09:25:58'),
(89, 1, 'th', '1.2', 'มีการกำหนดกระบวนการตรวจสอบ/ประเมินซัพพลายเออร์', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:26:00'),
(90, 0, 'th', '2', 'การรับอาหาร ', '', '', '2024-02-06 14:46:07', '2024-02-06 14:58:56'),
(91, 2, 'th', '2.1', 'มีบันทึกอุณหภูมิ บันทึกได้ถูกต้อง', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:26:04'),
(92, 2, 'th', '2.2', 'อาหารที่ได้รับ ได้รับในอุณหภูมิที่เหมาะสม', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:26:06'),
(93, 2, 'th', '2.3', 'ความสะอาดของพื้นที่/อุปกรณ์', 'MI', '1', '2024-02-06 14:46:07', '2024-02-27 09:26:09'),
(94, 2, 'th', '2.4', 'พื้นที่ / สภาพอุปกรณ์', 'MI', '1', '2024-02-06 14:46:07', '2024-02-27 09:26:12'),
(95, 2, 'th', '2.5', 'ความรู้หัวหน้างาน/พนักงาน', 'C', '5', '2024-02-06 14:46:07', '2024-02-27 09:26:14'),
(96, 0, 'th', '3', 'การเก็บรักษาอาหาร ', '', '', '2024-02-06 14:46:07', '2024-02-06 14:59:43'),
(97, 3, 'th', '3.1', 'มีการใช้อาหารทั้งหมดในวันที่และระบบหมุนเวียนสต็อก FIFO ที่น่าพอใจหรือไม่?', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:26:18'),
(98, 3, 'th', '3.2', 'อาหารทั้งหมดได้ปิดคลุมหรือไม่', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:26:20'),
(99, 3, 'th', '3.3', 'อาหารทั้งหมดมีวันบ่งบอกอายุหรือไม่', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:26:23'),
(100, 3, 'th', '3.4', 'หน่วยทำความเย็นทั้งหมดทำงานในอุณหภูมิที่ถูกต้องหรือไม่', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:26:25'),
(101, 3, 'th', '3.5', 'มีอาหารที่หมดอายุหรือไม่?', 'C', '5', '2024-02-06 14:46:07', '2024-02-27 09:26:50'),
(102, 3, 'th', '3.6', 'ภาชนะเก็บอาหารอยู่ในสภาพดีหรือไม่?', 'MI', '1', '2024-02-06 14:46:07', '2024-02-27 09:26:54'),
(103, 0, 'th', '4', 'สุขอนามัยส่วนบุคคลและลักษณะนิสัย', '', '', '2024-02-06 14:46:07', '2024-02-06 15:00:40'),
(104, 4, 'th', '4.1', 'ผู้สัมผัสอาหารในโรงแรมมีสุขภาพที่ดี', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:26:58'),
(105, 4, 'th', '4.2', 'มีการเก็บผมที่เหมาะสมในบริเวณบริการอาหาร', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:27:00'),
(106, 4, 'th', '4.3', 'ในพื้นที่ให้บริการอาหารปลอดจากหมากฝรั่ง การสูบบุหรี่ การดื่มสุราหรือยาสูบ', 'Mi', '1', '2024-02-06 14:46:07', '2024-02-27 09:27:02'),
(107, 4, 'th', '4.4', 'ขั้นตอนการล้างมือที่ถูกต้อง', 'C', '5', '2024-02-06 14:46:07', '2024-02-27 09:27:06'),
(108, 4, 'th', '4.5', 'อ่างล้างมือสามารถเข้าถึงได้และใช้งานได้', 'C', '5', '2024-02-06 14:46:07', '2024-02-27 09:27:07'),
(109, 4, 'th', '4.6', 'เมื่อจำเป็นต้องใช้ถุงมือ ผู้สัมผัสอาหารจะหลีกเลี่ยงการสัมผัสอาหารพร้อมรับประทานด้วยมือเปล่า', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:27:10'),
(110, 0, 'th', '5', 'การใช้และการสอบเทียบโพรบเทอร์โมมิเตอร์', '', '', '2024-02-06 14:46:07', '2024-02-06 15:01:19'),
(111, 5, 'th', '5.1', 'มีเครื่องวัดอุณหภูมิที่แม่นยำและสอบเทียบเพียงพอสำหรับพนักงาน', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:27:14'),
(112, 5, 'th', '5.2', 'เทอร์โมมิเตอร์และการสอบเทียบที่แม่นยำไม่ได้รับการบำรุงรักษาให้อยู่ในสภาพที่ดี', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:27:15'),
(113, 0, 'th', '6', 'เครื่องล้างจานและเครื่องล้างแก้ว', '', '', '2024-02-06 14:46:07', '2024-02-06 15:01:38'),
(114, 6, 'th', '6.1', 'อุณหภูมิของการล้างครั้งสุดท้ายสำหรับเครื่องล้างจานคือ 82°C ถึง 90°C (หรือ ≥ 71°C ที่พื้นผิวจานชาม)', 'C', '5', '2024-02-06 14:46:07', '2024-02-27 09:27:19'),
(115, 6, 'th', '6.2', 'เครื่องล้างจาน/เครื่องล้างแก้ว ถูกรักษาอยู่ในสภาพดี', 'Mi', '1', '2024-02-06 14:46:07', '2024-02-27 09:27:21'),
(116, 0, 'th', '7', 'การติดฉลากอาหาร ', '', '', '2024-02-06 14:46:07', '2024-02-06 15:01:56'),
(117, 7, 'th', '7.1', 'รายการทั้งหมดต้องครอบคลุมและระบุวันที่', 'Mi', '1', '2024-02-06 14:46:07', '2024-02-27 09:27:25'),
(118, 7, 'th', '7.2', 'ไม่มีการจัดเก็บรายการที่ล้าสมัย / หมดอายุ / มีข้อบกพร่อง', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:27:28'),
(119, 7, 'th', '7.3', 'มีการฝึกการจัดลำดับสินค้า (FIFO) ใน เครื่องทำความเย็น / ตู้แช่แข็ง / หัองจัดเก็บ / ตู้จัดแสดง', 'Mi', '1', '2024-02-06 14:46:07', '2024-02-27 09:27:31'),
(120, 7, 'th', '7.4', 'การจัดเก็บของเครื่องทำความเย็น: เครื่องทำความเย็นมีอุณหภูมิ  ≤ 5°C (หรือไม่เกินกว่า 8°C )*', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:27:33'),
(121, 7, 'th', '7.5', 'การจัดเก็บของตู้แช่แข็ง: อุณหภูมิของตู้แช่แข็ง ≤ -18°C (อุณหภูมิอากาศ)', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:27:34'),
(122, 7, 'th', '7.6', 'ตู้แช่เย็น / ตู้แช่แข็ง / ที่เก็บอาหารแห้งเป็นไปตามข้อกำหนดพื้นที่ขั้นต่ำตามที่กำหนดไว้ในนโยบาย', 'Mi', '1', '2024-02-06 14:46:07', '2024-02-27 09:27:40'),
(123, 7, 'th', '7.7', 'ได้รับการบำรุงรักษาอย่างดีและไม่เสี่ยงต่อการปนเปื้อนข้าม', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:27:42'),
(124, 7, 'th', '7.8', 'กรอกแบบฟอร์มอุณหภูมิตู้เย็นและตู้แช่แข็งครบถ้วน & อออกจากระบบ', 'Mi', '1', '2024-02-06 14:46:07', '2024-02-27 09:27:45'),
(125, 0, 'th', '8', 'การละลายอาหาร', '', '', '2024-02-06 14:46:07', '2024-02-06 15:02:49'),
(126, 8, 'th', '8.1', 'มีการใช้วิธีการทำละลายที่ถูกต้อง', 'C', '5', '2024-02-06 14:46:07', '2024-02-27 09:27:49'),
(127, 8, 'th', '8.2', 'ได้รับการบำรุงรักษาอย่างดีและไม่เสี่ยงต่อการปนเปื้อนข้ามในกระบวนการละลาย', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:27:51'),
(128, 0, 'th', '9', 'การปรุงอาหาร การทำให้เย็นของอาหารร้อนและการอุ่นอาหารใหม่', '', '', '2024-02-06 14:46:07', '2024-02-06 15:03:23'),
(129, 9, 'th', '9.1', 'อุณหภูมิขั้นต่ำในการปรุงอาหารภายในสำหรับรายการอาหารต่างๆ เป็นไปตามนโยบาย', 'C', '5', '2024-02-06 14:46:07', '2024-02-27 09:27:55'),
(130, 9, 'th', '9.2', 'ไม่มีความเสี่ยงในการปนเปื้อนข้าม (อาหาร-อาหาร, อาหาร-อื่นๆ)', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:29:38'),
(131, 9, 'th', '9.3', 'กรอกแบบฟอร์มการปรุงอาหาร การทำให้เย็นของอาหารร้อนและการอุ่นอุณหภูมิมีความครบถ้วน เสร็จสิ้น และออกจากระบบ', 'Mi', '1', '2024-02-06 14:46:07', '2024-02-27 09:29:40'),
(132, 9, 'th', '9.4', 'อุปกรณ์ถือสะอาดและได้รับการดูแลอย่างดี', 'Mi', '1', '2024-02-06 14:46:07', '2024-02-27 09:29:42'),
(133, 9, 'th', '9.5', 'อุณหภูมิของอาหารเย็นอยู่ที่ ≤ 5°C ระหว่างการแสดงผล', 'C', '5', '2024-02-06 14:46:07', '2024-02-27 09:29:44'),
(134, 0, 'th', '10', 'อาหารร้อน อาหารเย็น และการเตรียมอาหารที่อุณหภูมิห้อง', '', '', '2024-02-06 14:46:07', '2024-02-13 17:32:54'),
(135, 10, 'th', '10.1', 'การชุบ (อาหารตามสั่ง), การจัดแสดง (บุฟเฟ่ต์ / งานเลี้ยง), การโอนและอาหารตัดเย็นจะแสดงน้อยกว่า 4 ชั่วโมง', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:29:50'),
(136, 0, 'th', '11', 'การป้องกันการปนเปื้อนระหว่างการเตรียมอาหาร', '', '', '2024-02-06 14:46:07', '2024-02-06 15:04:32'),
(137, 11, 'th', '11.1', 'ไม่มีความเสี่ยงในการปนเปื้อนข้าม (อาหาร-อาหาร, อาหาร-อื่นๆ)', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:29:54'),
(138, 0, 'th', '12', 'การจัดเก็บและกำจัดขยะ', '', '', '2024-02-06 14:46:07', '2024-02-06 15:04:43'),
(139, 12, 'th', '12.1', 'ไม่มีความเสี่ยงในการปนเปื้อนข้าม (อาหาร-อาหาร, อาหาร-อื่นๆ)', 'Mi', '1', '2024-02-06 14:46:07', '2024-02-27 09:29:57'),
(140, 12, 'th', '12.2', 'ถังขยะในครัวมีฝาปิดและดูแลอย่างดี', 'Mi', '1', '2024-02-06 14:46:07', '2024-02-27 09:30:01'),
(141, 0, 'th', '13', 'การควบคุมสารเคมี ', '', '', '2024-02-06 14:46:07', '2024-02-06 15:04:58'),
(142, 13, 'th', '13.1', 'มีพื้นที่จัดเก็บที่กำหนดไว้และติดป้ายไว้อย่างถูกต้อง', 'Mi', '1', '2024-02-06 14:46:07', '2024-02-27 09:30:06'),
(143, 13, 'th', '13.2', 'สารเคมีที่ได้รับการอนุมัติใช้', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:30:09'),
(144, 13, 'th', '13.3', 'มีเอกสารข้อมูลความปลอดภัยเคมีภัณฑ์', 'C', '5', '2024-02-06 14:46:07', '2024-02-27 09:30:12'),
(145, 0, 'th', '14', 'การล้างและฆ่าเชื้อผักและผลไม้', '', '', '2024-02-06 14:46:07', '2024-02-06 15:05:15'),
(146, 14, 'th', '14.1', 'เปลี่ยนน้ำยาฆ่าเชื้อทุกวัน', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:30:16'),
(147, 14, 'th', '14.2', 'ใช้ความเข้มข้นได้อย่างถูกต้อง', 'C', '5', '2024-02-06 14:46:07', '2024-02-27 09:30:19'),
(148, 0, 'th', '15', 'การควบคุมสารก่อภูมิแพ้', '', '', '2024-02-06 14:46:07', '2024-02-06 15:05:30'),
(149, 15, 'th', '15.1', 'ผลิตภัณฑ์ได้ระบุสารก่อภูมิแพ้ที่มีอยู่ในพื้นที่จัดเก็บ', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:30:22'),
(150, 0, 'th', '16', 'การควบคุมผู้เยี่ยมชม', '', '', '2024-02-06 14:46:07', '2024-02-06 15:05:38'),
(151, 16, 'th', '16.1', 'ผู้เยี่ยมชมปฏิบัติตามสุขอนามัยส่วนบุคคลและลักณะนิสัยที่เหมาะสม', 'Mi', '1', '2024-02-06 14:46:07', '2024-02-27 09:30:28'),
(152, 0, 'th', '17', 'การทำความสะอาดและฆ่าเชื้อ', '', '', '2024-02-06 14:46:07', '2024-02-06 15:05:57'),
(153, 17, 'th', '17.1', 'สะอาดและอยู่ในสภาพใช้งานได้ดี', 'Mi', '1', '2024-02-06 14:46:07', '2024-02-27 09:30:33'),
(154, 17, 'th', '17.2', 'การล้างหม้อทำได้ตามขั้นตอนการล้าง ล้าง และฆ่าเชื้อ', 'C', '5', '2024-02-06 14:46:07', '2024-02-27 09:30:36'),
(155, 0, 'th', '18', 'Ice Machine เครื่องทำน้ำแข็ง', '', '', '2024-02-06 14:46:07', '2024-02-06 14:46:07'),
(156, 18, 'th', '18.1', 'เปลี่ยนน้ำยาฆ่าเชื้อทุกวัน', 'M', '5', '2024-02-06 14:46:07', '2024-02-27 09:30:41'),
(157, 18, 'th', '18.2', 'มีบันทึกการทำความสะอาด ', 'Mi', '1', '2024-02-06 14:46:07', '2024-02-27 09:30:44'),
(158, 0, 'th', '19', 'อบรมความปลอดภัยด้านอาหาร ', '', '', '2024-02-06 14:46:07', '2024-02-06 15:06:23'),
(159, 19, 'th', '19.1', 'มีบันทึกการฝึกอบรม', 'Mi', '1', '2024-02-06 14:46:07', '2024-02-27 09:30:48'),
(160, 19, 'th', '19.2', 'มีการฝึกอบรมทบทวน', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:30:51'),
(161, 0, 'th', '20', 'สุขภาพของผู้สัมผัสอาหาร', '', '', '2024-02-06 14:46:07', '2024-02-06 15:06:35'),
(162, 20, 'th', '20.1', 'มีการใช้นโยบายก่อนเข้าทำงาน ตรวจสุขภาพ รายงานการเจ็บป่วยของพนักงาน', 'Mi', '1', '2024-02-06 14:46:07', '2024-02-27 09:30:55'),
(163, 20, 'th', '20.2', 'มีชุดปฐมพยาบาลและจัดเก็บอย่างดี', 'Mi', '1', '2024-02-06 14:46:07', '2024-02-27 09:31:01'),
(164, 20, 'th', '20.3', 'มีพลาสเตอร์กันน้ำสีฟ้า', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:31:06'),
(165, 0, 'th', '21', 'บำรุงรักษาเชิงป้องกัน', '', '', '2024-02-06 14:46:07', '2024-02-06 15:06:59'),
(166, 21, 'th', '21.1', 'มีแผน/กำหนดการซ่อมบำรุงเชิงป้องกัน', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:31:09'),
(167, 21, 'th', '21.2', 'อุปกรณ์อาหารและเครื่องใช้สะอาดและได้รับการดูแลอย่างดี', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:31:12'),
(168, 21, 'th', '21.3', 'การควบคุมน้ำและน้ำแข็ง มีการวิเคราะห์ในห้องปฏิบัติการ', 'C', '5', '2024-02-06 14:46:07', '2024-02-27 09:31:16'),
(169, 0, 'th', '22', 'การควบคุมการควบคุมสัตว์พาหะนำโรค', '', '', '2024-02-06 14:46:07', '2024-02-07 14:04:27'),
(170, 22, 'th', '22.1', 'ตารางการควบคุมสัตว์พาหะนำโรคและรูปแบบสถานีเหยื่อพร้อมใช้งาน', 'Mi', '1', '2024-02-06 14:46:07', '2024-02-27 09:31:19'),
(171, 22, 'th', '22.2', 'มีประสิทธิภาพในการกำจัด/ควบคุม', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:31:22'),
(172, 22, 'th', '22.3', 'มีรายงานและบันทึกการบริการ', 'M', '3', '2024-02-06 14:46:07', '2024-02-27 09:31:25');

-- --------------------------------------------------------

--
-- Table structure for table `shedein_chilled_frozen_storage`
--

CREATE TABLE `shedein_chilled_frozen_storage` (
  `id` int(11) NOT NULL,
  `freezer_refrigerator` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_food` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_internal` decimal(6,2) NOT NULL,
  `display_external` decimal(6,2) NOT NULL,
  `corrective_action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shedein_receiving_inspection`
--

CREATE TABLE `shedein_receiving_inspection` (
  `id` int(11) NOT NULL,
  `type_food` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_number` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `produced_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `temp_receiving` decimal(6,2) NOT NULL,
  `food_quality_safety` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_temp` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visual_condition` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `corrective_actions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `site_id` int(11) NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_active` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_created` timestamp NULL DEFAULT current_timestamp(),
  `site_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`site_id`, `site_name`, `site_logo`, `site_active`, `site_created`, `site_updated`) VALUES
(1, 'AMARI PATTAYA', '', 'Y', '2024-02-01 11:52:52', '2024-03-18 13:14:31'),
(2, 'Hyatt Regency Phuket Resort', '', 'Y', '2024-02-01 11:53:20', '2024-03-18 13:14:33'),
(3, 'BANYAN TREE SAMUI', '', 'Y', '2024-02-01 11:53:56', '2024-03-18 13:14:39'),
(4, 'Thavorn Beach Village Resort & Spa Phuket', '', 'Y', '2024-02-01 11:54:12', '2024-03-18 13:14:41'),
(5, 'Amani Café', '', 'Y', '2024-02-01 11:54:25', '2024-03-18 13:14:44'),
(6, 'Oxy Café', '', 'Y', '2024-02-01 11:54:33', '2024-03-18 13:14:46'),
(7, 'Once Eatery by Pratueang', '', 'Y', '2024-02-01 11:54:53', '2024-03-18 13:14:48');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `logo`, `is_active`, `created`, `updated`) VALUES
(1, 'AMARI PATTAYA', '', '', '2024-02-01 11:52:52', '2024-02-01 11:52:52'),
(2, 'Hyatt Regency Phuket Resort', '', '', '2024-02-01 11:53:20', '2024-02-01 11:53:20'),
(3, 'BANYAN TREE SAMUI', '', '', '2024-02-01 11:53:56', '2024-02-01 11:53:56'),
(4, 'Thavorn Beach Village Resort & Spa Phuket', '', '', '2024-02-01 11:54:12', '2024-02-01 11:54:12'),
(5, 'Amani Café', '', '', '2024-02-01 11:54:25', '2024-02-01 11:54:25'),
(6, 'Oxy Café', '', '', '2024-02-01 11:54:33', '2024-02-01 11:54:33'),
(7, 'Once Eatery by Pratueang', '', '', '2024-02-01 11:54:53', '2024-02-01 11:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_active` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_locked` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `user_created` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `user_email`, `user_role`, `user_active`, `user_locked`, `user_updated`, `user_created`) VALUES
(1, 'superong', '*04C7F5153E5A8E8AFF512D6EB0815B61A0151AB2', 'chawalit.ki@gmail.com', 'Site user', 'Y', 'N', '2024-03-20 03:29:22', '2024-01-23 15:25:15'),
(2, 'penguinoum', '*04C7F5153E5A8E8AFF512D6EB0815B61A0151AB2', 'sasikarn.jongsook@hotmail.com', 'Auditor', 'Y', 'N', '2024-03-20 03:28:31', '2024-01-23 15:54:39'),
(3, 'drpatt', '*E8BA89DE8C20DF8E3BB78B74708B474F63B9AA49', 'drpatt@hotmail.com', 'Administrator', 'Y', 'N', '2024-03-20 03:29:10', '2024-01-24 13:18:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datatables_demo`
--
ALTER TABLE `datatables_demo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seq` (`seq`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`name`);

--
-- Indexes for table `formservices`
--
ALTER TABLE `formservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_customer`
--
ALTER TABLE `new_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`profile_id`);

--
-- Indexes for table `rel_approve_line`
--
ALTER TABLE `rel_approve_line`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rel_companies_formservices`
--
ALTER TABLE `rel_companies_formservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rel_departments_users`
--
ALTER TABLE `rel_departments_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rel_users_profiles`
--
ALTER TABLE `rel_users_profiles`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`profile_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shecup_fsms_answers`
--
ALTER TABLE `shecup_fsms_answers`
  ADD PRIMARY KEY (`audit_id`,`question_no`),
  ADD UNIQUE KEY `ans_idx` (`id`);

--
-- Indexes for table `shecup_fsms_answers.old`
--
ALTER TABLE `shecup_fsms_answers.old`
  ADD PRIMARY KEY (`audit_id`,`question_no`),
  ADD UNIQUE KEY `ans_idx` (`id`);

--
-- Indexes for table `shecup_fsms_audit`
--
ALTER TABLE `shecup_fsms_audit`
  ADD PRIMARY KEY (`audit_id`);

--
-- Indexes for table `shecup_fsms_question`
--
ALTER TABLE `shecup_fsms_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shedein_chilled_frozen_storage`
--
ALTER TABLE `shedein_chilled_frozen_storage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shedein_receiving_inspection`
--
ALTER TABLE `shedein_receiving_inspection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datatables_demo`
--
ALTER TABLE `datatables_demo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `formservices`
--
ALTER TABLE `formservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `new_customer`
--
ALTER TABLE `new_customer`
  MODIFY `customer_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rel_approve_line`
--
ALTER TABLE `rel_approve_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rel_companies_formservices`
--
ALTER TABLE `rel_companies_formservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rel_departments_users`
--
ALTER TABLE `rel_departments_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rel_users_profiles`
--
ALTER TABLE `rel_users_profiles`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shecup_fsms_answers`
--
ALTER TABLE `shecup_fsms_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `shecup_fsms_answers.old`
--
ALTER TABLE `shecup_fsms_answers.old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `shecup_fsms_audit`
--
ALTER TABLE `shecup_fsms_audit`
  MODIFY `audit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20240037;

--
-- AUTO_INCREMENT for table `shecup_fsms_question`
--
ALTER TABLE `shecup_fsms_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `shedein_chilled_frozen_storage`
--
ALTER TABLE `shedein_chilled_frozen_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shedein_receiving_inspection`
--
ALTER TABLE `shedein_receiving_inspection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
