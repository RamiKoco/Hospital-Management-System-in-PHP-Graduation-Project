-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 09 Nis 2023, 22:20:17
-- Sunucu sürümü: 10.1.38-MariaDB
-- PHP Sürümü: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `hms`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `updationDate` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'admin1234', '27-01-2023 08:46:59 AM');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `appointmentTime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(4, 'Genel Cerrahi', 6, 2, 2000, '2023-01-30', '11:15 AM', '2023-01-27 08:15:27', 1, 1, NULL),
(5, 'Dahiliye', 7, 4, 1500, '2023-01-31', '11:30 AM', '2023-01-27 08:21:03', 1, 1, NULL),
(6, 'Radyoloji', 1, 4, 540, '2023-01-28', '1:45 PM', '2023-01-28 10:38:33', 1, 0, '2023-01-28 10:39:16');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `doctorName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` longtext CHARACTER SET utf8,
  `docFees` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Radyoloji', 'Kağan', 'B-70', '540', 142536250, 'kagan@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-10-30 18:16:52', '2023-01-27 07:41:47'),
(4, 'Test', 'Ali', 'B-79', '740', 11112222222, 'ali@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-01-27 03:23:56', '2023-01-27 08:07:37'),
(5, 'Ortopedi', 'Mehmet', 'BZ-54', '800', 1470269, 'mehmet12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-01-27 07:38:26', '2023-01-27 08:07:44'),
(6, 'Genel Cerrahi', 'Hülya', 'D108', '2000', 123456789, 'hulya@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-01-27 07:41:13', '2023-01-27 08:07:49'),
(7, 'Dahiliye', 'Özlem', 'D208', '1500', 1470268, 'ozlem@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-01-27 07:44:46', '2023-01-27 08:07:53'),
(8, 'Dermatoloji', 'Selin', 'BZ49', '890', 1470262, 'selin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-01-27 07:56:13', '2023-01-27 08:07:58');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, NULL, 'gfdgdf', 0x3a3a3100000000000000000000000000, '2022-11-04 01:02:16', NULL, 0),
(21, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 11:59:40', '06-11-2022 05:35:18 PM', 1),
(22, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:06:37', '06-11-2022 05:36:40 PM', 1),
(23, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:08:56', '06-11-2022 05:42:53 PM', 1),
(24, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:23:18', '06-11-2022 05:53:40 PM', 1),
(25, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:16:53', '06-11-2022 06:47:07 PM', 1),
(26, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:17:33', '06-11-2022 06:50:28 PM', 1),
(27, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-01-26 23:34:15', '27-01-2023 01:49:43 AM', 1),
(28, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-01-27 06:55:44', NULL, 1),
(29, NULL, 'selin@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 07:48:47', NULL, 0),
(30, NULL, 'selin@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 07:48:58', NULL, 0),
(31, NULL, 'selin@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 07:49:20', NULL, 0),
(32, NULL, 'selin@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 07:50:05', NULL, 0),
(33, NULL, 'selin@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 07:50:12', NULL, 0),
(34, NULL, 'ali@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 07:50:47', NULL, 0),
(35, NULL, 'Selin', 0x3a3a3100000000000000000000000000, '2023-01-27 07:51:08', NULL, 1),
(36, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2023-01-27 07:51:27', NULL, 0),
(37, 1, 'kagan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 07:51:54', '27-01-2023 08:53:54 AM', 1),
(38, NULL, 'selin@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 07:56:47', NULL, 1),
(41, NULL, 'selin@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 07:59:42', NULL, 0),
(42, NULL, 'selin@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 08:03:16', NULL, 0),
(43, NULL, 'ali@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 08:03:42', NULL, 0),
(44, NULL, 'ali@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 08:04:08', NULL, 0),
(45, NULL, 'selin@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 08:04:26', NULL, 0),
(46, NULL, 'Özlem', 0x3a3a3100000000000000000000000000, '2023-01-27 08:05:11', NULL, 0),
(47, 1, 'kagan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 08:07:25', '27-01-2023 09:08:06 AM', 1),
(48, 8, 'selin@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 08:08:18', '27-01-2023 09:12:14 AM', 1),
(49, 8, 'selin@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 08:45:49', NULL, 1),
(50, NULL, 'kagan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 09:50:18', NULL, 0),
(51, 1, 'kagan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 09:50:34', '27-01-2023 10:52:40 AM', 1),
(52, 1, 'kagan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 10:08:00', NULL, 1),
(53, 1, 'kagan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-28 09:29:30', '28-01-2023 10:32:39 AM', 1),
(54, 1, 'kagan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-28 10:36:54', '28-01-2023 11:37:51 AM', 1),
(55, 1, 'kagan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-28 10:38:57', '28-01-2023 11:39:34 AM', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Ortopedi', '2022-10-30 18:09:46', '2023-01-27 07:09:01'),
(2, 'Dahiliye', '2022-10-30 18:09:57', '2023-01-27 07:09:32'),
(4, 'Dermatoloji', '2022-10-30 18:10:28', '2023-01-27 07:09:58'),
(6, 'Radyoloji', '2022-10-30 18:10:46', '2023-01-27 07:15:10'),
(7, 'Genel Cerrahi', '2022-10-30 18:10:56', '2023-01-27 07:11:12'),
(19, 'Test_1', '2023-01-27 07:36:48', '2023-01-27 07:37:03');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext CHARACTER SET utf8,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext CHARACTER SET utf8,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Hasan Ali', 'hasan@gmail.com', 1425362514, 'Bu test amaçlıdır. Bu test amaçlıdır.Bu test amaçlıdır.', '2022-10-30 16:52:03', 'ssssssssss', '2023-01-27 08:06:04', 1),
(2, 'Murat', 'murat@gmail.com', 1111122233, 'Bu test amaçlıdır. Bu test amaçlıdır.Bu test amaçlıdır.', '2022-11-06 13:13:41', 'Contact the patient', '2023-01-27 08:06:18', 1),
(3, 'Rami', 'rami@rami.com', 44444444, '', '2023-01-27 09:46:59', NULL, NULL, NULL),
(4, 'Cemal', 'cemal@cemal.com', 3333333333, '', '2023-01-27 09:48:51', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `BloodSugar` varchar(200) CHARACTER SET utf8 NOT NULL,
  `Weight` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Temperature` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `MedicalPres` mediumtext CHARACTER SET utf8,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 1, '80/120', '120', '85', '98', 'Test', '2022-11-06 13:19:41'),
(2, 2, '120', '74', '67', '37', 'ddddddddddddddddddddddddddddd', '2023-01-27 09:52:07');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `PageTitle` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `PageDescription` mediumtext CHARACTER SET utf8,
  `Email` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `OpenningTime` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(1, 'I\'ve been working for many years without losing excitement in softwaredevelopment. In the light of my professional and educational life savings,\r\nI would like to stress that I would be more than happy', 'Hakkımızda', '<div><span style=\"color: rgb(51, 51, 51); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Hastane Yönetim Sistemi Hastane bilgi sistemi hastanenin idari ve tıbbi bilgilerinin yönetimini kolaylaştırmak ve sağlık hizmetlerinin kalitesini yükseltmek için düzenlenmiş bir bilgi sistemi olarak tanımlanabilir. İdari ve tıbbi bilgileri iç içe bir şekilde, bir arada tutabilen sistemlere bütünleşik hastane bilgi sistemleri denir</span><br></div>', NULL, NULL, '2020-05-20 07:21:52', NULL),
(2, 'contactus', 'Bize Ulaşın', 'I\'ve been working for many years without losing excitement in softwaredevelopment. In the light of my professional and educational life savings,\r\nI would like to stress that I would be more than happy to take over theresponsibilities that the position requires, in a position where I can add value toyour business.', 'ramikoco333433@gmail.com', 5378615345, '2020-05-20 07:24:07', '9 am To 8 Pm');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `PatientGender` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PatientAdd` mediumtext CHARACTER SET utf8,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext CHARACTER SET utf8,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Hasan Ali', 1231231230, 'hasan@gmail.com', 'Erkek', 'Ankara', 35, 'NA', '2022-11-06 13:18:31', '2023-01-27 10:08:25'),
(2, 1, 'Samet Uçal', 111111111, 'samet@gmail.com', 'Erkek', 'İst.', 26, 'sssssss', '2023-01-27 00:48:31', '2023-01-27 08:06:42'),
(3, 8, 'Mustafa', 3333333333, 'mustafa@mustafa.com', 'Erkek', 'aaaaaaa', 44, 'xxxxx', '2023-01-27 08:10:06', NULL),
(4, 8, 'Meltem', 4444444444, 'meltem@meltem.com', 'Kadın', 'ccccc', 32, 'xxxx', '2023-01-27 08:10:38', NULL),
(5, 8, 'Ceyda', 2222222222, '22ceyda@gmail.com', 'Kadın', 'sssss', 28, 'xcccc', '2023-01-27 08:11:09', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(6, NULL, 'ramikoco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-26 15:47:18', NULL, 0),
(8, NULL, 'rami koco', 0x3a3a3100000000000000000000000000, '2023-01-26 21:22:37', NULL, 0),
(9, NULL, 'ramikoco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-26 21:23:02', NULL, 0),
(10, NULL, 'ramikoco333433@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-26 21:27:21', NULL, 0),
(11, NULL, 'rami@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-26 21:27:56', NULL, 0),
(12, NULL, 'rami@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-26 21:28:08', NULL, 0),
(14, NULL, 'ramikoco333433@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-26 21:32:52', NULL, 0),
(18, NULL, 'ramikoco333433@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 08:13:23', NULL, 0),
(19, NULL, 'ramikoco333433@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 08:14:00', NULL, 0),
(20, NULL, 'ramikoco333433@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 08:14:37', NULL, 0),
(21, 2, 'ramikoco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 08:14:51', '27-01-2023 09:17:17 AM', 1),
(22, 2, 'ramikoco@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-27 08:17:41', '27-01-2023 09:17:53 AM', 1),
(23, NULL, 'seda@seda.com', 0x3a3a3100000000000000000000000000, '2023-01-27 08:19:31', NULL, 0),
(24, NULL, 'seda@seda.com', 0x3a3a3100000000000000000000000000, '2023-01-27 08:19:53', NULL, 0),
(25, 4, 'seda@seda.com', 0x3a3a3100000000000000000000000000, '2023-01-27 08:20:43', NULL, 1),
(26, 4, 'seda@seda.com', 0x3a3a3100000000000000000000000000, '2023-01-27 08:44:20', '27-01-2023 09:45:26 AM', 1),
(27, 4, 'seda@seda.com', 0x3a3a3100000000000000000000000000, '2023-01-27 09:49:49', '27-01-2023 10:50:04 AM', 1),
(28, 4, 'seda@seda.com', 0x3a3a3100000000000000000000000000, '2023-01-28 09:24:12', '28-01-2023 10:29:11 AM', 1),
(29, 4, 'seda@seda.com', 0x3a3a3100000000000000000000000000, '2023-01-28 10:35:20', '28-01-2023 11:36:32 AM', 1),
(30, 4, 'seda@seda.com', 0x3a3a3100000000000000000000000000, '2023-01-28 10:38:05', '28-01-2023 11:38:42 AM', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` longtext CHARACTER SET utf8,
  `city` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, 'Rami Koco', 'Şişli/Feriköy', 'İstanbul', 'Erkek', 'ramikoco@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2022-11-06 13:15:32', '0000-00-00 00:00:00'),
(4, 'Seda', 'kku', 'Kırıkkale', 'Kadın', 'seda@seda.com', '12345678', '2023-01-27 08:19:11', NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Tablo için AUTO_INCREMENT değeri `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
