-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 15 2020 г., 11:44
-- Версия сервера: 10.4.14-MariaDB
-- Версия PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `journal`
--

-- --------------------------------------------------------

--
-- Структура таблицы `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `GRADEGROUPFK` int(2) DEFAULT NULL,
  `LITER` varchar(1) DEFAULT NULL,
  `GRADENAME` varchar(10) DEFAULT NULL,
  `GRADEMARK` varchar(6) DEFAULT NULL,
  `LEARNINGORDER` int(1) DEFAULT NULL,
  `STUDYDURATION` int(2) DEFAULT NULL,
  `GRADEHEAD` varchar(32) DEFAULT NULL,
  `EDUPERIODFK` varchar(10) DEFAULT NULL,
  `ADDID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `grades`
--

INSERT INTO `grades` (`id`, `GRADEGROUPFK`, `LITER`, `GRADENAME`, `GRADEMARK`, `LEARNINGORDER`, `STUDYDURATION`, `GRADEHEAD`, `EDUPERIODFK`, `ADDID`) VALUES
(1, 7, 'Б', '7Б', 'normal', 1, 11, 'CA600E34AA0C434ABA75998041C3EB3A', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `lessontimes`
--

CREATE TABLE `lessontimes` (
  `lessonNumber` int(11) NOT NULL,
  `lessonTime` time NOT NULL,
  `lessonDuration` time NOT NULL,
  `lessonTimeShort` time NOT NULL,
  `lessonShortDur` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `lessontimes`
--

INSERT INTO `lessontimes` (`lessonNumber`, `lessonTime`, `lessonDuration`, `lessonTimeShort`, `lessonShortDur`) VALUES
(1, '08:30:00', '09:15:00', '08:30:00', '09:00:00'),
(2, '09:20:00', '10:05:00', '09:05:00', '09:35:00'),
(3, '10:15:00', '10:50:00', '09:45:00', '10:15:00'),
(4, '11:10:00', '11:55:00', '10:25:00', '10:55:00'),
(5, '12:10:00', '12:55:00', '11:05:00', '11:35:00'),
(6, '13:00:00', '13:45:00', '11:40:00', '12:10:00'),
(7, '13:50:00', '14:35:00', '12:15:00', '12:45:00'),
(8, '14:45:00', '15:25:00', '12:55:00', '12:25:00'),
(9, '15:45:00', '16:30:00', '12:35:00', '13:05:00'),
(10, '16:45:00', '17:30:00', '12:35:00', '13:05:00'),
(11, '17:35:00', '18:20:00', '13:10:00', '13:40:00');

-- --------------------------------------------------------

--
-- Структура таблицы `marksall`
--

CREATE TABLE `marksall` (
  `UNUIQE_ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `lessonName` varchar(120) NOT NULL,
  `teacher` varchar(220) NOT NULL,
  `mark` varchar(11) NOT NULL,
  `comment` varchar(520) NOT NULL,
  `studid` int(11) NOT NULL,
  `lessonId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `marksall`
--

INSERT INTO `marksall` (`UNUIQE_ID`, `date`, `lessonName`, `teacher`, `mark`, `comment`, `studid`, `lessonId`) VALUES
(6, '2020-11-16', 'Информатика', '1', '5', 'Молодец!', 1, 1),
(7, '2020-11-16', 'Физика', '3', '4', 'Хорошо', 1, 2),
(8, '2020-11-16', 'Физкультура', '2', '3', 'За подтягивания', 1, 3),
(9, '2020-11-16', 'Биология', '4', '5', 'Молодец!', 1, 4),
(10, '2020-11-17', 'История', '5', '2', 'Не учил', 1, 5),
(11, '2020-11-17', 'Физика', '3', '3', 'плохо', 1, 6),
(12, '2020-11-17', 'Биология', '4', '3', 'плохо', 1, 7),
(13, '2020-11-18', 'Физкультура', '2', '4', 'хорошо', 1, 8),
(14, '2020-11-18', 'Математика', '1', '5', 'Молодец!', 1, 9),
(15, '2020-11-18', 'История', '5', '2', 'не выучил', 1, 10),
(16, '2020-11-18', 'Физкультура', '2', '5', '', 1, 11),
(17, '2020-11-19', 'История', '5', '5', '', 1, 12),
(18, '2020-11-19', 'Биология', '4', '3', '', 1, 13),
(19, '2020-11-19', 'Физкультура', '2', '3', '', 1, 14),
(20, '2020-11-20', 'Физика', '3', '5', '', 1, 15),
(21, '2020-11-20', 'Физкультура', '2', '4', '', 1, 16),
(22, '2020-11-20', 'Математика', '1', '5', 'Молодец!', 1, 17),
(23, '2020-11-20', 'Информатика', '1', '4', '', 1, 18),
(24, '2020-11-21', 'История', '5', '4', '', 1, 19),
(25, '2020-11-21', 'Физика', '3', '4', '', 1, 20),
(26, '2020-11-21', 'Физкультура', '2', '2', 'не сдал норматив', 1, 21);

-- --------------------------------------------------------

--
-- Структура таблицы `paraticipants`
--

CREATE TABLE `paraticipants` (
  `classid` int(11) NOT NULL,
  `PARTICIPANTID` int(10) NOT NULL,
  `SURNAME` varchar(6) DEFAULT NULL,
  `NAME` varchar(6) DEFAULT NULL,
  `SECONDNAME` varchar(7) DEFAULT NULL,
  `DOCUMENTTYPEFK` int(1) DEFAULT NULL,
  `DOCUMENTSERIES` varchar(4) DEFAULT NULL,
  `DOCUMENTNUMBER` bigint(11) DEFAULT NULL,
  `SNILS` varchar(15) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL,
  `BIRTHDAY` varchar(10) DEFAULT NULL,
  `EXPINFO` varchar(10) DEFAULT NULL,
  `ROLEFK` varchar(11) DEFAULT NULL,
  `RETIRED` varchar(10) DEFAULT NULL,
  `APPID` varchar(10) DEFAULT NULL,
  `COMMAND` varchar(24) DEFAULT NULL,
  `PARTPARENTFK` varchar(32) DEFAULT NULL,
  `PARTPARENT2FK` varchar(32) DEFAULT NULL,
  `LEGAL_AGENT` varchar(32) DEFAULT NULL,
  `BEGDATE` varchar(10) DEFAULT NULL,
  `JOINTCODE` varchar(10) DEFAULT NULL,
  `FCTGUID` varchar(39) DEFAULT NULL,
  `EGECITIZENSHIPFK` varchar(10) DEFAULT NULL,
  `D_LIMITEDPOTENTFK` int(1) DEFAULT NULL,
  `ADDID` varchar(10) DEFAULT NULL,
  `PARTICIPANT_INVALID` varchar(10) DEFAULT NULL,
  `INVALID_EDU` varchar(10) DEFAULT NULL,
  `ADRESS` varchar(35) DEFAULT NULL,
  `GONEFLAG` int(1) DEFAULT NULL,
  `CON_REG_ID` varchar(10) DEFAULT NULL,
  `CON_FED_ID` varchar(10) DEFAULT NULL,
  `CON_REG_ERR` varchar(10) DEFAULT NULL,
  `MOBILE` varchar(10) DEFAULT NULL,
  `DATA_DOC` varchar(10) DEFAULT NULL,
  `REC_DOC` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `paraticipants`
--

INSERT INTO `paraticipants` (`classid`, `PARTICIPANTID`, `SURNAME`, `NAME`, `SECONDNAME`, `DOCUMENTTYPEFK`, `DOCUMENTSERIES`, `DOCUMENTNUMBER`, `SNILS`, `SEX`, `BIRTHDAY`, `EXPINFO`, `ROLEFK`, `RETIRED`, `APPID`, `COMMAND`, `PARTPARENTFK`, `PARTPARENT2FK`, `LEGAL_AGENT`, `BEGDATE`, `JOINTCODE`, `FCTGUID`, `EGECITIZENSHIPFK`, `D_LIMITEDPOTENTFK`, `ADDID`, `PARTICIPANT_INVALID`, `INVALID_EDU`, `ADRESS`, `GONEFLAG`, `CON_REG_ID`, `CON_FED_ID`, `CON_REG_ERR`, `MOBILE`, `DATA_DOC`, `REC_DOC`) VALUES
(1, 1, 'Петров', 'Сергей', 'Юрьевич', 1, 'I-РА', 903759, '000-000-000 01', 'М', '27.01.2005', NULL, 'participant', NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, '{F026E8BF-25B9-4317-A801-D92F75B50894} ', NULL, NULL, NULL, NULL, NULL, 'Улица Родимцева дом 200 кв 99', 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `parents`
--

CREATE TABLE `parents` (
  `PARTICIPANTID` int(11) NOT NULL,
  `SURNAME` varchar(10) DEFAULT NULL,
  `NAME` varchar(4) DEFAULT NULL,
  `SECONDNAME` varchar(7) DEFAULT NULL,
  `DOCUMENTTYPEFK` int(1) DEFAULT NULL,
  `DOCUMENTSERIES` varchar(10) DEFAULT NULL,
  `DOCUMENTNUMBER` varchar(10) DEFAULT NULL,
  `SNILS` varchar(14) DEFAULT NULL,
  `SEX` varchar(10) DEFAULT NULL,
  `BIRTHDAY` varchar(8) DEFAULT NULL,
  `ROLEFK` varchar(10) DEFAULT NULL,
  `APPID` varchar(10) DEFAULT NULL,
  `AGREEMENT` varchar(10) DEFAULT NULL,
  `EMAIL` varchar(10) DEFAULT NULL,
  `PHONE` varchar(10) DEFAULT NULL,
  `ADDID` varchar(10) DEFAULT NULL,
  `WORKPLACE` varchar(10) DEFAULT NULL,
  `WORKSTATE` varchar(10) DEFAULT NULL,
  `MOBILE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `parents`
--

INSERT INTO `parents` (`PARTICIPANTID`, `SURNAME`, `NAME`, `SECONDNAME`, `DOCUMENTTYPEFK`, `DOCUMENTSERIES`, `DOCUMENTNUMBER`, `SNILS`, `SEX`, `BIRTHDAY`, `ROLEFK`, `APPID`, `AGREEMENT`, `EMAIL`, `PHONE`, `ADDID`, `WORKPLACE`, `WORKSTATE`, `MOBILE`) VALUES
(1, 'Мещерякова', 'Нина', 'Юрьевна', 1, NULL, NULL, '153-153-153 77', NULL, '2/2/1987', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `schedule_2020.11.16_1`
--

CREATE TABLE `schedule_2020.11.16_1` (
  `UNUIQE_ID` int(11) NOT NULL,
  `DATE_SCHEDULE` date DEFAULT NULL,
  `NUMBERFK` varchar(32) DEFAULT NULL,
  `CABINETFK` varchar(10) DEFAULT NULL,
  `lessonName` varchar(120) NOT NULL,
  `TOPIC` varchar(32) DEFAULT NULL,
  `TPLFK` varchar(32) DEFAULT NULL,
  `PERIODFK` varchar(32) DEFAULT NULL,
  `HOMEWORK` varchar(190) DEFAULT NULL,
  `GRADETYPEFK` varchar(49) DEFAULT NULL,
  `LESSONTYPEFK` varchar(10) DEFAULT NULL,
  `HIDDEN` int(1) DEFAULT NULL,
  `ISCUSTOM` int(1) DEFAULT NULL,
  `ISREPLACE` varchar(10) DEFAULT NULL,
  `TEACHER` varchar(10) DEFAULT NULL,
  `NEW_TEACHER` varchar(10) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `schedule_2020.11.16_1`
--

INSERT INTO `schedule_2020.11.16_1` (`UNUIQE_ID`, `DATE_SCHEDULE`, `NUMBERFK`, `CABINETFK`, `lessonName`, `TOPIC`, `TPLFK`, `PERIODFK`, `HOMEWORK`, `GRADETYPEFK`, `LESSONTYPEFK`, `HIDDEN`, `ISCUSTOM`, `ISREPLACE`, `TEACHER`, `NEW_TEACHER`, `url`) VALUES
(1, '2020-11-16', '1', '30', 'Информатика и ИКТ', 'Кибербезопасность в сети интерне', '2020-2021', '19', 'Составить список базовых правил ', NULL, 'Очный', 0, 1, '0', '1', '0', NULL),
(2, '2020-11-16', '2', '30', 'Физика', 'Движение', '2020-2021', '19', 'Подготовиться к тестированию по прошлой теме', NULL, 'Очный', 0, 1, '0', '3', '0', NULL),
(3, '2020-11-16', '3', '30', 'Физкультура', '', '2020-2021', '19', '', NULL, 'Очный', 0, 1, '0', '2', '0', NULL),
(4, '2020-11-16', '4', '30', 'Биология', 'Клетки и эукариоты', '2020-2021', '19', 'пф. 23 стр 32', NULL, 'Очный', 0, 1, '0', '4', '0', NULL),
(5, '2020-11-17', '1', '30', 'История', 'Методы истории', '2020-2021', '19', 'пф. 16 стр 45', NULL, 'Очный', 0, 1, '0', '5', '0', 'https://zoom.us/ru-ru/meetings.html'),
(6, '2020-11-17', '2', '30', 'Физика', 'Ток и его законы', '2020-2021', '19', 'пф. 10 стр 23', NULL, 'Очный', 0, 1, '0', '3', '0', NULL),
(7, '2020-11-17', '3', '30', 'Биология', 'Грибы', '2020-2021', '19', 'пф. 10 стр 63', NULL, 'Очный', 0, 1, '0', '4', '0', NULL),
(8, '2020-11-18', '1', '30', 'Физкультура', '', '2020-2021', '19', '', NULL, 'Очный', 0, 1, '0', '2', '0', NULL),
(9, '2020-11-18', '2', '30', 'Математика', 'Исследование функции', '2020-2021', '19', 'пф. 14 стр 32', NULL, 'Очный', 0, 1, '0', '2', '0', NULL),
(10, '2020-11-18', '3', '30', 'История', 'История древнего Египта', '2020-2021', '19', '', NULL, 'Очный', 0, 1, '0', '5', '0', NULL),
(11, '2020-11-18', '4', '30', 'Физкультура', '', '2020-2021', '19', '', NULL, 'Очный', 0, 1, '0', '2', '0', NULL),
(12, '2020-11-19', '1', '30', 'История', 'История древней Греции', '2020-2021', '19', '', NULL, 'Очный', 0, 1, '0', '5', '0', NULL),
(13, '2020-11-19', '2', '30', 'Биология', 'Деление клеток', '2020-2021', '19', '', NULL, 'Очный', 0, 1, '0', '4', '0', NULL),
(14, '2020-11-19', '3', '30', 'Физкультура', '', '2020-2021', '19', '', NULL, 'Очный', 0, 1, '0', '2', '0', NULL),
(15, '2020-11-20', '1', '30', 'Физика', 'История древнего Египта', '2020-2021', '19', '', NULL, 'Очный', 0, 1, '0', '3', '0', NULL),
(16, '2020-11-20', '2', '30', 'Физкультура', '', '2020-2021', '19', '', NULL, 'Очный', 0, 1, '0', '2', '0', NULL),
(17, '2020-11-20', '3', '30', 'Математика', 'Решение логарифмов', '2020-2021', '19', '', NULL, 'Очный', 0, 1, '0', '1', '0', NULL),
(18, '2020-11-20', '4', '30', 'Информатика', 'Язык программирования python', '2020-2021', '19', '', NULL, 'Очный', 0, 1, '0', '1', '0', NULL),
(19, '2020-11-21', '1', '30', 'История', 'Первая мировая война', '2020-2021', '19', '', NULL, 'Очный', 0, 1, '0', '5', '0', NULL),
(20, '2020-11-21', '2', '30', 'Физика', 'Закон Ньютона', '2020-2021', '19', '', NULL, 'Очный', 0, 1, '0', '3', '0', NULL),
(21, '2020-11-21', '3', '30', 'Физкультура', '', '2020-2021', '19', '', NULL, 'Очный', 0, 1, '0', '2', '0', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `schools`
--

CREATE TABLE `schools` (
  `SCHOOLID` int(6) DEFAULT NULL,
  `SCHOOLNUM` varchar(10) DEFAULT NULL,
  `SCHOOLNAME` varchar(150) DEFAULT NULL,
  `SHORTNAME` varchar(13) DEFAULT NULL,
  `SCHOOLTYPEFK` int(1) DEFAULT NULL,
  `SCHOOLKINDFK` varchar(3) DEFAULT NULL,
  `GOVERNMENTFK` int(8) DEFAULT NULL,
  `UR_POSTINDEX` varchar(10) DEFAULT NULL,
  `UR_ADDRESS` varchar(10) DEFAULT NULL,
  `NASPUNKT` varchar(10) DEFAULT NULL,
  `FAKT_POSTINDEX` varchar(10) DEFAULT NULL,
  `FAKT_ADDRESS` varchar(10) DEFAULT NULL,
  `SCPOSITION` varchar(8) DEFAULT NULL,
  `FIO` varchar(23) DEFAULT NULL,
  `PHONECODE` int(5) DEFAULT NULL,
  `PHONES` int(5) DEFAULT NULL,
  `FAXS` varchar(10) DEFAULT NULL,
  `MAILS` varchar(18) DEFAULT NULL,
  `ALLPEOPLE` varchar(10) DEFAULT NULL,
  `PEOPLE11` varchar(10) DEFAULT NULL,
  `PEOPLE10` varchar(10) DEFAULT NULL,
  `TITLESP` varchar(12) DEFAULT NULL,
  `FIOSP` varchar(25) DEFAULT NULL,
  `MAILSP` varchar(18) DEFAULT NULL,
  `PHONESP` int(5) DEFAULT NULL,
  `URL` varchar(19) DEFAULT NULL,
  `LICNUMBER` varchar(14) DEFAULT NULL,
  `LICBEGINDATE` varchar(10) DEFAULT NULL,
  `LICREGNUMBER` int(4) DEFAULT NULL,
  `LICENDDATE` varchar(10) DEFAULT NULL,
  `SVIDAKNUMBER` varchar(14) DEFAULT NULL,
  `SVIDAKREGNUMBER` int(4) DEFAULT NULL,
  `SVIDAKBEGINDATE` varchar(10) DEFAULT NULL,
  `SVIDAKENDDATE` varchar(10) DEFAULT NULL,
  `DELETEDATE` varchar(10) DEFAULT NULL,
  `DELETEREASON` varchar(10) DEFAULT NULL,
  `STATIONCODE` varchar(10) DEFAULT NULL,
  `PCENTERFK` varchar(10) DEFAULT NULL,
  `FCTGUID` varchar(38) DEFAULT NULL,
  `INTOM` int(1) DEFAULT NULL,
  `OLDEGEPPLS` int(1) DEFAULT NULL,
  `ISVIRT` int(1) DEFAULT NULL,
  `HASVIDEO` int(1) DEFAULT NULL,
  `TOP100` int(1) DEFAULT NULL,
  `ISFILIAL` int(1) DEFAULT NULL,
  `PARENTFK` varchar(10) DEFAULT NULL,
  `GOSREGNUM` bigint(13) DEFAULT NULL,
  `INN` bigint(10) DEFAULT NULL,
  `ISCHECKED` int(1) DEFAULT NULL,
  `NY_ACCEPT_EXCEPTION` int(1) DEFAULT NULL,
  `FAKT_STREET` varchar(10) DEFAULT NULL,
  `FAKT_HOUSE` varchar(10) DEFAULT NULL,
  `FAKT_HOUSING` varchar(10) DEFAULT NULL,
  `FAKT_ADDRESSCORRECT` int(1) DEFAULT NULL,
  `APPID` varchar(10) DEFAULT NULL,
  `AREAFK` int(8) DEFAULT NULL,
  `LATITUDE` varchar(10) DEFAULT NULL,
  `LONGITUDE` varchar(10) DEFAULT NULL,
  `TOWNTYPEFK` varchar(10) DEFAULT NULL,
  `REGIONFK` varchar(10) DEFAULT NULL,
  `MINISTRYFK` varchar(10) DEFAULT NULL,
  `SYS_XXX` varchar(10) DEFAULT NULL,
  `BRANCH_TYPE` varchar(10) DEFAULT NULL,
  `SCHOOLPROPERTYFK` varchar(10) DEFAULT NULL,
  `PKPHONE` varchar(10) DEFAULT NULL,
  `TERMLESS` varchar(10) DEFAULT NULL,
  `ADDID` varchar(10) DEFAULT NULL,
  `ESIA_OID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `schools`
--

INSERT INTO `schools` (`SCHOOLID`, `SCHOOLNUM`, `SCHOOLNAME`, `SHORTNAME`, `SCHOOLTYPEFK`, `SCHOOLKINDFK`, `GOVERNMENTFK`, `UR_POSTINDEX`, `UR_ADDRESS`, `NASPUNKT`, `FAKT_POSTINDEX`, `FAKT_ADDRESS`, `SCPOSITION`, `FIO`, `PHONECODE`, `PHONES`, `FAXS`, `MAILS`, `ALLPEOPLE`, `PEOPLE11`, `PEOPLE10`, `TITLESP`, `FIOSP`, `MAILSP`, `PHONESP`, `URL`, `LICNUMBER`, `LICBEGINDATE`, `LICREGNUMBER`, `LICENDDATE`, `SVIDAKNUMBER`, `SVIDAKREGNUMBER`, `SVIDAKBEGINDATE`, `SVIDAKENDDATE`, `DELETEDATE`, `DELETEREASON`, `STATIONCODE`, `PCENTERFK`, `FCTGUID`, `INTOM`, `OLDEGEPPLS`, `ISVIRT`, `HASVIDEO`, `TOP100`, `ISFILIAL`, `PARENTFK`, `GOSREGNUM`, `INN`, `ISCHECKED`, `NY_ACCEPT_EXCEPTION`, `FAKT_STREET`, `FAKT_HOUSE`, `FAKT_HOUSING`, `FAKT_ADDRESSCORRECT`, `APPID`, `AREAFK`, `LATITUDE`, `LONGITUDE`, `TOWNTYPEFK`, `REGIONFK`, `MINISTRYFK`, `SYS_XXX`, `BRANCH_TYPE`, `SCHOOLPROPERTYFK`, `PKPHONE`, `TERMLESS`, `ADDID`, `ESIA_OID`) VALUES
(100005, NULL, 'Муниципальное бюджетное общеобразовательное учреждение \"Средняя общеобразовательная школа №5 имени А.Н.Лавкова\" города Сорочинска Оренбургской области', 'МБОУ \"СОШ №5\"', 5, '5.3', 20205610, NULL, NULL, NULL, NULL, NULL, 'Директор', 'Займак Олег Анатольевич', 35346, 60063, NULL, 'sorobr-5@yandex.ru', NULL, NULL, NULL, 'Методист ИКТ', 'Ревун Алевтина Витальевна', 'sorobr-5@yandex.ru', 60063, 'http://sorobr-5.ru/', '56Л01 №0005170', '2017-05-02', 3160, NULL, '56А01 №0004019', 2359, '2017-05-22', '2029-05-22', NULL, NULL, NULL, NULL, '{2ED1625A-CA27-4692-9B47-FB1E9C169346}', 0, 0, 0, 0, 0, 0, NULL, 1165658064945, 5617022518, 0, 0, NULL, NULL, NULL, 0, NULL, 20205610, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `specialities`
--

CREATE TABLE `specialities` (
  `SPECIALITIESID` int(2) DEFAULT NULL,
  `VAKCODE` varchar(8) DEFAULT NULL,
  `SPECIALITIESNAME` varchar(63) DEFAULT NULL,
  `D` varchar(10) DEFAULT NULL,
  `E` varchar(10) DEFAULT NULL,
  `F` varchar(10) DEFAULT NULL,
  `G` varchar(10) DEFAULT NULL,
  `H` varchar(10) DEFAULT NULL,
  `I` varchar(10) DEFAULT NULL,
  `J` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `specialities`
--

INSERT INTO `specialities` (`SPECIALITIESID`, `VAKCODE`, `SPECIALITIESNAME`, `D`, `E`, `F`, `G`, `H`, `I`, `J`) VALUES
(0, '0', 'Нет', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, '01.00.00', 'Физико-математические науки', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '10.00.00', 'Филологические науки', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '11.00.00', 'Географические науки (не имеют внутренней рубрикации)', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '12.00.00', 'Юридические науки', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '13.00.00', 'Педагогические науки', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '14.00.00', 'Медицинские науки', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '15.00.00', 'Фармацевтические науки', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '16.00.00', 'Ветеринарные науки', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '17.00.00', 'Искусствоведение', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '18.00.00', 'Архитектура', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '19.00.00', 'Психологические науки', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '02.00.00', 'Химические науки', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '20.00.00', 'Военные науки (не имеют внутренней рубрикации)', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '22.00.00', 'Социологические науки', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '23.00.00', 'Политические науки', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '24.00.00', 'Культурология науки', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '25.00.00', 'Науки о Земле', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '03.00.00', 'Биологические науки', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '04.00.00', 'Геолого-минералогические науки (не имеют внутренней рубрикации)', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '05.00.00', 'Технические науки', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '06.00.00', 'Сельскохозяйственные науки', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '07.00.00', 'Исторические науки', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '08.00.00', 'Экономические науки', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '09.00.00', 'Философские науки', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

CREATE TABLE `teachers` (
  `UI` int(10) NOT NULL,
  `SURNAME` varchar(10) DEFAULT NULL,
  `NAME` varchar(6) DEFAULT NULL,
  `SECONDNAME` varchar(10) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL,
  `BIRTHDAY` date DEFAULT NULL,
  `BIRTHPLACE` varchar(36) DEFAULT NULL,
  `DOCUMENTTYPEFK` int(1) DEFAULT NULL,
  `DOCUMENTSERIES` int(4) DEFAULT NULL,
  `DOCUMENTNUMBER` int(6) DEFAULT NULL,
  `PEDSTAG` int(2) DEFAULT NULL,
  `SENIORITY` int(2) DEFAULT NULL,
  `NAGR` varchar(10) DEFAULT NULL,
  `EDULEVELFK` varchar(32) DEFAULT NULL,
  `DIPSPECIALITY` varchar(62) DEFAULT NULL,
  `CATEGORYFK` varchar(10) DEFAULT NULL,
  `DEGREEFK` int(1) DEFAULT NULL,
  `SPECIALITYFK` varchar(10) DEFAULT NULL,
  `ACSTATUSFK` varchar(32) DEFAULT NULL,
  `DATELASTATT` varchar(10) DEFAULT NULL,
  `NSOTFLAG` int(1) DEFAULT NULL,
  `NSOTCATEGORY` int(1) DEFAULT NULL,
  `PDATE` varchar(10) DEFAULT NULL,
  `PSUBJECTCODE` varchar(10) DEFAULT NULL,
  `IKTPOVDATE` varchar(10) DEFAULT NULL,
  `NAGRUZ` varchar(10) DEFAULT NULL,
  `UCHCOUNT` varchar(10) DEFAULT NULL,
  `AVGCONT` varchar(10) DEFAULT NULL,
  `IKTPOVHOURS2` varchar(10) DEFAULT NULL,
  `SNILS` varchar(14) DEFAULT NULL,
  `ROLEFK` varchar(7) DEFAULT NULL,
  `DISMISSED` varchar(10) DEFAULT NULL,
  `COMMAND` int(3) DEFAULT NULL,
  `ADDID` varchar(10) DEFAULT NULL,
  `MOBILE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `teachers`
--

INSERT INTO `teachers` (`UI`, `SURNAME`, `NAME`, `SECONDNAME`, `SEX`, `BIRTHDAY`, `BIRTHPLACE`, `DOCUMENTTYPEFK`, `DOCUMENTSERIES`, `DOCUMENTNUMBER`, `PEDSTAG`, `SENIORITY`, `NAGR`, `EDULEVELFK`, `DIPSPECIALITY`, `CATEGORYFK`, `DEGREEFK`, `SPECIALITYFK`, `ACSTATUSFK`, `DATELASTATT`, `NSOTFLAG`, `NSOTCATEGORY`, `PDATE`, `PSUBJECTCODE`, `IKTPOVDATE`, `NAGRUZ`, `UCHCOUNT`, `AVGCONT`, `IKTPOVHOURS2`, `SNILS`, `ROLEFK`, `DISMISSED`, `COMMAND`, `ADDID`, `MOBILE`) VALUES
(1, 'Беззубцева', 'Оксана', 'Паркевовна', 'Ж', '1982-09-22', NULL, 1, 5315, 594667, 15, 16, NULL, 'C45F8872035F4DFCA7A61F9893D8DFE2', 'учитель математики и информатики по специальности \"математика\"', NULL, 0, NULL, '605F272778F24018893EEC5B2A69270B', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127-523-091 44', 'zavuch', NULL, NULL, NULL, NULL),
(2, 'Тихонов', 'Азарий', 'Георгиевич', 'М', '1982-07-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'учитель физкультуры', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Воронцов', 'Рудоль', 'Серапионов', 'М', '1982-11-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'учитель физики', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Капустина', 'Агния', 'Аристархов', 'Ж', '1994-11-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'учитель биологии', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Галкина', 'Кармел', 'Геласьевна', 'Ж', '1997-05-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'учитель истории', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `uid` varchar(120) NOT NULL,
  `pwd` varchar(120) NOT NULL,
  `userOpGroup` int(11) NOT NULL,
  `who` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`userId`, `uid`, `pwd`, `userOpGroup`, `who`) VALUES
(1, 'PetrovSergeyLK09$', 'zsefb!@#$', 0, 'student');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lessontimes`
--
ALTER TABLE `lessontimes`
  ADD PRIMARY KEY (`lessonNumber`);

--
-- Индексы таблицы `marksall`
--
ALTER TABLE `marksall`
  ADD PRIMARY KEY (`UNUIQE_ID`);

--
-- Индексы таблицы `paraticipants`
--
ALTER TABLE `paraticipants`
  ADD PRIMARY KEY (`PARTICIPANTID`);

--
-- Индексы таблицы `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`PARTICIPANTID`);

--
-- Индексы таблицы `schedule_2020.11.16_1`
--
ALTER TABLE `schedule_2020.11.16_1`
  ADD PRIMARY KEY (`UNUIQE_ID`);

--
-- Индексы таблицы `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`UI`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `marksall`
--
ALTER TABLE `marksall`
  MODIFY `UNUIQE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `paraticipants`
--
ALTER TABLE `paraticipants`
  MODIFY `PARTICIPANTID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=649;

--
-- AUTO_INCREMENT для таблицы `parents`
--
ALTER TABLE `parents`
  MODIFY `PARTICIPANTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `schedule_2020.11.16_1`
--
ALTER TABLE `schedule_2020.11.16_1`
  MODIFY `UNUIQE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `teachers`
--
ALTER TABLE `teachers`
  MODIFY `UI` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
