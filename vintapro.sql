-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 27, 2019 lúc 08:49 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vintapro`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `img_primary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_sub_list` longtext COLLATE utf8mb4_unicode_ci,
  `img_primary_mobile` longtext COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL,
  `level` tinyint(3) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `description`, `img_primary`, `img_sub_list`, `img_primary_mobile`, `is_active`, `order`, `parent_id`, `level`, `type`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Thành Lập Công Ty Việt Nam', 'thanh-lap-cong-ty-viet-nam', NULL, 'images/upload/origins/service/ke_494142.jpg', NULL, NULL, 1, 0, NULL, 0, 2, 1, '2019-06-21 02:22:36', '2019-06-21 02:35:05'),
(2, 'Thành Lập Công Ty Nước Ngoài', 'thanh-lap-cong-ty-nuoc-ngoai', NULL, 'images/upload/origins/service/thanh-lap-cong-ty-100-von-nuoc-ngoai.png', NULL, NULL, 1, 0, NULL, 0, 2, 1, '2019-06-21 02:22:36', '2019-06-26 06:05:46'),
(3, 'Thay Đổi, Giải Thể', 'thay-doi-giai-the', NULL, 'images/upload/origins/service/tu-van-thu-tuc-giai-the-doanh-nghiep.jpg', NULL, NULL, 1, 0, NULL, 0, 2, 1, '2019-06-21 02:23:46', '2019-06-26 06:08:07'),
(4, 'Dịch Vụ Kế Toán, Thuế', 'dich-vu-ke-toan-thue', NULL, 'images/upload/origins/service/thue-xuat-nhap-khau0811100529_229927.jpg', NULL, NULL, 1, 0, NULL, 0, 2, 1, '2019-06-21 02:24:12', '2019-06-21 02:36:28'),
(5, 'Đào Tạo Kế Toán', 'dao-tao-ke-toan', NULL, 'images/upload/origins/service/dt-ketoan.png', NULL, NULL, 1, 0, NULL, 0, 2, 1, '2019-06-21 02:24:40', '2019-06-26 06:12:38'),
(6, 'Chữ Ký Số', 'chu-ky-so', NULL, 'images/upload/origins/service/chu-ky-so.jpg', NULL, NULL, 1, 0, NULL, 0, 2, 1, '2019-06-21 02:24:55', '2019-06-26 06:19:05'),
(7, 'Khắc Dấu', 'khac-dau', NULL, 'images/upload/origins/service/khac-dau.jpg', NULL, NULL, 1, 0, NULL, 0, 2, 1, '2019-06-21 02:25:03', '2019-06-26 06:24:29'),
(8, 'Hóa Đơn Điện Tử', 'hoa-don-dien-tu', NULL, 'images/upload/origins/service/hoa-don-dien-tu.png', NULL, NULL, 1, 0, NULL, 0, 2, 1, '2019-06-21 02:25:19', '2019-06-26 06:26:17'),
(9, 'In Hóa Đơn GTGT', 'in-hoa-don-gtgt', NULL, 'images/upload/origins/service/mau-hoa-don-gtgt.jpg', NULL, NULL, 1, 0, NULL, 0, 2, 1, '2019-06-21 02:25:29', '2019-06-26 06:37:00'),
(10, 'Tin Tức Chuyên Ngành', 'tin-tuc-chuyen-nganh', NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0, 1, '2019-06-24 07:50:57', '2019-06-24 07:50:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `configs`
--

CREATE TABLE `configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `configs`
--

INSERT INTO `configs` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'config_logo', 'images/upload/origins/logo/logo-vintapro.png', NULL, '2019-06-20 00:27:33'),
(2, 'config_title', 'Công Ty Kế Toán Vintapro', NULL, '2019-06-24 00:10:45'),
(3, 'config_descrtiption', 'Mô Tả Ngắn Về DN s d  f', NULL, '2019-06-11 03:02:12'),
(4, 'config_address', '217/82 Nguyễn Thị Minh Khai, P. Phú Hòa, TP. Thủ Dầu Một, Bình Dương', NULL, '2019-06-20 00:40:21'),
(5, 'config_info_email', 'ceo@vintapro.com', NULL, '2019-06-20 00:40:21'),
(6, 'config_describe_contact', '<p><b>Vintapro Dịch Vụ&nbsp;</b><b>Nhanh Gọn &ndash; Tiết Kiệm Thời Gian</b></p>\n\n<p><b>Thời gian thực hiện:</b>&nbsp;Tùy theo loại hình dịch vụ mà Quý khách hàng có nhu cầu thực hiện.</p>\n\n<p><b>Chi phí:</b>&nbsp;Là sự thỏa thuận trên tinh thần hợp tác và bền vững giữa Vintapro và Quý khách hàng, sao cho đạt được HIỆU QUẢ công việc TỐT NHẤT.</p>\n\n<p><b>Trong tất cả dịch vụ tại Vintapro</b></p>\n\n<ul>\n	<li>Sẽ không phát sinh thêm chi phí khác.</li>\n	<li>Tư vấn miễn phí, chuyên nghiệp, tận tình và đến tận nơi.</li>\n	<li>Cam kết đúng hẹn, tiết kiệm thời gian.</li>\n	<li>Giao GPKD và con dấu miễn phí tận nhà.</li>\n</ul>\n\n<p>Khách hàng KHÔNG phải đi lên sở KHĐT, KHÔNG phải đi ủy quyền, KHÔNG phải chứng thực CMND/ Hộ chiếu.</p>\n\n<p><b>Vintapro Luôn Sẵn Sàng Đồng Hành, Giúp Đỡ &amp; Giải Quyết Các Vấn Đề Của Quý Khách Hàng</b></p>\n\n<p><b>Hotline:&nbsp;<a href=\"tel:0913693988\">0913.693.988</a></b></p>', NULL, '2019-06-24 00:07:52'),
(7, 'config_phone', '0913.693.988', NULL, '2019-06-20 00:40:21'),
(8, 'seo_title', 'Công Ty Kế Toán Vintapro', NULL, '2019-06-23 23:59:58'),
(9, 'seo_keyword', 'từ khóa', NULL, '2019-06-11 02:03:22'),
(10, 'seo_description', 'Mô Tả Ngắn Về DN ma ma ma s s  df', NULL, '2019-06-11 03:02:58'),
(11, 'seo_image', 'images/upload/origins/logo/logo-vintapro.png', NULL, '2019-06-20 00:27:33'),
(12, 'config_slider', '[{\"path\":\"images/upload/origins/slider/dich_vu_ke_toan_thue.jpg\",\"name\":\"dich_vu_ke_toan_thue.jpg\",\"width\":766,\"height\":383},{\"path\":\"images/upload/origins/slider/quyet-toan-thue-tncn.jpg\",\"name\":\"quyet-toan-thue-tncn.jpg\",\"width\":766,\"height\":383}]', NULL, '2019-06-20 00:53:47'),
(13, 'config_hotline_call', '0913693988', NULL, '2019-06-20 00:40:21'),
(14, 'config_hotline_show', '0913.693.988', NULL, '2019-06-20 00:40:21'),
(15, 'config_email_receive', 'nnduyquang@gmail.com', NULL, '2019-06-11 18:29:33'),
(16, 'config_email_sender_subject', 'Chúng Tôi Đã Nhận Được Mail, Xin Chân Thành Cảm Ơn', NULL, '2019-06-11 18:29:33'),
(17, 'config_email_sender_from', 'Công Ty Smartlinks', NULL, '2019-06-11 18:29:33'),
(18, 'config_email_receive_subject', 'Có Báo Giá Mới Từ Khách Hàng', NULL, '2019-06-11 18:29:33'),
(19, 'config_email_receive_from', 'Công Ty Smartlinks', NULL, '2019-06-11 18:29:33'),
(20, 'config_email_content_to_customer', '<p>Cảm Ơn</p>', NULL, '2019-06-11 18:29:33'),
(21, 'config_email_signatures', '<p>Chữ ký nè má</p>', NULL, '2019-06-11 18:29:33'),
(22, 'config_script_header', 'sdadasdasdasd', NULL, '2019-06-11 18:48:36'),
(23, 'config_script_body', 'dsadasdsadasd', NULL, '2019-06-11 18:48:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `many_category_items`
--

CREATE TABLE `many_category_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `many_category_items`
--

INSERT INTO `many_category_items` (`id`, `category_id`, `item_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, '2019-06-23 20:15:39', '2019-06-24 02:28:29'),
(2, 1, 1, 2, '2019-06-23 20:15:50', '2019-06-23 23:57:11'),
(3, 1, 3, 2, '2019-06-23 23:59:11', '2019-06-24 02:28:17'),
(4, 10, 4, 0, '2019-06-24 07:59:23', '2019-06-24 07:59:23'),
(5, 10, 5, 0, '2019-06-24 08:07:43', '2019-06-24 08:07:43'),
(6, 10, 6, 0, '2019-06-24 08:11:50', '2019-06-24 08:11:50'),
(7, 10, 7, 0, '2019-06-24 08:20:32', '2019-06-24 08:20:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2019_06_05_021717_create_product_attributes_table', 2),
(7, '2019_06_05_024611_create_attribute_value_table', 2),
(8, '2019_06_05_024702_create_attributes_table', 2),
(9, '2019_06_05_025743_create_promotions_table', 2),
(10, '2019_06_05_025929_create_promotion_prices_table', 2),
(11, '2019_06_05_033843_create_promotion_contents_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '15D7pRkURx56Hp2sz2HQm1UOTTGQaCoSs1bLAsI0', 'http://localhost', 1, 0, 0, '2019-06-19 18:42:51', '2019-06-19 18:42:51'),
(2, NULL, 'Laravel Password Grant Client', 'OGv253rcThdRIHAArFoFwegt5bG1WMmkjfHPXKeZ', 'http://localhost', 0, 1, 0, '2019-06-19 18:42:51', '2019-06-19 18:42:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-06-19 18:42:51', '2019-06-19 18:42:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_primary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_sub_list` longtext COLLATE utf8mb4_unicode_ci,
  `post_type` tinyint(4) NOT NULL DEFAULT '0',
  `is_hot` tinyint(4) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `seo_id` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `description`, `content`, `img_primary`, `img_sub_list`, `post_type`, `is_hot`, `is_active`, `seo_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Dịch Vụ Thành Lập Công Ty Trọn Gói', 'dich-vu-thanh-lap-cong-ty-tron-goi', 'Vậy tại sao bạn không tìm đến một đơn vị uy tín, đáng tin cậy, chuyên cung cấp dịch vụ Thành lập công ty để hỗ trợ, tư vấn và thậm chí là đăng ký giấy phép kinh doanh hộ bạn?', '<p>Điều gì là quan trọng đối với các công ty khởi nghiệp trong thời đại 4.0? Đó chính là thời gian. Bạn cần tận dụng hết tất cả thời gian của mình để cải thiện sản phẩm, dịch vụ sao cho tốt nhất để cung cấp cho khách hàng. Do đó, việc bạn mất thời gian cả ngày ngồi ở Sở Kế Hoạch Đầu Tư để chờ làm đơn xin giấy phép kinh doanh thật lãng phí. Bên cạnh đó, nếu không được các cán bộ tại Sở tư vấn kỹ thì có thể dẫn đến làm sai các hồ sơ, việc sửa lại sẽ mất rất nhiều thời gian và ảnh hưởng đến tâm trạng làm việc của bạn.</p>\n\n<p>Vậy tại sao bạn không tìm đến một đơn vị uy tín, đáng tin cậy, chuyên cung cấp dịch vụ Thành lập công ty để hỗ trợ, tư vấn và thậm chí là đăng ký giấy phép kinh doanh hộ bạn?</p>\n\n<p><strong>Vintapro</strong>&nbsp;sẽ là sự lựa chọn hoàn hảo cho bạn ngay lúc này.</p>\n\n<p>Đến với dịch vụ&nbsp;<strong>Thành lập công ty trọn gói</strong>&nbsp;tại Vintapro, Quý khách hàng sẽ nhận được những ưu đãi đặc biệt.</p>\n\n<ul>\n	<li>Lập sổ thành viên/ Cổ đông, điều lệ công ty;</li>\n	<li>Tư vấn các vấn đề pháp lý trong quá trình doanh nghiệp hoạt động kinh doanh;</li>\n	<li>Tư vấn về Thuế, kế toán, bảo hiểm xã hội, bảo hiểm y tế, bảo hiểm lao động;</li>\n	<li>Cung cấp biểu mẫu, hợp đồng, văn bản pháp luật Thuế, hướng dẫn khai Thuế, các thủ tục đặt in Hóa đơn.</li>\n</ul>\n\n<p><strong>Bước 1: Tư vấn và tiếp nhận thông tin thành lập công ty</strong><br />\n&nbsp;</p>\n\n<ul>\n	<li>Vintapro sẽ tư vấn trực tiếp tại văn phòng/ qua tổng đài cho quý khách hàng ngay sau khi tiếp nhận thông tin.</li>\n	<li>Thông tin tiếp nhận bao gồm: Tên công ty dự kiến đặt; Địa Chỉ Công ty dự kiến đặt trụ sở; Ngành nghề kinh doanh dự kiến; Vốn điều lệ đăng ký góp/Tỷ lệ vốn góp các thành viên.</li>\n	<li>Vintapro trao đổi về mức chi phí thành lập để quý khách hàng nắm vững ngay từ đầu giúp thuận tiện cho việc hợp tác BỀN VỮNG giữa hai bên.</li>\n</ul>\n\n<p><strong>Bước 2:&nbsp; Soạn thảo Hồ sơ</strong><br />\n<br />\nVintapro sẽ hoàn thành hồ sơ thành lập công ty theo đề nghị của quý khách hàng. Hồ sơ bao gồm:</p>\n\n<ul>\n	<li>Giấy đề nghị đăng ký kinh doanh.</li>\n	<li>Dự thảo điều lệ công ty.</li>\n	<li>Danh sách cổ đông, thành viên sáng lập.</li>\n	<li>CMND hoặc hộ chiếu phô tô công chứng của các thành viên hoặc cổ đông kèm theo</li>\n</ul>\n\n<p><strong>Bước 3: Gửi hồ sơ cho khách hàng ký</strong></p>\n\n<p>Vintapro sẽ gửi hồ sơ để quý khách hàng xem xét sửa đổi, bổ sung và ký tên vào các hồ sơ.<br />\n<br />\n<strong>Bước 4: Thay mặt khách hàng thực hiện các thủ tục theo quy định</strong><br />\n<br />\nVintapro sẽ trực tiếp làm việc theo sự ủy quyền của khách hàng một cách độc lập đến khi hoàn thành nhiệm vụ</p>\n\n<p><strong>Bước 5: Bàn giao bản chính giấy phép và con dấu</strong><br />\n<br />\nVintapro sẽ gửi bản chính giấy phép và con dấu cho khách hàng và thu phí dịch vụ.</p>\n\n<p>Quý khách hàng nếu có nhu cầu làm dịch vụ về thuế, sổ sách kế toán, in hóa đơn và khắc dấu thì Vintapro sẽ thực hiện theo BƯỚC 6.<br />\n<br />\n<strong>Bước 6: Thực hiện các dịch vụ về thuế cho doanh nghiệp mới thành lập</strong><br />\n<br />\nVintapro sẽ hỗ trợ tư vấn để quý khách tự thực hiện hoặc thay mặt khách hàng thực hiện các thủ tục thuế ban đầu khi mới thành lập công ty (tùy theo gói dịch vụ mà quý khách đã chọn).<br />\n<br />\n<strong>Bước 7: Lưu hồ sơ doanh nghiệp</strong><br />\n<br />\nTân Thành Thịnh sẽ trực tiếp thực hiện lưu hồ sơ khi dịch vụ đã hoàn thành.<br />\n&nbsp;</p>\n\n<p>&nbsp;</p>', 'images/upload/origins/service/thue-xuat-nhap-khau0811100529_229927.jpg', NULL, 5, 0, 1, 1, 1, '2019-06-23 19:43:21', '2019-06-23 23:57:11'),
(2, 'Thành Lập Công Ty TNHH MTV 2019', 'thanh-lap-cong-ty-tnhh-mtv-2019', 'Trong 3 loại hình hoạt động của doanh nghiệp, thì có thể nói loại hình công ty TNHH Một thành viên là loại hình đơn giản nhất cả về mặt cơ cấu tổ chức của công ty cũng như thủ tục hồ sơ thành lập công ty. Bài viết này sẽ hướng dẫn chi tiết thủ tục và các bước nộp hồ sơ cho bạn.', '<p><strong>Định nghĩa:&nbsp;Công ty TNHH MTV&nbsp;là một loại hình doanh nghiệp do một cá nhân hoặc một tổ chức làm chủ sở hữu (sau đây gọi là chủ sở hữu công ty), theo quy định hiện hành của Pháp luật Việt Nam; Chủ sở hữu (CSH) công ty chịu trách nhiệm về các khoản nợ và nghĩa vụ tài sản khác của công ty&nbsp;trong&nbsp;phạm vi số vốn điều lệ của công ty;</strong></p>\n\n<p>&nbsp;</p>\n\n<p>Công ty TNHH MTV có tư cách pháp nhân kể từ ngày được cấp&nbsp;<strong>Giấy CN ĐKDN</strong>;</p>\n\n<p>Công ty TNHH MTV không được quyền phát hành cổ phần theo quy định của luật hiện hành.</p>\n\n<p><b>1. Đặc điểm của Công ty TNHH MTV</b></p>\n\n<ul>\n	<li>Công ty TNHH MTV là một hình thức đặc biệt của Công ty TNHH.</li>\n	<li>CSH của Công ty TNHH MTV sẽ phải chịu trách nhiệm về các khoản vay, nợ và các Nghĩa vụ khác của Công ty trong phạm vị số Vốn Điều lệ của Công ty.</li>\n	<li>CSH Công ty có quyền chuyển nhượng một phần/ toàn bộ Vốn Điều lệ của Công ty cho một tổ chức, cá nhân khác.</li>\n	<li>Công ty TNHH MTV có tư cách pháp nhân kể từ ngày được cấp Giấy CNĐKKD của Phòng ĐKKD &ndash; Sở KH&amp;ĐT sở tại.</li>\n	<li>Công ty TNHH MTV không được quyền phát hành Cổ phiếu.</li>\n	<li>CSH Công ty không được quyền rút vốn một phần/ toàn bộ số vốn đã góp vào Công ty.</li>\n	<li>CSH Công ty không được rút lợi nhuận của Công ty khi Công ty chưa thanh toán đầy đủ các khoản vay, nợ và các Nghĩa vụ tài sản khác đã đến hạn phải trả.</li>\n	<li>Tùy thuộc vào quy mô, ngành, nghề kinh doanh mà cơ cấu quản lý nội bộ của Công ty TNHH MTV sẽ có sự sắp xếp và tổ chức sao cho hợp lý, như: Chủ tịch Công ty &amp; Giám đốc/ Hội đồng quản trị &amp; Giám đốc.</li>\n</ul>\n\n<p><strong>2. Điều kiện&nbsp;thành lập Công ty TNHH MTV</strong><br />\nTheo quy định tại Điều 13 Luật Doanh nghiệp, các cá nhân muốn thành lập Công ty TNHH 1 thành viên phải đáp ứng đủ các điều kiện sau đây:<br />\nTổ chức, cá nhân Việt Nam có quyền thành lập và quản lý Công ty TNHH 1 thành viên tại Việt Nam theo quy định của luật này, trừ trường hợp quy định tại khoản 2 Điều này.<br />\nTổ chức, cá nhân Việt Nam không được quyền thành lập và quản lý Công ty TNHH 1 thành viên tại Việt Nam:</p>\n\n<ul>\n	<li>Cơ quan nhà nước, đơn vị lực lượng vũ trang nhân dân Việt Nam sử dụng dụng tài sản nhà nước để thành lập Công ty TNHH 1 thành viên kinh doanh thu lợi riêng cho cơ quan, đơn vị mình.</li>\n	<li>Cán bộ, công chức theo quy định của pháp luật về cán bộ, công chức.</li>\n	<li>Sĩ quan, hạ sĩ quan, quân nhân chuyên nghiệp, công nhân quốc phòng trong các cơ quan, đơn vị thuộc Quân đội nhân dân Việt Nam, Công An nhân dân Việt Nam.</li>\n	<li>Người chưa thành niên, người bị hạn chế hoặc bị mất năng lực hành vi dân sự.</li>\n	<li>Người đang chấp hành hình phạt tù hoặc đang bị Tóa Án cấm hành nghề kinh doanh.</li>\n	<li>Các trường hợp khác theo quy định của pháp luật về phá sản.</li>\n</ul>\n\n<p><strong>3. Thực hiện góp vốn thành lập của Công ty TNHH MTV</strong></p>\n\n<p>Vốn điều lệ của công ty TNHH MTV tại thời điểm&nbsp;ĐKDN là tổng giá trị tài sản do CSH cam kết góp và ghi trong Điều lệ công ty.</p>\n\n<p>Trong thời hạn 90 ngày, kể từ ngày được cấp Giấy CN ĐKDN, CSH của công ty TNHH MTV phải góp đủ và đúng loại tài sản như đã cam kết khi ĐK TLDN.</p>\n\n<p>Đối với trường hợp không góp đủ vốn điều lệ&nbsp;trong&nbsp;thời hạn quy định, trong&nbsp;thời hạn 30 ngày, kể từ ngày cuối cùng phải góp đủ vốn điều lệ, CSH của công ty phải ĐK điều chỉnh vốn điều lệ bằng giá trị số vốn thực góp. Trường hợp này, CSH phải chịu trách nhiệm về các nghĩa vụ tài chính của doanh nghiệp phát sinh&nbsp;trong&nbsp;thời gian trước khi doanh nghiệp đăng ký&nbsp;<b>thay đổi vốn điều lệ</b>, tương ứng bằng phần vốn góp đã cam kết.</p>\n\n<p>CSH của doanh nghiệp phải chịu trách nhiệm bằng toàn bộ tài sản của mình đối với các nghĩa vụ tài chính của công ty, thiệt hại xảy ra do không góp, không góp đủ, không góp đúng hạn vốn điều lệ.</p>\n\n<p><strong>4. Hồ sơ đăng ký doanh nghiệp của Công ty TNHH MTV</strong></p>\n\n<p>Giấy đề nghị đăng ký doanh nghiệp.</p>\n\n<p>Điều lệ công ty.</p>\n\n<p>Danh sách thành viên của công ty.</p>\n\n<p>Bản sao các giấy tờ sau đây:</p>\n\n<ul>\n	<li>Thẻ CCCD, Giấy CMND, Hộ chiếu/ Chứng thực cá nhân hợp pháp khác của các thành viên là cá nhân;</li>\n	<li>Quyết định thành lập, Giấy CN ĐKDN/ Tài liệu tương đương khác của tổ chức và Văn bản ủy quyền; Thẻ CCCD, Giấy CNMND, Hộ chiếu/ Chứng thực cá nhân hợp pháp khác của Người ĐDTUQ của thành viên là tổ chức.</li>\n	<li>Đối&nbsp;với&nbsp;thành viên là tổ chức nước ngoài thì bản sao Giấy CN ĐKDN/ Tài liệu tương đương phải được hợp pháp hóa lãnh sự;</li>\n	<li>Giấy CN ĐKDT đối&nbsp;với&nbsp;Nhà đầu tư nước ngoài theo quy định của Luật đầu tư.</li>\n</ul>\n\n<p><b>&gt;&gt;&gt; Nộp Hồ sơ tại Phòng ĐKKD của Sở KH&amp;ĐT</b></p>\n\n<p>Thời gian: Sau 03 &ndash; 05 ngày làm việc nếu hồ sơ hợp lệ Doanh nghiệp sẽ được cấp Giấy phép đăng ký kinh doanh (Bản chính)</p>\n\n<p><b>Vintapro và Dịch vụ Thành lập Công ty</b></p>\n\n<p><b>1.&nbsp;</b><b>Tư vấn và tiếp nhận thông tin thành lập doanh nghiệp</b></p>\n\n<p>Vintapro sẽ tư vấn trực tiếp tại văn phòng/ qua tổng đài cho quý khách hàng ngay sau khi tiếp nhận thông tin.</p>\n\n<p>Vintapro trao đổi về mức chi phí thành lập để quý khách hàng nắm vững ngay từ đầu giúp&nbsp;thuận tiện cho việc hợp tác BỀN VỮNG giữa hai bên.</p>\n\n<p><b>2</b><b>. Soạn thảo Hồ sơ</b></p>\n\n<p>Vintapro sẽ hoàn thành hồ sơ thành lập công ty theo đề nghị của quý khách hàng</p>\n\n<p><b>3</b><b>.&nbsp;</b><b>Gửi hồ sơ cho khách hàng ký</b></p>\n\n<p>Vintapro sẽ gửi hồ sơ để quý khách hàng xem xét và ký tên vào các hồ sơ.</p>\n\n<p><b>4.&nbsp;</b><b>Thay mặt khách hàng thực hiện các thủ tục theo quy định</b></p>\n\n<p>Vintapro sẽ trực tiếp làm việc theo sự ủy quyền của khách hàng một cách độc lập đến khi hoàn thành nhiệm vụ</p>\n\n<p><b>5.</b>&nbsp;<b>Bàn giao bản chính giấy phép và con dấu</b></p>\n\n<p>Vintapro sẽ gửi bản chính giấy phép và con dấu cho khách hàng và thu phí dịch vụ.<br />\nQuý khách hàng nếu có nhu cầu làm dịch vụ về thuế, sổ sách kế toán, in hóa đơn và khắc dấu thì Vintapro sẽ thực hiện theo BƯỚC 6.</p>\n\n<p><b>6.&nbsp;</b><b>Thực hiện các dịch vụ về thuế cho doanh nghiệp mới thành lập</b></p>\n\n<p>Vintapro sẽ hỗ trợ tư vấn để quý khách tự thực hiện hoặc thay mặt khách hàng thực hiện các thủ tục thuế ban đầu khi mới thành lập công ty (tùy theo gói dịch vụ mà quý khách đã chọn).</p>\n\n<p><b>7.&nbsp;</b><b>Lưu hồ sơ</b><b>&nbsp;doanh nghiệp</b></p>\n\n<p>Vintapro<b>&nbsp;</b>sẽ trực tiếp thực hiện lưu hồ sơ KHI dịch vụ đã HOÀN THÀNH.</p>\n\n<p><strong>Hoàn thành thủ tục Thành lập Công ty TNHH MTV TRỌN GÓI tại&nbsp;Vintapro</strong></p>\n\n<p><strong>Hồ sơ yêu cầu:</strong>&nbsp;Quý khách hàng chỉ cần cung cấp cho Vintapro 01 bản Photo CMND (Công chứng chưa quá 3 tháng, CMND chưa quá 15 năm) hoặc Hộ chiếu còn giá trị pháp lý.</p>\n\n<p><strong>Thời gian thực hiện:&nbsp;</strong>03 ngày làm việc, Quý khách hàng sẽ nhận được: Giấy CN ĐKDN, Bố cáo về việc thành lập doanh nghiệp trên Cổng thông tin Quốc gia và con dấu của doanh nghiệp.</p>\n\n<p><b>Đến với dịch vụ TLDN trọn gói tại Vintapro, Quý khách hàng sẽ nhận được những ưu đãi đặc biệt</b></p>\n\n<ul>\n	<li>Lập sổ thành viên/ Cổ đông, điều lệ công ty;</li>\n	<li>Tư vấn các vấn đề pháp lý trong quá trình doanh nghiệp hoạt động kinh doanh;</li>\n	<li>Tư vấn về Thuế, kế toán, bảo hiểm xã hội, bảo hiểm y tế, bảo hiểm lao động;</li>\n	<li>Cung cấp biểu mẫu, hợp đồng, văn bản pháp luật Thuế, hướng dẫn khai Thuế, các thủ tục đặt in Hóa đơn.</li>\n</ul>\n\n<p><em>Dịch vụ nhanh gọn - Tiết kiệm thời gian.</em></p>\n\n<p><b>Vintapro Dịch Vụ&nbsp;</b><b>Nhanh Gọn &ndash; Tiết Kiệm Thời Gian</b></p>\n\n<p><b>Thời gian thực hiện:</b>&nbsp;Tùy theo loại hình dịch vụ mà Quý khách hàng có nhu cầu thực hiện.</p>\n\n<p><b>Chi phí:</b>&nbsp;Là sự thỏa thuận trên tinh thần hợp tác và bền vững giữa Vintapro và Quý khách hàng, sao cho đạt được HIỆU QUẢ công việc TỐT NHẤT.</p>', 'images/upload/origins/service/tu-van-thanh-lap-cong-ty-tron-goi.jpg', NULL, 5, 0, 1, 2, 1, '2019-06-23 19:53:57', '2019-06-24 02:28:29'),
(3, 'Thành Lập Công Ty TNHH 2 Thành Viên Trở Lên', 'thanh-lap-cong-ty-tnhh-2-thanh-vien-tro-len', 'Công ty TNHH sẽ chính thúc có được tư cách pháp nhân, kể từ ngày được cấp Giấy CN ĐKKD. Công ty TNHH có từ 02 TV trở lên phải có HĐTV, Chủ tịch HĐTV, Giám đốc. Công ty TNHH có trên 11 TV phải có Ban kiểm soát.', '<p><b>I. Công ty trách nhiệm hữu hạn hai thành viên &ndash; TNHH 2TV</b></p>\n\n<p><b>1. Định nghĩa</b>&nbsp;<strong>Công ty TNHH 2TV</strong></p>\n\n<p>Theo quy định tại Điều 47&nbsp;&ndash;&nbsp;<strong>Luật Doanh nghiệp</strong>, công ty TNHH 2TV trở lên là doanh nghiệp trong đó TV chịu trách nhiệm về các khoản nợ và các nghĩa vụ tài sản khác của doanh nghiệp trong phạm vi số vốn mà TV đã cam kết góp vào doanh nghiệp.</p>\n\n<p>Thành viên của công ty TNHH có thể là: Tổ chức, cá nhân; số lượng TV của công ty TNHH tối thiểu là 02 và tối đa không vượt quá 50.</p>\n\n<p>Kể từ ngày được cấp Giấy CN ĐKKD, Công ty TNHH sẽ chính thúc có được tư cách pháp nhân.</p>\n\n<p>Công ty TNHH có từ 02 TV trở lên phải có HĐTV, Chủ tịch HĐTV, Giám đốc. Công ty TNHH có trên 11 TV phải có Ban kiểm soát.</p>\n\n<p><strong>2. Đặc điểm Công ty TNHH 2TV</strong></p>\n\n<p><b>Về tư cách pháp lý:</b>&nbsp;Công ty TNHH 2TV trở lên có tư cách pháp nhân kể từ thời điểm được cấp giấy chứng nhận đăng ký kinh doanh.</p>\n\n<p><b>Về thành viên công ty:</b>&nbsp;Công ty phải có ít nhất hai thành viên và có tối đa không quá 50 TV. Thành viên công ty có thể là cá nhân hoặc tổ chức. Trong thực tế, các thành viên công ty TNHH thường có mối liên hệ mật thiết với nhau về nhân thân.</p>\n\n<p><b>Về cấc trúc vốn:</b>&nbsp;Sự khác biệt cơ bản giữa công ty TNHH 2TV trở lên và công ty cổ phần thể hiện ở đặc điểm về cấu trúc vốn. Công ty TNHH 2TV trở lên có cấu trúc vốn &ldquo;đóng&rdquo;.</p>\n\n<p>Vốn điều lệ của công ty không nhất thiết phải chia thành những phần có giá trị bằng nhau và không được thể hiện dưới hình thức cổ phần. Việc chuyển nhượng vốn của thành viên cho người không phải là thành viên công ty bị hạn chế bởi quyền ưu tiên nhận chuyển nhượng của các thành viên còn lại trong Công ty (Điều 52, 53, 54 &ndash; Luật Doanh nghiệp số 68/2014/QH13).</p>\n\n<p>Đặc điểm này của công ty TNHH cho phép các thành viên có thể ngăn chặn sự thâm nhập của người bên ngoài công ty bằng cách cùng nhau mua hết phần vốn của thành viên muốn chuyển nhượng vốn.</p>\n\n<p><b>Về huy&nbsp; động vốn:</b>&nbsp;Công ty TNHH 2TV trở lên không được quyền phát hành cổ phần.</p>\n\n<p><b>Về chế độ trách nhiệm:</b>&nbsp;Các thành viên của Công ty chịu trách nhiệm về các khoản nợ và các nghĩa vụ tài sản khác của công ty trong phạm vi số vốn đã cam kết góp vào công ty (TNHH). Công ty chịu trách nhiệm về các khoản nợ của công ty trong phạm vi tài sản của công ty.</p>\n\n<p><b>II. Hồ sơ&nbsp;thành lập Công ty TNHH 2TV trở lên</b></p>\n\n<p>1. Giấy đề nghị đăng ký doanh nghiệp (theo mẫu);</p>\n\n<p>2. Dự thảo Điều lệ công ty.</p>\n\n<p>Dự thảo điều lệ công ty phải có đầy đủ chữ ký của người đại diện theo pháp luật, của các thành viên hoặc người đại diện theo ủy quyền đối với công ty trách nhiệm hữu hạn hai thành viên trở lên;</p>\n\n<p>Các thành viên sáng lập phải cùng nhau chịu trách nhiệm về sự phù hợp pháp luật của điều lệ công ty.</p>\n\n<p>3. Danh sách thành viên sáng lập công ty TNHH 2TV trở lên được lập theo mẫu&nbsp;quy định.</p>\n\n<p>4. Bản sao hợp lệ một trong các giấy tờ chứng thực cá nhân hoặc pháp nhân còn hiệu lực của tất cả thành viên, Người ĐDTPL:</p>\n\n<p>4.1. Cá nhân có quốc tịch Việt Nam: CMND/ Hộ chiếu.</p>\n\n<p>4.2. Nếu thành viên là tổ chức:</p>\n\n<p>Quyết định thành lập;&nbsp;Giấy CN ĐKDN/ Giấy CN ĐKKD &amp; Giấy CN ĐKT/ Giấy CN ĐKKD &amp; ĐKT.</p>\n\n<p>Một trong các giấy tờ chứng thực cá nhân theo khoản 4.1 nêu trên&nbsp;của Người ĐDTUQ và quyết định ủy quyền tương ứng (tham khảo nội dung ủy quyền tại Điều 48 Luật Doanh nghiệp).</p>\n\n<p>5. Đối với công ty kinh doanh ngành, nghề mà theo quy định của pháp luật phải có vốn pháp định: Văn bản xác nhận vốn pháp định của cơ quan, tổ chức có thẩm quyền.</p>\n\n<p>6. nếu công ty kinh doanh ngành, nghề mà theo quy định của pháp luật phải có chứng chỉ hành nghề: Bản sao hợp lệ chứng chỉ hành nghề của một/ một số cá nhân;</p>\n\n<p>7. Mục lục hồ sơ (ghi theo thứ tự trên);</p>\n\n<p>8. Bìa hồ sơ (bằng bìa giấy mỏng hoặc nylon cứng không có chữ sử dụng cho mục đích khác).</p>\n\n<p>9. Tờ khai thông tin người nộp hồ sơ.</p>\n\n<p>&nbsp;</p>\n\n<p><b>&gt;&gt;&gt; Nộp Hồ sơ tại Phòng ĐKKD của Sở KH&amp;ĐT</b></p>\n\n<p>Thời gian: Sau 03 &ndash; 05 ngày làm việc nếu hồ sơ hợp lệ Doanh nghiệp sẽ được cấp Giấy CN ĐKDN (Bản chính)</p>\n\n<p><b>III. Tân Thành Thịnh và Dịch vụ Thành lập Công ty</b></p>\n\n<p><b>1.&nbsp;</b><b>Tư vấn và tiếp nhận thông tin thành lập doanh nghiệp</b></p>\n\n<p>Tân Thành Thịnh sẽ tư vấn trực tiếp tại văn phòng/ qua tổng đài cho quý khách hàng ngay sau khi tiếp nhận thông tin.</p>\n\n<p>Tân Thành Thịnh trao đổi về mức chi phí thành lập để quý khách hàng nắm vững ngay từ đầu giúp&nbsp;thuận tiện cho việc hợp tác BỀN VỮNG giữa hai bên.</p>\n\n<p><b>2</b><b>. Soạn thảo Hồ sơ</b></p>\n\n<p>Tân Thành Thịnh sẽ hoàn thành hồ sơ thành lập công ty theo đề nghị của quý khách hàng</p>\n\n<p><b>3</b><b>.&nbsp;</b><b>Gửi hồ sơ cho khách hàng ký</b></p>\n\n<p>Tân Thành Thịnh sẽ gửi hồ sơ để quý khách hàng xem xét và ký tên vào các hồ sơ.</p>\n\n<p><b>4.&nbsp;</b><b>Thay mặt khách hàng thực hiện các thủ tục theo quy định</b></p>\n\n<p>Tân Thành Thịnh sẽ trực tiếp làm việc theo sự ủy quyền của khách hàng một cách độc lập đến khi hoàn thành nhiệm vụ</p>\n\n<p><b>5.</b>&nbsp;<b>Bàn giao bản chính giấy phép và con dấu</b></p>\n\n<p>Tân Thành Thịnh sẽ gửi bản chính giấy phép và con dấu cho khách hàng và thu phí dịch vụ.<br />\nQuý khách hàng nếu có nhu cầu làm dịch vụ về thuế, sổ sách kế toán, in hóa đơn và khắc dấu thì Tân Thành Thịnh sẽ thực hiện theo BƯỚC 6.</p>\n\n<p><b>6.&nbsp;</b><b>Thực hiện các dịch vụ về thuế cho doanh nghiệp mới thành lập</b></p>\n\n<p>Tân Thành Thịnh sẽ hỗ trợ tư vấn để quý khách tự thực hiện hoặc thay mặt khách hàng thực hiện các thủ tục thuế ban đầu khi mới thành lập công ty (tùy theo gói dịch vụ mà quý khách đã chọn).</p>\n\n<p><b>7.&nbsp;</b><b>Lưu hồ sơ</b><b>&nbsp;doanh nghiệp</b></p>\n\n<p>Tân Thành Thịnh<b>&nbsp;</b>sẽ trực tiếp thực hiện lưu hồ sơ KHI dịch vụ đã HOÀN THÀNH.</p>\n\n<p><strong>Hoàn thành thủ tục</strong><b>&nbsp;Thành Lập Công Ty TNHH 2 Thành Viên trở lên Trọn gói&nbsp;</b>tại<b>&nbsp;Tân Thành Thịnh</b></p>\n\n<p>1. Hồ sơ yêu cầu: Quý khách hàng chỉ cần cung cấp cho Tân Thành Thịnh 01 bản Photo CMND (Công chứng chưa quá 3 tháng, CMND chưa quá 15 năm) hoặc Hộ chiếu còn giá trị pháp lý.</p>\n\n<p>2. Trong thời gian 03 ngày làm việc, Quý khách hàng sẽ nhận được: Giấy CN ĐKDN, Bố cáo về việc thành lập doanh nghiệp trên Cổng thông tin Quốc gia và con dấu của doanh nghiệp.</p>\n\n<p><b>Đến với dịch vụ TLDN trọn gói tại Tân Thành Thịnh, Quý khách hàng sẽ nhận được những ưu đãi đặc biệt</b></p>\n\n<ul>\n	<li>Lập sổ thành viên/ Cổ đông, điều lệ công ty;</li>\n	<li>Tư vấn các vấn đề pháp lý trong quá trình doanh nghiệp hoạt động kinh doanh;</li>\n	<li>Tư vấn về Thuế, kế toán, bảo hiểm xã hội, bảo hiểm y tế, bảo hiểm lao động;</li>\n	<li>Cung cấp biểu mẫu, hợp đồng, văn bản pháp luật Thuế, hướng dẫn khai Thuế, các thủ tục đặt in Hóa đơn.</li>\n</ul>', 'images/upload/origins/service/tu-van-thanh-lap-cong-ty-tron-goi.jpg', NULL, 5, 0, 1, 3, 1, '2019-06-23 23:59:11', '2019-06-24 02:28:16');
INSERT INTO `posts` (`id`, `title`, `slug`, `description`, `content`, `img_primary`, `img_sub_list`, `post_type`, `is_hot`, `is_active`, `seo_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'Thông tư 132/2018/TT-BTC Chế độ kế toán cho DN Siêu nhỏ', 'thong-tu-1322018tt-btc-che-do-ke-toan-cho-dn-sieu-nho', 'Thông tư 132/2018/TT-BTC ngày 28/12/2018 của Bộ tài chính: Hướng dẫn Chế độ kế toán cho doanh nghiệp siêu nhỏ, áp dụng cho năm tài chính bắt đầu hoặc sau ngày 01/4/2019.', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n	<tbody>\n		<tr>\n			<td valign=\"top\" width=\"223\">\n			<p align=\"center\"><b>BỘ TÀI CHÍNH<br />\n			--------</b></p>\n			</td>\n			<td valign=\"top\" width=\"367\">\n			<p align=\"center\"><b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br />\n			Độc lập - Tự do - Hạnh phúc&nbsp;<br />\n			---------------</b></p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"223\">\n			<p align=\"center\">Số: 132/2018/TT-BTC</p>\n			</td>\n			<td valign=\"top\" width=\"367\">\n			<p align=\"right\"><i>Hà Nội, ngày 28 tháng 12 năm 2018</i></p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<p align=\"center\"><b>THÔNG TƯ</b></p>\n\n<p align=\"center\">HƯỚNG DẪN CHẾ ĐỘ KẾ TOÁN CHO DOANH NGHIỆP SIÊU NHỎ</p>\n\n<p><i>Căn cứ Luật Kế toán số 88/2015/QH13 ngày 20 tháng 11 năm 2015;</i></p>\n\n<p><i>Căn cứ Luật hỗ trợ doanh nghiệp nhỏ và vừa số 04/2017/QH14 ngày 12 tháng 6 năm 2017;</i></p>\n\n<p><i>Căn cứ Nghị định số&nbsp;174/2016/NĐ-CP&nbsp;ngày 30 tháng 12 năm 2016 của Chính phủ quy định chi tiết một số điều của Luật kế toán;</i></p>\n\n<p><i>Căn cứ vào Nghị định số&nbsp;39/2018/NĐ-CP&nbsp;ngày 11 tháng 3 năm 2018 của Chính phủ quy định chi tiết một số điều của Luật hỗ trợ doanh nghiệp nhỏ và vừa;</i></p>\n\n<p><i>Căn cứ Nghị định số&nbsp;87/2017/NĐ-CP&nbsp;ngày 26 tháng 7 năm 2017 của Chính phủ quy định chức năng, nhiệm vụ, quyền hạn và cơ cấu tổ chức của Bộ Tài chính;</i></p>\n\n<p><i>Theo đề nghị của Cục trưởng Cục quản lý, giám sát kế toán và kiểm toán,</i></p>\n\n<p><i>Bộ trưởng Bộ Tài chính ban hành Thông tư hướng dẫn Chế độ kế toán cho doanh nghiệp siêu nhỏ.</i></p>\n\n<p><b>Chương I</b></p>\n\n<p align=\"center\"><b>QUY ĐỊNH CHUNG</b></p>\n\n<p><b>Điều 1. Phạm vi điều chỉnh</b></p>\n\n<p>Thông tư này hướng dẫn việc ghi sổ kế toán, lập và trình bày Báo cáo tài chính của doanh nghiệp siêu nhỏ. Việc xác định nghĩa vụ thuế của doanh nghiệp đối với ngân sách Nhà nước được thực hiện theo quy định của pháp luật về thuế.</p>\n\n<p><b>Điều 2. Đối tượng áp dụng</b></p>\n\n<p>1. Đối tượng áp dụng Thông tư này là các doanh nghiệp siêu nhỏ, bao gồm các doanh nghiệp siêu nhỏ nộp thuế thu nhập doanh nghiệp (thuế TNDN) theo phương pháp tính trên thu nhập tính thuế và phương pháp theo tỷ lệ % trên doanh thu bán hàng hóa, dịch vụ.</p>\n\n<p>2. Tiêu chí xác định doanh nghiệp siêu nhỏ thực hiện chế độ kế toán theo Thông tư này được thực hiện theo quy định của pháp luật về thuế.</p>\n\n<p><b>Điều 3. Áp dụng chế độ kế toán</b></p>\n\n<p>1. Doanh nghiệp siêu nhỏ nộp thuế TNDN theo phương pháp tính trên thu nhập tính thuế áp dụng chế độ kế toán theo quy định tại Chương II Thông tư này.</p>\n\n<p>2. Doanh nghiệp siêu nhỏ nộp thuế TNDN tính theo tỷ lệ % trên doanh thu bán hàng&nbsp;hóa, dịch vụ áp dụng chế độ kế toán theo quy định tại Chương III Thông tư này hoặc có thể lựa chọn áp dụng chế độ kế toán theo quy định tại Chương II Thông tư này.</p>\n\n<p>3. Doanh nghiệp siêu nhỏ có thể lựa chọn áp dụng Chế độ kế toán doanh nghiệp nhỏ và vừa ban hành theo Thông tư số&nbsp;133/2016/TT-BTC&nbsp;ngày 26/8/2016 của Bộ Tài chính cho phù hợp với đặc điểm hoạt động sản xuất kinh doanh và yêu cầu quản lý của doanh nghiệp.</p>\n\n<p>4. Doanh nghiệp siêu nhỏ phải áp dụng chế độ kế toán nhất quán trong một năm tài chính. Việc thay đổi chế độ kế toán áp dụng chỉ được thực hiện tại thời điểm đầu năm tài chính kế tiếp.</p>\n\n<p><b>Điều 4. Chứng từ kế toán</b></p>\n\n<p>1. Nội dung chứng từ kế toán, việc lập và ký chứng từ kế toán của doanh nghiệp siêu nhỏ thực hiện theo quy định tại&nbsp;Điều 16, Điều 17, Điều 18, Điều 19 Luật kế toán&nbsp;và hướng dẫn cụ thể tại Thông tư này.</p>\n\n<p>2. Nội dung, hình thức hóa đơn, trình tự lập, quản lý và sử dụng hoá đơn (kể cả hóa đơn điện tử) thực hiện theo quy định của pháp luật về thuế.</p>\n\n<p>3. Doanh nghiệp siêu nhỏ được tự xây dựng biểu mẫu chứng từ kế toán phù hợp với đặc điểm hoạt động kinh doanh của mình, đảm bảo rõ ràng, minh bạch, dễ kiểm tra, kiểm soát (trừ hóa đơn bán hàng hóa, dịch vụ). Trường hợp doanh nghiệp siêu nhỏ không tự xây dựng được biểu mẫu chứng từ kế toán cho riêng đơn vị thì có thể áp dụng biểu mẫu và phương pháp lập chứng từ kế toán hướng dẫn tại Phụ lục 1 Thông tư này.</p>\n\n<p><b>Điều 5. Sổ kế toán</b></p>\n\n<p>1. Nội dung sổ kế toán, hệ thống sổ kế toán, việc mở sổ, ghi sổ, khóa sổ, lưu trữ sổ kế toán và sửa chữa sổ kế toán tại doanh nghiệp siêu nhỏ được thực hiện theo quy định tại&nbsp;Điều 24, Điều 25, Điều 26, 27 Luật kế toán&nbsp;và hướng dẫn cụ thể tại Thông tư này.</p>\n\n<p>2. Doanh nghiệp siêu nhỏ được tự xây dựng biểu mẫu sổ kế toán phù hợp với đặc điểm hoạt động kinh doanh của mình, đảm bảo rõ ràng, minh bạch, dễ kiểm tra, kiểm soát. Trường hợp doanh nghiệp siêu nhỏ không tự xây dựng được biểu mẫu sổ kế toán cho riêng đơn vị mình thì được áp dụng biểu mẫu và phương pháp ghi chép sổ kế toán hướng dẫn tại Thông tư này.</p>\n\n<p><b>Điều 6. Đơn vị tiền tệ sử dụng trong kế toán</b></p>\n\n<p>Doanh nghiệp siêu nhỏ áp dụng quy định về đơn vị tính sử dụng trong kế toán theo quy định tại&nbsp;Điều 10 Luật kế toán&nbsp;và&nbsp;Điều 4 Nghị định số 174/2016/NĐ-CP&nbsp;ngày 30/12/2016 của Chính phủ quy định chi tiết một số điều của Luật kế toán.</p>\n\n<p><b>Điều 7. Quy định về lưu trữ, bảo quản tài liệu kế toán</b></p>\n\n<p>1. Chứng từ kế toán, sổ kế toán và các tài liệu kế toán khác phải lưu giữ tại doanh nghiệp để phục vụ cho ghi chép hàng ngày; xác định nghĩa vụ thuế của doanh nghiệp siêu nhỏ với ngân sách nhà nước và công tác kiểm tra, kiểm soát của chủ sở hữu doanh nghiệp, của cơ quan thuế hoặc các cơ quan nhà nước có thẩm quyền.</p>\n\n<p>2. Việc bảo quản, lưu trữ tài liệu kế toán của doanh nghiệp siêu nhỏ thực hiện theo quy định tại Luật kế toán và Nghị định số&nbsp;174/2016/NĐ-CP&nbsp;ngày 30/12/2016 của Chính phủ quy định chi tiết một số điều của Luật kế toán.</p>\n\n<p>3. Doanh nghiệp siêu nhỏ được lưu trữ chứng từ kế toán, sổ kế toán và các tài liệu kế toán khác trên phương tiện điện tử theo quy định của Luật kế toán.</p>\n\n<p><b>Điều 8. Tổ chức bộ máy kế toán và người làm kế toán</b></p>\n\n<p>1. Các doanh nghiệp siêu nhỏ được bố trí phụ trách kế toán mà không bắt buộc phải bố trí kế toán trưởng. Các doanh nghiệp siêu nhỏ nộp thuế TNDN theo tỷ lệ % trên doanh thu bán hàng hóa, dịch vụ có thể tự tổ chức thực hiện công tác kế toán theo quy định tại Chương III Thông tư này.</p>\n\n<p>2. Việc bố trí người làm kế toán của doanh nghiệp siêu nhỏ phải đảm bảo không vi phạm quy định tại&nbsp;Điều 19 Nghị định số 174/2016/NĐ-CP&nbsp;ngày 30/12/2016 của Chính phủ quy định chi tiết một số điều của Luật kế toán.</p>\n\n<p>3. Các doanh nghiệp siêu nhỏ được ký hợp đồng với đơn vị kinh doanh dịch vụ kế toán để thuê dịch vụ làm kế toán hoặc dịch vụ làm kế toán trưởng theo quy định của pháp luật. Danh sách đơn vị đủ điều kiện kinh doanh dịch vụ kế toán được công bố và cập nhật định kỳ trên Cổng thông tin điện tử của Bộ Tài chính.</p>\n\n<p><b>Chương II</b></p>\n\n<p align=\"center\"><b>KẾ TOÁN TẠI DOANH NGHIỆP SIÊU NHỎ NỘP THUẾ TNDN THEO PHƯƠNG PHÁP TÍNH TRÊN THU NHẬP TÍNH THUẾ</b></p>\n\n<p><b>MỤC 1. CHỨNG TỪ KẾ TOÁN</b></p>\n\n<p><b>Điều 9. Chứng từ kế toán</b></p>\n\n<p>1. Doanh nghiệp siêu nhỏ nộp thuế TNDN theo phương pháp tính trên thu nhập tính thuế áp dụng các chứng từ kế toán theo danh mục sau đây:</p>\n\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\n	<tbody>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p align=\"center\">STT</p>\n			</td>\n			<td valign=\"top\" width=\"397\">\n			<p align=\"center\">Tên chứng từ</p>\n			</td>\n			<td valign=\"top\" width=\"173\">\n			<p align=\"center\">Ký hiệu</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>I</p>\n			</td>\n			<td colspan=\"2\" valign=\"top\" width=\"570\">\n			<p>Các chứng từ quy định tại Thông tư này</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>1</p>\n			</td>\n			<td valign=\"top\" width=\"397\">\n			<p>Phiếu thu tiền mặt</p>\n			</td>\n			<td valign=\"top\" width=\"173\">\n			<p>Mẫu số 01-TT</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>2</p>\n			</td>\n			<td valign=\"top\" width=\"397\">\n			<p>Phiếu chi tiền mặt</p>\n			</td>\n			<td valign=\"top\" width=\"173\">\n			<p>Mẫu số 02-TT</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>3</p>\n			</td>\n			<td valign=\"top\" width=\"397\">\n			<p>Phiếu nhập kho</p>\n			</td>\n			<td valign=\"top\" width=\"173\">\n			<p>Mẫu số 01-VT</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>4</p>\n			</td>\n			<td valign=\"top\" width=\"397\">\n			<p>Phiếu xuất kho</p>\n			</td>\n			<td valign=\"top\" width=\"173\">\n			<p>Mẫu số 02-VT</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>5</p>\n			</td>\n			<td valign=\"top\" width=\"397\">\n			<p>Biên bản giao nhận tài sản cố định</p>\n			</td>\n			<td valign=\"top\" width=\"173\">\n			<p>Mẫu số 01-TSCĐ</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>6</p>\n			</td>\n			<td valign=\"top\" width=\"397\">\n			<p>Bảng thanh toán tiền lương và các khoản thu nhập của người lao động</p>\n			</td>\n			<td valign=\"top\" width=\"173\">\n			<p>Mẫu số 01-LĐTL</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>II</p>\n			</td>\n			<td colspan=\"2\" valign=\"top\" width=\"570\">\n			<p>Các chứng từ quy định theo pháp luật khác</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>1</p>\n			</td>\n			<td valign=\"top\" width=\"397\">\n			<p>Hóa đơn GTGT hoặc hóa đơn bán hàng</p>\n			</td>\n			<td valign=\"top\" width=\"173\">\n			<p>&nbsp;</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>2</p>\n			</td>\n			<td valign=\"top\" width=\"397\">\n			<p>Giấy nộp thuế vào NSNN</p>\n			</td>\n			<td valign=\"top\" width=\"173\">\n			<p>&nbsp;</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>3</p>\n			</td>\n			<td valign=\"top\" width=\"397\">\n			<p>Giấy báo Nợ của ngân hàng</p>\n			</td>\n			<td valign=\"top\" width=\"173\">\n			<p>&nbsp;</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>2. Biểu mẫu chứng từ kế toán, nội dung và phương pháp lập các chứng từ kế toán tại khoản 1 Điều này được hướng dẫn tại Phụ lục 1 &quot;Biểu mẫu và phương pháp lập chứng từ kế toán&quot; ban hành kèm theo Thông tư này.</p>\n\n<p>3. Ngoài các chứng từ kế toán hướng dẫn tại khoản 1 Điều này, doanh nghiệp siêu nhỏ có thể lựa chọn áp dụng chứng từ kế toán tại Thông tư số&nbsp;133/2016/TT-BTC&nbsp;của Bộ Tài chính ngày 26/8/2016 hướng dẫn chế độ kế toán doanh nghiệp nhỏ và vừa để đáp ứng yêu cầu quản lý hoạt động sản xuất kinh doanh của doanh nghiệp.</p>\n\n<p><b>MỤC 2. TÀI KHOẢN KẾ TOÁN</b></p>\n\n<p><b>Điều 10. Tài khoản kế toán</b></p>\n\n<p>Doanh nghiệp siêu nhỏ nộp thuế TNDN theo phương pháp tính trên thu nhập tính thuế áp dụng danh mục tài khoản kế toán, nội dung, kết cấu, nguyên tắc kế toán, phương pháp hạch toán kế toán một số nghiệp vụ kinh tế chủ yếu hướng dẫn tại Phụ lục 2 &ldquo;Hệ thống tài khoản kế toán&rdquo; ban hành kèm theo Thông tư này để ghi chép, phản ánh các nghiệp vụ kinh tế phát sinh theo từng nội dung kinh tế.</p>\n\n<p><b>MỤC 3. SỔ KẾ TOÁN</b></p>\n\n<p><b>Điều 11. Sổ kế toán</b></p>\n\n<p>1. Doanh nghiệp siêu nhỏ nộp thuế TNDN theo phương pháp tính trên thu nhập tính thuế áp dụng các sổ kế toán theo danh mục sau đây:</p>\n\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\n	<tbody>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p align=\"center\">STT</p>\n			</td>\n			<td valign=\"top\" width=\"378\">\n			<p align=\"center\">Tên sổ kế toán</p>\n			</td>\n			<td valign=\"top\" width=\"192\">\n			<p align=\"center\">Ký hiệu</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>I</p>\n			</td>\n			<td valign=\"top\" width=\"378\">\n			<p>Sổ kế toán tổng hợp</p>\n			</td>\n			<td valign=\"top\" width=\"192\">\n			<p>&nbsp;</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>1</p>\n			</td>\n			<td valign=\"top\" width=\"378\">\n			<p>Sổ Nhật ký sổ cái</p>\n			</td>\n			<td valign=\"top\" width=\"192\">\n			<p>Mẫu số S01- DNSN</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>II</p>\n			</td>\n			<td valign=\"top\" width=\"378\">\n			<p>Sổ kế toán chi tiết</p>\n			</td>\n			<td valign=\"top\" width=\"192\">\n			<p>&nbsp;</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>1</p>\n			</td>\n			<td valign=\"top\" width=\"378\">\n			<p>Sổ chi tiết vật liệu, dụng cụ, sản phẩm, hàng hóa</p>\n			</td>\n			<td valign=\"top\" width=\"192\">\n			<p>Mẫu số S02-DNSN</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>2</p>\n			</td>\n			<td valign=\"top\" width=\"378\">\n			<p>Sổ tài sản cố định</p>\n			</td>\n			<td valign=\"top\" width=\"192\">\n			<p>Mẫu số S03-DNSN</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>3</p>\n			</td>\n			<td valign=\"top\" width=\"378\">\n			<p>Sổ chi tiết thanh toán với người mua, người bán</p>\n			</td>\n			<td valign=\"top\" width=\"192\">\n			<p>Mẫu số S04-DNSN</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>4</p>\n			</td>\n			<td valign=\"top\" width=\"378\">\n			<p>Sổ chi tiết thanh toán các khoản nợ phải trả</p>\n			</td>\n			<td valign=\"top\" width=\"192\">\n			<p>Mẫu số S05-DNSN</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>5</p>\n			</td>\n			<td valign=\"top\" width=\"378\">\n			<p>Sổ chi tiết doanh thu bán hàng và cung cấp dịch vụ (áp dụng cho doanh nghiệp siêu nhỏ nộp thuế GTGT theo phương pháp khấu trừ thuế)</p>\n			</td>\n			<td valign=\"top\" width=\"192\">\n			<p>Mẫu số S06a-DNSN</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>6</p>\n			</td>\n			<td valign=\"top\" width=\"378\">\n			<p>Sổ chi tiết doanh thu bán hàng và cung cấp dịch vụ (áp dụng cho doanh nghiệp siêu nhỏ nộp thuế GTGT theo phương pháp trực tiếp)</p>\n			</td>\n			<td valign=\"top\" width=\"192\">\n			<p>Mẫu số S06b-DNSN</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>7</p>\n			</td>\n			<td valign=\"top\" width=\"378\">\n			<p>Sổ chi phí sản xuất, kinh doanh</p>\n			</td>\n			<td valign=\"top\" width=\"192\">\n			<p>Mẫu số S07-DNSN</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>8</p>\n			</td>\n			<td valign=\"top\" width=\"378\">\n			<p>Sổ theo dõi thuế GTGT được khấu trừ</p>\n			</td>\n			<td valign=\"top\" width=\"192\">\n			<p>Mẫu số S08-DNSN</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>9</p>\n			</td>\n			<td valign=\"top\" width=\"378\">\n			<p>Sổ chi tiết thuế GTGT đầu ra</p>\n			</td>\n			<td valign=\"top\" width=\"192\">\n			<p>Mẫu số S09-DNSN</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>10</p>\n			</td>\n			<td valign=\"top\" width=\"378\">\n			<p>Sổ tiền gửi ngân hàng</p>\n			</td>\n			<td valign=\"top\" width=\"192\">\n			<p>Mẫu số S10-DNSN</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>2. Biểu mẫu sổ kế toán, nội dung và phương pháp ghi sổ kế toán tại khoản 1 Điều này được hướng dẫn tại Phụ lục 3 &quot;Biểu mẫu sổ kế toán và phương pháp ghi sổ kế toán&quot; ban hành kèm theo Thông tư này.</p>\n\n<p>3. Ngoài các sổ kế toán hướng dẫn tại khoản 1 Điều này, doanh nghiệp siêu nhỏ có thể lựa chọn áp dụng thêm các sổ kế toán chi tiết hoặc các hình thức sổ kế toán tổng hợp khác tại Thông tư số&nbsp;133/2016/TT-BTC&nbsp;của Bộ Tài chính ngày 26/8/2016 hướng dẫn chế độ kế toán doanh nghiệp nhỏ và vừa cho phù hợp với yêu cầu quản lý hoạt động sản xuất kinh doanh của doanh nghiệp cũng như nghĩa vụ thuế với NSNN.</p>\n\n<p><b>MỤC 4. BÁO CÁO TÀI CHÍNH</b></p>\n\n<p><b>Điều 12. Mục đích của báo cáo tài chính</b></p>\n\n<p>1. Báo cáo tài chính dùng để cung cấp thông tin về tình hình tài chính, tình hình kinh doanh của doanh nghiệp siêu nhỏ, đáp ứng yêu cầu quản lý của chủ doanh nghiệp, cơ quan Nhà nước.</p>\n\n<p>2. Báo cáo tài chính cung cấp những thông tin của doanh nghiệp siêu nhỏ về các nội dung sau:</p>\n\n<p>- Tình hình Tài sản;</p>\n\n<p>- Nợ phải trả;</p>\n\n<p>- Vốn chủ sở hữu;</p>\n\n<p>- Các khoản doanh thu và thu nhập;</p>\n\n<p>- Các khoản chi phí;</p>\n\n<p>- Lãi, lỗ và phân chia kết quả kinh doanh.</p>\n\n<p><b>Điều 13. Hệ thống báo cáo tài chính</b></p>\n\n<p>1. Hàng năm, các doanh nghiệp siêu nhỏ nộp thuế TNDN theo phương pháp theo thu nhập tính thuế phải lập các báo cáo tài chính và phụ biểu báo cáo tài chính theo danh mục sau đây:</p>\n\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\n	<tbody>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p align=\"center\">STT</p>\n			</td>\n			<td valign=\"top\" width=\"359\">\n			<p align=\"center\">Tên báo cáo tài chính</p>\n			</td>\n			<td valign=\"top\" width=\"210\">\n			<p align=\"center\">Ký hiệu</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>I</p>\n			</td>\n			<td colspan=\"2\" valign=\"top\" width=\"570\">\n			<p>Báo cáo tài chính</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>1</p>\n			</td>\n			<td valign=\"top\" width=\"359\">\n			<p>Báo cáo tình hình tài chính</p>\n			</td>\n			<td valign=\"top\" width=\"210\">\n			<p>Mẫu số B01 - DNSN</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>2</p>\n			</td>\n			<td valign=\"top\" width=\"359\">\n			<p>Báo cáo kết quả hoạt động kinh doanh</p>\n			</td>\n			<td valign=\"top\" width=\"210\">\n			<p>Mẫu số B02 - DNSN</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>II</p>\n			</td>\n			<td colspan=\"2\" valign=\"top\" width=\"570\">\n			<p>Phụ biểu báo cáo tài chính</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>1</p>\n			</td>\n			<td valign=\"top\" width=\"359\">\n			<p>Bảng cân đối tài khoản</p>\n			</td>\n			<td valign=\"top\" width=\"210\">\n			<p>Mẫu số F01- DNSN</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>2</p>\n			</td>\n			<td valign=\"top\" width=\"359\">\n			<p>Báo cáo tình hình thực hiện nghĩa vụ với NSNN</p>\n			</td>\n			<td valign=\"top\" width=\"210\">\n			<p>Mẫu số F02- DNSN</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>2. Biểu mẫu, nội dung và phương pháp lập báo cáo tài chính và các phụ biểu báo cáo tài chính tại khoản 1 Điều này được hướng dẫn tại Phụ lục 5 &ldquo;Biểu mẫu báo cáo tài chính và phương pháp lập báo cáo tài chính&rdquo; ban hành kèm theo Thông tư này.</p>\n\n<p>3. Ngoài các báo cáo tài chính quy định tại khoản 1 Điều này, doanh nghiệp siêu nhỏ có thể lựa chọn áp dụng báo cáo tài chính quy định tại Thông tư số&nbsp;133/2016/TT-BTC&nbsp;của Bộ Tài chính ngày 26/8/2016 để phục vụ công tác quản lý hoạt động sản xuất kinh doanh của doanh nghiệp cũng như xác định nghĩa vụ thuế với ngân sách nhà nước.</p>\n\n<p><b>Điều 14. Trách nhiệm, thời hạn lập và gửi báo cáo tài chính</b></p>\n\n<p>1. Hàng năm, các doanh nghiệp siêu nhỏ nộp thuế TNDN theo phương pháp tính trên thu nhập tính thuế phải lập báo cáo tài chính và các phụ biểu báo cáo tài chính theo quy định tại khoản 1 Điều 13 Thông tư này.</p>\n\n<p>2. Báo cáo tài chính và các phụ biểu báo cáo tài chính của doanh nghiệp siêu nhỏ phải được gửi cho cơ quan thuế quản lý trực tiếp doanh nghiệp và cơ quan đăng ký kinh doanh chậm nhất là 90 ngày kể từ ngày kết thúc năm tài chính đồng thời phải được bảo quản, lưu trữ tại doanh nghiệp theo quy định của pháp luật kế toán để phục vụ cho việc kiểm tra, thanh tra theo yêu cầu của các cơ quan có thẩm quyền.</p>\n\n<p><b>Chương III</b></p>\n\n<p align=\"center\"><b>KẾ TOÁN TẠI DOANH NGHIỆP SIÊU NHỎ NỘP THUẾ TNDN THEO TỶ LỆ % TRÊN DOANH THU BÁN HÀNG HÓA, DỊCH VỤ</b></p>\n\n<p><b>Điều 15. Chứng từ kế toán</b></p>\n\n<p>1. Doanh nghiệp siêu nhỏ nộp thuế TNDN theo tỷ lệ % trên doanh thu bán hàng hóa, dịch vụ áp dụng chứng từ kế toán theo danh mục sau:</p>\n\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\n	<tbody>\n		<tr>\n			<td valign=\"top\" width=\"64\">\n			<p align=\"center\">STT</p>\n			</td>\n			<td valign=\"top\" width=\"385\">\n			<p align=\"center\">Tên chứng từ</p>\n			</td>\n			<td valign=\"top\" width=\"175\">\n			<p align=\"center\">Ký hiệu</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"64\">\n			<p>I</p>\n			</td>\n			<td valign=\"top\" width=\"385\">\n			<p>Các chứng từ quy định tại Thông tư này</p>\n			</td>\n			<td valign=\"top\" width=\"175\">\n			<p>&nbsp;</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"64\">\n			<p>1</p>\n			</td>\n			<td valign=\"top\" width=\"385\">\n			<p>Phiếu thu tiền mặt</p>\n			</td>\n			<td valign=\"top\" width=\"175\">\n			<p>Mẫu số 01-TT</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"64\">\n			<p>2</p>\n			</td>\n			<td valign=\"top\" width=\"385\">\n			<p>Phiếu chi tiền mặt</p>\n			</td>\n			<td valign=\"top\" width=\"175\">\n			<p>Mẫu số 02-TT</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"64\">\n			<p>3</p>\n			</td>\n			<td valign=\"top\" width=\"385\">\n			<p>Phiếu nhập kho</p>\n			</td>\n			<td valign=\"top\" width=\"175\">\n			<p>Mẫu số 01-VT</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"64\">\n			<p>4</p>\n			</td>\n			<td valign=\"top\" width=\"385\">\n			<p>Phiếu xuất kho</p>\n			</td>\n			<td valign=\"top\" width=\"175\">\n			<p>Mẫu số 02-VT</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"64\">\n			<p>5</p>\n			</td>\n			<td valign=\"top\" width=\"385\">\n			<p>Bảng thanh toán tiền lương và các khoản thu nhập của người lao động</p>\n			</td>\n			<td valign=\"top\" width=\"175\">\n			<p>Mẫu số 01-LĐTL</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"64\">\n			<p>II</p>\n			</td>\n			<td valign=\"top\" width=\"385\">\n			<p>Các chứng từ quy định theo pháp luật thuế</p>\n			</td>\n			<td valign=\"top\" width=\"175\">\n			<p>&nbsp;</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"64\">\n			<p>1</p>\n			</td>\n			<td valign=\"top\" width=\"385\">\n			<p>Hóa đơn GTGT hoặc hóa đơn bán hàng</p>\n			</td>\n			<td valign=\"top\" width=\"175\">\n			<p>&nbsp;</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"64\">\n			<p>2</p>\n			</td>\n			<td valign=\"top\" width=\"385\">\n			<p>Giấy nộp thuế vào NSNN</p>\n			</td>\n			<td valign=\"top\" width=\"175\">\n			<p>&nbsp;</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"64\">\n			<p>3</p>\n			</td>\n			<td valign=\"top\" width=\"385\">\n			<p>Giấy báo Nợ của ngân hàng</p>\n			</td>\n			<td valign=\"top\" width=\"175\">\n			<p>&nbsp;</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>2. Biểu mẫu, nội dung và phương pháp lập các chứng từ kế toán tại khoản 1 Điều này được hướng dẫn tại Phụ lục 1 &quot;Biểu mẫu và phương pháp lập chứng từ kế toán&quot; ban hành kèm theo Thông tư này.</p>\n\n<p>Ngoài các chứng từ kế toán tại khoản 1 Điều này, doanh nghiệp siêu nhỏ có thể lựa chọn áp dụng chứng từ kế toán tại khoản 1 Điều 9 Thông tư này hoặc Thông tư số&nbsp;133/2016/TT-BTC&nbsp;của Bộ Tài chính ngày 26/8/2016 để phục vụ yêu cầu quản lý hoạt động sản xuất kinh doanh của doanh nghiệp.</p>\n\n<p>3. Hóa đơn bán hàng hóa, dịch vụ</p>\n\n<p>- Hóa đơn bán hàng hóa, dịch vụ là chứng từ kế toán phản ánh nghiệp vụ bán hàng hóa, dịch vụ đã hoàn thành. Hóa đơn bán hàng hóa, dịch vụ có thể là hóa đơn GTGT hoặc hóa đơn bán hàng tùy theo quy định của pháp luật thuế đối với từng phương pháp nộp thuế GTGT của doanh nghiệp siêu nhỏ, trong đó:</p>\n\n<p>+ Trường hợp doanh nghiệp siêu nhỏ nộp thuế GTGT theo phương pháp khấu trừ thì hóa đơn bán hàng hóa, dịch vụ phát hành cho khách hàng là hóa đơn GTGT.</p>\n\n<p>+ Trường hợp doanh nghiệp siêu nhỏ nộp thuế GTGT theo phương pháp trực tiếp thì hóa đơn bán hàng hóa, dịch vụ phát hành cho khách hàng là hóa đơn bán hàng.</p>\n\n<p>- Hóa đơn bán hàng hóa, dịch vụ mà doanh nghiệp siêu nhỏ phát hành cho khách hàng khi bán hàng hóa, dịch vụ làm cơ sở để xác định nghĩa vụ thuế TNDN của doanh nghiệp siêu nhỏ với ngân sách nhà nước.</p>\n\n<p>4. Chứng từ thanh toán tiền lương và các khoản thu nhập cho người lao động là cơ sở để xác định nghĩa vụ thuế thu nhập cá nhân của người lao động trong doanh nghiệp siêu nhỏ với ngân sách nhà nước.</p>\n\n<p>5. Chứng từ nộp thuế vào NSNN làm căn cứ để đánh giá tình hình thực hiện nghĩa vụ nộp thuế của doanh nghiệp siêu nhỏ với ngân sách nhà nước.</p>\n\n<p><b>Điều 16. Phương pháp kế toán</b></p>\n\n<p>1. Doanh nghiệp siêu nhỏ nộp thuế TNDN tính theo tỷ lệ % trên doanh thu bán hàng hóa, dịch vụ nếu không có nhu cầu thì không bắt buộc phải mở các tài khoản kế toán mà chỉ ghi đơn trên sổ kế toán (chỉ ghi chép nghiệp vụ kinh tế phát sinh vào khoản mục cần theo dõi mà không cần phản ánh các tài khoản đối ứng) để theo dõi các khoản doanh thu và thu nhập, các khoản thuế phải nộp nhà nước, các khoản tiền lương và các khoản trích theo lương,... phục vụ cho việc xác định nghĩa vụ thuế của doanh nghiệp với ngân sách nhà nước.</p>\n\n<p>2. Trường hợp doanh nghiệp siêu nhỏ nộp thuế TNDN tính theo tỷ lệ % trên doanh thu bán hàng hóa, dịch vụ có nhu cầu áp dụng các tài khoản kế toán như các doanh nghiệp nộp thuế TNDN theo phương pháp tính trên thu nhập tính thuế để phục vụ yêu cầu quản lý hoạt động sản xuất kinh doanh của đơn vị thì được vận dụng các quy định tại chương II Thông tư này để thực hiện.</p>\n\n<p><b>Điều 17. Sổ kế toán</b></p>\n\n<p>1. Doanh nghiệp siêu nhỏ nộp thuế TNDN tính theo tỷ lệ % trên doanh thu bán hàng hóa, dịch vụ phải mở các sổ kế toán để theo dõi các khoản doanh thu và các khoản thu nhập, các khoản thuế phải nộp nhà nước, các khoản tiền lương và các khoản trích theo lương,... phục vụ cho việc xác định nghĩa vụ thuế của doanh nghiệp với ngân sách nhà nước theo danh mục sau đây:</p>\n\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\n	<tbody>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p align=\"center\">STT</p>\n			</td>\n			<td valign=\"top\" width=\"387\">\n			<p align=\"center\">Tên sổ kế toán</p>\n			</td>\n			<td valign=\"top\" width=\"182\">\n			<p align=\"center\">Ký hiệu</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>1</p>\n			</td>\n			<td valign=\"top\" width=\"387\">\n			<p>Sổ chi tiết doanh thu bán hàng hóa, dịch vụ</p>\n			</td>\n			<td valign=\"top\" width=\"182\">\n			<p>Mẫu số S1-DNSN</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>2</p>\n			</td>\n			<td valign=\"top\" width=\"387\">\n			<p>Sổ theo dõi tình hình thanh toán tiền lương và các khoản nộp theo lương của người lao động</p>\n			</td>\n			<td valign=\"top\" width=\"182\">\n			<p>Mẫu số S2-DNSN</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>3</p>\n			</td>\n			<td valign=\"top\" width=\"387\">\n			<p>Sổ chi tiết vật liệu, dụng cụ, sản phẩm, hàng hóa</p>\n			</td>\n			<td valign=\"top\" width=\"182\">\n			<p>Mẫu số S3-DNSN</p>\n			</td>\n		</tr>\n		<tr>\n			<td valign=\"top\" width=\"54\">\n			<p>4</p>\n			</td>\n			<td valign=\"top\" width=\"387\">\n			<p>Sổ theo dõi tình hình thực hiện nghĩa vụ thuế với NSNN</p>\n			</td>\n			<td valign=\"top\" width=\"182\">\n			<p>Mẫu số S4-DNSN</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>2. Biểu mẫu sổ kế toán, nội dung và phương pháp ghi sổ kế toán tại khoản 1 Điều này được hướng dẫn tại Phụ lục 4 &quot;Biểu mẫu sổ kế toán và phương pháp ghi sổ kế toán&quot; ban hành kèm theo Thông tư này.</p>\n\n<p>3. Ngoài các sổ kế toán hướng dẫn tại khoản 1 Điều này, doanh nghiệp siêu nhỏ nộp thuế TNDN tính theo tỷ lệ % trên doanh thu bán hàng hóa, dịch vụ có thể lựa chọn áp dụng thêm các sổ kế toán chi tiết hoặc các hình thức sổ kế toán tổng hợp khác tại Thông tư số&nbsp;133/2016/TT-BTC&nbsp;của Bộ Tài chính ngày 26/8/2016 hướng dẫn chế độ kế toán doanh nghiệp nhỏ và vừa cho phù hợp với yêu cầu quản lý hoạt động sản xuất kinh doanh của doanh nghiệp cũng như nghĩa vụ thuế với NSNN.</p>\n\n<p><b>Điều 18. Báo cáo tài chính</b></p>\n\n<p>1. Doanh nghiệp siêu nhỏ nộp thuế TNDN tính theo tỷ lệ % trên doanh thu bán hàng hóa, dịch vụ không bắt buộc phải lập báo cáo tài chính để nộp cho cơ quan thuế.</p>\n\n<p>2. Doanh nghiệp siêu nhỏ nộp thuế TNDN tính theo tỷ lệ % trên doanh thu bán hàng hóa, dịch vụ thực hiện các báo cáo theo quy định của pháp luật thuế. Thời gian lập và nộp báo cáo thực hiện theo quy định của pháp luật thuế.</p>\n\n<p>3. Ngoài báo cáo theo quy định của pháp luật về thuế, căn cứ vào các thông tin về doanh thu bán hàng và cung cấp dịch vụ, tiền lương và các khoản nộp theo lương,... các doanh nghiệp siêu nhỏ có thể lập các báo cáo kế toán phục vụ cho quản trị, điều hành doanh nghiệp.</p>\n\n<p>4. Doanh nghiệp siêu nhỏ nộp thuế TNDN tính theo tỷ lệ % trên doanh thu bán hàng hóa, dịch vụ nếu lựa chọn áp dụng chế độ kế toán quy định tại Chương II Thông tư này để phục vụ cho nhu cầu quản lý hoạt động sản xuất kinh doanh của doanh nghiệp thì vẫn lập báo cáo tài chính theo quy định. Báo cáo tài chính được lập không phải nộp cho cơ quan thuế mà được bảo quản, lưu trữ theo quy định và sử dụng tại doanh nghiệp để phục vụ cho việc thanh tra, kiểm tra khi có yêu cầu của cơ quan nhà nước có thẩm quyền.</p>\n\n<p><b>Chương IV</b></p>\n\n<p align=\"center\"><b>TỔ CHỨC THỰC HIỆN</b></p>\n\n<p><b>Điều 19. Chuyển số dư trên sổ kế toán</b></p>\n\n<p>1. Đối với các doanh nghiệp siêu nhỏ đang áp dụng Thông tư số&nbsp;133/2016/TT-BTC&nbsp;nếu chuyển sang áp dụng chế độ kế toán theo quy định tại Chương II Thông tư này thực hiện chuyển số dư các tài khoản kế toán như sau:</p>\n\n<p>- Số dư TK 112 - Tiền gửi ngân hàng và số dư TK 1281 - Tiền gửi có kỳ hạn được chuyển sang TK 111 - Tiền.</p>\n\n<p>- Số dư các TK 1331 - Thuế GTGT được khấu trừ của hàng hóa, dịch vụ, TK 1332 - Thuế GTGT được khấu trừ của TSCĐ được chuyển sang TK 1313- Thuế GTGT được khấu trừ;</p>\n\n<p>- Số dư các TK 136 - Phải thu nội bộ, TK 138- Phải thu khác, TK 141- Tạm ứng được chuyển sang TK 1318- Các khoản nợ phải thu khác;</p>\n\n<p>- Số dư các TK 152 - Nguyên vật liệu, TK 153 - Công cụ, dụng cụ được chuyển sang TK 1521- Nguyên vật liệu, dụng cụ;</p>\n\n<p>- Số dư TK 154 - Chi phí sản xuất, kinh doanh dở dang được chuyển sang TK 1524- Chi phí sản xuất kinh doanh dở dang;</p>\n\n<p>- Số dư các TK 155 - Thành phẩm, TK 156 - Hàng hóa và TK 157- Hàng gửi đi bán được chuyển sang TK 1526- Thành phẩm, hàng hóa trong đó có chi tiết theo yêu cầu quản lý;</p>\n\n<p>- Số dư Nợ TK 211 - Tài sản cố định sau khi trừ số dư Có TK 214 - Hao mòn tài sản cố định được chuyển sang dư Nợ TK 211 - Tài sản cố định;</p>\n\n<p>- Số dư TK 334 - Phải trả người lao động được chuyển sang TK 3311- Phải trả người lao động</p>\n\n<p>- Số dư các TK 3382 &ndash; Kinh phí công đoàn, TK 3383 - Bảo hiểm xã hội, TK 3384 - Bảo hiểm y tế, TK 3385 - Bảo hiểm thất nghiệp được chuyển sang TK 3312- Các khoản trích theo lương;</p>\n\n<p>- Số dư các TK 331 - Phải trả người bán, TK 335 - Chi phí phải trả, TK 336 - Phải trả nội bộ, TK 3381 - Phải trả, phải nộp khác, TK 3386 - Nhận ký quỹ, ký cược, TK 3387- Doanh thu chưa thực hiện, TK 3388 - Phải trả, phải nộp khác, TK 3411 - Các khoản đi vay và TK 3412 - Nợ thuê tài chính được chuyển sang TK 3318 - Các khoản nợ phải trả khác;</p>\n\n<p>- Số dư các TK 33311 - Thuế GTGT đầu ra, TK 33312 - Thuế GTGT hàng nhập khẩu được chuyển sang TK 33131- Thuế GTGT phải nộp;</p>\n\n<p>- Số dư các TK 3332- Thuế tiêu thụ đặc biệt, TK 3333- Thuế xuất, nhập khẩu, TK 3335- Thuế thu nhập cá nhân, TK 3336- Thuế tài nguyên, TK 3337- Thuế nhà đất, tiền thuê đất, TK 33381- Thuế bảo vệ môi trường, TK 33382- Các loại thuế khác, TK 3339- Phí, lệ phí và các khoản phải nộp khác được chuyển sang TK 33138- Thuế khác, phí, lệ phí và các khoản khác phải nộp nhà nước;</p>\n\n<p>- Số dư TK 4211- Lợi nhuận sau thuế chưa phân phối năm trước, TK 4212- Lợi nhuận sau thuế chưa phân phối năm nay được chuyển sang TK 4118- Lợi nhuận sau thuế chưa phân phối.</p>\n\n<p>2. Các nội dung khác đang phản ánh chi tiết trên các tài khoản có liên quan nếu trái so với Thông tư này thì phải điều chỉnh lại theo quy định của Thông tư này.</p>\n\n<p><b>Điều 20. Hiệu lực thi hành</b></p>\n\n<p>1. Thông tư này có hiệu lực thi hành kể từ ngày 15/02/2019, áp dụng cho năm tài chính bắt đầu hoặc sau ngày 01/4/2019.</p>\n\n<p>2. Trường hợp các văn bản quy phạm pháp luật dẫn chiếu tại Thông tư này được sửa đổi, bổ sung hoặc thay thế thì thực hiện theo văn bản quy phạm pháp luật đó.</p>\n\n<p>3. Các Bộ, ngành, Uỷ ban Nhân dân, Sở Tài chính, Cục Thuế các Tỉnh, Thành phố trực thuộc Trung ương có trách nhiệm triển khai hướng dẫn các doanh nghiệp siêu nhỏ thực hiện Thông tư này.</p>\n\n<p>4. Trong quá trình thực hiện nếu có vướng mắc đề nghị phản ánh về Bộ Tài chính để nghiên cứu giải quyết./.</p>\n\n<p>&nbsp;</p>\n\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n	<tbody>\n		<tr>\n			<td valign=\"top\" width=\"366\">\n			<p><b><i>&nbsp;</i></b></p>\n\n			<p><b><i>Nơi nhận:</i></b><br />\n			- Văn phòng Chính phủ;<br />\n			- Văn phòng TW và các ban của Đảng;<br />\n			- Văn phòng Tổng bí thư;<br />\n			- Văn phòng Quốc hội;<br />\n			- Văn phòng Chủ tịch nước;<br />\n			- Viện Kiểm sát Nhân dân tối cao;<br />\n			- Toà án Nhân dân tối cao;<br />\n			- Kiểm toán Nhà nước;<br />\n			- Phòng Thương mại và Công nghiệp Việt Nam;<br />\n			- Các Bộ, cơ quan ngang Bộ, cơ quan thuộc Chính phủ;<br />\n			- UBND các tỉnh, thành phố trực thuộc TW;<br />\n			- Sở Tài chính, Cục Thuế các tỉnh, thành phố trực thuộc TW;<br />\n			- Hiệp hội doanh nghiệp nhỏ và vừa Việt Nam;<br />\n			- Liên Minh Hợp tác xã Việt Nam;<br />\n			- Các đơn vị thuộc Bộ Tài chính;<br />\n			- Cục Kiểm tra văn bản (Bộ Tư pháp);<br />\n			- Vụ Pháp chế (Bộ Tài chính);<br />\n			- Website Bộ Tài chính;<br />\n			- Công báo;<br />\n			- Lưu: VT, Cục QLKT.</p>\n			</td>\n			<td valign=\"top\" width=\"258\">\n			<p align=\"center\"><b>KT. BỘ TRƯỞNG<br />\n			THỨ TRƯỞNG<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			Đỗ Hoàng Anh Tuấn</b></p>\n			</td>\n		</tr>\n	</tbody>\n</table>', 'images/upload/origins/news/thong-tu-132-che-do-ke-toan-cho-dn-sieu-nho.png', NULL, 0, 0, 1, 4, 1, '2019-06-24 07:59:23', '2019-06-24 07:59:23'),
(5, 'Cách tính thuế thu nhập cá nhân mới nhất', 'cach-tinh-thue-thu-nhap-ca-nhan-moi-nhat', 'Hướng dẫn cách tính thuế thu nhập cá nhân mới nhất áp dụng năm 2019', '<h3>Hướng dẫn cách tính thuế thu nhập cá nhân mới nhất áp dụng năm 2019</h3>\n\n<p>Thuế TNCN là vấn đề được rất nhiều người quan tâm mỗi lần quyết toán thuế do đó trung tâm kế toán Hà Nội xin được hướng dẫn&nbsp;cách tính thuế thu nhập cá nhân của năm 2019 áp dụng cho các thu nhập từ tiền lương, tiền công, kinh doanh bao gồm cả ví dụ cụ thể trong từng trường hợp.</p>\n\n<p><img alt=\"cách tính thuế thu nhập cá nhân\" src=\"http://localhost:8080/vintapro/images/upload/origins/news/thue-tncn.jpg\" style=\"width: 100%; height: 100%;\" /></p>\n\n<p><strong>Công thức tính thuế thu nhập cá nhân 2019:</strong></p>\n\n<p>Số thuế thu nhập cá nhân phải nộp =&nbsp;<strong>Thu nhập tính thuế</strong>&nbsp;x&nbsp;<strong>Thuế suất</strong></p>\n\n<p>Trong đó:</p>\n\n<p>Thu nhập tính thuế = (Tổng lương &ndash; 9 triêu &ndash; (3,6 triệu x số người phụ thuộc)) * thuế suất</p>\n\n<p>Theo đó tại điều 12&nbsp;<strong>Thông tư 111/2013/TT-BTC</strong>&nbsp; Quy đinh về mức giảm trừ gia cảnh đối với cá nhân có thu nhập từ tiền lương, tiền công và từ kinh doanh như sau và ta dựa vào đó để tính thuế TNCN</p>\n\n<p><strong>Cách tính thuế TNCN dựa trên biểu thuế lũy tiến từng phần:</strong></p>\n\n<table align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" width=\"480\">\n	<tbody>\n		<tr>\n			<td>\n			<p><strong>Bậc thuế</strong></p>\n			</td>\n			<td>\n			<p><strong>Phần thu nhập tính thuế TNCN/năm (triệu đồng)</strong></p>\n			</td>\n			<td>\n			<p><strong>Phần thu nhập tính thuế/tháng (triệu đồng)</strong></p>\n			</td>\n			<td>\n			<p><strong>Thuế suất</strong>(%)</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>1</p>\n			</td>\n			<td>\n			<p>Đến 60</p>\n			</td>\n			<td>\n			<p>Đến 5</p>\n			</td>\n			<td>\n			<p>5</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>2</p>\n			</td>\n			<td>\n			<p>Trên 60 đến 120</p>\n			</td>\n			<td>\n			<p>Trên 5 đến 10</p>\n			</td>\n			<td>\n			<p>10</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>3</p>\n			</td>\n			<td>\n			<p>Trên 120 đến 216&nbsp;</p>\n			</td>\n			<td>\n			<p>Trên 10 đến 18</p>\n			</td>\n			<td>\n			<p>15</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>4</p>\n			</td>\n			<td>\n			<p>Trên 216 đến 384</p>\n			</td>\n			<td>\n			<p>Trên 18 đến 32</p>\n			</td>\n			<td>\n			<p>20</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>5</p>\n			</td>\n			<td>\n			<p>Trên 384 đến 624</p>\n			</td>\n			<td>\n			<p>Trên 32 đến 52</p>\n			</td>\n			<td>\n			<p>25</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>6</p>\n			</td>\n			<td>\n			<p>Trên 624 đến 960</p>\n			</td>\n			<td>\n			<p>Trên 52 đến 80</p>\n			</td>\n			<td>\n			<p>30</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>7</p>\n			</td>\n			<td>\n			<p>Trên 960</p>\n			</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<p><strong>Dựa trên biểu thuế lũy tiến từng phần ta có công thức rút gọn về tính thuế thu nhập cá nhân &ndash; TNCN được quy định như sau</strong></p>\n\n<p><strong>Bậc 1:</strong></p>\n\n<p>Thu nhập tính thuế TNCN từ 0 -&gt; 5 triệu/tháng thì áp dụng mức thuế suất 5% Do đó</p>\n\n<p>Số thuế TNCN phải nộp: 0 trđ + 5% thu nhập tính thuế</p>\n\n<p><strong>Bậc 2:</strong></p>\n\n<p>Thu nhập tính thuế TNCN từ 5-&gt;10 triệu/tháng thì áp dụng mức thuế suất 10% do đó</p>\n\n<p>Số thuế TNCN phải nộp: 0,25trđ + 10% thu nhập tính thuế trên 5 trđ</p>\n\n<p><strong>Bậc 3:</strong></p>\n\n<p>Thu nhập tính thuế TNCN từ 10 -18 triệu/tháng thì áp dụng mức thuế suất 15% do đó</p>\n\n<p>Số thuế TNCN phải nộp: 0,75 trđ + 15% thu nhập tính thuế trên 10 trđ</p>\n\n<p><strong>Bậc 4:</strong></p>\n\n<p>Thu nhập tính thuế TNCN từ 18 &ndash; 32 triệu/tháng thì áp dụng mức thuế suất 20% do đó</p>\n\n<p>Số thuế TNCN phải nộp: 1,95 trđ + 20% thu nhập tính thuế trên 18 trđ</p>\n\n<p><strong>Bậc 5:</strong></p>\n\n<p>Thu nhập tính thuế TNCN từ 32 &ndash; 52 triệu/tháng thì áp dụng mức thuế suất 25% do đó</p>\n\n<p>Số thuế TNCN phải nộp: 4,75 trđ + 25% thu nhập tính thuế trên 32 trđ</p>\n\n<p><strong>Bậc 6:</strong></p>\n\n<p>Thu nhập tính thuế từ 52 &ndash; 80 triệu/tháng thì áp dụng mức thuế suất 30% do đó</p>\n\n<p>Số thuế TNCN phải nộp:&nbsp; 9,75 trđ + 30% TNTT trên 52 trđ</p>\n\n<p><strong>Bậc 7:</strong></p>\n\n<p>Thu nhập tính thuế trên 80 triệu/tháng thì áp dụng mức thuế suất 35% do đó</p>\n\n<p>Số thuế TNCN phải nộp: 18,15 trđ + 35% TNTT trên 80 trđ</p>\n\n<h3>Chú ý: Phương pháp tính thuế thu nhập cá nhân trên áp dụng đối với Cá nhân cư trú có thu nhập tiền lương, tiền công, thu nhập từ kinh doanh</h3>\n\n<p><strong>Một số thay đổi đáng kể về thuế thu nhập cá nhân bắt đầu từ 1/1/2018</strong></p>\n\n<p><strong>1. Thu nhập chịu thuế</strong></p>\n\n<p>- Thu nhập của cá nhân kinh doanh có doanh thu từ 100 triệu đồng/năm trở xuống không thuộc thu nhập chịu thuế.</p>\n\n<p>- Quy định thu nhập &ldquo;Trúng thưởng trong các hình thức cá cược, casino&rdquo; sửa thành &ldquo;Trúng thưởng trong các hình thức cá cược&rdquo;.</p>\n\n<p><strong>2. Thu nhập được miễn thuế</strong></p>\n\n<p>Bổ sung thêm các khoản thu nhập sau được miễn thuế:</p>\n\n<p>- Thu nhập từ tiền lương, tiền công của thuyền viên là người Việt Nam làm việc cho các hãng tàu nước ngoài hoặc các hãng tàu Việt Nam vận tải quốc tế.</p>\n\n<p>- Thu nhập của cá nhân là chủ tàu, cá nhân có quyền sử dụng tàu và cá nhân làm việc trên tàu từ hoạt động cung cấp hàng hóa, dịch vụ trực tiếp phục vụ hoạt động khai thác, đánh bắt thủy sản xa bờ.</p>\n\n<p><strong>3. Thuế đối với cá nhân kinh doanh</strong></p>\n\n<p>Cá nhân kinh doanh nộp thuế thu nhập cá nhân theo tỷ lệ trên doanh thu đối với từng lĩnh vực, ngành nghề sản xuất kinh doanh như sau:</p>\n\n<p>- Phân phối, cung cấp hàng hóa: 0,5%</p>\n\n<p>- Dịch vụ, xây dựng không bao thầu nguyên vật liệu: 2% (Riêng hoạt động cho thuê tài sản, đại lý bảo hiểm, đại lý xổ số, đại lý bán hàng đa cấp: 5%).</p>\n\n<p>- Sản xuất, vận tải, dịch vụ có gắn với hàng hóa, xây dựng có bao thầu nguyên vật liệu: 1,5%</p>\n\n<p>- Hoạt động kinh doanh khác: 1%</p>\n\n<p><strong>4. Thu nhập chịu thuế từ chuyển nhượng vốn</strong></p>\n\n<p>Sửa đổi quy định &ldquo;Trường hợp không xác định được giá mua và chi phí liên quan đến việc chuyển nhượng chứng khoán thì thu nhập chịu thuế được xác định là giá bán chứng khoán&rdquo; thành &ldquo;Đối với hoạt động chuyển nhượng chứng khoán, thu nhập chịu thuế được xác định là giá chuyển nhượng từng lần&rdquo;.</p>\n\n<p><strong>5. Sửa đổi quy định về &ldquo;Thu nhập chịu thuế từ chuyển nhượng bất động sản&rdquo;</strong></p>\n\n<p>Theo đó, quy định lại như sau:</p>\n\n<p>- Thu nhập chịu thuế từ chuyển nhượng bất động sản được xác định là giá chuyển nhượng từng lần.</p>\n\n<p>- Chính phủ quy định nguyên tắc, phương pháp xác định giá chuyển nhượng bất động sản.</p>\n\n<p>-Thời điểm xác định thu nhập chịu thuế từ chuyển nhượng bất động sản là thời điểm hợp đồng chuyển nhượng có hiệu lực theo quy định của pháp luật.</p>\n\n<p>- Thay đổi về biểu thuế toàn phần</p>\n\n<p>Thu nhập từ chuyển nhượng bất động sản với mức thuế suất là 2% (trước đây chia thành 2 trường hợp: 25% và 2%).</p>\n\n<h4><strong>Ví dụ tính thuế thu nhập cá nhân năm 2019 như sau:</strong></h4>\n\n<p>Bà Nguyễn Thị Liên có thu nhập từ tiền lương tiền công trong tháng 2/2019 là 60 triệu đồng và bà phải nộp các khoản bảo hiểm như sau:<br />\n- &nbsp;7% bảo hiểm xã hội<br />\n- &nbsp;1,5 % bảo hiểm ý tế<br />\nNgoài ra:<br />\n- &nbsp;Bà nuôi 2 con 1 trai và 1 gái đều dưới 18 tuổi<br />\n- &nbsp;Trong tháng 2 này bà không đóng góp bất kỳ khoản nào liên quan đến từ thiện, nhân đạo&hellip;</p>\n\n<p><strong>Cách tính thuế thu nhập cá nhân của bà</strong>&nbsp;<strong>Nguyễn Thị Liên trong tháng 1/2019 như sau:</strong></p>\n\n<p>Thu nhập chịu thuế của bà Liên là: 60 triệu đồng<br />\n- Các khoản giảm trừ của bà<br />\n+ Giảm trừ bản thân: 9 triệu<br />\n+ Giảm trừ gia cảnh cho 2 con của bà: 3,6 triệu x 2 = 7,2 triệu<br />\n+ Bảo hiểm xã hội, BHYT: 60 triệu x ( 7% + 1,5%) = 5,1 triệu<br />\nTổng cộng các khoản giảm trừ cho bà Liên = 9 triệu + 7,2 triệu+ 5,1 triệu = 21,3 triệu đồng<br />\nTừ đó ta suy ra được thu nhập tính thuế của bà Liên= 60 triệu &ndash; 21,3 = 38,7 triệu đồng<br />\nSố thuế thu nhập cá nhân phải nộp tháng 1/2014 tính theo biểu thuế lũy tiến từng phần như sau:<br />\nTheo đó thì bà Liên có mức thuế suất ở bậc 5 là vì thu nhập tính thuế là 38,7 triệu đồng năm trong khoảng Trên 32 đến 52 triệu đồng dự trên biểu thuế lũy tiến<br />\n<strong>Vậy số thuế thu nhập cá nhân mà bà&nbsp;</strong><strong>Liên</strong><strong>&nbsp;phải nộp trong tháng 2/2019 là&nbsp;</strong>= (5 triệu x 5%) + ( (10 triệu&nbsp; - 5 triệu) x 10%) +( (18 triệu đồng - 10 triệu đồng) &times; 15%) + ((32 triệu đồng &ndash; 18 triệu) x 20%) + ((38,7 triệu &ndash; 32 triệu) x 25% = 0,25 triệu + 0,5 triệu + 1,2 triệu + 2,8 triệu + 1,675 = 6,425 triệu đồng</p>', 'images/upload/origins/news/thue_tncn.png', NULL, 0, 0, 1, 5, 1, '2019-06-24 08:07:43', '2019-06-24 08:07:43');
INSERT INTO `posts` (`id`, `title`, `slug`, `description`, `content`, `img_primary`, `img_sub_list`, `post_type`, `is_hot`, `is_active`, `seo_id`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 'Thời hạn nộp các loại báo cáo thuế năm 2019', 'thoi-han-nop-cac-loai-bao-cao-thue-nam-2019', 'Thời hạn nộp các loại báo cáo thuế năm 2019 như thế nào? Cần nộp vào những thời gian nào? Vintapro xin chia sẻ Thời hạn nộp các loại báo cáo thuế năm 2019 và kế hoạch nộp báo cáo tài chính năm 2019.', '<p><strong>Tờ khai Thuế môn bài</strong></p>\n\n<p>Đối với Doanh nghiệp mới thành lập</p>\n\n<p>Khai lệ phí môn bài một lần khi tổ chức mới ra hoạt động kinh doanh, thời hạn nộp chậm nhất là ngày cuối cùng của tháng bắt đầu hoạt động sản xuất kinh doanh.<br />\nTrường hợp DN mới thành lập nhưng chưa có hoạt động sản xuất kinh doanh: Thời hạn nộp là trong vòng 30 ngày kể từ ngày được cấp giấy chứng nhận đăng ký kinh doanh hoặc ngày cấp giấy chứng nhận đăng ký doanh nghiệp; ngày cấp giấy chứng nhận đăng ký hoạt động chi nhánh&hellip;</p>\n\n<p><strong>Đối với doanh nghiệp đang hoạt động</strong></p>\n\n<p>Nếu không có thay đổi về vốn điều lệ hoặc tăng, giảm chi nhánh thì doanh nhiệp chỉ phải nộp tờ khai lệ phí môn bài một lần khi bắt đầu kinh doanh và nộp tiền thuế hàng năm, chậm nhất là ngày 30/01 năm sau.<br />\nNếu trong năm có sự thay đổi vốn điều lệ hoặc thay đổi số lượng chi nhánh thì doanh nghiệp phải nộp tờ khai thuế môn bài chậm nhất là ngày 31/12 trong năm thay đổi và nộp tiền thuế chậm nhất là ngày 30/01 năm sau.</p>\n\n<ul>\n	<li>Đối với cá nhân, nhóm cá nhân, hộ gia đình hoạt động sản xuất, kinh doanh hàng hóa, dịch vụ</li>\n	<li>Cá nhân, nhóm cá nhân, hộ gia đình thực hiện nộp lệ phí môn bài chậm nhất là ngày 30 tháng 01 hàng năm.</li>\n</ul>\n\n<p>Trường hợp người nộp lệ phí môn bài là cá nhân, nhóm cá nhân, hộ gia đình mới ra sản xuất, kinh doanh nộp thuế theo phương pháp khoán thì thời hạn nộp lệ phí môn bài chậm nhất là ngày cuối cùng của tháng tiếp theo tháng có phát sinh nghĩa vụ khai thuế theo quy định của pháp luật về thuế thu nhập cá nhân.</p>\n\n<p><strong>Thời hạn nộp tờ khai thuế GTGT, TNCN, TNDN, Báo cáo sử dụng hoá đơn năm 2019</strong></p>\n\n<ul>\n	<li>DN kê khai theo tháng: chậm nhất là ngày 20 của tháng sau</li>\n	<li>DN kê khai theo quý: chậm nhất là ngày 30 của tháng đầu tiên quý tiếp theo</li>\n	<li>DN kê khai theo năm: chậm nhất là ngày 30/01 năm sau</li>\n	<li>DN kê khai theo từng lần phát sinh: chậm nhất là ngày thứ 10 kể từ ngày phát sinh.</li>\n</ul>\n\n<p>Thời hạn hồ sơ quyết toán thuế năm chậm nhất là ngày thứ 90 kể từ ngày kết thúc năm dương lịch hoặc năm tài chính. Trường hợp doanh nghiệp chia tách, hợp nhất, sát nhập, chuyển đổi hình thức sở hữu, giải thể, chấm dứt hoạt động chậm nhất là ngày thứ 45 kể từ ngày có quyết định</p>\n\n<p><strong>Lịch nộp chi tiết như sau:</strong></p>\n\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\n	<tbody>\n		<tr>\n			<td>\n			<p><strong>Tháng</strong></p>\n			</td>\n			<td>\n			<p align=\"center\"><strong>Thời hạn nộp</strong></p>\n			</td>\n			<td>\n			<p align=\"center\"><strong>DN kê khai theo Quý</strong></p>\n			</td>\n			<td>\n			<p align=\"center\"><strong>DN kê khai theo tháng</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td rowspan=\"2\">\n			<p align=\"center\">1</p>\n			</td>\n			<td>\n			<p align=\"center\">21/01/2019 (do ngày 20/01 rơi vào Chủ nhật)</p>\n			</td>\n			<td>\n			<p>&nbsp;</p>\n			</td>\n			<td>\n			<p>+ Tờ khai thuế GTGT tháng 12/2018.</p>\n\n			<p>+ Tờ khai Thuế TNCN tháng 12/2018 (nếu có)</p>\n\n			<p>+ Nộp tiền Thuế GTGT và TNCN (nếu có)</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p align=\"center\">30/01/2019</p>\n			</td>\n			<td>\n			<p>+ Tờ khai Thuế GTGT Quý IV/2018</p>\n\n			<p>+ Tờ khai Thuế TNCN Quý IV/2018 (nếu có)</p>\n\n			<p>+ Nộp tiền Thuế TNDN tạm tính Quý IV/2018 (nếu có)</p>\n\n			<p>+ BC tình hình sử dụng Hoá đơn Quý IV/2018</p>\n\n			<p>+ Nộp lệ phí môn bài năm 2019</p>\n			</td>\n			<td>\n			<p>+ Nộp tiền Thuế TNDN tạm tính Quý IV/2018&nbsp;(nếu có)</p>\n\n			<p>+ Nộp lệ phí môn bài năm 2018</p>\n\n			<p>&nbsp;</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p align=\"center\">2</p>\n			</td>\n			<td>\n			<p align=\"center\">20/02/2019</p>\n			</td>\n			<td>\n			<p>&nbsp;</p>\n			</td>\n			<td>\n			<p>+ Tờ khai Thuế GTGT tháng 01/2019</p>\n\n			<p>+ Tờ khai Thuế TNCN tháng 01/2019 (nếu có)</p>\n\n			<p>+ Nộp tiền thuế GTGT &amp; TNCN (nếu có)</p>\n			</td>\n		</tr>\n		<tr>\n			<td rowspan=\"2\">\n			<p align=\"center\">3</p>\n			</td>\n			<td>\n			<p align=\"center\">20/03/2019</p>\n			</td>\n			<td>\n			<p>&nbsp;</p>\n			</td>\n			<td>\n			<p>+ Tờ khai Thuế GTGT tháng 02/2019</p>\n\n			<p>+ Tờ khai Thuế TNCN tháng 02/2019 (nếu có)</p>\n\n			<p>+ Nộp tiền thuế GTGT &amp; TNCN (nếu có)</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p align=\"center\">01/04/2019 (do ngày 30/03/2019 rơi vào ngày Thứ Bảy)</p>\n			</td>\n			<td>\n			<p>+ Quyết toán Thuế TNDN năm 2018</p>\n\n			<p>+ Quyết toán Thuế TNCN năm 2018</p>\n\n			<p>+ Báo cáo tài chính năm 2018</p>\n			</td>\n			<td>\n			<p>+ Quyết toán Thuế TNDN năm 2018</p>\n\n			<p>+ Quyết toán Thuế TNCN năm 2018.</p>\n\n			<p>+ Báo cáo tài chính năm 2018</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p align=\"center\">4</p>\n			</td>\n			<td>\n			<p align=\"center\">22/4/2019 (do ngày 20/4/2019 rơi vào ngày Thứ Bảy)</p>\n\n			<p align=\"center\">&nbsp;</p>\n			</td>\n			<td>\n			<p>&nbsp;</p>\n			</td>\n			<td>\n			<p>+ Tờ khai Thuế GTGT tháng 03/2019</p>\n\n			<p>+ Tờ khai Thuế TNCN tháng 03/2019 (nếu có)</p>\n\n			<p>+ Nộp tiền thuế GTGT &amp; TNCN (nếu có)</p>\n			</td>\n		</tr>\n		<tr>\n			<td rowspan=\"2\">\n			<p align=\"center\">5</p>\n			</td>\n			<td>\n			<p align=\"center\">02/5/2019 (do ngày 30/4/2019 nghỉ Lễ)</p>\n\n			<p align=\"center\">&nbsp;</p>\n			</td>\n			<td>\n			<p>+ Tờ khai Thuế GTGT Quý I/2019</p>\n\n			<p>+ Tờ khai Thuế TNCN Quý I/2019&nbsp;(nếu có)</p>\n\n			<p>+ Tạm Nộp Tiền Thuế TNDN tạm tính Quý I/2019 (nếu có)</p>\n\n			<p>+ BC tình hình sử dụng Hoá đơn Quý I/2019</p>\n			</td>\n			<td>\n			<p>+ Tạm nộp tiền Thuế TNDN tạm tính Quý I/2019&nbsp;(nếu có)</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p align=\"center\">20/5/2019</p>\n			</td>\n			<td>\n			<p>&nbsp;</p>\n			</td>\n			<td>\n			<p>+ Tờ khai Thuế GTGT tháng 4/2019.</p>\n\n			<p>+ Tờ khai Thuế TNCN tháng 4/2019 (nếu có)</p>\n\n			<p>+ Nộp tiền thuế GTGT &amp; TNCN (nếu có)</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p align=\"center\">6</p>\n			</td>\n			<td>\n			<p align=\"center\">20/6/2019</p>\n			</td>\n			<td>\n			<p>&nbsp;</p>\n			</td>\n			<td>\n			<p>+ Tờ khai Thuế GTGT tháng 5/2019</p>\n\n			<p>+ Tờ khai Thuế TNCN tháng 5/2019&nbsp;(nếu có)</p>\n\n			<p>+ Nộp tiền thuế GTGT &amp; TNCN (nếu có)</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p align=\"center\">7</p>\n			</td>\n			<td>\n			<p align=\"center\">22/7/2019 (do ngày 20/7/2019 rơi vào ngày Thứ 7)</p>\n\n			<p align=\"center\">&nbsp;</p>\n			</td>\n			<td>\n			<p>&nbsp;</p>\n			</td>\n			<td>\n			<p>+ Tờ khai Thuế GTGT tháng 6/2019</p>\n\n			<p>+ Tờ khai Thuế TNCNtháng 6/2019 (nếu có)</p>\n\n			<p>+ Nộp tiền thuế GTGT &amp;TNCN (nếu có)</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p align=\"center\">&nbsp;</p>\n			</td>\n			<td>\n			<p align=\"center\">30/7/2019</p>\n			</td>\n			<td>\n			<p>+ Tờ khai Thuế GTGT Quý II/2019</p>\n\n			<p>+ Tờ khai Thuế TNCN Quý II/2019 (nếu có).</p>\n\n			<p>+ Tạm nộp tiền Thuế TNDN</p>\n\n			<p>tạm tính Quý II/2019 (nếu có).</p>\n\n			<p>+ BC tình hình sử dụng Hoá đơn Quý II/2019</p>\n			</td>\n			<td>\n			<p>+ Tạm nộp tiền Thuế TNDN tạm tính Quý II/2019</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p align=\"center\">8</p>\n			</td>\n			<td>\n			<p align=\"center\">20/8/2019</p>\n			</td>\n			<td>\n			<p>&nbsp;</p>\n			</td>\n			<td>\n			<p>+ Tờ khai Thuế GTGT tháng 7/2019 (nếu có)</p>\n\n			<p>+ Tờ khai Thuế TNCN tháng 7/2019 (nếu có).</p>\n\n			<p>+ Nộp tiền thuế GTGT &amp;TNCN (nếu có)</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p align=\"center\">9</p>\n			</td>\n			<td>\n			<p align=\"center\">20/9/2019</p>\n			</td>\n			<td>\n			<p>&nbsp;</p>\n			</td>\n			<td>\n			<p>+ Tờ khai Thuế GTGT tháng 8/2019 (nếu có)</p>\n\n			<p>+ Tờ khai Thuế TNCN tháng 8/2019 (nếu có).</p>\n\n			<p>+ Nộp tiền thuế GTGT &amp; TNCN (nếu có)</p>\n			</td>\n		</tr>\n		<tr>\n			<td rowspan=\"2\">\n			<p align=\"center\">10</p>\n			</td>\n			<td>\n			<p align=\"center\">21/10/2019 (do ngày 20/10/2019&nbsp;rơi vào ngày Chủ Nhật)</p>\n\n			<p align=\"center\">&nbsp;</p>\n			</td>\n			<td>\n			<p>&nbsp;</p>\n			</td>\n			<td>\n			<p>+ Tờ khai Thuế GTGT tháng 9/2019.</p>\n\n			<p>+ Tờ khai Thuế TNCN tháng 9/2019&nbsp;(nếu có).</p>\n\n			<p>+ Nộp tiền thuế GTGT &amp; TNCN (nếu có)</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p align=\"center\">30/10/2019</p>\n			</td>\n			<td>\n			<p>&nbsp;</p>\n\n			<p>+ Tờ khai Thuế GTGT Quý III/2019.</p>\n\n			<p>+ Tờ khai Thuế TNCN Quý III/2019&nbsp;(nếu có).</p>\n\n			<p>+&nbsp; Nộp tiền Thuế TNDN tạm tính &amp; thuế VAT Quý III/2019&nbsp;(nếu có).</p>\n\n			<p>+ BC tình hình sử dụng Hoá đơn Quý III/2019</p>\n			</td>\n			<td>\n			<p>+ Nộp tiền Thuế TNDN tạm tính Quý III/2019</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p align=\"center\">11</p>\n			</td>\n			<td>\n			<p align=\"center\">20/11/2019</p>\n			</td>\n			<td>\n			<p>&nbsp;</p>\n			</td>\n			<td>\n			<p>+ Tờ khai Thuế GTGT tháng 10/2019.</p>\n\n			<p>+ Tờ khai Thuế TNCN tháng 10/2019 (nếu có).</p>\n\n			<p>+ Nộp tiền thuế GTGT &amp; TNCN (nếu có)</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p align=\"center\">12</p>\n			</td>\n			<td>\n			<p align=\"center\">20/12/2019</p>\n			</td>\n			<td>\n			<p>&nbsp;</p>\n			</td>\n			<td>\n			<p>+ Tờ khai Thuế GTGT tháng 11/2019.</p>\n\n			<p>+ Tờ khai Thuế TNCN tháng11/2019&nbsp;(nếu có).</p>\n\n			<p>+ Nộp tiền thuế GTGT &amp; TNCN (nếu có).</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Một số chú ý:</p>\n\n<ul>\n	<li>Đối với những doanh nghiệp mới thành lập dưới 12 tháng và chưa đủ 1 năm tài chính thì kê khai thuế GTGT và lập BC tình hình sử dụng hóa đơn theo quý.</li>\n	<li>Thuế TNCN: nếu DN kê khai thuế GTGT theo quý thì kê khai thuế TNCN theo quý. Nếu DN kê khai thuế GTGT theo tháng và trong tháng phát sinh thuế TNCN phải nộp lớn hơn 50 triệu thì kê khai theo tháng; nhỏ hơn 50 triệu thì kê khai theo quý.</li>\n	<li>Theo thông tư 151/2014/TT-BTC, thuế TNDN từ quý IV/2014 trở đi không cần nộp tờ khai thuế TNDN tạm tính nữa, chỉ cần tự tính tiền thuế TNDN nếu có thì nộp.</li>\n</ul>', 'images/upload/origins/news/thoi-han-ke-khai-thue-va-nop-thue-to-khai-thue-nam-2019-medium.jpg', NULL, 0, 0, 1, 6, 1, '2019-06-24 08:11:50', '2019-06-24 08:11:50'),
(7, 'Hàng bán bị trả lại thì xử lý và viết hóa đơn thế nào', 'hang-ban-bi-tra-lai-thi-xu-ly-va-viet-hoa-don-the-nao', 'Vintapro xin giới thiệu tới quý Khách Hàng bài viết Hàng bán bị trả lại thì xử lý và viết hóa đơn thế nào. Các nội dung liên quan đến bài viết gồm Cách viết hóa đơn GTGT, Thời điểm xuất hóa đơn, Thời hạn kê khai hóa đơn, Cách xử lý hóa đơn viết sai,mất, bỏ sót, Các mức phạt liên quan đến hóa đơn,...', '<h2>Theo quy định tại&nbsp;Điểm 2.8 Phụ lục 4 Thông tư số 39/2014/TT-BTC ngày 31/3/2014&nbsp;của Bộ tài chính:</h2>\n\n<p><em>&quot;2.8. Tổ chức, cá nhân mua hàng hoá, người bán đã xuất hoá đơn, người mua đã nhận hàng, nhưng sau đó người mua phát hiện hàng hoá không đúng quy cách, chất lượng phải trả lại toàn bộ hay một phần hàng hoá.</em></p>\n\n<p><em>-&nbsp;Khi xuất hàng trả lại cho người bán, người mua phải lập hóa đơn hàng bán trả lại, trên hoá đơn phải ghi rõ: &quot;Hàng hoá trả lại người bán do không đúng quy cách, chất lượng, tiền thuế GTGT (nếu có)&quot;</em></p>\n\n<p><strong>- Nếu người mua là đối tượng không có hóa đơn:</strong></p>\n\n<p>&nbsp;Thì khi trả lại hàng hoá, 2 bên phải lập biên bản ghi rõ loại hàng hoá, số lượng, giá trị hàng trả lại theo giá không có thuế GTGT, tiền thuế GTGT theo hoá đơn bán hàng (số ký hiệu, ngày, tháng của hoá đơn), lý do trả hàng và bên bán thu hồi hóa đơn đã lập.</p>\n\n<p><strong>- Nếu khách hàng là đối tượng sử dụng hoá đơn bán hàng&nbsp;(DN kê khai thuế theo phương pháp trực tiếp):</strong></p>\n\n<p>Theo&nbsp;Công văn 4122/TCT-CS ngày 19 tháng 11 năm 2012&nbsp;của Tổng cục thuế:</p>\n\n<p><em>&quot;Căn cứ hướng dẫn trên, Tổng cục Thuế nhất trí với đề xuất của Cục thuế thành phố Hà Nội tại mục II công văn số 17260/CT-HTr ngày 9/7/2012 và công văn số 19449/CT-HTr ngày 31/7/2012, cụ thể: việc kê khai thuế GTGT trong trường hợp hàng bán bị trả lại, trong đó người bán dùng hóa đơn mẫu 01/GTKT, khách hàng trả lại là đối tượng sử dụng hóa đơn mẫu 02/GTTT thì&nbsp;xử lý tương tự như trường hợp người mua là đối tượng không có hóa đơn&nbsp;quy định tại Điểm 2.8, Phụ lục 4 Thông tư số 153/2010/TT-BTC ngày 28/9/2010 của Bộ Tài chính. Cục thuế căn cứ vào tình hình cụ thể của doanh nghiệp để hướng dẫn thực hiện.&quot;</em></p>\n\n<p><strong>Sau đây</strong>, Vintapro xin được&nbsp;hướng dẫn cách viết theo mẫu hóa đơn hàng bán trả lại cụ thể như sau:</p>\n\n<p><strong>Ví dụ</strong>: Ngày 01/05/2018 Công ty kiểm toán Es-Glocal&nbsp;mua 10 máy tính DELL, trị giá 12.000.000/chiếc của Công ty Trần Anh.</p>\n\n<p>- Nhưng đến ngày 05/05/2018 thì phát hiện máy bị lỗi phải trả lại. Công ty kiểm toán Es-Glocal tiến hành trả lại hàng và xuất hóa đơn hàng bán trả lại như sau:</p>\n\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" width=\"800\">\n	<tbody>\n		<tr>\n			<td colspan=\"6\">\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n				<tbody>\n					<tr>\n						<td>&nbsp; &nbsp;Mẫu số: 01GTKT3/001</td>\n					</tr>\n				</tbody>\n			</table>\n\n			<p><strong>HÓA ĐƠN GIÁ TRỊ GIA TĂNG</strong></p>\n\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ký hiệu: AA/18P<br />\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Liên 1: Lưu&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Số:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0000001</p>\n\n			<p>Ngày..05...tháng..05..năm&nbsp;2018<br />\n			&nbsp;</p>\n			Đơn vị bán hàng:&nbsp;<br />\n			Mã số thuế:&nbsp;<br />\n			Địa chỉ:&nbsp;</td>\n		</tr>\n		<tr>\n			<td colspan=\"6\">Điện thoại:&nbsp; &nbsp; &nbsp;Tài khoản: ................</td>\n		</tr>\n		<tr>\n			<td colspan=\"6\">Họ tên người mua hàng:&nbsp;Trịnh Xuân Mạnh<br />\n			Tên đơn vị:&nbsp;Công ty TNHH Trần Anh<br />\n			Mã số thuế: 0104951642<br />\n			Địa chỉ:&nbsp;</td>\n		</tr>\n		<tr>\n			<td colspan=\"6\">Hình thức thanh toán:...CK...........Số tài khoản..................</td>\n		</tr>\n		<tr>\n			<td><strong>STT</strong></td>\n			<td><strong>Tên hàng hóa, dịch vụ</strong></td>\n			<td><strong>Đơn vị tính</strong></td>\n			<td><strong>Số lượng</strong></td>\n			<td><strong>Đơn giá</strong></td>\n			<td><strong>Thành tiền</strong></td>\n		</tr>\n		<tr>\n			<td><strong>1</strong></td>\n			<td><strong>2</strong></td>\n			<td><strong>3</strong></td>\n			<td><strong>4</strong></td>\n			<td><strong>5</strong></td>\n			<td><strong>6=4x5</strong></td>\n		</tr>\n		<tr>\n			<td>01</td>\n			<td>Máy tính DELL</td>\n			<td>Chiếc</td>\n			<td>10</td>\n			<td>12.000.000</td>\n			<td>120.000.000</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>(Xuất hàng trả lại do không đúng chất lượng)</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n		</tr>\n		<tr>\n			<td colspan=\"6\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Cộng tiền hàng: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;120.000.000</td>\n		</tr>\n		<tr>\n			<td colspan=\"6\">Thuế suất GTGT:&nbsp;&nbsp; ...10&nbsp;&nbsp;%&nbsp; , Tiền thuế GTGT: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;12.000.000</td>\n		</tr>\n		<tr>\n			<td colspan=\"6\">Tổng cộng tiền thanh toán &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;132.000.000<br />\n			Số tiền viết bằng chữ:..Một trăm ba mươi hai triệu đồng.</td>\n		</tr>\n	</tbody>\n</table>\n\n<p><strong>Trên đây</strong>&nbsp;là toàn bộ bài viết về chủ đề:&nbsp;Hàng bán bị trả lại thì xử lý và viết hóa đơn thế nào</p>', 'images/upload/origins/news/returns_hang-hoa-2.jpg', NULL, 0, 0, 1, 7, 1, '2019-06-24 08:20:32', '2019-06-24 08:20:32'),
(8, 'Giới Thiệu', 'gioi-thieu', 'Giới Thiệu', '<p>Giới Thiệu</p>', NULL, '[{\"path\":\"images/upload/origins/service/thue-xuat-nhap-khau0811100529_229927.jpg\",\"name\":\"thue-xuat-nhap-khau0811100529_229927.jpg\",\"width\":1200,\"height\":630},{\"path\":\"images/upload/origins/service/tu-van-thanh-lap-cong-ty-tron-goi.jpg\",\"name\":\"tu-van-thanh-lap-cong-ty-tron-goi.jpg\",\"width\":600,\"height\":361},{\"path\":\"images/upload/origins/service/ke_494142.jpg\",\"name\":\"ke_494142.jpg\",\"width\":630,\"height\":420}]', 1, 0, 1, NULL, 1, '2019-06-25 19:56:18', '2019-06-26 01:03:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_on_hand` smallint(5) UNSIGNED DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_primary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_sub_list` longtext COLLATE utf8mb4_unicode_ci,
  `is_hot` tinyint(4) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `has_promotion` tinyint(4) UNSIGNED DEFAULT NULL,
  `seo_id` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_value_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotions`
--

CREATE TABLE `promotions` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `promotion_price_id` int(10) UNSIGNED DEFAULT NULL,
  `promotion_content_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotion_contents`
--

CREATE TABLE `promotion_contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `descritption` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotion_prices`
--

CREATE TABLE `promotion_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale` tinyint(4) NOT NULL,
  `final_price` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seos`
--

CREATE TABLE `seos` (
  `id` int(10) UNSIGNED NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `seos`
--

INSERT INTO `seos` (`id`, `seo_title`, `seo_description`, `seo_keyword`, `seo_image`, `created_at`, `updated_at`) VALUES
(1, 'Dịch Vụ Thành Lập Công Ty Trọn Gói', 'Vậy tại sao bạn không tìm đến một đơn vị uy tín, đáng tin cậy, chuyên cung cấp dịch vụ Thành lập công ty để hỗ trợ, tư vấn và thậm chí là đăng ký giấy phép kinh doanh hộ bạn?', NULL, 'images/upload/origins/service/thue-xuat-nhap-khau0811100529_229927.jpg', '2019-06-23 19:43:21', '2019-06-23 23:57:11'),
(2, 'Thành Lập Công Ty TNHH MTV 2019', 'Trong 3 loại hình hoạt động của doanh nghiệp, thì có thể nói loại hình công ty TNHH Một thành viên', NULL, 'images/upload/origins/service/tu-van-thanh-lap-cong-ty-tron-goi.jpg', '2019-06-23 19:53:57', '2019-06-23 19:53:57'),
(3, 'Thành Lập Công Ty TNHH 2 Thành Viên Trở Lên', 'Công ty TNHH sẽ chính thúc có được tư cách pháp nhân, kể từ ngày được cấp Giấy CN ĐKKD. Công ty TNHH có từ 02 TV trở lên phải có HĐTV', NULL, 'images/upload/origins/service/tu-van-thanh-lap-cong-ty-tron-goi.jpg', '2019-06-23 23:59:11', '2019-06-23 23:59:11'),
(4, 'Thông tư 132/2018/TT-BTC Chế độ kế toán cho DN Siêu nhỏ', 'Thông tư 132/2018/TT-BTC ngày 28/12/2018 của Bộ tài chính: Hướng dẫn Chế độ kế toán cho doanh nghiệp siêu nhỏ, áp dụng cho năm tài chính bắt đầu hoặc sau ngày 01/4/2019.', NULL, 'images/upload/origins/news/thong-tu-132-che-do-ke-toan-cho-dn-sieu-nho.png', '2019-06-24 07:59:23', '2019-06-24 07:59:23'),
(5, 'Cách tính thuế thu nhập cá nhân mới nhất', 'Hướng dẫn cách tính thuế thu nhập cá nhân mới nhất áp dụng năm 2019', NULL, 'images/upload/origins/news/thue_tncn.png', '2019-06-24 08:07:42', '2019-06-24 08:07:42'),
(6, 'Thời hạn nộp các loại báo cáo thuế năm 2019', 'Thời hạn nộp các loại báo cáo thuế năm 2019 như thế nào? Cần nộp vào những thời gian nào?', NULL, 'images/upload/origins/news/thoi-han-ke-khai-thue-va-nop-thue-to-khai-thue-nam-2019-medium.jpg', '2019-06-24 08:11:50', '2019-06-24 08:11:50'),
(7, 'Hàng bán bị trả lại thì xử lý và viết hóa đơn thế nào', 'Vintapro xin giới thiệu tới quý Khách Hàng bài viết Hàng bán bị trả lại thì xử lý và viết hóa đơn thế nào.', NULL, 'images/upload/origins/news/returns_hang-hoa-2.jpg', '2019-06-24 08:20:32', '2019-06-24 08:20:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `bio` mediumtext COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'profile.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `bio`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Quang Nguyen', 'nnduyquang@gmail.com', '$2y$10$ib1t864vWVMu5et8xCJ20./MPSab4D1tQkQWfXVoZBZ/119OZdu9K', 'user', NULL, 'profile.png', 'ndkpbAXqGWln9UvOrDrgkEOZEKPc0TqGNBuy4HrcJpSPbbM9OxyHg0tdThtw', '2019-05-08 19:37:03', '2019-05-08 19:37:03');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `many_category_items`
--
ALTER TABLE `many_category_items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `promotion_contents`
--
ALTER TABLE `promotion_contents`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `promotion_prices`
--
ALTER TABLE `promotion_prices`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `many_category_items`
--
ALTER TABLE `many_category_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `promotion_contents`
--
ALTER TABLE `promotion_contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `promotion_prices`
--
ALTER TABLE `promotion_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `seos`
--
ALTER TABLE `seos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
