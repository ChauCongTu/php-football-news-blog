-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 14, 2022 lúc 01:12 PM
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
-- Cơ sở dữ liệu: `cqn_blog`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cqn_about`
--

CREATE TABLE `cqn_about` (
  `about_id` int(11) NOT NULL,
  `anh` varchar(50) NOT NULL,
  `gioithieu` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cqn_baiviet`
--

CREATE TABLE `cqn_baiviet` (
  `post_id` int(11) NOT NULL,
  `tenbaiviet` varchar(200) NOT NULL,
  `slug_bv` varchar(200) NOT NULL,
  `noidung` text NOT NULL,
  `tag` varchar(50) NOT NULL,
  `post_date` datetime NOT NULL,
  `last_update_date` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `view` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cqn_baiviet`
--

INSERT INTO `cqn_baiviet` (`post_id`, `tenbaiviet`, `slug_bv`, `noidung`, `tag`, `post_date`, `last_update_date`, `category_id`, `user_id`, `view`) VALUES
(1, 'Lunar New Year Festival', 'lunar-new-year-festival-often-falls', '<p><img class=\"rounded\" src=\"http://localhost:81/blog/img/post/1.png\" width=\"100%\"></p><p>Lunar New Year Festival often falls between late January and early February; it is among the most important holidays in Vietnam. Officially, the festival includes the 1st, 2nd, and 3rd day in Lunar Calendar; however, Vietnamese people often spend nearly a month celebrating this special event. Tet Holiday gets its beginning marked with the first day in the Lunar Year; however, its preparation starts long before that. The 23rd day of the last Lunar month is East Day—a ritual worshiping Kitchen Gods (Tao Cong). It thought that each year on this day, these Gods go to heaven to tell Jade Emperor about all activities of households on earth. On New Year’s Eve, they return home to continue their duties as taking care of families. On New Year’s Day, the first ones who come to visit households—called first-foot—are very important and hence need to be well chosen, as they believed to hold in their hands the entire luck of the family in New Year (Tan Nien). After that, till the third day or even the fourth day of Tet, individuals meet relatives, friends, and colleagues, wishing them all kinds of good things like happiness, health, and success.</p>', 'baivietthunhat', '2022-07-08 05:36:03', '2022-07-08 05:36:03', 1611840, 1, 78),
(4, 'Write about your ideal lover in future', 'write-about-your-ideal-lover-in-future', '<p><b>rite about your ideal lover in future</b></p>\r\n<p>\r\nEach person must have the ideal partner for themselves. For me, my ideal partner is a good heart, honesty, and respect parents, hardworking, and educated. Moreover, she is also a pretty and attractive woman.</p>\r\n<p>\r\nFirstly, I love my ideal partner very much because she is enough clever to keep my heart cheerful and always helps me when I need her, especially in my studies.\r\n</p>\r\n<p>\r\nBesides that, my girlfriend is good heart and responsible when she always reminds me that education is very important because that is what determines our future.</p>', 'bai, nhon, chau', '2022-07-14 09:55:53', '2022-07-14 09:55:53', 1611839, 1, 21),
(5, 'Write about your ideal lover in 2', 'write-about-your-ideal-lover-in-2', '<p><b>rite about your ideal lover in future</b></p>\r\n<p>\r\nEach person must have the ideal partner for themselves. For me, my ideal partner is a good heart, honesty, and respect parents, hardworking, and educated. Moreover, she is also a pretty and attractive woman.</p>\r\n<p>\r\nFirstly, I love my ideal partner very much because she is enough clever to keep my heart cheerful and always helps me when I need her, especially in my studies.\r\n</p>\r\n<p>\r\nBesides that, my girlfriend is good heart and responsible when she always reminds me that education is very important because that is what determines our future.</p>', 'bai, nhon, chau', '2022-07-14 09:55:53', '2022-07-14 09:55:53', 1611839, 1, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cqn_category`
--

CREATE TABLE `cqn_category` (
  `category_id` int(11) NOT NULL,
  `tenchuyenmuc` varchar(50) NOT NULL,
  `slug_cm` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cqn_category`
--

INSERT INTO `cqn_category` (`category_id`, `tenchuyenmuc`, `slug_cm`) VALUES
(14, 'Tin chuyển nhượng', 'tin-chuyen-nhuong'),
(15, 'Bóng đá', 'bong-da'),
(1611839, 'Thủ Thuật', 'thu-thuat'),
(1611840, 'JAVA', 'java'),
(1611841, 'HTML/CSS', 'html-css'),
(1611842, 'Bayern Munich', 'bayern-munich');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cqn_comment`
--

CREATE TABLE `cqn_comment` (
  `comment_id` int(11) NOT NULL,
  `comment_date` datetime NOT NULL,
  `ten` varchar(50) NOT NULL,
  `trangthai` int(1) NOT NULL,
  `noidung_cmt` varchar(500) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cqn_comment`
--

INSERT INTO `cqn_comment` (`comment_id`, `comment_date`, `ten`, `trangthai`, `noidung_cmt`, `post_id`) VALUES
(2, '0000-00-00 00:00:00', 'Nhon Chau', 1, 'Test cmt lần 2', 1),
(5, '0000-00-00 00:00:00', 'Nhon Chau', 1, 'test cmt lần 4', 1),
(6, '0000-00-00 00:00:00', 'Chau Nhon', 1, 'test cmt lần 5\r\n', 1),
(8, '0000-00-00 00:00:00', 'Kimmich', 0, 'Test cmt lần 6', 1),
(9, '0000-00-00 00:00:00', 'Sane', 0, '1234', 1),
(10, '0000-00-00 00:00:00', 'Nhon Chau', 0, 'Test bình luận', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cqn_contact`
--

CREATE TABLE `cqn_contact` (
  `contact_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tieude` varchar(100) NOT NULL,
  `noidung` varchar(2000) NOT NULL,
  `contact_date` datetime NOT NULL,
  `daxem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cqn_contact`
--

INSERT INTO `cqn_contact` (`contact_id`, `email`, `tieude`, `noidung`, `contact_date`, `daxem`) VALUES
(1, 'Quenhon2002@gmail.com', 'Dear CQN Blog\'s Admin', 'Test form liên hệ thứ nhất', '0000-00-00 00:00:00', 0),
(2, 'cnhon5496@gmail.com', 'Dear Admin of CQN Blog', 'Nhơn đẹp trai vãi cả lo', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cqn_home`
--

CREATE TABLE `cqn_home` (
  `home_id` int(11) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `background` varchar(50) NOT NULL,
  `gioithieu` varchar(200) NOT NULL,
  `tieude` varchar(200) NOT NULL,
  `copyrights` varchar(50) NOT NULL,
  `setting_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cqn_home`
--

INSERT INTO `cqn_home` (`home_id`, `logo`, `background`, `gioithieu`, `tieude`, `copyrights`, `setting_id`) VALUES
(1, 'logo.png', 'bg.png', 'DEV . MUSIC . FOOTBALL', 'JOSH CQN', 'JOSH CQN', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cqn_setting`
--

CREATE TABLE `cqn_setting` (
  `setting_id` int(5) NOT NULL,
  `home_url` varchar(50) NOT NULL,
  `mota` varchar(200) NOT NULL,
  `tieude` varchar(200) NOT NULL,
  `trangthai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cqn_setting`
--

INSERT INTO `cqn_setting` (`setting_id`, `home_url`, `mota`, `tieude`, `trangthai`) VALUES
(1, 'http://localhost:81/BLOG', 'Josh CQN - blog tổng hợp', 'Blog chia sẻ công nghệ, tin tức bóng đá', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cqn_testimonial`
--

CREATE TABLE `cqn_testimonial` (
  `id` int(11) NOT NULL,
  `chamngon` varchar(200) NOT NULL,
  `tacgia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cqn_testimonial`
--

INSERT INTO `cqn_testimonial` (`id`, `chamngon`, `tacgia`) VALUES
(2, 'When you want to give up, remember why you started.', 'Khuyết danh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cqn_user`
--

CREATE TABLE `cqn_user` (
  `user_id` int(11) NOT NULL,
  `tendangnhap` varchar(20) NOT NULL,
  `matkhau` varchar(20) NOT NULL,
  `tenhienthi` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `facebook` varchar(50) NOT NULL,
  `sodienthoai` varchar(11) NOT NULL,
  `vaitro` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cqn_user`
--

INSERT INTO `cqn_user` (`user_id`, `tendangnhap`, `matkhau`, `tenhienthi`, `email`, `facebook`, `sodienthoai`, `vaitro`, `trangthai`) VALUES
(1, 'admin', '123456', 'Admin', 'admin@chaucongtu.com', 'xoxvp', '0848611127', 3, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cqn_about`
--
ALTER TABLE `cqn_about`
  ADD PRIMARY KEY (`about_id`);

--
-- Chỉ mục cho bảng `cqn_baiviet`
--
ALTER TABLE `cqn_baiviet`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `cqn_category`
--
ALTER TABLE `cqn_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `cqn_comment`
--
ALTER TABLE `cqn_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `cqn_contact`
--
ALTER TABLE `cqn_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `cqn_home`
--
ALTER TABLE `cqn_home`
  ADD PRIMARY KEY (`home_id`),
  ADD KEY `setting_id` (`setting_id`);

--
-- Chỉ mục cho bảng `cqn_setting`
--
ALTER TABLE `cqn_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Chỉ mục cho bảng `cqn_testimonial`
--
ALTER TABLE `cqn_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cqn_user`
--
ALTER TABLE `cqn_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cqn_about`
--
ALTER TABLE `cqn_about`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cqn_baiviet`
--
ALTER TABLE `cqn_baiviet`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `cqn_category`
--
ALTER TABLE `cqn_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1611844;

--
-- AUTO_INCREMENT cho bảng `cqn_comment`
--
ALTER TABLE `cqn_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `cqn_contact`
--
ALTER TABLE `cqn_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cqn_home`
--
ALTER TABLE `cqn_home`
  MODIFY `home_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cqn_setting`
--
ALTER TABLE `cqn_setting`
  MODIFY `setting_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cqn_testimonial`
--
ALTER TABLE `cqn_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cqn_user`
--
ALTER TABLE `cqn_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cqn_baiviet`
--
ALTER TABLE `cqn_baiviet`
  ADD CONSTRAINT `cqn_baiviet_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `cqn_category` (`category_id`),
  ADD CONSTRAINT `cqn_baiviet_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `cqn_user` (`user_id`);

--
-- Các ràng buộc cho bảng `cqn_comment`
--
ALTER TABLE `cqn_comment`
  ADD CONSTRAINT `cqn_comment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `cqn_baiviet` (`post_id`);

--
-- Các ràng buộc cho bảng `cqn_home`
--
ALTER TABLE `cqn_home`
  ADD CONSTRAINT `cqn_home_ibfk_1` FOREIGN KEY (`setting_id`) REFERENCES `cqn_setting` (`setting_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
