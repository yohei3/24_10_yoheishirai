-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018 年 7 月 03 日 23:59
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mini_bbs`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `members`
--

CREATE TABLE IF NOT EXISTS `members` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `password`, `picture`, `created`, `modified`) VALUES
(26, 'honda', 'honda@gmail.com', 'de3d5bd1e1b72410a8786678ee4408d6a9cf7061', '20180703230530', '2018-07-03 23:05:31', '2018-07-03 14:05:31'),
(27, 'yohei', 'yohei@gmail.com', 'b52bc8107799070bd1b81c35f4087736229e94d8', '20180703230753', '2018-07-03 23:07:55', '2018-07-03 14:07:55'),
(28, 'nagatomo', 'nagatomo@gmail.com', '9385f318100d4a1300f06d7b9570a77f9faa0a88', '20180703231820test2.jpg', '2018-07-03 23:18:25', '2018-07-03 14:18:25'),
(29, 'oosako', 'oosako@gmail.com', 'f3e9428aeef68ac4b0241642b0d56e315ede5e21', '20180703232205test3.jpg', '2018-07-03 23:22:07', '2018-07-03 14:22:07'),
(30, '本田 圭佑', 'honda', 'de3d5bd1e1b72410a8786678ee4408d6a9cf7061', '20180703233853test1.jpg', '2018-07-03 23:38:56', '2018-07-03 14:38:56'),
(31, '長友', 'nagatomo', '9385f318100d4a1300f06d7b9570a77f9faa0a88', '20180703234042test2.jpg', '2018-07-03 23:40:45', '2018-07-03 14:40:45'),
(32, 'ケイスケ・ホンダ', 'keisukehonda@gmail.com', '984c8a61234c8bea8e26270896cb0c70efd33004', '20180703234628test1.jpg', '2018-07-03 23:46:29', '2018-07-03 14:46:29');

-- --------------------------------------------------------

--
-- テーブルの構造 `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(11) NOT NULL,
  `message` text NOT NULL,
  `member_id` int(11) NOT NULL,
  `reply_post_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `posts`
--

INSERT INTO `posts` (`id`, `message`, `member_id`, `reply_post_id`, `created`, `modified`) VALUES
(36, 'donn\r\n', 29, 0, '2018-07-03 23:22:27', '2018-07-03 14:22:27'),
(39, '大迫半端ないっす@oosako donn\r\n', 31, 36, '2018-07-03 23:43:06', '2018-07-03 14:43:06'),
(40, 'そんなことないっす@長友 大迫半端ないっす@oosako donn\r\n', 29, 39, '2018-07-03 23:44:49', '2018-07-03 14:44:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
