-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 13 2020 г., 18:08
-- Версия сервера: 10.4.14-MariaDB
-- Версия PHP: 7.2.34

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
-- Структура таблицы `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name_class` varchar(30) NOT NULL,
  `schedule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `class`
--

INSERT INTO `class` (`id`, `name_class`, `schedule_id`) VALUES
(1, '5А', 1),
(3, '6Б', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `group_1`
--

CREATE TABLE `group_1` (
  `id` int(11) NOT NULL,
  `nfm` varchar(50) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `group_1`
--

INSERT INTO `group_1` (`id`, `nfm`, `uid`, `class_id`) VALUES
(1, 'АФЛ', 'test_student', 1),
(3, 'Шашков Яков Мэлорович', 'student_1', 1),
(4, 'Горбачёв Всеволод Филиппович', 'student_2', 1),
(5, 'Корнилов Модест Миронович', 'student_3', 1),
(6, 'Максимова Венера Ефимовна', 'student_4', 1),
(7, 'Панова Эрида Васильевна', 'student_5', 1),
(8, 'Тихонова Амалия Львовна', 'student_6', 3),
(9, 'Савина Феодосия Германновна', 'student_7', 3),
(10, 'Харитонова Пелагея Онисимовна', 'student_8', 3),
(11, 'Самсонов Ибрагил Яковович', 'student_9', 3),
(12, 'Миронов Герасим Павлович', 'student_10', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `group_2`
--

CREATE TABLE `group_2` (
  `id` int(11) NOT NULL,
  `nfm` varchar(50) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `group_2`
--

INSERT INTO `group_2` (`id`, `nfm`, `uid`, `subject`) VALUES
(1, 'Гаврилова Анэля Давидовна', 'teacher_1', 'Literarute'),
(2, 'Крылова Пелагея Руслановна', 'teacher_2', 'Russian Language'),
(3, 'Сазонова Берта Дамировна', 'teacher_3', 'Biology'),
(4, 'Аксёнов Альберт Николаевич', 'teacher_4', 'Math'),
(5, 'Андреев Исак Егорович', 'teacher_5', 'Physics'),
(6, 'Сидорова Эльвина Рубеновна', 'teacher_6', 'English language'),
(7, 'Семёнова Августа Эдуардовна', 'teacher_7', 'History');

-- --------------------------------------------------------

--
-- Структура таблицы `group_3`
--

CREATE TABLE `group_3` (
  `id` int(11) NOT NULL,
  `nfm` varchar(50) NOT NULL,
  `uid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `group_3`
--

INSERT INTO `group_3` (`id`, `nfm`, `uid`) VALUES
(1, 'Сорокин Игнат Валентинович', 'metadist_1'),
(2, 'Уваров Гавриил Михаилович', 'metadist_2');

-- --------------------------------------------------------

--
-- Структура таблицы `schedule_1`
--

CREATE TABLE `schedule_1` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `num_lesson` int(11) NOT NULL,
  `name_lesson` varchar(50) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `hw` varchar(300) DEFAULT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `schedule_1`
--

INSERT INTO `schedule_1` (`id`, `date`, `num_lesson`, `name_lesson`, `type`, `comment`, `hw`, `teacher_id`) VALUES
(1, '2020-11-02', 1, 'Math', NULL, NULL, NULL, 4),
(2, '2020-11-02', 2, 'Russian Language', NULL, NULL, NULL, 2),
(3, '2020-11-03', 1, 'Literarute', NULL, NULL, NULL, 1),
(4, '2020-11-03', 2, 'Math', NULL, NULL, NULL, 4),
(5, '2020-11-03', 3, 'Biology', NULL, NULL, NULL, 3),
(6, '2020-11-03', 4, 'Physics', NULL, NULL, NULL, 5),
(7, '2020-11-04', 1, 'Physics', NULL, NULL, NULL, 5),
(8, '2020-11-04', 2, 'Literarute', NULL, NULL, NULL, 1),
(9, '2020-11-04', 3, 'Russian Language', NULL, NULL, NULL, 2),
(10, '2020-11-05', 1, 'Math', NULL, NULL, NULL, 4),
(11, '2020-11-05', 2, 'Math', NULL, NULL, NULL, 4),
(12, '2020-11-05', 3, 'Literarute', NULL, NULL, NULL, 1),
(13, '2020-11-06', 1, 'Russian Language', NULL, NULL, NULL, 2),
(15, '2020-11-06', 2, 'Physics', NULL, NULL, NULL, 5),
(16, '2020-11-06', 3, 'Literarute', NULL, NULL, NULL, 1),
(17, '2020-11-06', 4, 'Biology', NULL, NULL, NULL, 3),
(18, '2020-11-06', 5, 'Math', NULL, NULL, NULL, 4),
(19, '2020-11-07', 1, 'Russian Language', NULL, NULL, NULL, 2),
(20, '2020-11-07', 2, 'Russian Language', NULL, NULL, NULL, 2),
(21, '2020-11-07', 3, 'Literarute', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `schedule_2`
--

CREATE TABLE `schedule_2` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `num_lesson` int(11) NOT NULL,
  `name_lesson` varchar(50) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `hw` varchar(300) DEFAULT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `schedule_2`
--

INSERT INTO `schedule_2` (`id`, `date`, `num_lesson`, `name_lesson`, `type`, `comment`, `hw`, `teacher_id`) VALUES
(1, '2020-11-02', 1, 'Physics', NULL, NULL, NULL, 5),
(2, '2020-11-02', 2, 'Literarute', NULL, NULL, NULL, 1),
(3, '2020-11-02', 3, 'Biology', NULL, NULL, NULL, 3),
(4, '2020-11-02', 4, 'Math', NULL, NULL, NULL, 4),
(5, '2020-11-03', 1, 'Biology', NULL, NULL, NULL, 3),
(6, '2020-11-03', 2, 'Physics', NULL, NULL, NULL, 5),
(7, '2020-11-03', 3, 'Literarute', NULL, NULL, NULL, 1),
(8, '2020-11-03', 4, 'Russian Language', NULL, NULL, NULL, 2),
(9, '2020-11-04', 1, 'Math', NULL, NULL, NULL, 4),
(10, '2020-11-04', 2, 'Literarute', NULL, NULL, NULL, 1),
(11, '2020-11-04', 3, 'Russian Language', NULL, NULL, NULL, 2),
(12, '2020-11-05', 1, 'Physics', NULL, NULL, NULL, 5),
(13, '2020-11-05', 2, 'Math', NULL, NULL, NULL, 4),
(14, '2020-11-05', 3, 'Physics', NULL, NULL, NULL, 5),
(15, '2020-11-06', 1, 'Literarute', NULL, NULL, NULL, 1),
(16, '2020-11-06', 2, 'Russian Language', NULL, NULL, NULL, 2),
(17, '2020-11-06', 3, 'Russian Language', NULL, NULL, NULL, 2),
(18, '2020-11-06', 4, 'Biology', NULL, NULL, NULL, 3),
(19, '2020-11-07', 1, 'Physics', NULL, NULL, NULL, 5),
(20, '2020-11-07', 2, 'Physics', NULL, NULL, NULL, 5),
(21, '2020-11-07', 3, 'Biology', NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uid` varchar(120) NOT NULL,
  `pwd` varchar(120) NOT NULL,
  `group` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `uid`, `pwd`, `group`) VALUES
(1, 'test_admin', 'test_password', 0),
(2, 'student_1', 'FumWVZ', 1),
(3, 'student_2', 't7uKwg', 1),
(4, 'student_3', '2BSqyx', 1),
(5, 'student_4', 'pmImM0', 1),
(6, 'student_5', 'viyPsX', 1),
(7, 'teacher_1', '3eNQ05', 2),
(8, 'teacher_2', 'vkYbhv', 2),
(9, 'teacher_3', 'Jbn1io', 2),
(10, 'teacher_4', 'CWweDe', 2),
(11, 'teacher_5', 'ALWq1F', 2),
(12, 'metadist_1', '8gxNzo', 3),
(13, 'metadist_2', 'OhjA1l', 3),
(14, 'teacher_6', 'GiuTUW', 2),
(15, 'teacher_7', 'lnNZ16', 2),
(16, 'student_6', 'qlREyW', 1),
(17, 'student_7', '3XvyfN', 1),
(18, 'student_8', 'N2nYa2', 1),
(19, 'student_9', 'dBloY3', 1),
(20, 'student_10', 'jDwBO6', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `group_1`
--
ALTER TABLE `group_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_group_1_class` (`class_id`);

--
-- Индексы таблицы `group_2`
--
ALTER TABLE `group_2`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `group_3`
--
ALTER TABLE `group_3`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `schedule_1`
--
ALTER TABLE `schedule_1`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `schedule_2`
--
ALTER TABLE `schedule_2`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `group_1`
--
ALTER TABLE `group_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `group_2`
--
ALTER TABLE `group_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `group_3`
--
ALTER TABLE `group_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `schedule_1`
--
ALTER TABLE `schedule_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `schedule_2`
--
ALTER TABLE `schedule_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `group_1`
--
ALTER TABLE `group_1`
  ADD CONSTRAINT `FK_group_1_class` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
