-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 01, 2024 at 08:59 PM
-- Server version: 5.7.40
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dareesoft_corporate`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_txt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_enc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('A','SA') COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_expiry_at` datetime DEFAULT NULL,
  `attempts` int(11) DEFAULT NULL,
  `is_blocked` enum('Y','N') COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `unblock_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`),
  UNIQUE KEY `admins_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `image`, `name`, `email`, `username`, `password_txt`, `password_enc`, `type`, `role_id`, `status`, `created_at`, `updated_at`, `password_token`, `token_expiry_at`, `attempts`, `is_blocked`, `unblock_at`) VALUES
(1, '', 'DareeSoft Admin', 'dareesoft@gmail.com', 'Dareesoft@2024', 'admin@dareesoft', '$2y$12$UlijEUUzbSYmZCQxzXt29OaaHew.psES73u7QHZ171c13m5RWGSWa', 'SA', NULL, 'A', '2023-11-29 01:59:23', '2024-01-28 07:26:46', NULL, NULL, 0, 'N', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `short_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `views` bigint(20) UNSIGNED NOT NULL,
  `language` enum('en','kr','both') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_trending` enum('Y','N') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popular` enum('Y','N') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `blog_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blogs_admin_id_foreign` (`admin_id`),
  KEY `blogs_blog_category_id_foreign` (`blog_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `slug`, `seo`, `title`, `short_description`, `content`, `image`, `views`, `language`, `status`, `is_trending`, `is_popular`, `publish_date`, `blog_category_id`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'The Power of a Healthy Working Culture: Boosting Productivity in Dareesoft', 'the-power-of-a-healthy-working-culture-boosting-productivity-in-dareesoft', '[]', '{\"en\": \"The Power of a Healthy Working Culture: Boosting Productivity in Dareesoft\", \"kr\": \"\"}', '{\"en\": \"New Deal Data Pilot Project for road hazard data constructionservice (Anyang city and test )\", \"kr\": \"\"}', '{\"en\":[{\"layout\":\"layout_1\",\"head\":\"Dareesoft (Co-CEOs Mandella Jeong,Elizabeth Row), an AI-based roadhazard information service company, participated in 8th Smart Cities India Expo held in New Delhi for three days from March 27 to 29. Driving, Smart City, etc.\",\"text\":\"<p>Smart Cities India Expo is India&rsquo;s largest technology and infrastructure exhibition, marking its eighth anniversary this year with the goal of building digital and smart India. The exhibition was divided into various fields such as urban infrastructure, disaster safety, autonomous driving, automotive, and semiconductors, with more than 30 countries and 100 start-ups from around the world participating. The exhibition, which began with the opening speech of India&rsquo;s Minister of Road and Transport Nitin Gadkari, included conference and awards ceremony.<\\/p>\"},{\"layout\":\"layout_3\",\"image\":\"uploads\\/2024\\/01\\/11\\/l-article-4_659fa1c9092a5.jpg\",\"caption\":\"Dareesoft (Co-CEOs Mandella Jeong,Elizabeth Row), an AI-based roadhazard information service company, participated in 8th Smart Cities India Expo held in New Delhi for three days from March 27 to 29. Driving, Smart City, etc.\"},{\"layout\":\"layout_2\",\"text\":\"<p>Smart Cities India Expo is India&rsquo;s largest technology and infrastructure exhibition, marking its eighth anniversary this year with the goal of building digital and smart India. The exhibition was divided into various fields such as urban infrastructure, disaster safety, autonomous driving, automotive, and semiconductors, with more than 30 countries and 100 start-ups from around the world participating. The exhibition, which began with the opening speech of India&rsquo;s Minister of Road and Transport Nitin Gadkari, included conference and awards ceremony.<\\/p>\\r\\n<p>Smart Cities India Expo is India&rsquo;s largest technology and infrastructure exhibition, marking its eighth anniversary this year with the goal of building digital and smart India. The exhibition was divided into various fields such as urban infrastructure, disaster safety, autonomous driving, automotive, and semiconductors, with more than 30 countries and 100 start-ups from around the world participating. The exhibition, which began with the opening speech of India&rsquo;s Minister of Road and Transport Nitin Gadkari, included conference and awards ceremony.<\\/p>\\r\\n<p>Smart Cities India Expo is India&rsquo;s largest technology and infrastructure exhibition, marking its eighth anniversary this year with the goal of building digital and smart India. The exhibition was divided into various fields such as urban infrastructure, disaster safety, autonomous driving, automotive, and semiconductors, with more than 30 countries and 100 start-ups from around the world participating. The exhibition, which began with the opening speech of India&rsquo;s Minister of Road and Transport Nitin Gadkari, included conference and awards ceremony.<\\/p>\"}],\"kr\":[]}', '{\"en\": \"uploads/2024/01/11/main-blog_659fa1d866652.jpg\", \"kr\": \"\"}', 14, 'en', 'A', 'Y', 'Y', '2024-01-01', 2, 1, '2024-01-11 02:40:42', '2024-01-31 23:09:02'),
(2, 'Dareesoft: Expanding its Global Footprint in the Road Maintenance Sector', 'dareesoft-expanding-its-global-footprint-in-the-road-maintenance-sector', '[]', '{\"en\": \"Dareesoft: Expanding its Global Footprint in the Road Maintenance Sector\", \"kr\": \"Dareesoft: 도로 유지 관리 부문에서 글로벌 입지 확장\"}', '{\"en\": \"Dareesoft: Expanding its Global Footprint in the Road Maintenance Sector\", \"kr\": \"Dareesoft: 도로 유지 관리 부문에서 글로벌 입지 확장\"}', '{\"en\": [{\"head\": \"Dareesoft (Co-CEOs Mandella Jeong,Elizabeth Row), an AI-based roadhazard information service company, participated in 8th Smart Cities India Expo held in New Delhi for three days from March 27 to 29. Driving, Smart City, etc.\", \"text\": \"<p>Smart Cities India Expo is India&rsquo;s largest technology and infrastructure exhibition, marking its eighth anniversary this year with the goal of building digital and smart India. The exhibition was divided into various fields such as urban infrastructure, disaster safety, autonomous driving, automotive, and semiconductors, with more than 30 countries and 100 start-ups from around the world participating. The exhibition, which began with the opening speech of India&rsquo;s Minister of Road and Transport Nitin Gadkari, included conference and awards ceremony.</p>\", \"layout\": \"layout_1\"}], \"kr\": [{\"head\": \"AI 기반 도로 위험 정보 서비스 기업 다리소프트(공동대표 만델라 정,엘리자베스 로우)가 3월 27일부터 29일까지 3일간 뉴델리에서 열린 제8회 스마트 시티 인도 엑스포에 참가했다. 운전, 스마트 시티 등\", \"text\": \"<p>스마트 시티 인도 엑스포(Smart Cities India Expo)는 인도 최대의 기술 및 인프라 전시회로, 디지털과 스마트 인도 건설을 목표로 올해로 8회째를 맞이했습니다. 이번 전시회는 도시 인프라, 재난안전, 자율주행, 자동차, 반도체 등 다양한 분야로 나누어 전 세계 30여 개국, 100여개 스타트업이 참가했다. 인도 도로교통부 니틴 가드카리(Nitin Gadkari) 장관의 개회사로 시작된 이번 전시는 컨퍼런스와 시상식 등으로 이어졌다.</p>\\r\\n<p>스마트 시티 인도 엑스포(Smart Cities India Expo)는 인도 최대의 기술 및 인프라 전시회로, 디지털과 스마트 인도 건설을 목표로 올해로 8회째를 맞이했습니다. 이번 전시회는 도시 인프라, 재난안전, 자율주행, 자동차, 반도체 등 다양한 분야로 나누어 전 세계 30여 개국, 100여개 스타트업이 참가했다. 인도 도로교통부 니틴 가드카리(Nitin Gadkari) 장관의 개회사로 시작된 이번 전시는 컨퍼런스와 시상식 등으로 이어졌다.</p>\", \"layout\": \"layout_1\"}, {\"image\": \"uploads/2024/01/11/trend-3_659fa1d8e4797.jpg\", \"layout\": \"layout_3\", \"caption\": \"스마트 시티 인도 엑스포(Smart Cities India Expo)\"}, {\"text\": \"<p>스마트 시티 인도 엑스포(Smart Cities India Expo)는 인도 최대의 기술 및 인프라 전시회로, 디지털과 스마트 인도 건설을 목표로 올해로 8회째를 맞이했습니다. 이번 전시회는 도시 인프라, 재난안전, 자율주행, 자동차, 반도체 등 다양한 분야로 나누어 전 세계 30여 개국, 100여개 스타트업이 참가했다. 인도 도로교통부 니틴 가드카리(Nitin Gadkari) 장관의 개회사로 시작된 이번 전시는 컨퍼런스와 시상식 등으로 이어졌다.</p>\\r\\n<p>스마트 시티 인도 엑스포(Smart Cities India Expo)는 인도 최대의 기술 및 인프라 전시회로, 디지털과 스마트 인도 건설을 목표로 올해로 8회째를 맞이했습니다. 이번 전시회는 도시 인프라, 재난안전, 자율주행, 자동차, 반도체 등 다양한 분야로 나누어 전 세계 30여 개국, 100여개 스타트업이 참가했다. 인도 도로교통부 니틴 가드카리(Nitin Gadkari) 장관의 개회사로 시작된 이번 전시는 컨퍼런스와 시상식 등으로 이어졌다.</p>\\r\\n<p>스마트 시티 인도 엑스포(Smart Cities India Expo)는 인도 최대의 기술 및 인프라 전시회로, 디지털과 스마트 인도 건설을 목표로 올해로 8회째를 맞이했습니다. 이번 전시회는 도시 인프라, 재난안전, 자율주행, 자동차, 반도체 등 다양한 분야로 나누어 전 세계 30여 개국, 100여개 스타트업이 참가했다. 인도 도로교통부 니틴 가드카리(Nitin Gadkari) 장관의 개회사로 시작된 이번 전시는 컨퍼런스와 시상식 등으로 이어졌다.</p>\", \"layout\": \"layout_2\"}]}', '{\"en\": \"uploads/2024/01/11/trend-1_659fa1d8901c4.jpg\", \"kr\": \"uploads/2024/01/11/trend-1_659fa1d8901c4.jpg\"}', 1, 'both', 'A', 'Y', 'N', '2023-12-28', 3, 1, '2024-01-11 04:54:03', '2024-01-31 23:09:08'),
(3, 'Unveiling the Lacking Awareness of Smart City Technologies: Impact and Solutions', 'unveiling-the-lacking-awareness-of-smart-city-technologies-impact-and-solutions', '[]', '{\"en\": \"Unveiling the Lacking Awareness of Smart City Technologies: Impact and Solutions\", \"kr\": \"스마트 시티 기술에 대한 부족한 인식 공개: 영향 및 솔루션\"}', '{\"en\": \"Unveiling the Lacking Awareness of Smart City Technologies: Impact and Solutions\", \"kr\": \"스마트 시티 기술에 대한 부족한 인식 공개: 영향 및 솔루션\"}', '{\"en\": [], \"kr\": []}', '{\"en\": \"uploads/2024/01/11/lt-3_659fa1c9ede5b.jpg\", \"kr\": \"uploads/2024/01/11/l-article-3_659fa1c93b782.jpg\"}', 9, 'both', 'A', 'Y', 'Y', '2023-10-25', 3, 1, '2024-01-11 05:02:46', '2024-01-31 23:09:20'),
(4, 'Being Futuristic, what could be the future of Dareesoft’s RiaaS?', 'being-futuristic-what-could-be-the-future-of-dareesofts-riaas', '[]', '{\"en\": \"\", \"kr\": \"미래 지향적인 Dareesoft의 RiaaS의 미래는 무엇일까요?\"}', '{\"en\": \"\", \"kr\": \"미래 지향적인 Dareesoft의 RiaaS의 미래는 무엇일까요?\"}', '{\"en\": [], \"kr\": []}', '{\"en\": \"\", \"kr\": \"uploads/2024/01/11/trend-3_659fa1d8e4797.jpg\"}', 7, 'kr', 'A', 'Y', 'Y', '2024-01-03', 2, 1, '2024-01-11 05:11:14', '2024-01-28 14:58:31'),
(5, 'How AI can revolutionize Road Hazard Analysis', 'how-ai-can-revolutionize-road-hazard-analysis', '[]', '{\"en\": \"How AI can revolutionize Road Hazard Analysis\", \"kr\": \"AI가 도로 위험 분석을 혁신하는 방법\"}', '{\"en\": \"How AI can revolutionize Road Hazard Analysis\", \"kr\": \"AI가 도로 위험 분석을 혁신하는 방법\"}', '{\"en\": [], \"kr\": []}', '{\"en\": \"uploads/2024/01/11/blogimage_659fa1c851a06.jpg\", \"kr\": \"uploads/2024/01/11/blogimage_659fa1c851a06.jpg\"}', 5, 'both', 'A', 'Y', 'Y', '2023-11-15', 3, 1, '2024-01-11 05:38:34', '2024-01-31 23:09:14');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nameEn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nameKr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_categories_admin_id_foreign` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `nameEn`, `status`, `admin_id`, `created_at`, `updated_at`, `slug`, `nameKr`) VALUES
(2, 'Road Analyser', 'A', 1, '2024-01-10 06:46:55', '2024-01-10 13:59:52', '', '도로 분석기'),
(3, 'Road Safety', 'A', 1, '2024-01-10 06:57:01', '2024-01-10 14:00:20', '', '도로 안전');

-- --------------------------------------------------------

--
-- Table structure for table `case_studies`
--

DROP TABLE IF EXISTS `case_studies`;
CREATE TABLE IF NOT EXISTS `case_studies` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `logo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `report` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `language` enum('en','kr','both') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `case_studies_admin_id_foreign` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_studies`
--

INSERT INTO `case_studies` (`id`, `title`, `content`, `duration`, `image`, `logo`, `report`, `language`, `status`, `admin_id`, `created_at`, `updated_at`) VALUES
(2, '{\"en\":\"Hwaseong City\",\"kr\":\"\"}', '{\"en\":\"RiaaS became an important component of Hwaseong City\'s Intelligent Transport System and helped achieve their goal of building a digital road management system.\",\"kr\":\"\"}', '2022.09', '{\"en\":\"uploads\\/2024\\/01\\/29\\/hwaseong_65b7439651130.png\",\"kr\":\"\"}', '{\"en\": \"uploads/2023/12/28/01_658d03a0b9069.svg\", \"kr\": \"\"}', '{\"en\":\"uploads\\/2024\\/01\\/29\\/16-completed-case-study-hwaseong-city_65b73f64361db.pdf\",\"kr\":\"\"}', 'en', 'A', 1, '2023-12-27 00:00:50', '2024-01-29 06:22:54'),
(3, '{\"en\": \"Korea Expressway Corporation\", \"kr\": \"한국도로공사\"}', '{\"en\":\"RiaaS has helped Korea Expressway corporation decrease traffic incidents and has enabled immediate response to accidents, broken vehicles, hazards on the freeway.\",\"kr\":\"RiaaS has helped Korea Expressway corporation decrease traffic incidents and has enabled immediate response to accidents, broken vehicles, hazards on the freeway.\"}', '2022.07', '{\"en\": \"uploads/2023/12/28/case_658d03bee98aa.jpg\", \"kr\": \"uploads/2023/12/28/case_658d03bee98aa.jpg\"}', '{\"en\": \"uploads/2023/12/28/02_658d03a1003fe.svg\", \"kr\": \"uploads/2023/12/28/02_658d03a1003fe.svg\"}', '{\"en\":\"uploads\\/2024\\/01\\/29\\/16-completed-case-study-korea-expressway-corporation_65b7401ceae07.pdf\",\"kr\":\"\"}', 'both', 'A', 1, '2023-12-28 00:03:12', '2024-01-29 06:17:43'),
(4, '{\"en\": \"Gimcheon City\", \"kr\": \"\"}', '{\"en\":\"Gimcheon City enabled road safety insights through big data analytics and enhanced its road safety by enabling notification and monitoring of road hazard in real time through the use of RiaaS.\",\"kr\":\"\"}', '2021.12 ~ 2022.06', '{\"en\": \"uploads/2023/12/28/case_658d03bee98aa.jpg\", \"kr\": \"\"}', '{\"en\": \"uploads/2023/12/28/03_658d03a13fc0c.svg\", \"kr\": \"\"}', '{\"en\":\"uploads\\/2024\\/01\\/29\\/16-completed-case-study-gimcheon-city_65b73f2aa985d.pdf\",\"kr\":\"\"}', 'en', 'A', 1, '2023-12-28 00:04:28', '2024-01-29 06:09:42'),
(5, '{\"en\": \"Gwangju City\", \"kr\": \"\"}', '{\"en\":\"How RiaaS helped Gwangju City digitalize and automate the road hazard data which led to reduction of time and cost of handling road hazard related complaints and accidents.\",\"kr\":\"\"}', '2022.05 ~', '{\"en\":\"uploads\\/2024\\/01\\/29\\/screenshot-2024-01-29-153317_65b747128a011.png\",\"kr\":\"\"}', '{\"en\": \"uploads/2023/12/28/04_658d03a1202a1.svg\", \"kr\": \"\"}', '{\"en\":\"uploads\\/2024\\/01\\/29\\/16-completed-case-study-gwangju-city_65b739e84fa85.pdf\",\"kr\":\"\"}', 'en', 'A', 1, '2023-12-28 00:05:07', '2024-01-29 06:35:42'),
(6, '{\"en\":\"Seoul Metropolitan City\",\"kr\":\"\"}', '{\"en\":\"Seoul Metropolitan city, one of the best smart cities of the world is using 301 AI Road Analyzer devices to detect potholes in Seoul.\",\"kr\":\"\"}', NULL, '{\"en\":\"uploads\\/2024\\/01\\/29\\/seoul_65b7489320ff4.jpg\",\"kr\":\"\"}', '{\"en\":\"uploads\\/2024\\/01\\/29\\/seal-of-seoul-south-koreasvg_65b747bd87eba.png\",\"kr\":\"\"}', '{\"en\":\"uploads\\/2024\\/01\\/29\\/16-case-study-seoul-final_65b73fc2adb7a.pdf\",\"kr\":\"\"}', 'en', 'A', 1, '2024-01-29 06:43:28', '2024-01-29 06:43:38'),
(7, '{\"en\":\"SK E&S\",\"kr\":\"\"}', '{\"en\":\"SK E&S is using RiaaS to reduce the human error in finding hazards on the roads such as pothole, cracks, and construction on the roads that passes above the gas pipelines.\",\"kr\":\"\"}', NULL, '{\"en\":\"uploads\\/2024\\/01\\/29\\/skes_65b74aae47c54.png\",\"kr\":\"\"}', '{\"en\":\"uploads\\/2024\\/01\\/29\\/logo-1600-e-2-300x300_65b74b106ad4c.png\",\"kr\":\"\"}', '{\"en\":\"uploads\\/2024\\/01\\/29\\/16-case-study-sk-es_65b7406318052.pdf\",\"kr\":\"\"}', 'en', 'A', 1, '2024-01-29 07:04:26', '2024-01-29 07:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `contact_enquiries`
--

DROP TABLE IF EXISTS `contact_enquiries`;
CREATE TABLE IF NOT EXISTS `contact_enquiries` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country_master`
--

DROP TABLE IF EXISTS `country_master`;
CREATE TABLE IF NOT EXISTS `country_master` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nameEn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nameKr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_master_admin_id_foreign` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country_master`
--

INSERT INTO `country_master` (`id`, `nameEn`, `nameKr`, `status`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', '아프가니스탄', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(2, 'Aland Islands', '올란드 제도', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(3, 'Albania', '알바니아', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(4, 'Algeria', '알제리', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(5, 'American Samoa', '아메리칸사모아', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(6, 'Andorra', '안도라', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(7, 'Angola', '앙골라', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(8, 'Anguilla', '앵귈라', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(9, 'Antarctica', '남극', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(10, 'Antigua And Barbuda', '앤티가 바부다', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(11, 'Argentina', '아르헨티나', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(12, 'Armenia', '아르메니아', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(13, 'Aruba', '아루바', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(14, 'Australia', '호주', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(15, 'Austria', '오스트리아', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(16, 'Azerbaijan', '아제르바이잔', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(17, 'The Bahamas', '바하마', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(18, 'Bahrain', '바레인', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(19, 'Bangladesh', '방글라데시', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(20, 'Barbados', '바베이도스', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(21, 'Belarus', '벨라루스', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(22, 'Belgium', '벨기에', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(23, 'Belize', '벨리즈', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(24, 'Benin', '베냉', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(25, 'Bermuda', '버뮤다', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(26, 'Bhutan', '부탄', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(27, 'Bolivia', '볼리비아', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(28, 'Bosnia and Herzegovina', '보스니아 헤르체고비나', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(29, 'Botswana', '보츠와나', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(30, 'Bouvet Island', '부벳 섬', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(31, 'Brazil', '브라질', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(32, 'British Indian Ocean Territory', '영국령 인도양 지역', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(33, 'Brunei', '브루나이', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(34, 'Bulgaria', '불가리아', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(35, 'Burkina Faso', '부르키나 파소', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(36, 'Burundi', '부룬디', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(37, 'Cambodia', '캄보디아', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(38, 'Cameroon', '카메룬', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(39, 'Canada', '캐나다', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(40, 'Cape Verde', '카보베르데', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(41, 'Cayman Islands', '케이먼 제도', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(42, 'Central African Republic', '중앙아프리카 공화국', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(43, 'Chad', '차드', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(44, 'Chile', '칠리', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(45, 'China', '중국', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(46, 'Christmas Island', '크리스마스 섬', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(47, 'Cocos (Keeling) Islands', '코코스 제도', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(48, 'Colombia', '콜롬비아', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(49, 'Comoros', '코모로', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(50, 'Congo', '콩고', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(51, 'Democratic Republic of the Congo', '콩고 민주 공화국', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(52, 'Cook Islands', '쿡 제도', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(53, 'Costa Rica', '코스타리카', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(54, 'Cote D\'Ivoire (Ivory Coast)', '코트디부아르', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(55, 'Croatia', '크로아티아', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(56, 'Cuba', '쿠바', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(57, 'Cyprus', '키프로스', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(58, 'Czech Republic', '체코', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(59, 'Denmark', '덴마크', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(60, 'Djibouti', '지부티', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(61, 'Dominica', '도미니카 연방', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(62, 'Dominican Republic', '도미니카 공화국', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(63, 'East Timor', '동티모르', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(64, 'Ecuador', '에콰도르', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(65, 'Egypt', '이집트', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(66, 'El Salvador', '엘살바도르', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(67, 'Equatorial Guinea', '적도 기니', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(68, 'Eritrea', '에리트레아', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(69, 'Estonia', '에스토니아', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(70, 'Ethiopia', '에티오피아', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(71, 'Falkland Islands', '포클랜드 제도', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(72, 'Faroe Islands', '페로 제도', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(73, 'Fiji Islands', '피지', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(74, 'Finland', '핀란드', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(75, 'France', '프랑스', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(76, 'French Guiana', '프랑스령 기아나', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(77, 'French Polynesia', '프랑스령 폴리네시아', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(78, 'French Southern Territories', '프랑스령 남방 및 남극', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(79, 'Gabon', '가봉', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(80, 'Gambia The', '감비아', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(81, 'Georgia', '조지아', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(82, 'Germany', '독일', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(83, 'Ghana', '가나', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(84, 'Gibraltar', '지브롤터', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(85, 'Greece', '그리스', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(86, 'Greenland', '그린란드', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(87, 'Grenada', '그레나다', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(88, 'Guadeloupe', '과들루프', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(89, 'Guam', '괌', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(90, 'Guatemala', '과테말라', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(91, 'Guernsey and Alderney', '건지, 올더니', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(92, 'Guinea', '기니', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(93, 'Guinea-Bissau', '기니비사우', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(94, 'Guyana', '가이아나', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(95, 'Haiti', '아이티', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(96, 'Heard Island and McDonald Islands', '허드 맥도날드 제도', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(97, 'Honduras', '온두라스', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(98, 'Hong Kong S.A.R.', '홍콩', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(99, 'Hungary', '헝가리', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(100, 'Iceland', '아이슬란드', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(101, 'India', '인도', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(102, 'Indonesia', '인도네시아', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(103, 'Iran', '이란', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(104, 'Iraq', '이라크', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(105, 'Ireland', '아일랜드', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(106, 'Israel', '이스라엘', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(107, 'Italy', '이탈리아', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(108, 'Jamaica', '자메이카', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(109, 'Japan', '일본', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(110, 'Jersey', '저지 섬', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(111, 'Jordan', '요르단', 'A', 1, '2024-01-21 14:55:10', '2024-01-21 14:55:10'),
(112, 'Kazakhstan', '카자흐스탄', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(113, 'Kenya', '케냐', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(114, 'Kiribati', '키리바시', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(115, 'North Korea', '조선민주주의인민공화국', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(116, 'South Korea', '대한민국', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(117, 'Kuwait', '쿠웨이트', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(118, 'Kyrgyzstan', '키르기스스탄', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(119, 'Laos', '라오스', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(120, 'Latvia', '라트비아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(121, 'Lebanon', '레바논', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(122, 'Lesotho', '레소토', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(123, 'Liberia', '라이베리아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(124, 'Libya', '리비아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(125, 'Liechtenstein', '리히텐슈타인', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(126, 'Lithuania', '리투아니아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(127, 'Luxembourg', '룩셈부르크', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(128, 'Macau S.A.R.', '마카오', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(129, 'North Macedonia', '북마케도니아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(130, 'Madagascar', '마다가스카르', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(131, 'Malawi', '말라위', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(132, 'Malaysia', '말레이시아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(133, 'Maldives', '몰디브', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(134, 'Mali', '말리', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(135, 'Malta', '몰타', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(136, 'Man (Isle of)', '맨 섬', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(137, 'Marshall Islands', '마셜 제도', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(138, 'Martinique', '마르티니크', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(139, 'Mauritania', '모리타니', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(140, 'Mauritius', '모리셔스', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(141, 'Mayotte', '마요트', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(142, 'Mexico', '멕시코', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(143, 'Micronesia', '미크로네시아 연방', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(144, 'Moldova', '몰도바', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(145, 'Monaco', '모나코', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(146, 'Mongolia', '몽골', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(147, 'Montenegro', '몬테네그로', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(148, 'Montserrat', '몬트세랫', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(149, 'Morocco', '모로코', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(150, 'Mozambique', '모잠비크', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(151, 'Myanmar', '미얀마', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(152, 'Namibia', '나미비아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(153, 'Nauru', '나우루', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(154, 'Nepal', '네팔', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(155, 'Bonaire, Sint Eustatius and Saba', '보네르 섬', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(156, 'Netherlands', '네덜란드 ', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(157, 'New Caledonia', '누벨칼레도니', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(158, 'New Zealand', '뉴질랜드', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(159, 'Nicaragua', '니카라과', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(160, 'Niger', '니제르', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(161, 'Nigeria', '나이지리아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(162, 'Niue', '니우에', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(163, 'Norfolk Island', '노퍽 섬', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(164, 'Northern Mariana Islands', '북마리아나 제도', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(165, 'Norway', '노르웨이', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(166, 'Oman', '오만', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(167, 'Pakistan', '파키스탄', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(168, 'Palau', '팔라우', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(169, 'Palestinian Territory Occupied', '팔레스타인 영토', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(170, 'Panama', '파나마', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(171, 'Papua new Guinea', '파푸아뉴기니', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(172, 'Paraguay', '파라과이', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(173, 'Peru', '페루', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(174, 'Philippines', '필리핀', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(175, 'Pitcairn Island', '핏케언 제도', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(176, 'Poland', '폴란드', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(177, 'Portugal', '포르투갈', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(178, 'Puerto Rico', '푸에르토리코', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(179, 'Qatar', '카타르', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(180, 'Reunion', '레위니옹', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(181, 'Romania', '루마니아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(182, 'Russia', '러시아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(183, 'Rwanda', '르완다', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(184, 'Saint Helena', '세인트헬레나', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(185, 'Saint Kitts And Nevis', '세인트키츠 네비스', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(186, 'Saint Lucia', '세인트루시아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(187, 'Saint Pierre and Miquelon', '생피에르 미클롱', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(188, 'Saint Vincent And The Grenadines', '세인트빈센트 그레나딘', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(189, 'Saint-Barthelemy', '생바르텔레미', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(190, 'Saint-Martin (French part)', '세인트마틴 섬', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(191, 'Samoa', '사모아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(192, 'San Marino', '산마리노', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(193, 'Sao Tome and Principe', '상투메 프린시페', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(194, 'Saudi Arabia', '사우디아라비아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(195, 'Senegal', '세네갈', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(196, 'Serbia', '세르비아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(197, 'Seychelles', '세이셸', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(198, 'Sierra Leone', '시에라리온', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(199, 'Singapore', '싱가포르', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(200, 'Slovakia', '슬로바키아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(201, 'Slovenia', '슬로베니아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(202, 'Solomon Islands', '솔로몬 제도', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(203, 'Somalia', '소말리아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(204, 'South Africa', '남아프리카 공화국', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(205, 'South Georgia', '사우스조지아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(206, 'South Sudan', '남수단', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(207, 'Spain', '스페인', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(208, 'Sri Lanka', '스리랑카', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(209, 'Sudan', '수단', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(210, 'Suriname', '수리남', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(211, 'Svalbard And Jan Mayen Islands', '스발바르 얀마옌 제도', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(212, 'Swaziland', '에스와티니', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(213, 'Sweden', '스웨덴', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(214, 'Switzerland', '스위스', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(215, 'Syria', '시리아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(216, 'Taiwan', '대만', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(217, 'Tajikistan', '타지키스탄', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(218, 'Tanzania', '탄자니아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(219, 'Thailand', '태국', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(220, 'Togo', '토고', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(221, 'Tokelau', '토켈라우', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(222, 'Tonga', '통가', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(223, 'Trinidad And Tobago', '트리니다드 토바고', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(224, 'Tunisia', '튀니지', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(225, 'Turkey', '터키', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(226, 'Turkmenistan', '투르크메니스탄', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(227, 'Turks And Caicos Islands', '터크스 케이커스 제도', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(228, 'Tuvalu', '투발루', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(229, 'Uganda', '우간다', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(230, 'Ukraine', '우크라이나', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(231, 'United Arab Emirates', '아랍에미리트', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(232, 'United Kingdom', '영국', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(233, 'United States', '미국', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(234, 'United States Minor Outlying Islands', '미국령 군소 제도', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(235, 'Uruguay', '우루과이', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(236, 'Uzbekistan', '우즈베키스탄', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(237, 'Vanuatu', '바누아투', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(238, 'Vatican City State (Holy See)', '바티칸 시국', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(239, 'Venezuela', '베네수엘라', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(240, 'Vietnam', '베트남', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(241, 'Virgin Islands (British)', '영국령 버진아일랜드', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(242, 'Virgin Islands (US)', '미국령 버진아일랜드', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(243, 'Wallis And Futuna Islands', '왈리스 푸투나', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(244, 'Western Sahara', '서사하라', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(245, 'Yemen', '예멘', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(246, 'Zambia', '잠비아', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(247, 'Zimbabwe', '짐바브웨', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(248, 'Kosovo', '코소보', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(249, 'Curaçao', '퀴라소', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11'),
(250, 'Sint Maarten (Dutch part)', '신트마르턴', 'A', 1, '2024-01-21 14:55:11', '2024-01-21 14:55:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hazard_counts`
--

DROP TABLE IF EXISTS `hazard_counts`;
CREATE TABLE IF NOT EXISTS `hazard_counts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `formatted_count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hazard_counts`
--

INSERT INTO `hazard_counts` (`id`, `count`, `formatted_count`, `created_at`, `updated_at`) VALUES
(1, '69024229', '69,024,229', '2024-01-16 04:59:25', '2024-01-16 04:59:25'),
(2, '71084119', '71,084,119', '2024-01-28 21:30:11', '2024-01-28 21:30:11'),
(3, '71087954', '71,087,954', '2024-01-28 22:30:18', '2024-01-28 22:30:18'),
(4, '71099847', '71,099,847', '2024-01-28 23:30:21', '2024-01-28 23:30:21'),
(5, '71115229', '71,115,229', '2024-01-29 00:30:25', '2024-01-29 00:30:25'),
(6, '71133832', '71,133,832', '2024-01-29 01:30:14', '2024-01-29 01:30:14'),
(7, '71151150', '71,151,150', '2024-01-29 02:30:23', '2024-01-29 02:30:23'),
(8, '71162944', '71,162,944', '2024-01-29 03:30:23', '2024-01-29 03:30:23'),
(9, '71173818', '71,173,818', '2024-01-29 04:30:18', '2024-01-29 04:30:18'),
(10, '71186963', '71,186,963', '2024-01-29 05:30:16', '2024-01-29 05:30:16'),
(11, '71198957', '71,198,957', '2024-01-29 06:30:15', '2024-01-29 06:30:15'),
(12, '71210768', '71,210,768', '2024-01-29 07:30:18', '2024-01-29 07:30:18'),
(13, '71222345', '71,222,345', '2024-01-29 08:30:13', '2024-01-29 08:30:13'),
(14, '71227251', '71,227,251', '2024-01-29 09:30:19', '2024-01-29 09:30:19'),
(15, '71230041', '71,230,041', '2024-01-29 10:30:18', '2024-01-29 10:30:18'),
(16, '71233218', '71,233,218', '2024-01-29 11:30:13', '2024-01-29 11:30:13'),
(17, '71236121', '71,236,121', '2024-01-29 12:30:10', '2024-01-29 12:30:10'),
(18, '71237610', '71,237,610', '2024-01-29 13:30:21', '2024-01-29 13:30:21'),
(19, '71237610', '71,237,610', '2024-01-29 14:30:20', '2024-01-29 14:30:20'),
(20, '71237610', '71,237,610', '2024-01-29 15:30:20', '2024-01-29 15:30:20'),
(21, '71237610', '71,237,610', '2024-01-29 16:30:16', '2024-01-29 16:30:16'),
(22, '71237610', '71,237,610', '2024-01-29 17:30:10', '2024-01-29 17:30:10'),
(23, '71237610', '71,237,610', '2024-01-29 18:30:10', '2024-01-29 18:30:10'),
(24, '71238111', '71,238,111', '2024-01-29 19:30:10', '2024-01-29 19:30:10'),
(25, '71239427', '71,239,427', '2024-01-29 20:30:16', '2024-01-29 20:30:16'),
(26, '71241101', '71,241,101', '2024-01-29 21:30:10', '2024-01-29 21:30:10'),
(27, '71245159', '71,245,159', '2024-01-29 22:30:21', '2024-01-29 22:30:21'),
(28, '71256882', '71,256,882', '2024-01-29 23:30:16', '2024-01-29 23:30:16'),
(29, '71272400', '71,272,400', '2024-01-30 00:30:13', '2024-01-30 00:30:13'),
(30, '71290688', '71,290,688', '2024-01-30 01:30:20', '2024-01-30 01:30:20'),
(31, '71306148', '71,306,148', '2024-01-30 02:30:15', '2024-01-30 02:30:15'),
(32, '71317014', '71,317,014', '2024-01-30 03:30:10', '2024-01-30 03:30:10'),
(33, '71327874', '71,327,874', '2024-01-30 04:30:18', '2024-01-30 04:30:18'),
(34, '71342452', '71,342,452', '2024-01-30 05:30:17', '2024-01-30 05:30:17'),
(35, '71356689', '71,356,689', '2024-01-30 06:30:15', '2024-01-30 06:30:15'),
(36, '71369294', '71,369,294', '2024-01-30 07:30:13', '2024-01-30 07:30:13'),
(37, '71380527', '71,380,527', '2024-01-30 08:30:17', '2024-01-30 08:30:17'),
(38, '71385667', '71,385,667', '2024-01-30 09:30:17', '2024-01-30 09:30:17'),
(39, '71388979', '71,388,979', '2024-01-30 10:30:21', '2024-01-30 10:30:21'),
(40, '71392257', '71,392,257', '2024-01-30 11:30:18', '2024-01-30 11:30:18'),
(41, '71395742', '71,395,742', '2024-01-30 12:30:18', '2024-01-30 12:30:18'),
(42, '71397284', '71,397,284', '2024-01-30 13:30:17', '2024-01-30 13:30:17'),
(43, '71397284', '71,397,284', '2024-01-30 14:30:21', '2024-01-30 14:30:21'),
(44, '71397284', '71,397,284', '2024-01-30 15:30:19', '2024-01-30 15:30:19'),
(45, '71397284', '71,397,284', '2024-01-30 16:30:17', '2024-01-30 16:30:17'),
(46, '71397284', '71,397,284', '2024-01-30 17:30:16', '2024-01-30 17:30:16'),
(47, '71397284', '71,397,284', '2024-01-30 18:30:15', '2024-01-30 18:30:15'),
(48, '71397970', '71,397,970', '2024-01-30 19:30:12', '2024-01-30 19:30:12'),
(49, '71399307', '71,399,307', '2024-01-30 20:30:14', '2024-01-30 20:30:14'),
(50, '71400826', '71,400,826', '2024-01-30 21:30:15', '2024-01-30 21:30:15'),
(51, '71405231', '71,405,231', '2024-01-30 22:30:12', '2024-01-30 22:30:12'),
(52, '71416721', '71,416,721', '2024-01-30 23:30:14', '2024-01-30 23:30:14'),
(53, '71433732', '71,433,732', '2024-01-31 00:30:24', '2024-01-31 00:30:24'),
(54, '71451109', '71,451,109', '2024-01-31 01:30:17', '2024-01-31 01:30:17'),
(55, '71469682', '71,469,682', '2024-01-31 02:30:14', '2024-01-31 02:30:14'),
(56, '71481940', '71,481,940', '2024-01-31 03:30:14', '2024-01-31 03:30:14'),
(57, '71492297', '71,492,297', '2024-01-31 04:30:13', '2024-01-31 04:30:13'),
(58, '71505528', '71,505,528', '2024-01-31 05:30:17', '2024-01-31 05:30:17'),
(59, '71519034', '71,519,034', '2024-01-31 06:30:17', '2024-01-31 06:30:17'),
(60, '71531823', '71,531,823', '2024-01-31 07:30:17', '2024-01-31 07:30:17'),
(61, '71543515', '71,543,515', '2024-01-31 08:30:11', '2024-01-31 08:30:11'),
(62, '71549074', '71,549,074', '2024-01-31 09:30:18', '2024-01-31 09:30:18'),
(63, '71552013', '71,552,013', '2024-01-31 10:30:16', '2024-01-31 10:30:16'),
(64, '71555402', '71,555,402', '2024-01-31 11:30:14', '2024-01-31 11:30:14'),
(65, '71559046', '71,559,046', '2024-01-31 12:30:12', '2024-01-31 12:30:12'),
(66, '71560641', '71,560,641', '2024-01-31 13:30:15', '2024-01-31 13:30:15'),
(67, '71560641', '71,560,641', '2024-01-31 14:30:16', '2024-01-31 14:30:16'),
(68, '71560641', '71,560,641', '2024-01-31 15:30:19', '2024-01-31 15:30:19'),
(69, '71560641', '71,560,641', '2024-01-31 16:30:16', '2024-01-31 16:30:16'),
(70, '71560641', '71,560,641', '2024-01-31 17:30:15', '2024-01-31 17:30:15'),
(71, '71560641', '71,560,641', '2024-01-31 18:30:16', '2024-01-31 18:30:16'),
(72, '71561281', '71,561,281', '2024-01-31 19:30:13', '2024-01-31 19:30:13'),
(73, '71562673', '71,562,673', '2024-01-31 20:30:11', '2024-01-31 20:30:11'),
(74, '71564023', '71,564,023', '2024-01-31 21:30:18', '2024-01-31 21:30:18'),
(75, '71567914', '71,567,914', '2024-01-31 22:30:13', '2024-01-31 22:30:13'),
(76, '71578747', '71,578,747', '2024-01-31 23:30:19', '2024-01-31 23:30:19'),
(77, '71594536', '71,594,536', '2024-02-01 00:30:21', '2024-02-01 00:30:21'),
(78, '71613667', '71,613,667', '2024-02-01 01:30:12', '2024-02-01 01:30:12'),
(79, '71632430', '71,632,430', '2024-02-01 02:30:20', '2024-02-01 02:30:20'),
(80, '71648803', '71,648,803', '2024-02-01 03:30:15', '2024-02-01 03:30:15'),
(81, '71662317', '71,662,317', '2024-02-01 04:30:12', '2024-02-01 04:30:12'),
(82, '71678302', '71,678,302', '2024-02-01 05:30:11', '2024-02-01 05:30:11'),
(83, '71693199', '71,693,199', '2024-02-01 06:30:15', '2024-02-01 06:30:15'),
(84, '71705466', '71,705,466', '2024-02-01 07:30:12', '2024-02-01 07:30:12'),
(85, '71714482', '71,714,482', '2024-02-01 08:30:20', '2024-02-01 08:30:20'),
(86, '71719173', '71,719,173', '2024-02-01 09:30:12', '2024-02-01 09:30:12'),
(87, '71721991', '71,721,991', '2024-02-01 10:30:11', '2024-02-01 10:30:11'),
(88, '71725137', '71,725,137', '2024-02-01 11:30:18', '2024-02-01 11:30:18'),
(89, '71728183', '71,728,183', '2024-02-01 12:30:16', '2024-02-01 12:30:16'),
(90, '71729770', '71,729,770', '2024-02-01 13:30:18', '2024-02-01 13:30:18'),
(91, '71729770', '71,729,770', '2024-02-01 14:30:14', '2024-02-01 14:30:14'),
(92, '71729770', '71,729,770', '2024-02-01 15:30:22', '2024-02-01 15:30:22'),
(93, '71729770', '71,729,770', '2024-02-01 16:30:13', '2024-02-01 16:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `location` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsibility` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `language` enum('en','kr','both') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_admin_id_foreign` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `location`, `description`, `responsibility`, `language`, `status`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": \"Business Development Manager\", \"kr\": \"사업 개발 매니저\"}', '{\"en\": \"Chirwon\", \"kr\": \"칠원\"}', '{\"en\": \"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\", \"kr\": \"Lorem Ipsum은 인쇄 및 조판 산업의 단순한 더미 텍스트입니다. Lorem Ipsum은 1500년대 무명 인쇄업자가 활자 교정쇄를 가져와 활자 견본 책을 만들기 위해 뒤섞인 이후 업계 표준 더미 텍스트였습니다.\"}', '{\"en\": \"<ul>\\r\\n<li>P&amp;L Responsibility of entire Auto &amp; Retail.</li>\\r\\n<li>Complete ownership through teams in BD, Content &amp; Operation for the defined Vertical.</li>\\r\\n<li>Responsible for end-to-end Project Inception to Project operations - project management, team management, budget and timelines</li>\\r\\n<li>Partnership &ndash; Signing up strategic partnership to onboard new solutions .</li>\\r\\n<li>Establish strong contact with key stakeholders for mapping training opportunities, budget and timelines</li></ul>\", \"kr\": \"<ul>\\r\\n<li>자동차 및 소매업 전체의 P&amp;L 책임입니다.</li>\\r\\n<li>정의된 카테고리에 대한 BD, 콘텐츠 및 운영 팀을 통해 완전한 소유권을 갖습니다.</li>\\r\\n<li>프로젝트 시작부터 프로젝트 운영까지 엔드투엔드(프로젝트 관리, 팀 관리, 예산 및 일정)를 담당합니다.</li>\\r\\n<li>파트너십 &ndash; 새로운 솔루션을 탑재하기 위한 전략적 파트너십을 체결합니다.</li>\\r\\n<li>교육 기회, 예산 및 일정을 매핑하기 위해 주요 이해관계자와 강력한 접촉을 구축합니다.</li></ul>\"}', 'both', 'A', 1, '2024-01-14 10:11:21', '2024-01-14 10:17:09'),
(3, '{\"en\": \"Business Development Manager 1\", \"kr\": \"\"}', '{\"en\": \"\", \"kr\": \"\"}', '{\"en\": \"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\", \"kr\": \"\"}', '{\"en\": \"<ul>\\r\\n<li>P&amp;L Responsibility of entire Auto &amp; Retail.</li>\\r\\n<li>Complete ownership through teams in BD, Content &amp; Operation for the defined Vertical.</li>\\r\\n<li>Responsible for end-to-end Project Inception to Project operations - project management, team management, budget and timelines</li>\\r\\n<li>Partnership &ndash; Signing up strategic partnership to onboard new solutions .</li>\\r\\n<li>Establish strong contact with key stakeholders for mapping training opportunities, budget and timelines</li></ul>\", \"kr\": \"\"}', 'en', 'A', 1, '2024-01-14 10:19:54', '2024-01-14 10:19:54'),
(4, '{\"en\": \"Business Development Manager 3\", \"kr\": \"\"}', '{\"en\": \"\", \"kr\": \"\"}', '{\"en\": \"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\", \"kr\": \"\"}', '{\"en\": \"<ul>\\r\\n<li>P&amp;L Responsibility of entire Auto &amp; Retail.</li>\\r\\n<li>Complete ownership through teams in BD, Content &amp; Operation for the defined Vertical.</li>\\r\\n<li>Responsible for end-to-end Project Inception to Project operations - project management, team management, budget and timelines</li>\\r\\n<li>Partnership &ndash; Signing up strategic partnership to onboard new solutions .</li>\\r\\n<li>Establish strong contact with key stakeholders for mapping training opportunities, budget and timelines</li></ul>\", \"kr\": \"\"}', 'en', 'A', 1, '2024-01-14 10:20:21', '2024-01-14 10:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `job_enquiries`
--

DROP TABLE IF EXISTS `job_enquiries`;
CREATE TABLE IF NOT EXISTS `job_enquiries` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_letter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_letter_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_letter_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_doc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_doc_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_doc_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_enquiries_job_id_foreign` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaderships`
--

DROP TABLE IF EXISTS `leaderships`;
CREATE TABLE IF NOT EXISTS `leaderships` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `designation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `language` enum('en','kr','both') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leaderships_admin_id_foreign` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaderships`
--

INSERT INTO `leaderships` (`id`, `name`, `designation`, `image`, `description`, `language`, `status`, `admin_id`, `created_at`, `updated_at`) VALUES
(2, '{\"en\": \"Elizabeth Row\", \"kr\": \"\"}', '{\"en\": \"Co-CEO\", \"kr\": \"\"}', '{\"en\": \"uploads/2023/12/29/elizabeth-row_658f10b8000e7.jpg\", \"kr\": \"\"}', '{\"en\": \"<ul>\\r\\n<li>Hancom WITH CEO</li>\\r\\n<li>Hancom MDS CGO</li>\\r\\n<li>Microsoft HQ</li>\\r\\n<li>Global Sales &amp; Marketing</li></ul>\", \"kr\": \"\"}', 'en', 'A', 1, '2023-12-30 10:05:43', '2023-12-30 10:05:43'),
(3, '{\"en\": \"Mandella Jeong\", \"kr\": \"\"}', '{\"en\": \"Co-CEO\", \"kr\": \"\"}', '{\"en\": \"uploads/2023/12/29/elizabeth-row_658f10b8000e7.jpg\", \"kr\": \"\"}', '{\"en\": \"<ul>\\r\\n<li>Hancom WITH CRO</li>\\r\\n<li>Hancom MDS Business Manager</li>\\r\\n<li>Sales &amp; Marketing</li>\\r\\n<li>(IoT, Smart City, Blockchain)</li></ul>\", \"kr\": \"\"}', 'en', 'A', 1, '2023-12-30 10:06:41', '2023-12-30 10:06:41'),
(4, '{\"en\": \"Gemini Noh\", \"kr\": \"Gemini Noh\"}', '{\"en\": \"CTO\", \"kr\": \"CTO\"}', '{\"en\": \"uploads/2023/12/29/elizabeth-row_658f10b8000e7.jpg\", \"kr\": \"uploads/2023/12/29/elizabeth-row_658f10b8000e7.jpg\"}', '{\"en\": \"<ul>\\r\\n<li>Hancom WITH CTO</li>\\r\\n<li>Hancom MDS Research Director</li>\\r\\n<li>IoT, Data Design/Analysis, AI Design,</li>\\r\\n<li>Blockchain</li></ul>\", \"kr\": \"<ul>\\r\\n<li>Hancom WITH CTO</li>\\r\\n<li>Hancom MDS Research Director</li>\\r\\n<li>IoT, Data Design/Analysis, AI Design,</li>\\r\\n<li>Blockchain</li></ul>\"}', 'both', 'A', 1, '2023-12-30 10:08:36', '2024-01-23 06:20:47'),
(5, '{\"en\": \"Terry Kim\", \"kr\": \"Terry Kim\"}', '{\"en\":\"\",\"kr\":\"\"}', '{\"en\": \"uploads/2023/12/29/elizabeth-row_658f10b8000e7.jpg\", \"kr\": \"uploads/2023/12/29/elizabeth-row_658f10b8000e7.jpg\"}', '{\"en\": \"<ul>\\r\\n<li>Hancom LifeCare Business Planning</li>\\r\\n<li>Hancom MDS Business Planning</li>\\r\\n<li>M&amp;A, IPO, IT Business Planning</li></ul>\", \"kr\": \"<ul>\\r\\n<li>Hancom LifeCare Business Planning</li>\\r\\n<li>Hancom MDS Business Planning</li>\\r\\n<li>M&amp;A, IPO, IT Business Planning</li></ul>\"}', 'both', 'A', 1, '2023-12-30 10:09:33', '2024-01-29 11:22:09');

-- --------------------------------------------------------

--
-- Table structure for table `media_libraries`
--

DROP TABLE IF EXISTS `media_libraries`;
CREATE TABLE IF NOT EXISTS `media_libraries` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `objectKey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `year` year(4) NOT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_library_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_libraries_code_unique` (`code`),
  KEY `media_libraries_media_library_group_id_foreign` (`media_library_group_id`),
  KEY `media_libraries_admin_id_foreign` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_libraries`
--

INSERT INTO `media_libraries` (`id`, `code`, `name`, `objectKey`, `path`, `type`, `size`, `height`, `width`, `meta`, `year`, `status`, `media_library_group_id`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, '840b3b87-7547-406c-adac-4e44b7168927', 'Instant-Road-Condition-Data.jpg', 'instant-road-condition-data_658a87044e76d.jpg', 'uploads/2023/12/26/instant-road-condition-data_658a87044e76d.jpg', 'image/jpeg', '93599', '667', '1000', '{\"mime\": \"image/jpeg\", \"name\": \"instant-road-condition-data_658a87044e76d.jpg\", \"path\": \"uploads/2023/12/26/instant-road-condition-data_658a87044e76d.jpg\", \"size\": 93599, \"width\": 1000, \"height\": 667, \"originalName\": \"Instant-Road-Condition-Data.jpg\"}', 2023, 'A', 1, 1, '2023-12-26 02:25:48', '2023-12-26 02:25:48'),
(2, 'a6ff97fd-c6d0-4279-b8f7-44bf553d50b8', 'Road-Hazard-Detection.jpg', 'road-hazard-detection_658a87046ee0c.jpg', 'uploads/2023/12/26/road-hazard-detection_658a87046ee0c.jpg', 'image/jpeg', '112293', '667', '1000', '{\"mime\": \"image/jpeg\", \"name\": \"road-hazard-detection_658a87046ee0c.jpg\", \"path\": \"uploads/2023/12/26/road-hazard-detection_658a87046ee0c.jpg\", \"size\": 112293, \"width\": 1000, \"height\": 667, \"originalName\": \"Road-Hazard-Detection.jpg\"}', 2023, 'A', 1, 1, '2023-12-26 02:25:48', '2023-12-26 02:25:48'),
(3, 'f7a295c7-4971-4b6f-885b-1f5c0a7c49ef', 'On-Device-AI-Road-Analyzer.jpg', 'on-device-ai-road-analyzer_658a870488933.jpg', 'uploads/2023/12/26/on-device-ai-road-analyzer_658a870488933.jpg', 'image/jpeg', '231305', '1005', '1920', '{\"mime\": \"image/jpeg\", \"name\": \"on-device-ai-road-analyzer_658a870488933.jpg\", \"path\": \"uploads/2023/12/26/on-device-ai-road-analyzer_658a870488933.jpg\", \"size\": 231305, \"width\": 1920, \"height\": 1005, \"originalName\": \"On-Device-AI-Road-Analyzer.jpg\"}', 2023, 'A', 1, 1, '2023-12-26 02:25:48', '2023-12-26 02:25:48'),
(4, '0afecc59-2fbb-4798-8b83-00def00cc3c2', '01.jpg', '01_658a8714df57a.jpg', 'uploads/2023/12/26/01_658a8714df57a.jpg', 'image/jpeg', '74478', '500', '750', '{\"mime\": \"image/jpeg\", \"name\": \"01_658a8714df57a.jpg\", \"path\": \"uploads/2023/12/26/01_658a8714df57a.jpg\", \"size\": 74478, \"width\": 750, \"height\": 500, \"originalName\": \"01.jpg\"}', 2023, 'A', 3, 1, '2023-12-26 02:26:04', '2023-12-26 02:26:04'),
(5, '4fd8bd0c-487c-4806-a33a-b8fd29f3caaf', 'video.mp4', 'video_658a8738633f0.mp4', 'uploads/2023/12/26/video_658a8738633f0.mp4', 'video/mp4', '38453682', NULL, NULL, '{\"mime\": \"video/mp4\", \"name\": \"video_658a8738633f0.mp4\", \"path\": \"uploads/2023/12/26/video_658a8738633f0.mp4\", \"size\": 38453682, \"width\": null, \"height\": null, \"originalName\": \"video.mp4\"}', 2023, 'A', 1, 1, '2023-12-26 02:26:40', '2023-12-26 02:26:40'),
(6, '4ba0ca19-7a38-42b2-bccf-ce23c41031dc', 'maintaince.png', 'maintaince_658a9486900f6.png', 'uploads/2023/12/26/maintaince_658a9486900f6.png', 'image/png', '3361115', '1973', '3544', '{\"mime\": \"image/png\", \"name\": \"maintaince_658a9486900f6.png\", \"path\": \"uploads/2023/12/26/maintaince_658a9486900f6.png\", \"size\": 3361115, \"width\": 3544, \"height\": 1973, \"originalName\": \"maintaince.png\"}', 2023, 'A', 1, 1, '2023-12-26 03:23:26', '2023-12-26 03:23:26'),
(7, '475e10c5-410f-4fad-9d5a-491a806d19f5', 'AI-Road-Analyzer-01.jpg', 'ai-road-analyzer-01_658a9619546d0.jpg', 'uploads/2023/12/26/ai-road-analyzer-01_658a9619546d0.jpg', 'image/jpeg', '104851', '526', '1000', '{\"mime\": \"image/jpeg\", \"name\": \"ai-road-analyzer-01_658a9619546d0.jpg\", \"path\": \"uploads/2023/12/26/ai-road-analyzer-01_658a9619546d0.jpg\", \"size\": 104851, \"width\": 1000, \"height\": 526, \"originalName\": \"AI-Road-Analyzer-01.jpg\"}', 2023, 'A', 1, 1, '2023-12-26 03:30:09', '2023-12-26 03:30:09'),
(8, '0d04c285-7dc7-4892-be28-3ffe637f2906', 'Hazard-Detection-icon.svg', 'hazard-detection-icon_658a9e0166ec1.svg', 'uploads/2023/12/26/hazard-detection-icon_658a9e0166ec1.svg', 'image/svg+xml', '1323', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"hazard-detection-icon_658a9e0166ec1.svg\", \"path\": \"uploads/2023/12/26/hazard-detection-icon_658a9e0166ec1.svg\", \"size\": 1323, \"width\": null, \"height\": null, \"originalName\": \"Hazard-Detection-icon.svg\"}', 2023, 'A', 1, 1, '2023-12-26 04:03:53', '2023-12-26 04:03:53'),
(9, '5dc432f5-e8be-425d-b713-02f2e434164c', 'riaas.png', 'riaas_658ac31be62eb.png', 'uploads/2023/12/26/riaas_658ac31be62eb.png', 'image/png', '95593', '1002', '2071', '{\"mime\": \"image/png\", \"name\": \"riaas_658ac31be62eb.png\", \"path\": \"uploads/2023/12/26/riaas_658ac31be62eb.png\", \"size\": 95593, \"width\": 2071, \"height\": 1002, \"originalName\": \"riaas.png\"}', 2023, 'A', 6, 1, '2023-12-26 06:42:12', '2023-12-26 06:42:12'),
(10, '9744ad74-51ef-4a6e-a683-056635029958', 'broken-guide-pole.jpg', 'broken-guide-pole_658b03f71f1b7.jpg', 'uploads/2023/12/26/broken-guide-pole_658b03f71f1b7.jpg', 'image/jpeg', '52453', '190', '288', '{\"mime\": \"image/jpeg\", \"name\": \"broken-guide-pole_658b03f71f1b7.jpg\", \"path\": \"uploads/2023/12/26/broken-guide-pole_658b03f71f1b7.jpg\", \"size\": 52453, \"width\": 288, \"height\": 190, \"originalName\": \"broken-guide-pole.jpg\"}', 2023, 'A', 6, 1, '2023-12-26 11:18:55', '2023-12-26 11:18:55'),
(11, 'fdf5e645-5b98-4204-9ac2-28c644d32a1c', 'fatigue-crack.jpg', 'fatigue-crack_658b03f75b16d.jpg', 'uploads/2023/12/26/fatigue-crack_658b03f75b16d.jpg', 'image/jpeg', '66395', '184', '289', '{\"mime\": \"image/jpeg\", \"name\": \"fatigue-crack_658b03f75b16d.jpg\", \"path\": \"uploads/2023/12/26/fatigue-crack_658b03f75b16d.jpg\", \"size\": 66395, \"width\": 289, \"height\": 184, \"originalName\": \"fatigue-crack.jpg\"}', 2023, 'A', 6, 1, '2023-12-26 11:18:55', '2023-12-26 11:18:55'),
(12, 'ff49bb49-4396-47dd-9d71-8211cccb06ef', 'horizontal-crack.jpg', 'horizontal-crack_658b03f784ad1.jpg', 'uploads/2023/12/26/horizontal-crack_658b03f784ad1.jpg', 'image/jpeg', '67448', '184', '288', '{\"mime\": \"image/jpeg\", \"name\": \"horizontal-crack_658b03f784ad1.jpg\", \"path\": \"uploads/2023/12/26/horizontal-crack_658b03f784ad1.jpg\", \"size\": 67448, \"width\": 288, \"height\": 184, \"originalName\": \"horizontal-crack.jpg\"}', 2023, 'A', 6, 1, '2023-12-26 11:18:55', '2023-12-26 11:18:55'),
(13, 'f47f6b4b-b4dd-418e-ab58-36d5d6a7da3a', 'trash.jpg', 'trash_658b03f7ac1ad.jpg', 'uploads/2023/12/26/trash_658b03f7ac1ad.jpg', 'image/jpeg', '74439', '188', '294', '{\"mime\": \"image/jpeg\", \"name\": \"trash_658b03f7ac1ad.jpg\", \"path\": \"uploads/2023/12/26/trash_658b03f7ac1ad.jpg\", \"size\": 74439, \"width\": 294, \"height\": 188, \"originalName\": \"trash.jpg\"}', 2023, 'A', 6, 1, '2023-12-26 11:18:55', '2023-12-26 11:18:55'),
(14, 'b975a5f0-24cf-491e-8e8a-6b33dd2cfc89', 'vertical-crack.jpg', 'vertical-crack_658b03f7d2c18.jpg', 'uploads/2023/12/26/vertical-crack_658b03f7d2c18.jpg', 'image/jpeg', '58903', '194', '288', '{\"mime\": \"image/jpeg\", \"name\": \"vertical-crack_658b03f7d2c18.jpg\", \"path\": \"uploads/2023/12/26/vertical-crack_658b03f7d2c18.jpg\", \"size\": 58903, \"width\": 288, \"height\": 194, \"originalName\": \"vertical-crack.jpg\"}', 2023, 'A', 6, 1, '2023-12-26 11:18:55', '2023-12-26 11:18:55'),
(15, '24358a44-937d-40ec-b974-47cdf5c46889', 'potholes.png', 'potholes_658b03f807dd7.png', 'uploads/2023/12/26/potholes_658b03f807dd7.png', 'image/png', '96885', '184', '288', '{\"mime\": \"image/png\", \"name\": \"potholes_658b03f807dd7.png\", \"path\": \"uploads/2023/12/26/potholes_658b03f807dd7.png\", \"size\": 96885, \"width\": 288, \"height\": 184, \"originalName\": \"potholes.png\"}', 2023, 'A', 6, 1, '2023-12-26 11:18:56', '2023-12-26 11:18:56'),
(16, 'c723294d-d51c-4913-9cd9-9b62731b5534', 'Accurate-Analysis-icon.svg', 'accurate-analysis-icon_658b33ac136b6.svg', 'uploads/2023/12/26/accurate-analysis-icon_658b33ac136b6.svg', 'image/svg+xml', '9570', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"accurate-analysis-icon_658b33ac136b6.svg\", \"path\": \"uploads/2023/12/26/accurate-analysis-icon_658b33ac136b6.svg\", \"size\": 9570, \"width\": null, \"height\": null, \"originalName\": \"Accurate-Analysis-icon.svg\"}', 2023, 'A', 6, 1, '2023-12-26 14:42:28', '2023-12-26 14:42:28'),
(17, '9694fea2-9e8a-4ccc-8b98-a6d79674a8b8', 'big-data-icon.svg', 'big-data-icon_658b33ac30c94.svg', 'uploads/2023/12/26/big-data-icon_658b33ac30c94.svg', 'image/svg+xml', '8773', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"big-data-icon_658b33ac30c94.svg\", \"path\": \"uploads/2023/12/26/big-data-icon_658b33ac30c94.svg\", \"size\": 8773, \"width\": null, \"height\": null, \"originalName\": \"big-data-icon.svg\"}', 2023, 'A', 6, 1, '2023-12-26 14:42:28', '2023-12-26 14:42:28'),
(18, 'da6102a7-b463-429e-b656-3c5108f7b69c', 'linkage-icon.svg', 'linkage-icon_658b33ac4cb67.svg', 'uploads/2023/12/26/linkage-icon_658b33ac4cb67.svg', 'image/svg+xml', '13067', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"linkage-icon_658b33ac4cb67.svg\", \"path\": \"uploads/2023/12/26/linkage-icon_658b33ac4cb67.svg\", \"size\": 13067, \"width\": null, \"height\": null, \"originalName\": \"linkage-icon.svg\"}', 2023, 'A', 6, 1, '2023-12-26 14:42:28', '2023-12-26 14:42:28'),
(19, 'acfa43ad-0904-4ca2-8236-bb94c1451a65', 'open-api-icon.svg', 'open-api-icon_658b33ac6b1f7.svg', 'uploads/2023/12/26/open-api-icon_658b33ac6b1f7.svg', 'image/svg+xml', '9197', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"open-api-icon_658b33ac6b1f7.svg\", \"path\": \"uploads/2023/12/26/open-api-icon_658b33ac6b1f7.svg\", \"size\": 9197, \"width\": null, \"height\": null, \"originalName\": \"open-api-icon.svg\"}', 2023, 'A', 6, 1, '2023-12-26 14:42:28', '2023-12-26 14:42:28'),
(20, 'e935c3b9-c543-4245-8fd2-fa2b6322a319', 'Accurate-Analysis.jpg', 'accurate-analysis_658b33ac85eda.jpg', 'uploads/2023/12/26/accurate-analysis_658b33ac85eda.jpg', 'image/jpeg', '241185', '989', '1121', '{\"mime\": \"image/jpeg\", \"name\": \"accurate-analysis_658b33ac85eda.jpg\", \"path\": \"uploads/2023/12/26/accurate-analysis_658b33ac85eda.jpg\", \"size\": 241185, \"width\": 1121, \"height\": 989, \"originalName\": \"Accurate-Analysis.jpg\"}', 2023, 'A', 6, 1, '2023-12-26 14:42:28', '2023-12-26 14:42:28'),
(21, '06ed6688-59b6-43f1-b2dc-0e1e10441148', 'service-policy-icon.svg', 'service-policy-icon_658b33acab59b.svg', 'uploads/2023/12/26/service-policy-icon_658b33acab59b.svg', 'image/svg+xml', '10961', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"service-policy-icon_658b33acab59b.svg\", \"path\": \"uploads/2023/12/26/service-policy-icon_658b33acab59b.svg\", \"size\": 10961, \"width\": null, \"height\": null, \"originalName\": \"service-policy-icon.svg\"}', 2023, 'A', 6, 1, '2023-12-26 14:42:28', '2023-12-26 14:42:28'),
(22, '4783ccea-5b41-47b0-bd73-7e31cf8b0af3', 'Open-API.jpg', 'open-api_658b33accbef3.jpg', 'uploads/2023/12/26/open-api_658b33accbef3.jpg', 'image/jpeg', '393801', '791', '1500', '{\"mime\": \"image/jpeg\", \"name\": \"open-api_658b33accbef3.jpg\", \"path\": \"uploads/2023/12/26/open-api_658b33accbef3.jpg\", \"size\": 393801, \"width\": 1500, \"height\": 791, \"originalName\": \"Open-API.jpg\"}', 2023, 'A', 6, 1, '2023-12-26 14:42:28', '2023-12-26 14:42:28'),
(23, '90574af0-124f-445c-955b-7ddb84c4276c', 'Service-Policy.jpg', 'service-policy_658b33acf1271.jpg', 'uploads/2023/12/26/service-policy_658b33acf1271.jpg', 'image/jpeg', '444888', '1001', '1500', '{\"mime\": \"image/jpeg\", \"name\": \"service-policy_658b33acf1271.jpg\", \"path\": \"uploads/2023/12/26/service-policy_658b33acf1271.jpg\", \"size\": 444888, \"width\": 1500, \"height\": 1001, \"originalName\": \"Service-Policy.jpg\"}', 2023, 'A', 6, 1, '2023-12-26 14:42:28', '2023-12-26 14:42:28'),
(24, '5be3fb5f-bbcc-4cbf-a8ed-7c53c5eb0591', 'Big-Data.jpg', 'big-data_658b33ad2c26a.jpg', 'uploads/2023/12/26/big-data_658b33ad2c26a.jpg', 'image/jpeg', '637200', '845', '1500', '{\"mime\": \"image/jpeg\", \"name\": \"big-data_658b33ad2c26a.jpg\", \"path\": \"uploads/2023/12/26/big-data_658b33ad2c26a.jpg\", \"size\": 637200, \"width\": 1500, \"height\": 845, \"originalName\": \"Big-Data.jpg\"}', 2023, 'A', 6, 1, '2023-12-26 14:42:29', '2023-12-26 14:42:29'),
(25, '7a79b494-d06e-4b8a-9327-d6f56ab60e37', 'Linkage-with-External-Data.jpg', 'linkage-with-external-data_658b33ad4b5b7.jpg', 'uploads/2023/12/26/linkage-with-external-data_658b33ad4b5b7.jpg', 'image/jpeg', '686531', '843', '1500', '{\"mime\": \"image/jpeg\", \"name\": \"linkage-with-external-data_658b33ad4b5b7.jpg\", \"path\": \"uploads/2023/12/26/linkage-with-external-data_658b33ad4b5b7.jpg\", \"size\": 686531, \"width\": 1500, \"height\": 843, \"originalName\": \"Linkage-with-External-Data.jpg\"}', 2023, 'A', 6, 1, '2023-12-26 14:42:29', '2023-12-26 14:42:29'),
(26, '43513003-304d-45ce-834c-1e44d15aa4b5', 'monitoring.jpg', 'monitoring_658bbab4594f3.jpg', 'uploads/2023/12/27/monitoring_658bbab4594f3.jpg', 'image/jpeg', '32342', '325', '1000', '{\"mime\": \"image/jpeg\", \"name\": \"monitoring_658bbab4594f3.jpg\", \"path\": \"uploads/2023/12/27/monitoring_658bbab4594f3.jpg\", \"size\": 32342, \"width\": 1000, \"height\": 325, \"originalName\": \"monitoring.jpg\"}', 2023, 'A', 6, 1, '2023-12-27 00:18:36', '2023-12-27 00:18:36'),
(27, '3f4f4be6-ebce-4e6e-931d-14a862405ec2', 'use-cases.jpg', 'use-cases_658c0d4709502.jpg', 'uploads/2023/12/27/use-cases_658c0d4709502.jpg', 'image/jpeg', '337674', '700', '1511', '{\"mime\": \"image/jpeg\", \"name\": \"use-cases_658c0d4709502.jpg\", \"path\": \"uploads/2023/12/27/use-cases_658c0d4709502.jpg\", \"size\": 337674, \"width\": 1511, \"height\": 700, \"originalName\": \"use-cases.jpg\"}', 2023, 'A', 8, 1, '2023-12-27 06:10:55', '2023-12-27 06:10:55'),
(28, 'e9075d15-0016-42cc-84dc-15dd07691f27', 'fou.png', 'fou_658c0e2c832f2.png', 'uploads/2023/12/27/fou_658c0e2c832f2.png', 'image/png', '69784', '231', '412', '{\"mime\": \"image/png\", \"name\": \"fou_658c0e2c832f2.png\", \"path\": \"uploads/2023/12/27/fou_658c0e2c832f2.png\", \"size\": 69784, \"width\": 412, \"height\": 231, \"originalName\": \"fou.png\"}', 2023, 'A', 8, 1, '2023-12-27 06:14:44', '2023-12-27 06:14:44'),
(29, 'b9421c82-4296-410f-9cef-0b94262c1615', 'field01.jpg', 'field01_658c1010bbd59.jpg', 'uploads/2023/12/27/field01_658c1010bbd59.jpg', 'image/jpeg', '41307', '320', '350', '{\"mime\": \"image/jpeg\", \"name\": \"field01_658c1010bbd59.jpg\", \"path\": \"uploads/2023/12/27/field01_658c1010bbd59.jpg\", \"size\": 41307, \"width\": 350, \"height\": 320, \"originalName\": \"field01.jpg\"}', 2023, 'A', 8, 1, '2023-12-27 06:22:48', '2023-12-27 06:22:48'),
(30, '986a76cc-a1cd-43a9-8e74-cfec93310573', 'field02.jpg', 'field02_658c1010e78a6.jpg', 'uploads/2023/12/27/field02_658c1010e78a6.jpg', 'image/jpeg', '25975', '320', '350', '{\"mime\": \"image/jpeg\", \"name\": \"field02_658c1010e78a6.jpg\", \"path\": \"uploads/2023/12/27/field02_658c1010e78a6.jpg\", \"size\": 25975, \"width\": 350, \"height\": 320, \"originalName\": \"field02.jpg\"}', 2023, 'A', 8, 1, '2023-12-27 06:22:48', '2023-12-27 06:22:48'),
(31, '900cf475-3720-45c8-85eb-aaac2322e29d', 'field04.jpg', 'field04_658c10111b5eb.jpg', 'uploads/2023/12/27/field04_658c10111b5eb.jpg', 'image/jpeg', '26410', '320', '350', '{\"mime\": \"image/jpeg\", \"name\": \"field04_658c10111b5eb.jpg\", \"path\": \"uploads/2023/12/27/field04_658c10111b5eb.jpg\", \"size\": 26410, \"width\": 350, \"height\": 320, \"originalName\": \"field04.jpg\"}', 2023, 'A', 8, 1, '2023-12-27 06:22:49', '2023-12-27 06:22:49'),
(32, '1c0548f2-9404-4237-b671-219af6d4b676', 'field05.jpg', 'field05_658c101142ed7.jpg', 'uploads/2023/12/27/field05_658c101142ed7.jpg', 'image/jpeg', '26191', '320', '350', '{\"mime\": \"image/jpeg\", \"name\": \"field05_658c101142ed7.jpg\", \"path\": \"uploads/2023/12/27/field05_658c101142ed7.jpg\", \"size\": 26191, \"width\": 350, \"height\": 320, \"originalName\": \"field05.jpg\"}', 2023, 'A', 8, 1, '2023-12-27 06:22:49', '2023-12-27 06:22:49'),
(33, 'bc9b2912-8669-4ad7-b56c-3aa134742ef3', 'field06.jpg', 'field06_658c10116b6d1.jpg', 'uploads/2023/12/27/field06_658c10116b6d1.jpg', 'image/jpeg', '32273', '320', '350', '{\"mime\": \"image/jpeg\", \"name\": \"field06_658c10116b6d1.jpg\", \"path\": \"uploads/2023/12/27/field06_658c10116b6d1.jpg\", \"size\": 32273, \"width\": 350, \"height\": 320, \"originalName\": \"field06.jpg\"}', 2023, 'A', 8, 1, '2023-12-27 06:22:49', '2023-12-27 06:22:49'),
(34, '34f2be95-96ac-4dd7-a151-12bbb6843a35', 'field07.jpg', 'field07_658c101193e89.jpg', 'uploads/2023/12/27/field07_658c101193e89.jpg', 'image/jpeg', '24661', '320', '350', '{\"mime\": \"image/jpeg\", \"name\": \"field07_658c101193e89.jpg\", \"path\": \"uploads/2023/12/27/field07_658c101193e89.jpg\", \"size\": 24661, \"width\": 350, \"height\": 320, \"originalName\": \"field07.jpg\"}', 2023, 'A', 8, 1, '2023-12-27 06:22:49', '2023-12-27 06:22:49'),
(35, 'ec76d26b-300a-4e11-9944-2a2ec28ea07b', 'field08.jpg', 'field08_658c1011ba59c.jpg', 'uploads/2023/12/27/field08_658c1011ba59c.jpg', 'image/jpeg', '26383', '320', '350', '{\"mime\": \"image/jpeg\", \"name\": \"field08_658c1011ba59c.jpg\", \"path\": \"uploads/2023/12/27/field08_658c1011ba59c.jpg\", \"size\": 26383, \"width\": 350, \"height\": 320, \"originalName\": \"field08.jpg\"}', 2023, 'A', 8, 1, '2023-12-27 06:22:49', '2023-12-27 06:22:49'),
(36, '184b1041-a0a2-4602-b9cd-b99e7f0df5dd', 'field03.jpg', 'field03_658c101210ca1.jpg', 'uploads/2023/12/27/field03_658c101210ca1.jpg', 'image/jpeg', '516917', '2731', '4096', '{\"mime\": \"image/jpeg\", \"name\": \"field03_658c101210ca1.jpg\", \"path\": \"uploads/2023/12/27/field03_658c101210ca1.jpg\", \"size\": 516917, \"width\": 4096, \"height\": 2731, \"originalName\": \"field03.jpg\"}', 2023, 'A', 8, 1, '2023-12-27 06:22:50', '2023-12-27 06:22:50'),
(37, '4e44c024-768a-455c-ace9-1013d4e6ba97', '01.svg', '01_658d03a0b9069.svg', 'uploads/2023/12/28/01_658d03a0b9069.svg', 'image/svg+xml', '37966', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"01_658d03a0b9069.svg\", \"path\": \"uploads/2023/12/28/01_658d03a0b9069.svg\", \"size\": 37966, \"width\": null, \"height\": null, \"originalName\": \"01.svg\"}', 2023, 'A', 10, 1, '2023-12-27 23:42:00', '2023-12-27 23:42:00'),
(38, '3d572e57-b1e0-4a42-baf4-5b02893663aa', '02.svg', '02_658d03a1003fe.svg', 'uploads/2023/12/28/02_658d03a1003fe.svg', 'image/svg+xml', '5509', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"02_658d03a1003fe.svg\", \"path\": \"uploads/2023/12/28/02_658d03a1003fe.svg\", \"size\": 5509, \"width\": null, \"height\": null, \"originalName\": \"02.svg\"}', 2023, 'A', 10, 1, '2023-12-27 23:42:01', '2023-12-27 23:42:01'),
(39, 'ede2d817-10c6-4dd1-9d7f-13663fdba5a9', '04.svg', '04_658d03a1202a1.svg', 'uploads/2023/12/28/04_658d03a1202a1.svg', 'image/svg+xml', '42086', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"04_658d03a1202a1.svg\", \"path\": \"uploads/2023/12/28/04_658d03a1202a1.svg\", \"size\": 42086, \"width\": null, \"height\": null, \"originalName\": \"04.svg\"}', 2023, 'A', 10, 1, '2023-12-27 23:42:01', '2023-12-27 23:42:01'),
(40, 'ab7690da-2e5c-44fa-8fcc-6db77b485d76', '03.svg', '03_658d03a13fc0c.svg', 'uploads/2023/12/28/03_658d03a13fc0c.svg', 'image/svg+xml', '131119', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"03_658d03a13fc0c.svg\", \"path\": \"uploads/2023/12/28/03_658d03a13fc0c.svg\", \"size\": 131119, \"width\": null, \"height\": null, \"originalName\": \"03.svg\"}', 2023, 'A', 10, 1, '2023-12-27 23:42:01', '2023-12-27 23:42:01'),
(41, '5d719f1d-6599-4c1b-bd25-0a7fb9878427', 'case.jpg', 'case_658d03bee98aa.jpg', 'uploads/2023/12/28/case_658d03bee98aa.jpg', 'image/jpeg', '214809', '735', '1818', '{\"mime\": \"image/jpeg\", \"name\": \"case_658d03bee98aa.jpg\", \"path\": \"uploads/2023/12/28/case_658d03bee98aa.jpg\", \"size\": 214809, \"width\": 1818, \"height\": 735, \"originalName\": \"case.jpg\"}', 2023, 'A', 10, 1, '2023-12-27 23:42:30', '2023-12-27 23:42:30'),
(42, '219a8c90-60dc-46f9-9a87-d2c0b0b42309', 'sample report.pdf', 'sample-report_658d04a9c8e69.pdf', 'uploads/2023/12/28/sample-report_658d04a9c8e69.pdf', 'application/pdf', '3028', NULL, NULL, '{\"mime\": \"application/pdf\", \"name\": \"sample-report_658d04a9c8e69.pdf\", \"path\": \"uploads/2023/12/28/sample-report_658d04a9c8e69.pdf\", \"size\": 3028, \"width\": null, \"height\": null, \"originalName\": \"sample report.pdf\"}', 2023, 'A', 10, 1, '2023-12-27 23:46:25', '2023-12-27 23:46:25'),
(43, '837cab17-57be-4c35-a063-0009c7622fff', 'company.jpg', 'company_658d83a0da1dd.jpg', 'uploads/2023/12/28/company_658d83a0da1dd.jpg', 'image/jpeg', '111452', '700', '1511', '{\"mime\": \"image/jpeg\", \"name\": \"company_658d83a0da1dd.jpg\", \"path\": \"uploads/2023/12/28/company_658d83a0da1dd.jpg\", \"size\": 111452, \"width\": 1511, \"height\": 700, \"originalName\": \"company.jpg\"}', 2023, 'A', 12, 1, '2023-12-28 08:48:09', '2023-12-28 08:48:09'),
(44, '227e1fa5-240f-4249-bbd4-a762f29ed03f', 'mission.jpg', 'mission_658d841d71ca6.jpg', 'uploads/2023/12/28/mission_658d841d71ca6.jpg', 'image/jpeg', '94405', '591', '1380', '{\"mime\": \"image/jpeg\", \"name\": \"mission_658d841d71ca6.jpg\", \"path\": \"uploads/2023/12/28/mission_658d841d71ca6.jpg\", \"size\": 94405, \"width\": 1380, \"height\": 591, \"originalName\": \"mission.jpg\"}', 2023, 'A', 12, 1, '2023-12-28 08:50:13', '2023-12-28 08:50:13'),
(45, 'fa97a6a7-ee16-463c-8194-e6be55a64fc5', 'vission.jpg', 'vission_658d841d90c72.jpg', 'uploads/2023/12/28/vission_658d841d90c72.jpg', 'image/jpeg', '33317', '304', '626', '{\"mime\": \"image/jpeg\", \"name\": \"vission_658d841d90c72.jpg\", \"path\": \"uploads/2023/12/28/vission_658d841d90c72.jpg\", \"size\": 33317, \"width\": 626, \"height\": 304, \"originalName\": \"vission.jpg\"}', 2023, 'A', 12, 1, '2023-12-28 08:50:13', '2023-12-28 08:50:13'),
(46, 'c8951554-d935-4726-b6a6-2838808a87e8', 'milestone.jpg', 'milestone_658d86172ab34.jpg', 'uploads/2023/12/28/milestone_658d86172ab34.jpg', 'image/jpeg', '159265', '350', '1491', '{\"mime\": \"image/jpeg\", \"name\": \"milestone_658d86172ab34.jpg\", \"path\": \"uploads/2023/12/28/milestone_658d86172ab34.jpg\", \"size\": 159265, \"width\": 1491, \"height\": 350, \"originalName\": \"milestone.jpg\"}', 2023, 'A', 12, 1, '2023-12-28 08:58:39', '2023-12-28 08:58:39'),
(47, 'a00b52b0-8b09-4185-b8b2-e7d0056ad3e1', 'elizabeth-row.jpg', 'elizabeth-row_658f10b8000e7.jpg', 'uploads/2023/12/29/elizabeth-row_658f10b8000e7.jpg', 'image/jpeg', '9458', '320', '320', '{\"mime\": \"image/jpeg\", \"name\": \"elizabeth-row_658f10b8000e7.jpg\", \"path\": \"uploads/2023/12/29/elizabeth-row_658f10b8000e7.jpg\", \"size\": 9458, \"width\": 320, \"height\": 320, \"originalName\": \"elizabeth-row.jpg\"}', 2023, 'A', 14, 1, '2023-12-29 13:02:24', '2023-12-29 13:02:24'),
(48, 'acee37b0-2af9-427f-b969-0b7b08c619b7', 'news_Image.jpg', 'news-image_6593ebbd7fe61.jpg', 'uploads/2024/01/02/news-image_6593ebbd7fe61.jpg', 'image/jpeg', '112918', '532', '1137', '{\"mime\": \"image/jpeg\", \"name\": \"news-image_6593ebbd7fe61.jpg\", \"path\": \"uploads/2024/01/02/news-image_6593ebbd7fe61.jpg\", \"size\": 112918, \"width\": 1137, \"height\": 532, \"originalName\": \"news_Image.jpg\"}', 2024, 'A', 4, 1, '2024-01-02 05:25:57', '2024-01-02 05:25:57'),
(49, '884ac643-9b06-4952-ac6c-fba7033b64e9', 'SwipperOne.jpg', 'swipperone_6593ebbdb94ae.jpg', 'uploads/2024/01/02/swipperone_6593ebbdb94ae.jpg', 'image/jpeg', '26299', '219', '358', '{\"mime\": \"image/jpeg\", \"name\": \"swipperone_6593ebbdb94ae.jpg\", \"path\": \"uploads/2024/01/02/swipperone_6593ebbdb94ae.jpg\", \"size\": 26299, \"width\": 358, \"height\": 219, \"originalName\": \"SwipperOne.jpg\"}', 2024, 'A', 4, 1, '2024-01-02 05:25:57', '2024-01-02 05:25:57'),
(50, '50aa9564-c136-457c-acb2-98baa6f6bd05', 'subImage.jpg', 'subimage_6593ebbdcc793.jpg', 'uploads/2024/01/02/subimage_6593ebbdcc793.jpg', 'image/jpeg', '68480', '458', '752', '{\"mime\": \"image/jpeg\", \"name\": \"subimage_6593ebbdcc793.jpg\", \"path\": \"uploads/2024/01/02/subimage_6593ebbdcc793.jpg\", \"size\": 68480, \"width\": 752, \"height\": 458, \"originalName\": \"subImage.jpg\"}', 2024, 'A', 4, 1, '2024-01-02 05:25:57', '2024-01-02 05:25:57'),
(51, 'd48bbf39-92eb-4794-a41d-2bf0c390e617', 'SwipperTwo.jpg', 'swippertwo_6593ebbdea08b.jpg', 'uploads/2024/01/02/swippertwo_6593ebbdea08b.jpg', 'image/jpeg', '27576', '218', '358', '{\"mime\": \"image/jpeg\", \"name\": \"swippertwo_6593ebbdea08b.jpg\", \"path\": \"uploads/2024/01/02/swippertwo_6593ebbdea08b.jpg\", \"size\": 27576, \"width\": 358, \"height\": 218, \"originalName\": \"SwipperTwo.jpg\"}', 2024, 'A', 4, 1, '2024-01-02 05:25:57', '2024-01-02 05:25:57'),
(52, 'ab656d1c-8aaa-4700-9e53-8a4e8cc6f6a5', 'subimageOne.jpg', 'subimageone_6593ebbe0b40f.jpg', 'uploads/2024/01/02/subimageone_6593ebbe0b40f.jpg', 'image/jpeg', '79301', '458', '752', '{\"mime\": \"image/jpeg\", \"name\": \"subimageone_6593ebbe0b40f.jpg\", \"path\": \"uploads/2024/01/02/subimageone_6593ebbe0b40f.jpg\", \"size\": 79301, \"width\": 752, \"height\": 458, \"originalName\": \"subimageOne.jpg\"}', 2024, 'A', 4, 1, '2024-01-02 05:25:58', '2024-01-02 05:25:58'),
(53, '61032248-4b38-4864-97da-274a749d7d9d', 'news.jpg', 'news_659504221c79c.jpg', 'uploads/2024/01/03/news_659504221c79c.jpg', 'image/jpeg', '462915', '595', '1920', '{\"mime\": \"image/jpeg\", \"name\": \"news_659504221c79c.jpg\", \"path\": \"uploads/2024/01/03/news_659504221c79c.jpg\", \"size\": 462915, \"width\": 1920, \"height\": 595, \"originalName\": \"news.jpg\"}', 2024, 'A', 4, 1, '2024-01-03 01:22:18', '2024-01-03 01:22:18'),
(54, '94518b0b-d3e1-4407-87b3-095345d346c2', 'riaas.png', 'riaas_659b90a77a772.png', 'uploads/2024/01/08/riaas_659b90a77a772.png', 'image/png', '245841', '487', '603', '{\"mime\": \"image/png\", \"name\": \"riaas_659b90a77a772.png\", \"path\": \"uploads/2024/01/08/riaas_659b90a77a772.png\", \"size\": 245841, \"width\": 603, \"height\": 487, \"originalName\": \"riaas.png\"}', 2024, 'A', 6, 1, '2024-01-08 00:35:27', '2024-01-08 00:35:27'),
(59, 'ebcfdea9-76b0-40e4-8d4d-3b5173371fca', 'ADAS.svg', 'adas_659b96bcaa495.svg', 'uploads/2024/01/08/adas_659b96bcaa495.svg', 'image/svg+xml', '4878', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"adas_659b96bcaa495.svg\", \"path\": \"uploads/2024/01/08/adas_659b96bcaa495.svg\", \"size\": 4878, \"width\": null, \"height\": null, \"originalName\": \"ADAS.svg\"}', 2024, 'A', 6, 1, '2024-01-08 01:01:24', '2024-01-08 01:01:24'),
(60, '47669c08-ee83-4b69-a5bc-83eab2fe1102', 'Day and Night Detection.svg', 'day-and-night-detection_659b96bcce901.svg', 'uploads/2024/01/08/day-and-night-detection_659b96bcce901.svg', 'image/svg+xml', '9024', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"day-and-night-detection_659b96bcce901.svg\", \"path\": \"uploads/2024/01/08/day-and-night-detection_659b96bcce901.svg\", \"size\": 9024, \"width\": null, \"height\": null, \"originalName\": \"Day and Night Detection.svg\"}', 2024, 'A', 6, 1, '2024-01-08 01:01:24', '2024-01-08 01:01:24'),
(61, '52420645-9ff6-470e-a05f-bdf393c7cb4b', 'LTE.svg', 'lte_659b96bce9c2b.svg', 'uploads/2024/01/08/lte_659b96bce9c2b.svg', 'image/svg+xml', '25839', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"lte_659b96bce9c2b.svg\", \"path\": \"uploads/2024/01/08/lte_659b96bce9c2b.svg\", \"size\": 25839, \"width\": null, \"height\": null, \"originalName\": \"LTE.svg\"}', 2024, 'A', 6, 1, '2024-01-08 01:01:24', '2024-01-08 01:01:24'),
(62, 'd94f2035-6112-4f22-b750-1be4e2557f1c', 'In Vehicle Mounting.svg', 'in-vehicle-mounting_659b96bd0ff37.svg', 'uploads/2024/01/08/in-vehicle-mounting_659b96bd0ff37.svg', 'image/svg+xml', '55452', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"in-vehicle-mounting_659b96bd0ff37.svg\", \"path\": \"uploads/2024/01/08/in-vehicle-mounting_659b96bd0ff37.svg\", \"size\": 55452, \"width\": null, \"height\": null, \"originalName\": \"In Vehicle Mounting.svg\"}', 2024, 'A', 6, 1, '2024-01-08 01:01:25', '2024-01-08 01:01:25'),
(63, '04afe43a-f0c5-4f28-beaf-f65d4ac795e5', 'More than 4 lane.svg', 'more-than-4-lane_659b96bd3066e.svg', 'uploads/2024/01/08/more-than-4-lane_659b96bd3066e.svg', 'image/svg+xml', '49496', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"more-than-4-lane_659b96bd3066e.svg\", \"path\": \"uploads/2024/01/08/more-than-4-lane_659b96bd3066e.svg\", \"size\": 49496, \"width\": null, \"height\": null, \"originalName\": \"More than 4 lane.svg\"}', 2024, 'A', 6, 1, '2024-01-08 01:01:25', '2024-01-08 01:01:25'),
(64, '85efb24b-5342-4ece-89ef-7e7dff37c7e6', 'On-Device AI.svg', 'on-device-ai_659b96bd4d938.svg', 'uploads/2024/01/08/on-device-ai_659b96bd4d938.svg', 'image/svg+xml', '51913', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"on-device-ai_659b96bd4d938.svg\", \"path\": \"uploads/2024/01/08/on-device-ai_659b96bd4d938.svg\", \"size\": 51913, \"width\": null, \"height\": null, \"originalName\": \"On-Device AI.svg\"}', 2024, 'A', 6, 1, '2024-01-08 01:01:25', '2024-01-08 01:01:25'),
(65, '391febdb-e581-4b8e-881c-f9cb072de968', 'BlogImage.jpg', 'blogimage_659fa1c851a06.jpg', 'uploads/2024/01/11/blogimage_659fa1c851a06.jpg', 'image/jpeg', '56970', '524', '885', '{\"mime\": \"image/jpeg\", \"name\": \"blogimage_659fa1c851a06.jpg\", \"path\": \"uploads/2024/01/11/blogimage_659fa1c851a06.jpg\", \"size\": 56970, \"width\": 885, \"height\": 524, \"originalName\": \"BlogImage.jpg\"}', 2024, 'A', 15, 1, '2024-01-11 02:37:36', '2024-01-11 02:37:36'),
(66, '1151704c-97fb-42a4-8ea7-fc3bc8558158', 'L-Article-2.jpg', 'l-article-2_659fa1c8a447a.jpg', 'uploads/2024/01/11/l-article-2_659fa1c8a447a.jpg', 'image/jpeg', '93720', '262', '429', '{\"mime\": \"image/jpeg\", \"name\": \"l-article-2_659fa1c8a447a.jpg\", \"path\": \"uploads/2024/01/11/l-article-2_659fa1c8a447a.jpg\", \"size\": 93720, \"width\": 429, \"height\": 262, \"originalName\": \"L-Article-2.jpg\"}', 2024, 'A', 15, 1, '2024-01-11 02:37:36', '2024-01-11 02:37:36'),
(67, '12ca9e48-fb61-455d-89f2-852615580423', 'L-Article-1.jpg', 'l-article-1_659fa1c8d09d4.jpg', 'uploads/2024/01/11/l-article-1_659fa1c8d09d4.jpg', 'image/jpeg', '173291', '262', '429', '{\"mime\": \"image/jpeg\", \"name\": \"l-article-1_659fa1c8d09d4.jpg\", \"path\": \"uploads/2024/01/11/l-article-1_659fa1c8d09d4.jpg\", \"size\": 173291, \"width\": 429, \"height\": 262, \"originalName\": \"L-Article-1.jpg\"}', 2024, 'A', 15, 1, '2024-01-11 02:37:36', '2024-01-11 02:37:36'),
(68, '512d2a94-4b06-43b1-b49f-8a1d68349b04', 'L-Article-4.jpg', 'l-article-4_659fa1c9092a5.jpg', 'uploads/2024/01/11/l-article-4_659fa1c9092a5.jpg', 'image/jpeg', '148867', '262', '429', '{\"mime\": \"image/jpeg\", \"name\": \"l-article-4_659fa1c9092a5.jpg\", \"path\": \"uploads/2024/01/11/l-article-4_659fa1c9092a5.jpg\", \"size\": 148867, \"width\": 429, \"height\": 262, \"originalName\": \"L-Article-4.jpg\"}', 2024, 'A', 15, 1, '2024-01-11 02:37:37', '2024-01-11 02:37:37'),
(69, '5f0f362e-983c-415a-ad1d-99b2c0f1f200', 'L-Article-3.jpg', 'l-article-3_659fa1c93b782.jpg', 'uploads/2024/01/11/l-article-3_659fa1c93b782.jpg', 'image/jpeg', '184057', '262', '429', '{\"mime\": \"image/jpeg\", \"name\": \"l-article-3_659fa1c93b782.jpg\", \"path\": \"uploads/2024/01/11/l-article-3_659fa1c93b782.jpg\", \"size\": 184057, \"width\": 429, \"height\": 262, \"originalName\": \"L-Article-3.jpg\"}', 2024, 'A', 15, 1, '2024-01-11 02:37:37', '2024-01-11 02:37:37'),
(70, '7b56a900-81c6-4555-87d2-f6bd9e67c6d6', 'BlogDetail.jpg', 'blogdetail_659fa1c96a0f4.jpg', 'uploads/2024/01/11/blogdetail_659fa1c96a0f4.jpg', 'image/jpeg', '313234', '458', '749', '{\"mime\": \"image/jpeg\", \"name\": \"blogdetail_659fa1c96a0f4.jpg\", \"path\": \"uploads/2024/01/11/blogdetail_659fa1c96a0f4.jpg\", \"size\": 313234, \"width\": 749, \"height\": 458, \"originalName\": \"BlogDetail.jpg\"}', 2024, 'A', 15, 1, '2024-01-11 02:37:37', '2024-01-11 02:37:37'),
(71, '1f94afb6-8e19-4f4c-9a04-5e44448571ce', 'LT-1.jpg', 'lt-1_659fa1c993efb.jpg', 'uploads/2024/01/11/lt-1_659fa1c993efb.jpg', 'image/jpeg', '128107', '261', '427', '{\"mime\": \"image/jpeg\", \"name\": \"lt-1_659fa1c993efb.jpg\", \"path\": \"uploads/2024/01/11/lt-1_659fa1c993efb.jpg\", \"size\": 128107, \"width\": 427, \"height\": 261, \"originalName\": \"LT-1.jpg\"}', 2024, 'A', 15, 1, '2024-01-11 02:37:37', '2024-01-11 02:37:37'),
(72, '85d2b6ef-30b5-407d-841e-780aefd338f9', 'LT-2.jpg', 'lt-2_659fa1c9bfc6a.jpg', 'uploads/2024/01/11/lt-2_659fa1c9bfc6a.jpg', 'image/jpeg', '159645', '261', '428', '{\"mime\": \"image/jpeg\", \"name\": \"lt-2_659fa1c9bfc6a.jpg\", \"path\": \"uploads/2024/01/11/lt-2_659fa1c9bfc6a.jpg\", \"size\": 159645, \"width\": 428, \"height\": 261, \"originalName\": \"LT-2.jpg\"}', 2024, 'A', 15, 1, '2024-01-11 02:37:37', '2024-01-11 02:37:37'),
(73, '7c3c58c6-22e2-428e-9796-e6246417aac7', 'LT-3.jpg', 'lt-3_659fa1c9ede5b.jpg', 'uploads/2024/01/11/lt-3_659fa1c9ede5b.jpg', 'image/jpeg', '124217', '576', '1024', '{\"mime\": \"image/jpeg\", \"name\": \"lt-3_659fa1c9ede5b.jpg\", \"path\": \"uploads/2024/01/11/lt-3_659fa1c9ede5b.jpg\", \"size\": 124217, \"width\": 1024, \"height\": 576, \"originalName\": \"LT-3.jpg\"}', 2024, 'A', 15, 1, '2024-01-11 02:37:37', '2024-01-11 02:37:37'),
(74, '3f09299c-7f52-4e12-9297-a2e0a1abedd5', 'main-blog.jpg', 'main-blog_659fa1d866652.jpg', 'uploads/2024/01/11/main-blog_659fa1d866652.jpg', 'image/jpeg', '159433', '682', '1024', '{\"mime\": \"image/jpeg\", \"name\": \"main-blog_659fa1d866652.jpg\", \"path\": \"uploads/2024/01/11/main-blog_659fa1d866652.jpg\", \"size\": 159433, \"width\": 1024, \"height\": 682, \"originalName\": \"main-blog.jpg\"}', 2024, 'A', 15, 1, '2024-01-11 02:37:52', '2024-01-11 02:37:52'),
(75, 'fc630eaa-04b4-414d-b9ac-76cede0cb7bc', 'trend-1.jpg', 'trend-1_659fa1d8901c4.jpg', 'uploads/2024/01/11/trend-1_659fa1d8901c4.jpg', 'image/jpeg', '4520', '84', '132', '{\"mime\": \"image/jpeg\", \"name\": \"trend-1_659fa1d8901c4.jpg\", \"path\": \"uploads/2024/01/11/trend-1_659fa1d8901c4.jpg\", \"size\": 4520, \"width\": 132, \"height\": 84, \"originalName\": \"trend-1.jpg\"}', 2024, 'A', 15, 1, '2024-01-11 02:37:52', '2024-01-11 02:37:52'),
(76, '8ad2e96f-34cd-4aba-8734-ccddfb06fbbe', 'trend-2.jpg', 'trend-2_659fa1d8bb07b.jpg', 'uploads/2024/01/11/trend-2_659fa1d8bb07b.jpg', 'image/jpeg', '4100', '84', '132', '{\"mime\": \"image/jpeg\", \"name\": \"trend-2_659fa1d8bb07b.jpg\", \"path\": \"uploads/2024/01/11/trend-2_659fa1d8bb07b.jpg\", \"size\": 4100, \"width\": 132, \"height\": 84, \"originalName\": \"trend-2.jpg\"}', 2024, 'A', 15, 1, '2024-01-11 02:37:52', '2024-01-11 02:37:52'),
(77, '43fe4fde-166a-48e5-825c-5280d18306d2', 'trend-3.jpg', 'trend-3_659fa1d8e4797.jpg', 'uploads/2024/01/11/trend-3_659fa1d8e4797.jpg', 'image/jpeg', '5125', '84', '132', '{\"mime\": \"image/jpeg\", \"name\": \"trend-3_659fa1d8e4797.jpg\", \"path\": \"uploads/2024/01/11/trend-3_659fa1d8e4797.jpg\", \"size\": 5125, \"width\": 132, \"height\": 84, \"originalName\": \"trend-3.jpg\"}', 2024, 'A', 15, 1, '2024-01-11 02:37:52', '2024-01-11 02:37:52'),
(78, '4f446f21-f4c6-43b1-ba20-c706959c1558', 'trend-4.jpg', 'trend-4_659fa1d91bda4.jpg', 'uploads/2024/01/11/trend-4_659fa1d91bda4.jpg', 'image/jpeg', '4894', '84', '132', '{\"mime\": \"image/jpeg\", \"name\": \"trend-4_659fa1d91bda4.jpg\", \"path\": \"uploads/2024/01/11/trend-4_659fa1d91bda4.jpg\", \"size\": 4894, \"width\": 132, \"height\": 84, \"originalName\": \"trend-4.jpg\"}', 2024, 'A', 15, 1, '2024-01-11 02:37:53', '2024-01-11 02:37:53'),
(79, '299e19d5-31c9-42d7-9f22-3b71d1ee8aee', 'bannerImg.jpg', 'bannerimg_659fa1e998245.jpg', 'uploads/2024/01/11/bannerimg_659fa1e998245.jpg', 'image/jpeg', '895116', '700', '1512', '{\"mime\": \"image/jpeg\", \"name\": \"bannerimg_659fa1e998245.jpg\", \"path\": \"uploads/2024/01/11/bannerimg_659fa1e998245.jpg\", \"size\": 895116, \"width\": 1512, \"height\": 700, \"originalName\": \"bannerImg.jpg\"}', 2024, 'A', 16, 1, '2024-01-11 02:38:09', '2024-01-11 02:38:09'),
(80, 'f41702db-a6d5-4442-be0f-4cba37d8192d', 'ai-01-blue.svg', 'ai-01-blue_65b015b402af1.svg', 'uploads/2024/01/23/ai-01-blue_65b015b402af1.svg', 'image/svg+xml', '4639', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"ai-01-blue_65b015b402af1.svg\", \"path\": \"uploads/2024/01/23/ai-01-blue_65b015b402af1.svg\", \"size\": 4639, \"width\": null, \"height\": null, \"originalName\": \"ai-01-blue.svg\"}', 2024, 'A', 6, 1, '2024-01-23 14:08:28', '2024-01-23 14:08:28'),
(81, '769702f5-0152-45bc-a159-3993eaea429f', 'ai-01-white.svg', 'ai-01-white_65b015b447bf3.svg', 'uploads/2024/01/23/ai-01-white_65b015b447bf3.svg', 'image/svg+xml', '4621', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"ai-01-white_65b015b447bf3.svg\", \"path\": \"uploads/2024/01/23/ai-01-white_65b015b447bf3.svg\", \"size\": 4621, \"width\": null, \"height\": null, \"originalName\": \"ai-01-white.svg\"}', 2024, 'A', 6, 1, '2024-01-23 14:08:28', '2024-01-23 14:08:28'),
(82, '790250f5-203e-421b-8ace-d96c170ad51b', 'ai-02-blue.svg', 'ai-02-blue_65b015b45bff6.svg', 'uploads/2024/01/23/ai-02-blue_65b015b45bff6.svg', 'image/svg+xml', '1325', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"ai-02-blue_65b015b45bff6.svg\", \"path\": \"uploads/2024/01/23/ai-02-blue_65b015b45bff6.svg\", \"size\": 1325, \"width\": null, \"height\": null, \"originalName\": \"ai-02-blue.svg\"}', 2024, 'A', 6, 1, '2024-01-23 14:08:28', '2024-01-23 14:08:28'),
(83, '1ad79a84-539b-48ad-9919-49729edb1840', 'ai-02-white.svg', 'ai-02-white_65b015b472db4.svg', 'uploads/2024/01/23/ai-02-white_65b015b472db4.svg', 'image/svg+xml', '1319', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"ai-02-white_65b015b472db4.svg\", \"path\": \"uploads/2024/01/23/ai-02-white_65b015b472db4.svg\", \"size\": 1319, \"width\": null, \"height\": null, \"originalName\": \"ai-02-white.svg\"}', 2024, 'A', 6, 1, '2024-01-23 14:08:28', '2024-01-23 14:08:28'),
(84, '143340ac-6aa5-4a98-848b-33d1839cba71', 'big-01-blue.svg', 'big-01-blue_65b015b48d6b2.svg', 'uploads/2024/01/23/big-01-blue_65b015b48d6b2.svg', 'image/svg+xml', '20420', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"big-01-blue_65b015b48d6b2.svg\", \"path\": \"uploads/2024/01/23/big-01-blue_65b015b48d6b2.svg\", \"size\": 20420, \"width\": null, \"height\": null, \"originalName\": \"big-01-blue.svg\"}', 2024, 'A', 6, 1, '2024-01-23 14:08:28', '2024-01-23 14:08:28'),
(85, 'f9f48b4f-9cd2-4cea-983e-eb4bb2e2713c', 'big-01-white.svg', 'big-01-white_65b015b4a8c54.svg', 'uploads/2024/01/23/big-01-white_65b015b4a8c54.svg', 'image/svg+xml', '20414', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"big-01-white_65b015b4a8c54.svg\", \"path\": \"uploads/2024/01/23/big-01-white_65b015b4a8c54.svg\", \"size\": 20414, \"width\": null, \"height\": null, \"originalName\": \"big-01-white.svg\"}', 2024, 'A', 6, 1, '2024-01-23 14:08:28', '2024-01-23 14:08:28'),
(86, 'af1f3649-5c55-421d-9c65-1cd59941f15c', 'big-02-blue.svg', 'big-02-blue_65b015b4c363c.svg', 'uploads/2024/01/23/big-02-blue_65b015b4c363c.svg', 'image/svg+xml', '8810', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"big-02-blue_65b015b4c363c.svg\", \"path\": \"uploads/2024/01/23/big-02-blue_65b015b4c363c.svg\", \"size\": 8810, \"width\": null, \"height\": null, \"originalName\": \"big-02-blue.svg\"}', 2024, 'A', 6, 1, '2024-01-23 14:08:28', '2024-01-23 14:08:28'),
(87, '25900e2d-26a1-411c-81d0-83cacb9d2dd1', 'big-02-white.svg', 'big-02-white_65b015b4d6ed1.svg', 'uploads/2024/01/23/big-02-white_65b015b4d6ed1.svg', 'image/svg+xml', '8807', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"big-02-white_65b015b4d6ed1.svg\", \"path\": \"uploads/2024/01/23/big-02-white_65b015b4d6ed1.svg\", \"size\": 8807, \"width\": null, \"height\": null, \"originalName\": \"big-02-white.svg\"}', 2024, 'A', 6, 1, '2024-01-23 14:08:28', '2024-01-23 14:08:28'),
(88, 'f61ad251-9ebb-4b96-9ad7-58369b46a7a7', 'service-blue.svg', 'service-blue_65b015b4ec4dd.svg', 'uploads/2024/01/23/service-blue_65b015b4ec4dd.svg', 'image/svg+xml', '6699', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"service-blue_65b015b4ec4dd.svg\", \"path\": \"uploads/2024/01/23/service-blue_65b015b4ec4dd.svg\", \"size\": 6699, \"width\": null, \"height\": null, \"originalName\": \"service-blue.svg\"}', 2024, 'A', 6, 1, '2024-01-23 14:08:28', '2024-01-23 14:08:28'),
(89, '3d432ae1-0f1a-4ef4-8449-0b10740391ff', 'service-white.svg', 'service-white_65b015b50d720.svg', 'uploads/2024/01/23/service-white_65b015b50d720.svg', 'image/svg+xml', '6663', NULL, NULL, '{\"mime\": \"image/svg+xml\", \"name\": \"service-white_65b015b50d720.svg\", \"path\": \"uploads/2024/01/23/service-white_65b015b50d720.svg\", \"size\": 6663, \"width\": null, \"height\": null, \"originalName\": \"service-white.svg\"}', 2024, 'A', 6, 1, '2024-01-23 14:08:29', '2024-01-23 14:08:29'),
(90, '8c7319a2-7c3d-4305-9d1c-8ba3d4df2f6b', 'Jeong Mandella.jpg', 'jeong-mandella_65b7365c79caa.jpg', 'uploads/2024/01/29/jeong-mandella_65b7365c79caa.jpg', 'image/jpeg', '37689', '598', '641', '{\"originalName\":\"Jeong Mandella.jpg\",\"mime\":\"image\\/jpeg\",\"size\":37689,\"height\":598,\"width\":641,\"path\":\"uploads\\/2024\\/01\\/29\\/jeong-mandella_65b7365c79caa.jpg\",\"name\":\"jeong-mandella_65b7365c79caa.jpg\"}', 2024, 'A', 14, 1, '2024-01-29 05:23:40', '2024-01-29 05:23:40'),
(91, 'ad2c5be2-1c0b-41da-bcd2-f3e8f79b8225', 'CFO.jpg', 'cfo_65b73669cd046.jpg', 'uploads/2024/01/29/cfo_65b73669cd046.jpg', 'image/jpeg', '30893', '598', '641', '{\"originalName\":\"CFO.jpg\",\"mime\":\"image\\/jpeg\",\"size\":30893,\"height\":598,\"width\":641,\"path\":\"uploads\\/2024\\/01\\/29\\/cfo_65b73669cd046.jpg\",\"name\":\"cfo_65b73669cd046.jpg\"}', 2024, 'A', 14, 1, '2024-01-29 05:23:53', '2024-01-29 05:23:53'),
(92, '663dbb2c-1902-44d3-9723-a01cb4536128', 'CTO.jpg', 'cto_65b7366a18629.jpg', 'uploads/2024/01/29/cto_65b7366a18629.jpg', 'image/jpeg', '32534', '598', '641', '{\"originalName\":\"CTO.jpg\",\"mime\":\"image\\/jpeg\",\"size\":32534,\"height\":598,\"width\":641,\"path\":\"uploads\\/2024\\/01\\/29\\/cto_65b7366a18629.jpg\",\"name\":\"cto_65b7366a18629.jpg\"}', 2024, 'A', 14, 1, '2024-01-29 05:23:54', '2024-01-29 05:23:54'),
(93, 'e9c7a7e0-af85-4113-a796-14726e6a46e2', '1.6 Completed_Case Study_Gwangju City.pdf', '16-completed-case-study-gwangju-city_65b739e84fa85.pdf', 'uploads/2024/01/29/16-completed-case-study-gwangju-city_65b739e84fa85.pdf', 'application/pdf', '440189', NULL, NULL, '{\"originalName\":\"1.6 Completed_Case Study_Gwangju City.pdf\",\"mime\":\"application\\/pdf\",\"size\":440189,\"height\":null,\"width\":null,\"path\":\"uploads\\/2024\\/01\\/29\\/16-completed-case-study-gwangju-city_65b739e84fa85.pdf\",\"name\":\"16-completed-case-study-gwangju-city_65b739e84fa85.pdf\"}', 2024, 'A', 10, 1, '2024-01-29 05:38:48', '2024-01-29 05:38:48'),
(94, '0b936ca7-e3ea-4329-895e-5c8dbea3c49e', 'gwangju.png', 'gwangju_65b73b8c062d7.png', 'uploads/2024/01/29/gwangju_65b73b8c062d7.png', 'image/png', '180797', '210', '475', '{\"originalName\":\"gwangju.png\",\"mime\":\"image\\/png\",\"size\":180797,\"height\":210,\"width\":475,\"path\":\"uploads\\/2024\\/01\\/29\\/gwangju_65b73b8c062d7.png\",\"name\":\"gwangju_65b73b8c062d7.png\"}', 2024, 'A', NULL, 1, '2024-01-29 05:45:48', '2024-01-29 05:45:48'),
(95, '09541dfa-2faf-4667-8b40-0e1e2b9ad76f', '1.6 Completed_Case Study_Gimcheon City.pdf', '16-completed-case-study-gimcheon-city_65b73f2aa985d.pdf', 'uploads/2024/01/29/16-completed-case-study-gimcheon-city_65b73f2aa985d.pdf', 'application/pdf', '643585', NULL, NULL, '{\"originalName\":\"1.6 Completed_Case Study_Gimcheon City.pdf\",\"mime\":\"application\\/pdf\",\"size\":643585,\"height\":null,\"width\":null,\"path\":\"uploads\\/2024\\/01\\/29\\/16-completed-case-study-gimcheon-city_65b73f2aa985d.pdf\",\"name\":\"16-completed-case-study-gimcheon-city_65b73f2aa985d.pdf\"}', 2024, 'A', NULL, 1, '2024-01-29 06:01:14', '2024-01-29 06:01:14'),
(96, '84696266-65ff-4126-8694-cacb914c4818', '1.6 Completed_Case Study_Hwaseong City.pdf', '16-completed-case-study-hwaseong-city_65b73f64361db.pdf', 'uploads/2024/01/29/16-completed-case-study-hwaseong-city_65b73f64361db.pdf', 'application/pdf', '298086', NULL, NULL, '{\"originalName\":\"1.6 Completed_Case Study_Hwaseong City.pdf\",\"mime\":\"application\\/pdf\",\"size\":298086,\"height\":null,\"width\":null,\"path\":\"uploads\\/2024\\/01\\/29\\/16-completed-case-study-hwaseong-city_65b73f64361db.pdf\",\"name\":\"16-completed-case-study-hwaseong-city_65b73f64361db.pdf\"}', 2024, 'A', NULL, 1, '2024-01-29 06:02:12', '2024-01-29 06:02:12'),
(97, 'b6c07335-5a1f-488f-8efb-d3a305de9b7b', '1.6 Case Study_Seoul_final.pdf', '16-case-study-seoul-final_65b73fc2adb7a.pdf', 'uploads/2024/01/29/16-case-study-seoul-final_65b73fc2adb7a.pdf', 'application/pdf', '366812', NULL, NULL, '{\"originalName\":\"1.6 Case Study_Seoul_final.pdf\",\"mime\":\"application\\/pdf\",\"size\":366812,\"height\":null,\"width\":null,\"path\":\"uploads\\/2024\\/01\\/29\\/16-case-study-seoul-final_65b73fc2adb7a.pdf\",\"name\":\"16-case-study-seoul-final_65b73fc2adb7a.pdf\"}', 2024, 'A', NULL, 1, '2024-01-29 06:03:46', '2024-01-29 06:03:46'),
(98, '4968c6e1-6267-4995-bd99-c659392cef21', '1.6 Completed_Case Study_Korea Expressway Corporation.pdf', '16-completed-case-study-korea-expressway-corporation_65b7401ceae07.pdf', 'uploads/2024/01/29/16-completed-case-study-korea-expressway-corporation_65b7401ceae07.pdf', 'application/pdf', '420453', NULL, NULL, '{\"originalName\":\"1.6 Completed_Case Study_Korea Expressway Corporation.pdf\",\"mime\":\"application\\/pdf\",\"size\":420453,\"height\":null,\"width\":null,\"path\":\"uploads\\/2024\\/01\\/29\\/16-completed-case-study-korea-expressway-corporation_65b7401ceae07.pdf\",\"name\":\"16-completed-case-study-korea-expressway-corporation_65b7401ceae07.pdf\"}', 2024, 'A', NULL, 1, '2024-01-29 06:05:16', '2024-01-29 06:05:16'),
(99, 'ce0795ae-057d-491c-80d9-1becf7a6f953', '1.6 Case Study_SK E&S.pdf', '16-case-study-sk-es_65b7406318052.pdf', 'uploads/2024/01/29/16-case-study-sk-es_65b7406318052.pdf', 'application/pdf', '194561', NULL, NULL, '{\"originalName\":\"1.6 Case Study_SK E&S.pdf\",\"mime\":\"application\\/pdf\",\"size\":194561,\"height\":null,\"width\":null,\"path\":\"uploads\\/2024\\/01\\/29\\/16-case-study-sk-es_65b7406318052.pdf\",\"name\":\"16-case-study-sk-es_65b7406318052.pdf\"}', 2024, 'A', NULL, 1, '2024-01-29 06:06:27', '2024-01-29 06:06:27'),
(100, 'f353a9cd-5fce-4ff1-a4b0-8b351797ce82', 'hwaseong.png', 'hwaseong_65b7439651130.png', 'uploads/2024/01/29/hwaseong_65b7439651130.png', 'image/png', '1390242', '718', '1702', '{\"originalName\":\"hwaseong.png\",\"mime\":\"image\\/png\",\"size\":1390242,\"height\":718,\"width\":1702,\"path\":\"uploads\\/2024\\/01\\/29\\/hwaseong_65b7439651130.png\",\"name\":\"hwaseong_65b7439651130.png\"}', 2024, 'A', 10, 1, '2024-01-29 06:20:06', '2024-01-29 06:20:06'),
(101, 'a31fa8f6-6e3b-4b25-9771-9b4e180c2d23', 'Screenshot 2024-01-29 153317.png', 'screenshot-2024-01-29-153317_65b747128a011.png', 'uploads/2024/01/29/screenshot-2024-01-29-153317_65b747128a011.png', 'image/png', '1708727', '726', '1716', '{\"originalName\":\"Screenshot 2024-01-29 153317.png\",\"mime\":\"image\\/png\",\"size\":1708727,\"height\":726,\"width\":1716,\"path\":\"uploads\\/2024\\/01\\/29\\/screenshot-2024-01-29-153317_65b747128a011.png\",\"name\":\"screenshot-2024-01-29-153317_65b747128a011.png\"}', 2024, 'A', 10, 1, '2024-01-29 06:34:58', '2024-01-29 06:34:58'),
(102, 'cfc840ba-c951-4430-adb1-0fc245f39ee5', 'Seal_of_Seoul,_South_Korea.svg.png', 'seal-of-seoul-south-koreasvg_65b747bd87eba.png', 'uploads/2024/01/29/seal-of-seoul-south-koreasvg_65b747bd87eba.png', 'image/png', '168465', '1200', '1200', '{\"originalName\":\"Seal_of_Seoul,_South_Korea.svg.png\",\"mime\":\"image\\/png\",\"size\":168465,\"height\":1200,\"width\":1200,\"path\":\"uploads\\/2024\\/01\\/29\\/seal-of-seoul-south-koreasvg_65b747bd87eba.png\",\"name\":\"seal-of-seoul-south-koreasvg_65b747bd87eba.png\"}', 2024, 'A', 10, 1, '2024-01-29 06:37:49', '2024-01-29 06:37:49'),
(103, 'fded32d4-9810-47cc-aeba-d86e24ae8483', 'Seoul.jpg', 'seoul_65b7489320ff4.jpg', 'uploads/2024/01/29/seoul_65b7489320ff4.jpg', 'image/jpeg', '477403', '1280', '1024', '{\"originalName\":\"Seoul.jpg\",\"mime\":\"image\\/jpeg\",\"size\":477403,\"height\":1280,\"width\":1024,\"path\":\"uploads\\/2024\\/01\\/29\\/seoul_65b7489320ff4.jpg\",\"name\":\"seoul_65b7489320ff4.jpg\"}', 2024, 'A', 10, 1, '2024-01-29 06:41:23', '2024-01-29 06:41:23'),
(104, 'c36f90af-4835-4dcd-ba09-ac4a1d488970', 'SK&ES.png', 'skes_65b74aae47c54.png', 'uploads/2024/01/29/skes_65b74aae47c54.png', 'image/png', '1299653', '730', '1716', '{\"originalName\":\"SK&ES.png\",\"mime\":\"image\\/png\",\"size\":1299653,\"height\":730,\"width\":1716,\"path\":\"uploads\\/2024\\/01\\/29\\/skes_65b74aae47c54.png\",\"name\":\"skes_65b74aae47c54.png\"}', 2024, 'A', 10, 1, '2024-01-29 06:50:22', '2024-01-29 06:50:22'),
(105, '62931a35-f38b-4da6-84b9-93677622217c', 'logo_1600_e-2-300x300.png', 'logo-1600-e-2-300x300_65b74b106ad4c.png', 'uploads/2024/01/29/logo-1600-e-2-300x300_65b74b106ad4c.png', 'image/png', '10769', '300', '300', '{\"originalName\":\"logo_1600_e-2-300x300.png\",\"mime\":\"image\\/png\",\"size\":10769,\"height\":300,\"width\":300,\"path\":\"uploads\\/2024\\/01\\/29\\/logo-1600-e-2-300x300_65b74b106ad4c.png\",\"name\":\"logo-1600-e-2-300x300_65b74b106ad4c.png\"}', 2024, 'A', 10, 1, '2024-01-29 06:52:00', '2024-01-29 06:52:00'),
(106, 'ab5541ae-701b-4b29-b9f2-e11c4b4101e3', 'Flag_of_Uijeongbu.svg.png', 'flag-of-uijeongbusvg_65b75bb05f090.png', 'uploads/2024/01/29/flag-of-uijeongbusvg_65b75bb05f090.png', 'image/png', '86317', '1708', '2560', '{\"originalName\":\"Flag_of_Uijeongbu.svg.png\",\"mime\":\"image\\/png\",\"size\":86317,\"height\":1708,\"width\":2560,\"path\":\"uploads\\/2024\\/01\\/29\\/flag-of-uijeongbusvg_65b75bb05f090.png\",\"name\":\"flag-of-uijeongbusvg_65b75bb05f090.png\"}', 2024, 'A', 3, 1, '2024-01-29 08:02:56', '2024-01-29 08:02:56');
INSERT INTO `media_libraries` (`id`, `code`, `name`, `objectKey`, `path`, `type`, `size`, `height`, `width`, `meta`, `year`, `status`, `media_library_group_id`, `admin_id`, `created_at`, `updated_at`) VALUES
(107, '4595d226-96b5-4325-8a14-cf62780314d1', 'City tech tok.png', 'city-tech-tok_65b777755b96c.png', 'uploads/2024/01/29/city-tech-tok_65b777755b96c.png', 'image/png', '1285214', '721', '969', '{\"originalName\":\"City tech tok.png\",\"mime\":\"image\\/png\",\"size\":1285214,\"height\":721,\"width\":969,\"path\":\"uploads\\/2024\\/01\\/29\\/city-tech-tok_65b777755b96c.png\",\"name\":\"city-tech-tok_65b777755b96c.png\"}', 2024, 'A', 4, 1, '2024-01-29 10:01:25', '2024-01-29 10:01:25'),
(108, 'e7717c1c-986a-4f82-9ae3-8b4570501f62', 'Screenshot 2024-01-29 185919.png', 'screenshot-2024-01-29-185919_65b77782351d2.png', 'uploads/2024/01/29/screenshot-2024-01-29-185919_65b77782351d2.png', 'image/png', '323460', '733', '720', '{\"originalName\":\"Screenshot 2024-01-29 185919.png\",\"mime\":\"image\\/png\",\"size\":323460,\"height\":733,\"width\":720,\"path\":\"uploads\\/2024\\/01\\/29\\/screenshot-2024-01-29-185919_65b77782351d2.png\",\"name\":\"screenshot-2024-01-29-185919_65b77782351d2.png\"}', 2024, 'A', 4, 1, '2024-01-29 10:01:38', '2024-01-29 10:01:38'),
(109, '75b277cd-ad5d-45dc-a97b-09e79f755ed5', 'Screenshot 2024-01-29 185756.png', 'screenshot-2024-01-29-185756_65b7778285844.png', 'uploads/2024/01/29/screenshot-2024-01-29-185756_65b7778285844.png', 'image/png', '1173728', '648', '958', '{\"originalName\":\"Screenshot 2024-01-29 185756.png\",\"mime\":\"image\\/png\",\"size\":1173728,\"height\":648,\"width\":958,\"path\":\"uploads\\/2024\\/01\\/29\\/screenshot-2024-01-29-185756_65b7778285844.png\",\"name\":\"screenshot-2024-01-29-185756_65b7778285844.png\"}', 2024, 'A', 4, 1, '2024-01-29 10:01:38', '2024-01-29 10:01:38'),
(110, 'fa518463-640c-481d-818c-81b5e646b147', 'Hazard-Image.jpg', 'hazard-image_65bbd22b6a819.jpg', 'uploads/2024/02/01/hazard-image_65bbd22b6a819.jpg', 'image/jpeg', '125594', '284', '593', '{\"originalName\":\"Hazard-Image.jpg\",\"mime\":\"image\\/jpeg\",\"size\":125594,\"height\":284,\"width\":593,\"path\":\"uploads\\/2024\\/02\\/01\\/hazard-image_65bbd22b6a819.jpg\",\"name\":\"hazard-image_65bbd22b6a819.jpg\"}', 2024, 'A', 1, 1, '2024-02-01 11:47:31', '2024-02-01 11:47:31'),
(111, '44f0303f-1f8a-432e-b19c-b6507dfba301', 'RiaaS-API-Suite.jpg', 'riaas-api-suite_65bbd22bb922f.jpg', 'uploads/2024/02/01/riaas-api-suite_65bbd22bb922f.jpg', 'image/jpeg', '173015', '880', '1500', '{\"originalName\":\"RiaaS-API-Suite.jpg\",\"mime\":\"image\\/jpeg\",\"size\":173015,\"height\":880,\"width\":1500,\"path\":\"uploads\\/2024\\/02\\/01\\/riaas-api-suite_65bbd22bb922f.jpg\",\"name\":\"riaas-api-suite_65bbd22bb922f.jpg\"}', 2024, 'A', 1, 1, '2024-02-01 11:47:31', '2024-02-01 11:47:31'),
(112, '84a29502-857d-4e85-93f0-901e8d20c81d', 'Road-Monitoring-Dashboard.jpg', 'road-monitoring-dashboard_65bbd22bef4a2.jpg', 'uploads/2024/02/01/road-monitoring-dashboard_65bbd22bef4a2.jpg', 'image/jpeg', '165922', '284', '586', '{\"originalName\":\"Road-Monitoring-Dashboard.jpg\",\"mime\":\"image\\/jpeg\",\"size\":165922,\"height\":284,\"width\":586,\"path\":\"uploads\\/2024\\/02\\/01\\/road-monitoring-dashboard_65bbd22bef4a2.jpg\",\"name\":\"road-monitoring-dashboard_65bbd22bef4a2.jpg\"}', 2024, 'A', 1, 1, '2024-02-01 11:47:31', '2024-02-01 11:47:31'),
(113, '457bf98e-693a-4f11-ad24-1b33f8af0759', 'Data-Transmission-Icon.svg', 'data-transmission-icon_65bbdf39a3ef7.svg', 'uploads/2024/02/01/data-transmission-icon_65bbdf39a3ef7.svg', 'image/svg+xml', '6195', NULL, NULL, '{\"originalName\":\"Data-Transmission-Icon.svg\",\"mime\":\"image\\/svg+xml\",\"size\":6195,\"height\":null,\"width\":null,\"path\":\"uploads\\/2024\\/02\\/01\\/data-transmission-icon_65bbdf39a3ef7.svg\",\"name\":\"data-transmission-icon_65bbdf39a3ef7.svg\"}', 2024, 'A', 1, 1, '2024-02-01 12:43:13', '2024-02-01 12:43:13'),
(114, '7d923a4e-7607-40a0-833a-34cfc208b11d', 'AI-Road-Analyzer-02.jpg', 'ai-road-analyzer-02_65bbdfd775d95.jpg', 'uploads/2024/02/01/ai-road-analyzer-02_65bbdfd775d95.jpg', 'image/jpeg', '231252', '563', '1000', '{\"originalName\":\"AI-Road-Analyzer-02.jpg\",\"mime\":\"image\\/jpeg\",\"size\":231252,\"height\":563,\"width\":1000,\"path\":\"uploads\\/2024\\/02\\/01\\/ai-road-analyzer-02_65bbdfd775d95.jpg\",\"name\":\"ai-road-analyzer-02_65bbdfd775d95.jpg\"}', 2024, 'A', 1, 1, '2024-02-01 12:45:51', '2024-02-01 12:45:51'),
(115, '3c678eb9-2535-4fb5-af13-a6a383774cb3', 'Monitoring-Dashboard.jpg', 'monitoring-dashboard_65bbdfd79141f.jpg', 'uploads/2024/02/01/monitoring-dashboard_65bbdfd79141f.jpg', 'image/jpeg', '159129', '542', '1000', '{\"originalName\":\"Monitoring-Dashboard.jpg\",\"mime\":\"image\\/jpeg\",\"size\":159129,\"height\":542,\"width\":1000,\"path\":\"uploads\\/2024\\/02\\/01\\/monitoring-dashboard_65bbdfd79141f.jpg\",\"name\":\"monitoring-dashboard_65bbdfd79141f.jpg\"}', 2024, 'A', 1, 1, '2024-02-01 12:45:51', '2024-02-01 12:45:51'),
(116, '54b390db-371b-428f-abef-0f6dcb44a5f7', 'AI-Deep-Learning.svg', 'ai-deep-learning_65bbe02799785.svg', 'uploads/2024/02/01/ai-deep-learning_65bbe02799785.svg', 'image/svg+xml', '9223', NULL, NULL, '{\"originalName\":\"AI-Deep-Learning.svg\",\"mime\":\"image\\/svg+xml\",\"size\":9223,\"height\":null,\"width\":null,\"path\":\"uploads\\/2024\\/02\\/01\\/ai-deep-learning_65bbe02799785.svg\",\"name\":\"ai-deep-learning_65bbe02799785.svg\"}', 2024, 'A', 1, 1, '2024-02-01 12:47:11', '2024-02-01 12:47:11'),
(117, 'be3e2222-c312-47fd-afa6-ec8b1fc1f85a', 'Data-Cleansing.svg', 'data-cleansing_65bbe027b50e4.svg', 'uploads/2024/02/01/data-cleansing_65bbe027b50e4.svg', 'image/svg+xml', '9251', NULL, NULL, '{\"originalName\":\"Data-Cleansing.svg\",\"mime\":\"image\\/svg+xml\",\"size\":9251,\"height\":null,\"width\":null,\"path\":\"uploads\\/2024\\/02\\/01\\/data-cleansing_65bbe027b50e4.svg\",\"name\":\"data-cleansing_65bbe027b50e4.svg\"}', 2024, 'A', 1, 1, '2024-02-01 12:47:11', '2024-02-01 12:47:11'),
(118, 'e8e69bda-fd02-4e5e-bede-c2ffa818a2f3', 'Reporting.svg', 'reporting_65bbe027cde95.svg', 'uploads/2024/02/01/reporting_65bbe027cde95.svg', 'image/svg+xml', '4444', NULL, NULL, '{\"originalName\":\"Reporting.svg\",\"mime\":\"image\\/svg+xml\",\"size\":4444,\"height\":null,\"width\":null,\"path\":\"uploads\\/2024\\/02\\/01\\/reporting_65bbe027cde95.svg\",\"name\":\"reporting_65bbe027cde95.svg\"}', 2024, 'A', 1, 1, '2024-02-01 12:47:11', '2024-02-01 12:47:11'),
(119, '938d87dc-cbeb-4cc9-9747-e4f2f5467c1b', 'StatisticsAnalysis.svg', 'statisticsanalysis_65bbe027e673c.svg', 'uploads/2024/02/01/statisticsanalysis_65bbe027e673c.svg', 'image/svg+xml', '3446', NULL, NULL, '{\"originalName\":\"StatisticsAnalysis.svg\",\"mime\":\"image\\/svg+xml\",\"size\":3446,\"height\":null,\"width\":null,\"path\":\"uploads\\/2024\\/02\\/01\\/statisticsanalysis_65bbe027e673c.svg\",\"name\":\"statisticsanalysis_65bbe027e673c.svg\"}', 2024, 'A', 1, 1, '2024-02-01 12:47:11', '2024-02-01 12:47:11'),
(120, 'b4a68346-3db9-46a6-bb93-cf4a2a4abded', 'Visualization.svg', 'visualization_65bbe0280a7c6.svg', 'uploads/2024/02/01/visualization_65bbe0280a7c6.svg', 'image/svg+xml', '2986', NULL, NULL, '{\"originalName\":\"Visualization.svg\",\"mime\":\"image\\/svg+xml\",\"size\":2986,\"height\":null,\"width\":null,\"path\":\"uploads\\/2024\\/02\\/01\\/visualization_65bbe0280a7c6.svg\",\"name\":\"visualization_65bbe0280a7c6.svg\"}', 2024, 'A', 1, 1, '2024-02-01 12:47:12', '2024-02-01 12:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `media_library_groups`
--

DROP TABLE IF EXISTS `media_library_groups`;
CREATE TABLE IF NOT EXISTS `media_library_groups` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `media_library_groups_admin_id_foreign` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_library_groups`
--

INSERT INTO `media_library_groups` (`id`, `name`, `status`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, 'Home Page', 'A', '2023-12-25 09:57:06', '2024-01-08 21:30:49', 1),
(3, 'Testimonials', 'A', '2023-12-25 10:18:12', '2023-12-25 10:18:12', 1),
(4, 'News', 'A', '2023-12-25 10:18:30', '2024-01-08 21:31:07', 1),
(6, 'Whats RiaaS Page', 'A', '2023-12-26 06:41:20', '2024-01-08 21:31:25', 1),
(8, 'Use Case Page', 'A', '2023-12-27 06:09:51', '2024-01-08 21:31:58', 1),
(10, 'Case Study', 'A', '2023-12-27 23:41:10', '2024-01-08 21:32:36', 1),
(12, 'Company Page', 'A', '2023-12-28 03:56:41', '2024-01-08 21:32:16', 1),
(14, 'Leadership', 'A', '2023-12-29 13:02:06', '2023-12-30 09:58:59', 1),
(15, 'Blogs', 'A', '2024-01-11 02:36:07', '2024-01-11 02:36:07', 1),
(16, 'Career', 'A', '2024-01-11 02:36:14', '2024-01-11 02:36:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_29_064606_create_admins_table', 1),
(6, '2023_12_04_120320_create_pages_table', 2),
(7, '2023_12_18_112705_create_media_library_groups_table', 3),
(8, '2023_12_19_105525_add_admin_id_to_media_library_groups_table', 4),
(12, '2023_12_20_183746_create_testimonials_table', 5),
(13, '2023_12_20_192606_create_page_testimonial_table', 5),
(14, '2023_12_20_194010_add_admin_id_to_testimonials_table', 5),
(15, '2023_12_22_053112_add_admin_id_to_pages_table', 6),
(17, '2023_12_23_064517_create_media_libraries_table', 7),
(18, '2023_12_26_062835_add_image_to_testimonials_table', 8),
(21, '2023_12_27_151344_create_case_studies_table', 9),
(23, '2023_12_30_134838_create_leaderships_table', 10),
(24, '2023_12_30_163704_create_milestones_table', 11),
(25, '2023_12_31_122638_create_offices_table', 12),
(26, '2024_01_01_054318_create_contact_enquiries_table', 13),
(27, '2024_01_01_182511_create_news_table', 14),
(28, '2024_01_06_145703_create_newsletter_enquiries_table', 15),
(29, '2024_01_07_190924_add_company_to_contact_enquiries_table', 16),
(31, '2024_01_09_200849_create_blog_categories_table', 17),
(32, '2024_01_10_123447_create_blogs_table', 18),
(34, '2024_01_10_170417_update_blog_categories_table', 19),
(36, '2024_01_13_064659_create_jobs_table', 20),
(37, '2024_01_14_161505_update_foreign_key_for_blogs_table', 21),
(39, '2024_01_14_203521_create_job_enquiries_table', 22),
(40, '2024_01_16_101442_create_hazard_counts_table', 23),
(45, '2024_01_17_123434_create_settings_table', 24),
(46, '2024_01_17_125558_add_file_fields_to_job_enquiries_table', 24),
(47, '2024_01_20_200646_add_file_fields_to_job_enquiries_table', 25),
(48, '2024_01_21_181255_create_countries_table', 26),
(49, '2024_01_23_152028_create_product_properties_table', 27),
(51, '2024_01_23_152043_create_products_table', 28),
(52, '2024_01_24_063433_add_uuid_field_to_product_properties_table', 29),
(54, '2024_01_24_105833_add_text_field_to_products_page', 30),
(56, '2024_01_26_151852_add_accounts_fields_to_admins_table', 31),
(57, '2024_01_31_075050_create_permission_tables', 32);

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

DROP TABLE IF EXISTS `milestones`;
CREATE TABLE IF NOT EXISTS `milestones` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `year` year(4) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `language` enum('en','kr','both') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `milestones_admin_id_foreign` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `milestones`
--

INSERT INTO `milestones` (`id`, `content`, `year`, `month`, `language`, `status`, `admin_id`, `created_at`, `updated_at`) VALUES
(2, '{\"en\": \"<ul>\\r\\n<li><strong>Selected as Baby Unicorn company</strong> by the Ministry of SMEs and Startups</li>\\r\\n<li><strong>Selected for the ITS Innovation Competition</strong></li>\\r\\n<li><strong>Incorporated in the U.S.</strong></li></ul>\", \"kr\": \"<ul>\\r\\n<li>중소벤처기업부 베이비유니콘기업 선정</li>\\r\\n<li>ITS 혁신경진대회 선정</li></ul>\"}', 2023, 6, 'both', 'A', 1, '2023-12-31 04:09:16', '2023-12-31 04:18:17'),
(3, '{\"en\": \"<ul>\\r\\n<li><strong>Won a contract</strong> for Seoul Metropolitan Government&#39;s Video-based Pothole Detect Project</li></ul>\", \"kr\": \"\"}', 2023, 5, 'en', 'A', 1, '2023-12-31 04:16:26', '2023-12-31 04:16:26'),
(4, '{\"en\": \"<ul>\\r\\n<li>Participated in the India Smart City Expo</li>\\r\\n<li>Certified as an InnoBiz company</li></ul>\", \"kr\": \"\"}', 2023, 4, 'en', 'A', 1, '2023-12-31 04:41:37', '2023-12-31 05:43:59'),
(5, '{\"en\": \"<ul>\\r\\n<li><strong>Selected as Baby Unicorn company</strong> by the Ministry of SMEs and Startups</li>\\r\\n<li><strong>Selected for the ITS Innovation Competition</strong></li></ul>\", \"kr\": \"\"}', 2022, 6, 'en', 'A', 1, '2023-12-31 04:47:53', '2023-12-31 04:47:53'),
(6, '{\"en\": \"<ul>\\r\\n<li><strong>Selected as Baby Unicorn company</strong> by the Ministry of SMEs and Startups</li>\\r\\n<li><strong>Selected for the ITS Innovation Competition</strong></li></ul>\", \"kr\": \"\"}', 2021, 10, 'en', 'A', 1, '2023-12-31 04:50:35', '2023-12-31 04:50:35'),
(7, '{\"en\":\"<p>Founded<\\/p>\",\"kr\":\"<p>Founded<\\/p>\"}', 2020, 1, 'both', 'A', 1, '2024-01-29 08:59:32', '2024-01-29 08:59:32'),
(8, '{\"en\":\"<p>Established company research institute<\\/p>\",\"kr\":\"<p>Established company research institute<\\/p>\"}', 2020, 2, 'both', 'A', 1, '2024-01-29 09:11:45', '2024-01-29 09:11:45'),
(9, '{\"en\":\"<p>Certified as a Venture company<\\/p>\",\"kr\":\"<p>Certified as a Venture company<\\/p>\"}', 2020, 4, 'both', 'A', 1, '2024-01-29 09:12:18', '2024-01-29 09:12:18'),
(10, '{\"en\":\"<p>Won order for Road Surface Information Management Platform. Selected for the National Project supporting commercialization by MOTIE (Ministry of Trade, Industry and Energy)<\\/p>\",\"kr\":\"<p>Won order for Road Surface Information Management Platform. Selected for the National Project supporting commercialization by MOTIE (Ministry of Trade, Industry and Energy)<\\/p>\"}', 2020, 5, 'both', 'A', 1, '2024-01-29 09:20:20', '2024-01-29 11:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `short_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type` enum('press','news') COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` enum('en','kr','both') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` enum('Y','N') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_admin_id_foreign` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `slug`, `title`, `short_description`, `content`, `image`, `type`, `language`, `status`, `is_featured`, `publish_date`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'Roadhazard information service company, participated in City-Tech.Tokyo', 'roadhazard-information-service-company-participated-in-city-techtokyo', '{\"en\": \"Roadhazard information service company, participated in City-Tech.Tokyo\", \"kr\": \"\"}', '{\"en\": \"New Deal Data Pilot Project for road hazard data construction service\", \"kr\": \"\"}', '{\"en\": \"\", \"kr\": \"\"}', '{\"en\": \"uploads/2024/01/02/swippertwo_6593ebbdea08b.jpg\", \"kr\": \"\"}', 'news', 'en', 'A', 'Y', '2023-01-05', 1, '2024-01-02 12:38:44', '2024-01-02 12:38:44'),
(2, 'Dareesoft at City-Tech.Tokyo', 'dareesoft-at-city-techtokyo', '{\"en\": \"Dareesoft at City-Tech.Tokyo\", \"kr\": \"City-Tech.Tokyo의 Dareesoft\"}', '{\"en\": \"Dareesoft (Co-CEOs Mandella Jeong, Elizabeth Row), an AI-based\", \"kr\": \"AI 기반의 다리소프트(공동대표 만델라 정, 엘리자베스 로우)\"}', '{\"en\": [{\"image\": \"uploads/2024/01/02/swippertwo_6593ebbdea08b.jpg\", \"layout\": \"layout_1\", \"caption\": \"test\"}, {\"image\": \"uploads/2024/01/02/subimageone_6593ebbe0b40f.jpg\", \"layout\": \"layout_1\", \"caption\": \"test\"}, {\"head\": \"Hello\", \"text\": \"<p>this is sample text</p>\\r\\n<p>this is sample two text</p>\", \"layout\": \"layout_2\"}], \"kr\": [{\"head\": \"안녕하세요\", \"text\": \"<p>이것은 샘플 텍스트입니다</p>\\r\\n<p>이것은 샘플 2 텍스트입니다</p>\", \"layout\": \"layout_2\"}, {\"image\": \"uploads/2024/01/02/swippertwo_6593ebbdea08b.jpg\", \"layout\": \"layout_1\", \"caption\": \"Hello\"}]}', '{\"en\": \"uploads/2024/01/02/swipperone_6593ebbdb94ae.jpg\", \"kr\": \"uploads/2024/01/02/swipperone_6593ebbdb94ae.jpg\"}', 'press', 'both', 'A', 'Y', '2024-01-03', 1, '2024-01-03 00:01:51', '2024-01-04 11:28:32'),
(3, 'Dareesoft at City-Tech.Tokyo 1', 'dareesoft-at-city-techtokyo-1', '{\"en\": \"Dareesoft at City-Tech.Tokyo\", \"kr\": \"City-Tech.Tokyo의 Dareesoft\"}', '{\"en\": \"Dareesoft at City-Tech.Tokyo\", \"kr\": \"City-Tech.Tokyo의 Dareesoft\"}', '{\"en\": \"\", \"kr\": \"\"}', '{\"en\": \"uploads/2024/01/02/news-image_6593ebbd7fe61.jpg\", \"kr\": \"uploads/2024/01/02/subimageone_6593ebbe0b40f.jpg\"}', 'news', 'both', 'A', 'N', '2024-01-01', 1, '2024-01-03 00:11:26', '2024-01-03 00:19:43'),
(4, 'Dareesoft Participates in Smart Cities India Expo and Discusses Business Opportunity with Mumbai\'s Department of Transport 2', 'dareesoft-participates-in-smart-cities-india-expo-and-discusses-business-opportunity-with-mumbais-department-of-transport-2', '{\"en\": \"Dareesoft Participates in Smart Cities India Expo and Discusses Business Opportunity with Mumbai\'s Department of Transport\", \"kr\": \"\"}', '{\"en\": \"Dareesoft Participates in Smart Cities India Expo and Discusses Business Opportunity with Mumbai\'s Department of Transport\", \"kr\": \"\"}', '{\"en\": \"\", \"kr\": \"\"}', '{\"en\": \"uploads/2023/12/28/mission_658d841d71ca6.jpg\", \"kr\": \"\"}', 'news', 'en', 'A', 'N', '2023-08-17', 1, '2024-01-03 00:21:39', '2024-01-03 06:13:47'),
(5, 'Roadhazard information service company, participated in City-Tech.Tokyo 2', 'roadhazard-information-service-company-participated-in-city-techtokyo-2', '{\"en\": \"Roadhazard information service company, participated in City-Tech.Tokyo\", \"kr\": \"\"}', '{\"en\": \"New Deal Data Pilot Project for road hazard data construction service\", \"kr\": \"\"}', '{\"en\": \"\", \"kr\": \"\"}', '{\"en\": \"uploads/2024/01/02/swippertwo_6593ebbdea08b.jpg\", \"kr\": \"\"}', 'press', 'en', 'A', 'N', '2022-09-07', 1, '2024-01-02 07:08:44', '2024-01-03 06:13:05'),
(6, 'Dareesoft at City-Tech.Tokyo 2', 'dareesoft-at-city-techtokyo-2', '{\"en\": \"Dareesoft at City-Tech.Tokyo\", \"kr\": \"City-Tech.Tokyo의 Dareesoft\"}', '{\"en\": \"Dareesoft (Co-CEOs Mandella Jeong, Elizabeth Row), an AI-based\", \"kr\": \"AI 기반의 다리소프트(공동대표 만델라 정, 엘리자베스 로우)\"}', '{\"en\": \"\", \"kr\": \"\"}', '{\"en\": \"uploads/2024/01/02/swipperone_6593ebbdb94ae.jpg\", \"kr\": \"uploads/2024/01/02/swipperone_6593ebbdb94ae.jpg\"}', 'press', 'both', 'A', 'Y', '2024-01-03', 1, '2024-01-02 18:31:51', '2024-01-03 06:16:47'),
(7, 'Dareesoft at City-Tech.Tokyo 3', 'dareesoft-at-city-techtokyo-3', '{\"en\": \"Dareesoft at City-Tech.Tokyo\", \"kr\": \"City-Tech.Tokyo의 Dareesoft\"}', '{\"en\": \"Dareesoft at City-Tech.Tokyo\", \"kr\": \"City-Tech.Tokyo의 Dareesoft\"}', '{\"en\": \"\", \"kr\": \"\"}', '{\"en\": \"uploads/2024/01/02/news-image_6593ebbd7fe61.jpg\", \"kr\": \"uploads/2024/01/02/subimageone_6593ebbe0b40f.jpg\"}', 'news', 'both', 'A', 'N', '2024-01-01', 1, '2024-01-02 18:41:26', '2024-01-03 06:16:56'),
(8, 'Dareesoft Participates in Smart Cities India Expo and Discusses Business Opportunity with Mumbai\'s Department of Transport 3', 'dareesoft-participates-in-smart-cities-india-expo-and-discusses-business-opportunity-with-mumbais-department-of-transport-3', '{\"en\": \"Dareesoft Participates in Smart Cities India Expo and Discusses Business Opportunity with Mumbai\'s Department of Transport\", \"kr\": \"\"}', '{\"en\": \"Dareesoft Participates in Smart Cities India Expo and Discusses Business Opportunity with Mumbai\'s Department of Transport\", \"kr\": \"\"}', '{\"en\": \"\", \"kr\": \"\"}', '{\"en\": \"uploads/2023/12/28/mission_658d841d71ca6.jpg\", \"kr\": \"\"}', 'news', 'en', 'A', 'N', '2023-08-03', 1, '2024-01-02 18:51:39', '2024-01-03 06:17:09'),
(9, 'Roadhazard information service company, participated in City-Tech.Tokyo 3', 'roadhazard-information-service-company-participated-in-city-techtokyo-3', '{\"en\": \"Roadhazard information service company, participated in City-Tech.Tokyo\", \"kr\": \"\"}', '{\"en\": \"New Deal Data Pilot Project for road hazard data construction service\", \"kr\": \"\"}', '{\"en\": \"\", \"kr\": \"\"}', '{\"en\": \"uploads/2024/01/02/swippertwo_6593ebbdea08b.jpg\", \"kr\": \"\"}', 'news', 'en', 'A', 'Y', '2023-02-02', 1, '2024-01-02 07:08:44', '2024-01-03 06:17:45'),
(10, 'Dareesoft at City-Tech.Tokyo 5', 'dareesoft-at-city-techtokyo-5', '{\"en\": \"Dareesoft at City-Tech.Tokyo\", \"kr\": \"City-Tech.Tokyo의 Dareesoft\"}', '{\"en\": \"Dareesoft (Co-CEOs Mandella Jeong, Elizabeth Row), an AI-based\", \"kr\": \"AI 기반의 다리소프트(공동대표 만델라 정, 엘리자베스 로우)\"}', '{\"en\": \"\", \"kr\": \"\"}', '{\"en\": \"uploads/2024/01/02/swipperone_6593ebbdb94ae.jpg\", \"kr\": \"uploads/2024/01/02/swipperone_6593ebbdb94ae.jpg\"}', 'press', 'both', 'A', 'Y', '2024-01-03', 1, '2024-01-02 18:31:51', '2024-01-03 06:20:51'),
(11, 'Dareesoft at City-Tech.Tokyo 7', 'dareesoft-at-city-techtokyo-7', '{\"en\": \"Dareesoft at City-Tech.Tokyo\", \"kr\": \"City-Tech.Tokyo의 Dareesoft\"}', '{\"en\": \"Dareesoft at City-Tech.Tokyo\", \"kr\": \"City-Tech.Tokyo의 Dareesoft\"}', '{\"en\": \"\", \"kr\": \"\"}', '{\"en\": \"uploads/2024/01/02/news-image_6593ebbd7fe61.jpg\", \"kr\": \"uploads/2024/01/02/subimageone_6593ebbe0b40f.jpg\"}', 'news', 'both', 'A', 'N', '2024-01-01', 1, '2024-01-02 18:41:26', '2024-01-03 06:20:18'),
(12, 'Dareesoft Participates in Smart Cities India Expo and Discusses Business Opportunity with Mumbai\'s Department of Transport 1', 'dareesoft-participates-in-smart-cities-india-expo-and-discusses-business-opportunity-with-mumbais-department-of-transport-1', '{\"en\": \"Dareesoft Participates in Smart Cities India Expo and Discusses Business Opportunity with Mumbai\'s Department of Transport\", \"kr\": \"\"}', '{\"en\": \"Dareesoft Participates in Smart Cities India Expo and Discusses Business Opportunity with Mumbai\'s Department of Transport\", \"kr\": \"\"}', '{\"en\": \"\", \"kr\": \"\"}', '{\"en\": \"uploads/2023/12/28/mission_658d841d71ca6.jpg\", \"kr\": \"\"}', 'news', 'en', 'A', 'N', '2023-08-03', 1, '2024-01-02 18:51:39', '2024-01-03 06:19:59'),
(13, 'Roadhazard information service company, participated in City-Tech.Tokyo 4', 'roadhazard-information-service-company-participated-in-city-techtokyo-4', '{\"en\": \"Roadhazard information service company, participated in City-Tech.Tokyo\", \"kr\": \"\"}', '{\"en\": \"New Deal Data Pilot Project for road hazard data construction service\", \"kr\": \"\"}', '{\"en\": \"\", \"kr\": \"\"}', '{\"en\": \"uploads/2024/01/02/swippertwo_6593ebbdea08b.jpg\", \"kr\": \"\"}', 'news', 'en', 'A', 'Y', '2023-01-05', 1, '2024-01-02 07:08:44', '2024-01-03 06:19:34'),
(14, 'Dareesoft at City-Tech.Tokyo 6', 'dareesoft-at-city-techtokyo-6', '{\"en\": \"Dareesoft at City-Tech.Tokyo\", \"kr\": \"City-Tech.Tokyo의 Dareesoft\"}', '{\"en\": \"Dareesoft (Co-CEOs Mandella Jeong, Elizabeth Row), an AI-based\", \"kr\": \"AI 기반의 다리소프트(공동대표 만델라 정, 엘리자베스 로우)\"}', '{\"en\": \"\", \"kr\": \"\"}', '{\"en\": \"uploads/2024/01/02/swipperone_6593ebbdb94ae.jpg\", \"kr\": \"uploads/2024/01/02/swipperone_6593ebbdb94ae.jpg\"}', 'press', 'both', 'A', 'Y', '2023-11-20', 1, '2024-01-02 18:31:51', '2024-01-03 06:19:19'),
(15, 'Dareesoft at City-Tech.Tokyo 4', 'dareesoft-at-city-techtokyo-4', '{\"en\": \"Dareesoft at City-Tech.Tokyo\", \"kr\": \"City-Tech.Tokyo의 Dareesoft\"}', '{\"en\": \"Dareesoft at City-Tech.Tokyo\", \"kr\": \"City-Tech.Tokyo의 Dareesoft\"}', '{\"en\": \"\", \"kr\": \"\"}', '{\"en\": \"uploads/2024/01/02/news-image_6593ebbd7fe61.jpg\", \"kr\": \"uploads/2024/01/02/subimageone_6593ebbe0b40f.jpg\"}', 'news', 'both', 'A', 'N', '2023-11-17', 1, '2024-01-02 18:41:26', '2024-01-03 06:18:51'),
(16, 'Dareesoft Participates in Smart Cities India Expo and Discusses Business Opportunity with Mumbai\'s Department of Transport 5', 'dareesoft-participates-in-smart-cities-india-expo-and-discusses-business-opportunity-with-mumbais-department-of-transport-5', '{\"en\": \"Dareesoft Participates in Smart Cities India Expo and Discusses Business Opportunity with Mumbai\'s Department of Transport 11\", \"kr\": \"\"}', '{\"en\": \"Dareesoft Participates in Smart Cities India Expo and Discusses Business Opportunity with Mumbai\'s Department of Transport 11\", \"kr\": \"\"}', '{\"en\": \"\", \"kr\": \"\"}', '{\"en\": \"uploads/2023/12/28/mission_658d841d71ca6.jpg\", \"kr\": \"\"}', 'news', 'en', 'A', 'N', '2023-12-20', 1, '2024-01-02 18:51:39', '2024-01-04 00:41:58'),
(19, 'Dareesoft Participates in Smart Cities India Expo and Discusses Business Opportunity with Mumbai’s Department of Transport Test', 'dareesoft-participates-in-smart-cities-india-expo-and-discusses-business-opportunity-with-mumbais-department-of-transport-test', '{\"en\": \"Dareesoft Participates in Smart Cities India Expo and Discusses Business Opportunity with Mumbai’s Department of Transport Test\", \"kr\": \"Dareesoft, 인도 스마트 시티 엑스포에 참가해 뭄바이 교통 테스트부와 사업 기회 논의\"}', '{\"en\": \"test press\", \"kr\": \"Dareesoft, 인도 스마트 시티 엑스포에 참가해 뭄바이 교통 테스트부와 사업 기회 논의\"}', '{\"en\":[{\"layout\":\"layout_1\",\"head\":\"Dareesoft (Co-CEOs Mandella Jeong,Elizabeth Row), an AI-based roadhazard information service company, participated in 8th Smart Cities India Expo held in New Delhi for three days from March 27 to 29. Driving, Smart City, etc.\",\"text\":\"<p>Smart Cities India Expo is India&rsquo;s largest technology and infrastructure exhibition, marking its eighth anniversary this year with the goal of building digital and smart India. The exhibition was divided into various fields such as urban infrastructure, disaster safety, autonomous driving, automotive, and semiconductors, with more than 30 countries and 100 start-ups from around the world participating. The exhibition, which began with the opening speech of India&rsquo;s Minister of Road and Transport Nitin Gadkari, included conference and awards ceremony.<\\/p>\"},{\"layout\":\"layout_3\",\"image\":\"uploads\\/2024\\/01\\/02\\/subimage_6593ebbdcc793.jpg\",\"caption\":\"Dareesoft\\u2019s booth at Smart Cities India Expo\"},{\"layout\":\"layout_2\",\"text\":\"<p>At the exhibition, Dareesoft introduced its flagship service, RiaaS(Road hazard information as a Service). RiaaS is an AI road analyzing device mounted on a vehicle that detects road hazards such as potholes, road cracks, and other obstacles on the road. RiaaS then transmits the information to users such as road maintenance personnel in real-time.<\\/p>\\r\\n<p>A number of government agencies such as the National Highway Authority of India(NHAI), Kolkata City Transportation Ministry, and municipal governments of Uttar Pradesh, Bengaluru, Morabadad and Saharanpur showed interest in RiaaS. IT service providers and road maintenance solution companies such as Dahua Technology and 9YT visited Dareesoft&rsquo;s booth as well.<\\/p>\\r\\n<p>In particular, Dareesoft held detailed discussions with TATA Communications and Nissan on business partnerships. Dareesoft also discussed ways to enter the Indian market and receive support for exports with Korea Trade-Investment Promotion Agency, KOTRA. On March 31st, Dareesoft met Ministry of Transportation in Mumbai to discuss highway projects, along with companies specializing in automobile solutions and public works projects.<\\/p>\"},{\"layout\":\"layout_3\",\"image\":\"uploads\\/2024\\/01\\/02\\/swipperone_6593ebbdb94ae.jpg\",\"caption\":\"Visitors learning about RiaaS at Dareesoft\\u2019s booth\"},{\"layout\":\"layout_1\",\"head\":\"India is the world\\u2019s second-largest country in population, with its urban population soaring at an annual average of 2.4%. By 2030, 42%\",\"text\":\"<p>of India&rsquo;s total population is expected to be concentrated in cities, but urban infrastructure is insufficient and underdeveloped. Indian government announced its plans to invest $1.5 trillion in transportation and road infrastructure by 2025, and has successfully launched more than 60 $10 billion worth of road projects. Accordingly, Dareesoft plans to contribute to systematic and smart road management and digitalization through RiaaS.<\\/p>\\r\\n<p>&ldquo;As India has the second largest road network in the world, but struggles with road safety, with more than 3,000 traffic accidents and 2,000 deaths caused by potholes, we thought that RiaaS will be a crucial solution,&rdquo; said Elizabeth Row, CEO of Dareesoft. &ldquo;We gained confidence in entering the Indian market, as RiaaS received a lot of attention during the exhibit.&rdquo;<\\/p>\\r\\n<p>Dareesoft, established in January 2020, commercialized the world&rsquo;s first AI-based road hazard information service. Currently, 70% of its 34 executives and employees are R&amp;D personnel, growing it into a global leading company in the industry. At the end of last year, Dareesoft attracted 5.5 billion KRW in Series A investment. Dareesoft will accelerate its global expansion this year, including the establishment of a U.S. corporation.<\\/p>\"}],\"kr\":[{\"layout\":\"layout_1\",\"head\":\"AI \\uae30\\ubc18 \\ub3c4\\ub85c \\uc704\\ud5d8 \\uc815\\ubcf4 \\uc11c\\ube44\\uc2a4 \\uae30\\uc5c5 \\ub2e4\\ub9ac\\uc18c\\ud504\\ud2b8(\\uacf5\\ub3d9\\ub300\\ud45c \\ub9cc\\ub378\\ub77c \\uc815,\\uc5d8\\ub9ac\\uc790\\ubca0\\uc2a4 \\ub85c\\uc6b0)\\uac00 3\\uc6d4 27\\uc77c\\ubd80\\ud130 29\\uc77c\\uae4c\\uc9c0 3\\uc77c\\uac04 \\ub274\\ub378\\ub9ac\\uc5d0\\uc11c \\uc5f4\\ub9b0 \\uc81c8\\ud68c \\uc2a4\\ub9c8\\ud2b8 \\uc2dc\\ud2f0 \\uc778\\ub3c4 \\uc5d1\\uc2a4\\ud3ec\\uc5d0 \\ucc38\\uac00\\ud588\\ub2e4. \\uc6b4\\uc804, \\uc2a4\\ub9c8\\ud2b8 \\uc2dc\\ud2f0 \\ub4f1\",\"text\":\"<p>\\uc2a4\\ub9c8\\ud2b8 \\uc2dc\\ud2f0 \\uc778\\ub3c4 \\uc5d1\\uc2a4\\ud3ec(Smart Cities India Expo)\\ub294 \\uc778\\ub3c4 \\ucd5c\\ub300\\uc758 \\uae30\\uc220 \\ubc0f \\uc778\\ud504\\ub77c \\uc804\\uc2dc\\ud68c\\ub85c, \\ub514\\uc9c0\\ud138\\uacfc \\uc2a4\\ub9c8\\ud2b8 \\uc778\\ub3c4 \\uac74\\uc124\\uc744 \\ubaa9\\ud45c\\ub85c \\uc62c\\ud574\\ub85c 8\\ud68c\\uc9f8\\ub97c \\ub9de\\uc774\\ud588\\uc2b5\\ub2c8\\ub2e4. \\uc774\\ubc88 \\uc804\\uc2dc\\ud68c\\ub294 \\ub3c4\\uc2dc \\uc778\\ud504\\ub77c, \\uc7ac\\ub09c\\uc548\\uc804, \\uc790\\uc728\\uc8fc\\ud589, \\uc790\\ub3d9\\ucc28, \\ubc18\\ub3c4\\uccb4 \\ub4f1 \\ub2e4\\uc591\\ud55c \\ubd84\\uc57c\\ub85c \\ub098\\ub204\\uc5b4 \\uc804 \\uc138\\uacc4 30\\uc5ec \\uac1c\\uad6d, 100\\uc5ec\\uac1c \\uc2a4\\ud0c0\\ud2b8\\uc5c5\\uc774 \\ucc38\\uac00\\ud588\\ub2e4. \\uc778\\ub3c4 \\ub3c4\\ub85c\\uad50\\ud1b5\\ubd80 \\ub2c8\\ud2f4 \\uac00\\ub4dc\\uce74\\ub9ac(Nitin Gadkari) \\uc7a5\\uad00\\uc758 \\uac1c\\ud68c\\uc0ac\\ub85c \\uc2dc\\uc791\\ub41c \\uc774\\ubc88 \\uc804\\uc2dc\\ub294 \\ucee8\\ud37c\\ub7f0\\uc2a4\\uc640 \\uc2dc\\uc0c1\\uc2dd \\ub4f1\\uc73c\\ub85c \\uc774\\uc5b4\\uc84c\\ub2e4.<\\/p>\"},{\"layout\":\"layout_3\",\"image\":\"uploads\\/2024\\/01\\/02\\/news-image_6593ebbd7fe61.jpg\",\"caption\":\"Smart Cities India Expo\\uc758 Dareesoft \\ubd80\\uc2a4\"},{\"layout\":\"layout_2\",\"text\":\"<p>\\uc774\\ubc88 \\uc804\\uc2dc\\ud68c\\uc5d0\\uc11c Dareesoft\\ub294 \\uc790\\uc0ac\\uc758 \\uc8fc\\ub825 \\uc11c\\ube44\\uc2a4\\uc778 RiaaS(Road Hazard Information as a Service)\\ub97c \\uc120\\ubcf4\\uc600\\uc2b5\\ub2c8\\ub2e4. RiaaS\\ub294 \\ucc28\\ub7c9\\uc5d0 \\uc7a5\\ucc29\\ub418\\uc5b4 \\ub3c4\\ub85c \\uc704\\uc758 \\uc6c0\\ud479 \\ub4e4\\uc5b4\\uac04 \\uacf3, \\ub3c4\\ub85c \\uade0\\uc5f4, \\uae30\\ud0c0 \\uc7a5\\uc560\\ubb3c \\ub4f1 \\ub3c4\\ub85c \\uc704\\ud5d8\\uc744 \\uac10\\uc9c0\\ud558\\ub294 AI \\ub3c4\\ub85c \\ubd84\\uc11d \\uc7a5\\uce58\\uc785\\ub2c8\\ub2e4. RiaaS\\ub294 \\uc2e4\\uc2dc\\uac04\\uc73c\\ub85c \\ub3c4\\ub85c \\uc720\\uc9c0\\uad00\\ub9ac \\uc778\\ub825 \\ub4f1 \\uc0ac\\uc6a9\\uc790\\uc5d0\\uac8c \\uc815\\ubcf4\\ub97c \\uc804\\uc1a1\\ud55c\\ub2e4.<\\/p>\\r\\n<p>\\uc778\\ub3c4 \\uad6d\\ub9bd\\uace0\\uc18d\\ub3c4\\ub85c\\uccad(NHAI), \\ucf5c\\uce74\\ud0c0\\uc2dc \\uad50\\ud1b5\\ubd80, \\uc6b0\\ud0c0\\ub974\\ud504\\ub77c\\ub370\\uc2dc\\uc8fc, \\ubcb5\\uac08\\ub8e8\\ub8e8, \\ubaa8\\ub77c\\ubc14\\ub2e4\\ub4dc, \\uc0ac\\ud558\\ub77c\\ud478\\ub974 \\uc9c0\\ubc29\\uc790\\uce58\\ub2e8\\uccb4 \\ub4f1 \\ub2e4\\uc218\\uc758 \\uc815\\ubd80 \\uae30\\uad00\\uc774 RiaaS\\uc5d0 \\uad00\\uc2ec\\uc744 \\ubcf4\\uc600\\uc2b5\\ub2c8\\ub2e4. \\ub2e4\\ud654\\ud14c\\ud06c\\ub180\\ub85c\\uc9c0(Dahua Technology), 9YT \\ub4f1 IT \\uc11c\\ube44\\uc2a4 \\uc81c\\uacf5\\uc5c5\\uccb4\\uc640 \\ub3c4\\ub85c \\uc720\\uc9c0\\ubcf4\\uc218 \\uc194\\ub8e8\\uc158 \\uae30\\uc5c5\\ub3c4 \\ub2e4\\ub9ac\\uc18c\\ud504\\ud2b8 \\ubd80\\uc2a4\\ub97c \\ucc3e\\uc558\\ub2e4.<\\/p>\\r\\n<p>\\ud2b9\\ud788 \\ub2e4\\ub9ac\\uc18c\\ud504\\ud2b8\\ub294 \\ud0c0\\ud0c0\\ucee4\\ubba4\\ub2c8\\ucf00\\uc774\\uc158\\uc988, \\ub2db\\uc0b0\\uacfc \\uc0ac\\uc5c5\\uc81c\\ud734\\uc5d0 \\uad00\\ud574 \\uad6c\\uccb4\\uc801\\uc73c\\ub85c \\ub17c\\uc758\\ud588\\ub2e4. \\ub2e4\\ub9ac\\uc18c\\ud504\\ud2b8\\ub294 \\ub300\\ud55c\\ubb34\\uc5ed\\ud22c\\uc790\\uc9c4\\ud765\\uacf5\\uc0ac(KOTRA)\\uc640 \\uc778\\ub3c4 \\uc2dc\\uc7a5 \\uc9c4\\ucd9c \\ubc0f \\uc218\\ucd9c \\uc9c0\\uc6d0 \\ubc29\\uc548\\ub3c4 \\ub17c\\uc758\\ud588\\ub2e4. Dareesoft\\ub294 3\\uc6d4 31\\uc77c \\ubb44\\ubc14\\uc774\\uc5d0\\uc11c \\uad50\\ud1b5\\ubd80\\ub97c \\ub9cc\\ub098 \\uc790\\ub3d9\\ucc28 \\uc194\\ub8e8\\uc158 \\ubc0f \\uacf5\\uacf5\\uc0ac\\uc5c5 \\ud504\\ub85c\\uc81d\\ud2b8 \\uc804\\ubb38 \\uae30\\uc5c5\\ub4e4\\uacfc \\ud568\\uaed8 \\uace0\\uc18d\\ub3c4\\ub85c \\ud504\\ub85c\\uc81d\\ud2b8\\uc5d0 \\ub300\\ud574 \\ub17c\\uc758\\ud588\\uc2b5\\ub2c8\\ub2e4.<\\/p>\"},{\"layout\":\"layout_3\",\"image\":\"uploads\\/2024\\/01\\/02\\/swipperone_6593ebbdb94ae.jpg\",\"caption\":\"Dareesoft \\ubd80\\uc2a4\\uc5d0\\uc11c RiaaS\\uc5d0 \\ub300\\ud574 \\ubc30\\uc6b0\\uace0 \\uc788\\ub294 \\ubc29\\ubb38\\uac1d\\ub4e4\"},{\"layout\":\"layout_1\",\"head\":\"\\uc778\\ub3c4\\ub294 \\uc138\\uacc4\\uc5d0\\uc11c \\ub450 \\ubc88\\uc9f8\\ub85c \\uc778\\uad6c\\uac00 \\ub9ce\\uc740 \\uad6d\\uac00\\ub85c \\ub3c4\\uc2dc \\uc778\\uad6c\\uac00 \\uc5f0\\ud3c9\\uade0 2.4%\\uc529 \\uae09\\uc99d\\ud558\\uace0 \\uc788\\ub2e4. 2030\\ub144\\uae4c\\uc9c0 42%\",\"text\":\"<p>\\uc778\\ub3c4 \\uc804\\uccb4 \\uc778\\uad6c\\uc758 40%\\uac00 \\ub3c4\\uc2dc\\uc5d0 \\uc9d1\\uc911\\ub420 \\uac83\\uc73c\\ub85c \\uc608\\uc0c1\\ub418\\uc9c0\\ub9cc, \\ub3c4\\uc2dc \\uc778\\ud504\\ub77c\\ub294 \\ubd80\\uc871\\ud558\\uace0 \\uac1c\\ubc1c\\uc774 \\ubbf8\\ud761\\ud569\\ub2c8\\ub2e4. \\uc778\\ub3c4 \\uc815\\ubd80\\ub294 2025\\ub144\\uae4c\\uc9c0 \\uad50\\ud1b5 \\ubc0f \\ub3c4\\ub85c \\uc778\\ud504\\ub77c\\uc5d0 1\\uc870 5\\ucc9c\\uc5b5 \\ub2ec\\ub7ec\\ub97c \\ud22c\\uc790\\ud560 \\uacc4\\ud68d\\uc744 \\ubc1c\\ud45c\\ud588\\uc73c\\uba70, 60\\uac1c \\uc774\\uc0c1\\uc758 100\\uc5b5 \\ub2ec\\ub7ec \\uaddc\\ubaa8\\uc758 \\ub3c4\\ub85c \\ud504\\ub85c\\uc81d\\ud2b8\\ub97c \\uc131\\uacf5\\uc801\\uc73c\\ub85c \\uc2dc\\uc791\\ud588\\uc2b5\\ub2c8\\ub2e4. \\uc774\\uc5d0 Dareesoft\\ub294 RiaaS\\ub97c \\ud1b5\\ud574 \\uccb4\\uacc4\\uc801\\uc774\\uace0 \\uc2a4\\ub9c8\\ud2b8\\ud55c \\ub3c4\\ub85c \\uad00\\ub9ac\\uc640 \\ub514\\uc9c0\\ud138\\ud654\\uc5d0 \\uae30\\uc5ec\\ud560 \\uacc4\\ud68d\\uc774\\ub2e4.<\\/p>\\r\\n<p>Dareesoft\\uc758 CEO\\uc778 Elizabeth Row\\ub294 &ldquo;\\uc778\\ub3c4\\ub294 \\uc138\\uacc4\\uc5d0\\uc11c \\ub450 \\ubc88\\uc9f8\\ub85c \\ud070 \\ub3c4\\ub85c \\ub124\\ud2b8\\uc6cc\\ud06c\\ub97c \\ubcf4\\uc720\\ud558\\uace0 \\uc788\\uc9c0\\ub9cc 3,000\\uac74\\uc774 \\ub118\\ub294 \\uad50\\ud1b5 \\uc0ac\\uace0\\uc640 2,000\\uba85\\uc758 \\ud31f\\ud640\\ub85c \\uc778\\ud55c \\uc0ac\\ub9dd \\ub4f1 \\ub3c4\\ub85c \\uc548\\uc804\\uc5d0 \\uc5b4\\ub824\\uc6c0\\uc744 \\uacaa\\uace0 \\uc788\\uae30 \\ub54c\\ubb38\\uc5d0 RiaaS\\uac00 \\uc911\\uc694\\ud55c \\uc194\\ub8e8\\uc158\\uc774 \\ub420 \\uac83\\uc774\\ub77c\\uace0 \\uc0dd\\uac01\\ud588\\uc2b5\\ub2c8\\ub2e4.&rdquo;\\ub77c\\uace0 \\ub9d0\\ud588\\uc2b5\\ub2c8\\ub2e4. . &ldquo;\\uc804\\uc2dc\\ud68c\\uc5d0\\uc11c RiaaS\\uac00 \\ub9ce\\uc740 \\uad00\\uc2ec\\uc744 \\ubc1b\\uc73c\\uba70 \\uc778\\ub3c4 \\uc2dc\\uc7a5 \\uc9c4\\ucd9c\\uc5d0 \\ub300\\ud55c \\uc790\\uc2e0\\uac10\\uc744 \\uc5bb\\uc5c8\\uc2b5\\ub2c8\\ub2e4.&rdquo;<\\/p>\\r\\n<p>2020\\ub144 1\\uc6d4 \\uc124\\ub9bd\\ub41c Dareesoft\\ub294 \\uc138\\uacc4 \\ucd5c\\ucd08\\ub85c AI \\uae30\\ubc18 \\ub3c4\\ub85c \\uc704\\ud5d8 \\uc815\\ubcf4 \\uc11c\\ube44\\uc2a4\\ub97c \\uc0c1\\uc6a9\\ud654\\ud588\\uc2b5\\ub2c8\\ub2e4. \\ud604\\uc7ac 34\\uba85\\uc758 \\uc784\\uc9c1\\uc6d0 \\uc911 70%\\uac00 \\uc5f0\\uad6c\\uac1c\\ubc1c \\uc778\\ub825\\uc73c\\ub85c \\uc5c5\\uacc4\\uc758 \\uae00\\ub85c\\ubc8c \\ub9ac\\ub529\\uae30\\uc5c5\\uc73c\\ub85c \\uc131\\uc7a5\\ud558\\uace0 \\uc788\\uc2b5\\ub2c8\\ub2e4. \\ub2e4\\ub9ac\\uc18c\\ud504\\ud2b8\\ub294 \\uc9c0\\ub09c\\ud574 \\ub9d0 55\\uc5b5\\uc6d0 \\uaddc\\ubaa8\\uc758 \\uc2dc\\ub9ac\\uc988A \\ud22c\\uc790\\ub97c \\uc720\\uce58\\ud588\\ub2e4. \\ub2e4\\ub9ac\\uc18c\\ud504\\ud2b8\\ub294 \\uc62c\\ud574 \\ubbf8\\uad6d \\ubc95\\uc778 \\uc124\\ub9bd \\ub4f1 \\uae00\\ub85c\\ubc8c \\uc9c4\\ucd9c\\uc5d0 \\ubc15\\ucc28\\ub97c \\uac00\\ud560 \\uc608\\uc815\\uc774\\ub2e4.<\\/p>\"}]}', '{\"en\": \"uploads/2023/12/28/mission_658d841d71ca6.jpg\", \"kr\": \"uploads/2023/12/28/mission_658d841d71ca6.jpg\"}', 'press', 'both', 'A', 'N', '2024-01-05', 1, '2024-01-05 01:10:15', '2024-01-29 11:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_enquiries`
--

DROP TABLE IF EXISTS `newsletter_enquiries`;
CREATE TABLE IF NOT EXISTS `newsletter_enquiries` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `newsletter_enquiries_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

DROP TABLE IF EXISTS `offices`;
CREATE TABLE IF NOT EXISTS `offices` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `language` enum('en','kr','both') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `offices_admin_id_foreign` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `name`, `map`, `phone`, `fax`, `email`, `address`, `language`, `status`, `admin_id`, `created_at`, `updated_at`) VALUES
(2, '{\"en\": \"Dareesoft Inc.\", \"kr\": \"다리소프트(주)\"}', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12682.229758174313!2d127.113131!3d37.3766474!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b590545d2db37%3A0x4e61ef70f68b98c7!2z64uk66as7IaM7ZSE7Yq4!5e0!3m2!1sen!2sin!4v1701344564857!5m2!1sen!2sin', '+82 31-726-8601~2', '+82 31-726-8601~2', 'riaas@dareesoft.com', '{\"en\": \"4F, N Tower Garden Building, 26, Hwangsaeul-ro 200beon-gil, Bundang-gu, Seongnam-si, Gyeonggi-do, Republic of Korea\", \"kr\": \"경기도 성남시 분당구 황새울로200번길 26 N타워 가든빌딩 4층\"}', 'both', 'A', 1, '2023-12-31 10:57:21', '2023-12-31 10:57:21'),
(3, '{\"en\": \"Dareesoft North America Inc.\", \"kr\": \"Dareesoft North America Inc.\"}', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3073.5868675199727!2d-105.02213542510442!3d39.613988071579854!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x876c8032be76b895%3A0x90709ba2b8c77aa2!2s2679%20Main%20St%20300%20728%2C%20Littleton%2C%20CO%2080120%2C%20USA!5e0!3m2!1sen!2sin!4v1701344805191!5m2!1sen!2sin', '+1-720-226-9003', NULL, NULL, '{\"en\": \"2679 West Main Street, Suite #300-728, Littleton, Colorado 80120, USA\", \"kr\": \"2679 West Main Street, Suite #300-728, 리틀턴, 콜로라도 80120, 미국\"}', 'both', 'A', 1, '2023-12-31 10:59:55', '2023-12-31 10:59:55');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `lang` enum('en','kr') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_code_unique` (`code`),
  KEY `pages_admin_id_foreign` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `code`, `template`, `name`, `slug`, `path`, `seo`, `content`, `lang`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, '8f1e8a93-0122-4a48-8eda-54ffe14d2e75', 'home', 'Home', 'home', '/', '{\"metaTitle\":\"Dareesoft\",\"metaDescription\":\"Welcome to Dareesoft\"}', '{\"banner\":{\"heading1\":\"We Make Your Road Safer\",\"heading2\":\"by Providing Road Hazard Information\",\"counterText\":\"Total Hazards Detected by RiaaS\",\"counterUnit\":\"K\",\"image\":\"uploads\\/2023\\/12\\/26\\/video_658a8738633f0.mp4\"},\"section2\":{\"headingRed\":\"RiaaS\",\"heading\":\"Provides You\",\"subHeading\":\"Road hazard information as a Service\",\"cards\":[{\"head\":\"Road Hazard Detection\",\"description\":\"<p>RiaaS automatically detects 12+ hazards including pothole in any vehicle.<\\/p>\",\"image\":\"uploads\\/2023\\/12\\/26\\/road-hazard-detection_658a87046ee0c.jpg\"},{\"head\":\"Instant Road Condition Data\",\"description\":\"<p>Hazard data is provided in real-time with alerts.<\\/p>\",\"image\":\"uploads\\/2023\\/12\\/26\\/instant-road-condition-data_658a87044e76d.jpg\"},{\"head\":\"On Device AI Road Analyzer\",\"description\":\"<p>Cutting edge device analyzes and transmits road hazards instantly to RiaaS Platform.<\\/p>\",\"image\":\"uploads\\/2023\\/12\\/26\\/on-device-ai-road-analyzer_658a870488933.jpg\"},{\"head\":\"Hazard Image with METADATA\",\"description\":\"<p>High quality images with GPS coordinates, road network, timestamps and object size.<\\/p>\",\"image\":\"uploads\\/2024\\/02\\/01\\/hazard-image_65bbd22b6a819.jpg\"},{\"head\":\"Road Monitoring Dashboard\",\"description\":\"<p>Detected incidents immediately visualized on maps for remote inspection.<\\/p>\",\"image\":\"uploads\\/2024\\/02\\/01\\/road-monitoring-dashboard_65bbd22bef4a2.jpg\"},{\"head\":\"RiaaS API Suite\",\"description\":\"<p>Road hazard data is easily integrated into existing systems with API.<\\/p>\",\"image\":\"uploads\\/2024\\/02\\/01\\/riaas-api-suite_65bbd22bb922f.jpg\"}]},\"section3\":{\"heading\":\"Automate Road Maintenance\",\"headingRed\":\"with RiaaS\",\"subHeading\":\"Lorem Ipsum is simply dummy text of the printing\",\"image\":\"uploads\\/2023\\/12\\/26\\/maintaince_658a9486900f6.png\",\"cards\":[{\"head\":\"Safe\",\"text\":\"Save time, money, and prevent accidents\"},{\"head\":\"Convenient\",\"text\":\"Easily view road conditions at a glance\"},{\"head\":\"Data-driven\",\"text\":\"Make data-driven decisions and prioritize your needs\"},{\"head\":\"Proactive\",\"text\":\"Analyze road for a preemptive maintenance\"},{\"head\":\"Efficient\",\"text\":\"Deploy your workforce to where they\'re really needed\"}]},\"section4\":{\"heading\":\"End-to-End Service\",\"subHeading\":\"From detecting hazards through a dedicated device to delivering analytics in real time\",\"btnText\":\"Learn More\",\"btnLink\":\"\",\"cards\":[{\"head\":\"AI Road Analyzer\",\"image\":\"uploads\\/2023\\/12\\/26\\/ai-road-analyzer-01_658a9619546d0.jpg\",\"cards\":[{\"text\":\"Hazard Detection\",\"icon\":\"uploads\\/2023\\/12\\/26\\/hazard-detection-icon_658a9e0166ec1.svg\"},{\"text\":\"Data Transmission\",\"icon\":\"uploads\\/2024\\/02\\/01\\/data-transmission-icon_65bbdf39a3ef7.svg\"}]},{\"head\":\"Cloud Platform\",\"image\":\"uploads\\/2024\\/02\\/01\\/ai-road-analyzer-02_65bbdfd775d95.jpg\",\"cards\":[{\"text\":\"Data Cleansing\",\"icon\":\"uploads\\/2024\\/02\\/01\\/data-cleansing_65bbe027b50e4.svg\"},{\"text\":\"AI Deep Learning\",\"icon\":\"uploads\\/2024\\/02\\/01\\/ai-deep-learning_65bbe02799785.svg\"},{\"text\":\"GDPR Compliance\",\"icon\":\"\"}]},{\"head\":\"Monitoring Dashboard\",\"image\":\"uploads\\/2024\\/02\\/01\\/monitoring-dashboard_65bbdfd79141f.jpg\",\"cards\":[{\"text\":\"Visualization\",\"icon\":\"uploads\\/2024\\/02\\/01\\/visualization_65bbe0280a7c6.svg\"},{\"text\":\"Statistics\\/Analysis\",\"icon\":\"uploads\\/2024\\/02\\/01\\/statisticsanalysis_65bbe027e673c.svg\"},{\"text\":\"Reporting\",\"icon\":\"uploads\\/2024\\/02\\/01\\/reporting_65bbe027cde95.svg\"}]}]},\"section5\":{\"heading\":\"Client Testimonial\",\"subHeading\":\"RiaaS has already \\r\\nproven its effectiveness\",\"btnText\":\"View More\",\"btnLink\":\"https:\\/\\/kwebmaker.com\\/\"},\"section6\":{\"heading\":\"Latest\",\"headingRed\":\"News Updates\",\"subHeading\":\"Discover the latest stories and updates\"},\"section7\":{\"image\":\"uploads\\/2024\\/01\\/11\\/l-article-3_659fa1c93b782.jpg\"}}', 'en', '2023-12-04 13:18:33', '2024-02-01 12:48:39', 1),
(2, '4cd6ee07-c4e2-4985-9ed7-dbf701bf6868', 'home', 'Home', 'home', '/', '{\"metaTitle\":\"RiaaS\\uac00 \\uac10\\uc9c0\\ud55c \\ucd1d \\uc704\\ud5d8\",\"metaDescription\":\"RiaaS\\uac00 \\uac10\\uc9c0\\ud55c \\ucd1d \\uc704\\ud5d8\"}', '{\"banner\":{\"heading1\":\"\\uc6b0\\ub9ac\\ub294 \\uadc0\\ud558\\uc758 \\ub3c4\\ub85c\\ub97c \\ub354\\uc6b1 \\uc548\\uc804\\ud558\\uac8c \\ub9cc\\ub4ed\\ub2c8\\ub2e4\",\"heading2\":\"\\ub3c4\\ub85c \\uc704\\ud5d8 \\uc815\\ubcf4 \\uc81c\\uacf5\\uc744 \\ud1b5\\ud574\",\"counterText\":\"RiaaS\\uac00 \\uac10\\uc9c0\\ud55c \\ucd1d \\uc704\\ud5d8\",\"counterUnit\":\"\\ucf00\\uc774\",\"image\":\"uploads\\/2023\\/12\\/26\\/video_658a618f9b435.mp4\"},\"section2\":{\"headingRed\":\"RiaaS\",\"heading\":\"\\ub2f9\\uc2e0\\uc5d0\\uac8c \\uc81c\\uacf5\\ud569\\ub2c8\\ub2e4\",\"subHeading\":\"\\uc11c\\ube44\\uc2a4\\ub85c\\uc11c\\uc758 \\ub3c4\\ub85c \\uc704\\ud5d8 \\uc815\\ubcf4\",\"cards\":[{\"head\":\"\\ub3c4\\ub85c \\uc704\\ud5d8 \\uac10\\uc9c0\",\"description\":\"<p>RiaaS\\ub294 \\ubaa8\\ub4e0 \\ucc28\\ub7c9\\uc758 \\uad6c\\ub369\\uc774\\ub97c \\ud3ec\\ud568\\ud558\\uc5ec 12\\uac1c \\uc774\\uc0c1\\uc758 \\uc704\\ud5d8\\uc744 \\uc790\\ub3d9\\uc73c\\ub85c \\uac10\\uc9c0\\ud569\\ub2c8\\ub2e4.<\\/p>\",\"image\":\"\"},{\"head\":\"\\uc989\\uac01\\uc801\\uc778 \\ub3c4\\ub85c \\uc0c1\\ud669 \\ub370\\uc774\\ud130\",\"description\":\"<p>\\uc704\\ud5d8 \\ub370\\uc774\\ud130\\ub294 \\uacbd\\uace0\\uc640 \\ud568\\uaed8 \\uc2e4\\uc2dc\\uac04\\uc73c\\ub85c \\uc81c\\uacf5\\ub429\\ub2c8\\ub2e4.<\\/p>\",\"image\":\"\"},{\"head\":\"\\uc628\\ub514\\ubc14\\uc774\\uc2a4 AI \\ub85c\\ub4dc \\ubd84\\uc11d\\uae30\",\"description\":\"<p>\\ucd5c\\ucca8\\ub2e8 \\uc7a5\\uce58\\ub294 \\ub3c4\\ub85c \\uc704\\ud5d8\\uc744 \\uc989\\uc2dc \\ubd84\\uc11d\\ud558\\uace0 RiaaS \\ud50c\\ub7ab\\ud3fc\\uc73c\\ub85c \\uc804\\uc1a1\\ud569\\ub2c8\\ub2e4.<\\/p>\",\"image\":\"\"},{\"head\":\"\\ub3c4\\ub85c \\uc704\\ud5d8 \\uac10\\uc9c0\",\"description\":\"<p>RiaaS\\ub294 \\ubaa8\\ub4e0 \\ucc28\\ub7c9\\uc758 \\uad6c\\ub369\\uc774\\ub97c \\ud3ec\\ud568\\ud558\\uc5ec 12\\uac1c \\uc774\\uc0c1\\uc758 \\uc704\\ud5d8\\uc744 \\uc790\\ub3d9\\uc73c\\ub85c \\uac10\\uc9c0\\ud569\\ub2c8\\ub2e4.<\\/p>\",\"image\":\"\"}]},\"section3\":{\"heading\":\"\\ub3c4\\ub85c \\uc720\\uc9c0 \\uad00\\ub9ac \\uc790\\ub3d9\\ud654\",\"headingRed\":\"RiaaS\\ub85c\",\"image\":\"\",\"cards\":[{\"head\":\"\\uc548\\uc804\\ud55c\",\"text\":\"\\uc2dc\\uac04\\uacfc \\ub3c8\\uc744 \\uc808\\uc57d\\ud558\\uace0 \\uc0ac\\uace0\\ub97c \\uc608\\ubc29\\ud558\\uc138\\uc694\"},{\"head\":\"\\ud3b8\\ub9ac\\ud55c\",\"text\":\"\\ub3c4\\ub85c \\uc0c1\\ud669\\uc744 \\ud55c\\ub208\\uc5d0 \\uc27d\\uac8c \\ud655\\uc778\\ud558\\uc138\\uc694\"},{\"head\":\"\\ub370\\uc774\\ud130 \\uae30\\ubc18\",\"text\":\"\\ub370\\uc774\\ud130 \\uae30\\ubc18 \\uacb0\\uc815\\uc744 \\ub0b4\\ub9ac\\uace0 \\uc694\\uad6c\\uc0ac\\ud56d\\uc758 \\uc6b0\\uc120\\uc21c\\uc704\\ub97c \\uc815\\ud558\\uc138\\uc694\"},{\"head\":\"\\uc0ac\\uc804 \\uc608\\ubc29\\uc801\\uc778\",\"text\":\"\\ub3c4\\ub85c\\ubd84\\uc11d\\uc744 \\ud1b5\\ud55c \\uc120\\uc81c\\uc801 \\uc720\\uc9c0\\uad00\\ub9ac\"},{\"head\":\"\\ud6a8\\uc728\\uc801\\uc778\",\"text\":\"\\uc778\\ub825\\uc774 \\uc815\\ub9d0\\ub85c \\ud544\\uc694\\ud55c \\uacf3\\uc5d0 \\ubc30\\uce58\\ud558\\uc138\\uc694\"}]},\"section4\":{\"heading\":\"\\uc5d4\\ub4dc\\ud22c\\uc5d4\\ub4dc \\uc11c\\ube44\\uc2a4\",\"subHeading\":\"\",\"btnText\":\"\\ub354 \\uc54c\\uc544\\ubcf4\\uae30\",\"btnLink\":\"https:\\/\\/kwebmaker.com\\/\",\"cards\":[{\"head\":\"AI \\ub3c4\\ub85c \\ubd84\\uc11d\\uae30\",\"image\":\"\",\"cards\":[{\"text\":\"\\uc704\\ud5d8 \\uac10\\uc9c0\",\"icon\":\"\"},{\"text\":\"\\ub370\\uc774\\ud130 \\uc804\\uc1a1\",\"icon\":\"\"}]},{\"head\":\"\\ubaa8\\ub2c8\\ud130\\ub9c1 \\ub300\\uc2dc\\ubcf4\\ub4dc\",\"image\":\"\",\"cards\":[{\"text\":\"\\uc2ec\\uc0c1\",\"icon\":\"\"},{\"text\":\"\\ud1b5\\uacc4\\/\\ubd84\\uc11d\",\"icon\":\"\"},{\"text\":\"\\ubcf4\\uace0\",\"icon\":\"\"}]}]},\"section5\":{\"heading\":\"\\uace0\\uac1d \\ud3c9\\uac00\",\"subHeading\":\"RiaaS\\ub294 \\uc774\\ubbf8 \\uadf8 \\ud6a8\\uc728\\uc131\\uc744 \\uc785\\uc99d\\ud588\\uc2b5\\ub2c8\\ub2e4.\",\"btnText\":\"\\ub354\\ubcf4\\uae30\",\"btnLink\":\"https:\\/\\/kwebmaker.com\\/\"},\"section6\":{\"heading\":\"\\ucd5c\\uc2e0\",\"headingRed\":\"\\ub274\\uc2a4 \\uc5c5\\ub370\\uc774\\ud2b8\",\"subHeading\":\"\\ucd5c\\uc2e0 \\uc2a4\\ud1a0\\ub9ac\\uc640 \\uc5c5\\ub370\\uc774\\ud2b8\\ub97c \\ucc3e\\uc544\\ubcf4\\uc138\\uc694\"},\"section7\":{\"image\":\"\"}}', 'kr', '2023-12-04 13:19:20', '2024-01-29 11:24:28', 1),
(3, '6318fe00-87fd-409b-b3e7-47a2a690fda6', 'whatRiaas', 'What\'s RiaaS', 'what-riaas', '/what-riaas', '{\"metaTitle\":\"What\'s RiaaS\",\"metaDescription\":\"What\'s RiaaS\"}', '{\"banner\":{\"heading\":\"Dareesoft\'s RiaaS is road hazard information service combined with cutting \\r\\nedge technologies, providing 12+ kinds of hazards.\",\"image\":\"uploads\\/2023\\/12\\/26\\/riaas_658ac31be62eb.png\"},\"section2\":{\"heading\":\"What RiaaS Detects\",\"subHeading\":\"Lorem Ipsum is simply\\r\\ndummy text of the printing\",\"cards\":[{\"head\":\"Potholes\",\"image\":\"uploads\\/2023\\/12\\/26\\/potholes_658b03f807dd7.png\"},{\"head\":\"Fatigue Crack\",\"image\":\"uploads\\/2023\\/12\\/26\\/fatigue-crack_658b03f75b16d.jpg\"},{\"head\":\"Vertical Crack\",\"image\":\"uploads\\/2023\\/12\\/26\\/vertical-crack_658b03f7d2c18.jpg\"},{\"head\":\"Horizontal Crack\",\"image\":\"uploads\\/2023\\/12\\/26\\/horizontal-crack_658b03f784ad1.jpg\"},{\"head\":\"Trash\",\"image\":\"uploads\\/2023\\/12\\/26\\/trash_658b03f7ac1ad.jpg\"},{\"head\":\"Broken Guide Pole\",\"image\":\"uploads\\/2023\\/12\\/26\\/broken-guide-pole_658b03f71f1b7.jpg\"}]},\"section3\":{\"headingRed\":\"AI\",\"heading\":\"Road Analyzer\",\"subHeading\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit.\",\"btnText\":\"What\'s Different?\"},\"section4\":{\"heading\":\"Platform\",\"headingRed\":\"RiaaS\",\"subHeading\":\"RiaaS Platform conducts the secondary analysis of data transmitted from the ARA and constructs Big Data.\",\"cards\":[{\"head\":\"Accurate Analysis\",\"image\":\"uploads\\/2023\\/12\\/26\\/accurate-analysis_658b33ac85eda.jpg\",\"icon\":\"uploads\\/2023\\/12\\/26\\/accurate-analysis-icon_658b33ac136b6.svg\"},{\"head\":\"Service Policy\",\"image\":\"uploads\\/2023\\/12\\/26\\/service-policy_658b33acf1271.jpg\",\"icon\":\"uploads\\/2023\\/12\\/26\\/service-policy-icon_658b33acab59b.svg\"},{\"head\":\"Linkage with External Data\",\"image\":\"uploads\\/2023\\/12\\/26\\/linkage-with-external-data_658b33ad4b5b7.jpg\",\"icon\":\"uploads\\/2023\\/12\\/26\\/linkage-icon_658b33ac4cb67.svg\"},{\"head\":\"Big Data\",\"image\":\"uploads\\/2023\\/12\\/26\\/big-data_658b33ad2c26a.jpg\",\"icon\":\"uploads\\/2023\\/12\\/26\\/big-data-icon_658b33ac30c94.svg\"},{\"head\":\"Open API\",\"image\":\"uploads\\/2023\\/12\\/26\\/open-api_658b33accbef3.jpg\",\"icon\":\"uploads\\/2023\\/12\\/26\\/open-api-icon_658b33ac6b1f7.svg\"}]},\"section5\":{\"heading\":\"Monitoring Dashboard\",\"subHeading\":\"Dashboard provides information and statistics service by intuitively monitoring and visualizing road hazard information.\",\"cards\":[{\"head\":\"Initiatives UI\\/UX\",\"image\":\"uploads\\/2023\\/12\\/27\\/monitoring_658bbab4594f3.jpg\"},{\"head\":\"Map-based Search\",\"image\":\"uploads\\/2023\\/12\\/26\\/big-data_658b33ad2c26a.jpg\"},{\"head\":\"Analysis & Statistics\",\"image\":\"uploads\\/2023\\/12\\/27\\/monitoring_658bbab4594f3.jpg\"},{\"head\":\"Real-time Notification\",\"image\":\"uploads\\/2023\\/12\\/27\\/monitoring_658bbab4594f3.jpg\"}]},\"section6\":{\"heading\":\"Works\",\"headingRed\":\"How RiaaS\",\"cards\":[{\"title\":\"AI | lOT\",\"slug\":\"ai-lot\",\"cards\":[{\"iconBlue\":\"uploads\\/2024\\/01\\/23\\/ai-01-blue_65b015b402af1.svg\",\"iconWhite\":\"uploads\\/2024\\/01\\/23\\/ai-01-white_65b015b447bf3.svg\",\"head\":\"Road Data\",\"text\":\"<ul>\\r\\n<li>Detection<\\/li>\\r\\n<li>Collection<\\/li>\\r\\n<li>Transmission<\\/li><\\/ul>\"},{\"iconBlue\":\"uploads\\/2024\\/01\\/23\\/ai-02-blue_65b015b45bff6.svg\",\"iconWhite\":\"uploads\\/2024\\/01\\/23\\/ai-02-white_65b015b472db4.svg\",\"head\":\"Road Hazard Information\",\"text\":\"<ul>\\r\\n<li>Classification<\\/li>\\r\\n<li>In\\/Decreasing<\\/li>\\r\\n<li>Processing<\\/li><\\/ul>\"}]},{\"title\":\"Big Data | Deep Learning\",\"slug\":\"big-data-deep-learning\",\"cards\":[{\"iconBlue\":\"uploads\\/2024\\/01\\/23\\/big-02-blue_65b015b4c363c.svg\",\"iconWhite\":\"uploads\\/2024\\/01\\/23\\/big-02-white_65b015b4d6ed1.svg\",\"head\":\"Big Data\",\"text\":\"<ul>\\r\\n<li>Construction<\\/li>\\r\\n<li>Analysis<\\/li><\\/ul>\"},{\"iconBlue\":\"uploads\\/2024\\/01\\/23\\/big-01-blue_65b015b48d6b2.svg\",\"iconWhite\":\"uploads\\/2024\\/01\\/23\\/big-01-white_65b015b4a8c54.svg\",\"head\":\"Deep Learning\",\"text\":\"<ul>\\r\\n<li>Model Reinforcement<\\/li><\\/ul>\"}]},{\"title\":\"Platform | Service\",\"slug\":\"platform-service\",\"cards\":[{\"iconBlue\":\"uploads\\/2024\\/01\\/23\\/service-blue_65b015b4ec4dd.svg\",\"iconWhite\":\"uploads\\/2024\\/01\\/23\\/service-white_65b015b50d720.svg\",\"head\":\"Service\",\"text\":\"<ul>\\r\\n<li>Advancement<\\/li>\\r\\n<li>Expansion<\\/li><\\/ul>\"}]}]}}', 'en', '2023-12-22 01:02:13', '2024-02-01 14:33:26', 1),
(4, '4c828923-d351-401b-a8c4-18470076f0ad', 'whatRiaas', 'What\'s RiaaS', 'what-riaas', '/what-riaas', '{\"metaTitle\": \"tessss\", \"metaDescription\": \"test\"}', '[]', 'kr', '2023-12-22 01:02:48', '2023-12-22 04:56:05', 1),
(5, '361c2c48-818d-49a3-981b-13b4aa172991', 'useCase', 'Use Case', 'use-case', '/use-case', '{\"metaTitle\":\"Use Case\",\"metaDescription\":\"Use Case\"}', '{\"banner\":{\"heading\":\"Use Cases\",\"subHeading\":\"The Digitalized Road Management, Reduce Social Cost and Lay The \\r\\nFoundation for Smart City\",\"image\":\"uploads\\/2023\\/12\\/27\\/use-cases_658c0d4709502.jpg\"},\"section2\":{\"headingRed\":\"Field\",\"heading\":\"of Use\",\"subHeading\":\"RiaaS is Applicable to Various Industries and Sectors such as Road Maintenance, Autonomous Driving, Smart City, etc.\",\"image\":\"uploads\\/2023\\/12\\/27\\/fou_658c0e2c832f2.png\",\"cards\":[{\"head\":\"Road Maintenance & Management\",\"image\":\"uploads\\/2023\\/12\\/27\\/field01_658c1010bbd59.jpg\"},{\"head\":\"Map & Navigation\",\"image\":\"uploads\\/2023\\/12\\/27\\/field02_658c1010e78a6.jpg\"},{\"head\":\"Insurance\",\"image\":\"uploads\\/2023\\/12\\/27\\/field03_658c101210ca1.jpg\"},{\"head\":\"Autonomous Driving\",\"image\":\"uploads\\/2023\\/12\\/27\\/field04_658c10111b5eb.jpg\"},{\"head\":\"Big Data\",\"image\":\"uploads\\/2023\\/12\\/27\\/field05_658c101142ed7.jpg\"},{\"head\":\"Intelligent Transport System(C-ITS)\",\"image\":\"uploads\\/2023\\/12\\/27\\/field06_658c10116b6d1.jpg\"},{\"head\":\"Smart City\",\"image\":\"uploads\\/2023\\/12\\/27\\/field07_658c101193e89.jpg\"},{\"head\":\"Metaverse & Digital Twin\",\"image\":\"uploads\\/2023\\/12\\/27\\/field08_658c1011ba59c.jpg\"}]},\"section3\":{\"heading\":\"Case Study\",\"subHeading\":\"These cities have used RiaaS and enhanced their road safety\"}}', 'en', '2023-12-22 01:03:40', '2024-02-01 14:38:52', 1),
(6, '835d71e2-d5ba-4ee6-95dc-ad6b573c1725', 'useCase', 'Use Case', 'use-case', '/use-case', '{\"metaTitle\": \"twetseg\", \"metaDescription\": \"tsesdfewt\"}', '[]', 'kr', '2023-12-22 01:03:53', '2023-12-22 04:58:40', 1),
(7, '6f8227e0-d37e-4d6e-98ed-d23d33419d81', 'company', 'Company', 'company', '/company', '{\"metaTitle\":\"DareeSoft - Company\",\"metaDescription\":\"DareeSoft - Company\"}', '{\"banner\":{\"heading\":\"Company Overview\",\"subHeading\":\"With a dream to be a bridge connecting technology and people, the present\\r\\nand the future, Dareesoft INC. was founded on 2020.\",\"image\":\"uploads\\/2023\\/12\\/28\\/company_658d83a0da1dd.jpg\"},\"section2\":{\"visionHeading\":\"Vision\",\"visionDescription\":\"<p><span>To become a Worldwide Leader,<\\/span> providing road hazard information services and road data for autonomous driving in real-time.<\\/p>\",\"visionImage\":\"uploads\\/2023\\/12\\/28\\/vission_658d841d90c72.jpg\",\"missionHeading\":\"Mission\",\"missionDescription\":\"<p>To accelerate the well-being of humanity and <span>improves the quality of life<\\/span> through Smart Technology Realization.<\\/p>\",\"missionImage\":\"uploads\\/2023\\/12\\/28\\/mission_658d841d71ca6.jpg\"},\"section3\":{\"heading\":\"Milestone\",\"description\":\"<p>Dareesoft has been selected for many start-up accelerating programs such as TIPS, ZER01NE ACCELERATOR, IBK Chang-gong, KDB NextOne, and commericialized RiaaS service through national projects.<\\/p>\\r\\n<p>At the end of 2021, RiaaS was designated as an innovative product by the Public Procurement Service in recognition of its technological innovation.<\\/p>\",\"image\":\"uploads\\/2023\\/12\\/28\\/milestone_658d86172ab34.jpg\"},\"section4\":{\"heading\":\"Leadership\"},\"section5\":{\"heading\":\"Location\"}}', 'en', '2023-12-22 01:04:25', '2024-02-01 14:40:32', 1),
(8, '9b81b0c0-7a1f-4138-8884-cad982a62f84', 'company', 'Company', 'company', '/company', '{\"metaTitle\": \"DareeSoft - Company\", \"metaDescription\": \"DareeSoft - Company\"}', '{\"banner\": {\"image\": \"uploads/2023/12/28/company_658d83a0da1dd.jpg\", \"heading\": \"Company Overview\", \"subHeading\": \"Company Overview With a dream to be a bridge connecting technology and people, the present and the future, Dareesoft INC. was founded on 2020.\"}, \"section2\": {\"visionImage\": \"uploads/2023/12/28/vission_658d841d90c72.jpg\", \"missionImage\": \"uploads/2023/12/28/mission_658d841d71ca6.jpg\", \"visionHeading\": \"Vision\", \"missionHeading\": \"Mission\", \"visionDescription\": \"<p>To become a Worldwide Leader, providing road hazard information services and road data for autonomous driving in real-time.</p>\", \"missionDescription\": \"<p>To accelerate the well-being of humanity and improves the quality of life through Smart Technology Realization.</p>\"}, \"section3\": {\"image\": \"uploads/2023/12/28/milestone_658d86172ab34.jpg\", \"heading\": \"Milestone\", \"description\": \"<p>Dareesoft has been selected for many start-up accelerating programs such as TIPS, ZER01NE ACCELERATOR, IBK Chang-gong, KDB NextOne, and commericialized RiaaS service through national projects.</p>\\r\\n<p>At the end of 2021, RiaaS was designated as an innovative product by the Public Procurement Service in recognition of its technological innovation.</p>\"}, \"section4\": {\"heading\": \"Leadership\"}, \"section5\": {\"heading\": \"Location\"}}', 'kr', '2023-12-22 01:04:31', '2024-01-23 06:16:03', 1),
(9, 'dcb06718-9970-443a-8f6d-40929ce00eb3', 'news', 'News', 'news', '/news', '{\"metaTitle\": \"DareeSoft - News\", \"metaDescription\": \"DareeSoft - News\"}', '{\"section1\": {\"image\": \"uploads/2024/01/03/news_659504221c79c.jpg\", \"heading\": \"Featured News\"}, \"section3\": {\"heading\": \"Sign Up for Our Newsletter\", \"subHeading\": \"Get the latest news from Dareesoft in your inbox.\"}}', 'en', '2023-12-22 01:05:01', '2024-01-07 12:50:09', 1),
(10, '05893335-8e20-4867-a01a-03621e68b5ac', 'news', 'News', 'news', '/news', '{\"metaTitle\": \"DareeSoft - News\", \"metaDescription\": \"DareeSoft - News\"}', '{\"section1\": {\"heading\": \"Featured News\"}, \"section2\": {\"heading\": \"Sign Up for Our Newsletter\", \"subHeading\": \"Get the latest news from Dareesoft in your inbox.\"}}', 'kr', '2023-12-22 01:05:06', '2024-01-03 00:37:40', 1),
(11, '00226bcb-c92b-45af-bb43-b2400d92efa2', 'contactUs', 'Contact Us', 'contact-us', '/contact-us', '{\"metaTitle\": \"Contact Us\", \"metaDescription\": \"Contact Us\"}', '{\"section1\": {\"heading\": \"Us\", \"headingRed\": \"Contact\", \"subHeading\": \"Feel like contacting us? Submits your queries here and \\r\\nwe will get back to you as soon as possible.\"}, \"section2\": {\"heading\": \"Address\", \"headingRed\": \"Our Office\"}}', 'en', '2023-12-31 13:25:34', '2024-01-22 01:38:07', 1),
(12, 'da7fc927-6a13-4ed5-b691-289c868b68d9', 'contactUs', 'Contact Us', 'contact-us', '/contact-us', '{\"metaTitle\": \"Contact Us\", \"metaDescription\": \"Contact Us\"}', '{\"section1\": {\"heading\": \"우리를\", \"headingRed\": \"연락하다\", \"subHeading\": \"저희에게 연락하고 싶으신가요? 여기에 귀하의 질문을 제출하고\\r\\n우리는 가능한 한 빨리 당신에게 돌아올 것입니다.\"}, \"section2\": {\"heading\": \"주소\", \"headingRed\": \"우리 사무실\"}}', 'kr', '2023-12-31 13:26:12', '2024-01-22 01:49:59', 1),
(13, '677ef08d-309c-40c1-9cd6-a63e2c431d71', 'career', 'Career', 'career', '/career', '{\"metaTitle\": \"Career\", \"metaDescription\": \"Career\"}', '{\"section1\": {\"image\": \"uploads/2024/01/11/bannerimg_659fa1e998245.jpg\", \"heading\": \"Grow. Improve. Succeed.\", \"subHeading\": \"Embrace the leader within you and leave an indelible impression \\r\\non your CEO that surpasses even your own imagination.\"}, \"section2\": {\"heading\": \"Career\", \"headingRed\": \"Opportunities\", \"description\": \"<p>If you cannot find the desired position, please share your resume with us on&nbsp;<a href=\\\"mailto:careers@dareesoft.com\\\">careers@dareesoft.com</a>&nbsp;to apply.</p>\"}, \"section3\": {\"heading\": \"Sign Up for Our Newsletter\", \"subHeading\": \"Get the latest news from Dareesoft in your inbox\"}}', 'en', '2024-01-11 06:04:39', '2024-01-20 04:26:48', 1),
(14, '00e93542-ccc6-4b88-be67-e6b0832c5f5f', 'career', 'Career', 'career', '/career', '[]', '[]', 'kr', '2024-01-11 06:04:48', '2024-01-11 06:04:48', 1),
(15, '077c7eb1-b20b-40a7-a738-c6ec98e5272c', 'blog', 'Blog', 'blog', '/blog', '{\"metaTitle\": \"DareeSoft Blogs\", \"metaDescription\": \"DareeSoft Blogs\"}', '{\"section1\": {\"latest\": \"LATEST ARTICLE\", \"btnText\": \"Load More\", \"popular\": \"POPULAR\", \"trending\": \"TRENDING\", \"shareText\": \"Share Article\"}}', 'en', '2024-01-11 06:09:08', '2024-01-28 12:24:11', 1),
(16, '803a3231-4a5b-489b-8c6d-2985102f1cba', 'blog', 'Blog', 'blog', '/blog', '{\"metaTitle\": \"DareeSoft 블로그\", \"metaDescription\": \"DareeSoft 블로그\"}', '{\"section1\": {\"latest\": \"최신 기사\", \"btnText\": \"더 로드하기\", \"popular\": \"인기 있는\", \"trending\": \"인기 급상승\", \"shareText\": \"기사 공유\"}}', 'kr', '2024-01-11 06:09:14', '2024-01-28 12:24:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `page_testimonial`
--

DROP TABLE IF EXISTS `page_testimonial`;
CREATE TABLE IF NOT EXISTS `page_testimonial` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `testimonial_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `page_testimonial_page_id_foreign` (`page_id`),
  KEY `page_testimonial_testimonial_id_foreign` (`testimonial_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`),
  KEY `permissions_created_by_foreign` (`created_by`),
  KEY `permissions_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `language` enum('en','kr','both') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_code_unique` (`code`),
  KEY `products_admin_id_foreign` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `features`, `properties`, `language`, `status`, `admin_id`, `created_at`, `updated_at`, `code`, `text`) VALUES
(1, '{\"en\": \"ARA 20\", \"kr\": \"아라 20\"}', '{\"en\": \"<p>Dareesoft&#39;s first AI Road Analyzer, ARA 20 is embedded with a powerful and ultralight AI model. This detects 12+ types of road hazards and transmits the information to RiaaS Platform.</p>\", \"kr\": \"<p>Dareesoft의 첫 번째 AI 도로 분석기인 ARA 20에는 강력하고 초경량 AI 모델이 내장되어 있습니다. 이는 12가지 이상의 도로 위험 유형을 감지하고 해당 정보를 RiaaS 플랫폼으로 전송합니다.</p>\"}', '{\"en\": \"uploads/2024/01/08/riaas_659b90a77a772.png\", \"kr\": \"uploads/2024/01/08/riaas_659b90a77a772.png\"}', '{\"en\": [{\"head\": \"In-Vehicle Mounting\", \"text\": \"\", \"image\": \"uploads/2024/01/08/in-vehicle-mounting_659b96bd0ff37.svg\"}, {\"head\": \"On-Device AI\", \"text\": \"\", \"image\": \"uploads/2024/01/08/on-device-ai_659b96bd4d938.svg\"}], \"kr\": [{\"head\": \"차량 내 장착\", \"text\": \"\", \"image\": \"uploads/2024/01/08/in-vehicle-mounting_659b96bd0ff37.svg\"}, {\"head\": \"온디바이스 AI\", \"text\": \"\", \"image\": \"uploads/2024/01/08/on-device-ai_659b96bd4d938.svg\"}]}', '{\"029f8ec9-74c7-49c6-866a-2e5bea95806a\": {\"en\": \"Qualcomm SDA845 (1.8 TOPs)\", \"kr\": \"퀄컴 SDA845 (1.8 TOP)\"}, \"39c1929e-b7db-4093-bacf-0288eedc2507\": {\"en\": \"hello\", \"kr\": \"\"}, \"4a8ed8c1-a09b-467d-b58f-a8ee5f1ad37a\": {\"en\": \"USB3.0/WIFI/BT\", \"kr\": \"USB3.0/와이파이/BT\"}, \"55084688-fb67-432c-acd5-b5a0f0e96eb9\": {\"en\": \"Specified for Road Surface\", \"kr\": \"노면에 따라 지정됨\"}, \"9baf5a02-9881-401c-904d-f8f8f9e7ad83\": {\"en\": \"2CH\", \"kr\": \"2CH\"}, \"c5430968-d118-443c-aa1b-5045ad87f311\": {\"en\": \"12+ types / 15fps\", \"kr\": \"12가지 이상의 유형 / 15fps\"}, \"d0eeb8ff-e1e7-4597-b15f-d8063d6eea0d\": {\"en\": \"LTE test\", \"kr\": \"\"}, \"d82fb339-e44e-443d-936d-bfbaa821585d\": {\"en\": \"Front\", \"kr\": \"앞쪽\"}, \"f7375ffb-15b9-4664-b69f-bacc9a71cadd\": {\"en\": \"General GNSS (±2m)\", \"kr\": \"일반 GNSS (±2m)\"}}', 'both', 'A', 1, '2024-01-24 15:02:04', '2024-01-26 02:49:39', 'a97f0820-3bce-40c3-9d92-89840c4e3139', '{\"en\": \"\", \"kr\": \"\"}'),
(2, '{\"en\": \"ARA 20+\", \"kr\": \"아라 20\"}', '{\"en\": \"<p>ARA 20+ is an advanced version. This is being developed with a model 8 times faster, 5 channels of camera, and 20+ detection items. ARA 20+ will launch in Q1, 2024.</p>\", \"kr\": \"<p>Dareesoft의 첫 번째 AI 도로 분석기인 ARA 20에는 강력하고 초경량 AI 모델이 내장되어 있습니다. 이는 12가지 이상의 도로 위험 유형을 감지하고 해당 정보를 RiaaS 플랫폼으로 전송합니다.</p>\"}', '{\"en\": \"uploads/2024/01/08/riaas_659b90a77a772.png\", \"kr\": \"uploads/2024/01/08/riaas_659b90a77a772.png\"}', '[]', '{\"029f8ec9-74c7-49c6-866a-2e5bea95806a\": {\"en\": \"Qualcomm QCS8250 (15 TOPs)\", \"kr\": \"퀄컴 SDA845 (1.8 TOP)\"}, \"39c1929e-b7db-4093-bacf-0288eedc2507\": {\"en\": \"hello\", \"kr\": \"\"}, \"4a8ed8c1-a09b-467d-b58f-a8ee5f1ad37a\": {\"en\": \"USB3.1/UART/Ethernet/WIFI/BT\", \"kr\": \"USB3.0/와이파이/BT\"}, \"55084688-fb67-432c-acd5-b5a0f0e96eb9\": {\"en\": \"Road Surface and Road Surroundings\", \"kr\": \"노면에 따라 지정됨\"}, \"9baf5a02-9881-401c-904d-f8f8f9e7ad83\": {\"en\": \"5CH\", \"kr\": \"2CH\"}, \"c5430968-d118-443c-aa1b-5045ad87f311\": {\"en\": \"20+ types / 20fps\", \"kr\": \"12가지 이상의 유형 / 15fps\"}, \"d0eeb8ff-e1e7-4597-b15f-d8063d6eea0d\": {\"en\": \"LTE / 5G\", \"kr\": \"\"}, \"d82fb339-e44e-443d-936d-bfbaa821585d\": {\"en\": \"Front / Rear / Side\", \"kr\": \"앞쪽\"}, \"f7375ffb-15b9-4664-b69f-bacc9a71cadd\": {\"en\": \"Precise GNSS (±0.2m)\", \"kr\": \"일반 GNSS (±2m)\"}}', 'both', 'A', 1, '2024-01-24 15:02:04', '2024-01-25 06:12:05', 'a97f0820-3bce-40c3-9d92-89840c4e3140', '{\"en\": \"Coming soon\", \"kr\": \"\"}'),
(3, '{\"en\": \"ARA 20+\", \"kr\": \"아라 20\"}', '{\"en\": \"<p>ARA 20+ is an advanced version. This is being developed with a model 8 times faster, 5 channels of camera, and 20+ detection items. ARA 20+ will launch in Q1, 2024.</p>\", \"kr\": \"<p>Dareesoft의 첫 번째 AI 도로 분석기인 ARA 20에는 강력하고 초경량 AI 모델이 내장되어 있습니다. 이는 12가지 이상의 도로 위험 유형을 감지하고 해당 정보를 RiaaS 플랫폼으로 전송합니다.</p>\"}', '{\"en\": \"uploads/2024/01/08/riaas_659b90a77a772.png\", \"kr\": \"uploads/2024/01/08/riaas_659b90a77a772.png\"}', '{\"en\": [], \"kr\": []}', '{\"029f8ec9-74c7-49c6-866a-2e5bea95806a\": {\"en\": \"Qualcomm QCS8250 (15 TOPs)\", \"kr\": \"퀄컴 SDA845 (1.8 TOP)\"}, \"39c1929e-b7db-4093-bacf-0288eedc2507\": {\"en\": \"hello\", \"kr\": \"\"}, \"4a8ed8c1-a09b-467d-b58f-a8ee5f1ad37a\": {\"en\": \"USB3.1/UART/Ethernet/WIFI/BT\", \"kr\": \"USB3.0/와이파이/BT\"}, \"55084688-fb67-432c-acd5-b5a0f0e96eb9\": {\"en\": \"Road Surface and Road Surroundings\", \"kr\": \"노면에 따라 지정됨\"}, \"9baf5a02-9881-401c-904d-f8f8f9e7ad83\": {\"en\": \"5CH\", \"kr\": \"2CH\"}, \"c5430968-d118-443c-aa1b-5045ad87f311\": {\"en\": \"20+ types / 20fps\", \"kr\": \"12가지 이상의 유형 / 15fps\"}, \"d0eeb8ff-e1e7-4597-b15f-d8063d6eea0d\": {\"en\": \"LTE / 5G\", \"kr\": \"\"}, \"d82fb339-e44e-443d-936d-bfbaa821585d\": {\"en\": \"Front / Rear / Side\", \"kr\": \"앞쪽\"}, \"f7375ffb-15b9-4664-b69f-bacc9a71cadd\": {\"en\": \"Precise GNSS (±0.2m)\", \"kr\": \"일반 GNSS (±2m)\"}}', 'both', 'D', 1, '2024-01-24 15:02:04', '2024-01-28 20:47:30', 'a97f0820-3bce-40c3-9d92-89840c4e3141', '{\"en\": \"\", \"kr\": \"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `product_properties`
--

DROP TABLE IF EXISTS `product_properties`;
CREATE TABLE IF NOT EXISTS `product_properties` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nameEn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nameKr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_properties_code_unique` (`code`),
  KEY `product_properties_admin_id_foreign` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_properties`
--

INSERT INTO `product_properties` (`id`, `nameEn`, `nameKr`, `status`, `admin_id`, `created_at`, `updated_at`, `code`) VALUES
(1, 'Main Target', '주요 타겟', 'A', 1, '2024-01-24 02:26:02', '2024-01-24 02:26:02', '55084688-fb67-432c-acd5-b5a0f0e96eb9'),
(2, 'Detection Range', '감지 범위', 'A', 1, '2024-01-24 02:27:31', '2024-01-24 02:27:31', 'd82fb339-e44e-443d-936d-bfbaa821585d'),
(3, 'AI-Analyzing Objects', 'AI-객체 분석', 'A', 1, '2024-01-24 02:27:44', '2024-01-24 02:27:44', 'c5430968-d118-443c-aa1b-5045ad87f311'),
(4, 'CPU / AI Performance', 'CPU/AI 성능', 'A', 1, '2024-01-24 02:27:58', '2024-01-24 02:27:58', '029f8ec9-74c7-49c6-866a-2e5bea95806a'),
(5, 'Camera Channels', '카메라 채널', 'A', 1, '2024-01-24 02:28:09', '2024-01-24 02:28:09', '9baf5a02-9881-401c-904d-f8f8f9e7ad83'),
(6, 'GNSS', 'GPS', 'A', 1, '2024-01-24 02:28:21', '2024-01-24 02:28:21', 'f7375ffb-15b9-4664-b69f-bacc9a71cadd'),
(7, 'Wireless Support', '무선 지원', 'A', 1, '2024-01-24 02:28:32', '2024-01-24 02:28:32', 'd0eeb8ff-e1e7-4597-b15f-d8063d6eea0d'),
(8, 'Interface', '상호 작용', 'A', 1, '2024-01-24 02:28:44', '2024-01-24 02:28:44', '4a8ed8c1-a09b-467d-b58f-a8ee5f1ad37a'),
(9, 'test', 'test', 'D', 1, '2024-01-25 01:04:47', '2024-01-25 01:42:34', '39c1929e-b7db-4093-bacf-0288eedc2507');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`),
  KEY `roles_created_by_foreign` (`created_by`),
  KEY `roles_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `settings_admin_id_foreign` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `options`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'mail-smtp', '{\"host\": \"smtp.googlemail.com\", \"port\": \"587\", \"password\": \"hhqnppurcqusutih\", \"username\": \"amitkashte1593@gmail.com\"}', 1, '2024-01-13 18:49:56', '2024-01-22 03:50:45'),
(2, 'mail-career-enquiry', '{\"subject\": \"DareeSoft - Job Application\", \"ccEmails\": \"amitkashte93@gmail.com\", \"toEmails\": \"amit@kwebmaker.com\"}', 1, '2024-01-13 18:49:56', '2024-01-22 13:00:09'),
(3, 'mail-contact-enquiry', '{\"subject\": \"DareeSoft - Contact Enquiry\", \"ccEmails\": \"\", \"toEmails\": \"amit@kwebmaker.com\"}', 1, '2024-01-13 18:49:56', '2024-01-22 09:27:46');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `year` year(4) NOT NULL,
  `language` enum('en','kr','both') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('A','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`),
  KEY `testimonials_admin_id_foreign` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `title`, `content`, `year`, `language`, `status`, `created_at`, `updated_at`, `admin_id`, `image`) VALUES
(1, '{\"en\": \"Seoul Metropolitan City\", \"kr\": \"\"}', '{\"en\": \"This is the most innovative solution for road management.\", \"kr\": \"\"}', 2023, 'en', 'A', '2023-12-21 14:55:06', '2023-12-26 02:27:00', 1, '{\"en\": \"uploads/2023/12/26/01_658a8714df57a.jpg\", \"kr\": \"\"}'),
(2, '{\"en\":\"Gwangju Metropolitan City\",\"kr\":\"\\uad11\\uc8fc\\uad11\\uc5ed\\uc2dc \\ub0a8\\uad6c\"}', '{\"en\":\"RiaaS has made work much more productive. The need to dispatch engineers on the road and number of complaints filed by citizens reduced significantly. Road situation is immediately available through the application which enables proactiveness in serving the citizens.\",\"kr\":\"RiaaS\\ub294 \\uc791\\uc5c5\\uc758 \\uc0dd\\uc0b0\\uc131\\uc744 \\ud6e8\\uc52c \\ub354 \\ub192\\uc5ec\\uc8fc\\uc5c8\\uc2b5\\ub2c8\\ub2e4. \\uc5d4\\uc9c0\\ub2c8\\uc5b4\\ub97c \\ub3c4\\ub85c\\uc5d0 \\ud30c\\uacac\\ud574\\uc57c \\ud560 \\ud544\\uc694\\uc131\\uacfc \\uc2dc\\ubbfc\\uc758 \\ubd88\\ub9cc \\uc0ac\\ud56d\\uc774 \\ud06c\\uac8c \\uac10\\uc18c\\ud588\\uc2b5\\ub2c8\\ub2e4.\"}', 2022, 'both', 'A', '2023-12-21 14:56:13', '2024-01-29 07:58:52', 1, '{\"en\":\"uploads\\/2024\\/01\\/29\\/screenshot-2024-01-29-153317_65b747128a011.png\",\"kr\":\"uploads\\/2023\\/12\\/26\\/01_658a8714df57a.jpg\"}'),
(3, '{\"en\":\"Korea Expressway Corporation\",\"kr\":\"\\ud55c\\uad6d\\ub3c4\\ub85c\\uacf5\\uc0ac\"}', '{\"en\":\"We see a big potential in RiaaS when it comes to solving the most consistent problems on our roads\",\"kr\":\"\\uc6b0\\ub9ac\\ub294 \\ub3c4\\ub85c\\uc5d0\\uc11c \\uac00\\uc7a5 \\uc77c\\uad00\\ub41c \\ubb38\\uc81c\\ub97c \\ud574\\uacb0\\ud558\\ub294 \\ub370 \\uc788\\uc5b4 RiaaS\\uc758 \\ud070 \\uc7a0\\uc7ac\\ub825\\uc744 \\ubd05\\ub2c8\\ub2e4.\"}', 2023, 'both', 'A', '2023-12-21 14:57:27', '2024-01-29 07:50:02', 1, '{\"en\": \"uploads/2023/12/26/01_658a8714df57a.jpg\", \"kr\": \"uploads/2023/12/26/01_658a8714df57a.jpg\"}'),
(4, '{\"en\":\"Uijeongbu City\",\"kr\":\"Uijeongbu City\"}', '{\"en\":\"It is very convenient and productive. You can identify potholes by image, location, size, priority all from your workstation without having to be on the road.\",\"kr\":\"It is very convenient and productive. You can identify potholes by image, location, size, priority all from your workstation without having to be on the road.\"}', 2023, 'both', 'A', '2023-12-26 01:10:05', '2024-01-29 08:04:05', 1, '{\"en\":\"uploads\\/2024\\/01\\/29\\/flag-of-uijeongbusvg_65b75bb05f090.png\",\"kr\":\"uploads\\/2024\\/01\\/29\\/flag-of-uijeongbusvg_65b75bb05f090.png\"}'),
(5, '{\"en\":\"Hwaseong City\",\"kr\":\"Hwaseong City\"}', '{\"en\":\"We are very satisfied with the high level of technology that RiaaS has and excited to see the positive impact it will have in increasing our citizens\\u2019 safety.\",\"kr\":\"We are very satisfied with the high level of technology that RiaaS has and excited to see the positive impact it will have in increasing our citizens\\u2019 safety.\"}', 2022, 'both', 'A', '2024-01-29 08:05:31', '2024-01-29 08:05:31', 1, '{\"en\":\"uploads\\/2024\\/01\\/29\\/hwaseong_65b7439651130.png\",\"kr\":\"uploads\\/2024\\/01\\/29\\/hwaseong_65b7439651130.png\"}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD CONSTRAINT `blog_categories_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `case_studies`
--
ALTER TABLE `case_studies`
  ADD CONSTRAINT `case_studies_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `country_master`
--
ALTER TABLE `country_master`
  ADD CONSTRAINT `country_master_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `job_enquiries`
--
ALTER TABLE `job_enquiries`
  ADD CONSTRAINT `job_enquiries_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `leaderships`
--
ALTER TABLE `leaderships`
  ADD CONSTRAINT `leaderships_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `media_libraries`
--
ALTER TABLE `media_libraries`
  ADD CONSTRAINT `media_libraries_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `media_libraries_media_library_group_id_foreign` FOREIGN KEY (`media_library_group_id`) REFERENCES `media_library_groups` (`id`);

--
-- Constraints for table `media_library_groups`
--
ALTER TABLE `media_library_groups`
  ADD CONSTRAINT `media_library_groups_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `milestones`
--
ALTER TABLE `milestones`
  ADD CONSTRAINT `milestones_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `offices`
--
ALTER TABLE `offices`
  ADD CONSTRAINT `offices_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `page_testimonial`
--
ALTER TABLE `page_testimonial`
  ADD CONSTRAINT `page_testimonial_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `page_testimonial_testimonial_id_foreign` FOREIGN KEY (`testimonial_id`) REFERENCES `testimonials` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `permissions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `admins` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_properties`
--
ALTER TABLE `product_properties`
  ADD CONSTRAINT `product_properties_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `roles_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `admins` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
