-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 15 2020 г., 12:21
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
-- Структура таблицы `class_comment`
--

CREATE TABLE `class_comment` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `comment` varchar(500) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `class_comment`
--

INSERT INTO `class_comment` (`id`, `class_id`, `date`, `comment`, `teacher_id`) VALUES
(1, 1, '2020-11-15', 'Здравствуйте, с связи с инфекцией КАРОНА-ВИРУС все ученики перешли на дистанционное обучение.', 1),
(2, 1, '2020-11-16', 'Все должны делать домашняя работу, если вы не сделали её то вы получите оценку 2!', 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `class_comment`
--
ALTER TABLE `class_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `1` (`class_id`),
  ADD KEY `2` (`teacher_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `class_comment`
--
ALTER TABLE `class_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `class_comment`
--
ALTER TABLE `class_comment`
  ADD CONSTRAINT `1` FOREIGN KEY (`class_id`) REFERENCES `grades` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `2` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`UI`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
