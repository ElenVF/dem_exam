-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 15 2025 г., 23:52
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `demka1606`
--

-- --------------------------------------------------------

--
-- Структура таблицы `application`
--

CREATE TABLE `application` (
  `id` int UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `date_str` timestamp NOT NULL,
  `status_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `dept_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `application`
--

INSERT INTO `application` (`id`, `description`, `created_at`, `date_str`, `status_id`, `user_id`, `dept_id`) VALUES
(1, 'авыавы', '2024-06-16 16:09:41', '2027-12-11 21:00:00', 3, 3, 1),
(2, 'впавер', '2024-06-16 16:09:57', '2027-01-11 21:00:00', 3, 3, 1),
(3, 'fdgfhgfc', '2024-06-16 16:30:53', '2027-02-11 21:00:00', 3, 3, 1),
(4, 'авыавы', '2024-06-16 18:05:18', '2027-11-10 21:00:00', 2, 5, 1),
(5, 'куекуе', '2024-06-16 18:05:52', '2027-09-12 06:09:00', 1, 5, 1),
(6, 'проыерка', '2024-06-16 18:06:37', '2027-04-13 21:00:00', 1, 5, 1),
(7, 'авыавы', '2025-02-15 18:59:53', '2000-12-12 19:02:00', 1, 6, 1),
(9, 'авыавы', '2025-02-15 20:19:12', '2025-02-21 23:22:00', 1, 7, 1),
(10, 'вкпчык', '2025-02-15 20:25:16', '2026-12-12 09:00:00', 1, 7, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `application`
--
ALTER TABLE `application`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `application_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `application_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `application_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
