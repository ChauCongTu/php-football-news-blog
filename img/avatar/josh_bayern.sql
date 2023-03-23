-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 31, 2022 lúc 10:33 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `josh_bayern`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cqn_setting`
--

CREATE TABLE `cqn_setting` (
  `ID` int(11) NOT NULL,
  `Home_url` varchar(50) NOT NULL,
  `Bao_tri` int(1) NOT NULL,
  `description` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `copyrights` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cqn_setting`
--

INSERT INTO `cqn_setting` (`ID`, `Home_url`, `Bao_tri`, `description`, `email`, `copyrights`) VALUES
(1, 'http://localhost:81/BLOG', 0, 'blog tin tức về Bayern Munich nhanh chóng, chính x', 'quenhon2002@gmail.com', 'Josh ChauQueNhon');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `player`
--

CREATE TABLE `player` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `POSTITION` varchar(2) NOT NULL,
  `NUMBER_KIT` int(11) NOT NULL,
  `NATIONAL` varchar(50) NOT NULL,
  `HEIGHT` int(11) NOT NULL,
  `WEIGHT` int(11) NOT NULL,
  `GAME` int(11) NOT NULL,
  `GOAL` int(11) NOT NULL,
  `ASSITS` int(11) NOT NULL,
  `VALUE` int(11) NOT NULL,
  `AGE` int(11) NOT NULL,
  `WAGE` int(11) NOT NULL,
  `CONTRACT_EXP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `player`
--

INSERT INTO `player` (`ID`, `NAME`, `POSTITION`, `NUMBER_KIT`, `NATIONAL`, `HEIGHT`, `WEIGHT`, `GAME`, `GOAL`, `ASSITS`, `VALUE`, `AGE`, `WAGE`, `CONTRACT_EXP`) VALUES
(1, 'Robert Lewandowski', 'CF', 9, 'Ba Lan', 186, 85, 24, 31, 5, 45000000, 33, 0, 0),
(2, 'Joshua Kimmich', 'CM', 6, 'Đức', 177, 75, 30, 3, 8, 80000000, 26, 0, 0),
(3, 'Manuel Neuer', 'GK', 1, 'NONE', 0, 0, 31, 0, 0, 0, 33, 0, 0),
(4, 'Leon Goretzka', 'CM', 8, 'NONE', 0, 0, 22, 4, 2, 0, 27, 0, 0),
(5, 'Leroy Sane', 'LW', 10, 'NONE', 0, 0, 37, 14, 14, 0, 26, 0, 0),
(6, 'Lucas Hernandez', 'CB', 21, 'NONE', 0, 0, 28, 0, 1, 0, 26, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(200) NOT NULL,
  `CONTENT` mediumtext NOT NULL,
  `date_post` datetime DEFAULT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`ID`, `TITLE`, `CONTENT`, `date_post`, `category`) VALUES
(1, 'SAO Bayern Munich khóc nức nở sau khi đội nhà dứt cơn hạn World Cup 36 năm', 'baiviet/Sao-bayern-khoc-nuc-no.php', '2022-03-30 17:36:10', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `users` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `rights` int(11) NOT NULL,
  `name` varchar(11) DEFAULT NULL,
  `coin` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`ID`, `users`, `pass`, `rights`, `name`, `coin`, `email`) VALUES
(1, 'admin', '123456', 3, 'Josh', 50000, NULL),
(2, 'lewy', '123456', 2, 'Lewandowski', 10000, NULL),
(100001201, 'xoxvp', '123456', 0, 'Nhon Chau', 5000, 'support_bmvn@gmail.com'),
(100001203, 'CQNSinger', '123456', 0, 'Nhon Chau', 5000, 'Quenhon2002@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cqn_setting`
--
ALTER TABLE `cqn_setting`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cqn_setting`
--
ALTER TABLE `cqn_setting`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `player`
--
ALTER TABLE `player`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100001204;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
