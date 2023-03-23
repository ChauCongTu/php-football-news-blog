-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 10, 2022 lúc 12:34 PM
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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cqn_baiviet`
--

INSERT INTO `cqn_baiviet` (`post_id`, `tenbaiviet`, `slug_bv`, `noidung`, `tag`, `post_date`, `last_update_date`, `category_id`, `user_id`) VALUES
(1, 'Lunar New Year Festival', 'lunar-new-year-festival-often-falls', 'Lunar New Year Festival often falls between late January and early February; it is among the most important holidays in Vietnam. Officially, the festival includes the 1st, 2nd, and 3rd day in Lunar Calendar; however, Vietnamese people often spend nearly a month celebrating this special event. Tet Holiday gets its beginning marked with the first day in the Lunar Year; however, its preparation starts long before that. The 23rd day of the last Lunar month is East Day—a ritual worshiping Kitchen Gods (Tao Cong). It thought that each year on this day, these Gods go to heaven to tell Jade Emperor about all activities of households on earth. On New Year’s Eve, they return home to continue their duties as taking care of families. On New Year’s Day, the first ones who come to visit households—called first-foot—are very important and hence need to be well chosen, as they believed to hold in their hands the entire luck of the family in New Year (Tan Nien). After that, till the third day or even the fourth day of Tet, individuals meet relatives, friends, and colleagues, wishing them all kinds of good things like happiness, health, and success.', 'baivietthunhat', '2022-07-08 05:36:03', '2022-07-08 05:36:03', 1, 1),
(2, 'Source Code Share code Mblog v2.0 blog cá nhân‎ đẹp', 'Source-Code-Share-code-Mblog-v2-0-blog-ca-nhan-dep', 'Most of my friends like to stay inside to play video games, When going to school, there are many subjects; however I still like literature the most. First, literature plays an important role in both education and daily life. Literature is not limit to a subject to be learnt at school. Furthermore, this subject teaches human about several aspects of life. From the very first step, student learns to write, read as well as describe things and people. Moreover, literature teaches one to be a responsible citizen and likeable personality. Literature is more than a subject, it’s an art and it can be applied directly into life such as: journalism, editor. People are not born to learn this unique subject, it needs long time to exercise to master. Besides, when learning literature people not only know more works of art but also understand culture, tradition of each country. Literature is the mirror reflecting human and their lifestyle. Studying literature means learning the way to love and live a true life. All in all, with great benefits of literature, it is necessary for each society especially developing countries.\n\nXem chi tiết tại:When going to school, there are many subjects; however I still like literature the most. First, literature plays an important role in both education and daily life. Literature is not limit to a subject to be learnt at school. Furthermore, this subject teaches human about several aspects of life. From the very first step, student learns to write, read as well as describe things and people. Moreover, literature teaches one to be a responsible citizen and likeable personality. Literature is more than a subject, it’s an art and it can be applied directly into life such as: journalism, editor. People are not born to learn this unique subject, it needs long time to exercise to master. Besides, when learning literature people not only know more works of art but also understand culture, tradition of each country. Literature is the mirror reflecting human and their lifestyle. Studying literature means learning the way to love and live a true life. All in all, with great benefits of literature, it is necessary for each society especially developing countries.\n\nXem chi tiết tại:When going to school, there are many subjects; however I still like literature the most. First, literature plays an important role in both education and daily life. Literature is not limit to a subject to be learnt at school. Furthermore, this subject teaches human about several aspects of life. From the very first step, student learns to write, read as well as describe things and people. Moreover, literature teaches one to be a responsible citizen and likeable personality. Literature is more than a subject, it’s an art and it can be applied directly into life such as: journalism, editor. People are not born to learn this unique subject, it needs long time to exercise to master. Besides, when learning literature people not only know more works of art but also understand culture, tradition of each country. Literature is the mirror reflecting human and their lifestyle. Studying literature means learning the way to love and live a true life. All in all, with great benefits of literature, it is necessary for each society especially developing countries.\n\nXem chi tiết tại:When going to school, there are many subjects; however I still like literature the most. First, literature plays an important role in both education and daily life. Literature is not limit to a subject to be learnt at school. Furthermore, this subject teaches human about several aspects of life. From the very first step, student learns to write, read as well as describe things and people. Moreover, literature teaches one to be a responsible citizen and likeable personality. Literature is more than a subject, it’s an art and it can be applied directly into life such as: journalism, editor. People are not born to learn this unique subject, it needs long time to exercise to master. Besides, when learning literature people not only know more works of art but also understand culture, tradition of each country. Literature is the mirror reflecting human and their lifestyle. Studying literature means learning the way to love and live a true life. All in all, with great benefits of literature, it is necessary for each society especially developing countries.\n\nXem chi tiết tại:When going to school, there are many subjects; however I still like literature the most. First, literature plays an important role in both education and daily life. Literature is not limit to a subject to be learnt at school. Furthermore, this subject teaches human about several aspects of life. From the very first step, student learns to write, read as well as describe things and people. Moreover, literature teaches one to be a responsible citizen and likeable personality. Literature is more than a subject, it’s an art and it can be applied directly into life such as: journalism, editor. People are not born to learn this unique subject, it needs long time to exercise to master. Besides, when learning literature people not only know more works of art but also understand culture, tradition of each country. Literature is the mirror reflecting human and their lifestyle. Studying literature means learning the way to love and live a true life. All in all, with great benefits of literature, it is necessary for each society especially developing countries.\n\nXem chi tiết tại:When going to school, there are many subjects; however I still like literature the most. First, literature plays an important role in both education and daily life. Literature is not limit to a subject to be learnt at school. Furthermore, this subject teaches human about several aspects of life. From the very first step, student learns to write, read as well as describe things and people. Moreover, literature teaches one to be a responsible citizen and likeable personality. Literature is more than a subject, it’s an art and it can be applied directly into life such as: journalism, editor. People are not born to learn this unique subject, it needs long time to exercise to master. Besides, when learning literature people not only know more works of art but also understand culture, tradition of each country. Literature is the mirror reflecting human and their lifestyle. Studying literature means learning the way to love and live a true life. All in all, with great benefits of literature, it is necessary for each society especially developing countries.\n\nXem chi tiết tại:When going to school, there are many subjects; however I still like literature the most. First, literature plays an important role in both education and daily life. Literature is not limit to a subject to be learnt at school. Furthermore, this subject teaches human about several aspects of life. From the very first step, student learns to write, read as well as describe things and people. Moreover, literature teaches one to be a responsible citizen and likeable personality. Literature is more than a subject, it’s an art and it can be applied directly into life such as: journalism, editor. People are not born to learn this unique subject, it needs long time to exercise to master. Besides, when learning literature people not only know more works of art but also understand culture, tradition of each country. Literature is the mirror reflecting human and their lifestyle. Studying literature means learning the way to love and live a true life. All in all, with great benefits of literature, it is necessary for each society especially developing countries.\n\nXem chi tiết tại:When going to school, there are many subjects; however I still like literature the most. First, literature plays an important role in both education and daily life. Literature is not limit to a subject to be learnt at school. Furthermore, this subject teaches human about several aspects of life. From the very first step, student learns to write, read as well as describe things and people. Moreover, literature teaches one to be a responsible citizen and likeable personality. Literature is more than a subject, it’s an art and it can be applied directly into life such as: journalism, editor. People are not born to learn this unique subject, it needs long time to exercise to master. Besides, when learning literature people not only know more works of art but also understand culture, tradition of each country. Literature is the mirror reflecting human and their lifestyle. Studying literature means learning the way to love and live a true life. All in all, with great benefits of literature, it is necessary for each society especially developing countries.\n\nXem chi tiết tại:When going to school, there are many subjects; however I still like literature the most. First, literature plays an important role in both education and daily life. Literature is not limit to a subject to be learnt at school. Furthermore, this subject teaches human about several aspects of life. From the very first step, student learns to write, read as well as describe things and people. Moreover, literature teaches one to be a responsible citizen and likeable personality. Literature is more than a subject, it’s an art and it can be applied directly into life such as: journalism, editor. People are not born to learn this unique subject, it needs long time to exercise to master. Besides, when learning literature people not only know more works of art but also understand culture, tradition of each country. Literature is the mirror reflecting human and their lifestyle. Studying literature means learning the way to love and live a true life. All in all, with great benefits of literature, it is necessary for each society especially developing countries.\n\nXem chi tiết tại:When going to school, there are many subjects; however I still like literature the most. First, literature plays an important role in both education and daily life. Literature is not limit to a subject to be learnt at school. Furthermore, this subject teaches human about several aspects of life. From the very first step, student learns to write, read as well as describe things and people. Moreover, literature teaches one to be a responsible citizen and likeable personality. Literature is more than a subject, it’s an art and it can be applied directly into life such as: journalism, editor. People are not born to learn this unique subject, it needs long time to exercise to master. Besides, when learning literature people not only know more works of art but also understand culture, tradition of each country. Literature is the mirror reflecting human and their lifestyle. Studying literature means learning the way to love and live a true life. All in all, with great benefits of literature, it is necessary for each society especially developing countries.\n\nXem chi tiết tại:When going to school, there are many subjects; however I still like literature the most. First, literature plays an important role in both education and daily life. Literature is not limit to a subject to be learnt at school. Furthermore, this subject teaches human about several aspects of life. From the very first step, student learns to write, read as well as describe things and people. Moreover, literature teaches one to be a responsible citizen and likeable personality. Literature is more than a subject, it’s an art and it can be applied directly into life such as: journalism, editor. People are not born to learn this unique subject, it needs long time to exercise to master. Besides, when learning literature people not only know more works of art but also understand culture, tradition of each country. Literature is the mirror reflecting human and their lifestyle. Studying literature means learning the way to love and live a true life. All in all, with great benefits of literature, it is necessary for each society especially developing countries.\n\nXem chi tiết tại:read books or watch TV, but I have a good hobby of going outside and playing sports. I play many different sports in my free time; some of them are soccer, swimming, volleyball and basketball. Sometimes I also ride the bikes or do board skating with my cousin in the park. In my opinion, doing sport is one of the rare hobbies that actually have good impacts on me. I am taller than most of my classmates thanks to swimming and basketball lessons that I take during summer time. My muscles are even stronger than my older brother, and I can last longer than most other people in any sport competition. Sports bring me a lot of benefits, and they are also fun things to do at the same time. I love the feeling of the cool water run through my face when I am swimming, and it seems like I am flying whenever I take a dive underwater. When I play soccer, it is very exciting for me or my teammates to score a goal even though we do not take part in any tournament. Both of my physical and mental health become better after I play sports, so it can be considered as the best things to do in my free time. Sports are like a part of my life besides other activities, and I will continue to play sports till I am too weak for them.', 'baivietthu2', '2022-07-08 16:26:41', '2022-07-08 16:26:41', 1, 1);

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
(1, 'Công Nghệ', 'cong-nghe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cqn_comment`
--

CREATE TABLE `cqn_comment` (
  `comment_id` int(11) NOT NULL,
  `comment_date` datetime NOT NULL,
  `ten` varchar(50) NOT NULL,
  `trangthai` int(1) NOT NULL,
  `noidung` varchar(500) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cqn_contact`
--

CREATE TABLE `cqn_contact` (
  `contact_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tieude` varchar(100) NOT NULL,
  `noidung` varchar(2000) NOT NULL,
  `contact_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `cqn_category`
--
ALTER TABLE `cqn_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cqn_comment`
--
ALTER TABLE `cqn_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cqn_contact`
--
ALTER TABLE `cqn_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

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
