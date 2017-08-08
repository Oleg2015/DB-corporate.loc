-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 08 2017 г., 14:06
-- Версия сервера: 5.5.50
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `corporate`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `desc` text COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1',
  `category_id` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `text`, `desc`, `alias`, `img`, `created_at`, `updated_at`, `user_id`, `category_id`) VALUES
(1, 'This is the title of the first article. Enjoy it', '<p>Fusce rutrum lectus id nibh ullamcorper aliquet. Pellentesque pretium mauris et augue fringilla non bibendum turpis iaculis. Donec sit amet nunc lorem. Sed fringilla vehicula est at pellentesque. Aenean imperdiet elementum arcu id facilisis. Mauris sed leo eros.</p>\\n<p>Duis nulla purus, malesuada in gravida sed, viverra at elit. Praesent nec purus sem, non imperdiet quam. Praesent tincidunt tortor eu libero scelerisque quis consequat justo elementum. Maecenas aliquet facilisis ipsum, commodo eleifend odio ultrices et. Maecenas arcu arcu, luctus a laoreet et, fermentum vel lectus. Cras consectetur ipsum venenatis ligula aliquam hendrerit. Suspendisse rhoncus hendrerit fermentum. Ut eget rhoncus purus.</p>\\n<p>Cras a tellus eu justo lobortis tristique et nec mauris. Etiam tincidunt tellus ut odio elementum adipiscing. Maecenas cursus dolor sit amet leo elementum ut semper velit lobortis. Pellentesque posue</p>'', ''Fusce nec accumsan eros. Aenean ac orci a magna vestibulum posuere quis nec nisi. Maecenas rutrum vehicula condimentum. Donec volutpat nisl ac mauris consectetur gravida.\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel vulputate nibh. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\\r\\n\\r\\nIn facilisis ornare arcu, sodales facilisis neque blandit ac. Ut blandit ipsum quis arcu adipiscing sit amet semper sem feugiat. Nam sed dapibus arcu. Nullam eleifend molestie lectus. Nullam nec risus purus', '<p>Fusce rutrum lectus id nibh ullamcorper aliquet. Pellentesque pretium mauris et augue fringilla non bibendum turpis iaculis. Donec sit amet nunc lorem. Sed fringilla vehicula est at pellentesque. Aenean imperdiet elementum arcu id facilisis. Mauris sed leo eros.</p>', 'article-1', '{"mini":"003-55x55.jpg ","max":"003-816x282.jpg ","path":"0081-700x345.jpg"}', '2017-07-06 21:00:00', NULL, 1, 1),
(2, 'Nice & Clean. The best for your blog!', '<p>Fusce rutrum lectus id nibh ullamcorper aliquet. Pellentesque pretium mauris et augue fringilla non bibendum turpis iaculis. Donec sit amet nunc lorem. Sed fringilla vehicula est at pellentesque. Aenean imperdiet elementum arcu id facilisis. Mauris sed leo eros.</p>\\n<p>Duis nulla purus, malesuada in gravida sed, viverra at elit. Praesent nec purus sem, non imperdiet quam. Praesent tincidunt tortor eu libero scelerisque quis consequat justo elementum. Maecenas aliquet facilisis ipsum, commodo eleifend odio ultrices et. Maecenas arcu arcu, luctus a laoreet et, fermentum vel lectus. Cras consectetur ipsum venenatis ligula aliquam hendrerit. Suspendisse rhoncus hendrerit fermentum. Ut eget rhoncus purus.</p>\\n<p>Cras a tellus eu justo lobortis tristique et nec mauris. Etiam tincidunt tellus ut odio elementum adipiscing. Maecenas cursus dolor sit amet leo elementum ut semper velit lobortis. Pellentesque posue</p>'', ''Fusce nec accumsan eros. Aenean ac orci a magna vestibulum posuere quis nec nisi. Maecenas rutrum vehicula condimentum. Donec volutpat nisl ac mauris consectetur gravida.\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel vulputate nibh. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\\r\\n\\r\\nIn facilisis ornare arcu, sodales facilisis neque blandit ac. Ut blandit ipsum quis arcu adipiscing sit amet semper sem feugiat. Nam sed dapibus arcu. Nullam eleifend molestie lectus. Nullam nec risus purus.', '<p>Fusce rutrum lectus id nibh ullamcorper aliquet. Pellentesque pretium mauris et augue fringilla non bibendum turpis iaculis. Donec sit amet nunc lorem. Sed fringilla vehicula est at pellentesque. Aenean imperdiet elementum arcu id facilisis. Mauris sed leo eros.</p>', 'article-2', '{"mini":"001-55x55.png ","max":"001-816x282.png ","path":"0081-700x345.jpg"}', '2017-07-06 21:00:00', NULL, 1, 2),
(3, 'Section shortcodes & sticky posts!', '<p>Fusce rutrum lectus id nibh ullamcorper aliquet. Pellentesque pretium mauris et augue fringilla non bibendum turpis iaculis. Donec sit amet nunc lorem. Sed fringilla vehicula est at pellentesque. Aenean imperdiet elementum arcu id facilisis. Mauris sed leo eros.</p>\\n<p>Duis nulla purus, malesuada in gravida sed, viverra at elit. Praesent nec purus sem, non imperdiet quam. Praesent tincidunt tortor eu libero scelerisque quis consequat justo elementum. Maecenas aliquet facilisis ipsum, commodo eleifend odio ultrices et. Maecenas arcu arcu, luctus a laoreet et, fermentum vel lectus. Cras consectetur ipsum venenatis ligula aliquam hendrerit. Suspendisse rhoncus hendrerit fermentum. Ut eget rhoncus purus.</p>\\n<p>Cras a tellus eu justo lobortis tristique et nec mauris. Etiam tincidunt tellus ut odio elementum adipiscing. Maecenas cursus dolor sit amet leo elementum ut semper velit lobortis. Pellentesque posue</p>'', ''Fusce nec accumsan eros. Aenean ac orci a magna vestibulum posuere quis nec nisi. Maecenas rutrum vehicula condimentum. Donec volutpat nisl ac mauris consectetur gravida.\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel vulputate nibh. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\\r\\n\\r\\nIn facilisis ornare arcu, sodales facilisis neque blandit ac. Ut blandit ipsum quis arcu adipiscing sit amet semper sem feugiat. Nam sed dapibus arcu. Nullam eleifend molestie lectus. Nullam nec risus purus.', '<p>Fusce rutrum lectus id nibh ullamcorper aliquet. Pellentesque pretium mauris et augue fringilla non bibendum turpis iaculis. Donec sit amet nunc lorem. Sed fringilla vehicula est at pellentesque. Aenean imperdiet elementum arcu id facilisis. Mauris sed leo eros.</p>', 'article-3', '{"mini":"0037-55x55.jpg ","max":"00212-816x282.jpg ","path":"0081-700x345.jpg"}', '2017-07-06 21:00:00', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `parent_id`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'Блог', 0, 'blog', '2017-07-06 21:00:00', NULL),
(2, 'Компьютеры', 1, 'computers', '2017-07-06 21:00:00', NULL),
(3, 'Интересное', 1, 'iteresting', '2017-07-06 21:00:00', NULL),
(4, 'Советы', 1, 'soveti', '2017-07-06 21:00:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `article_id` int(10) unsigned NOT NULL DEFAULT '1',
  `user_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `text`, `name`, `email`, `site`, `parent_id`, `created_at`, `updated_at`, `article_id`, `user_id`) VALUES
(1, 'Hello world!', 'name', 'email@email.ru', 'http://site.ru', 0, NULL, NULL, 1, NULL),
(2, 'Hello world!', 'name', 'email@email.ru', 'http://site.ru', 0, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `filters`
--

CREATE TABLE IF NOT EXISTS `filters` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `filters`
--

INSERT INTO `filters` (`id`, `title`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'Brand Identity', 'brand-identity', '2017-07-06 21:00:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `title`, `path`, `parent`, `created_at`, `updated_at`) VALUES
(1, 'Главная', 'http://corporate.loc', 0, '2017-07-06 21:00:00', NULL),
(2, 'Блог', 'http://corporate.loc/articles', 0, '2017-07-06 21:00:00', NULL),
(3, 'Компьютеры', '\r\nhttp://corporate.loc/articles/cat/computers', 2, '2017-07-06 21:00:00', NULL),
(4, 'Интересное', '\r\nhttp://corporate.loc/articles/cat/iteresting', 2, '2017-07-06 21:00:00', NULL),
(5, 'Советы', 'http://corporate.loc/articles/cat/soveti', 2, '2017-07-06 21:00:00', NULL),
(6, 'Портфолио', '\r\nhttp://corporate.loc/portfolios', 0, '2017-07-06 21:00:00', NULL),
(7, '\r\nКонтакты', 'http://corporate.loc/contacts', 0, '2017-07-06 21:00:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_07_05_191629_CreateArticlesTable', 1),
('2017_07_06_051824_CreatePortfoliosTable', 1),
('2017_07_06_060711_CreateFiltersTable', 1),
('2017_07_06_062336_CreateCommentsTable', 1),
('2017_07_06_080049_CreateSlidersTable', 1),
('2017_07_06_081309_CreateMenusTable', 1),
('2017_07_06_082923_CreateCategoriesTable', 1),
('2017_07_07_040650_ChangeArticlesTable', 2),
('2017_07_07_051516_ChangeCommentsTable', 2),
('2017_07_07_061937_ChangePortfolios', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `portfolios`
--

CREATE TABLE IF NOT EXISTS `portfolios` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `customer` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `filter_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `text`, `customer`, `alias`, `img`, `created_at`, `updated_at`, `filter_alias`) VALUES
(1, 'Steep This!', 'Nullam volutpat, mauris scelerisque iaculis semper, justo odio rutrum urna, at cursus urna nisl et ipsum. Donec dapibus lacus nec sapien faucibus eget suscipit lorem mattis.\\r\\n\\r\\nDonec non mauris ac nulla consectetur pretium sit amet rhoncus neque. Maecenas aliquet, diam sed rhoncus vestibulum, sem lacus ultrices est, eu hendrerit tortor nulla in dui. Suspendisse enim purus, euismod interdum viverra eget, ultricies eu est. Maecenas dignissim mauris id est semper suscipit. Suspendisse venenatis vestibulum quam, quis porttitor arcu vestibulum et.\\r\\n\\r\\nSed porttitor eros ut purus elementum a consectetur purus vulputate', 'Steep This!', 'project1', '{"mini":"0061-175x175.jpg","max":"0061-770x368.jpg","path":"0061.jpg"}', '2017-07-06 21:00:00', NULL, 'brand-identity'),
(2, 'Kineda', 'Nullam volutpat, mauris scelerisque iaculis semper, justo odio rutrum urna, at cursus urna nisl et ipsum. Donec dapibus lacus nec sapien faucibus eget suscipit lorem mattis.\\r\\n\\r\\nDonec non mauris ac nulla consectetur pretium sit amet rhoncus neque. Maecenas aliquet, diam sed rhoncus vestibulum, sem lacus ultrices est, eu hendrerit tortor nulla in dui. Suspendisse enim purus, euismod interdum viverra eget, ultricies eu est. Maecenas dignissim mauris id est semper suscipit. Suspendisse venenatis vestibulum quam, quis porttitor arcu vestibulum et.\\r\\n\\r\\nSed porttitor eros ut purus elementum a consectetur purus vulputate', 'customer', 'project2', '{"mini":"009-175x175.jpg","max":"009-770x368.jpg","path":"009.jpg"}', '2017-07-06 21:00:00', NULL, 'brand-identity'),
(3, 'Love', 'Nullam volutpat, mauris scelerisque iaculis semper, justo odio rutrum urna, at cursus urna nisl et ipsum. Donec dapibus lacus nec sapien faucibus eget suscipit lorem mattis.\\r\\n\\r\\nDonec non mauris ac nulla consectetur pretium sit amet rhoncus neque. Maecenas aliquet, diam sed rhoncus vestibulum, sem lacus ultrices est, eu hendrerit tortor nulla in dui. Suspendisse enim purus, euismod interdum viverra eget, ultricies eu est. Maecenas dignissim mauris id est semper suscipit. Suspendisse venenatis vestibulum quam, quis porttitor arcu vestibulum et.\\r\\n\\r\\nSed porttitor eros ut purus elementum a consectetur purus vulputat', 'customer2', 'project3', '{"mini":"0011-175x175.jpg","max":"0043-770x368.jpg","path":"0043.jpg"}', '2017-07-06 21:00:00', NULL, 'brand-identity'),
(4, 'Guanacos', '\r\nNullam volutpat, mauris scelerisque iaculis semper, justo odio rutrum urna, at cursus urna nisl et ipsum. Donec dapibus lacus nec sapien faucibus eget suscipit lorem mattis.\\r\\n\\r\\nDonec non mauris ac nulla consectetur pretium sit amet rhoncus neque. Maecenas aliquet, diam sed rhoncus vestibulum, sem lacus ultrices est, eu hendrerit tortor nulla in dui. Suspendisse enim purus, euismod interdum viverra eget, ultricies eu est. Maecenas dignissim mauris id est semper suscipit. Suspendisse venenatis vestibulum quam, quis porttitor arcu vestibulum et.\\r\\n\\r\\nSed porttitor eros ut purus elementum a consectetur purus vulputate', 'Steep This!', 'project4', '{"mini":"0027-175x175.jpg","max":"0027-770x368.jpg","path":"0027.jpg"}', '2017-07-06 21:00:00', NULL, 'brand-identity'),
(5, 'Miller Bob', 'Nullam volutpat, mauris scelerisque iaculis semper, justo odio rutrum urna, at cursus urna nisl et ipsum. Donec dapibus lacus nec sapien faucibus eget suscipit lorem mattis.\\r\\n\\r\\nDonec non mauris ac nulla consectetur pretium sit amet rhoncus neque. Maecenas aliquet, diam sed rhoncus vestibulum, sem lacus ultrices est, eu hendrerit tortor nulla in dui. Suspendisse enim purus, euismod interdum viverra eget, ultricies eu est. Maecenas dignissim mauris id est semper suscipit. Suspendisse venenatis vestibulum quam, quis porttitor arcu vestibulum et.\\r\\n\\r\\nSed porttitor eros ut purus elementum a consectetur purus vulputate', 'customer', 'project5', '{"mini":"0071-175x175.jpg","max":"0071-770x368.jpg","path":"0071.jpg"}', '2017-07-06 21:00:00', NULL, 'brand-identity'),
(6, 'Nili Studios', 'Nullam volutpat, mauris scelerisque iaculis semper, justo odio rutrum urna, at cursus urna nisl et ipsum. Donec dapibus lacus nec sapien faucibus eget suscipit lorem mattis.\\r\\n\\r\\nDonec non mauris ac nulla consectetur pretium sit amet rhoncus neque. Maecenas aliquet, diam sed rhoncus vestibulum, sem lacus ultrices est, eu hendrerit tortor nulla in dui. Suspendisse enim purus, euismod interdum viverra eget, ultricies eu est. Maecenas dignissim mauris id est semper suscipit. Suspendisse venenatis vestibulum quam, quis porttitor arcu vestibulum et.\\r\\n\\r\\nSed porttitor eros ut purus elementum a consectetur purus vulputate', 'customer3', 'project6', '{"mini":"0052-175x175.jpg","max":"0052-770x368.jpg","path":"0052.jpg"}', '2017-07-06 21:00:00', NULL, 'brand-identity'),
(7, 'VItale Premium', 'Nullam volutpat, mauris scelerisque iaculis semper, justo odio rutrum urna, at cursus urna nisl et ipsum. Donec dapibus lacus nec sapien faucibus eget suscipit lorem mattis.\\r\\n\\r\\nDonec non mauris ac nulla consectetur pretium sit amet rhoncus neque. Maecenas aliquet, diam sed rhoncus vestibulum, sem lacus ultrices est, eu hendrerit tortor nulla in dui. Suspendisse enim purus, euismod interdum viverra eget, ultricies eu est. Maecenas dignissim mauris id est semper suscipit. Suspendisse venenatis vestibulum quam, quis porttitor arcu vestibulum et.\\r\\n\\r\\nSed porttitor eros ut purus elementum a consectetur purus vulputate', 'Steep This!', 'project7', '\r\n{"mini":"0081-175x175.jpg","max":"0081-770x368.jpg","path":"0081.jpg"}', '2017-07-06 21:00:00', NULL, 'brand-identity'),
(8, 'Digitpool Medien', '\r\nNullam volutpat, mauris scelerisque iaculis semper, justo odio rutrum urna, at cursus urna nisl et ipsum. Donec dapibus lacus nec sapien faucibus eget suscipit lorem mattis.\\r\\n\\r\\nDonec non mauris ac nulla consectetur pretium sit amet rhoncus neque. Maecenas aliquet, diam sed rhoncus vestibulum, sem lacus ultrices est, eu hendrerit tortor nulla in dui. Suspendisse enim purus, euismod interdum viverra eget, ultricies eu est. Maecenas dignissim mauris id est semper suscipit. Suspendisse venenatis vestibulum quam, quis porttitor arcu vestibulum et.\\r\\n\\r\\nSed porttitor eros ut purus elementum a consectetur purus vulputate', 'customer', 'project8', '{"mini":"0071-175x175.jpg","max":"0071.jpg","path":"0071-770x368.jpg"}', '2017-07-06 21:00:00', NULL, 'brand-identity'),
(9, 'Octopus', 'Nullam volutpat, mauris scelerisque iaculis semper, justo odio rutrum urna, at cursus urna nisl et ipsum. Donec dapibus lacus nec sapien faucibus eget suscipit lorem mattis.\\r\\n\\r\\nDonec non mauris ac nulla consectetur pretium sit amet rhoncus neque. Maecenas aliquet, diam sed rhoncus vestibulum, sem lacus ultrices est, eu hendrerit tortor nulla in dui. Suspendisse enim purus, euismod interdum viverra eget, ultricies eu est. Maecenas dignissim mauris id est semper suscipit. Suspendisse venenatis vestibulum quam, quis porttitor arcu vestibulum et.\\r\\n\\r\\nSed porttitor eros ut purus elementum a consectetur purus vulputate', 'customer2', 'project9', '\r\n{"mini":"0081-175x175.jpg","max":"0081.jpg","path":"0081-770x368.jpg"}', '2017-07-06 21:00:00', NULL, 'brand-identity');

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(10) unsigned NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `sliders`
--

INSERT INTO `sliders` (`id`, `img`, `desc`, `title`, `created_at`, `updated_at`) VALUES
(1, 'xx.jpg', 'Nam id quam a odio euismod pellentesque. Etiam congue rutrum risus non vestibulum. Quisque a diam at ligula blandit consequat. Mauris ac mi velit, a tempor neque', '<h2 style="color:#fff">CORPORATE, MULTIPURPOSE.. <br /><span>PINK RIO</span></h2>', '2017-07-06 21:00:00', NULL),
(2, '00314.jpg', 'Nam id quam a odio euismod pellentesque. Etiam congue rutrum risus non vestibulum. Quisque a diam at ligula blandit consequat. Mauris ac mi velit, a tempor neque', '<h2 style="color:#fff">PINKRIO. <span>STRONG AND POWERFUL.</span></h2>', '2017-07-06 21:00:00', NULL),
(3, 'dd.jpg', 'Nam id quam a odio euismod pellentesque. Etiam congue rutrum risus non vestibulum. Quisque a diam at ligula blandit consequat. Mauris ac mi velit, a tempor neque', '\r\n<h2 style="color:#fff">PINKRIO. <span>STRONG AND POWERFUL.</span></h2>', '2017-07-06 21:00:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user@gmail.com', '$2y$10$Gvi6A.lVZ0wnfTthJ/Tq7e1eF./Rk3gfxk3P2AjXyWPrpSWwr.HIm', NULL, '2017-07-07 03:55:51', '2017-07-07 03:55:51');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_alias_unique` (`alias`),
  ADD KEY `articles_user_id_foreign` (`user_id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_alias_unique` (`alias`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_article_id_foreign` (`article_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filters_alias_unique` (`alias`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Индексы таблицы `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `portfolios_alias_unique` (`alias`),
  ADD KEY `portfolios_filter_alias_foreign` (`filter_alias`);

--
-- Индексы таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `filters`
--
ALTER TABLE `filters`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_filter_alias_foreign` FOREIGN KEY (`filter_alias`) REFERENCES `filters` (`alias`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
