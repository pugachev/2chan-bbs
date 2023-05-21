-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-05-21 10:53:40
-- サーバのバージョン： 10.4.27-MariaDB
-- PHP のバージョン: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `2chan-bbs`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `body` varchar(200) NOT NULL,
  `post_date` datetime NOT NULL,
  `thread_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `comment`
--

INSERT INTO `comment` (`id`, `username`, `body`, `post_date`, `thread_id`) VALUES
(15, 'ddd', 'ddd', '2023-04-09 08:44:10', 5),
(16, 'test1', 'test', '2023-04-09 08:44:46', 6),
(17, 'eee', 'eeeee', '2023-04-09 08:45:04', 6);

-- --------------------------------------------------------

--
-- テーブルの構造 `thread`
--

CREATE TABLE `thread` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `thread`
--

INSERT INTO `thread` (`id`, `title`) VALUES
(6, 'test1');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- テーブルの AUTO_INCREMENT `thread`
--
ALTER TABLE `thread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
