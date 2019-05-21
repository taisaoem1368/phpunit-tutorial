-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2019 at 10:29 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tkw2_ajax`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'sach thieu nhi'),
(2, 'sach van hoc');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(55) NOT NULL,
  `comment_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_time` timestamp NULL DEFAULT NULL,
  `comment_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_product_id` int(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_content`, `comment_time`, `comment_name`, `comment_product_id`) VALUES
(15, '5 sao', '2019-04-28 03:04:47', 'Trung Quốc', 1),
(14, 'Cuốn sách quá hay, mua ngay kẻo hết', '2019-04-28 03:04:14', 'Nguyễn Trần Linh Đan', 1),
(13, 'abcxyz', '2019-04-28 03:04:51', 'Test', 1),
(12, 'Cuốn sách quá hay', '2019-04-28 03:04:29', 'Quyến', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_description`, `product_photo`, `product_category_id`) VALUES
(1, 'Con Chó Nhỏ Mang Giỏ Hoa Hồng', 'Con Chó Nhỏ Mang Giỏ Hoa Hồng\r\n\r\nCon Chó Nhỏ Mang Giỏ Hoa Hồng là tác phẩm mới nhất của nhà văn chuyên viết cho thanh thiếu niên Nguyễn Nhật Ánh, nối tiếp sau Bảy bước tới mùa hè, Tôi thấy hoa vàng trên cỏ xanh… gây sóng gió thị trường sách năm 2015.\r\n\r\n5 chương sách với 86 câu chuyện cực kỳ thú vị và hài hước về 5 con chó 5 loài 5 tính cách trong 1 gia đình có 3 người đều yêu chúng nhưng theo từng cách riêng của mình. Các câu chuyện về tình bạn giữa chúng với nhau, giữa chúng với chị Ni, ba mẹ, khách đến nhà… thực sự mang lại một thế giới trong trẻo, những đoạn đời dễ thương quyến rũ tuổi mới lớn.\r\n\r\nMột quyển sách lôi cuốn viết cho tất cả chúng ta: trẻ con và người lớn. Cuộc đời của 5 con chó nhỏ: Haili, Batô, Suku, Êmê và Pig  được tái hiện như đời sống của mỗi con người: tình bạn, tình yêu, đam mê, lòng dũng cảm, sự sợ hãi, và những ước mơ...\r\n\r\nTrích đoạn\r\n\r\nSuku là một thằng cún nói chung ai nhìn cũng thích.\r\n\r\nĐôi mắt tròn, đen lay láy, ngây thơ ngơ ngác, mỗi khi nhìn ai là khiến người ta phải động lòng.\r\n\r\nCún là gọi theo thói quen hồi bé, chứ thật ra chúng tôi đã sống bên nhau nhiều năm rồi, tóm lại đã qua tuổi vị thành niên từ lâu.\r\n\r\nDù vậy, so với thời niên thiếu bộ dạng của thằng Suku không thay đổi là mấy. nó chỉ có béo lên vì ăn nhiều quá.\r\n\r\nSuku có đôi tai dài. Lông nó màu trằng, óng ảnh và xoăn từng cụm, phủ dày từ chỏm đầu đến tận các ngón chân - trông nó giống hệt như một con cừu. Khi nó nằm im, rất nhiều người tưởng nó là một con chó nhồi bông. Suku xinh đẹp như thế, tất nhiên ai cũng muốn vuốt ve. Rất nhiều người bị vẻ ngoài đáng yêu của nó đánh lừa, nhưng chuyện đó tôi sẽ kể sau...', 'sach01.jpg', 1),
(2, 'Cho Tôi Xin Một Vé Đi Tuổi Thơ', 'Truyện Cho tôi xin một vé đi tuổi thơ là sáng tác mới nhất của nhà văn Nguyễn Nhật Ánh. Nhà văn mời người đọc lên chuyến tàu quay ngược trở lại thăm tuổi thơ và tình bạn dễ thương của 4 bạn nhỏ. Những trò chơi dễ thương thời bé, tính cách thật thà, thẳng thắn một cách thông minh và dại dột, những ước mơ tự do trong lòng… khiến cuốn sách có thể làm các bậc phụ huynh lo lắng rồi thở phào. Không chỉ thích hợp với người đọc trẻ, cuốn sách còn có thể hấp dẫn và thực sự có ích cho người lớn trong quan hệ với con mình.', 'sach02.jpg', 1),
(3, 'Chúc Một Ngày Tốt Lành', 'Chúc Một Ngày Tốt Lành\r\n\r\nĐọc tựa cuốn sách mới nhất của nhà văn Nguyễn Nhật Ánh là muốn mở ngay trang sách. Bạn sẽ thấy một thứ ngôn ngữ lạ của Hàn Quốc hay của nước nào tùy bạn đoán,  Gô un un là Chào buổi sáng; Un gô gô là Chúc ngủ ngon, và nữa, Chiếp un un; Ăng gô gô; Chiếp chiếp gô…\r\n\r\nSau chó Bê Tô, rồi Hai con mèo ngồi bên cửa sổ, nhà văn viết về một cặp heo\r\n\r\nNhân vật chính là hai con heo con, Lọ Nồi thông minh và Đeo Nơ xinh đẹp, cùng bạn chó Mõm Ngắn con chị Vện, mẹ Nái Sề, anh Đuôi Xoăn, Cánh Cụt và bọn gà chíp nhà chị Mái Hoa, … đã làm nên một câu chuyện vô cùng thú vị..\r\n\r\nVà thế giới trở nên thay đổi!', 'sach03.jpg', 2),
(4, 'Quán Gò Đi Lên', 'Quán Gò Đi Lên (Truyện Dài)\r\n\r\nChuyện diễn ra ở quán Đo Đo, quán ăn do tác giả sáng lập để nhớ quê nhà, nơi có chợ Đo Đo - chỗ Quán Gò đi lên ấy. Bởi thế, trong câu truyện tràn ngập những nỗi nhớ, nhớ món ăn, nhớ giọng nói, nhớ thói quen, nhớ kỉ niệm… Dẫu là câu chuyện ngập tràn nỗi nhớ, vẫn nghe trong đó những tiếng cười rất vui.', 'sach04.jpg', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
