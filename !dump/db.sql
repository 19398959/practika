-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 25 2023 г., 14:52
-- Версия сервера: 5.7.39
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`category_id`, `category`) VALUES
(1, 'Лазерный принтер'),
(2, 'Струйный принтер'),
(3, 'Термопринтер'),
(4, '777');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `country` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(4) NOT NULL,
  `model` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `path` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`product_id`, `name`, `price`, `country`, `year`, `model`, `category`, `count`, `path`, `created_at`) VALUES
(1, 'Обычный принтер', 400, 'Япония', 2022, 'Обычный', 'Лазерный принтер', 0, 'logo/logo.png', '2022-02-16 06:58:58'),
(3, 'Необычный принтер', 4000, 'Швеция', 2022, 'Необычный', 'Лазерный принтер', 46, 'logo/logo.png', '2022-02-16 06:58:58'),
(4, 'Уникальный принтер', 500, 'Италия', 2022, 'Обычный', 'Струйный принтер', 0, 'logo/logo.png', '2022-02-16 06:58:58'),
(5, 'Принтер принтер', 532, 'Голландия', 2021, 'Необычный', 'Лазерный принтер', 57, 'logo/logo.png', '2022-02-16 06:58:58'),
(6, 'Квалиф принтер', 40643, 'Россия', 2021, 'Обычный', 'Термопринтер', 11, 'logo/logo.png', '2022-02-16 06:58:58'),
(7, 'Рубцовый принтер', 41210, 'Россия', 2021, 'Необычный', 'Лазерный принтер', 647, 'logo/logo.png', '2022-02-16 06:58:58'),
(8, 'Словесный принтер', 110, 'Колечия', 2020, 'Обычный', 'Термопринтер', 55, 'logo/logo.png', '2022-02-16 06:58:58'),
(9, 'Первый принтер', 5320, 'Арстоцка', 2020, 'Необычный', 'Лазерный принтер', 4, 'logo/logo.png', '2022-02-16 06:58:58'),
(10, 'Второй принтер', 564, 'Арстоцка', 2020, 'Обычный', 'Струйный принтер', 32, 'logo/logo.png', '2022-02-16 06:58:58'),
(11, 'Десятый принтер', 927, 'Колечия', 2019, 'Необычный', 'Лазерный принтер', 1, 'logo/logo.png', '2022-02-16 06:58:58'),
(12, 'Кашерный принтер', 624, 'СССР', 2019, 'Обычный', 'Струйный принтер', 87, 'logo/logo.png', '2022-02-16 06:58:58'),
(13, 'Деформированный принтер', 912, 'Германия', 2019, 'Необычный', 'Лазерный принтер', 24, 'logo/logo.png', '2022-02-16 06:58:58'),
(14, 'Пригодный принтер', 9673, 'Италия', 2018, 'Обычный', 'Термопринтер', 32, 'logo/logo.png', '2022-02-16 06:58:58'),
(15, 'Принтер принтеров', 5715, 'Швеция', 2018, 'Необычный', 'Лазерный принтер', 95, 'logo/logo.png', '2022-02-16 06:58:58'),
(16, 'Да принтер', 4324, 'Япония', 2018, 'Обычный', 'Термопринтер', 117, 'logo/logo.png', '2022-02-16 06:58:58'),
(17, 'Нет принтер', 1321, 'Россия', 2017, 'Необычный', 'Лазерный принтер', 7, 'logo/logo.png', '2022-02-16 06:58:58'),
(18, 'Выбор принтер', 551, 'СССР', 2017, 'Обычный', 'Струйный принтер', 2, 'logo/logo.png', '2022-02-16 06:58:58'),
(19, 'Ключ принтер', 2135, 'Голландия', 2017, 'Необычный', 'Лазерный принтер', 3, 'logo/logo.png', '2022-02-16 06:58:58'),
(20, 'Умозаключение принтер', 6463, 'Германия', 2016, 'Обычный', 'Термопринтер', 4, 'logo/logo.png', '2022-02-16 06:58:58'),
(21, 'Обычный обычный', 431, 'Bruh', 2016, 'Необычный', 'Лазерный принтер', 5, 'logo/logo.png', '2022-02-16 06:58:58');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `name`, `surname`, `patronymic`, `login`, `email`, `password`, `role`) VALUES
(1, 'Ад', 'мини', 'стратор', 'admin', '1@1', 'admin11', 'admin'),
(2, 'фыв', 'ваы', 'авфыа', '1', '1@1', '123456', 'client'),
(3, 'Александр', 'Семенов', 'Аркадьевич', 'asd', 'test@gmail.com', 'P01111967', 'client');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
