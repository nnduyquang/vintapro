-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 24, 2019 lúc 11:48 AM
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
(2, 'Thành Lập Công Ty Nước Ngoài', 'thanh-lap-cong-ty-nuoc-ngoai', NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 2, 1, '2019-06-21 02:22:36', '2019-06-21 02:23:21'),
(3, 'Thay Đổi, Giải Thể', 'thay-doi-giai-the', NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 2, 1, '2019-06-21 02:23:46', '2019-06-21 02:23:50'),
(4, 'Dịch Vụ Kế Toán, Thuế', 'dich-vu-ke-toan-thue', NULL, 'images/upload/origins/service/thue-xuat-nhap-khau0811100529_229927.jpg', NULL, NULL, 1, 0, NULL, 0, 2, 1, '2019-06-21 02:24:12', '2019-06-21 02:36:28'),
(5, 'Đào Tạo Kế Toán', 'dao-tao-ke-toan', NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 2, 1, '2019-06-21 02:24:40', '2019-06-21 02:24:40'),
(6, 'Chữ Ký Số', 'chu-ky-so', NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 2, 1, '2019-06-21 02:24:55', '2019-06-21 02:24:55'),
(7, 'Khắc Dấu', 'khac-dau', NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 2, 1, '2019-06-21 02:25:03', '2019-06-21 02:25:03'),
(8, 'Hóa Đơn Điện Tử', 'hoa-don-dien-tu', NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 2, 1, '2019-06-21 02:25:19', '2019-06-21 02:25:19'),
(9, 'In Hóa Đơn GTGT', 'in-hoa-don-gtgt', NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 2, 1, '2019-06-21 02:25:29', '2019-06-21 02:25:29');

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
(3, 1, 3, 2, '2019-06-23 23:59:11', '2019-06-24 02:28:17');

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
(3, 'Thành Lập Công Ty TNHH 2 Thành Viên Trở Lên', 'Công ty TNHH sẽ chính thúc có được tư cách pháp nhân, kể từ ngày được cấp Giấy CN ĐKKD. Công ty TNHH có từ 02 TV trở lên phải có HĐTV', NULL, 'images/upload/origins/service/tu-van-thanh-lap-cong-ty-tron-goi.jpg', '2019-06-23 23:59:11', '2019-06-23 23:59:11');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `many_category_items`
--
ALTER TABLE `many_category_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
