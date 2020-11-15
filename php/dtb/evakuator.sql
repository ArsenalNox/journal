-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 15 2020 г., 12:13
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
-- Структура таблицы `evakuator`
--

CREATE TABLE `evakuator` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `lesson_name` varchar(20) NOT NULL,
  `first_quarter` int(1) DEFAULT NULL,
  `second_quarter` int(1) DEFAULT NULL,
  `third_quarter` int(1) DEFAULT NULL,
  `fourth_quarter` int(1) DEFAULT NULL,
  `fhy` int(1) DEFAULT NULL,
  `shy` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `evakuator`
--

INSERT INTO `evakuator` (`id`, `student_id`, `lesson_name`, `first_quarter`, `second_quarter`, `third_quarter`, `fourth_quarter`, `fhy`, `shy`) VALUES
(1, 1, 'Физика', 4, NULL, NULL, NULL, NULL, NULL),
(2, 1, 'Биологие', 4, NULL, NULL, NULL, NULL, NULL),
(3, 1, 'Информатика', 5, NULL, NULL, NULL, NULL, NULL),
(4, 1, 'Математика', 5, NULL, NULL, NULL, NULL, NULL),
(5, 1, 'История', 4, NULL, NULL, NULL, NULL, NULL),
(6, 1, 'Физкультура', 4, NULL, NULL, NULL, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `evakuator`
--
ALTER TABLE `evakuator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk` (`student_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `evakuator`
--
ALTER TABLE `evakuator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `evakuator`
--
ALTER TABLE `evakuator`
  ADD CONSTRAINT `fk` FOREIGN KEY (`student_id`) REFERENCES `paraticipants` (`PARTICIPANTID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
