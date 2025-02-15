-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 16 2025 г., 00:33
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

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'льготник'),
(2, 'без льгот'),
(3, 'Пенсионеры');

-- --------------------------------------------------------

--
-- Структура таблицы `dept`
--

CREATE TABLE `dept` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `dept`
--

INSERT INTO `dept` (`id`, `name`) VALUES
(1, '1 отдел'),
(2, '2 отдел'),
(3, '3 отдел'),
(5, '4 отдел'),
(6, '6 отдел');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `description`, `phone`, `url`) VALUES
(1, 'gdfgf', 'fgdgfd', 'fgd', 'uploads/nevskaja-maskaradnaja-koshka.jpg'),
(2, 'gdfgf', 'fgdgfd', 'fgd', 'uploads/nevskaja-maskaradnaja-koshka.jpg'),
(3, 'ghfg', 'dgfftrdhfg', 'gfh', 'uploads/FireShot Capture 027 - Тинко - localhost.png'),
(4, 'ghfg', 'dgfftrdhfg', 'gfh', 'uploads/FireShot Capture 027 - Тинко - localhost.png'),
(5, 'ghfg', 'dgfftrdhfg', 'gfh', 'uploads/FireShot Capture 027 - Тинко - localhost.png'),
(6, 'ghfg', 'dgfftrdhfg', 'gfh', 'uploads/FireShot Capture 027 - Тинко - localhost.png'),
(7, 'ghfg', 'dgfftrdhfg', 'gfh', 'uploads/FireShot Capture 027 - Тинко - localhost.png'),
(8, 'ghfg', 'dgfftrdhfg', 'gfh', 'uploads/FireShot Capture 027 - Тинко - localhost.png'),
(9, 'ghfg', 'dgfftrdhfg', 'gfh', 'uploads/FireShot Capture 027 - Тинко - localhost.png'),
(10, 'ghfg', 'dgfftrdhfg', 'gfh', 'uploads/FireShot Capture 027 - Тинко - localhost.png'),
(11, 'ghfg', 'dgfftrdhfg', 'gfh', 'uploads/FireShot Capture 027 - Тинко - localhost.png'),
(12, 'ghfg', 'dgfftrdhfg', 'gfh', 'uploads/FireShot Capture 027 - Тинко - localhost.png'),
(13, 'ghfg', 'dgfftrdhfg', 'gfh', 'uploads/FireShot Capture 027 - Тинко - localhost.png'),
(14, 'ghfg', 'dgfftrdhfg', 'gfh', 'uploads/FireShot Capture 027 - Тинко - localhost.png'),
(15, 'ghfg', 'dgfftrdhfg', 'gfh', 'uploads/FireShot Capture 027 - Тинко - localhost.png'),
(16, 'ghfg', 'dgfftrdhfg', 'gfh', 'uploads/FireShot Capture 027 - Тинко - localhost.png'),
(17, 'ghfg', 'dgfftrdhfg', 'gfh', 'uploads/FireShot Capture 027 - Тинко - localhost.png'),
(18, 'ghfg', 'dgfftrdhfg', 'gfh', 'uploads/FireShot Capture 027 - Тинко - localhost.png'),
(19, 'ghfg', 'dgfftrdhfg', 'gfh', 'uploads/FireShot Capture 027 - Тинко - localhost.png'),
(20, 'ghfg', 'dgfftrdhfg', 'gfh', 'uploads/FireShot Capture 027 - Тинко - localhost.png'),
(21, 'ghfg', 'dgfftrdhfg', 'gfh', 'uploads/FireShot Capture 027 - Тинко - localhost.png'),
(22, 'ghfg', 'dgfftrdhfg', 'gfh', 'uploads/FireShot Capture 027 - Тинко - localhost.png'),
(23, 'dcsdzg', 'выпфкуп', '+7(444)-444-44-44', 'uploads/Frame 8 (1).png'),
(24, 'dcsdzg', 'выпфкуп', '+7(444)-444-44-44', 'uploads/Frame 8 (1).png'),
(25, 'dcsdzg', 'выпфкуп', '+7(444)-444-44-44', 'uploads/Frame 8 (1).png'),
(26, 'dcsdzg', 'выпфкуп', '+7(444)-444-44-44', 'uploads/Frame 8 (1).png'),
(27, 'dcsdzg', 'выпфкуп', '+7(444)-444-44-44', 'uploads/Frame 8 (1).png'),
(28, 'dcsdzg', 'выпфкуп', '+7(444)-444-44-44', 'uploads/Frame 8 (1).png');

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'user'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE `status` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'новое'),
(2, 'на рассмотрении'),
(3, 'выполнена'),
(4, 'отклонена');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `auth_key` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `passport` varchar(255) NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `login`, `email`, `phone`, `auth_key`, `password_hash`, `passport`, `category_id`, `role_id`) VALUES
(1, 'тлштишгигшигш выа выа', 'jopa', 'kvyukv@gmail.com', '+7(444)-444-44-44', '2fQCox74Ku7yv-ooYu09C71r_x-VLaRl', '$2y$13$VBUbUgGTuoThvtTbNh5JWuaufP7oMdaAq0N57LNJqCZPd1tqvO0fS', '111111 1111', 2, 1),
(2, 'мгнмгн ывы выаы', 'jopa2', 'kvyukv3@gmail.com', '+7(333)-333-33-33', '4DtapVbY-a1SxlJMcRJ8RANm0zKpfmUL', '$2y$13$JMLsB/5R/euGRfInUQ0d5O69W6fwoI5P8ZPfW8yQFGllHVSxX7e.m', '111111 1111', 1, 1),
(3, 'юсер юсер юсер', 'user', 'kvyukcv@gmail.com', '+7(555)-555-55-55', 'aL8bm0xvTaDfnr5KQz__0S_cfTh3rtKK', '$2y$13$GinpMUnCEbkzzNTt4dQCBeyAaVsvZ3bDGvl0X6xsI9cu5M/a.t..W', '555555 5555', 2, 1),
(4, 'мнмне емее емем', 'admin', 'saddfskvyukv@gmail.com', '+7(444)-444-44-44', 'HA6llV8ULETXAN2SVlOZ_NabfaSFaY2D', '$2y$13$g/KhQRNuLQKazuhg9HdzteU8ip0IT59EnbldZGdypikPDqS5vw0jC', '444444 4444', 2, 2),
(5, 'ыавыи вакпви авпв', 'njniunui', 'dddkv@gmail.com', '+7(444)-444-44-44', 'ouJu5fHHNhJeczgwlHZT_jxottcNALOA', '$2y$13$X6UU0E7oayRPaqGmKvZKTe2DkNueRnrrT7ubwLRjJRPTpJrY2oWeq', '444444 4444', 2, 1),
(6, 'Вася Петров Иван', 'login123', 'login123@gmail.com', '+7(444)-444-44-44', '7HF8bHA26wEoZrqtJ298dex1YgD2DtRD', '$2y$13$cQNf0rC8W5Rj2G8bQw.EkeuAGRzrX/M2P7odWdF5PzUtdKo.nqDwC', '111111 1111', 1, 1),
(7, 'Петрова Анастасия Алексеевна', 'demo', 'kvyusdfdkv@gmail.com', '+7(333)-333-33-33', '4FP4EoyG1UtrZCuyYtFiRLEFTbTmHnKU', '$2y$13$q8MIUV1DP4wROBg6LFsQAeG.7n2X8oy4oL/79wbYPqzq4GXh4fgwm', '333333 3333', 2, 2);

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
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `application`
--
ALTER TABLE `application`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `dept`
--
ALTER TABLE `dept`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `role`
--
ALTER TABLE `role`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
