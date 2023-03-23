-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 12, 2022 lúc 11:00 AM
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
(17, 'Phản ứng đầu tiên của Ronaldo sau nhiều ngày im lặng', 'phan-ung-dau-tien-cua-ronaldo-sau-nhieu-ngay-im-lang', '<p>Tr&ecirc;n trang c&aacute; nh&acirc;n, Cristiano Ronaldo đăng tải h&igrave;nh ảnh anh đang v&ugrave;i m&igrave;nh trong ph&ograve;ng tập. CR7 để lộ th&acirc;n h&igrave;nh với m&uacute;i cơ săn chắc, k&egrave;m lời nhắn: &quot;Hard work&quot; (tạm dịch: Tập luyện chăm chỉ - PV). Lần đầu ti&ecirc;n cựu sao Juventus c&oacute; động th&aacute;i trước giới truyền th&ocirc;ng sau tin đồn đ&ograve;i rời Old Trafford.</p>\r\n\r\n<p><br />\r\nNg&agrave;y 2/7, tờ The Times cho biết Ronaldo c&oacute; thể đ&atilde; chơi trận cuối c&ugrave;ng cho Man Utd. Nhiều nguồn tin uy t&iacute;n cũng x&aacute;c nhận Ronaldo muốn &quot;Quỷ đỏ&quot; b&aacute;n anh nếu nhận được lời đề nghị thỏa đ&aacute;ng. Kể từ đ&oacute; đến nay, Ronaldo giữ im lặng. Anh kh&ocirc;ng c&oacute; ph&aacute;t biểu n&agrave;o, cũng như kh&ocirc;ng cập nhật trạng th&aacute;i tr&ecirc;n trang c&aacute; nh&acirc;n.</p>\r\n\r\n<p><br />\r\nKhi tương lai chưa r&otilde; r&agrave;ng, c&oacute; lẽ Ronaldo coi việc tập luyện chăm chỉ l&agrave; ưu ti&ecirc;n h&agrave;ng đầu. Giữ g&igrave;n v&oacute;c d&aacute;ng l&agrave; phần quan trọng để Ronaldo c&oacute; sức khỏe phục vụ cho c&ocirc;ng việc.</p>\r\n\r\n<p><br />\r\n<img src=\"https://znews-photo.zingcdn.me/w860/Uploaded/mfnuy/2022_07_14/293753379_620188049467739_6578542561172145679_n.jpg\" style=\"width:100%\" /><small><em>Ronaldo tập luyện sau kỳ nghỉ</em></small><br />\r\n<br />\r\nNgười đại diện Jorge Mendes đ&atilde; li&ecirc;n tục mời ch&agrave;o Chelsea, Bayern Munich mua Ronaldo trong kỳ chuyển nhượng m&ugrave;a h&egrave; năm nay. Tuy nhi&ecirc;n, Ronaldo to&agrave;n nhận về những lời từ chối.<br />\r\n&quot;T&ocirc;i đ&aacute;nh gi&aacute; cao Ronaldo. Cậu ấy l&agrave; một trong những cầu thủ vĩ đại nhất. Tuy nhi&ecirc;n, việc chi&ecirc;u mộ Ronaldo kh&ocirc;ng ph&ugrave; hợp với triết l&yacute; của Bayern Munich&quot;, Gi&aacute;m đốc Điều h&agrave;nh Oliver Kahn của Bayern ph&aacute;t biểu.<br />\r\nHLV Thomas Tuchel cũng n&oacute;i r&otilde; với chủ sở hữu Todd Boehly về quyết định kh&ocirc;ng k&yacute; hợp đồng với Ronaldo. HLV Tuchel lo ngại c&aacute;i t&ocirc;i v&agrave; khả năng hỗ trợ ph&ograve;ng ngự của CR7 sẽ ảnh hưởng đến lối chơi chung của Chelsea.</p>\r\n\r\n<p><br />\r\nRonaldo đang lấy l&yacute; do gia đ&igrave;nh để tr&igrave; ho&atilde;n việc trở lại hội qu&acirc;n c&ugrave;ng Manchester United. &quot;Quỷ đỏ&quot; buộc phải dự tour du đấu h&egrave; m&agrave; kh&ocirc;ng c&oacute; ng&ocirc;i sao mang &aacute;o số 7. D&ugrave; vậy, Man Utd kh&ocirc;ng c&oacute; &yacute; định b&aacute;n Ronaldo.<br />\r\nHLV Erik ten Hag tuy&ecirc;n bố: &quot;Ronaldo kh&ocirc;ng phải để b&aacute;n. Cậu ấy nằm trong kế hoạch của ch&uacute;ng t&ocirc;i. Hiện tại, Ronaldo kh&ocirc;ng ở c&ugrave;ng đội b&oacute;ng v&igrave; bận giải quyết c&aacute;c vấn đề c&aacute; nh&acirc;n. Ch&uacute;ng t&ocirc;i đang l&ecirc;n kế hoạch c&oacute; Ronaldo cho m&ugrave;a giải mới. Mọi chuyện chỉ c&oacute; vậy&quot;.</p>\r\n', 'Null', '2022-07-15 00:00:00', '2022-07-26 00:00:00', 15, 1, 93),
(18, 'Gnabry quay xe, sắp gia hạn với Bayern', 'gnabry-quay-xe-sap-gia-han-voi-bayern', '<p><strong>Cuối c&ugrave;ng th&igrave; tương lai của Serge Gnabry cũng trở n&ecirc;n r&otilde; r&agrave;ng! Cầu thủ chạy c&aacute;nh người Đức chuẩn bị gia hạn hợp đồng với Bayern, qua đ&oacute; chấm dứt cơ hội sở hữu Gnabry của Chelsea.</strong></p>\n\n<p>Theo tờ Kicker, Gnabry đ&atilde; đồng &yacute; gia hạn với H&ugrave;m x&aacute;m về mặt nguy&ecirc;n tắc. C&aacute;c b&ecirc;n chỉ c&ograve;n thương lượng th&ecirc;m một số chi tiết của bản hợp đồng dự kiến k&eacute;o d&agrave;i tới năm 2027. Cần nhấn mạnh l&agrave; 2027, tức l&agrave; d&agrave;i th&ecirc;m 4 năm so với hợp đồng hiện tại (tới năm 2023). Điều đ&oacute; cho thấy, Bayern đ&aacute;nh gi&aacute; cao vai tr&ograve; của Gnabry trong kế hoạch d&agrave;i hơi.</p>\n\n<p>Trước đ&oacute;, tiến tr&igrave;nh gia hạn của Gnabry từng l&acirc;m v&agrave;o ng&otilde; cụt. Hai b&ecirc;n kh&ocirc;ng t&igrave;m được tiếng n&oacute;i chung cả về mức lương lẫn kh&iacute;a cạnh chuy&ecirc;n m&ocirc;n (Gnabry muốn được đảm bảo một vai tr&ograve; r&otilde; r&agrave;ng v&agrave; quan trọng tại s&acirc;n Allianz Arena). Ngay từ ph&iacute;a Bayern cũng kh&ocirc;ng c&oacute; được quan điểm r&otilde; r&agrave;ng về Gnabry. Họ nửa muốn gia hạn nửa muốn b&aacute;n cầu thủ chạy c&aacute;nh người Đức trong h&egrave; n&agrave;y để tr&aacute;nh nguy cơ mất trắng v&agrave;o h&egrave; 2023 (thời điểm Gnabry hết hợp đồng). Cả Robert Lewandowski lẫn Serge Gnabry đều sẽ hết hợp đồng v&agrave;o năm sau, v&agrave; Bayern kh&ocirc;ng muốn lặp lại vết xe đổ của những David Alaba, Jerome Boateng, Niklas Suele (ra đi dưới dạng chuyển nhượng tự do).&nbsp;</p>\n\n<p><img alt=\"Gnabry sẽ ở lại Bayern thêm 4 năm, chấm dứt hy vọng có anh trong đội hình của Chelsea\" src=\"https://cdn.bongdaplus.vn/Assets/Media/2022/07/15/25/gnabry-1.jpg\" style=\"width:100%\" /></p>\n\n<p>Theo Kicker, Gnabry sẽ nhận được &ldquo;bản hợp đồng lớn nhất trong sự nghiệp&rdquo; cả ở kh&iacute;a cạnh thời gian (k&eacute;o d&agrave;i tới 2027) cho tới thu nhập. Cầu thủ sinh năm 1995 l&agrave; trụ cột thứ ba gia hạn với H&ugrave;m x&aacute;m trong h&egrave; n&agrave;y sau Manuel Neuer v&agrave; Thomas Mueller. Việc gia hạn với Bayern cũng đảm bảo cho Gnabry một m&ugrave;a giải ổn định trước khi c&ugrave;ng ĐT Đức tham dự World Cup v&agrave;o th&aacute;ng 11. Gia nhập một đội b&oacute;ng lớn kh&aacute;c trước thềm World Cup chưa bao giờ l&agrave; lựa chọn ưu ti&ecirc;n của c&aacute;c cầu thủ h&agrave;ng đầu.</p>\n\n<p>Gnabry vừa trải qua m&ugrave;a giải kh&ocirc;ng tồi trong m&agrave;u &aacute;o Bayern. Cựu cầu thủ Arsenal ghi được 17 b&agrave;n thắng sau 45 lần ra s&acirc;n tr&ecirc;n mọi đấu trường. Tuy nhi&ecirc;n đ&oacute; vẫn chưa phải l&agrave; Gnabry của m&ugrave;a giải đỉnh cao 2019/20 khi cầu thủ n&agrave;y đ&oacute;ng vai tr&ograve; quan trọng trong c&uacute; ăn ba lịch sử của H&ugrave;m x&aacute;m với 46 trận, 23 b&agrave;n thắng. Phong độ kh&aacute; thất thường của Gnabry khiến anh chưa bật l&ecirc;n được so với hai cầu thủ chạy c&aacute;nh c&ograve;n lại l&agrave; Kingsley Coman v&agrave; Leroy Sane. V&agrave; đ&oacute; cũng l&agrave; l&yacute; do khiến Bayern từng kh&aacute; lưỡng lự về tương lai của Gnabry.</p>\n\n<p>Nhưng b&acirc;y giờ th&igrave; mọi thứ đ&atilde; th&ocirc;ng suốt. Gnabry sẽ ở lại để tiếp tục cuộc cạnh tranh khốc liệt với Coman, Sane v&agrave; t&acirc;n binh Sadio Mane. Việc Gnabry sắp gia hạn hợp đồng với Bayern cũng l&agrave; một t&iacute;n hiệu cho thấy Robert Lewandowski sẽ ra đi. Barcelona đang chuẩn bị một lời đề nghị 50 triệu euro để buộc Bayern kh&ocirc;ng thể chối từ. Bayern hiện cũng chưa t&igrave;m được số 9 n&agrave;o thay thế Lewandowski. Thế n&ecirc;n việc giữ lại Gnabry sẽ đảm bảo qu&acirc;n số kh&aacute; dồi d&agrave;o tr&ecirc;n h&agrave;ng c&ocirc;ng, gi&uacute;p cho Nagelsmann c&oacute; nhiều lựa chọn chiến thuật v&iacute; dụ như d&ugrave;ng số 9 ảo.</p>\n', 'Null', '2022-07-15 00:00:00', '2022-07-15 00:00:00', 1611845, 1, 152),
(19, 'Bayern đạt thỏa thuận chiêu mộ De Ligt giá 80 triệu euro', 'bayern-dat-thoa-thuan-chieu-mo-de-ligt-gia-80-trieu-euro', '<p><strong>Nh&agrave; b&aacute;o Fabrizio Romano cho hay Bayern Munich đ&atilde; tiến s&aacute;t đến việc chi&ecirc;u mộ 1 trung vệ c&oacute; gi&aacute; 80 triệu euro.</strong></p>\r\n\r\n<p>Theo đ&oacute;, tr&ecirc;n trang Twitter c&aacute; nh&acirc;n, nh&agrave; b&aacute;o Fabrizio Romano viết:&nbsp;&quot;Matthijs de Ligt sẽ đến FC Bayern Munich, Here we go!&nbsp;Thỏa thuận&nbsp;sơ bộ đ&atilde; được chốt v&agrave;o&nbsp;tối nay v&igrave; c&aacute;c c&acirc;u lạc bộ đ&atilde; đ&agrave;m ph&aacute;n với nhau&nbsp;cả ng&agrave;y - mức gi&aacute; cuối c&ugrave;ng được Juventus chấp nhận cho&nbsp;thương vụ n&agrave;y l&agrave;&nbsp;hơn 80 triệu euro.&nbsp;De Ligt&nbsp;đ&atilde; đồng &yacute; c&aacute;c điều khoản c&aacute; nh&acirc;n v&agrave; sẽ k&yacute; hợp đồng c&oacute; thời hạn đến th&aacute;ng 6 năm 2027.&quot;</p>\r\n\r\n<p><img alt=\"Bayern hoàn tất thỏa thuận chiêu mộ De Ligt\" src=\"https://cdnmedia.thethaovanhoa.vn/Upload/GrOsnn7RrBqY3MFcTV55g/files/01-deligttt.jpg\" style=\"border-style:solid; border-width:1px; margin:1px; width:100%\" /></p>\r\n\r\n<p>Như vậy,&nbsp;sau khi chia tay ch&acirc;n s&uacute;t chủ lực&nbsp;Robert Lewandowski, Bayern Munich đang hướng đến việc n&acirc;ng cấp h&agrave;ng thủ bằng một hợp đồng đ&igrave;nh đ&aacute;m mang t&ecirc;n De Ligt. Trung vệ người H&agrave; Lan đ&atilde; c&oacute; những bước tiến đ&aacute;ng ch&uacute; &yacute; trong th&agrave;nh phần của Juventus sau khi chuyển đến từ Ajax Amsterdam.</p>\r\n\r\n<p><img alt=\"De Ligt muốn gia nhập Bayern Munich\" src=\"https://photo-cms-sggp.zadn.vn/w580/Uploaded/2022/negbflyrlys/2022_07_11/bay2_niao.png\" style=\"border-style:solid; border-width:1px; margin:1px; width:100%\" /></p>\r\n\r\n<p>Để c&oacute; được c&aacute;i gật đầu từ cầu thủ sinh năm 1999, H&ugrave;m x&aacute;m xứ Bavaria đ&atilde; phải vượt qua sự cạnh tranh gay gắt từ Chelsea - đội b&oacute;ng cũng muốn gia cố ph&ograve;ng tuyến của m&igrave;nh khi Antonio Rudiger v&agrave; Andreas Christensen rời đi.</p>\r\n\r\n<p>Trước đ&oacute;, theo k&yacute; giả&nbsp;Florian Plettenberg cho hay thương vụ Bayern mua De Ligt đang c&oacute; những tiến triển tốt. L&yacute; do l&agrave; bởi&nbsp;Robert Lewandowski&nbsp;đến Barcelona v&agrave; phần tiền b&aacute;n ch&acirc;n s&uacute;t người Ba Lan sẽ được đầu tư v&agrave;o thương vụ De Ligt.</p>\r\n\r\n<p>Đ&oacute;n De Ligt l&agrave; sự bổ sung s&aacute;ng gi&aacute; của đội chủ s&acirc;n Allianz Arena&nbsp;khi họ đ&atilde; chia tay Niklas Sule, cầu thủ đ&atilde; cập bến Borussia Dortmund.</p>\r\n', 'Null', '2022-07-21 00:00:00', '2022-07-21 00:00:00', 14, 1, 58),
(20, 'Kết quả DC United 2-6 Bayern: Màn debut tuyệt vời của các tân binh', 'ket-qua-dc-united-2-6-bayern-man-debut-tuyet-voi-cua-cac-tan-binh', '<p><strong>Đối đầu đại diện của Mỹ l&agrave; DC United, Bayern đ&atilde; dễ d&agrave;ng n&atilde; v&agrave;o lưới đối thủ 6 b&agrave;n thắng trong trận ra qu&acirc;n ở tour du đấu H&egrave; 2022, trong đ&oacute;, bộ đ&ocirc;i t&acirc;n binh Sadio Mane v&agrave; Matthijs de Ligt đều điền t&ecirc;n l&ecirc;n bảng điện tử.</strong></p>\r\n\r\n<p><img alt=\"Bayern dành chiến thắng dễ dàng trước DC United\" src=\"https://cdn.bongdaplus.vn/Assets/Media/2022/07/21/17/dc-utd-vs-bayern-2-6.jpg\" style=\"border-style:solid; border-width:1px; margin:1px; width:100%\" /><br />\r\nBayern d&agrave;nh chiến thắng dễ d&agrave;ng trước DC United</p>\r\n\r\n<p><strong>B&agrave;n thắng</strong><br />\r\n<strong>DC United:&nbsp;</strong>Lehland (54&#39;), Ku-Dipietro (83&#39;)<br />\r\n<strong>Bayern:</strong>&nbsp;Mane (5&#39; pen), Sabitzer (12&#39;), Gnabry (44&#39;), De Ligt (47&#39;), Zirkzee (51&#39;), Muller (90&#39;+2)</p>\r\n\r\n<p>L&agrave;m kh&aacute;ch trước DC United, Bayern ra s&acirc;n với sơ đồ 4-4-2 với Mane v&agrave; Gnabry đ&aacute; cặp tiền đạo. Ngay ph&uacute;t thứ 5, cựu ng&ocirc;i sao Liverpool đ&atilde; mở điểm cho H&ugrave;m x&aacute;m từ chấm 11 m&eacute;t.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrr6Jjl18VF3OwTHzKn3O1DVMUuTgYajgo8w&amp;usqp=CAU\" style=\"border-style:solid; border-width:1px; margin:1px; width:100%\" /></p>\r\n\r\n<p>B&agrave;n thắng sớm gi&uacute;p tinh thần Bayern l&ecirc;n cao. Họ g&acirc;y sức &eacute;p khủng khiếp l&ecirc;n cầu m&ocirc;n DC United, v&agrave; đến ph&uacute;t 12, c&aacute;ch biệt đ&atilde; được nh&acirc;n đ&ocirc;i nhờ c&ocirc;ng của tiền v&ecirc; Sabitzer. Tới cuối hiệp 1, nhận đường kiến tạo thuận lợi của Mane, Gnabry dứt điểm chuẩn x&aacute;c n&acirc;ng tỷ số l&ecirc;n 3-0 cho Bayern.</p>\r\n\r\n<p>Sang hiệp 2, HLV Nagelsmann thay đổi to&agrave;n bộ đội h&igrave;nh xuất ph&aacute;t của Bayern. T&acirc;n binh De Ligt v&agrave;o s&acirc;n v&agrave; ngay ph&uacute;t 47, anh đ&atilde; ghi dấu ấn với b&agrave;n n&acirc;ng tỷ số l&ecirc;n 4-0 cho H&ugrave;m x&aacute;m. Chưa đầy 5 ph&uacute;t sau, Bayern đ&atilde; c&oacute; lần thứ 5 l&agrave;m rung m&agrave;nh lưới chủ nh&agrave;. Người lập c&ocirc;ng l&agrave; cầu thủ trẻ Zirkzee.</p>\r\n\r\n<p><img alt=\"\" src=\"https://backend.keepup.com.au/wp-content/uploads/2022/07/14cpt02gnyy7810hicmlx0597f.jpg?w=550&amp;quality=80&amp;strip=all\" style=\"border-style:solid; border-width:1px; margin:1px; width:100%\" /></p>\r\n\r\n<p>Nắm lợi thế lớn, Bayern chơi thong dong v&agrave; c&oacute; phần chủ quan. Điều n&agrave;y tạo điều kiện cho DC United ghi 2 b&agrave;n, lần lượt nhờ c&ocirc;ng của Lehland v&agrave; Ku-Dipietro. D&ugrave; vậy đến ph&uacute;t b&ugrave; giờ, Muller l&ecirc;n tiếng ấn định chiến thắng gi&ograve;n gi&atilde; 6-2 cho Bayern.</p>\r\n\r\n<p>Như vậy, Bayern đ&atilde; c&oacute; khởi đầu su&ocirc;n sẻ ở tour du đấu H&egrave; 2022. V&agrave;o ng&agrave;y 24/7 tới, Bayern sẽ chạm tr&aacute;n Man City tr&ecirc;n s&acirc;n Lambeau Field l&uacute;c 6h00 giờ Việt Nam.</p>\r\n\r\n<p><strong>Đội h&igrave;nh ra s&acirc;n<br />\r\nDC United:</strong>&nbsp;Kempin, Najar, Pines, Bimbaum, Samake, Nyeman, &nbsp;Canouse, Robertha, Hopkins, Smith, Berry<br />\r\n<strong>Bayern:&nbsp;</strong>Neuer, Davies, Upamecano, Nianzou, Mazraoui, Copado, Sabitzer, Vidovic, Sane, Gnabry, Mane</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Null', '2022-07-21 00:00:00', '2022-07-21 00:00:00', 1611845, 1, 188),
(21, 'HLV của Bayern chỉ trích Juventus không đào tạo De Ligt đúng cách', 'hlv-cua-bayern-chi-trich-juventus-khong-dao-tao-de-ligt-dung-cach', '<p>Trung vệ người H&agrave; Lan đ&atilde;&nbsp;<a href=\"http://localhost:81/BLOG/tin-chuyen-nhuong/bayern-dat-thoa-thuan-chieu-mo-de-ligt-gia-80-trieu-euro.html\" target=\"_blank\">ho&agrave;n tất vụ chuyển nhượng trị gi&aacute; 68 triệu bảng</a>&nbsp;từ Juventus sang Bayern trong th&aacute;ng n&agrave;y. De Ligt đ&atilde; ghi một b&agrave;n thắng trong trận ra mắt Bayern. Đ&oacute; l&agrave; trận giao hữu thắng 6-2 trước DC United. Tuy nhi&ecirc;n, anh su&yacute;t đ&aacute; phản lưới nh&agrave;, nhận thẻ v&agrave;ng v&agrave; rời s&acirc;n v&igrave; một chấn thương nhẹ.</p>\n\n<p>Ngo&agrave;i ra chỉ sau v&agrave;i buổi tập, anh đ&atilde; g&acirc;y ra tranh c&atilde;i lớn giữa 2 c&acirc;u lạc bộ. Theo đ&oacute;, HLV Nagelsmann của Bayern cho rằng c&aacute;ch đ&agrave;o tạo của đội b&oacute;ng Italia kh&ocirc;ng đủ tốt v&agrave; khiến cho De Ligt gặp kh&oacute; trong việc h&ograve;a nhập tại H&ugrave;m x&aacute;m.</p>\n\n<p>Theo La Gazzetta dello Sport, Nagelsmann đ&atilde; b&igrave;nh luận: &quot;T&ocirc;i đ&atilde; n&oacute;i chuyện với De Ligt sau khi tập luyện v&agrave; cậu ấy n&oacute;i với t&ocirc;i rằng buổi tập h&ocirc;m nay l&agrave; kh&oacute; nhất trong 4 năm qua. N&oacute; quả thực hơi kh&oacute; khăn, nhưng kh&ocirc;ng phải qu&aacute; nặng&quot;.</p>\n\n<p>&quot;Cậu ấy đ&atilde; kh&ocirc;ng ra s&acirc;n qu&aacute; nhiều trong m&ugrave;a giải trước v&agrave; t&ocirc;i đ&atilde; nghe n&oacute;i ở Italia, kh&ocirc;ng dễ để giữ được sức khỏe tốt nhất cho c&aacute;c cầu thủ&quot;, &ocirc;ng n&oacute;i th&ecirc;m.</p>\n\n<p>De Ligt đ&atilde; c&oacute; 42 lần ra s&acirc;n trong m&agrave;u &aacute;o Juventus ở m&ugrave;a giải trước, đ&oacute;ng g&oacute;p 3 b&agrave;n thắng v&agrave; 1 pha kiến ​​tạo. Đ&acirc;y l&agrave; những con số kh&ocirc;ng hề tệ đối với một trung vệ. Tuy nhi&ecirc;n, anh vẫn kh&ocirc;ng được đ&aacute;nh gi&aacute; l&agrave; c&oacute; m&ugrave;a giải th&agrave;nh c&ocirc;ng.</p>\n\n<p>Với Juventus, đ&acirc;y kh&ocirc;ng phải l&agrave; lần đầu ti&ecirc;n đội ngũ y tế v&agrave; huấn luyện của họ bị chỉ tr&iacute;ch. CLB th&agrave;nh Turin đ&atilde; c&oacute; kh&aacute; nhiều chấn thương nặng trong v&agrave;i năm qua v&igrave; c&aacute;ch tập luyện kh&ocirc;ng đủ tốt.</p>\n', 'Null', '2022-07-26 00:00:00', '2022-07-26 00:00:00', 1611845, 1, 119),
(22, 'Kết quả Frankfurt 1-6 Bayern: Mane có bàn thắng đầu tiên ở Bundesliga, \"Bambi\" càng đá càng hay', 'ket-qua-frankfurt-1-6-bayern-mane-co-ban-thang-dau-tien-o-bundesliga-bambi-cang-da-cang-hay', '<p><strong>Bayern đ&atilde; c&oacute; sự khởi đầu như mơ ở Bundesliga 2022/23 khi gi&agrave;nh được chiến thắng tưng bừng 6-1 tr&ecirc;n s&acirc;n của Eintracht Frankfurt. Trận Frankfurt vs Bayern đ&aacute;nh dấu sự kiện tiền đạo Sadio Mane đ&atilde; c&oacute; được pha lập c&ocirc;ng đầu ti&ecirc;n tr&ecirc;n đất Đức.</strong></p>\n\n<p><strong>B&agrave;n thắng<br />\nFrankfurt:&nbsp;</strong>Muani (64&#39;)<br />\n<strong>Bayern:&nbsp;</strong>Kimmich (5&#39;), Pavard (10&#39;), Mane (29&#39;), Musiala (35&#39;, 83&#39;), Gnabry (43&#39;)</p>\n\n<p>VIDEO: Frankfurt 1-6 Bayern Munich</p>\n\n<div class=\"embed-responsive embed-responsive-16by9\">\n    <iframe class=\"embed-responsive-item\" src=\"https://www.youtube.com/embed/_b4PvKFQ1TY\"></iframe>\n </div>\n\n<p><br />\nTrong 3 lần đụng độ Bayern gần nhất, Frankfurt đ&atilde; g&acirc;y bất ngờ khi đ&aacute;nh bại g&atilde; khổng lồ xứ Bavaria tới 2 lần. Tuy nhi&ecirc;n, ở m&agrave;n tiếp đ&oacute;n nh&agrave; đương kim v&ocirc; địch Bundesliga v&agrave;o đ&ecirc;m qua đội chủ nh&agrave; đ&atilde; thể hiện bộ mặt v&ocirc; c&ugrave;ng bạc nhược.</p>\n\n<p>Chỉ sau 5 ph&uacute;t b&oacute;ng lăn, họ đ&atilde; để cho Jusua Kimmich mở tỷ số cho c&aacute;c vị kh&aacute;ch bằng c&uacute; s&uacute;t phạt hiểm h&oacute;c. 5 ph&uacute;t sau, Frankfurt lại thủng lưới sau một t&igrave;nh huống cố định v&agrave; lần n&agrave;y người lập c&ocirc;ng cho Bayern l&agrave; hậu vệ Pavard với c&uacute; dứt điểm quyết đo&aacute;n.</p>\n\n<p>Ph&uacute;t 29, trận đấu coi như đ&atilde; sớm ng&atilde; ngũ khi Mane thực hiện c&uacute; đ&aacute;nh đầu n&acirc;ng tỷ số l&ecirc;n 3-0 cho Bayern. Đ&acirc;y l&agrave; b&agrave;n thắng rất c&oacute; &yacute; nghĩa với c&aacute; nh&acirc;n ch&acirc;n s&uacute;t người Senegal bởi trước đ&acirc;y anh chưa từng ghi b&agrave;n tr&ecirc;n đất Đức.</p>\n\n<blockquote>\n<p><img alt=\"Mane đánh đầu nâng tỷ số lên 3-0\" src=\"https://cdn.bongdaplus.vn/Assets/Media/2022/08/06/42/mane1.jpg\" style=\"border-style:solid; border-width:1px; margin:1px; width:100%\" /><em>Mane đ&aacute;nh đầu n&acirc;ng tỷ số l&ecirc;n 3-0</em></p>\n</blockquote>\n\n<p>Tiếp đ&agrave; hưng phấn, Bayern c&ograve;n ghi th&ecirc;m 2 b&agrave;n thắng nữa trước khi 2 đội bước v&agrave;o giờ nghỉ do c&ocirc;ng của Musiala (35&#39;) v&agrave; Gnabry (43&#39;). Để thua tới 5 b&agrave;n trong hiệp 1, song Frankfurt vẫn phải cảm ơn thần may mắn bởi nếu c&aacute;c cầu thủ Bayern kh&ocirc;ng 3 lần đưa b&oacute;ng tr&uacute;ng khung gỗ th&igrave; tỷ số c&ograve;n c&oacute; thể đậm hơn.</p>\n\n<p>Sau giờ nghỉ, Bayern kh&ocirc;ng c&ograve;n thi đấu qu&aacute; nỗ lực do đ&atilde; cầm chắc chiến thắng. Mặc d&ugrave; vậy, họ vẫn ghi th&ecirc;m được 1 b&agrave;n ở ph&uacute;t 83. Người ghi t&ecirc;n m&igrave;nh l&ecirc;n bảng tỷ số vẫn l&agrave; Musiala.</p>\n\n<p>Đ&egrave; bẹp Frankfurt ở v&ograve;ng mở m&agrave;n Bundesliga 2022/23, Bayern đ&atilde; c&oacute; năm thứ 11 li&ecirc;n tiếp bước v&agrave;o m&ugrave;a giải m&agrave; kh&ocirc;ng phải nhận thất bại. Với những g&igrave; vừa thể hiện, họ chắc chắn vẫn l&agrave; ƯCV số 1 cho ng&ocirc;i v&ocirc; địch Bundesliga m&ugrave;a n&agrave;y.</p>\n\n<h2>Đội h&igrave;nh thi đấu Frankfurt vs Bayern</h2>\n\n<p><strong>Frankfurt:</strong>&nbsp;Trapp - Toure, Tuta (Hasebe 81), N&rsquo;Dicka - Knauff, Sow, Rode (c) (Jakic 46&#39;), Kostic (Alidou 74&#39;) - Lindstrom (Lenz 46&#39;), G&ouml;tze - Borre (Kolo Muani 46&#39;)</p>\n\n<p><strong>Bayern:</strong>&nbsp;Neuer (c) - Pavard (Mazraoui 82&#39;), Upamecano, Hernandez (de Ligt 82&#39;), Davies - Kimmich, Sabitzer (Gravenberch 57&#39;) - Gnabry (Tel 65&#39;), M&uuml;ller (Sane 65&#39;), Musiala - Mane</p>\n', 'Null', '2022-08-06 00:00:00', '2022-08-06 00:00:00', 1611845, 1, 264),
(23, 'Cầu thủ 19 tuổi nổi hơn Mane trong ngày mở màn Bundesliga của Bayern', 'cau-thu-19-tuoi-noi-hon-mane-trong-ngay-mo-man-bundesliga-cua-bayern', '<p><strong>Sadio Mane ghi b&agrave;n thắng đầu ti&ecirc;n cho Bayern Munich ở Bundesliga m&ugrave;a giải mới nhưng cầu thủ 19 tuổi mới thực sự nổi bật trong trận gặp Eintracht Frankfurt.</strong></p>\r\n\r\n<p>Bayern Munich tiếp tục c&oacute; một m&agrave;n tr&igrave;nh diễn tấn c&ocirc;ng bắt mắt kh&aacute;c để gi&agrave;nh chiến thắng gi&ograve;n gi&atilde;. Sau khi đ&aacute;nh bại Leipzig 5-3 trong trận tranh Si&ecirc;u C&uacute;p Đức, họ tiếp tục đ&egrave; bẹp Eintracht Frankfurt 6-1 ở v&ograve;ng mở m&agrave;n Bundesliga 2022/23.</p>\r\n\r\n<p>T&acirc;m điểm sự ch&uacute; &yacute; chắc chắn dồn v&agrave;o Sadio Mane, t&acirc;n binh được Bayern đưa về trong m&ugrave;a h&egrave;. Kh&ocirc;ng hổ danh l&agrave; tiền đạo h&agrave;ng đầu ở Liverpool, ng&ocirc;i sao người Senegal tiếp tục h&ograve;a nhập rất nhanh v&agrave;o đội b&oacute;ng mới để c&oacute; b&agrave;n thắng thứ hai sau 2 trận ch&iacute;nh thức.</p>\r\n\r\n<blockquote>\r\n<p><img src=\"https://cdnmedia.webthethao.vn/uploads/2022-08-05/mane-bayern-bundesliga.jpg\" style=\"border-style:solid; border-width:1px; margin:1px; width:100%\" /></p>\r\n\r\n<p><em>Mane ghi b&agrave;n đầu ti&ecirc;n ở Bundesliga với Bayern</em></p>\r\n</blockquote>\r\n\r\n<p>Tuy nhi&ecirc;n, c&aacute;i t&ecirc;n nổi bật nhất trong trận đấu n&agrave;y lại l&agrave; cầu thủ 19 tuổi Jamal Musiala. T&agrave;i năng người Đức c&oacute; m&agrave;n tr&igrave;nh diễn khiến tất cả phải trầm trồ, trực tiếp ghi 2 b&agrave;n thắng, b&ecirc;n cạnh những th&ocirc;ng số ấn tượng: 33 đường chuyền, 2 đường chuyền quan trọng, 5 c&uacute; s&uacute;t, r&ecirc; b&oacute;ng th&agrave;nh c&ocirc;ng 4/5 lần, 2 lần tắc b&oacute;ng th&agrave;nh c&ocirc;ng, thắng đối đầu 8/15 lần.</p>\r\n\r\n<blockquote>\r\n<p><img src=\"https://cdnmedia.webthethao.vn/uploads/2022-08-05/musiala-bayern.png\" style=\"border-style:solid; border-width:1px; margin:1px; width:100%\" /></p>\r\n\r\n<p><em>Musiala ghi 2 b&agrave;n cho Bayern trước Frankfurt</em></p>\r\n</blockquote>\r\n\r\n<p>Đ&acirc;y đ&atilde; l&agrave; b&agrave;n thắng thứ 3, cộng th&ecirc;m một pha kiến tạo chỉ sau 2 trận ch&iacute;nh thức của tiền vệ tấn c&ocirc;ng n&agrave;y ở m&ugrave;a giải mới. Với 13 b&agrave;n thắng tại Bundesliga, Musiala trở th&agrave;nh cầu thủ U20 ghi nhiều b&agrave;n nhất từ trước đến nay tại Bayern c&ugrave;ng với cựu gi&aacute;m đốc điều h&agrave;nh Uli Hoeness.</p>\r\n\r\n<blockquote>\r\n<p><img src=\"https://cdnmedia.webthethao.vn/uploads/2022-08-05/musiala-bayern.jpg\" style=\"border-style:solid; border-width:1px; margin:1px; width:100%\" /></p>\r\n\r\n<p><em>Musiala mới 19 tuổi nhưng đ&atilde; c&oacute; 13 b&agrave;n ở Bundesliga</em></p>\r\n</blockquote>\r\n\r\n<p>Trong hiệp 1 m&agrave; Bayern hủy diệt Frankfurt bằng 5 b&agrave;n, họ c&ograve;n s&uacute;t tr&uacute;ng khung gỗ đối phương ba lần. Ở b&agrave;n đầu ti&ecirc;n, Kimmich lập c&ocirc;ng từ quả đ&aacute; phạt trực tiếp lần đầu ti&ecirc;n tại Bundesliga, trở th&agrave;nh cầu thủ thứ 17 của Bayern mở tỷ số - một kỷ lục của giải đấu.</p>\r\n\r\n<p>Với c&aacute;c b&agrave;n thắng kh&aacute;c của Benjamin Pavard, Mane, Serge Gnabry v&agrave; Musiala, Bayern đ&atilde; kh&ocirc;ng thua trận n&agrave;o ở v&ograve;ng 1 trong 11 năm (0-1 trước Monchengladbach m&ugrave;a 2011/12), b&aacute;o hiệu cho mục ti&ecirc;u k&eacute;o d&agrave;i kỷ lục v&ocirc; địch Bundesliga thứ 11 li&ecirc;n tiếp.&nbsp;</p>\r\n', 'Null', '2022-08-06 00:00:00', '2022-08-07 00:00:00', 1611845, 1, 218),
(25, 'MU - Brighton: Tâm điểm Ronaldo, cơ hội vượt Liverpool (Vòng 1 Ngoại hạng Anh)', 'mu-brighton-tam-diem-ronaldo-co-hoi-vuot-liverpool-vong-1-ngoai-hang-anh-', '<p><strong>MU ra qu&acirc;n: Ronaldo vẫn nu&ocirc;i ch&iacute; ra đi c&oacute; đ&aacute; ch&iacute;nh?</strong></p>\r\n\r\n<p>Ở trận giao hữu cuối c&ugrave;ng của MU trong m&ugrave;a h&egrave; n&agrave;y khi họ bất ngờ bị Rayo Vallecano cầm h&ograve;a 1-1 h&ocirc;m 31/7 ngay tại s&acirc;n nh&agrave;, Cristiano Ronaldo bất ngờ c&oacute; mặt trong đội h&igrave;nh xuất ph&aacute;t. Tuy nhi&ecirc;n, anh chơi k&eacute;m nổi bật v&agrave; bị HLV Erik Ten Hag r&uacute;t khỏi s&acirc;n sau giờ nghỉ giữa 2 hiệp.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nhận định bóng đá MU - Brighton: Tâm điểm Ronaldo, cơ hội vượt Liverpool (Vòng 1 Ngoại hạng Anh) - 1\" src=\"https://cdn.24h.com.vn/upload/3-2022/images/2022-08-07/Nhan-dinh-bong-da-MU---Brighton-Tam-diem-Ronaldo-co-hoi-vuot-Liverpool-Vong-1-Ngoai-hang-Anh-m-2-1659827419-909-width740height416.jpg\" style=\"border-style:solid; border-width:1px; margin:1px; width:100%\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Martial d&iacute;nh chấn thương g&acirc;n kheo nhưng liệu Ronaldo c&oacute; đ&aacute; ch&iacute;nh cho MU khi ra qu&acirc;n ở Premier League?</p>\r\n\r\n<p>Ronaldo c&ograve;n tiếp tục g&acirc;y l&ugrave;m x&ugrave;m với việc rời s&acirc;n&nbsp;<a href=\"https://www.24h.com.vn/manchester-united-c48e1521.html\">Old Trafford</a>&nbsp;ở ph&uacute;t 80 để l&aacute;i xe hơi bỏ về nh&agrave; khi bỏ mặc c&aacute;c đồng đội vẫn đang thi đấu hơn 10 ph&uacute;t cuối với đối thủ đến từ La Liga Rayo Vallecano. Bản th&acirc;n tiền đạo 37 tuổi n&agrave;y cũng lu&ocirc;n ngấp ngh&eacute; &yacute; định rời MU để gia nhập một CLB được dự Champions League m&ugrave;a n&agrave;y.</p>\r\n\r\n<p>Nhưng trong bối cảnh HLV Ten Hag đ&atilde; tiết lộ trong cuộc họp b&aacute;o h&ocirc;m thứ S&aacute;u (5/8) rằng&nbsp;Anthony Martial sẽ kh&ocirc;ng tham dự trận gặp Brighton tối nay v&igrave; chấn thương g&acirc;n kheo, cơ hội thi đấu lại mở ra với CR7.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, khi đ&atilde; vắng mặt ở tour du đấu H&egrave; của MU tại Th&aacute;i Lan, Australia hay Na Uy, Ronaldo vẫn cần c&oacute; thời gian để &ldquo;bắt nhịp&rdquo; với lối chơi m&agrave; &ocirc;ng thầy mới người H&agrave; Lan Ten Hag đang x&acirc;y dựng.</p>\r\n\r\n<p>Theo trang Sportmole dự đo&aacute;n, Marcus Rashford sẽ được đẩy l&ecirc;n đ&aacute; tiền đạo cắm, trợ chiến cho anh ở 2 c&aacute;nh sẽ l&agrave; Jadon Sancho (c&aacute;nh tr&aacute;i) v&agrave; Anthony Elanga (phải) ở đội h&igrave;nh đ&aacute; ch&iacute;nh đấu Brighton. Khi ấy, Ronaldo c&oacute; khả năng sẽ v&agrave;o s&acirc;n từ ghế dự bị trong trận n&agrave;y.</p>\r\n\r\n<p><strong>Cơ hội v&agrave;ng sớm vượt mặt Liverpool</strong></p>\r\n\r\n<p>Giải Ngoại hạng Anh (Premier League) m&ugrave;a n&agrave;y đ&atilde; sớm c&oacute; bất ngờ khi Liverpool vừa chật vật h&ograve;a Fulham 2-2 trong thế li&ecirc;n tục phải b&aacute;m đuổi đối thủ mới l&ecirc;n hạng khi để Aleksandar Mitrovic lập c&uacute; đ&uacute;p v&agrave;o lưới m&igrave;nh. Điều đ&oacute; cũng đồng nghĩa với việc nếu thắng tr&ecirc;n s&acirc;n nh&agrave; Old Trafford tối nay khi tiếp đ&oacute;n Brighton, MU sẽ c&oacute; 3 điểm đầu tay để sớm tạo c&aacute;ch biệt 2 điểm nhiều hơn k&igrave;nh địch truyền kiếp Liverpool.</p>\r\n\r\n<p><img alt=\"Nhận định bóng đá MU - Brighton: Tâm điểm Ronaldo, cơ hội vượt Liverpool (Vòng 1 Ngoại hạng Anh) - 3\" src=\"https://cdn.24h.com.vn/upload/3-2022/images/2022-08-07/Nhan-dinh-bong-da-MU---Brighton-Tam-diem-Ronaldo-co-hoi-vuot-Liverpool-Vong-1-Ngoai-hang-Anh-m-3-1659827419-541-width740height444.jpg\" style=\"border-style:solid; border-width:1px; margin:1px; width:100%\" /></p>\r\n\r\n<p>C&aacute;ch đ&acirc;y 3 th&aacute;ng, Brighton từng v&ugrave;i dập MU 4-0 ở v&ograve;ng 36 giải Ngoại hạng Anh m&ugrave;a trước</p>\r\n\r\n<p>&ldquo;Quỷ đỏ&rdquo; từng thua sốc 0-4 trước đội b&oacute;ng của HLV Graham Potter ở lượt về&nbsp;<a href=\"https://www.24h.com.vn/premier-league-2020-2021-c48e2367.html\">Premier League</a>&nbsp;m&ugrave;a trước. Nhưng trong bối cảnh Brighton vừa b&aacute;n đi cả Yves Bissouma (cho Tottenham) v&agrave; Marc Cucurella (cho Chelsea), &ldquo;Chim m&ograve;ng biển&rdquo; c&oacute; khả năng sẽ thất bại tr&ecirc;n s&acirc;n của MU tối nay.</p>\r\n\r\n<p><strong>Dự đo&aacute;n tỷ số:</strong>&nbsp;MU 2-1 Brighton</p>\r\n\r\n<p><strong>Đội h&igrave;nh dự kiến:</strong></p>\r\n\r\n<p><strong>MU:&nbsp;</strong>De Gea; Dalot, Maguire, L Martinez, Malacia; Fred, McTominay; Sancho, Fernandes, Elanga; Rashford</p>\r\n\r\n<p><strong>Brighton:&nbsp;</strong>Sanchez; Veltman, Dunk, Webster; Lamptey, Mwepu, Gross, March; MacAllister, Welbeck, Trossard</p>\r\n\r\n<table align=\"center\" cellpadding=\"3\" cellspacing=\"0\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>Th&ocirc;ng tin b&ecirc;n lề:</strong></p>\r\n\r\n			<p><strong><em>Th&agrave;nh t&iacute;ch đối đầu:</em></strong></p>\r\n\r\n			<p>- MU v&agrave; Brighton đ&atilde; gặp nhau tổng cộng 20 lần trong qu&aacute; khứ. &ldquo;Quỷ đỏ&rdquo; thắng 14 trận, Brighton thắng 4 trận v&agrave; hai đội h&ograve;a nhau 2 trận c&ograve;n lại.</p>\r\n\r\n			<p>- Tr&ecirc;n s&acirc;n nh&agrave;, MU đ&atilde; c&oacute; 10 lần đối đầu với Brighton. Họ thắng 9, h&ograve;a 1 v&agrave; chưa thua trận n&agrave;o trước &ldquo;Chim m&ograve;ng biển&rdquo;.</p>\r\n\r\n			<p>- Ở Premier League m&ugrave;a trước, MU đ&atilde; gi&agrave;nh chiến thắng với tỷ số 2-0 tr&ecirc;n s&acirc;n nh&agrave; Old Trafford tại trận lượt đi. Tuy nhi&ecirc;n, trong trận lượt về tr&ecirc;n s&acirc;n Amex của Brighton, họ đ&atilde; để thua với tỷ số kh&oacute; tin l&agrave; 0-4.</p>\r\n\r\n			<p><em><strong>T&igrave;nh h&igrave;nh lực lượng:</strong></em></p>\r\n\r\n			<p>- MU:&nbsp;Martial chấn thương. Sancho, Shaw, Williams (khả năng ra s&acirc;n 50/50). Greenwood (phạt nội bộ).</p>\r\n\r\n			<p>- Brighton:&nbsp;Moder chấn thương.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Null', '2022-08-07 00:00:00', '2022-08-07 00:00:00', 1611844, 1, 2),
(26, 'Kết quả bóng đá Tottenham - Southampton: Ngược dòng đẳng cấp, đại tiệc mãn nhãn', 'ket-qua-bong-da-tottenham-southampton-nguoc-dong-dang-cap-dai-tiec-man-nhan', '<p>Tottenham bắt đầu chiến dịch&nbsp;<a href=\"https://www.24h.com.vn/bong-da-ngoai-hang-anh-c149.html\">Ngoại hạng Anh</a>&nbsp;2022/23 bằng cuộc tiếp đ&oacute;n Southampton. HLV Antonio Conte thể hiện r&otilde; &yacute; đồ muốn&nbsp;gi&agrave;nh trọn vẹn 3 điểm với đội h&igrave;nh gi&agrave;u sức tấn c&ocirc;ng. &quot;G&agrave; trống&quot; cũng l&agrave; đội tổ chức tấn c&ocirc;ng ngay sau tiếng c&ograve;i khai cuộc.</p>\r\n\r\n<p><img alt=\"Kết quả bóng đá Tottenham - Southampton: Ngược dòng đẳng cấp, đại tiệc mãn nhãn (Vòng 1 Ngoại hạng Anh) - 1\" src=\"https://cdn.24h.com.vn/upload/3-2022/images/2022-08-06/19-495-1659797785-693-width740height495.jpg\" style=\"border-style:solid; border-width:1px; margin:1px; width:100%\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tottenham gặp kh&aacute; nhiều kh&oacute; khăn trước Southampton</p>\r\n\r\n<p>Tuy nhi&ecirc;n, họ lại sớm phải nhận &quot;g&aacute;o nước lạnh&quot;. Trong đợt tấn c&ocirc;ng đầu ti&ecirc;n của m&igrave;nh, Southampton đ&atilde; c&oacute; b&agrave;n mở tỉ số. Sau nỗ lực ở b&ecirc;n c&aacute;nh phải của đồng đội, Ward Prowse tung c&uacute; v&ocirc; l&ecirc; ở b&ecirc;n ngo&agrave;i v&ograve;ng cấm. B&oacute;ng đập đất khiến cho Lloris kh&ocirc;ng thể l&agrave;m g&igrave; hơn ngo&agrave;i việc v&agrave;o lưới nhặt b&oacute;ng.</p>\r\n\r\n<p>B&agrave;n thua sớm kh&ocirc;ng l&agrave;m Tottenham nao n&uacute;ng. Họ miệt m&agrave;i tổ chức tấn c&ocirc;ng để t&igrave;m b&agrave;n gỡ v&agrave; th&agrave;nh quả sớm tới. Ph&uacute;t 21, Kulusevski tạt b&oacute;ng từ b&ecirc;n c&aacute;nh phải v&agrave; Sessegnon đ&atilde; c&oacute; mặt đ&uacute;ng l&uacute;c để đ&aacute;nh đầu cận th&agrave;nh tung lưới đối phương.</p>\r\n\r\n<p>Southampton cố gắng chống trả lại nhưng Tottenham tạo ra sức &eacute;p cực lớn. Ph&uacute;t 32, Son Heung Min tạt b&oacute;ng từ b&ecirc;n c&aacute;nh tr&aacute;i ở tầm thấp v&agrave; Dier băng cắt đ&aacute;nh đầu cực nhanh gi&uacute;p đội chủ nh&agrave; ch&iacute;nh thức vượt l&ecirc;n. Tottenham c&ograve;n một số cơ hội trong hiệp một nhưng kh&ocirc;ng tận dụng th&agrave;nh c&ocirc;ng.&nbsp;</p>\r\n\r\n<p>Ngay đầu hiệp hai, Sessegnon tung c&uacute; dứt điểm hạ gục thủ m&ocirc;n đối phương lần thứ hai trong trận. Tuy nhi&ecirc;n, b&agrave;n thắng kh&ocirc;ng được c&ocirc;ng nhận do lỗi việt vị. Đội chủ nh&agrave; duy tr&igrave; sự dồn &eacute;p li&ecirc;n tục v&agrave; th&agrave;nh c&ocirc;ng với chiến thuật n&agrave;y. Ph&uacute;t 61, Emerson tho&aacute;t xuống b&ecirc;n phải tốt nhưng c&uacute; dứt điểm lại qu&aacute; tệ. May cho hậu vệ n&agrave;y l&agrave; Salisu đ&atilde; sửa sai cho đối thủ v&agrave; đưa b&oacute;ng về lưới nh&agrave;.</p>\r\n\r\n<p>Hai ph&uacute;t sau, Kulusevski nhận b&oacute;ng trong v&ograve;ng cấm, chỉnh một nhịp rồi cứa l&ograve;ng ch&acirc;n tr&aacute;i về g&oacute;c xa ho&agrave;n hảo. C&oacute; được lợi thế dẫn trước 3 b&agrave;n, Tottenham chủ động nhường lại thế trận cho đối thủ. Southampton nỗ t&igrave;m b&agrave;n gỡ nhưng kh&ocirc;ng hiệu quả. Họ c&ograve;n phải đối mặt với 2 cơ hội nguy hiểm kh&aacute;c của Tottenham nhưng may mắn kh&ocirc;ng thủng lưới.</p>\r\n\r\n<p>Mặc d&ugrave; vậy, khoảng c&aacute;ch 3 b&agrave;n l&agrave; qu&aacute; đủ để Tottenham gi&agrave;nh trọn vẹn 3 điểm trong ng&agrave;y khai m&agrave;n Ngoại hạng Anh 2022/23.</p>\r\n\r\n<p><strong>Tỉ số chung cuộc:</strong>&nbsp;Tottenham 4-1 Southampton (H1: 2-1)</p>\r\n\r\n<p><strong>Ghi b&agrave;n</strong></p>\r\n\r\n<p>Tottenham: Sessegnon 21&#39;, Dier 32&#39;, Salisu 61&#39; (phản lưới), Kulusevski 63&#39;</p>\r\n\r\n<p>Southampton: Ward Prowse 12&#39;</p>\r\n\r\n<p><strong>Đội h&igrave;nh xuất ph&aacute;t</strong></p>\r\n\r\n<p>&nbsp;Tottenham: Lloris, Davies, Dier, Romero, Emerson, Bentancur, H&oslash;jbjerg, Sessegnon, Son, Kulusevski, Kane.</p>\r\n\r\n<p>Southampton: Bazunu, Walker-Peters, Bednarek, Salisu, Valery, Djenepo, Romeu, Ward-Prowse, Aribo, Lavia, A Armstrong.</p>\r\n\r\n<p><strong>Th&ocirc;ng số trận đấu</strong></p>\r\n\r\n<p><img alt=\"Kết quả bóng đá Tottenham - Southampton: Ngược dòng đẳng cấp, đại tiệc mãn nhãn (Vòng 1 Ngoại hạng Anh) - 3\" src=\"https://cdn.24h.com.vn/upload/3-2022/images/2022-08-06/tot-0-70-1659775591-197-width70height70.jpg\" />TottenhamSouthampton<img alt=\"Kết quả bóng đá Tottenham - Southampton: Ngược dòng đẳng cấp, đại tiệc mãn nhãn (Vòng 1 Ngoại hạng Anh) - 4\" src=\"https://cdn.24h.com.vn/upload/3-2022/images/2022-08-06/sou-0-70-1659775591-311-width70height70.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>S&uacute;t khung th&agrave;nh</p>\r\n\r\n<p>18(8)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>9(2)</p>\r\n\r\n<p>Thời gian kiểm so&aacute;t b&oacute;ng</p>\r\n\r\n<p>57%</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>43%</p>\r\n\r\n<p>Phạm lỗi</p>\r\n\r\n<p>11</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>6</p>\r\n\r\n<p>Thẻ v&agrave;ng</p>\r\n\r\n<p>3</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>0</p>\r\n\r\n<p>Thẻ đỏ</p>\r\n\r\n<p>0</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>0</p>\r\n\r\n<p>Việt vị</p>\r\n\r\n<p>2</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>0</p>\r\n\r\n<p>Phạt g&oacute;c</p>\r\n\r\n<p>9</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2</p>\r\n\r\n<p>Cứu thua</p>\r\n\r\n<p>1</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4</p>\r\n\r\n<p><strong>Chấm điểm cầu thủ</strong></p>\r\n\r\n<p>Tottenham<img alt=\"Kết quả bóng đá Tottenham - Southampton: Ngược dòng đẳng cấp, đại tiệc mãn nhãn (Vòng 1 Ngoại hạng Anh) - 5\" src=\"https://cdn.24h.com.vn/upload/3-2022/images/2022-08-06/tot-0-70-1659775591-197-width70height70.jpg\" style=\"width:70px\" />VS<img alt=\"Kết quả bóng đá Tottenham - Southampton: Ngược dòng đẳng cấp, đại tiệc mãn nhãn (Vòng 1 Ngoại hạng Anh) - 6\" src=\"https://cdn.24h.com.vn/upload/3-2022/images/2022-08-06/sou-0-70-1659775591-311-width70height70.jpg\" style=\"width:70px\" />Southampton</p>\r\n\r\n<p><strong>Điểm</strong></p>\r\n\r\n<p>Lloris&nbsp;6.4</p>\r\n\r\n<p>Davies&nbsp;7.0</p>\r\n\r\n<p>Dier&nbsp;7.4</p>\r\n\r\n<p>Romero&nbsp;6.8</p>\r\n\r\n<p>Sessegnon&nbsp;7.4</p>\r\n\r\n<p>Bentancur&nbsp;7.4</p>\r\n\r\n<p>Hojbjerg&nbsp;7.2</p>\r\n\r\n<p>Emerson&nbsp;7.6</p>\r\n\r\n<p>Kulusevski&nbsp;8.6</p>\r\n\r\n<p>Son&nbsp;8.2</p>\r\n\r\n<p>Kane&nbsp;7.2</p>\r\n\r\n<p><strong>Điểm</strong></p>\r\n\r\n<p>Bazunu6.5</p>\r\n\r\n<p>Peters6.8</p>\r\n\r\n<p>Salisu5.9</p>\r\n\r\n<p>Bednarek6.0</p>\r\n\r\n<p>Valery5.7</p>\r\n\r\n<p>Armstrong5.9</p>\r\n\r\n<p>Ward-Prowse7.3</p>\r\n\r\n<p>Romeu6.3</p>\r\n\r\n<p>Lavia6.4</p>\r\n\r\n<p>Aribo6.4</p>\r\n\r\n<p>Djenepo6.4</p>\r\n\r\n<p><strong>Thay người</strong></p>\r\n\r\n<p>Bissouma&nbsp;6.2</p>\r\n\r\n<p>Doherty&nbsp;6.0</p>\r\n\r\n<p>Lenglet&nbsp;6.1</p>\r\n\r\n<p>Perisic&nbsp;6.3</p>\r\n\r\n<p>Moura&nbsp;6.1</p>\r\n\r\n<p><strong>Thay người</strong></p>\r\n\r\n<p>Armstrong5.8</p>\r\n\r\n<p>Redmond6.0</p>\r\n\r\n<p>Stephens6.3</p>\r\n\r\n<p>Diallo6.0</p>\r\n\r\n<p>Perraud6.1</p>\r\n\r\n<p>Đỏ: Cầu thủ xuất sắc nhất trận</p>\r\n\r\n<p>Đen: Cầu thủ tệ nhất trận</p>\r\n', 'Null', '2022-08-07 00:00:00', '2022-08-07 00:00:00', 1611844, 1, 6),
(27, 'Ronaldo gia nhập Chelsea: The Blues đặt nước Anh dưới gót giày', 'ronaldo-gia-nhap-chelsea-the-blues-dat-nuoc-anh-duoi-got-giay', '<p><strong>Mặc d&ugrave; từng bị Chelsea từ chối nhưng giờ đ&acirc;y, Ronaldo lại đang ở rất gần với đội chủ s&acirc;n Stamford Bridge. Nếu thương vụ th&agrave;nh c&ocirc;ng, kh&ocirc;ng ngoại trừ khả năng anh sẽ trở th&agrave;nh bom tấn đ&iacute;ch thực của m&ugrave;a H&egrave; năm nay.</strong></p>\r\n\r\n<p>Chelsea đang trải qua một m&ugrave;a chuyển nhượng kh&ocirc;ng qu&aacute; tưng bừng nhưng những bản hợp đồng họ mang về đều thực sự chất lượng v&agrave; mang t&iacute;nh thực dụng cao. Tuy nhi&ecirc;n, một vấn đề mu&ocirc;n thuở từ nhiều m&ugrave;a giải nay The Blues vẫn đang thực sự cần c&oacute; l&agrave; tiền đạo cắm thực thụ.&nbsp;</p>\r\n\r\n<blockquote>\r\n<p><a href=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/tranvutung/2022/08/04/ronaldo-gia-nhap-chelsea-the-blues-dat-nuoc-anh-duoi-got-giay-166234.jpg\"><img alt=\"Ronaldo gia nhập Chelsea: The Blues đặt nước Anh dưới gót giày 166234\" src=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/tranvutung/2022/08/04/ronaldo-gia-nhap-chelsea-the-blues-dat-nuoc-anh-duoi-got-giay-166234.jpg\" style=\"border-style:solid; border-width:1px; margin:1px; width:100%\" /></a></p>\r\n\r\n<p>Chelsea từng cực kỳ đ&aacute;ng sợ khi c&oacute; những tiền đạo giỏi trong đội h&igrave;nh. Ảnh: internet</p>\r\n</blockquote>\r\n\r\n<p>N&ecirc;n nhớ rằng, chưa một thời kỳ n&agrave;o, khi m&agrave; Chelsea sở hữu một trung phong đẳng cấp m&agrave; họ kh&ocirc;ng c&oacute; &iacute;t nhất 1 danh hiệu v&ocirc; địch Ngoại hạng Anh. Nổi bật nhất phải kể tới những Didier Drogba dưới thời Mourinho, Carlo Ancelotti hay Diego Costa của Antonio Conte.&nbsp;</p>\r\n\r\n<p>Tuy nhi&ecirc;n, từ khoảng 5 năm đổ lại đ&acirc;y, h&igrave;nh b&oacute;ng những cầu thủ c&oacute; thể ghi hơn 20 b&agrave;n một m&ugrave;a cho Chelsea đ&atilde; &quot;tuyệt chủng&quot; ho&agrave;n to&agrave;n. Những Moratta, O. Giroud hay mới đ&acirc;y nhất l&agrave; Romelu Lukaku chỉ để lại nỗi thất vọng cho c&aacute;c CĐV của s&acirc;n Stamford Bridge.&nbsp;</p>\r\n\r\n<blockquote>\r\n<p><a href=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/tranvutung/2022/08/04/ronaldo-gia-nhap-chelsea-the-blues-dat-nuoc-anh-duoi-got-giay-166235.jpg\"><img alt=\"Ronaldo gia nhập Chelsea: The Blues đặt nước Anh dưới gót giày 166235\" src=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/tranvutung/2022/08/04/ronaldo-gia-nhap-chelsea-the-blues-dat-nuoc-anh-duoi-got-giay-166235.jpg\" style=\"border-style:solid; border-width:1px; margin:1px; width:100%\" /></a></p>\r\n\r\n<p>Chelsea đ&atilde; phải qu&aacute; chật vật để t&igrave;m kiếm những trung phong si&ecirc;u sao suốt nhiều năm qua. Ảnh: internet</p>\r\n</blockquote>\r\n\r\n<p>V&agrave; c&oacute; lẽ, đến ch&iacute;nh HLV hiện tại của The Blues l&agrave; Thomas Tuchel cũng thấu hiểu điều đ&oacute;. Cũng ch&iacute;nh v&igrave; vậy, từ ng&agrave;y nh&agrave; cầm qu&acirc;n người Đức l&ecirc;n nắm quyền, Chelsea chưa bao giờ ngưng &quot;săn&quot; những tiền đạo cắm chất lượng khắp thế giới.&nbsp;</p>\r\n\r\n<p>M&ugrave;a chuyển nhượng H&egrave; năm nay cũng chứng kiến một sự cố gắng kh&ocirc;ng hề nhỏ của đội b&oacute;ng T&acirc;y London nhằm t&igrave;m kiếm một trung phong giỏi. Mặc d&ugrave; vậy, c&aacute;i &quot;duy&ecirc;n&quot; vẫn chưa tới với Chelsea khi m&agrave; hầu như những ch&acirc;n s&uacute;t họ nhắm tới đều đ&atilde; ổn định tương lai.&nbsp;</p>\r\n\r\n<blockquote>\r\n<p><a href=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/tranvutung/2022/08/04/ronaldo-gia-nhap-chelsea-the-blues-dat-nuoc-anh-duoi-got-giay-166236.jpg\"><img alt=\"Ronaldo gia nhập Chelsea: The Blues đặt nước Anh dưới gót giày 166236\" src=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/tranvutung/2022/08/04/ronaldo-gia-nhap-chelsea-the-blues-dat-nuoc-anh-duoi-got-giay-166236.jpg\" style=\"border-style:solid; border-width:1px; margin:1px; width:100%\" /></a></p>\r\n\r\n<p>Timo Werner v&agrave; Lukaku từng l&agrave; niềm hy vọng về việc &quot;x&oacute;a dớp&quot; số 9 ở Chelsea nhưng kh&ocirc;ng th&agrave;nh. Ảnh: internet</p>\r\n</blockquote>\r\n\r\n<p>Bối cảnh đ&oacute; đang buộc HLV Thomas Tuchel phải quay lại với thương vụ Cristiano Ronaldo - Người đ&atilde; bị ch&iacute;nh cựu chiến lược gia Dortmund thẳng thừng từ chối c&aacute;ch đ&acirc;y &iacute;t l&acirc;u. Tuy nhi&ecirc;n, Ronaldo c&oacute; thể kh&ocirc;ng phải một sự lựa chọn tối ưu của Tuchel nhưng rất c&oacute; thể, anh ch&iacute;nh l&agrave; mảnh gh&eacute;p m&agrave; nh&agrave; cầm qu&acirc;n người Đức c&ograve;n thiếu.&nbsp;</p>\r\n\r\n<p>N&ecirc;n nhớ, ở m&ugrave;a giải vừa qua, Chelsea l&agrave; một trong số những đội tạo ra nhiều cơ hội quanh v&ograve;ng cấm nhất cả ch&acirc;u &Acirc;u. Tuy nhi&ecirc;n, sự &quot;gỗ&quot; của c&aacute;c trung phong b&ecirc;n ph&iacute;a The Blues l&agrave; qu&aacute; v&ocirc; duy&ecirc;n n&ecirc;n l&uacute;c n&agrave;o họ cũng phải chật vật để kết liễu đối thủ.&nbsp;</p>\r\n\r\n<blockquote>\r\n<p><a href=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/tranvutung/2022/08/04/ronaldo-gia-nhap-chelsea-the-blues-dat-nuoc-anh-duoi-got-giay-166237.jpg\"><img alt=\"Ronaldo gia nhập Chelsea: The Blues đặt nước Anh dưới gót giày 166237\" src=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/tranvutung/2022/08/04/ronaldo-gia-nhap-chelsea-the-blues-dat-nuoc-anh-duoi-got-giay-166237.jpg\" style=\"border-style:solid; border-width:1px; margin:1px; width:100%\" /></a></p>\r\n\r\n<p>Chelsea chi&ecirc;u mộ Ronaldo sẽ l&agrave; một phương &aacute;n cực kỳ ph&ugrave; hợp với cả 2 ph&iacute;a. Ảnh: internet</p>\r\n</blockquote>\r\n\r\n<p>C&ograve;n Ronaldo, anh tiếp tục thể hiện đẳng cấp hơn người của m&igrave;nh với 18 b&agrave;n thắng cho MU ở m&ugrave;a trước. N&ecirc;n nhớ, Quỷ đỏ ở m&ugrave;a b&oacute;ng vừa qua c&oacute; phong c&aacute;ch thi đấu tr&aacute;i ngược ho&agrave;n to&agrave;n Chelsea nhưng si&ecirc;u sao người Bồ vẫn biết c&aacute;ch để đưa tr&aacute;i b&oacute;ng v&agrave;o lưới những đội b&oacute;ng đối đầu với m&igrave;nh.&nbsp;</p>\r\n\r\n<p>Vậy để thấy, c&oacute; thể Ronaldo đ&atilde; 37 tuổi nhưng đẳng cấp của anh ch&iacute;nh l&agrave; điều m&agrave; HLV Thomas Tuchel đang cực kỳ cần. C&ograve;n với Chelsea, họ cũng c&oacute; thể đem tới cho anh những g&igrave; anh đang hằng ao ước - Được thi đấu đỉnh cao ở c&uacute;p C1 ch&acirc;u &Acirc;u.&nbsp;</p>\r\n\r\n<blockquote>\r\n<p><a href=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/tranvutung/2022/08/04/ronaldo-gia-nhap-chelsea-the-blues-dat-nuoc-anh-duoi-got-giay-166239.jpg\"><img alt=\"Ronaldo gia nhập Chelsea: The Blues đặt nước Anh dưới gót giày 166239\" src=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/tranvutung/2022/08/04/ronaldo-gia-nhap-chelsea-the-blues-dat-nuoc-anh-duoi-got-giay-166239.jpg\" style=\"border-style:solid; border-width:1px; margin:1px; width:100%\" /></a></p>\r\n\r\n<p>Mặc d&ugrave; thi đấu ở MU m&ugrave;a vừa qua nhưng Ronaldo vẫn thể hiện t&agrave;i năng của anh hơn rất nhiều c&aacute;c tiền đạo m&agrave; Chelsea đang sở hữu.</p>\r\n</blockquote>\r\n\r\n<p>Tổng quan lại, r&otilde; r&agrave;ng Ronaldo v&agrave; Chelsea ở thời điểm n&agrave;y l&agrave; 2 nửa mảnh gh&eacute;p ho&agrave;n to&agrave;n ăn khớp với nhau. V&agrave; trong một ng&agrave;y đẹp trời,&nbsp;nếu si&ecirc;u sao người Bồ thực sự kho&aacute;c l&ecirc;n chiếc &aacute;o m&agrave;u xanh của th&agrave;nh London&nbsp;th&igrave; đ&oacute; c&oacute; thể sẽ l&agrave; nỗi khiếp sợ cho cả nước Anh.&nbsp;</p>\r\n\r\n<table border=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" rowspan=\"2\">\r\n			<h2>Chelsea t&aacute;i khởi động thương vụ Ronaldo</h2>\r\n\r\n			<p>Nguồn tin từ ph&oacute;ng vi&ecirc;n Nathan Gissing cho hay,&nbsp;Chelsea&nbsp;đang c&acirc;n nhắc chi&ecirc;u mộ Cristiano Ronaldo v&agrave;o cuối kỳ chuyển nhượng h&egrave; 2022 sau những diễn biến phức tạp về&nbsp;tương lai của si&ecirc;u sao 37 tuổi.&nbsp;Được biết, Nathan Gissing l&agrave; quản trị vi&ecirc;n trang Instagram Cfcnewspage, nguồn tin h&agrave;ng đầu về Chelsea v&agrave; đang l&agrave;m việc cho nh&agrave; b&aacute;o nổi tiếng Gianluca Di Marzio.&nbsp; &nbsp;</p>\r\n\r\n			<p>&quot;T&ocirc;i được th&ocirc;ng b&aacute;o rằng Chelsea sẽ c&acirc;n nhắc chi&ecirc;u mộ Ronaldo v&agrave;o cuối kỳ chuyển nhượng h&egrave;&quot;, tr&iacute;ch lời&nbsp;Nathan Gissing.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Null', '2022-08-07 00:00:00', '2022-08-07 00:00:00', 14, 1, 1);
INSERT INTO `cqn_baiviet` (`post_id`, `tenbaiviet`, `slug_bv`, `noidung`, `tag`, `post_date`, `last_update_date`, `category_id`, `user_id`, `view`) VALUES
(28, 'Bị từ chối bàn thắng, Hà Nội FC vẫn hạ gục \'PSG Việt Nam\'', 'bi-tu-choi-ban-thang-ha-noi-fc-van-ha-guc-psg-viet-nam-', '<p><strong>H&agrave; Nội đ&atilde; c&oacute; được 3 điểm đầy nhọc nhằn tr&ecirc;n s&acirc;n của Topenland B&igrave;nh Định ở v&ograve;ng 11 V-League 2022.</strong></p>\r\n\r\n<p>Trước khi bước v&agrave;o chuyến l&agrave;m kh&aacute;ch tr&ecirc;n s&acirc;n Quy Nhơn, H&agrave; Nội FC c&oacute; được một phong độ tốt. Đo&agrave;n qu&acirc;n của HLV Chun Jae-ho c&oacute; được những trận thắng quan trọng để vươn l&ecirc;n dẫn đầu bảng xếp hạng.</p>\r\n\r\n<p>D&ugrave; thiếu vắng HLV trưởng tr&ecirc;n băng ghế chỉ đạo tuy nhi&ecirc;n đội b&oacute;ng Thủ đ&ocirc; vẫn c&oacute; được thế trận tương đối lấn lướt so với đối thủ Topenland B&igrave;nh Định. Lần lượt Văn Hậu, H&ugrave;ng Dũng v&agrave; Mujan đ&atilde; tạo ra những s&oacute;ng gi&oacute; trước khung th&agrave;nh của Minh Ho&agrave;ng. Tuy nhi&ecirc;n, phải chờ đến ph&uacute;t thứ 25, H&agrave; Nội FC mới c&oacute; được b&agrave;n thắng mở tỉ số.</p>\r\n\r\n<p>Phạm Tuấn Hải c&oacute; pha đỡ b&oacute;ng gọn g&agrave;ng trước khi tung ra c&uacute; dứt điểm đẳng cấp, hạ gục Minh Ho&agrave;ng.</p>\r\n\r\n<p>C&oacute; được b&agrave;n thắng dẫn trước, H&agrave; Nội tiếp đ&agrave; hưng phấn v&agrave; giữ được thế trận lấn lướt so với đối thủ. Tuy nhi&ecirc;n, những ph&uacute;t c&ograve;n lại của hiệp 1, đội kh&aacute;ch kh&ocirc;ng thể lần thứ 2 xuy&ecirc;n thủng mảnh lưới.</p>\r\n\r\n<p><a href=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/ngachelsea/2022/08/05/8f1d88cf62c6a098f9d7-1659716187.jpg\"><img alt=\"8f1d88cf62c6a098f9d7\" src=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/ngachelsea/2022/08/05/8f1d88cf62c6a098f9d7-1659716187.jpg\" style=\"width:100%\" /></a></p>\r\n\r\n<p>Tuấn Hải ghi b&agrave;n duy nhất cho H&agrave; Nội FC.</p>\r\n\r\n<p>Bước v&agrave;o hiệp 2, HLV Đức Thắng quyết định tung Rafaelson v&agrave;o s&acirc;n bất chấp cầu thủ n&agrave;y vừa trở lại sau chấn thương. Sự g&oacute;p mặt của ngoại binh người Brazil đ&atilde; mang đến những n&eacute;t tươi mới cho h&agrave;ng tấn c&ocirc;ng của đội chủ nh&agrave;.</p>\r\n\r\n<p>Rafaelson li&ecirc;n tục tạo ra những cơ hội nguy hiểm về ph&iacute;a khung th&agrave;nh của Tấn Trường tuy nhi&ecirc;n may mắn vẫn chưa mỉm cười với Topenland B&igrave;nh Định.</p>\r\n\r\n<p>Ph&uacute;t thứ 71, B&ugrave;i Ho&agrave;ng Việt Anh đ&atilde; đưa được b&oacute;ng v&agrave;o lưới sau một pha đ&aacute; phạt g&oacute;c tuy nhi&ecirc;n trọng t&agrave;i ch&iacute;nh lại kh&ocirc;ng c&ocirc;ng nhận b&agrave;n thắng.</p>\r\n\r\n<p>D&ugrave; rất nỗ lực trong khoảng thời gian c&ograve;n lại của trận đấu, tuy nhi&ecirc;n B&igrave;nh Định đ&atilde; kh&ocirc;ng thể t&igrave;m kiếm được b&agrave;n gỡ h&ograve;a.&nbsp;</p>\r\n\r\n<p>Với 3 điểm c&oacute; được tr&ecirc;n s&acirc;n kh&aacute;ch, H&agrave; Nội FC tiếp tục củng cố được ng&ocirc;i đầu bảng với 4 điểm nhiều hơn HAGL.</p>\r\n\r\n<table border=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h2>Đội h&igrave;nh ra s&acirc;n H&agrave; Nội vs B&igrave;nh Định:</h2>\r\n\r\n			<p><strong>H&agrave; Nội FC:&nbsp;</strong>Tấn Trường, Văn Hậu, Văn To&agrave;n, Tuấn Hải, Văn Quyết, Văn Ki&ecirc;n, Th&agrave;nh Chung, Mujan, Duy Mạnh, H&ugrave;ng Dũng, Siladji</p>\r\n\r\n			<p><strong>Topenland B&igrave;nh Định:</strong>&nbsp;Minh Ho&agrave;ng, Tiến Duy, Tấn T&agrave;i, Hendrio, Lynch, Văn Thuận, Schmidt, Ho&agrave;ng Anh, Xu&acirc;n T&uacute;, Văn Th&agrave;nh, Thanh B&igrave;nh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>90&#39;\r\n			<p><strong>Hết giờ!</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>86&#39;\r\n			<p><strong>NGUY HIỂM!</strong></p>\r\n\r\n			<p>Lynch c&oacute; cơ hội ghi b&agrave;n gỡ h&ograve;a cho Topenland B&igrave;nh Định khi nhận b&oacute;ng ở tư thế thoải m&aacute;i, tuy nhi&ecirc;n c&uacute; dứt điểm cuối c&ugrave;ng của ngoại binh n&agrave;y lại đi qu&aacute; thiếu ch&iacute;nh x&aacute;c.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>77&#39;\r\n			<p><strong>NGUY HIỂM!</strong></p>\r\n\r\n			<p>H&agrave; Đức Chinh c&oacute; đường chuyền thuận lợi cho Rafaelson tuy nhi&ecirc;n ngoại binh người Brazil lại dứt điểm chệch cột dọc.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>71&#39;\r\n			<p><strong>KH&Ocirc;NG V&Agrave;OOO!</strong></p>\r\n\r\n			<p><strong>Từ một pha đ&aacute; phạt g&oacute;c b&ecirc;n c&aacute;nh tr&aacute;i, B&ugrave;i Ho&agrave;ng Việt Anh đ&atilde; bật cao đ&aacute;nh đầu tung lưới B&igrave;nh Định tuy nhi&ecirc;n trọng t&agrave;i ch&iacute;nh kh&ocirc;ng c&ocirc;ng nhận b&agrave;n thắng.</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>57&#39;\r\n			<p><strong>NGUY HIỂM!</strong></p>\r\n\r\n			<p>Bộ 3 tr&ecirc;n h&agrave;ng tấn c&ocirc;ng của B&igrave;nh Định l&agrave; Hendrio, Lynch v&agrave; Rafaelson đ&atilde; phối hợp đầy ăn &yacute;. Tuy nhi&ecirc;n c&uacute; dứt điểm của Rafaelson lại đưa b&oacute;ng đi chệch cột dọc khung th&agrave;nh Tấn Trường trong gang tấc.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>46&#39;\r\n			<p><strong>NGUY HIỂM!</strong></p>\r\n\r\n			<p>Tiền đạo v&agrave;o s&acirc;n thay người Rafaelson đ&atilde; bật cao đ&aacute;nh đầu tuy nhi&ecirc;n thủ m&ocirc;n Tấn Trường đ&atilde; thi đấu tốt.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>46&#39;\r\n			<p><strong>Hiệp 2 bắt đầu!</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>45&#39;\r\n			<p><strong>Hết hiệp 1!</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>25&#39;\r\n			<p><strong>V&Agrave;OOO!</strong></p>\r\n\r\n			<p><strong>Tuấn Hải đỡ b&oacute;ng gọn g&agrave;ng trước khi xoay người dứt điểm tung lưới Minh Ho&agrave;ng.</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>5&#39;\r\n			<p><strong>NGUY HIỂM!</strong></p>\r\n\r\n			<p>Đo&agrave;n Văn Hậu thực hiện pha đ&aacute; phạt ngo&agrave;i khu vực 16m50 tuy nhi&ecirc;n thủ m&ocirc;n Minh Ho&agrave;ng đ&atilde; đổ người cản ph&aacute; th&agrave;nh c&ocirc;ng.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>1&#39;\r\n			<p><strong>Trận đấu bắt đầu!</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>17h22\r\n			<p><strong>Đội h&igrave;nh ra s&acirc;n của H&agrave; Nội FC:</strong></p>\r\n\r\n			<p><a href=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/ngachelsea/2022/08/06/truc-tiep-ha-noi-vs-binh-dinh-18h00-hom-nay-06-8-167598.jpeg\"><img alt=\"Trực tiếp Hà Nội vs Bình Định, 18h00 hôm nay 06/8 167598\" src=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/ngachelsea/2022/08/06/truc-tiep-ha-noi-vs-binh-dinh-18h00-hom-nay-06-8-167598.jpeg\" style=\"width:100%\" /></a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>17h20\r\n			<p><strong>Đội h&igrave;nh ra s&acirc;n của Topenland B&igrave;nh Định:</strong></p>\r\n\r\n			<p><a href=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/ngachelsea/2022/08/06/truc-tiep-ha-noi-vs-binh-dinh-18h00-hom-nay-06-8-167596.jpeg\"><img alt=\"Trực tiếp Hà Nội vs Bình Định, 18h00 hôm nay 06/8 167596\" src=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/ngachelsea/2022/08/06/truc-tiep-ha-noi-vs-binh-dinh-18h00-hom-nay-06-8-167596.jpeg\" style=\"width:100%\" /></a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>H&agrave; Nội FC đang c&oacute; được một phong độ ấn tượng ở giai đoạn 1 của Night Wolf V-League 2022. Sau 10 v&ograve;ng đấu đầu ti&ecirc;n, đại diện Thủ đ&ocirc; c&oacute; được 20 điểm v&agrave; chễm chệ ở ng&ocirc;i đầu bảng.</p>\r\n\r\n<p>Ở trận đấu mới nhất gặp đối thủ cạnh tranh trực tiếp chức v&ocirc; địch l&agrave; SNLA, Văn Quyết cũng c&oacute; được điều m&igrave;nh cần l&agrave; 3 điểm để củng cố vị thế của m&igrave;nh.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, ở v&ograve;ng đấu thứ 11, thầy tr&ograve; HLV Chun Jae-ho sẽ phải tiếp tục đối mặt với một th&aacute;ch thức kh&aacute;c mang t&ecirc;n Topenland B&igrave;nh Định. Việc HAGL gi&agrave;nh chiến thắng tối thiểu trước S&agrave;i G&ograve;n FC khiến cho H&agrave; Nội FC c&agrave;ng gặp nhiều sức &eacute;p trước trận đấu quan trọng n&agrave;y.</p>\r\n\r\n<p>Ở m&ugrave;a giải năm nay, Topenland B&igrave;nh Định c&oacute; được những sự đầu tư mạnh mẽ khi mang về nhiều ng&ocirc;i sao chất lượng, trong đ&oacute; c&oacute; Đ&igrave;nh Trọng. Sau 10 v&ograve;ng đầu ti&ecirc;n, đội b&oacute;ng đất V&otilde; c&oacute; được 14 điểm v&agrave; đứng thứ 6 tr&ecirc;n bảng xếp hạng. Với việc được thi đấu tr&ecirc;n s&acirc;n nh&agrave; Quy Nhơn, thầy tr&ograve; HLV Đức Thắng đang rất quyết t&acirc;m c&oacute; được chiến thắng để thu hẹp khoảng c&aacute;ch với ch&iacute;nh đối thủ tr&ecirc;n bảng xếp hạng.</p>\r\n\r\n<h2>H&agrave; Nội vs B&igrave;nh Định diễn ra khi n&agrave;o?</h2>\r\n\r\n<p>Thời gian: 18h00 h&ocirc;m nay 06/8/2022</p>\r\n\r\n<p>Giải đấu: V&ograve;ng 11 Night Wolf V-League 2022</p>\r\n\r\n<p>Địa điểm: SVĐ Quy Nhơn, B&igrave;nh Định, Việt Nam</p>\r\n\r\n<h2>Xem trực tiếp H&agrave; Nội gặp B&igrave;nh Định ở đ&acirc;u?</h2>\r\n\r\n<p>Theo th&ocirc;ng tin mới nhất, Đ&agrave;i truyền h&igrave;nh C&aacute;p Việt Nam (VTVCab) sẽ l&agrave; đơn vị sở hữu bản quyền ph&aacute;t s&oacute;ng V-League 2022. V&igrave; vậy, qu&yacute; độc giả c&oacute; thể theo d&otilde;i trận đấu giữa H&agrave; Nội vs B&igrave;nh Định tr&ecirc;n k&ecirc;nh On Football.</p>\r\n\r\n<p>Ngo&agrave;i ra, để tiện cho qu&yacute; độc giả theo d&otilde;i, ch&uacute;ng t&ocirc;i sẽ tường thuật trực tiếp trận đấu giữa H&agrave; Nội vs B&igrave;nh Định.</p>\r\n\r\n<h2>Đội h&igrave;nh dự kiến H&agrave; Nội vs B&igrave;nh Định</h2>\r\n\r\n<p><strong>H&agrave; Nội FC:</strong>&nbsp;B&ugrave;i Tấn Trường, Trần Văn Ki&ecirc;n, Đỗ Duy Mạnh, Nguyễn Th&agrave;nh Chung, Đo&agrave;n Văn Hậu, Đậu Văn To&agrave;n, Đỗ H&ugrave;ng Dũng, Văn Quyết, L&ecirc; Xu&acirc;n T&uacute;, Tuấn Hải, Siladij.</p>\r\n\r\n<p><strong>Topenland B&igrave;nh Địn</strong>h: Minh Ho&agrave;ng, Hồ Tấn T&agrave;i,&nbsp; Trần Đ&igrave;nh Trọng, Schmidt, Văn Trung, Thanh Thịnh, Nghi&ecirc;m Xu&acirc;n T&uacute;, Văn Thuận, Hendrio, L&yacute; C&ocirc;ng Ho&agrave;ng Anh, Jermie Lynch.</p>\r\n\r\n<h2>Thống k&ecirc; đ&aacute;ng ch&uacute; &yacute; trước trận H&agrave; Nội gặp B&igrave;nh Định</h2>\r\n\r\n<ul>\r\n	<li>Topenland B&igrave;nh Định thắng 2, h&ograve;a 1 v&agrave; thua 2 trong 5 trận đấu gần nhất</li>\r\n	<li>H&agrave; Nội FC thắng 4, thua 1 trong 5 trận đấu gần nhất</li>\r\n	<li>H&agrave; Nội FC đang dẫn đầu bảng xếp hạng với 20 điểm</li>\r\n	<li>Ở 2 lần đối đầu nhau trong qu&aacute; khứ, H&agrave; Nội thắng 1 v&agrave; h&ograve;a 1</li>\r\n</ul>\r\n', 'Null', '2022-08-07 00:00:00', '2022-08-07 00:00:00', 1611839, 1, 2),
(29, 'Đội hình Bayern Munich 2022/2023: Danh sách, số áo cầu thủ chi tiết', 'doi-hinh-bayern-munich-2022-2023-danh-sach-so-ao-cau-thu-chi-tiet', '<p><strong>Đội h&igrave;nh cầu thủ Bayern Munich 2022/2023 mới nhất. Cập nhật danh s&aacute;ch đội h&igrave;nh, số &aacute;o cầu thủ CLB Bayern Munich thi đấu m&ugrave;a giải năm nay.</strong></p>\r\n\r\n<p>Đội h&igrave;nh Bayern Munich m&ugrave;a n&agrave;y đ&atilde; c&oacute; những x&aacute;o trộn đ&aacute;ng kể sau sự ra đi của Robert Lewandowski. Tiền đạo người Ba Lan quyết định chia tay đội b&oacute;ng m&agrave; anh gi&agrave;nh được rất nhiều th&agrave;nh c&ocirc;ng. Tuy nhi&ecirc;n, CLB xứ Bavaria cũng nhanh ch&oacute;ng h&agrave;nh động để lấp đầy khoảng trống n&agrave;y bằng Sadio Mane.</p>\r\n\r\n<p><img src=\"https://cdnmedia.webthethao.vn/uploads/2022-08-06/mane-bayern-ghi-ban.jpg\" style=\"border-style:solid; border-width:0px; width:100%\" /></p>\r\n\r\n<p><strong>Mane được Bayern đưa về thay thế cho Lewandowski</strong></p>\r\n\r\n<p>Sự hiện diện của Mane từ Liverpool gi&uacute;p h&agrave;ng c&ocirc;ng Bayern vẫn duy tr&igrave; được sức mạnh chiều s&acirc;u, bởi họ c&ograve;n tăng cường th&ecirc;m tiền đạo 17 tuổi Mathys Tel.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; kỳ chuyển nhượng s&ocirc;i động của Bayern khi cả h&agrave;ng hậu vệ v&agrave; tiền vệ cũng được bổ sung đ&aacute;ng kể. Họ chi gần 70 triệu euro chưa kể tiền thưởng cho Mathijs de Ligt, thu h&uacute;t cả bộ đ&ocirc;i của Ajax l&agrave; Ryan Gravenberch v&agrave; Noussair Mazraoui.</p>\r\n\r\n<h2>Đội h&igrave;nh Bayern Munich 2022/2023 (số &aacute;o, t&ecirc;n, quốc tịch, năm sinh)</h2>\r\n\r\n<p>1. Manuel Neuer (Đức, 1986)</p>\r\n\r\n<p>2. Dayot Upamecano (Ph&aacute;p, 1998)</p>\r\n\r\n<p>4. Matthijs de Ligt (H&agrave; Lan, 1999)</p>\r\n\r\n<p>5. Benjamin Pavard (Ph&aacute;p, 1996)</p>\r\n\r\n<p>6. Joshua Kimmich (Đức, 1995)</p>\r\n\r\n<p>7. Serge Gnabry (Đức, 1995)</p>\r\n\r\n<p>8. Leon Goretzka (Đức, 1995)</p>\r\n\r\n<p>10. Leroy Sane (Đức, 1996)</p>\r\n\r\n<p>11. Kingsley Coman (Ph&aacute;p, 1996)</p>\r\n\r\n<p>13. Eric Maxim Choupo-Moting (Cameroon, 1989)</p>\r\n\r\n<p>14. Paul Wanner (Đức, 2005)</p>\r\n\r\n<p>17. Sadio Mane (Senegal, 1993)</p>\r\n\r\n<p>18. Marcel Sabitzer (&Aacute;o, 1994)</p>\r\n\r\n<p>19. Alphonso Davies (Canada, 2000)</p>\r\n\r\n<p>20. Bouna Sarr (Ph&aacute;p, 1992)</p>\r\n\r\n<p>21. Lucas Hernandez (Ph&aacute;p, 1996)</p>\r\n\r\n<p>22. Marc Roca (T&acirc;y Ban Nha, 1996)</p>\r\n\r\n<p>23. Tanguy Nianzou (Ph&aacute;p, 2002)</p>\r\n\r\n<p>25. Thomas Muller (Đức, 1989)</p>\r\n\r\n<p>26. Sven Ulreich (Đức, 1988)</p>\r\n\r\n<p>28. Gabriel Vidovic (Croatia, 2003)</p>\r\n\r\n<p>32. Joshua Zirkzee (H&agrave; Lan, 2001)</p>\r\n\r\n<p>38. Ryan Gravenberch (H&agrave; Lan, 2002)</p>\r\n\r\n<p>39. Mathys Tel (Ph&aacute;p, 2005)</p>\r\n\r\n<p>40. Noussair Mazraoui (Ma rốc, 1997)</p>\r\n\r\n<p>42. Jamal Musiala (Đức, 2003)</p>\r\n\r\n<p>44. Josip Stanisic (Croatia, 2000)</p>\r\n', 'Null', '2022-08-10 00:00:00', '2022-08-10 00:00:00', 1611845, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cqn_category`
--

CREATE TABLE `cqn_category` (
  `category_id` int(11) NOT NULL,
  `tenchuyenmuc` varchar(50) NOT NULL,
  `slug_cm` varchar(50) NOT NULL,
  `hide` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cqn_category`
--

INSERT INTO `cqn_category` (`category_id`, `tenchuyenmuc`, `slug_cm`, `hide`) VALUES
(14, 'Tin chuyển nhượng', 'tin-chuyen-nhuong', 0),
(15, 'Bóng đá', 'bong-da', 0),
(1611839, 'Vleague', 'vleague', 0),
(1611844, 'Ngoại Hạng Anh', 'ngoai-hang-anh', 0),
(1611845, 'Bayern Munich', 'bayern-munich', 0),
(1611850, 'Champions League', 'champions-league', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cqn_comment`
--

CREATE TABLE `cqn_comment` (
  `comment_id` int(11) NOT NULL,
  `comment_date` datetime NOT NULL,
  `ten` varchar(200) NOT NULL,
  `trangthai` int(1) NOT NULL,
  `noidung_cmt` varchar(500) NOT NULL,
  `post_id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cqn_comment`
--

INSERT INTO `cqn_comment` (`comment_id`, `comment_date`, `ten`, `trangthai`, `noidung_cmt`, `post_id`, `email`) VALUES
(58, '2022-08-03 00:03:47', 'Chau Nhon', 0, 'De Ligt đã có 42 lần ra sân trong màu áo Juventus ở mùa giải trước&#8218 đóng góp 3 bàn thắng và 1 pha kiến ​​tạo&#46 Đây là những con số không hề tệ đối với một trung vệ&#46 Tuy nhiên&#8218 anh vẫn không được đánh giá là có mùa giải thành công&#46', 21, 'cnhon5496@gmail.com'),
(59, '2022-08-03 23:35:25', 'Châu Công Tử', 0, 'Test Bình luận', 21, 'cnhon5496@gmail.com'),
(61, '2022-08-03 14:36:06', 'Leon Goretzka ', 0, 'Diese Pornoseite ist großartig&#8218 ich schaue sie an meinen verletzungsbedingten freien Tagen', 21, 'Quenhon2002@gmail.com'),
(62, '2022-08-03 17:49:46', 'admin ', 0, 'Test bình luận&#33', 20, 'cnhon5496@gmail.com');

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
  `daxem` int(11) NOT NULL,
  `luu` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cqn_contact`
--

INSERT INTO `cqn_contact` (`contact_id`, `email`, `tieude`, `noidung`, `contact_date`, `daxem`, `luu`) VALUES
(1, 'Quenhon2002@gmail.com', 'Dear CQN Blog\'s Admin', 'Test form liên hệ thứ nhất', '2022-07-22 13:30:15', 1, 0),
(4, 'cnhon5496@gmail.com', 'Please active my domain', 'Hằng số bộ lọc được xác định trước\r\nCó nhiều hằng số bộ lọc xác định trước được liệt kê bên dưới:\r\n\r\nXác thực các hằng số bộ lọc:\r\nFILTER_VALIDATE_BOOLEAN: Xác thực boolean\r\nFILTER_VALIDATE_INT: Xác thực một số nguyên\r\nFILTER_VALIDATE_FLOAT: Xác thực một float\r\nFILTER_VALIDATE_REGEXP: Xác thực một biểu thức chính quy\r\nFILTER_VALIDATE_IP: Xác thực địa chỉ IP\r\nFILTER_VALIDATE_EMAIL: Xác thực địa chỉ e-mail\r\nFILTER_VALIDATE_URL: Xác thực URL\r\nSanitize (vệ sinh) hằng số bộ lọc:\r\nFILTER_SANITIZE_EMAIL: Xóa tất cả các ký tự không hợp lệ khỏi địa chỉ email\r\nFILTER_SANITIZE_ENCODED: Xóa / Mã hóa các ký tự đặc biệt\r\nFILTER_SANITIZE_MAGIC_QUOTES: Áp dụng hàm addlash ()\r\nFILTER_SANITIZE_NUMBER_FLOAT: Xóa tất cả các ký tự, trừ các chữ số, + - và tùy chọn., EE\r\nFILTER_SANITIZE_NUMBER_INT: Xóa tất cả các ký tự ngoại trừ các chữ số và + -\r\nFILTER_SANITIZE_SPECIAL_CHARS: Xóa các ký tự đặc biệt\r\nFILTER_SANITIZE_FULL_SPECIAL_CHARS Có thể tắt báo giá mã hóa bằng cách sử dụng FILTER_FLAG_NO_ENCODE_QUOTES.\r\nFILTER_SANITIZE_STRING: Xóa thẻ / ký tự đặc biệt khỏi chuỗi\r\nFILTER_SANITIZE_STRIPPED: Bí danh của FILTER_SANITIZE_STRING\r\nFILTER_SANITIZE_URL: Xóa tất cả ký tự bất hợp pháp khỏi URL \r\nCác hằng số bộ lọc khác:\r\n\r\nFILTER_UNSAFE_RAW: Không làm gì cả, tùy chọn dải / mã hóa các ký tự đặc biệt\r\nFILTER_CALLBACK: Gọi hàm do người dùng xác định để lọc dữ liệu\r\nKết luận: Trên đây là các thông tin về Filter trong Python và chức năng của các Filter hằng số trong PHP. Với vai trò xác thực và bảo mật các thông tin, filter trong PHP chắc chắn là một tính năng tốt cho bất kỳ dự án nào. Tìm hiểu thêm về PHP và các ngôn ngữ lập trình khác qua các khóa học lập trình tại Viện công nghệ thông tin T3H.', '2022-07-16 17:56:17', 1, 1),
(6, 'cnhon5496@gmail.com', 'Cảm nghĩ về một loài cây (hoa) mà em yêu quý nhất', 'Ở nhà, người thân thường gọi em là Siren. Đó là tên một loài hoa ở Liên Xô, nơi ba mẹ em trải qua những năm tháng sinh viên. Một hôm, bác Kiên, bạn của ba mẹ đã cất công mang từ Matcova về một bó Siren để tặng em.\r\n\r\n“Ôi, loài hoa ta từng được ước ao được biết đến là đây ư?”. Ôm bó Siren, lòng em chợt chùng xuống mềm mại bởi sắc tím nao nao và hương thơi nhè nhẹ. Không rực rỡ như hoa cúc, không lộng lẫy như hoa hồng, những bông Siren thật dịu dàng và đằm thắm bởi mùi hương thanh khiết.\r\n\r\nThoạt nhìn, hoa Siren hao hao hoa dạ hương nhưng cánh tròn và dày hơn. Từng cụm hoa li ti. li ti như sao, kết lại thành chùm hình mái vòm. Lá Siren nom từa tựa hoa giấy, xanh thẫm, có cuống dài, mọc đối nhau.\r\n\r\nTrông xa, toàn bộ cành hoa giống như cây nến xanh thắp ngọn lửa tím. Ba em kể: “Hoa mới nở thì mang màu tim tím như hoa xoan, khi sắp tàn thì chuyển dần sang màu trắng. Siren mọc thành cụm lúp xúp, bừng nở vào chớm xuân, khi tuyết vừa tan, nó thả vào không gian làn hương thơm mát”. Em tò mò hỏi: “Vậy là Siren đem mùa xuân về hay mùa xuân kéo Siren thức tỉnh hả ba?”. Ba lắc đầu “chỉ biết sớm xuân, khi tuyết vừa tan, mọi người đã thấy Siren vươn nhành”.', '2022-07-22 00:00:00', 1, 1),
(7, 'cnhon5496@gmail.com', 'Lời bài hát Hoa Ngũ Sắc', 'Ai đưa đò sang dõi theo dáng em dần xa\r\nNước lặng dòng sông lục bình khẽ trôi xế tà\r\nÔng Tơ đoạn duyên cớ sao rẽ chia ra thành hai\r\nChuyện tình quên sao năm tháng thiếu thời thanh mai\r\n\r\nLy rượu cay nói không nên lời\r\nCạn tình duyên ta sẽ rót cho đầy vơi\r\nCâu hẹn xưa đến nay quên rồi\r\nNgày đêm vu quy cùng ai trăm năm sánh đôi\r\n\r\nNghẹn ngào nhìn em cứ thế xa\r\nLên thuyền hoa nước mắt ướt nhoà\r\nVề nơi đất khách tháng năm sẽ hoá xa lạ\r\nTrọn vẹn phu thê mong ấm yên\r\nChỉ còn tôi ôm những muộn phiền\r\nTrùng dương xa xăm cách chia mỗi miền\r\nNgày nào bên nhau hay đón đưa\r\nBên dòng sông đứng dưới bóng dừa\r\nNgười đã quên chưa xiết bao đau đớn cho vừa\r\nBiền biệt phương xa tôi thở than\r\nTheo người ta sao không hối hận\r\nDạt dào đến mấy nước sông cũng cạn', '2022-08-03 00:00:00', 1, 1);

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
-- Cấu trúc bảng cho bảng `cqn_message`
--

CREATE TABLE `cqn_message` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `daxem` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cqn_message`
--

INSERT INTO `cqn_message` (`id`, `user_id`, `to_id`, `message`, `daxem`, `date`) VALUES
(20, 2, 1, 'delay', 1, '2022-08-09 00:00:00'),
(42, 2, 1, '&lt;script&gt;window.location=&quot;&quot;&lt;/script&gt;', 1, '2022-08-09 00:00:00'),
(47, 1, 2, 'test', 1, '2022-08-09 00:00:00'),
(48, 1, 2, 'đ&atilde; xem', 1, '2022-08-10 00:00:00'),
(51, 2, 1, '<img src=\"https://vcdn-thethao.vnecdn.net/2022/08/03/fzkmn7yxwai78is-jpeg-165948382-6800-6793-1659484107.jpg\" width=\"100%\" class=\"rounded\">', 1, '2022-08-09 15:28:37'),
(52, 1, 2, '<img src=\"https://photo-cms-nhandan.zadn.vn/w800/Files/Images/2020/08/24/a1-1598257835527.jpg\" width=\"100%\">', 0, '2022-08-09 15:39:26'),
(64, 2, 1, '<a href=\"https://cdnimg.vietnamplus.vn/uploaded/mzdic/2022_08_06/bayernthang1.png\" target=\"_blank\"><img src=\"https://cdnimg.vietnamplus.vn/uploaded/mzdic/2022_08_06/bayernthang1.png\" width=\"100%\" class=\"rounded\"></a>', 1, '2022-08-09 17:34:50'),
(66, 1, 2, '<a href=\"https://cdnimg.vietnamplus.vn/uploaded/mzdic/2022_08_06/bayernthang1.png\" target=\"_blank\"><img src=\"https://cdnimg.vietnamplus.vn/uploaded/mzdic/2022_08_06/bayernthang1.png\" width=\"100%\" class=\"rounded\"></a>', 0, '2022-08-09 17:45:15'),
(67, 1, 2, '<a href=\"https://images.pexels.com/photos/11950497/pexels-photo-11950497.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500\" target=\"_blank\"><img src=\"https://images.pexels.com/photos/11950497/pexels-photo-11950497.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500\" width=\"100%\" class=\"rounded\"></a>', 0, '2022-08-09 17:47:01'),
(75, 1, 2, 'alo', 0, '2022-08-09 18:13:27'),
(76, 1, 2, 'test thời gian', 0, '2022-08-09 18:13:55'),
(77, 1, 2, 'auto load ok', 0, '2022-08-09 18:15:01'),
(79, 3, 1, '<a href=\"https://cdnimg.vietnamplus.vn/t1200/Uploaded/mzdic/2022_07_31/bayern-sieu-cup-duc-3107.jpeg\" target=\"_blank\"><img src=\"https://cdnimg.vietnamplus.vn/t1200/Uploaded/mzdic/2022_07_31/bayern-sieu-cup-duc-3107.jpeg\" width=\"100%\" class=\"rounded\"></a>', 1, '2022-08-09 19:02:08'),
(80, 1, 2, 'test', 0, '2022-08-10 08:53:04'),
(81, 1, 2, '<span class=\"embed-responsive embed-responsive-16by9\">\n                <iframe class=\"embed-responsive-item\" src=\"https://www.youtube.com/embed/Coul-_Aq4ME\"></iframe>\n            </span>', 0, '2022-08-10 10:15:54'),
(82, 1, 4, 'nhắn g&igrave; đ&oacute;', 0, '2022-08-11 13:51:57'),
(83, 1, 3, 'Ok', 0, '2022-08-12 09:54:29'),
(84, 3, 1, 'Alo', 0, '2022-08-12 10:19:39');

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
  `matkhau` varchar(32) NOT NULL,
  `tenhienthi` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `sodienthoai` varchar(11) DEFAULT NULL,
  `vaitro` int(11) DEFAULT 0,
  `trangthai` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cqn_user`
--

INSERT INTO `cqn_user` (`user_id`, `tendangnhap`, `matkhau`, `tenhienthi`, `email`, `facebook`, `sodienthoai`, `vaitro`, `trangthai`) VALUES
(1, 'Admin', 'e10adc3949ba59abbe56e057f20f883e', 'Josh CQN', 'admin@chaucongtu.com', 'xoxvp', '0848611127', 2, 0),
(2, 'user', 'e10adc3949ba59abbe56e057f20f883e', 'Writter', '', '', '', 0, 0),
(3, 'third_user', 'e10adc3949ba59abbe56e057f20f883e', 'Quản trị viên', NULL, NULL, NULL, 1, 0),
(4, 'xoxvp', 'e10adc3949ba59abbe56e057f20f883e', 'NhonSinger', 'support_bmvn@gmail.com', 'xoxvp', '', 2, 0),
(5, 'shinbad', 'e10adc3949ba59abbe56e057f20f883e', 'SLV', 'cnhon5496@gmail.com', 'xoxvp', '', 2, 0);

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
-- Chỉ mục cho bảng `cqn_message`
--
ALTER TABLE `cqn_message`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `cqn_category`
--
ALTER TABLE `cqn_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1611852;

--
-- AUTO_INCREMENT cho bảng `cqn_comment`
--
ALTER TABLE `cqn_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `cqn_contact`
--
ALTER TABLE `cqn_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `cqn_home`
--
ALTER TABLE `cqn_home`
  MODIFY `home_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cqn_message`
--
ALTER TABLE `cqn_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

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
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
