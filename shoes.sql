-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 24, 2025 lúc 07:58 PM
-- Phiên bản máy phục vụ: 8.0.40
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoes`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Adidas'),
(2, 'Nike'),
(3, 'Jordan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `brand`, `price`, `description`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'Adidas Superstar', 'Adidas', 2500000.00, 'Mẫu giày biểu tượng với mũi vỏ sò, không bao giờ lỗi mốt.', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/7ed0855435194229a525aad6009a0497_9366/Giay_Superstar_trang_EG4958_01_standard.jpg', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(2, 'Adidas Stan Smith', 'Adidas', 2600000.00, 'Thiết kế tennis tối giản, thanh lịch và dễ phối đồ.', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/e95415214b364f6aa417aad701162446_9366/Giay_Stan_Smith_trang_FX5502_01_standard.jpg', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(3, 'Adidas Ultraboost 1.0', 'Adidas', 5000000.00, 'Đế Boost êm ái, hoàn trả năng lượng tối ưu cho mỗi bước chạy.', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/56385b399955427e8220af0f0096792d_9366/Giay_Ultraboost_1.0_DJen_HQ4202_01_standard.jpg', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(4, 'Adidas NMD_R1', 'Adidas', 3900000.00, 'Phong cách running của thập niên 80 kết hợp công nghệ hiện đại.', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/2831d3e263434a96a349ab1500958373_9366/Giay_NMD_R1_DJen_GZ9256_01_standard.jpg', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(5, 'Adidas Gazelle', 'Adidas', 2500000.00, 'Thiết kế cổ điển từ da lộn, mang đậm chất thể thao đường phố.', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/9e7d93022e4c41478147af0100938167_9366/Giay_Gazelle_Xam_HQ6888_01_standard.jpg', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(6, 'Adidas Forum Low', 'Adidas', 2800000.00, 'Lấy cảm hứng từ giày bóng rổ, mang vẻ ngoài mạnh mẽ, cá tính.', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/8b83984501304a089154ad5800a40875_9366/Giay_Forum_Low_trang_FY7757_01_standard.jpg', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(7, 'Adidas Samba OG', 'Adidas', 2800000.00, 'Đôi giày sân trong kinh điển, nay trở thành biểu tượng thời trang.', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/5849221843344d678d73af180093558e_9366/Giay_Samba_OG_trang_B75806_01_standard.jpg', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(8, 'Adidas Retropy E5', 'Adidas', 3200000.00, 'Phong cách retro running với đế giữa EVA và đệm Adiprene.', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/29851bcb689a42328a69adda00d72023_9366/Giay_Retropy_E5_trang_GW6774_01_standard.jpg', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(9, 'Adidas Ozelia', 'Adidas', 2800000.00, 'Thiết kế tương lai, ôm chân vừa vặn và cực kỳ thoải mái.', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/7f83b44b806941459eaaad6400d71a79_9366/Giay_Ozelia_Xam_H04252_01_standard.jpg', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(10, 'Adidas Adilette Slides', 'Adidas', 1200000.00, 'Dép quai ngang huyền thoại, thoải mái và nhanh khô.', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/31b314a51d8b4648b248adbd00998f80_9366/Dep_quai_ngang_Adilette_Xanh_da_troi_GZ5899_01_standard.jpg', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(11, 'Nike Air Force 1 \'07', 'Nike', 2929000.00, 'Biểu tượng của văn hóa sneaker, thoải mái và bền bỉ.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/b7d9211c-26e7-431a-ac24-b0540fb3c00f/air-force-1-07-shoes-WrLlWX.png', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(12, 'Nike Air Max 90', 'Nike', 3519000.00, 'Cửa sổ Air có thể nhìn thấy, đệm êm ái, phong cách cổ điển.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/a1c12135-a131-4354-8692-73b378c3534d/air-max-90-shoes-K0mczj.png', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(13, 'Nike Dunk Low Retro', 'Nike', 2929000.00, 'Từ sân bóng rổ đến ván trượt, một huyền thoại đường phố.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/4f37fca8-6bce-43e7-8774-f4175ac8c97c/dunk-low-retro-shoes-69h30D.png', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(14, 'Nike Blazer Mid \'77 Vintage', 'Nike', 2929000.00, 'Thiết kế cổ cao gọn gàng, mang đậm dấu ấn vintage.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/fb7eda3c-5ac8-4d05-a18f-1c2c5e82e36e/blazer-mid-77-vintage-shoes-dNWPTj.png', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(15, 'Nike Pegasus 41', 'Nike', 3829000.00, 'Giày chạy bộ hàng ngày với đệm ReactX và Zoom Air êm ái.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/2753a4d6-cd3b-4395-8120-435165c4900a/pegasus-41-road-running-shoes-RZm89S.png', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(16, 'Nike Court Vision Low', 'Nike', 2079000.00, 'Phong cách bóng rổ cổ điển, làm từ vật liệu tái chế.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/61a47a43-bed2-4752-94a5-6e32b4742a12/court-vision-low-next-nature-shoes-N2fVd8.png', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(17, 'Nike Killshot 2', 'Nike', 2649000.00, 'Lấy cảm hứng từ giày tennis, chất liệu da cao cấp.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/a977ba61-8b63-4c12-8178-57e79326d91c/killshot-2-leather-shoes-L3g58B.png', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(18, 'Nike Waffle Debut', 'Nike', 2079000.00, 'Đế ngoài Waffle đặc trưng, phong cách hoài cổ, thoải mái.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/936a2185-d85c-4860-8ffc-14878a75e332/waffle-debut-shoes-hb2Wg7.png', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(19, 'Nike Air Max 97', 'Nike', 4999000.00, 'Lấy cảm hứng từ tàu siêu tốc Nhật Bản, thiết kế gợn sóng độc đáo.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/18a24c53-3f8c-4a37-8854-d8304918451b/air-max-97-shoes-z3Tlrl.png', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(20, 'Nike Victori One Slide', 'Nike', 819000.00, 'Dép siêu nhẹ với lớp đệm foam mềm mại, lý tưởng để thư giãn.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/55580a13-4a0b-41ad-b586-787e90e2954a/victori-one-slides-s42Tz2.png', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(21, 'Air Jordan 1 Mid', 'Jordan', 3669000.00, 'Phiên bản cổ lửng của huyền thoại AJ1, đa dạng về phối màu.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/b314b98a-f136-4c6b-a496-51b3b2a5928c/air-jordan-1-mid-shoes-SQfR2h.png', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(22, 'Air Jordan 1 Low', 'Jordan', 3239000.00, 'Thiết kế cổ thấp linh hoạt, mang di sản của Michael Jordan.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/a0a3c260-a249-441c-b715-28eb512c4049/air-jordan-1-low-shoes-6Q1tK0.png', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(23, 'Air Jordan 4 Retro', 'Jordan', 5869000.00, 'Thiết kế mạnh mẽ với các chi tiết lưới và \"wings\" đặc trưng.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/88c6f600-93a8-43e5-a247-c3359d747a9f/air-jordan-4-retro-shoes-nk1d2t.png', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(24, 'Air Jordan 11 Retro', 'Jordan', 6179000.00, 'Chất liệu da bóng sang trọng, một trong những mẫu Jordan được yêu thích nhất.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/e33d0159-0b1e-4361-b4a5-4835339c63f6/jordan-11-retro-low-shoes-H619rS.png', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(25, 'Jordan Tatum 2', 'Jordan', 3669000.00, 'Giày thửa riêng của Jayson Tatum, nhẹ và hiệu suất cao.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/183f3f33-13e5-45a4-b0a7-4b77f0a6d59b/tatum-2-vortex-pf-basketball-shoes-0Q1D3k.png', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(26, 'Jordan Luka 3', 'Jordan', 3829000.00, 'Giày thửa riêng của Luka Dončić, tối ưu cho các bước lùi đặc trưng.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/45499a09-7728-44d4-a78d-f5e6a9821868/luka-3-pf-basketball-shoes-VpPTfF.png', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(27, 'Air Jordan 3 Retro', 'Jordan', 5869000.00, 'Họa tiết da voi kinh điển, thiết kế vượt thời gian.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/a9e3f6d7-b52f-45b6-b68e-b1e42b8b9075/air-jordan-3-retro-shoes-8bV9vM.png', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(28, 'Jordan Spizike Low', 'Jordan', 4709000.00, 'Sự kết hợp của nhiều mẫu Jordan cổ điển, thiết kế độc đáo.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/281ed84f-4519-4b68-8086-4f4044b4657b/jordan-spizike-low-shoes-LDT8hH.png', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(29, 'Air Jordan 1 High OG', 'Jordan', 5299000.00, 'Phiên bản gốc cổ cao, là nền tảng của văn hóa sneaker.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/073b6241-e945-4217-a044-245362e6c510/air-jordan-1-retro-high-og-shoes-1F67P9.png', '2025-06-24 17:57:21', '2025-06-24 17:57:21'),
(30, 'Jordan Play Slides', 'Jordan', 1149000.00, 'Dép quai ngang với đệm êm ái, mang logo Jumpman đặc trưng.', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/3755498a-232a-43f1-b0e9-a6e2e5975525/jordan-play-slides-CWWj1W.png', '2025-06-24 17:57:21', '2025-06-24 17:57:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `product_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`product_id`, `category_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_details`
--

CREATE TABLE `product_details` (
  `detail_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `product_details`
--

INSERT INTO `product_details` (`detail_id`, `product_id`, `size`, `color`, `material`) VALUES
(1, 1, '42', 'Cloud White / Core Black', 'Da và tổng hợp'),
(2, 2, '41', 'Cloud White / Green', 'Da và tổng hợp'),
(3, 3, '42.5', 'Core Black / Core Black', 'Vải dệt Primeknit'),
(4, 4, '42', 'Core Black / Grey Six', 'Vải dệt'),
(5, 5, '41', 'Grey Three / Cloud White', 'Da lộn và da'),
(6, 6, '42', 'Cloud White / Royal Blue', 'Da và tổng hợp'),
(7, 7, '42.5', 'Cloud White / Core Black', 'Da lộn và da'),
(8, 8, '41', 'Chalk White / Grey Two', 'Vải và da lộn'),
(9, 9, '42', 'Grey Three / Signal Green', 'Vải dệt và tổng hợp'),
(10, 10, '43', 'Dark Blue / Cloud White', 'Cao su tổng hợp'),
(11, 11, '42.5', 'White / White', 'Da và tổng hợp'),
(12, 12, '42', 'White / Black / Light Smoke Grey', 'Da, lưới và tổng hợp'),
(13, 13, '42', 'White / Black', 'Da'),
(14, 14, '41', 'White / Black / Sail', 'Da và vải'),
(15, 15, '43', 'White / Black / Pink', 'Vải lưới Flyknit'),
(16, 16, '42', 'White / Black', 'Da tổng hợp'),
(17, 17, '41.5', 'Sail / Black / Gum', 'Da cao cấp'),
(18, 18, '42', 'Black / White', 'Vải và da lộn'),
(19, 19, '43', 'Metallic Silver / Black', 'Tổng hợp và lưới'),
(20, 20, '42.5', 'Black / White', 'Cao su tổng hợp'),
(21, 21, '42', 'Black / Gym Red / White', 'Da và tổng hợp'),
(22, 22, '42.5', 'White / University Red', 'Da'),
(23, 23, '43', 'Industrial Blue / White', 'Da lộn và lưới'),
(24, 24, '42', 'White / Metallic Silver', 'Da bóng và vải'),
(25, 25, '44', 'Mint Foam / Black', 'Vải lưới và tổng hợp'),
(26, 26, '44', 'Midnight Racer / Blue', 'Vải lưới và tổng hợp'),
(27, 27, '43', 'White / Fire Red / Black', 'Da cao cấp'),
(28, 28, '42.5', 'White / University Red', 'Da và tổng hợp'),
(29, 29, '43', 'Black / Green / White', 'Da cao cấp'),
(30, 30, '42', 'Black / University Red', 'Cao su tổng hợp');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `product_details`
--
ALTER TABLE `product_details`
  MODIFY `detail_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `product_categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Các ràng buộc cho bảng `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
