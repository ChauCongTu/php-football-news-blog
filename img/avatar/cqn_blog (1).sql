-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 18, 2022 lúc 06:22 AM
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
(1, 'Lunar New Year Festival', 'lunar-new-year-festival', '<p><img class=\"rounded\" src=\"http://localhost:81/blog/img/post/1.png\" width=\"100%\"></p><p>Lunar New Year Festival often falls between late January and early February; it is among the most important holidays in Vietnam. Officially, the festival includes the 1st, 2nd, and 3rd day in Lunar Calendar; however, Vietnamese people often spend nearly a month celebrating this special event. Tet Holiday gets its beginning marked with the first day in the Lunar Year; however, its preparation starts long before that. The 23rd day of the last Lunar month is East Day—a ritual worshiping Kitchen Gods (Tao Cong). It thought that each year on this day, these Gods go to heaven to tell Jade Emperor about all activities of households on earth. On New Year’s Eve, they return home to continue their duties as taking care of families. On New Year’s Day, the first ones who come to visit households—called first-foot—are very important and hence need to be well chosen, as they believed to hold in their hands the entire luck of the family in New Year (Tan Nien). After that, till the third day or even the fourth day of Tet, individuals meet relatives, friends, and colleagues, wishing them all kinds of good things like happiness, health, and success.</p>\r\n<p><img class=\"rounded\" src=\"https://i.pinimg.com/originals/2f/dd/78/2fdd78941e9b522ca260af68d51701dc.png\" width=\"100%\"></p>\r\n', 'baivietthunhat', '2022-07-08 05:36:03', '2022-07-15 00:00:00', 1611844, 1, 84),
(17, 'Phản ứng đầu tiên của Ronaldo sau nhiều ngày im lặng', 'phan-ung-dau-tien-cua-ronaldo-sau-nhieu-ngay-im-lang', 'Trên trang cá nhân, Cristiano Ronaldo đăng tải hình ảnh anh đang vùi mình trong phòng tập. CR7 để lộ thân hình với múi cơ săn chắc, kèm lời nhắn: \"Hard work\" (tạm dịch: Tập luyện chăm chỉ - PV). Lần đầu tiên cựu sao Juventus có động thái trước giới truyền thông sau tin đồn đòi rời Old Trafford.\r\n<br>\r\nNgày 2/7, tờ The Times cho biết Ronaldo có thể đã chơi trận cuối cùng cho Man Utd. Nhiều nguồn tin uy tín cũng xác nhận Ronaldo muốn \"Quỷ đỏ\" bán anh nếu nhận được lời đề nghị thỏa đáng. Kể từ đó đến nay, Ronaldo giữ im lặng. Anh không có phát biểu nào, cũng như không cập nhật trạng thái trên trang cá nhân.\r\n<br>\r\nKhi tương lai chưa rõ ràng, có lẽ Ronaldo coi việc tập luyện chăm chỉ là ưu tiên hàng đầu. Giữ gìn vóc dáng là phần quan trọng để Ronaldo có sức khỏe phục vụ cho công việc.\r\n<br>\r\n<img src=\"https://znews-photo.zingcdn.me/w860/Uploaded/mfnuy/2022_07_14/293753379_620188049467739_6578542561172145679_n.jpg\" width=\"100%\"><small><i>Ronaldo tập luyện sau kỳ nghỉ</i></small><br><br>\r\nNgười đại diện Jorge Mendes đã liên tục mời chào Chelsea, Bayern Munich mua Ronaldo trong kỳ chuyển nhượng mùa hè năm nay. Tuy nhiên, Ronaldo toàn nhận về những lời từ chối.\r\n<br>\r\n\"Tôi đánh giá cao Ronaldo. Cậu ấy là một trong những cầu thủ vĩ đại nhất. Tuy nhiên, việc chiêu mộ Ronaldo không phù hợp với triết lý của Bayern Munich\", Giám đốc Điều hành Oliver Kahn của Bayern phát biểu.\r\n<br>\r\nHLV Thomas Tuchel cũng nói rõ với chủ sở hữu Todd Boehly về quyết định không ký hợp đồng với Ronaldo. HLV Tuchel lo ngại cái tôi và khả năng hỗ trợ phòng ngự của CR7 sẽ ảnh hưởng đến lối chơi chung của Chelsea.\r\n<br>\r\nRonaldo đang lấy lý do gia đình để trì hoãn việc trở lại hội quân cùng Manchester United. \"Quỷ đỏ\" buộc phải dự tour du đấu hè mà không có ngôi sao mang áo số 7. Dù vậy, Man Utd không có ý định bán Ronaldo.\r\n<br>\r\nHLV Erik ten Hag tuyên bố: \"Ronaldo không phải để bán. Cậu ấy nằm trong kế hoạch của chúng tôi. Hiện tại, Ronaldo không ở cùng đội bóng vì bận giải quyết các vấn đề cá nhân. Chúng tôi đang lên kế hoạch có Ronaldo cho mùa giải mới. Mọi chuyện chỉ có vậy\".', 'Null', '2022-07-15 00:00:00', '2022-07-15 00:00:00', 15, 1, 61),
(18, 'Gnabry quay xe, sắp gia hạn với Bayern', 'gnabry-quay-xe-sap-gia-han-voi-bayern', '<p><strong>Cuối c&ugrave;ng th&igrave; tương lai của Serge Gnabry cũng trở n&ecirc;n r&otilde; r&agrave;ng! Cầu thủ chạy c&aacute;nh người Đức chuẩn bị gia hạn hợp đồng với Bayern, qua đ&oacute; chấm dứt cơ hội sở hữu Gnabry của Chelsea.</strong></p>\r\n\r\n<p>Theo tờ Kicker, Gnabry đ&atilde; đồng &yacute; gia hạn với H&ugrave;m x&aacute;m về mặt nguy&ecirc;n tắc. C&aacute;c b&ecirc;n chỉ c&ograve;n thương lượng th&ecirc;m một số chi tiết của bản hợp đồng dự kiến k&eacute;o d&agrave;i tới năm 2027. Cần nhấn mạnh l&agrave; 2027, tức l&agrave; d&agrave;i th&ecirc;m 4 năm so với hợp đồng hiện tại (tới năm 2023). Điều đ&oacute; cho thấy, Bayern đ&aacute;nh gi&aacute; cao vai tr&ograve; của Gnabry trong kế hoạch d&agrave;i hơi.</p>\r\n\r\n<p>Trước đ&oacute;, tiến tr&igrave;nh gia hạn của Gnabry từng l&acirc;m v&agrave;o ng&otilde; cụt. Hai b&ecirc;n kh&ocirc;ng t&igrave;m được tiếng n&oacute;i chung cả về mức lương lẫn kh&iacute;a cạnh chuy&ecirc;n m&ocirc;n (Gnabry muốn được đảm bảo một vai tr&ograve; r&otilde; r&agrave;ng v&agrave; quan trọng tại s&acirc;n Allianz Arena). Ngay từ ph&iacute;a Bayern cũng kh&ocirc;ng c&oacute; được quan điểm r&otilde; r&agrave;ng về Gnabry. Họ nửa muốn gia hạn nửa muốn b&aacute;n cầu thủ chạy c&aacute;nh người Đức trong h&egrave; n&agrave;y để tr&aacute;nh nguy cơ mất trắng v&agrave;o h&egrave; 2023 (thời điểm Gnabry hết hợp đồng). Cả Robert Lewandowski lẫn Serge Gnabry đều sẽ hết hợp đồng v&agrave;o năm sau, v&agrave; Bayern kh&ocirc;ng muốn lặp lại vết xe đổ của những David Alaba, Jerome Boateng, Niklas Suele (ra đi dưới dạng chuyển nhượng tự do).&nbsp;</p>\r\n\r\n<p><img alt=\"Gnabry sẽ ở lại Bayern thêm 4 năm, chấm dứt hy vọng có anh trong đội hình của Chelsea\" src=\"https://cdn.bongdaplus.vn/Assets/Media/2022/07/15/25/gnabry-1.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>Theo Kicker, Gnabry sẽ nhận được &ldquo;bản hợp đồng lớn nhất trong sự nghiệp&rdquo; cả ở kh&iacute;a cạnh thời gian (k&eacute;o d&agrave;i tới 2027) cho tới thu nhập. Cầu thủ sinh năm 1995 l&agrave; trụ cột thứ ba gia hạn với H&ugrave;m x&aacute;m trong h&egrave; n&agrave;y sau Manuel Neuer v&agrave; Thomas Mueller. Việc gia hạn với Bayern cũng đảm bảo cho Gnabry một m&ugrave;a giải ổn định trước khi c&ugrave;ng ĐT Đức tham dự World Cup v&agrave;o th&aacute;ng 11. Gia nhập một đội b&oacute;ng lớn kh&aacute;c trước thềm World Cup chưa bao giờ l&agrave; lựa chọn ưu ti&ecirc;n của c&aacute;c cầu thủ h&agrave;ng đầu.</p>\r\n\r\n<p>Gnabry vừa trải qua m&ugrave;a giải kh&ocirc;ng tồi trong m&agrave;u &aacute;o Bayern. Cựu cầu thủ Arsenal ghi được 17 b&agrave;n thắng sau 45 lần ra s&acirc;n tr&ecirc;n mọi đấu trường. Tuy nhi&ecirc;n đ&oacute; vẫn chưa phải l&agrave; Gnabry của m&ugrave;a giải đỉnh cao 2019/20 khi cầu thủ n&agrave;y đ&oacute;ng vai tr&ograve; quan trọng trong c&uacute; ăn ba lịch sử của H&ugrave;m x&aacute;m với 46 trận, 23 b&agrave;n thắng. Phong độ kh&aacute; thất thường của Gnabry khiến anh chưa bật l&ecirc;n được so với hai cầu thủ chạy c&aacute;nh c&ograve;n lại l&agrave; Kingsley Coman v&agrave; Leroy Sane. V&agrave; đ&oacute; cũng l&agrave; l&yacute; do khiến Bayern từng kh&aacute; lưỡng lự về tương lai của Gnabry.</p>\r\n\r\n<p>Nhưng b&acirc;y giờ th&igrave; mọi thứ đ&atilde; th&ocirc;ng suốt. Gnabry sẽ ở lại để tiếp tục cuộc cạnh tranh khốc liệt với Coman, Sane v&agrave; t&acirc;n binh Sadio Mane. Việc Gnabry sắp gia hạn hợp đồng với Bayern cũng l&agrave; một t&iacute;n hiệu cho thấy Robert Lewandowski sẽ ra đi. Barcelona đang chuẩn bị một lời đề nghị 50 triệu euro để buộc Bayern kh&ocirc;ng thể chối từ. Bayern hiện cũng chưa t&igrave;m được số 9 n&agrave;o thay thế Lewandowski. Thế n&ecirc;n việc giữ lại Gnabry sẽ đảm bảo qu&acirc;n số kh&aacute; dồi d&agrave;o tr&ecirc;n h&agrave;ng c&ocirc;ng, gi&uacute;p cho Nagelsmann c&oacute; nhiều lựa chọn chiến thuật v&iacute; dụ như d&ugrave;ng số 9 ảo.</p>\r\n', 'Null', '2022-07-15 00:00:00', '2022-07-15 00:00:00', 15, 1, 103);

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
(1611842, 'Bayern Munich', 'bayern-munich'),
(1611844, 'Đời sống', 'doi-song');

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
(11, '0000-00-00 00:00:00', 'Admin', 0, 'Test xóa bình luận', 18),
(12, '0000-00-00 00:00:00', 'admin', 0, 'Test xóa bình luận', 18),
(13, '0000-00-00 00:00:00', 'Nhon Chau', 0, 'Test hiển thị', 17),
(14, '0000-00-00 00:00:00', 'Josh CQN', 0, 'Test', 18),
(15, '0000-00-00 00:00:00', 'admin', 0, 'Test xóa bình luận', 18),
(17, '0000-00-00 00:00:00', 'Josh CQN', 0, '; $conn->query(\"UPDATE cqn_commet SET noidung=\"hack\" WHERE comment_id=11\";', 17),
(20, '0000-00-00 00:00:00', 'Nhon Chau', 0, 'admin', 18),
(21, '0000-00-00 00:00:00', 'Nhon Chau', 0, 'bình luận', 18),
(22, '0000-00-00 00:00:00', 'Nhon Chau', 0, '<h2>HTML Forms</h2>\r\n\r\n<form action=\"/action_page.php\">\r\n  <label for=\"fname\">First name:</label><br>\r\n  <input type=\"text\" id=\"fname\" name=\"fname\" value=\"John\"><br>\r\n  <label for=\"lname\">Last name:</label><br>\r\n  <input type=\"text\" id=\"lname\" name=\"lname\" value=\"Doe\"><br><br>\r\n  <input type=\"submit\" value=\"Submit\">\r\n</form> ', 18),
(23, '0000-00-00 00:00:00', 'Chau Nhon', 0, '<html>Test bình luận</html>', 18),
(25, '0000-00-00 00:00:00', 'Josh CQN', 0, '%3Cscript%3Ealert%28%5C%22Hacked%20by%20Josh%20CQN%5C%22%29%3B%3C%2Fscript%3E', 18),
(26, '0000-00-00 00:00:00', 'Josh CQN', 0, '%3Cscript%3Ealert%28%22Hacked%22%29%3B%3C%2Fscript%3E', 18),
(27, '0000-00-00 00:00:00', '%3Cscript%3Ealert%28%22Hacked%22%29%3B%3C%2Fscript', 0, '%3Cscript%3Ealert%28%22Hacked%22%29%3B%3C%2Fscript%3E', 18),
(28, '0000-00-00 00:00:00', 'Josh CQN', 0, 'alert(&#34;Hacked&#34;);', 18),
(29, '0000-00-00 00:00:00', 'Josh CQN', 0, 'HTML Forms\n\n\n  First name:\n  \n  Last name:\n  \n  \n ', 18);

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
(1, 'Quenhon2002@gmail.com', 'Dear CQN Blog\'s Admin', 'Test form liên hệ thứ nhất', '0000-00-00 00:00:00', 1, 0),
(2, 'cnhon5496@gmail.com', 'Dear Admin of CQN Blog', 'Nhơn đẹp trai vãi cả lo', '0000-00-00 00:00:00', 1, 0),
(4, 'cnhon5496@gmail.com', 'Please active my domain', 'Hằng số bộ lọc được xác định trước\r\nCó nhiều hằng số bộ lọc xác định trước được liệt kê bên dưới:\r\n\r\nXác thực các hằng số bộ lọc:\r\nFILTER_VALIDATE_BOOLEAN: Xác thực boolean\r\nFILTER_VALIDATE_INT: Xác thực một số nguyên\r\nFILTER_VALIDATE_FLOAT: Xác thực một float\r\nFILTER_VALIDATE_REGEXP: Xác thực một biểu thức chính quy\r\nFILTER_VALIDATE_IP: Xác thực địa chỉ IP\r\nFILTER_VALIDATE_EMAIL: Xác thực địa chỉ e-mail\r\nFILTER_VALIDATE_URL: Xác thực URL\r\nSanitize (vệ sinh) hằng số bộ lọc:\r\nFILTER_SANITIZE_EMAIL: Xóa tất cả các ký tự không hợp lệ khỏi địa chỉ email\r\nFILTER_SANITIZE_ENCODED: Xóa / Mã hóa các ký tự đặc biệt\r\nFILTER_SANITIZE_MAGIC_QUOTES: Áp dụng hàm addlash ()\r\nFILTER_SANITIZE_NUMBER_FLOAT: Xóa tất cả các ký tự, trừ các chữ số, + - và tùy chọn., EE\r\nFILTER_SANITIZE_NUMBER_INT: Xóa tất cả các ký tự ngoại trừ các chữ số và + -\r\nFILTER_SANITIZE_SPECIAL_CHARS: Xóa các ký tự đặc biệt\r\nFILTER_SANITIZE_FULL_SPECIAL_CHARS Có thể tắt báo giá mã hóa bằng cách sử dụng FILTER_FLAG_NO_ENCODE_QUOTES.\r\nFILTER_SANITIZE_STRING: Xóa thẻ / ký tự đặc biệt khỏi chuỗi\r\nFILTER_SANITIZE_STRIPPED: Bí danh của FILTER_SANITIZE_STRING\r\nFILTER_SANITIZE_URL: Xóa tất cả ký tự bất hợp pháp khỏi URL \r\nCác hằng số bộ lọc khác:\r\n\r\nFILTER_UNSAFE_RAW: Không làm gì cả, tùy chọn dải / mã hóa các ký tự đặc biệt\r\nFILTER_CALLBACK: Gọi hàm do người dùng xác định để lọc dữ liệu\r\nKết luận: Trên đây là các thông tin về Filter trong Python và chức năng của các Filter hằng số trong PHP. Với vai trò xác thực và bảo mật các thông tin, filter trong PHP chắc chắn là một tính năng tốt cho bất kỳ dự án nào. Tìm hiểu thêm về PHP và các ngôn ngữ lập trình khác qua các khóa học lập trình tại Viện công nghệ thông tin T3H.', '2022-07-16 17:56:17', 1, 1);

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
(2, 'second_user', 'e10adc3949ba59abbe56e057f20f883e', 'Writter', '', '', '', 1, 0),
(3, 'third_user', 'e10adc3949ba59abbe56e057f20f883e', 'Quản trị viên', NULL, NULL, NULL, 0, 0);

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
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `cqn_category`
--
ALTER TABLE `cqn_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1611845;

--
-- AUTO_INCREMENT cho bảng `cqn_comment`
--
ALTER TABLE `cqn_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `cqn_contact`
--
ALTER TABLE `cqn_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
