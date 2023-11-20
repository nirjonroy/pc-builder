-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2023 at 05:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soft_chaldal_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_us` longtext NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `video_background` varchar(250) DEFAULT NULL,
  `image_two` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `icon_one` varchar(255) DEFAULT NULL,
  `title_one` varchar(255) DEFAULT NULL,
  `description_one` text DEFAULT NULL,
  `icon_two` varchar(255) DEFAULT NULL,
  `title_two` varchar(255) DEFAULT NULL,
  `description_two` text DEFAULT NULL,
  `icon_three` varchar(255) DEFAULT NULL,
  `title_three` varchar(255) DEFAULT NULL,
  `description_three` text DEFAULT NULL,
  `video_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `about_us`, `banner_image`, `video_background`, `image_two`, `status`, `icon_one`, `title_one`, `description_one`, `icon_two`, `title_two`, `description_two`, `icon_three`, `title_three`, `description_three`, `video_id`, `created_at`, `updated_at`) VALUES
(1, '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<span style=\"font-size: 24pt;\">Know More About Halalzi:</span>\r\n&nbsp;\r\n&nbsp;Your Trusted Online Grocery Store for Halal Products Meta Description: Discover the convenience and reliability of Halalzi, the leading online grocery store specializing in high-quality Halal products. Explore our wide selection, superior customer service, and commitment to providing a seamless shopping experience for all your Halal needs. Introduction: Welcome to Halalzi, your go-to destination for all your Halal grocery needs. With our extensive range of Halal-certified products, we strive to make shopping for Halal items convenient, reliable, and enjoyable. Our commitment to quality, authenticity, and exceptional customer service sets us apart as a trusted online grocery store catering to the specific requirements of the Halal-conscious community. Wide Selection of Halal Products: At Halalzi, we understand the importance of offering a diverse range of Halal products to meet the varying needs and preferences of our customers. Our extensive catalog includes a wide array of groceries, fresh produce, halal-certified meats, dairy products, pantry essentials, snacks, beverages, and much more. We partner with reputable brands and suppliers to ensure that you have access to high-quality and authentic Halal products. Quality Assurance: We prioritize quality and adhere to stringent standards when selecting our products. Our team diligently verifies the Halal certifications of our suppliers, ensuring that every item on our platform meets the strict Halal guidelines and regulations. This commitment to quality assurance allows you to shop with confidence, knowing that the products you receive from Halalzi are truly Halal-certified. Seamless Online Shopping Experience: We understand that convenience is key when it comes to online shopping. Our user-friendly website offers a seamless browsing and ordering experience. With intuitive search functionality, categorized product listings, and detailed product descriptions, finding and selecting the right items has never been easier. Our secure and streamlined checkout process ensures a hassle-free transaction, and our efficient delivery system ensures that your Halal products reach your doorstep in a timely manner. Exceptional Customer Service: At Halalzi, we prioritize customer satisfaction above all else. Our dedicated customer support team is readily available to assist you with any queries, concerns, or special requests you may have. We value your feedback and continuously strive to enhance your shopping experience. Your satisfaction is our top priority, and we are committed to ensuring that your every interaction with Halalzi is met with prompt and personalized assistance. Join the Halalzi Community: Discover the Halalzi community and stay updated with the latest news, offers, and promotions by subscribing to our newsletter or following us on social media platforms. Engage with like-minded individuals, share your culinary experiences, and be a part of a supportive community that celebrates Halal living. Conclusion: Halalzi is more than just an online grocery store. We are a trusted partner dedicated to meeting your Halal grocery needs with a wide selection of quality products, excellent customer service, and a commitment to authenticity. Experience the convenience and reliability of Halalzi today, and embark on a rewarding journey of Halal shopping from the comfort of your own home. Shop with confidence, knowing that Halalzi is here to cater to your Halal lifestyle.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'uploads/website-images/about-us-2022-12-11-11-23-17-9973.png', 'uploads/website-images/video_background-2022-12-11-11-23-17-1758.png', 'uploads/website-images/about-us-2022-12-11-11-23-17-5940.png', NULL, 'fas fa-boxes', 'Choose product', 'Experience hassle-free online shopping with our service!\r\nSimply choose the product you want', 'fas fa-credit-card', 'Make Your Payment', 'Experience hassle-free online shopping with our service! make your payment securely.', 'fas fa-shipping-fast', 'Fast Delivery', 'Experience hassle-free online shopping with our service! enjoy fast delivery right to your doorstep.', 'lcU3pruVyUw', '2022-09-20 08:21:31', '2023-07-03 14:36:02');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `state_id` int(11) NOT NULL DEFAULT 0,
  `city_id` int(11) NOT NULL DEFAULT 0,
  `address` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `default_shipping` int(11) NOT NULL DEFAULT 0,
  `default_billing` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `name`, `email`, `phone`, `country_id`, `state_id`, `city_id`, `address`, `type`, `default_shipping`, `default_billing`, `created_at`, `updated_at`) VALUES
(1, 5, 'a b', 'marohman74@gmail.com', '123355454544', 1, 1, 2, 'ewewee', '1', 1, 1, '2022-09-21 05:45:32', '2022-09-21 05:45:32'),
(2, 5, 'dsds dsdsd', 'marohman74@gmail.com', '1212121212121', 1, 1, 2, 'sdsdsd', '1', 0, 0, '2022-09-21 05:46:27', '2022-09-21 05:46:27'),
(3, 6, 'nayeem', 'nayeem@gmail.com', '1234', 4, 7, 10, 'lonon', 'home', 1, 1, '2022-09-21 06:56:14', '2022-09-21 06:56:14'),
(5, 4, 'Reprehenderit in ni Aliquid dolor labori', 'Quo culpa et offici', 'Architecto quis assu', 2, 4, 8, 'Porro minima consect', '1', 1, 1, '2022-09-21 07:35:41', '2022-09-21 07:35:41'),
(7, 7, 'shibo', 'suvobd@gmail.com', '01777777776', 4, 7, 10, 'Dhaka, Mirpur12', 'home', 1, 1, '2022-09-24 18:41:35', '2023-03-30 06:28:50'),
(9, 6, 'test', 'test@gmail.com', '12348767', 4, 7, 10, 'test', 'home', 0, 0, '2022-09-25 06:35:37', '2022-09-25 06:35:37'),
(11, 19, 'Dolores hic in volup Adipisicing accusant', 'Sed quibusdam dolore', 'Sunt praesentium qui', 2, 5, 9, 'Nesciunt dolore dol', '1', 1, 1, '2022-10-27 16:23:38', '2022-10-27 16:23:38'),
(19, 30, 'Mohammad Ali', 'msalisapan@gmail.com', '01624188877', 4, 7, 11, 'Dhaka, Bangladesh', 'home', 1, 1, '2022-11-10 22:59:45', '2022-11-10 22:59:45'),
(20, 30, 'Ali', 'alimohammad@outlook.com', '01723456789', 1, 1, 2, 'America', 'home', 0, 0, '2022-11-10 23:03:56', '2022-11-10 23:03:56'),
(24, 31, 'Mohammad Ali', 'msalisapan@gmail.com', '01624188866', 1, 1, 2, 'Los Angeles, USA', 'home', 1, 1, '2022-11-15 15:09:23', '2022-11-15 15:09:23'),
(26, 32, 'abdur', 'abdur.rohman2003@gmail.com', '01682825213', 2, 5, 9, 'v', 'home', 1, 1, '2022-11-17 22:52:15', '2022-11-17 22:52:15'),
(29, 34, 'Rafiqul Islam', 'user@u.com', '0177777777777', 2, 5, 9, 'Dhaka,Bangladesh', 'office', 1, 1, '2022-11-30 15:58:42', '2022-12-04 16:16:24'),
(41, 38, 'abdur', 'abdur.rohman2003@gmail.com', '01682825123', 2, 5, 9, 'asdgg', 'home', 1, 1, '2022-12-02 16:05:17', '2022-12-02 16:05:17'),
(46, 7, 'Jhon Abraham', 'jhon.ab@gamil.com', '3214567777', 2, 4, 8, 'Kolkata City', 'home', 0, 0, '2022-12-04 16:36:30', '2022-12-04 16:38:13'),
(49, 7, 'Hassan Khan', 'youabdme@gamail.com', '0197854544', 2, 4, 8, 'Mirpur 11, Dhaka', 'home', 0, 0, '2022-12-08 19:42:16', '2023-01-16 20:42:02'),
(50, 41, 'Ibrahim Khan', 'ibrahim@his.mail.com', '12345678910', 2, 4, 8, 'Mirpur 11', 'home', 1, 1, '2023-01-15 17:46:03', '2023-01-15 17:46:03'),
(51, 42, 'Your name', 'myemail@mail.com.bd', '1236547898', 4, 7, 10, 'Dhaka, Mirpur', 'home', 1, 1, '2023-01-16 15:39:29', '2023-01-16 17:29:13'),
(52, 7, 'Mamunn', 'mamjn@gmakl.com', '0165731884', 4, 7, 10, 'dhaka', 'home', 0, 0, '2023-01-17 16:02:04', '2023-01-17 16:02:04');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_type` int(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 1,
  `forget_password_token` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `admin_type`, `name`, `email`, `image`, `email_verified_at`, `password`, `remember_token`, `status`, `forget_password_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Halalzi', 'admin@gmail.com', 'uploads/website-images/halalzi-2023-06-26-09-38-49-4483.png', NULL, '$2y$10$0auiHdPjcQmTSgqF2teTS.pUw8xy5xkm4TUhzRCK0FWUJdN/eQ34q', '8PcIfNnoUvOqHqieuaATNQxriIPQGs1W39bTO4T4t1OATv7Q0hZmhKhLgsmU', 1, '817805', NULL, '2023-06-26 21:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `announcement_modals`
--

CREATE TABLE `announcement_modals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `expired_date` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcement_modals`
--

INSERT INTO `announcement_modals` (`id`, `status`, `title`, `description`, `image`, `expired_date`, `created_at`, `updated_at`) VALUES
(1, 0, 'GET UP TO 75% OFF', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Exercitationem, facere nesciunt doloremque nobis debitis sint?', 'uploads/website-images/announcement-2022-12-11-11-10-10-4172.png', 5, NULL, '2023-03-23 09:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `bank_payments`
--

CREATE TABLE `bank_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `account_info` text DEFAULT NULL,
  `cash_on_delivery_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_payments`
--

INSERT INTO `bank_payments` (`id`, `status`, `account_info`, `cash_on_delivery_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bank Name: Your bank name\r\nAccount Number:  Your bank account number\r\nRouting Number: Your bank routing number\r\nBranch: Your bank branch name', 1, NULL, '2022-12-01 23:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `banner_images`
--

CREATE TABLE `banner_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `banner_location` varchar(255) DEFAULT NULL,
  `after_product_qty` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_one` varchar(255) DEFAULT NULL,
  `title_two` varchar(255) DEFAULT NULL,
  `badge` varchar(255) DEFAULT NULL,
  `product_slug` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_images`
--

INSERT INTO `banner_images` (`id`, `header`, `title`, `link`, `image`, `banner_location`, `after_product_qty`, `status`, `created_at`, `updated_at`, `title_one`, `title_two`, `badge`, `product_slug`) VALUES
(13, NULL, NULL, '', 'uploads/website-images/banner-2023-06-26-09-35-18-3486.png', 'Login page', 0, 0, NULL, '2023-06-26 21:35:18', NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, 'uploads/website-images/default-avatar-2022-10-31-04-54-06-2202.jpg', 'Default Profile Image', 0, 0, NULL, '2022-10-31 20:54:07', NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, 'uploads/website-images/Mega-menu-2022-12-11-10-35-53-6163.png', 'Three Column First Banner', 0, 1, NULL, '2023-06-30 20:09:18', 'New Style', 'Get 65% Offer & Make New Fusion.', 'Badge', 'খাবার সামগ্রী'),
(17, NULL, NULL, NULL, 'uploads/website-images/Mega-menu-2022-12-11-10-36-14-4822.png', 'Three Column Second Banner', 0, 1, NULL, '2023-03-23 08:48:22', 'Mega Offer', 'Make your New Styles with Our Products', 'Badge', 'bags'),
(18, NULL, NULL, NULL, 'uploads/website-images/Mega-menu-2022-10-24-10-24-35-8150.png', 'Three Column Third Banner', 0, 1, NULL, '2022-10-30 21:37:16', 'Juices', 'Best Fruits Juices', NULL, 'meat'),
(19, NULL, NULL, NULL, 'uploads/website-images/Mega-menu-2022-12-11-10-42-28-6283.png', 'Two Column banner One', 0, 1, NULL, '2023-03-23 08:48:32', 'New Style', 'Get 65% Offer & Make New Fusion.', 'Badge', 'sweatshirt'),
(20, NULL, NULL, NULL, 'uploads/website-images/Mega-menu-2022-12-11-10-42-49-4494.png', 'Two Column Banner two', 0, 1, NULL, '2022-12-11 15:42:49', 'Mega oFFER', 'Make your New Styles with Our Products', 'Badge', 'vegetable'),
(21, NULL, NULL, NULL, 'uploads/website-images/Mega-menu-2022-10-26-11-38-07-1954.png', 'Homepage Single banner one', 0, 1, NULL, '2022-10-30 21:37:34', 'Get the best deal for Grocery', 'You get into the 2k+ best Products in Flash offer with as into the find to makein shaped sofa for sale.', NULL, 'sea-foods'),
(22, NULL, NULL, NULL, 'uploads/website-images/Mega-menu-2022-10-26-11-39-41-1909.png', 'Homepage Single banner Two', 0, 1, NULL, '2022-10-30 21:37:40', 'Get the best deal for Modran Grocery', NULL, NULL, 'meat'),
(23, NULL, NULL, 'https://shopo-ecom.vercel.app/single-product?slug=wireless-headphones-and-earbuds-', 'uploads/website-images/Mega-menu-2022-12-11-11-00-26-9072.png', 'Megamenu banner', 0, 1, NULL, '2023-03-23 08:49:41', 'Accessories', 'Try Out The Best', NULL, 'accessories'),
(24, NULL, '#', '#', 'uploads/website-images/Mega-menu-2022-09-20-10-59-27-3427.png', 'Homepage flash sale sidebar banner', 0, 1, NULL, '2022-09-20 04:59:27', NULL, NULL, NULL, NULL),
(25, NULL, NULL, 'https://shopo-ecom.vercel.app/single-product?slug=wireless-headphones-and-earbuds-', 'uploads/website-images/Mega-menu-2022-12-11-10-54-02-7881.png', 'Shop page center banner', 3, 1, NULL, '2023-03-23 08:48:52', 'Get the best deal for Headphones', NULL, NULL, 'dresses'),
(26, '', '', 'https://shopo-ecom.vercel.app/single-product?slug=wireless-headphones-and-earbuds-', 'uploads/website-images/Mega-menu-2022-12-11-10-57-16-7149.png', 'Shop page sidebar banner', 0, 1, NULL, '2023-03-23 08:49:09', 'Trendy', 'Best wireless Shoes', NULL, 'boots'),
(27, 'Get our latest offer', 'by subscription', '', 'uploads/website-images/banner-2022-11-13-04-44-20-9795.png', 'Subscribe section banner', 0, 1, NULL, '2022-11-13 21:44:20', NULL, NULL, NULL, NULL),
(28, NULL, NULL, 'link', 'uploads/website-images/Mega-menu-2022-06-14-11-26-55-8951.jpg', 'Featured category sidebar banner', 0, 1, NULL, '2022-06-14 05:26:56', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `seo_title` varchar(255) NOT NULL,
  `seo_description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `show_homepage` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `admin_id`, `title`, `slug`, `blog_category_id`, `image`, `description`, `views`, `seo_title`, `seo_description`, `status`, `show_homepage`, `created_at`, `updated_at`) VALUES
(2, 1, 'Business-to-consumer that involves selling fight products', 'businesstoconsumer-that-involves-selling-fight-products', 2, 'uploads/custom-images/blog--2022-12-11-11-13-27-5463.png', '<p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.</p>\r\n<p>Meliore inimicus duo ut, tation veritus elaboraret eam cu. Cum in alii agam aliquip, aperiam salutandi et per. Ex vis summo probatus ocurreret, ex assum sententiae pri, blandit sensibus moderatius ei eos. Vix nobis phaedrum neglegentur et.</p>\r\n<p>Id est maiorum volutpat, ad nominavi suscipit suscipiantur vix. Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum, sit quis simul accusam cu. Usu ei perfecto repudiare tincidunt, ut quas malis erant vim. An mel vidit iudicabit.</p>\r\n<p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.</p>\r\n<p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.</p>', 30, 'Business-to-consumer that involves selling fight products and services', 'Business-to-consumer that involves selling fight products and services', 0, 1, '2022-09-22 10:09:44', '2023-07-04 22:35:23'),
(3, 1, 'Top 10 Best Professional Blogging Platforms for 2022', 'top-10-best-professional-blogging-platforms-for-2022', 3, 'uploads/custom-images/blog--2022-12-11-11-13-35-9969.png', '<p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.</p>\r\n<p>Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.</p>\r\n<p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu.</p>\r\n<p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur.</p>\r\n<p>Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.</p>\r\n<p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.</p>', 40, 'Top 10 Best Professional Blogging Platforms for 2022', 'Top 10 Best Professional Blogging Platforms for 2022', 0, 1, '2022-09-22 10:12:00', '2023-07-04 22:35:25'),
(4, 1, '6 Best WordPress E-commerce Plugins for Online Stores in 2022', '6-best-wordpress-ecommerce-plugins-for-online-stores-in-2022', 5, 'uploads/custom-images/blog--2022-12-11-11-13-43-6228.png', '<p>In vim natum soleat nostro, pri in eloquentiam contentiones. Eu sit sapientem reprehendunt, omnis aliquid eu eos. No quot illum veniam est, ne pro iudico saperet mnesarchum. Ea pri nostro disputando contentiones, eu nec menandri qualisque, vis ex equidem invidunt. Et accusam detracto splendide per, congue meliore id sea. Has eu aeterno patrioque expetendis, mel ei dissentiet reformidans.</p>\r\n<p>Meliore inimicus duo ut, tation veritus elaboraret eam cu. Cum in alii agam aliquip, aperiam salutandi et per. Ex vis summo probatus ocurreret, ex assum sententiae pri, blandit sensibus moderatius ei eos. Vix nobis phaedrum neglegentur et.</p>\r\n<p>Id est maiorum volutpat, ad nominavi suscipit suscipiantur vix. Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum, sit quis simul accusam cu. Usu ei perfecto repudiare tincidunt, ut quas malis erant vim. An mel vidit iudicabit.</p>\r\n<p>Appetere fabellas ius te. Nonumes splendide deseruisse ea vis, alii velit vel eu. Eos ut scaevola platonem rationibus. Vis natum vivendo sententiae in, ea aperiam apeirian pri, in partem eleifend quo. Pro ex nobis utinam, nam et vidit numquam fastidii, ne per munere adolescens.</p>\r\n<p>Appetere fabellas ius te. Nonumes splendide deseruisse ea vis, alii velit vel eu. Eos ut scaevola platonem rationibus. Vis natum vivendo sententiae in, ea aperiam apeirian pri, in partem eleifend quo. Pro ex nobis utinam, nam et vidit numquam fastidii, ne per munere adolescens. Appetere fabellas ius te. Nonumes splendide deseruisse ea vis, alii velit vel eu. Eos ut scaevola platonem rationibus. Vis natum vivendo sententiae in, ea aperiam apeirian pri, in partem eleifend quo.&nbsp;</p>', 21, '6 Best WordPress E-commerce Plugins for Online Stores in 2022', '6 Best WordPress E-commerce Plugins for Online Stores in 2022', 0, 1, '2022-09-22 10:13:57', '2023-07-04 22:35:26'),
(5, 1, '15 Best WordPress Newspaper Themes to Look Out for in 2022', '15-best-wordpress-newspaper-themes-to-look-out-for-in-2022', 5, 'uploads/custom-images/blog--2022-12-11-11-14-38-3134.png', '<p>Appetere fabellas ius te. Nonumes splendide deseruisse ea vis, alii velit vel eu. Eos ut scaevola platonem rationibus. Vis natum vivendo sententiae in, ea aperiam apeirian pri, in partem eleifend quo. Pro ex nobis utinam, nam et vidit numquam fastidii, ne per munere adolescens.</p>\r\n<p>Ipsum volumus pertinax mea ut, eu erat tacimates nam. Tibique copiosae verterem mea no, eam ex melius option, soluta timeam et his. Sit simul gubergren reformidans id, amet minimum nominavi eos ea. Et augue dicta vix. Mea ne utamur referrentur.</p>\r\n<p>Ipsum volumus pertinax mea ut, eu erat tacimates nam. Tibique copiosae verterem mea no, eam ex melius option, soluta timeam et his. Sit simul gubergren reformidans id, amet minimum nominavi eos ea. Et augue dicta vix. Mea ne utamur referrentur. Ipsum volumus pertinax mea ut, eu erat tacimates nam. Tibique copiosae verterem mea no.&nbsp;</p>\r\n<p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit.&nbsp;</p>\r\n<p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer.</p>\r\n<p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.</p>\r\n<p>Sint dignissim consectetuer nec et, per ad probatus referrentur, vel cu consequat sententiae. Ad duis fugit dictas mea, et cum stet oratio cetero. Ne pri omittam fastidii. No per harum dicant neglegentur, sea ei esse volumus adolescens. Nulla argumentum at pri, vel apeirian principes in. An dicam dicant consul me</p>', 55, '15 Best WordPress Newspaper Themes to Look Out for in 2022', '15 Best WordPress Newspaper Themes to Look Out for in 2022', 0, 1, '2022-09-22 10:14:55', '2023-07-04 22:35:26'),
(6, 1, 'Must-Have WordPress Plugins for Ecommerce Websites in 2022', 'musthave-wordpress-plugins-for-ecommerce-websites-in-2022', 4, 'uploads/custom-images/blog--2022-12-11-11-14-46-2660.png', '<p>Sint dignissim consectetuer nec et, per ad probatus referrentur, vel cu consequat sententiae. Ad duis fugit dictas mea, et cum stet oratio cetero. Ne pri omittam fastidii. No per harum dicant neglegentur, sea ei esse volumus adolescens. Nulla argumentum at pri, vel apeirian principes in. An dicam dicant consul mea, ne per option appetere argumentum, vim legere senserit et.</p>\r\n<p>Sit vivendum eleifend adipiscing ea. Modus legere suscipiantur an vel, melius patrioque est cu, eum at audire probatus repudiandae. Ei tempor definitiones eam, sea dico omnium ne. Eam ad ubique tincidunt elaboraret, malis aperiri sit et. Ut quo vero inimicus. Sed at munere fuisset noluisse, eleifend senserit an vix.</p>\r\n<p>Ipsum volumus pertinax mea ut, eu erat tacimates nam. Tibique copiosae verterem mea no, eam ex melius option, soluta timeam et his. Sit simul gubergren reformidans id, amet minimum nominavi eos ea. Et augue dicta vix. Mea ne utamur referrentur.</p>\r\n<p>Appetere fabellas ius te. Nonumes splendide deseruisse ea vis, alii velit vel eu. Eos ut scaevola platonem rationibus. Vis natum vivendo sententiae in, ea aperiam apeirian pri, in partem eleifend quo. Pro ex nobis utinam, nam et vidit numquam fastidii, ne per munere adolescens.</p>\r\n<p>Id est maiorum volutpat, ad nominavi suscipit suscipiantur vix. Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum, sit quis simul accusam cu. Usu ei perfecto repudiare tincidunt, ut quas malis erant vim. An mel vidit iudicabit.</p>', 45, 'Must-Have WordPress Plugins for Ecommerce Websites in 2022', 'Must-Have WordPress Plugins for Ecommerce Websites in 2022', 0, 0, '2022-09-22 10:15:55', '2023-07-04 22:35:27'),
(7, 1, 'It’s official! The iPhone 14 Series is on its way! Rumors turned out to be true. The Goods & the Bads.', 'its-official-the-iphone-14-series-is-on-its-way-rumors-turned-out-to-be-true-the-goods-the-bads', 2, 'uploads/custom-images/blog--2022-12-11-11-14-55-9096.png', '<p>Id est maiorum volutpat, ad nominavi suscipit suscipiantur vix. Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum, sit quis simul accusam cu. Usu ei perfecto repudiare tincidunt, ut quas malis erant vim. An mel vidit iudicabit.</p>\r\n<p>Per ex vero nonumy. Ius eu doming nominavi mediocrem, aliquid efficiantur no vim, sanctus admodum mnesarchum ad pro. No sea invidunt partiendo. No postea numquam ocurreret duo, unum abhorreant cu nam, fugit fastidii percipitur nam id.</p>\r\n<p>Sit vivendum eleifend adipiscing ea. Modus legere suscipiantur an vel, melius patrioque est cu, eum at audire probatus repudiandae. Ei tempor definitiones eam, sea dico omnium ne. Eam ad ubique tincidunt elaboraret, malis aperiri sit et. Ut quo vero inimicus. Sed at munere fuisset noluisse, eleifend senserit an vix.</p>\r\n<p>Sint dignissim consectetuer nec et, per ad probatus referrentur, vel cu consequat sententiae. Ad duis fugit dictas mea, et cum stet oratio cetero. Ne pri omittam fastidii. No per harum dicant neglegentur, sea ei esse volumus adolescens. Nulla argumentum at pri, vel apeirian principes in. An dicam dicant consul mea, ne per option appetere argumentum, vim legere senserit et.</p>\r\n<p>No per harum dicant neglegentur, sea ei esse volumus adolescens. Nulla argumentum at pri, vel apeirian principes in. An dicam dicant consul mea, ne per option appetere argumentum, vim legere senserit et.</p>\r\n<p>Appetere fabellas ius te. Nonumes splendide deseruisse ea vis, alii velit vel eu. Eos ut scaevola platonem rationibus. Vis natum vivendo sententiae in, ea aperiam apeirian pri, in partem eleifend quo. Pro ex nobis utinam, nam et vidit numquam fastidii, ne per munere adolescens.</p>', 36, 'It’s official! The iPhone 14 Series is on its way! Rumors turned out to be true. The Goods & the Bads.', 'It’s official! The iPhone 14 Series is on its way! Rumors turned out to be true. The Goods & the Bads.', 0, 1, '2022-09-22 10:18:09', '2023-07-04 22:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Development', 'development', 0, '2022-09-22 10:05:56', '2023-07-09 14:53:47'),
(3, 'Guide', 'guide-', 0, '2022-09-22 10:06:06', '2023-07-09 14:53:48'),
(4, 'Inspiration', 'inspiration-', 0, '2022-09-22 10:06:13', '2023-07-09 14:53:48'),
(5, 'Latest News', 'latest-news', 0, '2022-09-22 10:06:25', '2023-07-09 14:53:50'),
(6, 'Revenue', 'revenue-', 0, '2022-09-22 10:06:37', '2023-07-09 14:53:50'),
(7, 'Start Up', 'start-up', 0, '2022-09-22 10:06:48', '2023-07-09 14:53:51'),
(8, 'Technology', 'technology', 0, '2022-09-22 10:06:56', '2023-07-09 14:53:51');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `blog_id`, `name`, `email`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(3, 5, 'Abel Spencer', 'sicyxohore@mailinator.com', 'Molestiae totam magn', 1, '2022-09-25 10:22:20', '2022-11-03 06:52:12'),
(4, 6, 'Hannah Nunez', 'hupymug@mailinator.com', 'Vel ea fugit ad duc', 1, '2022-09-25 11:05:46', '2022-11-03 06:52:13'),
(5, 2, 'Dara Odom', 'caqo@mailinator.com', 'Ducimus doloremque', 1, '2022-09-25 11:38:22', '2022-11-03 06:52:13'),
(6, 2, 'Boris David', 'jypiw@mailinator.com', 'Ipsum quam harum co', 1, '2022-09-25 11:39:26', '2022-11-03 06:52:14'),
(7, 3, 'Cara Jarvis', 'matekyd@mailinator.com', 'Corporis deserunt ea', 1, '2022-10-31 20:54:48', '2022-11-03 06:52:15'),
(8, 2, 'AJOY', 'ajoy.quomodosoft@gmail.com', 'Very helpfull', 0, '2023-01-21 23:06:08', '2023-01-21 23:06:08'),
(9, 6, 'Ajoy', 'ajoy.quomodosoft@gmail.com', 'Very fantace', 0, '2023-01-21 23:13:24', '2023-01-21 23:13:24'),
(10, 3, 'John Doe', 'khalil.cmt.bpi@gmail.com', 'Leave a comment', 0, '2023-02-11 21:39:59', '2023-02-11 21:39:59');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Refined Threads', 'refined-threads', 'uploads/custom-images/oneplus-2022-09-25-04-15-53-8330.png', 0, '2022-09-20 07:16:12', '2023-06-30 11:30:11'),
(3, 'Urban Hive', 'urban-hive', 'uploads/custom-images/apple-2022-09-25-04-16-05-2914.png', 0, '2022-09-20 07:16:43', '2023-06-30 11:30:10');

-- --------------------------------------------------------

--
-- Table structure for table `breadcrumb_images`
--

CREATE TABLE `breadcrumb_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `image_type` int(11) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `breadcrumb_images`
--

INSERT INTO `breadcrumb_images` (`id`, `location`, `image_type`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Brand Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-00-6529.jpg', NULL, '2022-02-11 09:19:03'),
(2, 'Cart Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-13-2295.jpg', NULL, '2022-02-11 09:19:16'),
(3, 'Campaign Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-26-4555.jpg', NULL, '2022-02-11 09:19:28'),
(4, 'FAQ page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-38-5297.jpg', NULL, '2022-02-11 09:19:40'),
(5, 'User Authentication', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-51-4946.jpg', NULL, '2022-02-11 09:19:53'),
(6, 'Compare Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-02-1928.jpg', NULL, '2022-02-11 09:20:04'),
(7, 'Order Tracking Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-16-5029.jpg', NULL, '2022-02-11 09:20:18'),
(8, 'Vendor Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-28-1461.jpg', NULL, '2022-02-11 09:20:30'),
(9, 'Shop Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-39-4557.jpg', NULL, '2022-02-11 09:20:41'),
(10, 'Blog page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-51-3046.jpg', NULL, '2022-02-11 09:20:54'),
(11, 'Flash Deal Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-21-04-8636.jpg', NULL, '2022-02-11 09:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'পছন্দের পণ্য তালিকা', 'favourites', 'fa-solid fa-vest', 'uploads/custom-images/category-2023-07-03-02-42-20-1036.webp', 1, '2022-09-20 05:16:25', '2023-07-11 20:39:44'),
(12, 'খাবার সামগ্রী', 'খাবার সামগ্রী', 'fas fa-cart-arrow-down', 'uploads/custom-images/category-2023-07-02-01-37-27-3504.webp', 1, '2023-06-25 19:38:07', '2023-07-02 13:37:27'),
(13, 'পরিষ্কারের সামগ্রী', 'পরিষ্কারের সামগ্রী', 'fas fa-angle-down', 'uploads/custom-images/category-2023-07-02-01-48-08-7047.webp', 1, '2023-07-02 13:48:08', '2023-07-02 13:48:08'),
(14, 'প্রসাধন সামগ্রী', 'প্রসাধন সামগ্রী', 'fas fa-angle-double-down', 'uploads/custom-images/category-2023-07-02-02-11-45-7137.webp', 1, '2023-07-02 14:11:45', '2023-07-02 14:11:45'),
(15, 'স্বাস্থ্য এবং সুস্থতা', 'স্বাস্থ্য এবং সুস্থতা', 'fas fa-angle-down', 'uploads/custom-images/category-2023-07-02-02-13-22-3851.webp', 1, '2023-07-02 14:13:22', '2023-07-02 14:13:22'),
(16, 'শিশুদের ব্যবহার্য', 'শিশুদের ব্যবহার্য', 'fas fa-angle-down', 'uploads/custom-images/category-2023-07-02-02-14-53-6930.webp', 1, '2023-07-02 14:14:53', '2023-07-02 14:14:53'),
(17, 'সৌন্দর্য এবং মেক আপ', '-সৌন্দর্য এবং মেক আপ', 'fas fa-angle-down', 'uploads/custom-images/category-2023-07-02-03-25-12-7568.webp', 1, '2023-07-02 14:22:42', '2023-07-02 15:25:12'),
(18, 'ফ্যাশন এবং লাইফস্টাইল', 'ফ্যাশন এবং লাইফস্টাইল', 'fas fa-angle-down', 'uploads/custom-images/category-2023-07-02-02-24-28-5093.webp', 1, '2023-07-02 14:24:28', '2023-07-02 14:24:28'),
(20, 'Desktop', 'desktop', 'fas fa-desktop', 'uploads/custom-images/category-2023-08-08-08-59-32-2230.jpg', 1, '2023-08-08 14:59:32', '2023-08-08 14:59:32'),
(21, 'Laptop', 'laptop', 'fas fa-laptop', 'uploads/custom-images/category-2023-08-08-09-00-31-9936.jpg', 1, '2023-08-08 15:00:31', '2023-08-08 15:00:31'),
(22, 'Component', 'component', 'far fa-compass', 'uploads/custom-images/category-2023-08-08-09-01-49-8967.jpg', 1, '2023-08-08 15:01:49', '2023-08-08 15:01:49'),
(23, 'Monitor', 'monitor', 'fas fa-desktop', 'uploads/custom-images/category-2023-08-08-09-03-02-3638.jpg', 1, '2023-08-08 15:03:02', '2023-08-08 15:03:02'),
(24, 'UPS', 'ups', 'fab fa-snapchat', 'uploads/custom-images/category-2023-08-08-09-03-56-1256.jpg', 1, '2023-08-08 15:03:56', '2023-08-08 15:03:56'),
(25, 'Phone', 'phone', 'fas fa-phone-square', 'uploads/custom-images/category-2023-08-08-09-04-44-2233.jpg', 1, '2023-08-08 15:04:44', '2023-08-08 15:04:44'),
(26, 'Tablet', 'tablet-', 'fas fa-tablet-alt', 'uploads/custom-images/category-2023-08-08-09-05-48-5341.jpg', 1, '2023-08-08 15:05:49', '2023-08-08 15:05:49'),
(27, 'Camera', 'camera', 'fas fa-camera', 'uploads/custom-images/category-2023-08-08-09-07-16-2764.jpg', 1, '2023-08-08 15:07:16', '2023-08-08 15:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `child_categories`
--

CREATE TABLE `child_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) NOT NULL,
  `sub_category_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_categories`
--

INSERT INTO `child_categories` (`id`, `category_id`, `sub_category_id`, `name`, `slug`, `status`, `image`, `created_at`, `updated_at`) VALUES
(7, 12, 10, 'মশলা', 'মশলা', 1, 'uploads/custom-images/child-category-2023-06-30-07-36-05-5118.webp', '2023-06-25 19:44:26', '2023-06-30 19:36:05'),
(8, 12, 10, 'চাল', 'চাল', 1, 'uploads/custom-images/child-category-2023-06-30-07-38-03-3844.webp', '2023-06-25 19:44:50', '2023-06-30 19:38:04'),
(9, 12, 10, 'তেল', 'তেল', 1, 'uploads/custom-images/child-category-2023-06-30-07-39-34-8748.webp', '2023-06-25 19:45:22', '2023-06-30 19:39:34'),
(10, 12, 10, 'ডাল', 'ডাল', 1, 'uploads/custom-images/child-category-2023-06-30-07-45-33-8481.webp', '2023-06-25 19:47:03', '2023-06-30 19:45:33'),
(11, 12, 11, 'Noodles', 'noodles', 1, NULL, '2023-06-25 19:48:30', '2023-06-25 19:48:30'),
(12, 12, 11, 'Cookies', 'cookies', 1, NULL, '2023-06-25 19:48:53', '2023-06-25 19:48:53'),
(13, 12, 11, 'Chips & Pretzels', 'chips-pretzels', 1, NULL, '2023-06-25 19:49:25', '2023-06-25 19:49:25'),
(14, 12, 11, 'Soups', 'soups', 1, NULL, '2023-06-25 19:50:21', '2023-06-25 19:50:21'),
(15, 12, 13, 'Eggs', 'eggs', 1, 'uploads/custom-images/child-category-2023-06-28-06-46-03-8829.webp', '2023-06-25 19:51:31', '2023-06-28 18:46:03'),
(16, 12, 12, 'Powder Milk', 'powder-milk', 1, NULL, '2023-06-25 19:51:58', '2023-06-25 19:51:58'),
(17, 12, 12, 'Yogurt & Sweets', 'yogurt-sweets', 1, NULL, '2023-06-25 19:59:16', '2023-06-25 19:59:16'),
(18, 12, 13, 'Breads', 'breads', 1, 'uploads/custom-images/child-category-2023-06-28-06-46-37-6624.webp', '2023-06-27 09:34:36', '2023-06-28 18:46:37'),
(19, 12, 13, 'Tea & Coffee', 'tea-coffee', 1, 'uploads/custom-images/child-category-2023-06-28-06-49-19-8601.webp', '2023-06-27 09:35:01', '2023-06-28 18:49:19'),
(20, 12, 13, 'Local Breakfast', 'local-breakfast', 1, 'uploads/custom-images/child-category-2023-06-28-06-49-47-7776.webp', '2023-06-27 09:35:40', '2023-06-28 18:49:47'),
(21, 12, 13, 'Cereals', 'cereals', 1, 'uploads/custom-images/child-category-2023-06-28-06-50-23-7189.webp', '2023-06-27 09:36:24', '2023-06-28 18:50:23'),
(22, 12, 13, 'Honey', 'honey', 1, 'uploads/custom-images/child-category-2023-06-28-06-51-04-2462.webp', '2023-06-27 09:36:50', '2023-06-28 18:51:04'),
(23, 12, 13, 'Dips, Spreads & Syrups', 'dips-spreads-syrups', 1, 'uploads/custom-images/child-category-2023-06-28-06-44-40-8881.webp', '2023-06-27 09:37:16', '2023-06-28 18:44:40'),
(24, 12, 13, 'Energy Boosters', 'energy-boosters', 1, 'uploads/custom-images/child-category-2023-06-28-06-51-32-3722.webp', '2023-06-27 09:37:39', '2023-06-28 18:51:33'),
(25, 12, 13, 'Jams & Jellies', 'jams-jellies', 1, 'uploads/custom-images/child-category-2023-06-28-06-51-56-2362.webp', '2023-06-27 09:38:09', '2023-06-28 18:51:56'),
(26, 12, 10, 'লবন এবং চিনি', 'লবন এবং চিনি', 1, 'uploads/custom-images/child-category-2023-06-30-07-58-58-3248.webp', '2023-06-28 19:00:34', '2023-06-30 19:58:58'),
(28, 12, 10, 'রেডি মিক্স', 'রেডি মিক্স', 1, 'uploads/custom-images/child-category-2023-06-30-07-57-24-7885.webp', '2023-06-28 19:05:58', '2023-06-30 19:57:24'),
(29, 12, 10, 'সেমাই ও সুজি', 'সেমাই ও সুজি', 1, 'uploads/custom-images/child-category-2023-06-30-08-00-43-2356.webp', '2023-06-28 19:11:07', '2023-06-30 20:00:43'),
(30, 12, 10, 'রান্নার বিভিন্ন সামগ্রী', 'রান্নার বিভিন্ন সামগ্রী', 1, 'uploads/custom-images/child-category-2023-06-30-08-03-10-8435.webp', '2023-06-28 19:16:08', '2023-06-30 20:03:10'),
(31, 12, 10, 'কালারস ও ফ্লেভারস', 'কালারস ও ফ্লেভারস', 1, 'uploads/custom-images/child-category-2023-06-30-08-03-58-9084.webp', '2023-06-28 19:19:38', '2023-06-30 20:03:58'),
(32, 12, 10, 'ঘি', 'ঘি', 1, 'uploads/custom-images/child-category-2023-06-30-08-04-45-1492.webp', '2023-06-28 19:20:22', '2023-06-30 20:04:45'),
(33, 12, 15, 'Tomato Sauces', 'tomato-sauces', 1, 'uploads/custom-images/child-category-2023-06-28-07-22-43-4235.webp', '2023-06-28 19:22:43', '2023-06-28 19:22:43'),
(34, 12, 15, 'Pickles', 'pickles', 1, 'uploads/custom-images/child-category-2023-06-28-07-23-34-4742.webp', '2023-06-28 19:23:34', '2023-06-28 19:23:34'),
(35, 12, 15, 'Cooking Sauces', 'cooking-sauces', 1, 'uploads/custom-images/child-category-2023-06-28-07-25-03-8044.webp', '2023-06-28 19:25:03', '2023-06-28 19:25:03'),
(36, 12, 15, 'Other Table Sauces', 'other-table-sauces', 1, 'uploads/custom-images/child-category-2023-06-30-08-06-34-6373.webp', '2023-06-28 19:40:55', '2023-06-30 20:06:34'),
(38, 16, 28, 'দুধ, জুস এবং পানীয়', 'milk-juice-drinks', 1, 'uploads/custom-images/child-category-2023-07-09-09-05-17-6816.webp', '2023-07-09 21:05:17', '2023-07-09 21:05:17'),
(39, 16, 28, 'শিশু খাদ্য', 'toddler-food', 1, 'uploads/custom-images/child-category-2023-07-09-09-19-44-1642.webp', '2023-07-09 21:19:44', '2023-07-09 21:19:44'),
(40, 16, 28, 'ফর্মুলা', 'formula', 1, 'uploads/custom-images/child-category-2023-07-09-09-22-13-8554.webp', '2023-07-09 21:22:13', '2023-07-09 21:22:13');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_state_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_state_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Florida City', 'florida-city', 0, '2022-01-30 09:29:19', '2023-06-26 21:31:08'),
(2, 1, 'Los Angeles', 'los-angeles', 0, '2022-01-30 09:29:29', '2023-06-26 21:31:08'),
(4, 2, 'Tallahassee', 'tallahassee', 0, '2022-02-06 04:18:49', '2023-06-26 21:31:09'),
(5, 2, 'Weston', 'weston', 0, '2022-02-06 04:19:56', '2023-06-26 21:31:09'),
(6, 1, 'San Jose', 'san-jose', 0, '2022-02-06 04:21:08', '2023-06-26 21:31:10'),
(7, 1, 'San Diego', 'san-diego', 0, '2022-02-06 04:21:26', '2023-06-26 21:31:10'),
(8, 4, 'Gandhinagar', 'gandhinagar', 0, '2022-02-06 04:22:21', '2023-06-26 21:31:11'),
(9, 5, 'Chandigarh', 'chandigarh', 0, '2022-02-06 04:22:44', '2023-06-26 21:31:11'),
(10, 7, 'London', 'london', 0, '2022-02-06 04:23:12', '2023-06-26 21:31:12'),
(11, 7, 'Liverpool', 'liverpool', 0, '2022-02-06 04:23:29', '2023-06-26 21:31:13'),
(17, 13, 'Shariatpur', 'shariatpur', 1, '2023-06-26 21:31:32', '2023-06-26 21:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `compare_products`
--

CREATE TABLE `compare_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_pages`
--

CREATE TABLE `contact_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `map` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_pages`
--

INSERT INTO `contact_pages` (`id`, `title`, `description`, `email`, `address`, `phone`, `map`, `created_at`, `updated_at`) VALUES
(1, 'Contact Information', 'Fill the form below or write us .We will help you as soon as possible.', 'halalzi@gmail.com', '2140 W Thunderbird Rd, Phoenix, Arkansas 85023, United States', '+1347-430-9510', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7304.67270436821!2d90.38005526977537!3d23.735382200000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8c6d25f0a91%3A0xf8da21d64c3856dc!2sNew%20Work%20Aquarium%20Center!5e0!3m2!1sen!2sbd!4v1668246013351!5m2!1sen!2sbd', '2022-09-22 11:08:24', '2023-07-08 14:07:06');

-- --------------------------------------------------------

--
-- Table structure for table `cookie_consents`
--

CREATE TABLE `cookie_consents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `border` varchar(255) DEFAULT NULL,
  `corners` varchar(255) DEFAULT NULL,
  `background_color` varchar(255) DEFAULT NULL,
  `text_color` varchar(255) DEFAULT NULL,
  `border_color` varchar(255) DEFAULT NULL,
  `btn_bg_color` varchar(255) DEFAULT NULL,
  `btn_text_color` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `link_text` varchar(255) DEFAULT NULL,
  `btn_text` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cookie_consents`
--

INSERT INTO `cookie_consents` (`id`, `status`, `border`, `corners`, `background_color`, `text_color`, `border_color`, `btn_bg_color`, `btn_text_color`, `message`, `link_text`, `btn_text`, `link`, `created_at`, `updated_at`) VALUES
(1, 1, 'thin', 'normal', '#184dec', '#fafafa', '#0a58d6', '#fffceb', '#222758', 'This website uses essential cookies to ensure its proper operation and tracking cookies to understand how you interact with it. The latter will be set only upon approval.', 'More Info', 'Yes', NULL, NULL, '2022-11-14 03:39:20');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'United State', 'united-state', 0, '2022-01-30 09:28:28', '2023-06-26 21:30:51'),
(2, 'India', 'india', 0, '2022-01-30 09:28:39', '2023-06-26 21:30:51'),
(4, 'United Kindom', 'united-kindom', 0, '2022-02-06 04:11:51', '2023-06-26 21:30:47'),
(10, 'Bangladesh', 'bangladesh', 1, '2022-09-22 05:46:54', '2023-06-26 21:30:49');

-- --------------------------------------------------------

--
-- Table structure for table `country_states`
--

CREATE TABLE `country_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country_states`
--

INSERT INTO `country_states` (`id`, `country_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'California', 'california', 1, '2022-01-30 09:29:00', '2022-02-06 04:14:28'),
(2, 1, 'Florida', 'florida', 1, '2022-01-30 09:29:07', '2022-02-06 04:14:42'),
(3, 1, 'Alaska', 'alaska', 1, '2022-02-05 07:49:14', '2022-02-06 04:15:09'),
(4, 2, 'Gujarat', 'gujarat', 1, '2022-02-06 04:16:27', '2022-02-06 04:16:27'),
(5, 2, 'Punjab', 'punjab', 1, '2022-02-06 04:16:39', '2022-02-06 04:16:39'),
(6, 2, 'Rajasthan', 'rajasthan', 1, '2022-02-06 04:16:48', '2022-02-06 04:16:48'),
(7, 4, 'England', 'england', 1, '2022-02-06 04:17:35', '2022-02-06 04:17:35'),
(8, 4, 'Scotland', 'scotland', 1, '2022-02-06 04:17:44', '2022-02-06 04:17:44'),
(9, 4, 'Wales', 'wales', 1, '2022-02-06 04:17:53', '2022-02-06 04:17:53'),
(13, 10, 'Shariatpur', 'shariatpur', 1, '2023-06-26 21:30:34', '2023-06-26 21:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `min_purchase_price` varchar(255) NOT NULL,
  `offer_type` int(11) NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `max_quantity` int(11) NOT NULL DEFAULT 0,
  `expired_date` varchar(191) NOT NULL,
  `apply_qty` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `min_purchase_price`, `offer_type`, `discount`, `max_quantity`, `expired_date`, `apply_qty`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Happy New Year', 'newyear', '600', 1, 50, 100, '2025-11-26', 10, 1, '2022-11-10 19:33:12', '2023-06-27 13:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `couriers`
--

INSERT INTO `couriers` (`id`, `name`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Redx', '0156456456', 'client@client.com', 'dhaka', '2022-12-17 07:59:45', '2022-12-17 07:59:45'),
(2, 'Pathao', NULL, NULL, 'Mohammadpur, Dhaka', '2023-05-23 14:17:12', '2023-05-23 14:17:12'),
(3, 'Steadfast', NULL, NULL, 'Mohammadpur, Dhaka', '2023-05-23 14:17:12', '2023-05-23 14:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `code` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'AFA', 'Afghan Afghani', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'ALL', 'Albanian Lek', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'DZD', 'Algerian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'AOA', 'Angolan Kwanza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'ARS', 'Argentine Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'AMD', 'Armenian Dram', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'AWG', 'Aruban Florin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'AUD', 'Australian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'AZN', 'Azerbaijani Manat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'BSD', 'Bahamian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'BHD', 'Bahraini Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'BDT', 'Bangladeshi Taka', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'BBD', 'Barbadian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'BYR', 'Belarusian Ruble', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'BEF', 'Belgian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'BZD', 'Belize Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'BMD', 'Bermudan Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'BTN', 'Bhutanese Ngultrum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'BTC', 'Bitcoin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'BOB', 'Bolivian Boliviano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'BAM', 'Bosnia-Herzegovina Convertible Mark', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'BWP', 'Botswanan Pula', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'BRL', 'Brazilian Real', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'GBP', 'British Pound Sterling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'BND', 'Brunei Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'BGN', 'Bulgarian Lev', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'BIF', 'Burundian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'KHR', 'Cambodian Riel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'CAD', 'Canadian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'CVE', 'Cape Verdean Escudo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'KYD', 'Cayman Islands Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'XOF', 'CFA Franc BCEAO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'XAF', 'CFA Franc BEAC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'XPF', 'CFP Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'CLP', 'Chilean Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'CNY', 'Chinese Yuan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'COP', 'Colombian Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'KMF', 'Comorian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'CDF', 'Congolese Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'CRC', 'Costa Rican ColÃ³n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'HRK', 'Croatian Kuna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'CUC', 'Cuban Convertible Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'CZK', 'Czech Republic Koruna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'DKK', 'Danish Krone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'DJF', 'Djiboutian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'DOP', 'Dominican Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'XCD', 'East Caribbean Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'EGP', 'Egyptian Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'ERN', 'Eritrean Nakfa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'EEK', 'Estonian Kroon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'ETB', 'Ethiopian Birr', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'EUR', 'Euro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'FKP', 'Falkland Islands Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'FJD', 'Fijian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'GMD', 'Gambian Dalasi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'GEL', 'Georgian Lari', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'DEM', 'German Mark', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'GHS', 'Ghanaian Cedi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'GIP', 'Gibraltar Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'GRD', 'Greek Drachma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'GTQ', 'Guatemalan Quetzal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'GNF', 'Guinean Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'GYD', 'Guyanaese Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'HTG', 'Haitian Gourde', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'HNL', 'Honduran Lempira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'HKD', 'Hong Kong Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'HUF', 'Hungarian Forint', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'ISK', 'Icelandic KrÃ³na', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'INR', 'Indian Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'IDR', 'Indonesian Rupiah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'IRR', 'Iranian Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'IQD', 'Iraqi Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'ILS', 'Israeli New Sheqel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'ITL', 'Italian Lira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'JMD', 'Jamaican Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'JPY', 'Japanese Yen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'JOD', 'Jordanian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'KZT', 'Kazakhstani Tenge', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'KES', 'Kenyan Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'KWD', 'Kuwaiti Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'KGS', 'Kyrgystani Som', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'LAK', 'Laotian Kip', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'LVL', 'Latvian Lats', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'LBP', 'Lebanese Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'LSL', 'Lesotho Loti', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'LRD', 'Liberian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'LYD', 'Libyan Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'LTL', 'Lithuanian Litas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'MOP', 'Macanese Pataca', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'MKD', 'Macedonian Denar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'MGA', 'Malagasy Ariary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'MWK', 'Malawian Kwacha', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'MYR', 'Malaysian Ringgit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'MVR', 'Maldivian Rufiyaa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'MRO', 'Mauritanian Ouguiya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'MUR', 'Mauritian Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'MXN', 'Mexican Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'MDL', 'Moldovan Leu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'MNT', 'Mongolian Tugrik', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'MAD', 'Moroccan Dirham', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'MZM', 'Mozambican Metical', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'MMK', 'Myanmar Kyat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'NAD', 'Namibian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'NPR', 'Nepalese Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'ANG', 'Netherlands Antillean Guilder', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'TWD', 'New Taiwan Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'NZD', 'New Zealand Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'NIO', 'Nicaraguan CÃ³rdoba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'NGN', 'Nigerian Naira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'KPW', 'North Korean Won', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'NOK', 'Norwegian Krone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'OMR', 'Omani Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'PKR', 'Pakistani Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'PAB', 'Panamanian Balboa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'PGK', 'Papua New Guinean Kina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'PYG', 'Paraguayan Guarani', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'PEN', 'Peruvian Nuevo Sol', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'PHP', 'Philippine Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'PLN', 'Polish Zloty', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'QAR', 'Qatari Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'RON', 'Romanian Leu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'RUB', 'Russian Ruble', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'RWF', 'Rwandan Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'SVC', 'Salvadoran ColÃ³n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'WST', 'Samoan Tala', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'SAR', 'Saudi Riyal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'RSD', 'Serbian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'SCR', 'Seychellois Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'SLL', 'Sierra Leonean Leone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'SGD', 'Singapore Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'SKK', 'Slovak Koruna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'SBD', 'Solomon Islands Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'SOS', 'Somali Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'ZAR', 'South African Rand', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'KRW', 'South Korean Won', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'XDR', 'Special Drawing Rights', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'LKR', 'Sri Lankan Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'SHP', 'St. Helena Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'SDG', 'Sudanese Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'SRD', 'Surinamese Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'SZL', 'Swazi Lilangeni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'SEK', 'Swedish Krona', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'CHF', 'Swiss Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'SYP', 'Syrian Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'STD', 'São Tomé and Príncipe Dobra', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'TJS', 'Tajikistani Somoni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'TZS', 'Tanzanian Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'THB', 'Thai Baht', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'TOP', 'Tongan pa\'anga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'TTD', 'Trinidad & Tobago Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'TND', 'Tunisian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'TRY', 'Turkish Lira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'TMT', 'Turkmenistani Manat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'UGX', 'Ugandan Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'UAH', 'Ukrainian Hryvnia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'AED', 'United Arab Emirates Dirham', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'UYU', 'Uruguayan Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'USD', 'US Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'UZS', 'Uzbekistan Som', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'VUV', 'Vanuatu Vatu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'VEF', 'Venezuelan BolÃ­var', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'VND', 'Vietnamese Dong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'YER', 'Yemeni Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'ZMK', 'Zambian Kwacha', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `currency_countries`
--

CREATE TABLE `currency_countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `currency_countries`
--

INSERT INTO `currency_countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Andorra', 'AD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Afghanistan', 'AF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Åland Islands', 'AX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Albania', 'AL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Algeria', 'DZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'American Samoa', 'AS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Angola', 'AO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Anguilla', 'AI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Antarctica', 'AQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Antigua and Barbuda', 'AG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Argentina', 'AR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Armenia', 'AM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Aruba', 'AW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Australia', 'AU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Austria', 'AT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Azerbaijan', 'AZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Bahamas', 'BS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Bahrain', 'BH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Bangladesh', 'BD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Barbados', 'BB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Belarus', 'BY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Belgium', 'BE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Belize', 'BZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Benin', 'BJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Bermuda', 'BM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Bhutan', 'BT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Bolivia (Plurinational State of)', 'BO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Bosnia and Herzegovina', 'BA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Botswana', 'BW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Bouvet Island', 'BV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Brazil', 'BR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'British Indian Ocean Territory', 'IO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Brunei Darussalam', 'BN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Bulgaria', 'BG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Burkina Faso', 'BF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Burundi', 'BI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Cabo Verde', 'CV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Cambodia', 'KH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Cameroon', 'CM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Canada', 'CA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Cayman Islands', 'KY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Central African Republic', 'CF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Chad', 'TD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Chile', 'CL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'China', 'CN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Christmas Island', 'CX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Cocos (Keeling) Islands', 'CC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Colombia', 'CO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Comoros', 'KM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Congo', 'CG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Congo (Democratic Republic of the)', 'CD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Cook Islands', 'CK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Costa Rica', 'CR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Côte d\'Ivoire', 'CI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Croatia', 'HR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Cuba', 'CU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Curaçao', 'CW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Cyprus', 'CY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Czech Republic', 'CZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Denmark', 'DK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Djibouti', 'DJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Dominica', 'DM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Dominican Republic', 'DO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Ecuador', 'EC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Egypt', 'EG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'El Salvador', 'SV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Equatorial Guinea', 'GQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Eritrea', 'ER', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Estonia', 'EE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Ethiopia', 'ET', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Falkland Islands (Malvinas)', 'FK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Faroe Islands', 'FO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Fiji', 'FJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Finland', 'FI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'France', 'FR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'French Guiana', 'GF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'French Polynesia', 'PF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'French Southern Territories', 'TF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Gabon', 'GA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Gambia', 'GM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Georgia', 'GE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Germany', 'DE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Ghana', 'GH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Gibraltar', 'GI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Greece', 'GR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Greenland', 'GL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Grenada', 'GD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Guadeloupe', 'GP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Guam', 'GU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Guatemala', 'GT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Guernsey', 'GG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Guinea', 'GN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Guinea-Bissau', 'GW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Guyana', 'GY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Haiti', 'HT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Heard Island and McDonald Islands', 'HM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Holy See', 'VA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Honduras', 'HN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Hong Kong', 'HK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Hungary', 'HU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Iceland', 'IS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'India', 'IN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Indonesia', 'ID', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Iran (Islamic Republic of)', 'IR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Iraq', 'IQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Ireland', 'IE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Isle of Man', 'IM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Israel', 'IL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Italy', 'IT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Jamaica', 'JM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Japan', 'JP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Jersey', 'JE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Jordan', 'JO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Kazakhstan', 'KZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Kenya', 'KE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Kiribati', 'KI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Korea (Democratic People\'s Republic of)', 'KP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Korea (Republic of)', 'KR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Kuwait', 'KW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Kyrgyzstan', 'KG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Lao People\'s Democratic Republic', 'LA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Latvia', 'LV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Lebanon', 'LB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Lesotho', 'LS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Liberia', 'LR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Libya', 'LY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Liechtenstein', 'LI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Lithuania', 'LT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Luxembourg', 'LU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'Macao', 'MO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Macedonia (the former Yugoslav Republic of)', 'MK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Madagascar', 'MG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Malawi', 'MW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Malaysia', 'MY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Maldives', 'MV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Mali', 'ML', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Malta', 'MT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Marshall Islands', 'MH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Martinique', 'MQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Mauritania', 'MR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'Mauritius', 'MU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'Mayotte', 'YT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Mexico', 'MX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'Micronesia (Federated States of)', 'FM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Moldova (Republic of)', 'MD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'Monaco', 'MC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Mongolia', 'MN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Montenegro', 'ME', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'Montserrat', 'MS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'Morocco', 'MA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Mozambique', 'MZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'Myanmar', 'MM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'Namibia', 'NA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Nauru', 'NR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'Nepal', 'NP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'Netherlands', 'NL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'New Caledonia', 'NC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'New Zealand', 'NZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'Nicaragua', 'NI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'Niger', 'NE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'Nigeria', 'NG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'Niue', 'NU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'Norfolk Island', 'NF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'Northern Mariana Islands', 'MP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'Norway', 'NO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Oman', 'OM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Pakistan', 'PK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Palau', 'PW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'Palestine, State of', 'PS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'Panama', 'PA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Papua New Guinea', 'PG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Paraguay', 'PY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'Peru', 'PE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'Philippines', 'PH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'Pitcairn', 'PN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'Poland', 'PL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Portugal', 'PT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'Puerto Rico', 'PR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Qatar', 'QA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Réunion', 'RE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Romania', 'RO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'Russian Federation', 'RU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Rwanda', 'RW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'Saint Barthélemy', 'BL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'Saint Kitts and Nevis', 'KN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'Saint Lucia', 'LC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'Saint Martin (French part)', 'MF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'Saint Pierre and Miquelon', 'PM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'Saint Vincent and the Grenadines', 'VC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'Samoa', 'WS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'San Marino', 'SM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'Sao Tome and Principe', 'ST', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'Saudi Arabia', 'SA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Senegal', 'SN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'Serbia', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'Seychelles', 'SC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'Sierra Leone', 'SL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'Singapore', 'SG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'Sint Maarten (Dutch part)', 'SX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'Slovakia', 'SK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'Slovenia', 'SI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'Solomon Islands', 'SB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'Somalia', 'SO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'South Africa', 'ZA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'South Georgia and the South Sandwich Islands', 'GS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'South Sudan', 'SS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'Spain', 'ES', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'Sri Lanka', 'LK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'Sudan', 'SD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'Suriname', 'SR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'Svalbard and Jan Mayen', 'SJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'Swaziland', 'SZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'Sweden', 'SE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'Switzerland', 'CH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'Syrian Arab Republic', 'SY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'Taiwan, Province of China', 'TW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'Tajikistan', 'TJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'Tanzania, United Republic of', 'TZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'Thailand', 'TH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'Timor-Leste', 'TL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'Togo', 'TG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'Tokelau', 'TK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'Tonga', 'TO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'Trinidad and Tobago', 'TT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'Tunisia', 'TN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'Turkey', 'TR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'Turkmenistan', 'TM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'Turks and Caicos Islands', 'TC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'Tuvalu', 'TV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'Uganda', 'UG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'Ukraine', 'UA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'United Arab Emirates', 'AE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'United Kingdom of Great Britain and Northern Ireland', 'GB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'United States Minor Outlying Islands', 'UM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'United States of America', 'US', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'Uruguay', 'UY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'Uzbekistan', 'UZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'Vanuatu', 'VU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'Venezuela (Bolivarian Republic of)', 'VE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'Viet Nam', 'VN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'Virgin Islands (British)', 'VG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'Virgin Islands (U.S.)', 'VI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'Wallis and Futuna', 'WF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'Western Sahara', 'EH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 'Yemen', 'YE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 'Zambia', 'ZM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 'Zimbabwe', 'ZW', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` longtext NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_pages`
--

INSERT INTO `custom_pages` (`id`, `page_name`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Custom Page One', 'custom-page-one', '<p>Welcome to our eCommerce store, where you can find a wide range of products to suit your needs. Whether you are looking for fashion items, gadgets, or home d&eacute;cor, we have got you covered. Welcome to our eCommerce store, where you can find a wide range of products to suit your needs. Whether you are looking for fashion items, gadgets, or home d&eacute;cor, we have got you covered.</p>\r\n<p>We take pride in providing our customers with a seamless shopping experience. Our website is easy to navigate, and our product pages provide all the information you need to make an informed decision. We also offer multiple payment options to ensure that you can make your purchase with ease.Welcome to our eCommerce store, where you can find a wide range of products to suit your needs. Whether you are looking for fashion items, gadgets, or home d&eacute;cor, we have got you covered.</p>\r\n<p>Our customer service team is always available to answer any questions you may have. Whether you need help choosing the right size, tracking your order, or making a return, we are here to assist you.Welcome to our eCommerce store, where you can find a wide range of products to suit your needs. Whether you are looking for fashion items, gadgets, or home d&eacute;cor, we have got you covered.Welcome to our eCommerce store, where you can find a wide range of products to suit your needs. Whether you are looking for fashion items, gadgets, or home d&eacute;cor, we have got you covered.</p>\r\n<p>So why wait? Start browsing our store today and discover the convenience of online shopping. With our fast and reliable delivery service, you can have your purchases delivered to your doorstep in no time. Thank you for choosing our store, and we look forward to serving you!Welcome to our eCommerce store, where you can find a wide range of products to suit your needs. Whether you are looking for fashion items, gadgets, or home d&eacute;cor, we have got you covered.</p>', 1, '2022-11-03 06:16:09', '2023-03-22 10:52:37'),
(2, 'Custom Page Two', 'custom-page-two', '<p>Welcome to our eCommerce store, where you can find a wide range of products to suit your needs. Whether you are looking for fashion items, gadgets, or home d&eacute;cor, we have got you covered. Welcome to our eCommerce store, where you can find a wide range of products to suit your needs. Whether you are looking for fashion items, gadgets, or home d&eacute;cor, we have got you covered.</p>\r\n<p>We take pride in providing our customers with a seamless shopping experience. Our website is easy to navigate, and our product pages provide all the information you need to make an informed decision. We also offer multiple payment options to ensure that you can make your purchase with ease.Welcome to our eCommerce store, where you can find a wide range of products to suit your needs. Whether you are looking for fashion items, gadgets, or home d&eacute;cor, we have got you covered.</p>\r\n<p>Our customer service team is always available to answer any questions you may have. Whether you need help choosing the right size, tracking your order, or making a return, we are here to assist you.Welcome to our eCommerce store, where you can find a wide range of products to suit your needs. Whether you are looking for fashion items, gadgets, or home d&eacute;cor, we have got you covered.Welcome to our eCommerce store, where you can find a wide range of products to suit your needs. Whether you are looking for fashion items, gadgets, or home d&eacute;cor, we have got you covered.</p>\r\n<p>So why wait? Start browsing our store today and discover the convenience of online shopping. With our fast and reliable delivery service, you can have your purchases delivered to your doorstep in no time. Thank you for choosing our store, and we look forward to serving you!Welcome to our eCommerce store, where you can find a wide range of products to suit your needs. Whether you are looking for fashion items, gadgets, or home d&eacute;cor, we have got you covered.</p>', 1, '2022-11-15 17:15:44', '2023-03-22 10:52:48');

-- --------------------------------------------------------

--
-- Table structure for table `custom_paginations`
--

CREATE TABLE `custom_paginations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_paginations`
--

INSERT INTO `custom_paginations` (`id`, `page_name`, `qty`, `created_at`, `updated_at`) VALUES
(1, 'Blog Page', 6, NULL, '2022-11-15 21:45:36'),
(2, 'Product Page', 9, NULL, '2022-11-15 21:45:59'),
(3, 'Brand Page', 10, NULL, '2022-11-03 06:53:14'),
(4, 'Blog Comment', 6, NULL, '2022-11-03 06:53:46'),
(5, 'Product Review', 8, NULL, '2022-06-11 11:13:13'),
(6, 'Seller page', 8, NULL, '2022-06-11 11:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `email_configurations`
--

CREATE TABLE `email_configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mail_type` tinyint(4) DEFAULT NULL,
  `mail_host` varchar(255) DEFAULT NULL,
  `mail_port` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `smtp_username` varchar(255) DEFAULT NULL,
  `smtp_password` varchar(255) DEFAULT NULL,
  `mail_encryption` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_configurations`
--

INSERT INTO `email_configurations` (`id`, `mail_type`, `mail_host`, `mail_port`, `email`, `smtp_username`, `smtp_password`, `mail_encryption`, `created_at`, `updated_at`) VALUES
(1, 2, 'mail.brandmarrow.com.bd', '587', 'test@brandmarrow.com.bd', 'test@brandmarrow.com.bd', '-_VCt9!&l]0D', 'tls', NULL, '2023-03-23 09:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Password Reset', 'Password Reset', '<h4>Dear <b>{{name}}</b>,</h4>\\r\\n    <p>Do you want to reset your password? Please Copy and past this code</p>', NULL, '2022-06-11 10:43:01'),
(2, 'Contact Email', 'Contact Email', '<p>Name: <b>{{name}}</b></p><p>\r\n\r\nEmail: <b>{{email}}</b></p><p>\r\n\r\nPhone: <b>{{phone}}</b></p><p><span style=\"background-color: transparent;\">Subject: <b>{{subject}}</b></span></p><p>\r\n\r\nMessage: <b>{{message}}</b></p>', NULL, '2021-12-10 23:44:34'),
(3, 'Subscribe Notification', 'Subscribe Notification', '<h2><b>Hi there</b>,</h2><p>\r\nCongratulations! Your Subscription has been created successfully. Please copy and past this code and Verified Your Subscription. If you won\'t verified, after 24hourse your subscription will be deny</p>', NULL, '2021-12-10 23:44:53'),
(4, 'User Verification', 'User Verification', '<p>Dear <b>{{user_name}}</b>,\r\n</p><p>Congratulations! Your Account has been created successfully. Please copy and past and Active your Account.</p>', NULL, '2021-12-10 23:45:25'),
(5, 'Seller Withdraw', 'Seller Withdraw Approval', '<p>Hi <b>{{seller_name}}</b>,</p><p>Your withdraw Request Approval successfully. Please check your account.</p><p>Withdraw Details:</p><p>Withdraw method : <b>{{withdraw_method}}</b>,</p><p>Total Amount :<b> {{total_amount}}</b>,</p><p>Withdraw charge : <b>{{withdraw_charge}}</b>,</p><p>Withdraw&nbsp; Amount : <b>{{withdraw_amount}}</b>,</p><p>Approval Date :<b> {{approval_date}}</b></p>', NULL, '2021-12-26 03:24:45'),
(6, 'Order Successfully', 'Order Successfully', '<p>Hi {{user_name}},</p><p> \r\nThanks for your new order. Your order id has been submited .</p><p>Total Amount : {{total_amount}},</p><p>Payment Method : {{payment_method}},</p><p>Payment Status : {{payment_status}},</p><p>Order Status : {{order_status}},</p><p>Order Date: {{order_date}},</p><p>Order Detail: {{order_detail}}</p>', NULL, '2022-01-10 21:37:03'),
(7, 'Seller Request Approved', 'Seller Request Approved', '<p>Hi {{name}},\r\n</p><p><span style=\"background-color: transparent;\">Congratulations !!&nbsp;</span>Your Shop account has been approved successfully</p>', NULL, '2022-02-05 08:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `error_pages`
--

CREATE TABLE `error_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `header` varchar(255) NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `error_pages`
--

INSERT INTO `error_pages` (`id`, `page_name`, `image`, `header`, `button_text`, `created_at`, `updated_at`) VALUES
(1, '404 Error', 'uploads/website-images/errorpage-2022-12-11-11-17-14-2735.png', 'That Page Doesn\'t Exist!', '', NULL, '2022-12-11 16:17:14'),
(2, '500 Error', '500.jpg', 'That Page Doesn\'t Exist!', 'Go to Home', NULL, '2021-12-06 09:46:52'),
(3, '505 Error', '505.jpg', 'That Page Doesn\'t Exist!', 'Go to Home', NULL, '2021-12-06 09:46:57');

-- --------------------------------------------------------

--
-- Table structure for table `facebook_comments`
--

CREATE TABLE `facebook_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_id` varchar(255) DEFAULT NULL,
  `comment_type` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facebook_comments`
--

INSERT INTO `facebook_comments` (`id`, `app_id`, `comment_type`, `created_at`, `updated_at`) VALUES
(1, 'test', 1, NULL, '2022-06-11 11:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `facebook_pixels`
--

CREATE TABLE `facebook_pixels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `app_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facebook_pixels`
--

INSERT INTO `facebook_pixels` (`id`, `status`, `app_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'fsdf45sdf4sdf', NULL, '2022-06-11 11:17:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(2, 'How do I place an order on your website?', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">To place an order on our website, simply browse our products and add the items you want to your cart. Once you are ready to checkout, follow the prompts to enter your shipping and payment information. Once your order is confirmed, we will process and ship it to you as soon as possible.</p>\r\n<p>&nbsp;</p>', 1, '2022-09-22 13:27:39', '2023-03-22 11:02:11'),
(3, 'How can I track my order?', '<p>Once your order has been shipped, we will provide you with a tracking number that you can use to track your package. You can use this number to track your package on our website or through the carrier\'s website.</p>', 1, '2022-09-22 13:28:08', '2023-03-22 11:02:23'),
(4, 'What payment methods do you accept?', '<p>We accept a variety of payment methods, including credit and debit cards, PayPal, and other third-party payment platforms. All payments are processed securely to ensure the safety of your personal information.</p>', 1, '2022-09-22 13:28:20', '2023-03-22 11:02:36'),
(5, 'What is your return policy?', '<p>We want you to be completely satisfied with your purchase, so we offer a hassle-free return policy. If you are not satisfied with your purchase, you can return it within a certain timeframe for a refund or exchange. Please see our returns policy page for more information.</p>', 1, '2022-09-22 13:28:36', '2023-03-22 11:02:49'),
(6, 'Do you offer international shipping?', '<p>Yes, we offer international shipping to many countries around the world. However, shipping times and fees may vary depending on your location. Please check our shipping policy page for more information about international shipping.</p>\r\n<p>&nbsp;</p>', 1, '2022-10-30 21:26:43', '2023-03-22 11:03:02');

-- --------------------------------------------------------

--
-- Table structure for table `featured_categories`
--

CREATE TABLE `featured_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featured_categories`
--

INSERT INTO `featured_categories` (`id`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 12, '2023-06-26 09:07:47', '2023-06-26 09:07:47'),
(10, 13, '2023-07-02 13:56:53', '2023-07-02 13:56:53'),
(11, 14, '2023-07-02 14:27:20', '2023-07-02 14:27:20'),
(12, 15, '2023-07-02 14:27:25', '2023-07-02 14:27:25'),
(13, 16, '2023-07-02 14:27:30', '2023-07-02 14:27:30'),
(14, 17, '2023-07-02 14:27:34', '2023-07-02 14:27:34'),
(15, 18, '2023-07-02 14:27:54', '2023-07-02 14:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `homepage_image` varchar(255) NOT NULL,
  `flashsale_page_image` varchar(255) NOT NULL,
  `end_time` datetime NOT NULL,
  `offer` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sales`
--

INSERT INTO `flash_sales` (`id`, `title`, `description`, `homepage_image`, `flashsale_page_image`, `end_time`, `offer`, `status`, `created_at`, `updated_at`) VALUES
(1, 'WOO! Flash Sale', 'You get into the 2k+ best Products in Flash offer with as in shaped sofa for sale.', 'uploads/website-images/flash_sale--2022-10-26-12-05-45-2348.png', 'uploads/website-images/flash_sale--2022-09-20-10-54-12-8555.png', '2025-09-14 14:57:00', 20, 1, NULL, '2022-10-26 16:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_products`
--

CREATE TABLE `flash_sale_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_products`
--

INSERT INTO `flash_sale_products` (`id`, `product_id`, `status`, `created_at`, `updated_at`) VALUES
(8, 60, 1, '2023-06-30 11:59:13', '2023-06-30 11:59:13'),
(9, 52, 1, '2023-07-04 21:03:14', '2023-07-04 21:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `flutterwaves`
--

CREATE TABLE `flutterwaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `public_key` text NOT NULL,
  `secret_key` text NOT NULL,
  `currency_rate` double NOT NULL DEFAULT 1,
  `country_code` varchar(191) NOT NULL,
  `currency_code` varchar(191) NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flutterwaves`
--

INSERT INTO `flutterwaves` (`id`, `public_key`, `secret_key`, `currency_rate`, `country_code`, `currency_code`, `title`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'FLWPUBK_TEST-5760e3ff9888aa1ab5e5cd1ec3f99cb1-X', 'FLWSECK_TEST-81cb5da016d0a51f7329d4a8057e766d-X', 417.35, 'NG', 'NGN', 'Ecommerce', 'uploads/website-images/flutterwave-2021-12-30-03-44-30-8813.jpg', 1, NULL, '2023-01-16 20:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `first_column` varchar(255) DEFAULT NULL,
  `second_column` varchar(255) DEFAULT NULL,
  `third_column` varchar(255) DEFAULT NULL,
  `copyright` varchar(191) DEFAULT NULL,
  `background_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `phone`, `email`, `address`, `first_column`, `second_column`, `third_column`, `copyright`, `background_image`, `created_at`, `updated_at`) VALUES
(1, '08608896828', 'abdur.rohman2003@gmail.com', 'Noakhali, Dhaka Bangaldesh', 'Important Links', 'General Links', 'Contact Info', '©2023 Halalzi All rights reserved', 'uploads/website-images/payment-card-2022-12-06-03-36-53-4540.png', NULL, '2023-07-03 13:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `footer_links`
--

CREATE TABLE `footer_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `column` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_links`
--

INSERT INTO `footer_links` (`id`, `column`, `link`, `title`, `created_at`, `updated_at`) VALUES
(1, '1', '/about', 'About Us', '2022-09-20 08:19:02', '2022-11-01 14:49:14'),
(2, '1', '/privacy-policy', 'Privacy Policy', '2022-09-20 08:19:15', '2022-11-01 14:54:01'),
(3, '1', '/faq', 'FAQ', '2022-09-20 08:19:24', '2022-11-01 14:54:29'),
(4, '2', '/blogs', 'Blog', '2022-09-20 08:19:38', '2022-11-01 14:49:47'),
(5, '2', '/sellers', 'Shop', '2022-09-20 08:19:46', '2022-11-01 14:50:15'),
(6, '2', '/faq', 'Support', '2022-09-20 08:19:52', '2022-11-01 14:50:06'),
(7, '3', '/tracking-order', 'Track Order', '2022-09-20 08:20:05', '2022-11-01 15:22:50'),
(8, '3', '/terms-condition', 'Delivery & Returns', '2022-09-20 08:20:11', '2023-03-23 08:59:24'),
(9, '3', '/contact', 'Contact Us', '2022-09-20 08:20:19', '2022-11-01 14:51:34'),
(10, '2', '/products?highlight=best_product', 'Best Deals', '2022-11-01 14:52:42', '2022-11-01 14:52:42'),
(11, '1', '/terms-and-condition', 'Terms and Condition', '2022-11-01 14:55:00', '2023-07-08 15:13:33'),
(12, '3', '/flash-sale', 'Flash Sale', '2022-11-01 15:35:49', '2022-11-01 15:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `footer_social_links`
--

CREATE TABLE `footer_social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_social_links`
--

INSERT INTO `footer_social_links` (`id`, `link`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/halalzi', 'fab fa-facebook-f', '2022-09-20 08:18:12', '2023-07-03 23:00:39'),
(2, 'https://twitter.com/mexuv', 'fab fa-twitter', '2022-09-20 08:18:29', '2022-09-28 04:35:50'),
(3, 'https://linkedin.com/', 'fab fa-linkedin', '2022-09-20 08:18:43', '2022-09-20 08:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `google_analytics`
--

CREATE TABLE `google_analytics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `analytic_id` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_analytics`
--

INSERT INTO `google_analytics` (`id`, `analytic_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '5248-fd-5fds', 1, NULL, '2022-06-11 11:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `google_recaptchas`
--

CREATE TABLE `google_recaptchas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_key` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_recaptchas`
--

INSERT INTO `google_recaptchas` (`id`, `site_key`, `secret_key`, `status`, `created_at`, `updated_at`) VALUES
(1, '6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI', '6LeIxAcTAAAAAGG-vFI1TnRWxMZNFuojJ4WifJWe', 1, NULL, '2022-11-07 17:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_one_visibilities`
--

CREATE TABLE `home_page_one_visibilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `default_name` varchar(255) NOT NULL,
  `section_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `qty` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_one_visibilities`
--

INSERT INTO `home_page_one_visibilities` (`id`, `default_name`, `section_name`, `status`, `qty`, `created_at`, `updated_at`) VALUES
(1, 'Slider', 'Slider', 1, 6, NULL, '2022-06-14 06:30:37'),
(2, 'Our Service', 'Our Service', 1, 6, NULL, '2022-06-14 06:29:47'),
(4, 'Popular Category', 'Popular Categories', 1, 24, NULL, '2022-06-14 06:29:47'),
(5, 'Brand', 'Our Brand', 1, 12, NULL, '2022-06-14 06:29:47'),
(6, 'Top Rated Product', 'Top Rated Product', 1, 16, NULL, '2022-06-14 06:29:47'),
(7, 'Best Seller', 'Best Sellers', 1, 8, NULL, '2022-06-14 06:29:47'),
(8, 'Featured Product', 'Featured Products', 1, 15, NULL, '2022-06-14 06:29:47'),
(9, 'New Arrival', 'New Arrival', 1, 19, NULL, '2022-06-14 06:29:47'),
(10, 'Best Product', 'Best Product', 1, 16, NULL, '2022-06-14 06:29:47');

-- --------------------------------------------------------

--
-- Table structure for table `informations`
--

CREATE TABLE `informations` (
  `id` int(11) NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `site_logo` varchar(255) NOT NULL,
  `owner_phone` varchar(255) NOT NULL,
  `owner_email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `tracking_code` text DEFAULT NULL,
  `copyright` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `recommend_num` int(11) DEFAULT NULL,
  `discount_num` int(11) DEFAULT NULL,
  `newarrival_num` int(11) DEFAULT NULL,
  `bkash` tinyint(4) DEFAULT NULL,
  `bkash_number` varchar(100) DEFAULT NULL,
  `nogod` tinyint(4) DEFAULT NULL,
  `nogod_number` varchar(100) NOT NULL,
  `rocket` tinyint(4) DEFAULT NULL,
  `rocket_number` varchar(100) DEFAULT NULL,
  `paypal` tinyint(4) DEFAULT NULL,
  `paypal_account` varchar(100) DEFAULT NULL,
  `stripe` tinyint(4) DEFAULT NULL,
  `stripe_account` varchar(100) DEFAULT NULL,
  `supp_num1` varchar(20) DEFAULT NULL,
  `supp_num2` varchar(20) DEFAULT NULL,
  `supp_num3` varchar(20) DEFAULT NULL,
  `number_visibility` int(11) DEFAULT NULL,
  `coupon_visibility` tinyint(4) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `redx_api_base_url` varchar(255) DEFAULT NULL,
  `redx_api_access_token` varchar(1000) DEFAULT NULL,
  `pathao_api_base_url` varchar(255) DEFAULT NULL,
  `pathao_api_access_token` varchar(1500) DEFAULT NULL,
  `pathao_store_id` int(11) DEFAULT NULL,
  `steadfast_api_base_url` varchar(255) DEFAULT NULL,
  `steadfast_api_key` varchar(255) DEFAULT NULL,
  `steadfast_secret_key` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `informations`
--

INSERT INTO `informations` (`id`, `site_name`, `site_logo`, `owner_phone`, `owner_email`, `address`, `tracking_code`, `copyright`, `facebook`, `instagram`, `youtube`, `recommend_num`, `discount_num`, `newarrival_num`, `bkash`, `bkash_number`, `nogod`, `nogod_number`, `rocket`, `rocket_number`, `paypal`, `paypal_account`, `stripe`, `stripe_account`, `supp_num1`, `supp_num2`, `supp_num3`, `number_visibility`, `coupon_visibility`, `currency`, `redx_api_base_url`, `redx_api_access_token`, `pathao_api_base_url`, `pathao_api_access_token`, `pathao_store_id`, `steadfast_api_base_url`, `steadfast_api_key`, `steadfast_secret_key`) VALUES
(1, 'Soft IT Global Demo', '680927051.png', '01615597820', 'softitglobal@gmail.com', 'Mohammadpur', NULL, '© 2022. All rights reserved by Softitglobal & Developed By', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 12, 12, 48, 1, '01615597820', 0, '01615597820', 0, '01615597820', 0, 'softitglobal@gmail.com', 0, 'admin@gmail.com', '01700000000', '01700000001', '01700000002', 3, 0, 'BDT', 'https://sandbox.redx.com.bd/v1.0.0-beta', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI3Nzc2MjAiLCJpYXQiOjE2NzI4MTgyMDIsImlzcyI6IkVyeEZSY2VuemNOMkZrcmdyYXBUM1p6ZXN4emx2NnBOIiwic2hvcF9pZCI6Nzc3NjIwLCJ1c2VyX2lkIjoxNjQzNDY0fQ.1PO9zwZ-Wgy7bgzMfJ414EiEdqVCnSDJoodNXe1NNOU', 'https://hermes-api.p-stageenv.xyz', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjM2NWUyY2M3YjIxYzNhYTM0ZWFmM2Y3ZDY3OGM3ZDIxY2NkMjM4MjZhZjdlNGI2YzZiYTAwNTAyNTI1MGU3MTgwYTE2Mjk0ZmQwMGE1OTVhIn0.eyJhdWQiOiIyNjciLCJqdGkiOiIzNjVlMmNjN2IyMWMzYWEzNGVhZjNmN2Q2NzhjN2QyMWNjZDIzODI2YWY3ZTRiNmM2YmEwMDUwMjUyNTBlNzE4MGExNjI5NGZkMDBhNTk1YSIsImlhdCI6MTY4NDkxNTYzMCwibmJmIjoxNjg0OTE1NjMwLCJleHAiOjE2ODUzNDc2MzAsInN1YiI6IjM1MiIsInNjb3BlcyI6W119.jhAAwQOiL9It1If5KqCDqEXNfFnNal559166AQC782OwHgQMcysxt46-uUPfPViko_coZjD4MqXZZHc6CaVznfxU-6GTC4Bi-OTjTowUfGgJOi0PYXtxhn5fSxU_1_aFazvXaAlh2Css5H7oz_KH2zSZTpW42_yQzHK-d3UCcfWPuYO-0cYEWlfbvD8hA8GZVOHhz8e2k6Kn702GERWh251PyBsHLheCLo5g07l7d3KB6Hgd9KYDjPEeOEjJn_FIewVp8mJaa4a39CgCYlnDwujKfq2B8KUBpKkTJ75tRxtZiQnZNv4dK2lDtAAZnLY_UPgGSU1yLwZWXft08-A0G3NvZYBY2TuMFKNZa_L4TpEPJur0JYHjfgB0z1izqMD1BIk_lfZAtubvx3a1u9OZC9jx1YgNsUdSb-yWwjkELxuRleYGvY46RkhZ-ZdbpZZRIQpfGKf4bl3tPGRXgZTjdr-kRkq7IRkxJix_0xwz8HhYxC0nohdCpUJatiulrhCWZ5m1lONjBOXg1TJmfRH07Y6e-p8Vqvs9WqbsXUONcfTpUTnyrZ-1H3fkxh4CqFzdJ7F0Smm8YSPp_mWIH4JGCK8brhC6bEpy2nZeEvWq-nlnUNDTmshignvnt0DQttU8e0c6vf_FI_HMhtk_jsMl3RX9-QsNvodGmv9UlqDgFRc', 267, 'https://portal.steadfast.com.bd/api/v1/', 'fbbf1tnybsigufvn3hbqzstsrl2hkjgp', 'xty5k2mghe3rc3bwcbmhuicq');

-- --------------------------------------------------------

--
-- Table structure for table `instamojo_payments`
--

CREATE TABLE `instamojo_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `api_key` text NOT NULL,
  `auth_token` text NOT NULL,
  `currency_rate` varchar(255) NOT NULL DEFAULT '1',
  `account_mode` varchar(255) NOT NULL DEFAULT 'Sandbox',
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instamojo_payments`
--

INSERT INTO `instamojo_payments` (`id`, `api_key`, `auth_token`, `currency_rate`, `account_mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test_5f4a2c9a58ef216f8a1a688910f', 'test_994252ada69ce7b3d282b9941c2', '74.66', 'Sandbox', 1, NULL, '2022-11-13 21:29:19');

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `stock_in` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `product_id`, `stock_in`, `created_at`, `updated_at`) VALUES
(2, 38, '100', '2023-03-07 03:20:53', '2023-03-07 03:20:53'),
(3, 38, '50', '2023-03-07 03:21:02', '2023-03-07 03:21:02'),
(4, 38, '80', '2023-03-07 03:21:08', '2023-03-07 03:21:08'),
(5, 13, '200', '2023-03-07 03:21:20', '2023-03-07 03:21:20'),
(7, 37, '5', '2023-03-07 03:29:50', '2023-03-07 03:29:50'),
(8, 37, '10', '2023-03-07 03:30:01', '2023-03-07 03:30:01'),
(9, 37, '15', '2023-03-07 03:30:08', '2023-03-07 03:30:08'),
(10, 36, '20', '2023-03-07 03:30:19', '2023-03-07 03:30:19'),
(11, 36, '150', '2023-03-07 03:30:25', '2023-03-07 03:30:25'),
(12, 60, '100', '2023-06-27 13:49:40', '2023-06-27 13:49:40'),
(13, 39, '7', '2023-07-09 15:09:21', '2023-07-09 15:09:21');

-- --------------------------------------------------------

--
-- Table structure for table `maintainance_texts`
--

CREATE TABLE `maintainance_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maintainance_texts`
--

INSERT INTO `maintainance_texts` (`id`, `status`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 'uploads/website-images/maintainance-mode-2022-12-12-03-03-31-1726.png', 'We are upgrading our site. We will come back soon. Please stay with us. Thank you.', NULL, '2022-12-12 20:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `mega_menu_categories`
--

CREATE TABLE `mega_menu_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `serial` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mega_menu_categories`
--

INSERT INTO `mega_menu_categories` (`id`, `category_id`, `status`, `serial`, `created_at`, `updated_at`) VALUES
(4, 12, 1, 1, '2023-07-02 15:20:23', '2023-07-02 15:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `mega_menu_sub_categories`
--

CREATE TABLE `mega_menu_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mega_menu_category_id` int(11) NOT NULL,
  `sub_category_id` int(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `serial` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mega_menu_sub_categories`
--

INSERT INTO `mega_menu_sub_categories` (`id`, `mega_menu_category_id`, `sub_category_id`, `status`, `serial`, `created_at`, `updated_at`) VALUES
(10, 4, 10, 1, 1, '2023-07-02 20:10:55', '2023-07-02 20:10:55');

-- --------------------------------------------------------

--
-- Table structure for table `menu_visibilities`
--

CREATE TABLE `menu_visibilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_visibilities`
--

INSERT INTO `menu_visibilities` (`id`, `menu_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', 1, NULL, '2022-01-23 20:05:32'),
(2, 'Shop', 1, NULL, '2022-01-23 20:05:31'),
(3, 'Mega Menu', 1, NULL, '2022-01-16 20:51:23'),
(4, 'Sellers', 1, NULL, '2022-01-16 20:52:31'),
(5, 'Blog', 1, NULL, '2022-01-16 20:52:32'),
(6, 'Campaign', 1, NULL, '2022-01-16 20:52:33'),
(7, 'Pages', 1, NULL, '2022-01-16 20:52:34'),
(8, 'About us', 1, NULL, '2022-01-16 20:57:27'),
(9, 'Contact Us', 1, NULL, '2022-01-16 20:57:28'),
(10, 'Checkout', 1, NULL, '2022-01-16 20:57:29'),
(11, 'Brand', 1, NULL, '2022-01-16 20:57:25'),
(12, 'FAQ', 1, NULL, '2022-01-16 20:57:26'),
(13, 'Privacy Policy', 1, NULL, '2022-01-16 20:57:23'),
(14, 'Terms and Conditions', 1, NULL, '2022-01-16 20:57:22'),
(15, 'Track Order', 1, NULL, '2022-01-16 20:52:29'),
(16, 'Flash Deal', 1, NULL, '2022-01-16 20:52:28'),
(17, 'My Account', 1, NULL, '2022-01-16 20:04:54'),
(18, 'Login/Register', 1, NULL, '2022-01-16 20:04:47'),
(19, 'Shopping Cart', 1, NULL, '2022-01-16 20:09:28'),
(20, 'Compare', 1, NULL, '2022-01-16 20:37:54'),
(21, 'Wishlist', 1, NULL, '2022-01-16 20:37:55'),
(22, 'Topbar Phone', 1, NULL, '2022-01-16 20:02:07'),
(23, 'Menu Phone', 1, NULL, '2022-01-16 20:08:00'),
(24, 'Categories', 1, NULL, '2022-01-16 23:52:39'),
(25, 'Search', 1, NULL, '2022-01-16 20:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `customer_read_msg` int(11) NOT NULL DEFAULT 0,
  `seller_read_msg` int(11) NOT NULL,
  `send_customer` int(11) NOT NULL DEFAULT 0,
  `send_seller` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_30_035230_create_admins_table', 2),
(6, '2021_11_30_065435_create_email_configurations_table', 3),
(7, '2021_11_30_065508_create_email_templates_table', 3),
(8, '2021_12_01_035206_create_categories_table', 4),
(9, '2021_12_01_035220_create_sub_categories_table', 4),
(10, '2021_12_01_035231_create_child_categories_table', 4),
(11, '2021_12_01_035735_create_brands_table', 4),
(12, '2021_12_02_055907_create_product_taxes_table', 5),
(13, '2021_12_02_083742_create_return_policies_table', 6),
(14, '2021_12_02_084030_create_product_specification_keys_table', 6),
(15, '2021_12_03_093645_create_products_table', 7),
(16, '2021_12_03_101949_create_product_galleries_table', 7),
(17, '2021_12_04_053018_create_product_specifications_table', 8),
(18, '2021_12_06_045447_create_services_table', 9),
(19, '2021_12_06_054423_create_about_us_table', 10),
(20, '2021_12_06_055028_create_custom_pages_table', 10),
(21, '2021_12_07_030532_create_terms_and_conditions_table', 11),
(22, '2021_12_07_035810_create_blog_categories_table', 12),
(23, '2021_12_07_035822_create_blogs_table', 12),
(24, '2021_12_07_040749_create_popular_posts_table', 12),
(25, '2021_12_07_061613_create_blog_comments_table', 13),
(26, '2021_12_07_081832_create_product_variants_table', 14),
(27, '2021_12_07_081858_create_product_variant_items_table', 14),
(28, '2021_12_08_125540_create_campaigns_table', 15),
(29, '2021_12_08_130025_create_campaign_products_table', 15),
(30, '2021_12_09_095158_create_contact_messages_table', 16),
(31, '2021_12_09_095220_create_subscribers_table', 16),
(32, '2021_12_09_124226_create_settings_table', 17),
(33, '2021_12_11_022207_create_cookie_consents_table', 18),
(34, '2021_12_11_025358_create_google_recaptchas_table', 19),
(35, '2021_12_11_025449_create_facebook_comments_table', 19),
(36, '2021_12_11_025556_create_tawk_chats_table', 19),
(37, '2021_12_11_025618_create_google_analytics_table', 19),
(38, '2021_12_11_025712_create_custom_paginations_table', 19),
(39, '2021_12_11_083503_create_faqs_table', 20),
(40, '2021_12_11_094707_create_currencies_table', 21),
(41, '2021_12_13_085612_create_product_reviews_table', 22),
(42, '2021_12_13_090609_create_product_review_galleries_table', 22),
(43, '2021_12_13_101056_create_error_pages_table', 23),
(44, '2021_12_13_102725_create_maintainance_texts_table', 24),
(45, '2021_12_13_110144_create_subscribe_modals_table', 25),
(46, '2021_12_13_111140_create_announcement_modals_table', 26),
(47, '2021_12_13_132626_create_countries_table', 27),
(48, '2021_12_13_132909_create_country_states_table', 27),
(49, '2021_12_13_132935_create_cities_table', 27),
(50, '2021_12_14_032937_create_social_login_information_table', 28),
(51, '2021_12_14_042928_create_facebook_pixels_table', 29),
(52, '2021_12_14_054908_create_paypal_payments_table', 30),
(53, '2021_12_14_054922_create_stripe_payments_table', 30),
(54, '2021_12_14_054939_create_razorpay_payments_table', 30),
(55, '2021_12_14_055252_create_bank_payments_table', 30),
(56, '2021_12_14_084759_create_vendors_table', 31),
(57, '2021_12_14_090013_create_vendor_social_links_table', 31),
(58, '2021_12_15_095059_create_wholesells_table', 32),
(59, '2021_12_16_071213_create_seller_mail_logs_table', 33),
(60, '2021_12_21_093939_create_mega_menu_categories_table', 34),
(61, '2021_12_21_093958_create_mega_menu_sub_categories_table', 34),
(62, '2021_12_22_034106_create_banner_images_table', 35),
(63, '2021_12_22_044839_create_sliders_table', 36),
(64, '2021_12_22_081311_create_popular_categories_table', 37),
(65, '2021_12_23_021844_create_three_column_categories_table', 38),
(66, '2021_12_23_033230_create_shipping_methods_table', 39),
(67, '2021_12_23_065722_create_paystack_and_mollies_table', 40),
(68, '2021_12_23_085225_create_withdraw_methods_table', 41),
(71, '2021_12_25_172918_create_seller_withdraws_table', 42),
(74, '2021_12_25_200413_create_product_reports_table', 43),
(75, '2021_12_25_200707_create_product_report_images_table', 44),
(79, '2021_12_26_052326_create_billing_addresses_table', 45),
(80, '2021_12_26_053952_create_shipping_addresses_table', 45),
(81, '2021_12_26_054841_create_orders_table', 45),
(82, '2021_12_26_164912_create_order_addresses_table', 45),
(83, '2021_12_26_165705_create_order_products_table', 45),
(84, '2021_12_26_170803_create_order_product_variants_table', 45),
(87, '2021_12_28_163200_create_coupons_table', 46),
(88, '2021_12_28_192057_create_contact_pages_table', 47),
(89, '2021_12_28_200846_create_breadcrumb_images_table', 48),
(90, '2021_12_30_032959_create_flutterwaves_table', 49),
(91, '2021_12_30_034716_create_footers_table', 50),
(92, '2021_12_30_035201_create_footer_links_table', 50),
(93, '2021_12_30_035247_create_footer_social_links_table', 50),
(95, '2021_12_30_061157_create_home_page_one_visibilities_table', 51),
(96, '2022_01_11_103950_create_wishlists_table', 52),
(97, '2022_01_12_070110_create_shop_pages_table', 53),
(99, '2022_01_12_080218_create_seo_settings_table', 54),
(100, '2022_01_17_012111_create_menu_visibilities_table', 55),
(101, '2022_01_17_122016_create_instamojo_payments_table', 56),
(102, '2022_01_29_055523_create_messages_table', 57),
(103, '2022_01_29_122621_create_pusher_credentails_table', 58),
(104, '2022_04_27_083907_create_shopping_carts_table', 59),
(105, '2022_04_27_084235_create_shopping_cart_variants_table', 59),
(106, '2022_06_11_095338_create_testimonials_table', 60),
(107, '2022_06_13_053409_create_flash_sales_table', 61),
(108, '2022_06_13_053644_create_flash_sale_products_table', 62),
(109, '2022_06_14_102451_create_shippings_table', 63),
(112, '2022_06_19_073137_create_addresses_table', 64),
(113, '2022_06_19_093939_create_compare_products_table', 65),
(114, '2022_07_27_101723_create_featured_categories_table', 66),
(115, '2023_03_07_030217_create_inventories_table', 67),
(116, '2023_03_07_033625_create_twilio_sms_table', 68),
(117, '2023_03_07_033758_create_sms_templates_table', 68),
(118, '2023_05_30_063954_add_app_version_to_settings', 69);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_amount` double NOT NULL DEFAULT 0,
  `product_qty` int(11) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_status` int(11) NOT NULL DEFAULT 0,
  `payment_approval_date` varchar(255) DEFAULT NULL,
  `transection_id` varchar(255) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `coupon_coast` double NOT NULL DEFAULT 0,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `order_approval_date` varchar(255) DEFAULT NULL,
  `order_delivered_date` varchar(255) DEFAULT NULL,
  `order_completed_date` varchar(255) DEFAULT NULL,
  `order_declined_date` varchar(255) DEFAULT NULL,
  `ordered_delivery_date` varchar(200) DEFAULT NULL,
  `ordered_delivery_time` varchar(200) DEFAULT NULL,
  `cash_on_delivery` int(10) NOT NULL DEFAULT 0,
  `additional_info` text DEFAULT NULL,
  `courier_id` int(11) DEFAULT NULL,
  `courier_tracking_id` varchar(255) DEFAULT NULL,
  `assign_user_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `weight` decimal(8,1) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `area_name` varchar(255) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `total_amount`, `product_qty`, `payment_method`, `payment_status`, `payment_approval_date`, `transection_id`, `shipping_method`, `shipping_cost`, `coupon_coast`, `order_status`, `order_approval_date`, `order_delivered_date`, `order_completed_date`, `order_declined_date`, `ordered_delivery_date`, `ordered_delivery_time`, `cash_on_delivery`, `additional_info`, `courier_id`, `courier_tracking_id`, `assign_user_id`, `store_id`, `weight`, `area_id`, `area_name`, `city`, `state`, `created_at`, `updated_at`) VALUES
(131, '2087672802', 58, 107.5, 1, 'Cash on Delivery', 1, '2023-06-28', NULL, 'Home Delivery', 20, 87.5, 2, '2023-06-27', '2023-06-28', NULL, NULL, NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-27 13:12:40', '2023-06-28 20:02:56'),
(133, '1344627251', 61, 40, 1, 'Cash on Delivery', 1, '2023-06-30', NULL, 'Home Delivery', 20, 0, 3, NULL, NULL, '2023-06-30', NULL, NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-30 13:08:56', '2023-06-30 13:10:05'),
(138, '386203146', 58, 1520, 100, 'Cash on Delivery', 1, '2023-07-02', NULL, 'Regular', 20, 0, 3, NULL, NULL, '2023-07-02', NULL, NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-02 15:59:32', '2023-07-02 16:01:01'),
(141, '1868067906', 62, 110, 1, 'Cash on Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-05 13:02:03', '2023-07-05 13:02:03'),
(142, '1812802063', 62, 159, 1, 'Cash on Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-05 16:22:16', '2023-07-05 16:22:16'),
(143, '1538040059', 62, 159, 1, 'Cash on Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-05 17:24:38', '2023-07-05 17:24:38'),
(144, '2089809907', 62, 159, 1, 'Cash on Delivery', 0, NULL, NULL, 'Fixed Shipping', 20, 0, 0, NULL, NULL, NULL, NULL, 'Thursday, July 6', 'home', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-05 17:31:11', '2023-07-05 17:31:11'),
(145, '1038199778', 62, 110, 1, 'Cash on Delivery', 0, NULL, NULL, 'Fixed Shipping', 20, 0, 0, NULL, NULL, NULL, NULL, 'Wednesday, July 5', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-05 18:03:27', '2023-07-05 18:03:27'),
(146, '244797263', 62, 149, 1, 'Cash on Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, 'Friday, July 7', '6:00 AM - 7:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-05 18:04:40', '2023-07-05 18:04:40'),
(147, '272782923', 59, 188, 2, 'Cash on Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, 'Saturday, July 8', '7:00 AM - 8:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-05 18:13:11', '2023-07-05 18:13:11'),
(148, '326819850', 62, 160, 1, 'Cash on Delivery', 0, NULL, NULL, 'Fixed Shipping', 20, 0, 0, NULL, NULL, NULL, NULL, 'Friday, July 7', '5:00 AM - 6:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-05 18:17:40', '2023-07-05 18:17:40'),
(149, '1355843787', 62, 374, 2, 'Cash on Delivery', 0, NULL, NULL, 'Fixed Shipping', 20, 0, 0, NULL, NULL, NULL, NULL, 'Saturday, July 8', '2:00 PM - 3:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-05 18:35:55', '2023-07-05 18:35:55'),
(150, '1643058456', 62, 980, 1, 'Cash on Delivery', 0, NULL, NULL, 'Fixed Shipping', 20, 0, 0, NULL, NULL, NULL, NULL, 'Friday, July 7', '11:00 AM - 12:00 PM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-05 18:44:37', '2023-07-05 18:44:37'),
(151, '686434135', 62, 149, 1, 'Cash on Delivery', 0, NULL, NULL, 'Fixed Shipping', 20, 0, 0, NULL, NULL, NULL, NULL, 'Friday, July 7', '9:00 AM - 10:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-05 18:47:19', '2023-07-05 18:47:19'),
(152, '2094331267', 62, 160, 1, 'Cash on Delivery', 0, NULL, NULL, 'Fixed Shipping', 20, 0, 0, NULL, NULL, NULL, NULL, 'Wednesday, July 5', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-05 18:48:45', '2023-07-05 18:48:45'),
(153, '1864049310', 62, 75, 1, 'Cash on Delivery', 0, NULL, NULL, 'Fixed Shipping', 20, 0, 0, NULL, NULL, NULL, NULL, 'Saturday, July 8', '2:00 PM - 3:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-05 18:58:31', '2023-07-05 18:58:31'),
(154, '1409157401', 62, 75, 1, 'Cash on Delivery', 0, NULL, NULL, 'Fixed Shipping', 20, 0, 0, NULL, NULL, NULL, NULL, 'Wednesday, July 5', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-05 19:00:04', '2023-07-05 19:00:04'),
(155, '354630280', 62, 149, 1, 'Cash on Delivery', 0, NULL, NULL, 'Fixed Shipping', 20, 0, 0, NULL, NULL, NULL, NULL, 'Wednesday, July 5', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-05 19:04:17', '2023-07-05 19:04:17'),
(156, '1074348631', 62, 149, 1, 'Cash on Delivery', 0, NULL, NULL, 'Fixed Shipping', 20, 0, 0, NULL, NULL, NULL, NULL, 'Wednesday, July 5', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-05 19:07:57', '2023-07-05 19:07:57'),
(157, '126497844', 59, 120, 1, 'Cash on Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, 'Friday, July 7', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-05 22:34:32', '2023-07-05 22:34:32'),
(158, '203111617', 62, 159, 1, 'Cash on Delivery', 0, NULL, NULL, 'Fixed Shipping', 20, 0, 0, NULL, NULL, NULL, NULL, 'Saturday, July 8', '11:00 AM - 12:00 PM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-06 11:25:53', '2023-07-06 11:25:53'),
(159, '492718999', 62, 149, 1, 'Cash on Delivery', 0, NULL, NULL, 'Quantity(5-10)', 20, 0, 0, NULL, NULL, NULL, NULL, 'Thursday, July 6', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-06 11:40:43', '2023-07-06 11:40:43'),
(160, '1348052898', 62, 149, 1, 'Cash on Delivery', 0, NULL, NULL, 'Fixed Shipping', 20, 0, 0, NULL, NULL, NULL, NULL, 'Thursday, July 6', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-06 11:44:16', '2023-07-06 11:44:16'),
(161, '487830940', 59, 120, 1, 'Cash on Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, 'Saturday, July 8', '6:00 AM - 7:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-06 13:27:33', '2023-07-06 13:27:33'),
(162, '1302594729', 58, 149, 1, 'Cash on Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, 'Thursday, July 6', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-06 13:37:22', '2023-07-06 13:37:22'),
(163, '518891193', 58, 419, 1, 'Cash on Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, 'Saturday, July 8', '10:00 AM - 11:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-06 13:38:11', '2023-07-06 20:34:21'),
(164, '1509942141', 62, 288, 2, 'Cash On Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, 'Friday, July 7', '8:00 AM - 9:00 AM', 0, '0', 2, NULL, NULL, NULL, 2.5, 14054, NULL, 62, 692, '2023-07-07 23:26:11', '2023-07-08 01:24:52'),
(165, '349575897', 62, 41020, 1, 'Cash On Delivery', 0, NULL, NULL, 'Fixed Shipping', 20, 0, 0, NULL, NULL, NULL, NULL, 'Saturday, July 8', '10:00 AM - 11:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-08 12:27:07', '2023-07-08 12:27:07'),
(166, '1413193796', 62, 165, 1, 'Cash On Delivery', 0, NULL, NULL, 'Quantity(5-10)', 20, 0, 0, NULL, NULL, NULL, NULL, 'Saturday, July 8', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-08 14:43:18', '2023-07-08 14:43:18'),
(167, '1861200314', 66, 70, 1, 'Cash On Delivery', 0, NULL, NULL, 'Fixed Shipping', 20, 0, 0, NULL, NULL, NULL, NULL, 'Thursday, July 13', '10:00 AM - 11:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-08 14:47:28', '2023-07-08 14:47:28'),
(168, '276275893', 66, 77, 3, 'Cash On Delivery', 0, NULL, NULL, 'Fixed Shipping', 20, 0, 0, NULL, NULL, NULL, NULL, 'Thursday, July 13', '9:00 AM - 10:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-08 15:15:27', '2023-07-08 15:15:27'),
(170, '1679677946', 58, 919, 1, 'Cash On Delivery', 0, NULL, NULL, 'Regular', 20, 0, 1, '2023-07-08', NULL, NULL, NULL, 'Saturday, July 8', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-08 17:18:54', '2023-07-08 17:23:48'),
(171, '617682783', 66, 443, 5, 'Cash On Delivery', 0, NULL, NULL, 'Quantity(5-10)', 20, 0, 0, NULL, NULL, NULL, NULL, 'Wednesday, July 12', '10:00 AM - 11:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-08 19:58:20', '2023-07-08 19:58:20'),
(172, '144110881', 58, 120, 1, 'Cash On Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, 'Monday, July 10', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 11:22:34', '2023-07-09 11:22:34'),
(173, '30756724', 62, 119, 3, 'Cash On Delivery', 0, NULL, NULL, 'Quantity(5-10)', 20, 0, 0, NULL, NULL, NULL, NULL, 'Monday, July 10', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 18:32:12', '2023-07-09 18:32:12'),
(175, '122733671', 62, 1903, 11, 'Cash On Delivery', 0, NULL, NULL, 'Quantity(5-10)', 20, 0, 0, NULL, NULL, NULL, NULL, 'Monday, July 10', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 20:17:03', '2023-07-09 20:17:03'),
(176, '322212746', 59, 268, 4, 'Cash On Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, 'Monday, July 10', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(177, '1740534874', 59, 268, 4, 'Cash On Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, 'Monday, July 10', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(178, '415734447', 59, 268, 4, 'Cash On Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, 'Monday, July 10', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(179, '765207419', 59, 268, 4, 'Cash On Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, 'Monday, July 10', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(180, '1571035843', 59, 268, 4, 'Cash On Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, 'Monday, July 10', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(181, '1256645474', 59, 268, 4, 'Cash On Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, 'Monday, July 10', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(182, '2146949246', 59, 268, 4, 'Cash On Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, 'Monday, July 10', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(183, '2082560452', 59, 159, 1, 'Cash On Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, 'Monday, July 10', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 21:37:30', '2023-07-09 21:37:30'),
(184, '445011486', 59, 219, 2, 'Cash On Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, 'Wednesday, July 12', '4:00 AM - 5:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 21:39:08', '2023-07-09 21:39:08'),
(185, '577931136', 67, 98, 2, 'Cash On Delivery', 1, '2023-07-13', NULL, 'Regular', 20, 0, 1, '2023-07-13', NULL, NULL, NULL, 'Monday, July 10', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-09 22:24:04', '2023-07-13 12:25:29'),
(186, '1234823358', 58, 515, 1, 'Cash On Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, 'Monday, July 10', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-10 19:53:10', '2023-07-10 19:53:10'),
(187, '2115308448', 58, 700, 4, 'Cash On Delivery', 0, NULL, NULL, 'Fixed Shipping', 20, 0, 0, NULL, NULL, NULL, NULL, 'Tuesday, July 11', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-11 14:09:09', '2023-07-11 14:09:09'),
(188, '1898176274', 58, 470, 2, 'Cash On Delivery', 0, NULL, NULL, 'Quantity(5-10)', 20, 0, 0, NULL, NULL, NULL, NULL, 'Saturday, July 15', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-15 17:57:37', '2023-07-15 17:57:37'),
(189, '2076751858', 58, 9425, 19, 'Cash On Delivery', 0, NULL, NULL, 'Regular', 20, 0, 4, NULL, NULL, NULL, '2023-07-15', 'Saturday, July 15', '8:00 AM - 9:00 AM', 0, '0', 3, '39011805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-15 18:11:58', '2023-07-19 22:46:11'),
(190, '421740676', 59, 110, 1, 'Cash On Delivery', 0, NULL, NULL, 'Regular', 20, 0, 3, NULL, NULL, '2023-07-16', NULL, 'Wednesday, July 19', '8:00 AM - 9:00 AM', 0, '0', 3, '39010421', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-16 10:29:17', '2023-07-19 22:35:59'),
(191, '1000551062', 68, 212, 4, 'Cash On Delivery', 0, NULL, NULL, 'Regular', 20, 0, 0, NULL, NULL, NULL, NULL, 'Monday, August 7', '8:00 AM - 9:00 AM', 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 13:35:45', '2023-08-06 13:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `order_addresses`
--

CREATE TABLE `order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `billing_name` varchar(255) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `billing_phone` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `billing_country` varchar(11) DEFAULT NULL,
  `billing_state` varchar(191) DEFAULT NULL,
  `billing_city` varchar(191) DEFAULT NULL,
  `billing_address_type` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) DEFAULT NULL,
  `shipping_email` varchar(255) DEFAULT NULL,
  `shipping_phone` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `shipping_country` varchar(191) DEFAULT NULL,
  `shipping_state` varchar(191) DEFAULT NULL,
  `shipping_city` varchar(191) DEFAULT NULL,
  `shipping_address_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_addresses`
--

INSERT INTO `order_addresses` (`id`, `order_id`, `billing_name`, `billing_email`, `billing_phone`, `billing_address`, `billing_country`, `billing_state`, `billing_city`, `billing_address_type`, `shipping_name`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_country`, `shipping_state`, `shipping_city`, `shipping_address_type`, `created_at`, `updated_at`) VALUES
(131, 131, 'MD NAIMUR RAHAMAN DURJOY', 'naimprince010@gmail.com', '01938264923', '825 beparicomplex shariatpur', '10', '13', '17', 'home', NULL, 'naimprince010@gmail.com', '01938264923', '825 beparicomplex shariatpur', '10', '13', '17', 'home', '2023-06-27 13:12:40', '2023-06-27 13:12:40'),
(133, 133, 'Shuvo', 'shuvoahmed@gmail.com', '01988387391', 'Shariatpur', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-06-30 13:08:56', '2023-06-30 13:08:56'),
(138, 138, 'Naim Rahaman Rahaman', 'naimprince010@gmail.com', '01938264923', '825 beparicomplex shariatpur', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-02 15:59:32', '2023-07-02 15:59:32'),
(141, 141, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'testing purpose', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-05 13:02:03', '2023-07-05 13:02:03'),
(142, 142, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'testinggg purposesss', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-05 16:22:16', '2023-07-05 16:22:16'),
(143, 143, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'H#53, R#9, Shekertack, Mohammedpur, Dhaka-1207, Bangladesh.', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-05 17:24:38', '2023-07-05 17:24:38'),
(144, 144, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'H#53, R#9, Shekertack, Mohammedpur, Dhaka-1207, Bangladesh.', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-05 17:31:11', '2023-07-05 17:31:11'),
(145, 145, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'H#53, R#9, Shekertack, Mohammedpur, Dhaka-1207, Bangladesh.', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-05 18:03:27', '2023-07-05 18:03:27'),
(146, 146, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'Homna, Cumilla.', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-05 18:04:40', '2023-07-05 18:04:40'),
(147, 147, 'Sayem', 'sayemtutul@gmail.com', '01721324456', 'dcdcdc', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-05 18:13:11', '2023-07-05 18:13:11'),
(148, 148, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'Wireless Gate, Mohakhali.', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-05 18:17:40', '2023-07-05 18:17:40'),
(149, 149, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'Testing testing', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-05 18:35:55', '2023-07-05 18:35:55'),
(150, 150, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'thakurgaon', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-05 18:44:37', '2023-07-05 18:44:37'),
(151, 151, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'H#53, R#9, Shekertack, Mohammedpur, Dhaka-1207, Bangladesh.', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-05 18:47:19', '2023-07-05 18:47:19'),
(152, 152, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'H#53, R#9, Shekertack, Mohammedpur, Dhaka-1207, Bangladesh.', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-05 18:48:45', '2023-07-05 18:48:45'),
(153, 153, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'H#53, R#9, Shekertack, Mohammedpur, Dhaka-1207, Bangladesh.', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-05 18:58:31', '2023-07-05 18:58:31'),
(154, 154, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'H#53, R#9, Shekertack, Mohammedpur, Dhaka-1207, Bangladesh.', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-05 19:00:04', '2023-07-05 19:00:04'),
(155, 155, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'H#53, R#9, Shekertack, Mohammedpur, Dhaka-1207, Bangladesh.', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-05 19:04:17', '2023-07-05 19:04:17'),
(156, 156, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'H#53, R#9, Shekertack, Mohammedpur, Dhaka-1207, Bangladesh.', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-05 19:07:57', '2023-07-05 19:07:57'),
(157, 157, 'Sayem', 'sayemtutul@gmail.com', '01721324456', 'bbbb', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-05 22:34:32', '2023-07-05 22:34:32'),
(158, 158, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'H#53, R#9, Shekertack, Mohammedpur, Dhaka-1207, Bangladesh.', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-06 11:25:53', '2023-07-06 11:25:53'),
(159, 159, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'H#53, R#9, Shekertack, Mohammedpur, Dhaka-1207, Bangladesh.', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-06 11:40:43', '2023-07-06 11:40:43'),
(160, 160, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'Titas, Cumilla.', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-06 11:44:16', '2023-07-06 11:44:16'),
(161, 161, 'Sayem', 'sayemtutul@gmail.com', '01721324456', 'dcdcdc', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-06 13:27:33', '2023-07-06 13:27:33'),
(162, 162, 'Naim Rahaman Rahaman', 'admin@gmail.com', '01938264923', 'Test', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-06 13:37:22', '2023-07-06 13:37:22'),
(163, 163, 'Naim Rahaman Rahaman', 'admin@gmail.com', '01938264923', 'Test', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-06 13:38:11', '2023-07-06 13:38:11'),
(164, 164, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'Companygonj, Cumilla.', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-07 23:26:11', '2023-07-07 23:26:11'),
(165, 165, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'testing purpose', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-08 12:27:07', '2023-07-08 12:27:07'),
(166, 166, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'Just for test', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-08 14:43:18', '2023-07-08 14:43:18'),
(167, 167, 'Md Rashed', 'rashed95@gmail.com', '01820097439', 'Another for testing', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-08 14:47:28', '2023-07-08 14:47:28'),
(168, 168, 'Md Rashed', 'rashed95@gmail.com', '01820097439', 'tessst', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-08 15:15:27', '2023-07-08 15:15:27'),
(169, 170, 'Naim Rahaman Rahaman', 'admin@gmail.com', '01938264923', '825 beparicomplex shariatpur', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-08 17:18:54', '2023-07-08 17:18:54'),
(170, 171, 'Md Rashed', 'rashed95@gmail.com', '01820097439', 'test', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-08 19:58:20', '2023-07-08 19:58:20'),
(171, 172, 'Naim Rahaman Rahaman', 'admin@gmail.com', '01938264923', 'Test', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-09 11:22:34', '2023-07-09 11:22:34'),
(172, 173, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'Bosila', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-09 18:32:12', '2023-07-09 18:32:12'),
(174, 175, 'Rahbar Rashed', 'rashed@gmail.com', '01762223976', 'H#53, R#9, Shekertack, Mohammedpur, Dhaka-1207, Bangladesh.', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-09 20:17:03', '2023-07-09 20:17:03'),
(175, 176, 'Sayem', 'sayemtutul@gmail.com', '01721324456', 'dcdcdc', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(176, 177, 'Sayem', 'sayemtutul@gmail.com', '01721324456', 'dcdcdc', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(177, 178, 'Sayem', 'sayemtutul@gmail.com', '01721324456', 'dcdcdc', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(178, 179, 'Sayem', 'sayemtutul@gmail.com', '01721324456', 'dcdcdc', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(179, 180, 'Sayem', 'sayemtutul@gmail.com', '01721324456', 'dcdcdc', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-09 21:34:57', '2023-07-09 21:34:57'),
(180, 181, 'Sayem', 'sayemtutul@gmail.com', '01721324456', 'dcdcdc', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-09 21:34:57', '2023-07-09 21:34:57'),
(181, 182, 'Sayem', 'sayemtutul@gmail.com', '01721324456', 'dcdcdc', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-09 21:34:57', '2023-07-09 21:34:57'),
(182, 183, 'Sayem', 'sayemtutul@gmail.com', '01721324456', 'dd', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-09 21:37:30', '2023-07-09 21:37:30'),
(183, 184, 'Sayem', 'sayemtutul@gmail.com', '01721324456', 'gfgfgf', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-09 21:39:08', '2023-07-09 21:39:08'),
(184, 185, 'Md. Mahadi Islam Mahadi', 'mahediihasan220@gmail.com', '+8801623421591', 'Ali Mohammad Khan Road, Adarshabag, Konapara, Jatrabari, Dhaka', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-09 22:24:04', '2023-07-09 22:24:04'),
(185, 186, 'Naim Rahaman Rahaman', 'admin@gmail.com', '01938264923', 'Test', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-10 19:53:10', '2023-07-10 19:53:10'),
(186, 187, 'Naim Rahaman Rahaman', 'admin@gmail.com', '01938264923', '825 beparicomplex shariatpur', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-11 14:09:09', '2023-07-11 14:09:09'),
(187, 188, 'Naim Rahaman Rahaman', 'admin@gmail.com', '01938264923', '825 beparicomplex shariatpur', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-15 17:57:37', '2023-07-15 17:57:37'),
(188, 189, 'Naim Rahaman Rahaman', 'admin@gmail.com', '01938264923', '825 bepari complex', '10', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-15 18:11:58', '2023-07-15 18:11:58'),
(189, 190, 'test', 'sayemtutul@gmail.com', '01721324456', 'dcdcdc', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-07-16 10:29:17', '2023-07-16 10:29:17'),
(190, 191, 'tester', 'tester@gmail.com', '01712056488', 'gg', 'Choose Coun', NULL, NULL, 'home', NULL, NULL, NULL, NULL, '10', NULL, NULL, 'home', '2023-08-06 13:35:45', '2023-08-06 13:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT 0,
  `product_name` varchar(255) NOT NULL,
  `unit_price` double NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `seller_id`, `product_name`, `unit_price`, `qty`, `created_at`, `updated_at`) VALUES
(296, 131, 52, 0, 'Nestle Maggi 2-Minute Masala Instant Noodles', 175, 1, '2023-06-27 13:12:40', '2023-06-27 13:12:40'),
(298, 133, 54, 0, 'Bombay Sweets Mr. Twist', 20, 1, '2023-06-30 13:08:56', '2023-06-30 13:08:56'),
(306, 138, 55, 0, 'Bombay Sweets Potato Crackers', 15, 100, '2023-07-02 15:59:32', '2023-07-02 15:59:32'),
(309, 141, 69, 0, 'রাঁধুনী মরিচের গুঁড়া ১০০ গ্রাম', 90, 1, '2023-07-05 13:02:03', '2023-07-05 13:02:03'),
(310, 142, 68, 0, 'এলাচি আস্ত ৫০ গ্রাম', 139, 1, '2023-07-05 16:22:16', '2023-07-05 16:22:16'),
(311, 143, 59, 0, 'Chicken Eggs (Layer)', 139, 1, '2023-07-05 17:24:38', '2023-07-05 17:24:38'),
(312, 144, 59, 0, 'Chicken Eggs (Layer)', 139, 1, '2023-07-05 17:31:11', '2023-07-05 17:31:11'),
(313, 145, 69, 0, 'রাঁধুনী মরিচের গুঁড়া ১০০ গ্রাম', 90, 1, '2023-07-05 18:03:27', '2023-07-05 18:03:27'),
(314, 146, 67, 0, 'সুপারি ২৫০ গ্রাম', 129, 1, '2023-07-05 18:04:40', '2023-07-05 18:04:40'),
(315, 147, 64, 0, 'মউরি ১০০ গ্রাম', 39, 1, '2023-07-05 18:13:11', '2023-07-05 18:13:11'),
(316, 147, 67, 0, 'সুপারি ২৫০ গ্রাম', 129, 1, '2023-07-05 18:13:11', '2023-07-05 18:13:11'),
(317, 148, 61, 0, 'Dan Cake Vanilla Pound Cake', 140, 1, '2023-07-05 18:17:40', '2023-07-05 18:17:40'),
(318, 149, 67, 0, 'সুপারি ২৫০ গ্রাম', 129, 1, '2023-07-05 18:35:55', '2023-07-05 18:35:55'),
(319, 149, 56, 0, 'Pringles Original Potato Crisps', 225, 1, '2023-07-05 18:35:55', '2023-07-05 18:35:55'),
(320, 150, 46, 0, 'Teer Fortified Soyabean Oil', 960, 1, '2023-07-05 18:44:37', '2023-07-05 18:44:37'),
(321, 151, 67, 0, 'সুপারি ২৫০ গ্রাম', 129, 1, '2023-07-05 18:47:19', '2023-07-05 18:47:19'),
(322, 152, 61, 0, 'Dan Cake Vanilla Pound Cake', 140, 1, '2023-07-05 18:48:45', '2023-07-05 18:48:45'),
(323, 153, 66, 0, 'শুকনা মরিচ ১০০ গ্রাম', 55, 1, '2023-07-05 18:58:31', '2023-07-05 18:58:31'),
(324, 154, 66, 0, 'শুকনা মরিচ ১০০ গ্রাম', 55, 1, '2023-07-05 19:00:04', '2023-07-05 19:00:04'),
(325, 155, 67, 0, 'সুপারি ২৫০ গ্রাম', 129, 1, '2023-07-05 19:04:17', '2023-07-05 19:04:17'),
(326, 156, 67, 0, 'সুপারি ২৫০ গ্রাম', 129, 1, '2023-07-05 19:07:57', '2023-07-05 19:07:57'),
(327, 157, 62, 0, 'রাঁধুনী হলুদের গুঁড়া ২০০ গ্রাম', 100, 1, '2023-07-05 22:34:32', '2023-07-05 22:34:32'),
(328, 158, 68, 0, 'এলাচি আস্ত ৫০ গ্রাম', 139, 1, '2023-07-06 11:25:53', '2023-07-06 11:25:53'),
(329, 159, 67, 0, 'সুপারি ২৫০ গ্রাম', 129, 1, '2023-07-06 11:40:43', '2023-07-06 11:40:43'),
(330, 160, 67, 0, 'সুপারি ২৫০ গ্রাম', 129, 1, '2023-07-06 11:44:16', '2023-07-06 11:44:16'),
(331, 161, 62, 0, 'রাঁধুনী হলুদের গুঁড়া ২০০ গ্রাম', 100, 1, '2023-07-06 13:27:33', '2023-07-06 13:27:33'),
(332, 162, 67, 0, 'সুপারি ২৫০ গ্রাম', 129, 1, '2023-07-06 13:37:22', '2023-07-06 13:37:22'),
(333, 163, 42, 0, 'Nazirshail Rice Premium (Half Boiled) ± 50 gm', 399, 1, '2023-07-06 13:38:11', '2023-07-06 13:38:11'),
(334, 164, 68, 0, 'এলাচি আস্ত ৫০ গ্রাম', 139, 1, '2023-07-07 23:26:11', '2023-07-07 23:26:11'),
(335, 164, 67, 0, 'সুপারি ২৫০ গ্রাম', 129, 1, '2023-07-07 23:26:11', '2023-07-07 23:26:11'),
(336, 165, 16, 0, 'Mi Laptop pro', 41000, 1, '2023-07-08 12:27:07', '2023-07-08 12:27:07'),
(337, 166, 49, 0, 'Moshur Dal (Deshi) 1 kg', 145, 1, '2023-07-08 14:43:18', '2023-07-08 14:43:18'),
(338, 167, 58, 0, 'Nestle Maggi Healthy Soup Thai Sachet', 50, 1, '2023-07-08 14:47:28', '2023-07-08 14:47:28'),
(339, 168, 65, 0, 'সরিষার দানা (লাল) ১০০ গ্রাম', 19, 3, '2023-07-08 15:15:27', '2023-07-08 15:15:27'),
(340, 170, 45, 0, 'Rupchanda Fortified Soyabean Oil', 899, 1, '2023-07-08 17:18:54', '2023-07-08 17:18:54'),
(341, 171, 66, 0, 'শুকনা মরিচ ১০০ গ্রাম', 55, 3, '2023-07-08 19:58:20', '2023-07-08 19:58:20'),
(342, 171, 67, 0, 'সুপারি ২৫০ গ্রাম', 129, 2, '2023-07-08 19:58:20', '2023-07-08 19:58:20'),
(343, 172, 62, 0, 'রাঁধুনী হলুদের গুঁড়া ২০০ গ্রাম', 100, 1, '2023-07-09 11:22:34', '2023-07-09 11:22:34'),
(344, 173, 55, 0, 'Bombay Sweets Potato Crackers', 15, 1, '2023-07-09 18:32:12', '2023-07-09 18:32:12'),
(345, 173, 53, 0, 'Sajeeb Cook Noodles Masala 8 pcs', 65, 1, '2023-07-09 18:32:12', '2023-07-09 18:32:12'),
(346, 173, 65, 0, 'সরিষার দানা (লাল) ১০০ গ্রাম', 19, 1, '2023-07-09 18:32:12', '2023-07-09 18:32:12'),
(348, 175, 63, 0, 'জিরা ১০০ গ্রাম', 99, 1, '2023-07-09 20:17:03', '2023-07-09 20:17:03'),
(349, 175, 65, 0, 'সরিষার দানা (লাল) ১০০ গ্রাম', 19, 1, '2023-07-09 20:17:03', '2023-07-09 20:17:03'),
(350, 175, 64, 0, 'মউরি ১০০ গ্রাম', 39, 1, '2023-07-09 20:17:03', '2023-07-09 20:17:03'),
(351, 175, 62, 0, 'রাঁধুনী হলুদের গুঁড়া ২০০ গ্রাম', 100, 1, '2023-07-09 20:17:03', '2023-07-09 20:17:03'),
(352, 175, 57, 0, 'Knorr Cup a Soup Classic Thai', 20, 1, '2023-07-09 20:17:03', '2023-07-09 20:17:03'),
(353, 175, 58, 0, 'Nestle Maggi Healthy Soup Thai Sachet', 50, 1, '2023-07-09 20:17:03', '2023-07-09 20:17:03'),
(354, 175, 59, 0, 'Chicken Eggs (Layer)', 139, 3, '2023-07-09 20:17:03', '2023-07-09 20:17:03'),
(355, 175, 68, 0, 'এলাচি আস্ত ৫০ গ্রাম', 139, 1, '2023-07-09 20:17:03', '2023-07-09 20:17:03'),
(356, 175, 17, 0, 'JBL sound box water proof', 1000, 1, '2023-07-09 20:17:03', '2023-07-09 20:17:03'),
(357, 176, 64, 0, 'মউরি ১০০ গ্রাম', 39, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(358, 176, 63, 0, 'জিরা ১০০ গ্রাম', 99, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(359, 176, 54, 0, 'Bombay Sweets Mr. Twist', 20, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(360, 176, 69, 0, 'রাঁধুনী মরিচের গুঁড়া ১০০ গ্রাম', 90, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(361, 177, 64, 0, 'মউরি ১০০ গ্রাম', 39, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(362, 177, 63, 0, 'জিরা ১০০ গ্রাম', 99, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(363, 177, 54, 0, 'Bombay Sweets Mr. Twist', 20, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(364, 177, 69, 0, 'রাঁধুনী মরিচের গুঁড়া ১০০ গ্রাম', 90, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(365, 178, 64, 0, 'মউরি ১০০ গ্রাম', 39, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(366, 178, 63, 0, 'জিরা ১০০ গ্রাম', 99, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(367, 179, 64, 0, 'মউরি ১০০ গ্রাম', 39, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(368, 178, 54, 0, 'Bombay Sweets Mr. Twist', 20, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(369, 179, 63, 0, 'জিরা ১০০ গ্রাম', 99, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(370, 178, 69, 0, 'রাঁধুনী মরিচের গুঁড়া ১০০ গ্রাম', 90, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(371, 179, 54, 0, 'Bombay Sweets Mr. Twist', 20, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(372, 180, 64, 0, 'মউরি ১০০ গ্রাম', 39, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(373, 181, 64, 0, 'মউরি ১০০ গ্রাম', 39, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(374, 179, 69, 0, 'রাঁধুনী মরিচের গুঁড়া ১০০ গ্রাম', 90, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(375, 181, 63, 0, 'জিরা ১০০ গ্রাম', 99, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(376, 180, 63, 0, 'জিরা ১০০ গ্রাম', 99, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(377, 180, 54, 0, 'Bombay Sweets Mr. Twist', 20, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(378, 181, 54, 0, 'Bombay Sweets Mr. Twist', 20, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(379, 180, 69, 0, 'রাঁধুনী মরিচের গুঁড়া ১০০ গ্রাম', 90, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(380, 181, 69, 0, 'রাঁধুনী মরিচের গুঁড়া ১০০ গ্রাম', 90, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(381, 182, 64, 0, 'মউরি ১০০ গ্রাম', 39, 1, '2023-07-09 21:34:56', '2023-07-09 21:34:56'),
(382, 182, 63, 0, 'জিরা ১০০ গ্রাম', 99, 1, '2023-07-09 21:34:57', '2023-07-09 21:34:57'),
(383, 182, 54, 0, 'Bombay Sweets Mr. Twist', 20, 1, '2023-07-09 21:34:57', '2023-07-09 21:34:57'),
(384, 182, 69, 0, 'রাঁধুনী মরিচের গুঁড়া ১০০ গ্রাম', 90, 1, '2023-07-09 21:34:57', '2023-07-09 21:34:57'),
(385, 183, 68, 0, 'এলাচি আস্ত ৫০ গ্রাম', 139, 1, '2023-07-09 21:37:30', '2023-07-09 21:37:30'),
(386, 184, 63, 0, 'জিরা ১০০ গ্রাম', 99, 1, '2023-07-09 21:39:08', '2023-07-09 21:39:08'),
(387, 184, 62, 0, 'রাঁধুনী হলুদের গুঁড়া ২০০ গ্রাম', 100, 1, '2023-07-09 21:39:08', '2023-07-09 21:39:08'),
(388, 185, 64, 0, 'মউরি ১০০ গ্রাম', 39, 2, '2023-07-09 22:24:04', '2023-07-09 22:24:04'),
(389, 186, 74, 0, 'নেসলে নিডো ৩+ গ্রোইং আপ গুঁড়া দুধ (৩-৫ বছর) ৩৫০ গ্রাম', 495, 1, '2023-07-10 19:53:10', '2023-07-10 19:53:10'),
(390, 187, 41, 0, 'Radhuni Chilli (Morich) Powder', 170, 4, '2023-07-11 14:09:09', '2023-07-11 14:09:09'),
(391, 188, 56, 0, 'Pringles Original Potato Crisps', 225, 2, '2023-07-15 17:57:37', '2023-07-15 17:57:37'),
(392, 189, 74, 0, 'নেসলে নিডো ৩+ গ্রোইং আপ গুঁড়া দুধ (৩-৫ বছর) ৩৫০ গ্রাম', 495, 19, '2023-07-15 18:11:58', '2023-07-15 18:11:58'),
(393, 190, 69, 0, 'রাঁধুনী মরিচের গুঁড়া ১০০ গ্রাম', 90, 1, '2023-07-16 10:29:17', '2023-07-16 10:29:17'),
(394, 191, 73, 0, 'sdgds', 34, 3, '2023-08-06 13:35:45', '2023-08-06 13:35:45'),
(395, 191, 69, 0, 'রাঁধুনী মরিচের গুঁড়া ১০০ গ্রাম', 90, 1, '2023-08-06 13:35:45', '2023-08-06 13:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `order_product_variants`
--

CREATE TABLE `order_product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_name` varchar(255) DEFAULT NULL,
  `variant_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paymongo_payments`
--

CREATE TABLE `paymongo_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `secret_key` varchar(255) NOT NULL,
  `public_key` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `currency_rate` double NOT NULL DEFAULT 1,
  `country_code` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paymongo_payments`
--

INSERT INTO `paymongo_payments` (`id`, `secret_key`, `public_key`, `status`, `currency_rate`, `country_code`, `currency_code`, `image`, `created_at`, `updated_at`) VALUES
(1, 'sk_test_TUwj85sA6XTn7nHzmP23dg36', 'pk_test_z9xACSbhH2EuxVdFaxuY8Waf', 1, 55.07, 'PH', 'PHP', '62c01dbd46dc01656757693.jpg', NULL, '2022-07-03 10:06:24');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_payments`
--

CREATE TABLE `paypal_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `account_mode` varchar(255) DEFAULT NULL,
  `client_id` text DEFAULT NULL,
  `secret_id` text DEFAULT NULL,
  `country_code` varchar(191) NOT NULL,
  `currency_code` varchar(191) NOT NULL,
  `currency_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paypal_payments`
--

INSERT INTO `paypal_payments` (`id`, `status`, `account_mode`, `client_id`, `secret_id`, `country_code`, `currency_code`, `currency_rate`, `created_at`, `updated_at`) VALUES
(1, 1, 'sandbox', 'AWlV5x8Lhj9BRF8-TnawXtbNs-zt69mMVXME1BGJUIoDdrAYz8QIeeTBQp0sc2nIL9E529KJZys32Ipy', 'EEvn1J_oIC6alxb-FoF4t8buKwy4uEWHJ4_Jd_wolaSPRMzFHe6GrMrliZAtawDDuE-WKkCKpWGiz0Yn', 'US', 'USD', 1, NULL, '2022-12-06 19:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `paystack_and_mollies`
--

CREATE TABLE `paystack_and_mollies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mollie_key` varchar(255) DEFAULT NULL,
  `mollie_status` int(11) NOT NULL DEFAULT 0,
  `mollie_currency_rate` double NOT NULL DEFAULT 1,
  `paystack_public_key` varchar(255) DEFAULT NULL,
  `paystack_secret_key` varchar(255) DEFAULT NULL,
  `paystack_currency_rate` double NOT NULL DEFAULT 1,
  `paystack_status` int(11) NOT NULL DEFAULT 0,
  `mollie_country_code` varchar(191) NOT NULL,
  `mollie_currency_code` varchar(191) NOT NULL,
  `paystack_country_code` varchar(191) NOT NULL,
  `paystack_currency_code` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paystack_and_mollies`
--

INSERT INTO `paystack_and_mollies` (`id`, `mollie_key`, `mollie_status`, `mollie_currency_rate`, `paystack_public_key`, `paystack_secret_key`, `paystack_currency_rate`, `paystack_status`, `mollie_country_code`, `mollie_currency_code`, `paystack_country_code`, `paystack_currency_code`, `created_at`, `updated_at`) VALUES
(1, 'test_p9qgUn7Sg22xF3Q8D9heBSVEzrzM5Q', 1, 1.27, 'pk_test_057dfe5dee14eaf9c3b4573df1e3760c02c06e38', 'sk_test_77cb93329abbdc18104466e694c9f720a7d69c97', 417.35, 1, 'CA', 'CAD', 'NG', 'NGN', NULL, '2022-11-30 03:02:10');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `popular_categories`
--

CREATE TABLE `popular_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popular_categories`
--

INSERT INTO `popular_categories` (`id`, `category_id`, `created_at`, `updated_at`) VALUES
(5, 12, '2023-06-28 18:55:18', '2023-06-28 18:55:18'),
(6, 14, '2023-07-02 14:29:16', '2023-07-02 14:29:16'),
(7, 15, '2023-07-02 14:29:39', '2023-07-02 14:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `popular_posts`
--

CREATE TABLE `popular_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popular_posts`
--

INSERT INTO `popular_posts` (`id`, `blog_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2022-09-22 10:19:05', '2022-09-22 10:19:05'),
(2, 5, 1, '2022-09-22 10:19:08', '2022-09-22 10:19:08'),
(3, 4, 1, '2022-09-22 10:19:10', '2022-09-22 10:19:10'),
(4, 3, 1, '2022-09-22 10:19:22', '2022-09-22 10:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL DEFAULT 0,
  `child_category_id` int(11) NOT NULL DEFAULT 0,
  `brand_id` int(11) NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL DEFAULT 0,
  `weight` varchar(255) NOT NULL DEFAULT '0',
  `measure` varchar(100) DEFAULT NULL,
  `sold_qty` int(11) NOT NULL DEFAULT 0,
  `short_description` text NOT NULL,
  `long_description` longtext NOT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `seo_title` text NOT NULL,
  `seo_description` text NOT NULL,
  `price` double NOT NULL,
  `offer_price` double DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `show_homepage` tinyint(4) NOT NULL DEFAULT 0,
  `is_undefine` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `new_product` tinyint(4) NOT NULL DEFAULT 0,
  `is_top` tinyint(4) NOT NULL DEFAULT 0,
  `is_best` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_specification` int(10) NOT NULL DEFAULT 1,
  `approve_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `measure`, `sold_qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `created_at`, `updated_at`) VALUES
(14, 'Appple macbook pro 2020', 'Apple macbook', 'appple-macbook-pro-2020', 'uploads/custom-images/appple-macbook-pro-2020-2022-09-21-03-15-03-6666.png', 1, 1, 0, 0, 3, 10, 'Dolor ut corporis do', NULL, 0, 'Excepteur alias est', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, 'Enim numquam possimu', 'Id minus at blanditi', 'Nesciunt illo quisq', 120000, 100000, NULL, 0, 1, 0, 0, 0, 1, 0, 0, 1, '2022-09-21 09:15:03', '2022-09-21 09:34:11'),
(15, 'Sony mini sound box', 'Sony sound', 'sony-mini-sound-box', 'uploads/custom-images/sony-mini-sound-box-2022-09-21-03-16-48-7639.png', 1, 1, 0, 0, 1, 10, '45', NULL, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, '25536', 'Sony mini sound box', 'Sony mini sound box', 500, 450, NULL, 0, 1, 0, 0, 0, 1, 0, 0, 1, '2022-09-21 09:16:48', '2022-09-21 09:34:11'),
(16, 'Mi Laptop pro', 'Mi Lapotop', 'mi-laptop-pro', 'uploads/custom-images/mi-laptop-pro-2022-09-21-03-18-52-8009.png', 1, 1, 2, 0, 0, 458, '89', NULL, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, '4545ouj', 'Mi Laptop pro', 'Mi Laptop pro', 50000, 41000, NULL, 0, 1, 0, 0, 0, 1, 0, 0, 1, '2022-09-21 09:18:52', '2022-09-21 09:34:12'),
(17, 'JBL sound box water proof', 'JBL sound', 'jbl-sound-box-water-proof', 'uploads/custom-images/jbl-sound-box-water-proof-2022-09-21-03-20-10-4755.png', 1, 4, 0, 0, 0, 78, '15', NULL, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, 'colorful-cloths', 'JBL sound box water proof', 'JBL sound box water proof', 1200, 1000, NULL, 0, 1, 0, 0, 0, 1, 0, 0, 1, '2022-09-21 09:20:10', '2022-09-21 09:34:12'),
(18, 'Sony joystick SJ pro', 'Sony joystick', 'sony-joystick-sj-pro', 'uploads/custom-images/sony-joystick-sj-pro-2022-09-21-03-25-19-2532.png', 1, 1, 0, 0, 0, 589, '45', NULL, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, '255po', 'Sony joystick SJ pro', 'Sony joystick SJ pro', 2000, 1200, NULL, 0, 1, 1, 1, 1, 1, 0, 0, 1, '2022-09-21 09:25:19', '2022-09-21 09:34:13'),
(19, 'Gopor cam v1 pro', 'Gopro cam', 'gopor-cam-v1-pro', 'uploads/custom-images/gopor-cam-v1-pro-2022-09-21-03-26-33-7496.png', 1, 1, 3, 0, 0, 478, '45', NULL, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, 'loiu45', 'Gopor cam v1 pro', 'Gopor cam v1 pro', 30000, 25000, NULL, 0, 1, 1, 1, 1, 1, 0, 1, 1, '2022-09-21 09:26:33', '2022-09-21 09:34:14'),
(20, 'HP playstation 11', 'Hp playstation', 'hp-playstation-11', 'uploads/custom-images/hp-playstation-11-2022-09-21-03-28-49-9507.png', 1, 1, 1, 0, 0, 45, '452', NULL, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, 'lki12', 'HP playstation 11', 'HP playstation 11', 10000, 8000, NULL, 0, 1, 0, 1, 1, 0, 0, 0, 1, '2022-09-21 09:28:49', '2022-09-21 09:34:16'),
(21, 'Realme speaker 2 prod', 'Realme speaker', 'realme-speaker-2-prod', 'uploads/custom-images/realme-speaker-2-prod-2022-09-21-03-31-19-6994.png', 1, 4, 0, 0, 0, 15, '2', NULL, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, '14]poi', 'Realme speaker 2 prod', 'Realme speaker 2 prod', 1200, 1100, NULL, 0, 1, 0, 1, 1, 0, 0, 0, 1, '2022-09-21 09:31:20', '2022-09-21 09:34:16'),
(22, 'Xioami Joystick pro', 'Xioami Joystick', 'xioami-joystick-pro', 'uploads/custom-images/xioami-joystick-pro-2022-09-21-03-33-43-9999.png', 1, 2, 4, 0, 0, 45, '78', NULL, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, 'kju45', 'Xioami Joystick pro', 'Xioami Joystick pro', 2000, 1450, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 1, '2022-09-21 09:33:43', '2022-09-21 09:34:17'),
(23, 'Apple macbook pro', 'Apple macbook', 'apple-macbook-pro', 'uploads/custom-images/apple-macbook-pro-2022-09-21-03-38-33-4014.png', 1, 1, 0, 0, 0, 45, '78', NULL, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, 'ujy45', 'Apple macbook pro', 'Apple macbook pro', 120000, 10000, NULL, 0, 1, 1, 1, 1, 1, 0, 0, 1, '2022-09-21 09:38:33', '2022-09-21 09:38:43'),
(39, 'Cumin (Jira)', 'Cumin (Jira)', 'cumin-jira', 'uploads/custom-images/cumin-jira-2023-06-26-11-15-01-2878.webp', 0, 12, 10, 7, 0, 1007, '100gm', NULL, 0, 'Jira 100 gm', '<p>Jira 100 gm</p>', NULL, NULL, 'Cumin (Jira)', 'Cumin (Jira)', 149, 99, '[{\"value\":\"Jira\"}]', 0, 1, 0, 0, 0, 0, 1, 1, 1, '2023-06-25 21:24:34', '2023-07-09 15:09:21'),
(40, 'Cinnamon (Daruchini) Whole', 'Cinnamon', 'cinnamon-daruchini-whole', 'uploads/custom-images/cinnamon-daruchini-whole-2023-06-26-11-15-29-5677.webp', 0, 12, 10, 7, 0, 100, '100', NULL, 0, 'Cinnamon 100 gm', '<p>Cinnamon 100 gm</p>', NULL, NULL, 'Cinnamon (Daruchini) Whole', 'Cinnamon (Daruchini) Whole', 79, 55, '[{\"value\":\"Cinnamon\"}]', 0, 1, 0, 0, 0, 0, 1, 1, 1, '2023-06-25 21:32:53', '2023-06-26 23:15:30'),
(41, 'Radhuni Chilli (Morich) Powder', 'Chilli Powder', 'radhuni-chilli-morich-powder', 'uploads/custom-images/radhuni-chilli-morich-powder-2023-06-26-11-16-00-3828.webp', 0, 12, 10, 7, 0, 1000, '200', NULL, 0, 'Radhuni Chilli (Morich) Powder\r\n200 gm', '<p>Radhuni Chilli (Morich) Powder<br>200 gm</p>', NULL, NULL, 'Radhuni Chilli (Morich) Powder', 'Radhuni Chilli (Morich) Powder', 170, NULL, '[{\"value\":\"Chilli (Morich) Powder\"}]', 0, 1, 0, 0, 0, 0, 1, 1, 1, '2023-06-25 21:35:08', '2023-06-26 23:16:01'),
(42, 'Nazirshail Rice Premium (Half Boiled) ± 50 gm', 'Rice Premium', 'nazirshail-rice-premium-half-boiled-50-gm', 'uploads/custom-images/nazirshail-rice-premium-half-boiled-50-gm-2023-06-26-11-16-22-3130.webp', 0, 12, 10, 8, 0, 1000, '5000', NULL, 0, 'Nazirshail Rice Premium (Half Boiled) ± 50 gm', '<h1 data-reactid=\".1zy08934nge.b.2.0.0.0.0.2.5.1.0:$6252_Grocery.0.6.0.1.0.1.0.0\">Nazirshail Rice Premium (Half Boiled) &plusmn; 50 gm</h1>', NULL, NULL, 'Nazirshail Rice Premium (Half Boiled) ± 50 gm', 'Nazirshail Rice Premium (Half Boiled) ± 50 gm', 425, 399, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, '2023-06-25 21:39:53', '2023-06-26 23:16:22'),
(43, 'Chinigura Rice Premium', 'Chinigura Rice', 'chinigura-rice-premium', 'uploads/custom-images/chinigura-rice-premium-2023-06-26-11-17-00-3525.webp', 0, 12, 10, 8, 0, 1000, '1000', NULL, 0, 'Chinigura Rice Premium', '<h1 data-reactid=\".1zy08934nge.b.2.0.0.0.0.2.5.1.0:$6263_Grocery.0.6.0.1.0.1.0.0\"><span style=\"font-size: 14pt;\">Chinigura Rice Premium</span></h1>', NULL, NULL, 'Chinigura Rice Premium', 'Chinigura Rice Premium', 150, 145, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, '2023-06-25 21:43:11', '2023-06-26 23:17:00'),
(44, 'Miniket Rice Standard (Boiled) ± 50 gm', 'Miniket Rice', 'miniket-rice-standard-boiled-50-gm', 'uploads/custom-images/miniket-rice-standard-boiled-50-gm-2023-06-26-11-19-09-7947.webp', 0, 12, 10, 8, 0, 1000, '5000', NULL, 0, 'Miniket Rice Standard (Boiled) ± 50 gm', '<h1 data-reactid=\".1zy08934nge.b.2.0.0.0.0.2.5.1.0:$6250_Grocery.0.6.0.1.0.1.0.0\">Miniket Rice Standard (Boiled) &plusmn; 50 gm</h1>', NULL, NULL, 'Miniket Rice Standard (Boiled) ± 50 gm', 'Miniket Rice Standard (Boiled) ± 50 gm', 325, 299, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, '2023-06-25 21:45:13', '2023-06-26 23:19:09'),
(45, 'Rupchanda Fortified Soyabean Oil', 'Rupchanda Fortified Soyabean Oil', 'rupchanda-fortified-soyabean-oil', 'uploads/custom-images/rupchanda-fortified-soyabean-oil-2023-06-26-11-20-16-4928.webp', 0, 12, 10, 9, 0, 1000, '5000', NULL, 0, 'Rupchanda Fortified Soyabean Oil', '<h1 data-reactid=\".1zy08934nge.b.2.0.0.0.0.2.5.1.0:$2443_Grocery.0.6.0.1.0.1.0.0\">Rupchanda Fortified Soyabean Oil 5 liter</h1>', NULL, NULL, 'Rupchanda Fortified Soyabean Oil', 'Rupchanda Fortified Soyabean Oil', 920, 899, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, '2023-06-25 21:48:04', '2023-06-26 23:20:16'),
(46, 'Teer Fortified Soyabean Oil', 'Teer Fortified Soyabean Oil', 'teer-fortified-soyabean-oil 5 liter', 'uploads/custom-images/teer-fortified-soyabean-oil-2023-06-26-11-19-43-8701.webp', 0, 12, 10, 9, 0, 1000, '5 litter', NULL, 0, 'Teer Fortified Soyabean Oil', '<h1 data-reactid=\".1zy08934nge.b.2.0.0.0.0.2.5.1.0:$2493_Grocery.0.6.0.1.0.1.0.0\">Teer Fortified Soyabean Oil 5 liter&nbsp;</h1>', NULL, NULL, 'Teer Fortified Soyabean Oil', 'Teer Fortified Soyabean Oil', 960, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 1, '2023-06-25 21:50:11', '2023-07-06 13:24:50'),
(47, 'Teer Fortified Soyabean Oil 2 liter', 'Teer Fortified Soyabean Oil 2 liter', 'teer-fortified-soyabean-oil-2-liter', 'uploads/custom-images/teer-fortified-soyabean-oil-2-liter-2023-06-26-11-17-33-4096.webp', 0, 12, 10, 9, 0, 1000, '2 Litter', NULL, 0, 'Teer Fortified Soyabean Oil 2 liter', '<p>Teer Fortified Soyabean Oil 2 liter</p>', NULL, NULL, 'Teer Fortified Soyabean Oil 2 liter', 'Teer Fortified Soyabean Oil 2 liter', 398, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 1, '2023-06-25 21:52:37', '2023-07-08 17:15:06'),
(48, 'Moshur Dal (Imported) 1 kg', 'Moshur Dal (Imported)', 'moshur-dal-imported-1-kg', 'uploads/custom-images/moshur-dal-imported-1-kg-2023-06-26-11-14-39-9766.webp', 0, 12, 10, 10, 0, 1000, '1000', NULL, 0, 'Moshur Dal (Imported) 1 kg', '<h1 data-reactid=\".1zy08934nge.b.2.0.0.0.0.2.5.1.0:$6940_Grocery.0.6.0.1.0.1.0.0\">Moshur Dal (Imported) 1kg</h1>', NULL, NULL, 'Moshur Dal (Imported) 1 kg', 'Moshur Dal (Imported) 1 kg', 120, 109, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, '2023-06-25 21:55:56', '2023-06-26 23:14:39'),
(49, 'Moshur Dal (Deshi) 1 kg', 'Moshur Dal (Deshi)', 'moshur-dal-deshi-1-kg', 'uploads/custom-images/moshur-dal-deshi-1-kg-2023-06-26-11-12-55-6780.webp', 0, 12, 10, 10, 0, 1000, '1000', NULL, 0, 'Moshur Dal (Deshi)', '<h1 data-reactid=\".1zy08934nge.b.2.0.0.0.0.2.5.1.0:$10164_Grocery.0.6.0.1.0.1.0.0\">Moshur Dal (Deshi) 1 kg&nbsp;</h1>', NULL, NULL, 'Moshur Dal (Deshi) 1 kg', 'Moshur Dal (Deshi) 1 kg', 169, 145, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, '2023-06-25 21:57:43', '2023-06-26 23:12:55'),
(50, 'Moshur Dal (Deshi) 500 gm', 'Moshur Dal (Deshi)', 'moshur-dal-deshi-500-gm', 'uploads/custom-images/moshur-dal-deshi-500-gm-2023-06-26-11-12-21-9924.webp', 0, 12, 10, 10, 0, 1000, '500', NULL, 0, 'Moshur Dal (Deshi)', '<h1 data-reactid=\".1zy08934nge.b.2.0.0.0.0.2.5.1.0:$10164_Grocery.0.6.0.1.0.1.0.0\">Moshur Dal (Deshi) 500 gm</h1>', NULL, NULL, 'Moshur Dal (Deshi) 500 gm', 'Moshur Dal (Deshi) 500 gm', 75, 69, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, '2023-06-25 21:59:52', '2023-06-26 23:12:22'),
(51, 'Cocola Egg Noodles 120  gm', 'Cocola Egg Noodles', 'cocola-egg-noodles-120-gm', 'uploads/custom-images/cocola-egg-noodles-120-gm-2023-06-26-11-11-55-6281.webp', 0, 12, 11, 11, 0, 1000, '120', NULL, 0, 'Cocola Egg Noodles', '<h1 data-reactid=\".1zy08934nge.b.2.0.0.0.0.2.5.1.0:$7454_Grocery.0.6.0.1.0.1.0.0\">Cocola Egg Noodles 120 gm</h1>', NULL, NULL, 'Cocola Egg Noodles 120  gm', 'Cocola Egg Noodles 120  gm', 20, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, '2023-06-25 22:10:57', '2023-06-26 23:11:55'),
(52, 'Nestle Maggi 2-Minute Masala Instant Noodles', 'Nestle Maggi 2-Minute Masala Instant Noodles', 'nestle-maggi-2minute-masala-instant-noodles 8 pack', 'uploads/custom-images/nestle-maggi-2-minute-masala-instant-noodles-2023-06-26-11-11-04-1140.webp', 0, 12, 11, 11, 0, 1000, '500', NULL, 0, 'Nestle Maggi 2-Minute Masala Instant Noodles', '<h1 data-reactid=\".1zy08934nge.b.2.0.0.0.0.2.5.1.0:$3725_Grocery.0.6.0.1.0.1.0.0\">Nestle Maggi 2-Minute Masala Instant Noodles 8 pack&nbsp;</h1>', NULL, NULL, 'Nestle Maggi 2-Minute Masala Instant Noodles', 'Nestle Maggi 2-Minute Masala Instant Noodles', 175, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, '2023-06-25 22:16:55', '2023-06-26 23:11:05'),
(53, 'Sajeeb Cook Noodles Masala 8 pcs', 'Sajeeb Cook Noodles Masala 8 pcs', 'sajeeb-cook-noodles-masala-8-pcs', 'uploads/custom-images/sajeeb-cook-noodles-masala-8-pcs-2023-06-26-11-10-40-4612.webp', 0, 12, 11, 11, 0, 1000, '300', NULL, 0, 'Sajeeb Cook Noodles Masala 8 pcs', '<h1 data-reactid=\".1zy08934nge.b.2.0.0.0.0.2.5.1.0:$18670_Grocery.0.6.0.1.0.1.0.0\">Sajeeb Cook Noodles Masala 8 pcs 300 gm&nbsp;</h1>', NULL, NULL, 'Sajeeb Cook Noodles Masala 8 pcs', 'Sajeeb Cook Noodles Masala 8 pcs', 65, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, '2023-06-25 22:18:59', '2023-06-26 23:10:40'),
(54, 'Bombay Sweets Mr. Twist', 'Bombay Sweets Mr. Twist', 'bombay-sweets-mr-twist', 'uploads/custom-images/bombay-sweets-mr-twist-2023-06-26-11-10-06-6712.webp', 0, 12, 11, 13, 0, 1000, '28', NULL, 0, 'Bombay Sweets Mr. Twist', '<h1 data-reactid=\".1zy08934nge.b.2.0.0.0.0.2.5.1.0:$7276_Grocery.0.6.0.1.0.1.0.0\">Bombay Sweets Mr. Twist</h1>', NULL, NULL, 'Bombay Sweets Mr. Twist', 'Bombay Sweets Mr. Twist', 20, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, '2023-06-25 22:57:45', '2023-06-26 23:10:06'),
(55, 'Bombay Sweets Potato Crackers', 'Bombay Sweets Potato Crackers', 'bombay-sweets-potato-crackers', 'uploads/custom-images/bombay-sweets-potato-crackers-2023-06-26-11-09-47-8175.webp', 0, 12, 11, 13, 0, 1000, '25', NULL, 0, 'Bombay Sweets Potato Crackers', '<h1 data-reactid=\".1zy08934nge.b.2.0.0.0.0.2.5.1.0:$2157_Grocery.0.6.0.1.0.1.0.0\">Bombay Sweets Potato Crackers</h1>', NULL, NULL, 'Bombay Sweets Potato Crackers', 'Bombay Sweets Potato Crackers', 15, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, '2023-06-25 22:59:12', '2023-06-26 23:09:47'),
(56, 'Pringles Original Potato Crisps', 'Pringles Original Potato Crisps', 'pringles-original-potato-crisps', 'uploads/custom-images/pringles-original-potato-crisps-2023-06-26-11-09-32-5744.webp', 0, 12, 11, 13, 0, 1000, '35', NULL, 0, 'Pringles Original Potato Crisps', '<h1 data-reactid=\".1zy08934nge.b.2.0.0.0.0.2.5.1.0:$3984_Grocery.0.6.0.1.0.1.0.0\">Pringles Original Potato Crisps 35 gm</h1>', NULL, NULL, 'Pringles Original Potato Crisps', 'Pringles Original Potato Crisps', 260, 225, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, '2023-06-25 23:02:10', '2023-06-26 23:09:32'),
(57, 'Knorr Cup a Soup Classic Thai', 'Knorr Cup a Soup Classic Thai', 'knorr-cup-a-soup-classic-thai', 'uploads/custom-images/knorr-cup-a-soup-classic-thai-2023-06-26-11-08-39-4800.webp', 0, 12, 11, 14, 0, 1000, '12', NULL, 0, 'Knorr Cup a Soup Classic Thai', '<h1 data-reactid=\".1zy08934nge.b.2.0.0.0.0.2.5.1.0:$38836_Grocery.0.6.0.1.0.1.0.0\">Knorr Cup a Soup Classic Thai 12 gm</h1>', NULL, NULL, 'Knorr Cup a Soup Classic Thai', 'Knorr Cup a Soup Classic Thai', 20, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, '2023-06-25 23:06:09', '2023-06-26 23:08:39'),
(58, 'Nestle Maggi Healthy Soup Thai Sachet', 'Nestle Maggi Healthy Soup Thai Sachet', 'nestle-maggi-healthy-soup-thai-sachet', 'uploads/custom-images/nestle-maggi-healthy-soup-thai-sachet-2023-06-26-11-08-08-1189.webp', 0, 12, 11, 14, 0, 1000, '35', NULL, 0, 'Nestle Maggi Healthy Soup Thai Sachet', '<h1 data-reactid=\".1zy08934nge.b.2.0.0.0.0.2.5.1.0:$29777_Grocery.0.6.0.1.0.1.0.0\">Nestle Maggi Healthy Soup Thai Sachet&nbsp;</h1>', NULL, NULL, 'Nestle Maggi Healthy Soup Thai Sachet', 'Nestle Maggi Healthy Soup Thai Sachet', 50, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, '2023-06-25 23:07:52', '2023-06-26 23:08:08'),
(59, 'Chicken Eggs (Layer)', 'Chicken Eggs (Layer)', 'chicken-eggs-layer', 'uploads/custom-images/chicken-eggs-layer-2023-06-27-11-59-14-8294.webp', 0, 12, 13, 15, 0, 1000, '60', NULL, 0, 'Egg Weight (Per Pc): 60-70 gm\r\n\r\nWeight without box - 700gm (+/-10%)', '<p>Eggs are an all-natural source of high-quality protein and a number of other nutrients, all for 70 calories an egg. 100% fresh and healthy.</p>', NULL, NULL, 'Chicken Eggs (Layer)', 'Chicken Eggs (Layer)', 150, 139, '[{\"value\":\"Egg\"}]', 0, 1, 0, 0, 0, 0, 1, 0, 1, '2023-06-27 11:59:14', '2023-06-27 11:59:14'),
(60, 'Ispahani Mirzapore Best Leaf Tea', 'Ispahani Mirzapore Best Leaf Tea', 'ispahani-mirzapore-best-leaf-tea', 'uploads/custom-images/ispahani-mirzapore-best-leaf-tea-2023-06-27-12-14-08-4514.webp', 0, 12, 13, 19, 0, 200, '400', NULL, 0, 'Ispahani Mirzapore Best Leaf is produced by blending the BEST tea leaves of the finest tea gardens in Bangladesh. It comes to you in the most modern packing, designed to protect its excellent aroma and taste.', '<p>Ispahani Mirzapore Best Leaf is produced by blending the BEST tea leaves of the finest tea gardens in Bangladesh. It comes to you in the most modern packing, designed to protect its excellent aroma and taste.</p>', NULL, NULL, 'Ispahani Mirzapore Best Leaf Tea', 'Ispahani Mirzapore Best Leaf Tea', 210, NULL, '[{\"value\":\"Ispahani Mirzapore Best Leaf Tea\"}]', 0, 1, 0, 1, 0, 0, 1, 0, 1, '2023-06-27 12:14:08', '2023-06-27 13:49:40'),
(61, 'Dan Cake Vanilla Pound Cake', 'Dan Cake Vanilla Pound Cake', 'dan-cake-vanilla-pound-cake', 'uploads/custom-images/dan-cake-vanilla-pound-cake-2023-06-30-11-51-01-9058.webp', 0, 12, 13, 20, 0, 100, '280', NULL, 0, 'Dan Cake Vanilla Pound Cake is a branded food of Dane Foods Limited that will give you a variant flavor. Have it and feel the taste. Net weight 300 gm.', '<p>Dan Cake Vanilla Pound Cake is a branded food of Dane Foods Limited that will give you a variant flavor. Have it and feel the taste. Net weight 300 gm.</p>', NULL, NULL, 'Dan Cake Vanilla Pound Cake is a branded food of Dane Foods Limited that will give you a variant flavor. Have it and feel the taste. Net weight 300 gm.', 'Dan Cake Vanilla Pound Cake is a branded food of Dane Foods Limited that will give you a variant flavor. Have it and feel the taste. Net weight 300 gm.', 140, NULL, '[{\"value\":\"Dan Cake Vanilla Pound Cake\"}]', 0, 1, 0, 1, 0, 0, 1, 0, 1, '2023-06-30 11:51:01', '2023-06-30 11:51:01'),
(62, 'রাঁধুনী হলুদের গুঁড়া ২০০ গ্রাম', 'রাঁধুনী হলুদের গুঁড়া ২০০ গ্রাম', 'রাঁধুনী হলুদের গুঁড়া ২০০ গ্রাম', 'uploads/custom-images/ranndhunee-hluder-gunnda-200-gram-2023-06-30-08-19-17-7026.webp', 0, 12, 10, 7, 0, 100, '200', NULL, 0, 'Apart from having excellent antiseptic and antibacterial properties, it has the distinct flavor and fragrance of coriander for your delicious preparations.', '<p>Apart from having excellent antiseptic and antibacterial properties, it has the distinct flavor and fragrance of coriander for your delicious preparations.</p>', NULL, NULL, 'রাঁধুনী হলুদের গুঁড়া ২০০ গ্রাম', 'রাঁধুনী হলুদের গুঁড়া ২০০ গ্রাম', 100, NULL, '[{\"value\":\"radhuni\"},{\"value\":\"turmeric, holud, powder 200-gm\"}]', 0, 1, 0, 0, 0, 0, 1, 0, 1, '2023-06-30 20:19:17', '2023-06-30 20:19:17'),
(63, 'জিরা ১০০ গ্রাম', 'জিরা ১০০ গ্রাম', 'জিরা ১০০ গ্রাম', 'uploads/custom-images/jira-100-gram-2023-07-02-08-17-20-5785.webp', 0, 12, 10, 7, 0, 100, '100', NULL, 0, 'জিরা ১০০ গ্রাম', '<h1 data-reactid=\".1fxvvxa0rs.b.2.0.0.0.0.2.5.1.0:$3369_Grocery.0.6.0.1.0.1.0.0\">জিরা ১০০ গ্রাম</h1>', NULL, NULL, 'জিরা ১০০ গ্রাম', 'জিরা ১০০ গ্রাম', 149, 99, '[{\"value\":\"cumin\"},{\"value\":\"seed\"},{\"value\":\"jira\"}]', 0, 1, 0, 0, 1, 1, 1, 0, 1, '2023-07-02 20:16:25', '2023-07-02 20:17:20'),
(64, 'মউরি ১০০ গ্রাম', 'মউরি ১০০ গ্রাম', 'মউরি ১০০ গ্রাম', 'uploads/custom-images/muri-100-gram-2023-07-02-08-23-07-7643.webp', 0, 12, 10, 7, 0, 100, '100', NULL, 0, 'provati, fennel', '<p>provati, fennel</p>', NULL, NULL, 'মউরি ১০০ গ্রাম', 'মউরি ১০০ গ্রাম', 45, 39, '[{\"value\":\"provati\"},{\"value\":\"fennel\"}]', 0, 1, 0, 0, 1, 1, 1, 0, 1, '2023-07-02 20:23:07', '2023-07-02 20:23:07'),
(65, 'সরিষার দানা (লাল) ১০০ গ্রাম', 'সরিষার দানা (লাল) ১০০ গ্রাম', 'সরিষার দানা (লাল) ১০০ গ্রাম', 'uploads/custom-images/srishar-dana-lal-100-gram-2023-07-02-08-26-31-7301.webp', 0, 12, 10, 7, 0, 100, '100', NULL, 0, 'mustard-seed-red', '<p>mustard-seed-red</p>', NULL, NULL, 'সরিষার দানা (লাল) ১০০ গ্রাম', 'সরিষার দানা (লাল) ১০০ গ্রাম', 29, 19, '[{\"value\":\"mustard\"},{\"value\":\"seed-red\"}]', 0, 1, 0, 1, 1, 1, 1, 0, 1, '2023-07-02 20:26:31', '2023-07-02 20:26:31'),
(66, 'শুকনা মরিচ ১০০ গ্রাম', 'শুকনা মরিচ ১০০ গ্রাম', 'শুকনা মরিচ ১০০ গ্রাম', 'uploads/custom-images/sukna-mric-100-gram-2023-07-02-08-29-12-5331.webp', 0, 12, 10, 7, 0, 100, '100', NULL, 0, 'dried-chillies-shukna-morich', '<p>dried-chillies-shukna-morich</p>', NULL, NULL, 'শুকনা মরিচ ১০০ গ্রাম', 'শুকনা মরিচ ১০০ গ্রাম', 59, 55, '[{\"value\":\"dried-chillies-shukna-morich\"}]', 0, 1, 0, 0, 1, 0, 1, 0, 1, '2023-07-02 20:29:12', '2023-07-02 20:29:12'),
(67, 'সুপারি ২৫০ গ্রাম', 'সুপারি ২৫০ গ্রাম', 'সুপারি ২৫০ গ্রাম', 'uploads/custom-images/supari-250-gram-2023-07-02-08-33-52-8731.webp', 0, 12, 10, 7, 0, 100, '250', NULL, 0, 'The chewing of betel nut quids dates to antiquity. In the 1st century AD, Sanskrit medical writings claimed that betel nut possessed 13 qualities found in the region of heaven. It is pungent, bitter, spicy, sweet, salty, and astringent. It was said to expel wind, kill worms, remove phlegm, subdue bad odors, beautify the mouth, induce purification, and kindle passion. Because of its CNS-stimulating effects, betel nut is used in a manner similar to the Western use of tobacco or caffeine. Arecoline is responsible for some of the effects of betel quid chewing, such as alertness, increased stamina, a sense of well-being, euphoria, and salivation. Chewing the nut stimulates the flow of saliva to aid digestion. Betel nut also has been used to stimulate the appetite.', '<p>Nutritional facts/Ingredients :</p>\r\n<p>\"Benefits:</p>\r\n<p>-Prevents oral cavities</p>\r\n<p>-Prevents dry mouth</p>\r\n<p>-Prevents stained teeth</p>\r\n<p>-Prevents gum infection</p>\r\n<p>-Reduces swelling in gums</p>\r\n<p>-Effectively battles indigestion</p>\r\n<p>-Powers up concentration levels</p>\r\n<p>-Prevents diarrhea</p>\r\n<p>-Heals anemia and blood sugar</p>\r\n<p>-Pregnant Women should avoid eating it \"</p>', NULL, NULL, 'সুপারি ২৫০ গ্রাম', 'সুপারি ২৫০ গ্রাম', 145, 129, '[{\"value\":\"betel-nut\"}]', 0, 1, 0, 0, 1, 1, 1, 0, 1, '2023-07-02 20:33:52', '2023-07-02 20:33:52'),
(68, 'এলাচি আস্ত ৫০ গ্রাম', 'এলাচি আস্ত ৫০ গ্রাম', 'এলাচি আস্ত ৫০ গ্রাম', 'uploads/custom-images/elaci-ast-50-gram-2023-07-02-08-39-31-6945.webp', 0, 12, 10, 7, 0, 100, '50', NULL, 0, 'Elach, Cardamom (Elachi) is a spice with an intense, slightly sweet flavor that some people compare to mint. Its antioxidant and diuretic properties may lower blood pressure.The compounds in cardamom may help fight cancer cells. Elach is rich in compounds that may fight inflammation. Cardamom has been used for thousands of years to help with digestion.The use of cardamom to treat bad breath and improve oral health is an ancient remedy.', '<p data-reactid=\".1fxvvxa0rs.b.2.0.0.0.0.2.5.1.0:$16206_Grocery.0.6.0.1.0.1.4.$line-0\">Elach, Cardamom (Elachi) is a spice with an intense, slightly sweet flavor that some people compare to mint. Its antioxidant and diuretic properties may lower blood pressure.The compounds in cardamom may help fight cancer cells. Elach is rich in compounds that may fight inflammation. Cardamom has been used for thousands of years to help with digestion.The use of cardamom to treat bad breath and improve oral health is an ancient remedy.</p>\r\n<p data-reactid=\".1fxvvxa0rs.b.2.0.0.0.0.2.5.1.0:$16206_Grocery.0.6.0.1.0.1.4.$line-1\">Compounds in cardamom may help increase airflow to your lungs and improve breathing. When taken in powder form, cardamom may lower blood sugar.</p>', NULL, NULL, 'এলাচি আস্ত ৫০ গ্রাম', 'এলাচি আস্ত ৫০ গ্রাম', 150, 139, '[{\"value\":\"cardamom-elachi\"}]', 0, 1, 0, 0, 1, 1, 1, 0, 1, '2023-07-02 20:39:31', '2023-07-02 20:39:31'),
(69, 'রাঁধুনী মরিচের গুঁড়া ১০০ গ্রাম', 'রাঁধুনী মরিচের গুঁড়া ১০০ গ্রাম', 'radhuni-chilli-morich-powder-100-gm', 'uploads/custom-images/ranndhunee-mricer-gunnra-100-gram-2023-07-02-08-41-32-6717.webp', 0, 12, 10, 7, 0, 100, '100', 'Grm', 0, 'Radhuni powdered Chilli is vivid in color, precious in flavor. Best variety of red chilli provides more hotness. Capsaicin, the main flavoring compound for hotness and Capsanthin, the main coloring compound is blended in proper proportion to maintain the real taste of chili.', '<p>Radhuni powdered Chilli is vivid in color, precious in flavor. Best variety of red chilli provides more hotness. Capsaicin, the main flavoring compound for hotness and Capsanthin, the main coloring compound is blended in proper proportion to maintain the real taste of chili.</p>', NULL, NULL, 'Enhance Your Culinary Delights with Radhuni Chilli Morich Powder 100g - A Fiery Blend of Flavors!', 'Experience a burst of fiery flavors with Radhuni Chilli Morich Powder 100g. This premium spice blend is the perfect addition to your culinary repertoire, adding a tantalizing heat to your dishes. Made from carefully selected chillies, Radhuni Chilli Morich Powder offers a rich, vibrant red color and a robust flavor that will elevate your recipes to new heights. Whether you\'re cooking up a sizzling stir-fry, a spicy curry, or a zesty marinade, this 100g pack of Radhuni Chilli Morich Powder is a must-have for spice enthusiasts. Add a kick to your meals and delight your taste buds with this aromatic and authentic spice blend.', 90, NULL, '[{\"value\":\"radhuni-chilli-morich-powder\"}]', 0, 1, 1, 1, 1, 1, 1, 0, 1, '2023-07-02 20:41:32', '2023-07-09 14:37:57'),
(73, 'sdgds', 'testRashed', 'sdgdssdgds', 'uploads/custom-images/sdgds-2023-07-08-07-35-00-9534.PNG', 0, 12, 0, 0, 0, 3, '60', 'Ltr', 0, 'sgsdg', '<p>sgsgdd</p>', NULL, NULL, 'sdgds', 'sdgds', 34, NULL, '[{\"value\":\"dgdf\"}]', 0, 1, 0, 0, 0, 0, 1, 0, 1, '2023-07-08 19:35:00', '2023-07-08 19:42:14'),
(74, 'নেসলে নিডো ৩+ গ্রোইং আপ গুঁড়া দুধ (৩-৫ বছর) ৩৫০ গ্রাম', 'নেসলে নিডো ৩+ গ্রোইং আপ গুঁড়া দুধ (৩-৫ বছর) ৩৫০ গ্রাম', 'nestlé-nido-fortigrow-full-cream-milk-powder-3-bib-350-gm', 'uploads/custom-images/nesle-nido-3-groing-ap-gunnda-dudh-3-5-bchr-350-gram-2023-07-09-09-39-54-9734.webp', 0, 16, 28, 38, 0, 100, '350', 'Grm', 0, 'Important Notice: There is no substitutes of or equivalent to breast-milk.\r\n\r\nNestlé NIDO 3+ is a Growing Up Milk Powder for 3 to 5 years old growing up children. It contains-\r\n\r\nPrebiotics (Inulin & Fructo-oligosaccharide)\r\n\r\n6 Immuno-nutrients (Iron, Zinc, Selenium, Vitamin A, D & C) among 22 essential vitamins & minerals]\r\n\r\nMilk Protein\r\n\r\nHoney\r\n\r\nNo added sucrose\r\n\r\nNet Weight: 350 gm\r\n\r\nManufactured by: Nestlé Chile S.A.\r\n\r\nFormulated by: Nestlé Switzerland S.A.\r\n\r\nMarketed by: Nestlé Bangladesh Limited', '<p>Important Notice: There is no substitutes of or equivalent to breast-milk.</p>\r\n<p>Nestl&eacute; NIDO 3+ is a Growing Up Milk Powder for 3 to 5 years old growing up children. It contains-</p>\r\n<p>Prebiotics (Inulin &amp; Fructo-oligosaccharide)</p>\r\n<p>6 Immuno-nutrients (Iron, Zinc, Selenium, Vitamin A, D &amp; C) among 22 essential vitamins &amp; minerals]</p>\r\n<p>Milk Protein</p>\r\n<p>Honey</p>\r\n<p>No added sucrose</p>\r\n<p>Net Weight: 350 gm</p>\r\n<p>Manufactured by: Nestl&eacute; Chile S.A.</p>\r\n<p>Formulated by: Nestl&eacute; Switzerland S.A.</p>\r\n<p>Marketed by: Nestl&eacute; Bangladesh Limited</p>', NULL, NULL, 'নেসলে নিডো ৩+ গ্রোইং আপ গুঁড়া দুধ (৩-৫ বছর) ৩৫০ গ্রাম', 'নেসলে নিডো ৩+ গ্রোইং আপ গুঁড়া দুধ (৩-৫ বছর) ৩৫০ গ্রাম', 495, NULL, NULL, 0, 1, 1, 1, 1, 1, 1, 0, 1, '2023-07-09 21:39:54', '2023-07-09 21:39:54');

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `product_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(42, 74, 'uploads/custom-images/Gallery-2023-07-09-09-40-19-1734.webp', 1, '2023-07-09 21:40:19', '2023-07-09 21:40:19'),
(43, 74, 'uploads/custom-images/Gallery-2023-07-09-09-40-19-7891.webp', 1, '2023-07-09 21:40:19', '2023-07-09 21:40:19'),
(44, 74, 'uploads/custom-images/Gallery-2023-07-09-09-40-19-8484.webp', 1, '2023-07-09 21:40:19', '2023-07-09 21:40:19'),
(45, 74, 'uploads/custom-images/Gallery-2023-07-09-09-40-19-8435.webp', 1, '2023-07-09 21:40:19', '2023-07-09 21:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `product_reports`
--

CREATE TABLE `product_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `product_vendor_id` int(11) NOT NULL DEFAULT 0,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_specifications`
--

CREATE TABLE `product_specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_specification_key_id` int(11) NOT NULL,
  `specification` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_specification_keys`
--

CREATE TABLE `product_specification_keys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(9, 58, 'weight', 1, '2023-06-26 09:26:49', '2023-06-26 09:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_items`
--

CREATE TABLE `product_variant_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `product_variant_name` varchar(191) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variant_items`
--

INSERT INTO `product_variant_items` (`id`, `product_variant_id`, `product_variant_name`, `product_id`, `name`, `price`, `status`, `is_default`, `created_at`, `updated_at`) VALUES
(12, 9, 'weight', 58, '50g', 20, 1, 0, '2023-06-26 09:27:29', '2023-06-26 09:27:29'),
(13, 9, 'weight', 58, '100g', 40, 1, 0, '2023-06-26 10:53:23', '2023-06-26 10:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `pusher_credentails`
--

CREATE TABLE `pusher_credentails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_id` varchar(255) NOT NULL,
  `app_key` varchar(255) NOT NULL,
  `app_secret` varchar(255) NOT NULL,
  `app_cluster` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pusher_credentails`
--

INSERT INTO `pusher_credentails` (`id`, `app_id`, `app_key`, `app_secret`, `app_cluster`, `created_at`, `updated_at`) VALUES
(1, '1338069', 'e013174602072a186b1d', '46de951521010c14b205', 'mt1', NULL, '2022-01-29 12:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `razorpay_payments`
--

CREATE TABLE `razorpay_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `currency_rate` double NOT NULL DEFAULT 1,
  `country_code` varchar(191) NOT NULL,
  `currency_code` varchar(191) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `key` text DEFAULT NULL,
  `secret_key` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `razorpay_payments`
--

INSERT INTO `razorpay_payments` (`id`, `status`, `name`, `currency_rate`, `country_code`, `currency_code`, `description`, `image`, `color`, `key`, `secret_key`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ecommerce', 74.66, 'IN', 'INR', 'This is description', 'uploads/website-images/razorpay-2021-12-14-06-35-49-6602.png', '#2d15e5', 'rzp_test_K7CipNQYyyMPiS', 'zSBmNMorJrirOrnDrbOd1ALO', NULL, '2022-11-30 03:01:59');

-- --------------------------------------------------------

--
-- Table structure for table `seller_mail_logs`
--

CREATE TABLE `seller_mail_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_withdraws`
--

CREATE TABLE `seller_withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `total_amount` double NOT NULL,
  `withdraw_amount` double NOT NULL,
  `withdraw_charge` double NOT NULL,
  `account_info` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `approved_date` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` text DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `page_name`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', '\"Halalzi: Your Premier Online Destination for Halal Groceries and More!\"', 'Discover the convenience of online grocery shopping at Halalzi.com. We offer a wide selection of high-quality, halal-certified groceries and products delivered right to your doorstep. From fresh produce to pantry staples and halal meats, our comprehensive range ensures you have everything you need for your family’s culinary needs. Experience hassle-free shopping, exceptional customer service, and the assurance of halal integrity with Halalzi.com - your trusted online source for halal groceries. Start shopping today and embrace the ease and reliability of Halalzi.com for all your grocery needs.', NULL, '2023-06-30 20:33:05'),
(2, 'About Us', '\"About Us: Halalzi - Your Trusted Source for Quality Halal Groceries Online\"', 'Welcome to Halalzi - your trusted online destination for high-quality halal groceries. Discover our commitment to providing a wide range of halal-certified products, sourced with meticulous care to ensure the utmost halal integrity. Learn about our mission to make halal shopping convenient, reliable, and accessible to all, while maintaining the highest standards of customer satisfaction. Find out more about our dedicated team, their expertise, and the passion that drives us to serve you better every day. Experience the Halalzi difference and join us in our journey to redefine online halal grocery shopping.', NULL, '2023-06-30 20:35:58'),
(3, 'Contact Us', 'ShopUS: Your One-Stop Destination for Fashion and Style', 'ShopUS: Your One-Stop Destination for Fashion and Style', NULL, '2023-03-22 08:53:42'),
(5, 'Seller Page', 'ShopUS: Your One-Stop Destination for Fashion and Style', 'ShopUS: Your One-Stop Destination for Fashion and Style', NULL, '2023-03-22 08:53:46'),
(6, 'Blog', 'ShopUS: Your One-Stop Destination for Fashion and Style', 'ShopUS: Your One-Stop Destination for Fashion and Style', NULL, '2023-03-22 08:53:52'),
(8, 'Flash Deal', 'ShopUS: Your One-Stop Destination for Fashion and Style', 'ShopUS: Your One-Stop Destination for Fashion and Style', NULL, '2023-03-22 08:53:58'),
(9, 'Shop Page', '\"Shop Halal Groceries Online at Halalzi: Your One-Stop Destination for Quality Halal Products\"', 'Explore our wide selection of halal groceries at Halalzi\'s online shop. Discover an extensive range of halal-certified products, including fresh produce, pantry essentials, halal meats, snacks, and more. With our user-friendly interface and secure shopping experience, you can conveniently browse and purchase all your halal food needs from the comfort of your home. Trust in our commitment to quality, halal integrity, and exceptional customer service. Start shopping now and experience the convenience and reliability of Halalzi for all your halal grocery requirements.', NULL, '2023-06-30 20:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Free Shipping', 'fas fa-shipping-fast', 'Free Shipping on Payment', 1, '2022-09-20 08:07:40', '2022-09-20 08:07:40'),
(2, 'Return Policy', 'fas fa-chevron-circle-left', '24 Hours Return Policy', 1, '2022-09-20 08:08:44', '2022-09-20 08:08:44'),
(3, 'Secured Payment', 'fab fa-cc-amazon-pay', 'Secure Card Payments', 1, '2022-09-20 08:09:50', '2022-09-20 08:09:50'),
(4, 'Best Quality', 'fas fa-check-circle', 'Best Quality Products', 1, '2022-09-20 08:10:27', '2022-09-22 04:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `maintenance_mode` int(11) NOT NULL DEFAULT 0,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `contact_email` varchar(191) DEFAULT NULL,
  `enable_user_register` int(11) NOT NULL DEFAULT 1,
  `phone_number_required` int(1) NOT NULL DEFAULT 1,
  `default_phone_code` varchar(255) DEFAULT NULL,
  `enable_multivendor` int(11) NOT NULL DEFAULT 1,
  `enable_subscription_notify` int(11) NOT NULL DEFAULT 1,
  `enable_save_contact_message` int(11) NOT NULL DEFAULT 1,
  `text_direction` varchar(255) NOT NULL DEFAULT 'LTR',
  `timezone` varchar(255) DEFAULT NULL,
  `sidebar_lg_header` varchar(255) DEFAULT NULL,
  `sidebar_sm_header` varchar(255) DEFAULT NULL,
  `topbar_phone` varchar(191) DEFAULT NULL,
  `topbar_email` varchar(191) NOT NULL,
  `currency_name` varchar(191) DEFAULT NULL,
  `currency_icon` varchar(191) DEFAULT NULL,
  `currency_rate` double NOT NULL DEFAULT 1,
  `show_product_progressbar` int(1) NOT NULL DEFAULT 1,
  `theme_one` varchar(191) NOT NULL,
  `theme_two` varchar(191) NOT NULL,
  `seller_condition` longtext DEFAULT NULL,
  `popular_category` varchar(255) NOT NULL DEFAULT 'Popular Category',
  `popular_category_product_qty` int(10) NOT NULL DEFAULT 9,
  `frontend_url` varchar(255) DEFAULT NULL,
  `popular_category_banner` varchar(255) DEFAULT NULL,
  `featured_category_banner` varchar(255) DEFAULT NULL,
  `homepage_section_title` text NOT NULL,
  `empty_cart` varchar(255) DEFAULT NULL,
  `empty_wishlist` varchar(255) DEFAULT NULL,
  `change_password_image` varchar(255) DEFAULT NULL,
  `become_seller_avatar` varchar(255) DEFAULT NULL,
  `become_seller_banner` varchar(255) DEFAULT NULL,
  `admin_login_page` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `app_version` varchar(255) NOT NULL DEFAULT 'App version : 1.1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `maintenance_mode`, `logo`, `favicon`, `contact_email`, `enable_user_register`, `phone_number_required`, `default_phone_code`, `enable_multivendor`, `enable_subscription_notify`, `enable_save_contact_message`, `text_direction`, `timezone`, `sidebar_lg_header`, `sidebar_sm_header`, `topbar_phone`, `topbar_email`, `currency_name`, `currency_icon`, `currency_rate`, `show_product_progressbar`, `theme_one`, `theme_two`, `seller_condition`, `popular_category`, `popular_category_product_qty`, `frontend_url`, `popular_category_banner`, `featured_category_banner`, `homepage_section_title`, `empty_cart`, `empty_wishlist`, `change_password_image`, `become_seller_avatar`, `become_seller_banner`, `admin_login_page`, `created_at`, `updated_at`, `app_version`) VALUES
(1, 1, 'uploads/website-images/logo-2023-06-26-10-32-27-3791.png', 'uploads/website-images/favicon-2023-06-26-08-09-30-1286.png', 'support@halalzi.com', 1, 1, 'BD', 0, 1, 1, 'ltr', 'Asia/Dhaka', 'Halalzi', 'SU', '123-854-7896', 'contact@gmail.com', 'BDT', '৳', 85.76, 0, '#ffde0a', '#b1a306', '<h1><span style=\"color: rgb(0, 0, 0);\">Terms and Conditions</span></h1>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Welcome to QuomodoTheme!</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">These terms and conditions outline the rules and regulations for the use of Quomodo Theme Us Inc.\'s Website, located at https://QuomodoTheme.com.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">By accessing this website we assume you accept these terms and conditions. Do not continue to use QuomodoTheme if you do not agree to take all of the terms and conditions stated on this page.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company&rsquo;s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client&rsquo;s needs in respect of provision of the Company&rsquo;s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</span></p>\r\n<h3><span style=\"color: rgb(0, 0, 0);\">Cookies</span></h3>\r\n<p><span style=\"color: rgb(0, 0, 0);\">We employ the use of cookies. By accessing QuomodoTheme, you agreed to use cookies in agreement with the Quomodo Theme Us Inc.\'s Privacy Policy.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Most interactive websites use cookies to let us retrieve the user&rsquo;s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</span></p>\r\n<h3><span style=\"color: rgb(0, 0, 0);\">License</span></h3>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Unless otherwise stated, Quomodo Theme Us Inc. and/or its licensors own the intellectual property rights for all material on QuomodoTheme. All intellectual property rights are reserved. You may access this from QuomodoTheme for your own personal use subjected to restrictions set in these terms and conditions.</span></p>\r\n<h3><span style=\"color: rgb(0, 0, 0);\">You must not:</span></h3>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Republish material from QuomodoTheme</span><br><span style=\"color: rgb(0, 0, 0);\">Sell, rent or sub-license material from QuomodoTheme</span><br><span style=\"color: rgb(0, 0, 0);\">Reproduce, duplicate or copy material from QuomodoTheme</span><br><span style=\"color: rgb(0, 0, 0);\">Redistribute content from QuomodoTheme</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">This Agreement shall begin on the date hereof. Our Terms and Conditions were created with the help of the Terms And Conditions Template.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Quomodo Theme Us Inc. does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Quomodo Theme Us Inc.,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Quomodo Theme Us Inc. shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Quomodo Theme Us Inc. reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</span></p>\r\n<h3><span style=\"color: rgb(0, 0, 0);\">You warrant and represent that:</span></h3>\r\n<p><span style=\"color: rgb(0, 0, 0);\">You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</span><br><span style=\"color: rgb(0, 0, 0);\">The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</span><br><span style=\"color: rgb(0, 0, 0);\">The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</span><br><span style=\"color: rgb(0, 0, 0);\">The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">You hereby grant Quomodo Theme Us Inc. a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Hyperlinking to our Content</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">The following organizations may link to our Website without prior written approval:</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Government agencies;</span><br><span style=\"color: rgb(0, 0, 0);\">Search engines;</span><br><span style=\"color: rgb(0, 0, 0);\">News organizations;</span><br><span style=\"color: rgb(0, 0, 0);\">Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</span><br><span style=\"color: rgb(0, 0, 0);\">System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party&rsquo;s site.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">We may consider and approve other link requests from the following types of organizations:</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">commonly-known consumer and/or business information sources;</span><br><span style=\"color: rgb(0, 0, 0);\">dot.com community sites;</span><br><span style=\"color: rgb(0, 0, 0);\">associations or other groups representing charities;</span><br><span style=\"color: rgb(0, 0, 0);\">online directory distributors;</span><br><span style=\"color: rgb(0, 0, 0);\">internet portals;</span><br><span style=\"color: rgb(0, 0, 0);\">accounting, law and consulting firms; and</span><br><span style=\"color: rgb(0, 0, 0);\">educational institutions and trade associations.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of Quomodo Theme Us Inc.; and (d) the link is in the context of general resource information.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party&rsquo;s site.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to Quomodo Theme Us Inc.. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</span></p>\r\n<h3><span style=\"color: rgb(0, 0, 0);\">Approved organizations may hyperlink to our Website as follows:</span></h3>\r\n<p><span style=\"color: rgb(0, 0, 0);\">By use of our corporate name; or</span><br><span style=\"color: rgb(0, 0, 0);\">By use of the uniform resource locator being linked to; or</span><br><span style=\"color: rgb(0, 0, 0);\">By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party&rsquo;s site.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">No use of Quomodo Theme Us Inc.\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">iFrames</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</span></p>\r\n<h3><span style=\"color: rgb(0, 0, 0);\">Content Liability</span></h3>\r\n<p><span style=\"color: rgb(0, 0, 0);\">We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</span></p>\r\n<h3><span style=\"color: rgb(0, 0, 0);\">Your Privacy</span></h3>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Please read Privacy Policy</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Reservation of Rights</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it&rsquo;s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Removal of links from our website</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</span></p>\r\n<h3><span style=\"color: rgb(0, 0, 0);\">Disclaimer</span></h3>\r\n<p><span style=\"color: rgb(0, 0, 0);\">To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">limit or exclude our or your liability for death or personal injury;</span><br><span style=\"color: rgb(0, 0, 0);\">limit or exclude our or your liability for fraud or fraudulent misrepresentation;</span><br><span style=\"color: rgb(0, 0, 0);\">limit any of our or your liabilities in any way that is not permitted under applicable law; or</span><br><span style=\"color: rgb(0, 0, 0);\">exclude any of our or your liabilities that may not be excluded under applicable law.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</span></p>', 'Popular Category', 9, 'https://halalzi.com/', 'uploads/website-images/popular-cat-banner-2022-09-20-01-15-44-7577.jpg', 'uploads/website-images/featured-cat-banner-2022-09-21-02-43-49-4710.jpg', '[{\"key\":\"My_Market_Category\",\"default\":\"My Market Category\",\"custom\":\"Hot Shot Category\"},{\"key\":\"Popular_Category\",\"default\":\"Popular Category\",\"custom\":\"Popular Category\"},{\"key\":\"Top_Rated_Products\",\"default\":\"Top Rated Products\",\"custom\":\"Top Rated Products\"},{\"key\":\"Best_Seller\",\"default\":\"Best Seller\",\"custom\":\"Best Seller\"},{\"key\":\"Featured_Products\",\"default\":\"Featured Products\",\"custom\":\"Featured Products\"},{\"key\":\"New_Arrivals\",\"default\":\"New Arrivals\",\"custom\":\"New Arrivals\"},{\"key\":\"Best_Products\",\"default\":\"Best Products\",\"custom\":\"Best Products\"}]', 'uploads/website-images/empty_cart-2022-12-11-11-20-13-2650.png', 'uploads/website-images/empty_wishlist-2022-12-11-11-20-13-5116.png', 'uploads/website-images/change_password_image-2022-12-11-11-20-13-6890.png', 'uploads/website-images/become_seller_avatar-2023-07-03-01-11-44-8559.png', 'uploads/website-images/become_seller_banner-2022-11-13-05-31-26-2357.png', 'uploads/website-images/admin_login_page-2023-07-03-01-11-11-3495.jpg', NULL, '2023-07-08 21:15:42', 'App Version : 1.5');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` int(11) NOT NULL,
  `shipping_rule` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `shipping_fee` double NOT NULL,
  `condition_from` varchar(255) NOT NULL,
  `condition_to` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `city_id`, `shipping_rule`, `type`, `shipping_fee`, `condition_from`, `condition_to`, `created_at`, `updated_at`) VALUES
(21, 8, 'Regular', 'base_on_price', 60, '1', '1000', '2022-12-13 20:10:08', '2022-12-13 20:13:18'),
(22, 8, 'Quantity(5-10)', 'base_on_qty', 120, '5', '10', '2022-12-13 20:11:16', '2022-12-13 20:13:24'),
(23, 0, 'Fixed Shipping', 'base_on_price', 20, '1', '1000', '2022-12-13 20:11:53', '2022-12-13 20:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_carts`
--

CREATE TABLE `shopping_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `coupon_name` varchar(255) DEFAULT NULL,
  `coupon_price` double NOT NULL,
  `offer_type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart_variants`
--

CREATE TABLE `shopping_cart_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shopping_cart_id` int(11) NOT NULL,
  `variant_id` int(10) NOT NULL,
  `variant_item_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_pages`
--

CREATE TABLE `shop_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header_one` varchar(255) DEFAULT NULL,
  `header_two` varchar(255) DEFAULT NULL,
  `title_one` varchar(255) DEFAULT NULL,
  `title_two` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `filter_price_range` double NOT NULL DEFAULT 10000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_pages`
--

INSERT INTO `shop_pages` (`id`, `header_one`, `header_two`, `title_one`, `title_two`, `banner`, `link`, `button_text`, `status`, `filter_price_range`, `created_at`, `updated_at`) VALUES
(1, 'Up To', '70% Off', 'Women\'s Jeans Collection', 'Fashion For Women\'s', 'uploads/website-images/banner-2022-02-06-04-22-39-1426.jpg', 'product', 'Discover now', 1, 5000, NULL, '2022-09-20 08:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_one` varchar(255) DEFAULT NULL,
  `title_two` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `serial` int(11) NOT NULL DEFAULT 0,
  `slider_location` varchar(255) DEFAULT NULL,
  `product_slug` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title_one`, `title_two`, `image`, `link`, `status`, `serial`, `slider_location`, `product_slug`, `created_at`, `updated_at`) VALUES
(1, 'UP TO 70% OFF', 'Fashion Collection Summer Sale', 'uploads/custom-images/slider-2023-07-07-02-03-03-4991.jpg', 'https://shopo-ecom.vercel.app/products?category=mobile', 1, 1, NULL, 'শুকনা মরিচ ১০০ গ্রাম', '2022-09-20 03:55:57', '2023-08-06 14:45:05'),
(2, '.', 'Fashion Collection Summer Sale', 'uploads/custom-images/slider-2023-07-07-02-04-57-5913.jpg', 'https://shopo-ecom.vercel.app/products?category=lifestyle', 1, 2, NULL, 'রাঁধুনী হলুদের গুঁড়া ২০০ গ্রাম', '2022-09-20 03:57:41', '2023-07-07 14:04:57'),
(3, 'UP TO 70% OFF', 'Fashion Collection Summer Sale', 'uploads/custom-images/slider-2023-05-27-12-10-04-2352.png', 'https://shopo-ecom.vercel.app/products?category=game', 1, 3, NULL, 'leather-watch', '2022-09-20 03:58:20', '2023-05-27 06:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_templates`
--

INSERT INTO `sms_templates` (`id`, `name`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'User Verification', NULL, 'Dear {{user_name}},\r\n\r\nCongratulations! Your Account has been created successfully. Please copy and past and Active your Account. Your OTP code is {{otp_code}}', NULL, '2023-01-11 12:07:47'),
(2, 'Password Reset', NULL, 'Dear {{name}},\r\n\r\nDo you want to reset your password? Please Copy and past this code. Your OTP Code is {{otp_code}}', NULL, '2023-01-12 03:52:23'),
(3, 'Order Successfully', NULL, 'Hi {{user_name}},\r\n\r\nThanks for your new order. Your order id has been submited .\r\nOrder Id : {{order_id}},', NULL, '2023-01-11 11:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `social_login_information`
--

CREATE TABLE `social_login_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_facebook` int(11) NOT NULL DEFAULT 0,
  `facebook_client_id` text DEFAULT NULL,
  `facebook_secret_id` text DEFAULT NULL,
  `is_gmail` int(11) NOT NULL DEFAULT 0,
  `gmail_client_id` text DEFAULT NULL,
  `gmail_secret_id` text DEFAULT NULL,
  `facebook_redirect_url` text DEFAULT NULL,
  `gmail_redirect_url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_login_information`
--

INSERT INTO `social_login_information` (`id`, `is_facebook`, `facebook_client_id`, `facebook_secret_id`, `is_gmail`, `gmail_client_id`, `gmail_secret_id`, `facebook_redirect_url`, `gmail_redirect_url`, `created_at`, `updated_at`) VALUES
(1, 0, '343rer', 'fsdfa', 0, '334dsfs', 'fdsf343', 'link', 'link', NULL, '2022-06-11 11:16:26');

-- --------------------------------------------------------

--
-- Table structure for table `sslcommerz_payments`
--

CREATE TABLE `sslcommerz_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` text NOT NULL,
  `store_password` text NOT NULL,
  `mode` varchar(255) NOT NULL,
  `currency_rate` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sslcommerz_payments`
--

INSERT INTO `sslcommerz_payments` (`id`, `store_id`, `store_password`, `mode`, `currency_rate`, `country_code`, `currency_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'wsus628f03bb09670', 'wsus628f03bb09670@ssl', 'sandbox', '80', 'BD', 'BDT', 1, NULL, '2022-11-30 02:38:15');

-- --------------------------------------------------------

--
-- Table structure for table `stripe_payments`
--

CREATE TABLE `stripe_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `stripe_key` text DEFAULT NULL,
  `stripe_secret` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_code` varchar(10) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `currency_rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stripe_payments`
--

INSERT INTO `stripe_payments` (`id`, `status`, `stripe_key`, `stripe_secret`, `created_at`, `updated_at`, `country_code`, `currency_code`, `currency_rate`) VALUES
(1, 1, 'pk_test_51JU61aF56Pb8BOOX5ucAe5DlDwAkCZyffqlKMDUWsAwhKbdtuY71VvIzr0NgFKjq4sOVVaaeeyVXXnNWwu5dKgeq00kMzCBUm5', 'sk_test_51JU61aF56Pb8BOOXlz7jGkzJsCkozuAoRlFJskYGsgunfaHLmcvKLubYRQLCQOuyYHq0mvjoBFLzV7d8F6q8f6Hv00CGwULEEV', NULL, '2022-11-28 23:33:00', 'US', 'USD', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `verified_token` text DEFAULT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `status`, `verified_token`, `is_verified`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 0, '568771', 0, '2022-09-21 05:03:38', '2022-09-21 05:03:38'),
(2, 'abdur.rohman2003@gmail.com', 0, '458560', 0, '2022-09-21 05:03:47', '2022-09-21 05:03:47'),
(3, 'admin@brandmarrow.com.bd', 0, '298058', 0, '2022-09-21 05:03:59', '2022-09-21 05:03:59'),
(4, 'abdur_rohman2003@yahoo.com', 0, '978651', 0, '2022-09-21 07:06:47', '2022-09-21 07:06:47'),
(5, 'h@h.com', 0, '863244', 0, '2022-09-22 10:18:38', '2022-09-22 10:18:38'),
(6, 'Mollitia rerum omnis', 0, '637112', 0, '2022-09-23 06:01:01', '2022-09-23 06:01:01'),
(7, 'supuhib@mailinator.com', 0, '184076', 0, '2022-09-23 06:01:08', '2022-09-23 06:01:08'),
(8, 'dasd', 0, '948904', 0, '2022-10-31 20:33:02', '2022-10-31 20:33:02');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Shrits', 'shrits', 0, 'uploads/custom-images/sub-category-2023-06-27-07-53-06-6179.jpg', '2022-09-20 05:51:21', '2023-07-03 13:17:44'),
(2, 1, 'Skirt', 'skirt', 0, 'uploads/custom-images/sub-category-2023-06-27-07-53-01-6899.jpg', '2022-09-20 05:51:35', '2023-07-02 15:53:07'),
(3, 1, 'T shirt', 't-shirt', 0, NULL, '2022-09-20 06:02:23', '2023-07-03 22:56:33'),
(4, 1, 'Hand Bag', 'hand-bag', 0, NULL, '2022-09-20 07:08:14', '2023-07-02 15:53:03'),
(10, 12, 'রান্নাবান্না', 'রান্নাবান্না', 1, 'uploads/custom-images/sub-category-2023-06-28-06-58-22-8300.webp', '2023-06-25 19:39:59', '2023-06-30 19:12:21'),
(11, 12, 'জল খাবার', 'snacks', 1, 'uploads/custom-images/sub-category-2023-07-07-01-36-42-4877.webp', '2023-06-25 19:41:00', '2023-07-07 13:36:42'),
(12, 12, 'দুগ্ধজাত দ্রব্য এবং ডিম', 'dairy', 1, 'uploads/custom-images/sub-category-2023-07-07-01-43-18-1399.webp', '2023-06-25 19:41:45', '2023-07-07 13:43:18'),
(13, 12, 'নাশতা', 'breakfast', 1, 'uploads/custom-images/sub-category-2023-07-07-01-51-05-2342.webp', '2023-06-27 09:28:23', '2023-07-07 13:51:05'),
(15, 12, 'Sauces & Pickles', 'sauces-pickles', 1, 'uploads/custom-images/sub-category-2023-06-28-07-21-37-8527.webp', '2023-06-28 19:21:37', '2023-06-28 19:21:37'),
(16, 13, 'থালা বাসন পরিষ্কারক', 'থালা বাসন পরিষ্কারক', 1, 'uploads/custom-images/sub-category-2023-07-02-02-48-14-3581.webp', '2023-07-02 13:54:08', '2023-07-02 14:48:14'),
(17, 13, 'লন্ড্রি', 'লন্ড্রি', 1, 'uploads/custom-images/sub-category-2023-07-02-02-46-59-6046.webp', '2023-07-02 14:46:59', '2023-07-02 14:46:59'),
(18, 13, 'টয়লেট পরিষ্কারক', 'টয়লেট পরিষ্কারক', 1, 'uploads/custom-images/sub-category-2023-07-02-02-47-36-5028.webp', '2023-07-02 14:47:36', '2023-07-02 14:47:36'),
(19, 13, 'ন্যাপকিন এবং কাগজ এর দ্রব্য', 'ন্যাপকিন এবং কাগজ এর দ্রব্য', 1, 'uploads/custom-images/sub-category-2023-07-02-02-50-05-1531.webp', '2023-07-02 14:50:05', '2023-07-02 14:50:05'),
(20, 13, 'পোকা নিধনকারী সামগ্রী', 'পোকা নিধনকারী সামগ্রী', 1, 'uploads/custom-images/sub-category-2023-07-02-02-51-04-7890.webp', '2023-07-02 14:51:04', '2023-07-02 14:51:04'),
(21, 13, 'মেঝে এবং গ্লাস পরিষ্কারক', 'মেঝে এবং গ্লাস পরিষ্কারক', 1, 'uploads/custom-images/sub-category-2023-07-02-02-52-04-1865.webp', '2023-07-02 14:52:04', '2023-07-02 14:52:04'),
(22, 13, 'পরিষ্কারের সামগ্রী', 'পরিষ্কারের সামগ্রী', 1, 'uploads/custom-images/sub-category-2023-07-02-02-52-56-2893.webp', '2023-07-02 14:52:56', '2023-07-02 14:52:56'),
(23, 13, 'এয়ার ফ্রেশনার', 'এয়ার ফ্রেশনার', 1, 'uploads/custom-images/sub-category-2023-07-02-02-54-09-5381.webp', '2023-07-02 14:54:09', '2023-07-02 14:54:09'),
(24, 13, 'ডিসপোজেবল এবং ময়লার ব্যাগ', 'ডিসপোজেবল এবং ময়লার ব্যাগ', 1, 'uploads/custom-images/sub-category-2023-07-02-02-54-56-9929.webp', '2023-07-02 14:54:56', '2023-07-02 14:54:56'),
(25, 13, 'জুতোর সামগ্রী', 'জুতোর সামগ্রী', 1, 'uploads/custom-images/sub-category-2023-07-02-02-55-36-8527.webp', '2023-07-02 14:55:36', '2023-07-02 14:55:36'),
(26, 13, 'ডাস্টবিন এবং ঝুড়ি', 'ডাস্টবিন এবং ঝুড়ি', 1, 'uploads/custom-images/sub-category-2023-07-02-02-56-10-2194.webp', '2023-07-02 14:56:10', '2023-07-02 14:56:10'),
(27, 16, 'ডায়পার', 'diapers', 1, 'uploads/custom-images/sub-category-2023-07-09-08-21-34-2285.webp', '2023-07-09 20:21:34', '2023-07-09 20:21:34'),
(28, 16, 'শিশু খাদ্য', 'fooding', 1, 'uploads/custom-images/sub-category-2023-07-09-08-24-16-9573.webp', '2023-07-09 20:24:16', '2023-07-09 20:24:16'),
(29, 16, 'শিশুর স্নান এবং ত্বকের যত্ন', 'bath-skincare', 1, 'uploads/custom-images/sub-category-2023-07-09-08-31-06-2810.webp', '2023-07-09 20:31:06', '2023-07-09 20:31:06'),
(30, 16, 'নবজাতকের প্রয়োজনীয়তা', 'newborn-essentials', 1, 'uploads/custom-images/sub-category-2023-07-09-08-35-12-2654.webp', '2023-07-09 20:35:12', '2023-07-09 20:35:12'),
(31, 16, 'শিশুর আনুষাঙ্গিক', 'baby-accessories', 1, 'uploads/custom-images/sub-category-2023-07-09-08-35-51-8481.webp', '2023-07-09 20:35:51', '2023-07-09 20:35:51'),
(32, 16, 'ফিডার', 'feeders', 1, 'uploads/custom-images/sub-category-2023-07-09-08-37-08-4791.webp', '2023-07-09 20:37:08', '2023-07-09 20:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `tawk_chats`
--

CREATE TABLE `tawk_chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chat_link` varchar(255) DEFAULT NULL,
  `widget_id` varchar(255) DEFAULT NULL,
  `property_id` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tawk_chats`
--

INSERT INTO `tawk_chats` (`id`, `chat_link`, `widget_id`, `property_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'https://tawk.to/chat/612dc781d6e7610a49b2d444/1fedd6l9m', '612dc781d6e7610a49b2d444', '1fedd6l9m', 1, NULL, '2022-11-14 03:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `terms_and_conditions`
--

CREATE TABLE `terms_and_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `terms_and_condition` longtext DEFAULT NULL,
  `privacy_policy` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_and_conditions`
--

INSERT INTO `terms_and_conditions` (`id`, `terms_and_condition`, `privacy_policy`, `created_at`, `updated_at`) VALUES
(1, '<h1><span style=\"color: rgb(0, 0, 0);\">Terms and Conditions</span></h1>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Welcome to QuomodoTheme!</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">These terms and conditions outline the rules and regulations for the use of Quomodo Theme Us Inc.\'s Website, located at https://QuomodoTheme.com.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">By accessing this website we assume you accept these terms and conditions. Do not continue to use QuomodoTheme if you do not agree to take all of the terms and conditions stated on this page.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company&rsquo;s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client&rsquo;s needs in respect of provision of the Company&rsquo;s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</span></p>\r\n<h3><span style=\"color: rgb(0, 0, 0);\">Cookies</span></h3>\r\n<p><span style=\"color: rgb(0, 0, 0);\">We employ the use of cookies. By accessing QuomodoTheme, you agreed to use cookies in agreement with the Quomodo Theme Us Inc.\'s Privacy Policy.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Most interactive websites use cookies to let us retrieve the user&rsquo;s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</span></p>\r\n<h3><span style=\"color: rgb(0, 0, 0);\">License</span></h3>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Unless otherwise stated, Quomodo Theme Us Inc. and/or its licensors own the intellectual property rights for all material on QuomodoTheme. All intellectual property rights are reserved. You may access this from QuomodoTheme for your own personal use subjected to restrictions set in these terms and conditions.</span></p>\r\n<h3><span style=\"color: rgb(0, 0, 0);\">You must not:</span></h3>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Republish material from QuomodoTheme</span><br><span style=\"color: rgb(0, 0, 0);\">Sell, rent or sub-license material from QuomodoTheme</span><br><span style=\"color: rgb(0, 0, 0);\">Reproduce, duplicate or copy material from QuomodoTheme</span><br><span style=\"color: rgb(0, 0, 0);\">Redistribute content from QuomodoTheme</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">This Agreement shall begin on the date hereof. Our Terms and Conditions were created with the help of the Terms And Conditions Template.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Quomodo Theme Us Inc. does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Quomodo Theme Us Inc.,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Quomodo Theme Us Inc. shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Quomodo Theme Us Inc. reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</span></p>\r\n<h3><span style=\"color: rgb(0, 0, 0);\">You warrant and represent that:</span></h3>\r\n<p><span style=\"color: rgb(0, 0, 0);\">You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</span><br><span style=\"color: rgb(0, 0, 0);\">The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</span><br><span style=\"color: rgb(0, 0, 0);\">The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</span><br><span style=\"color: rgb(0, 0, 0);\">The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">You hereby grant Quomodo Theme Us Inc. a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Hyperlinking to our Content</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">The following organizations may link to our Website without prior written approval:</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Government agencies;</span><br><span style=\"color: rgb(0, 0, 0);\">Search engines;</span><br><span style=\"color: rgb(0, 0, 0);\">News organizations;</span><br><span style=\"color: rgb(0, 0, 0);\">Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</span><br><span style=\"color: rgb(0, 0, 0);\">System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party&rsquo;s site.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">We may consider and approve other link requests from the following types of organizations:</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">commonly-known consumer and/or business information sources;</span><br><span style=\"color: rgb(0, 0, 0);\">dot.com community sites;</span><br><span style=\"color: rgb(0, 0, 0);\">associations or other groups representing charities;</span><br><span style=\"color: rgb(0, 0, 0);\">online directory distributors;</span><br><span style=\"color: rgb(0, 0, 0);\">internet portals;</span><br><span style=\"color: rgb(0, 0, 0);\">accounting, law and consulting firms; and</span><br><span style=\"color: rgb(0, 0, 0);\">educational institutions and trade associations.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of Quomodo Theme Us Inc.; and (d) the link is in the context of general resource information.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party&rsquo;s site.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to Quomodo Theme Us Inc.. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</span></p>\r\n<h3><span style=\"color: rgb(0, 0, 0);\">Approved organizations may hyperlink to our Website as follows:</span></h3>\r\n<p><span style=\"color: rgb(0, 0, 0);\">By use of our corporate name; or</span><br><span style=\"color: rgb(0, 0, 0);\">By use of the uniform resource locator being linked to; or</span><br><span style=\"color: rgb(0, 0, 0);\">By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party&rsquo;s site.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">No use of Quomodo Theme Us Inc.\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">iFrames</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</span></p>\r\n<h3><span style=\"color: rgb(0, 0, 0);\">Content Liability</span></h3>\r\n<p><span style=\"color: rgb(0, 0, 0);\">We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</span></p>\r\n<h3><span style=\"color: rgb(0, 0, 0);\">Your Privacy</span></h3>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Please read Privacy Policy</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Reservation of Rights</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it&rsquo;s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">Removal of links from our website</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</span></p>\r\n<h3><span style=\"color: rgb(0, 0, 0);\">Disclaimer</span></h3>\r\n<p><span style=\"color: rgb(0, 0, 0);\">To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">limit or exclude our or your liability for death or personal injury;</span><br><span style=\"color: rgb(0, 0, 0);\">limit or exclude our or your liability for fraud or fraudulent misrepresentation;</span><br><span style=\"color: rgb(0, 0, 0);\">limit any of our or your liabilities in any way that is not permitted under applicable law; or</span><br><span style=\"color: rgb(0, 0, 0);\">exclude any of our or your liabilities that may not be excluded under applicable law.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</span></p>', '<h1>Privacy Policy for QuomodoTheme.</h1>\r\n<p>At QuomodoTheme, accessible from https://QuomodoTheme.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by QuomodoTheme and how we use it.</p>\r\n<p>If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p>\r\n<p>This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in QuomodoTheme. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the Free Privacy Policy Generator.</p>\r\n<h3>Consent</h3>\r\n<p>By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p>\r\n<p>Information we collect</p>\r\n<p>The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p>\r\n<p>If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p>\r\n<p>When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p>\r\n<h3>How we use your information</h3>\r\n<p>We use the information we collect in various ways, including to:</p>\r\n<p>Provide, operate, and maintain our website<br>Improve, personalize, and expand our website<br>Understand and analyze how you use our website<br>Develop new products, services, features, and functionality<br>Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes<br>Send you emails<br>Find and prevent fraud<br>Log Files</p>\r\n<p>QuomodoTheme follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</p>\r\n<h3>Cookies and Web Beacons</h3>\r\n<p>Like any other website, QuomodoTheme uses \'cookies\'. These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and/or other information.</p>\r\n<p>For more general information on cookies, please read the Cookies article on Generate Privacy Policy website.</p>\r\n<p>Advertising Partners Privacy Policies</p>\r\n<p>You may consult this list to find the Privacy Policy for each of the advertising partners of QuomodoTheme.</p>\r\n<p>Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on QuomodoTheme, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p>\r\n<p>Note that QuomodoTheme has no access to or control over these cookies that are used by third-party advertisers.</p>\r\n<h3>Third Party Privacy Policies</h3>\r\n<p>QuomodoTheme\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</p>\r\n<p>You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites.</p>\r\n<p>CCPA Privacy Rights (Do Not Sell My Personal Information)</p>\r\n<p>Under the CCPA, among other rights, California consumers have the right to:</p>\r\n<p>Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p>\r\n<p>Request that a business delete any personal data about the consumer that a business has collected.</p>\r\n<p>Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</p>\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n<h3>GDPR Data Protection Rights</h3>\r\n<p>We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p>\r\n<p>The right to access &ndash; You have the right to request copies of your personal data. We may charge you a small fee for this service.</p>\r\n<p>The right to rectification &ndash; You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p>\r\n<p>The right to erasure &ndash; You have the right to request that we erase your personal data, under certain conditions.</p>\r\n<p>The right to restrict processing &ndash; You have the right to request that we restrict the processing of your personal data, under certain conditions.</p>\r\n<p>The right to object to processing &ndash; You have the right to object to our processing of your personal data, under certain conditions.</p>\r\n<p>The right to data portability &ndash; You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p>\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n<h3>Children\'s Information</h3>\r\n<p>Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p>\r\n<p>QuomodoTheme does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>', '2022-09-20 08:23:13', '2023-03-22 11:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `image`, `rating`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(2, 'John Doe', 'CEO', 'uploads/custom-images/john-doe-20221110031511.jpg', '5', 'As a digital marketing agency our team works day in and day out on websites of all kinds. Some of the most common errors we see are websites not optimized for SEO because of old, boring, or out of date website themes or designs.', 1, NULL, '2023-07-08 21:15:05'),
(3, 'Michael', 'CEO', 'uploads/custom-images/michael-20230323025551.png', '5', 'Almost every imaginable design is possible and customizations are allowed on every level. Some features could make use of better controls. If you know how to operate your mouse, then you are all set to use this pagebuilder.', 1, '2022-07-31 10:57:20', '2023-03-23 08:55:52'),
(5, 'James Robert', 'CEO', 'uploads/custom-images/james-robert-20230323025559.png', '5', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English', 1, '2022-09-25 09:12:27', '2023-03-23 08:56:00'),
(6, 'Mary 	Patricia', 'CEO', 'uploads/custom-images/mary-patricia-20220925031348.png', '5', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English', 1, '2022-09-25 09:13:48', '2022-09-25 09:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `three_column_categories`
--

CREATE TABLE `three_column_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id_one` int(11) NOT NULL DEFAULT 0,
  `sub_category_id_one` int(11) NOT NULL DEFAULT 0,
  `child_category_id_one` int(11) NOT NULL DEFAULT 0,
  `category_id_two` int(11) NOT NULL DEFAULT 0,
  `sub_category_id_two` int(11) NOT NULL DEFAULT 0,
  `child_category_id_two` int(11) NOT NULL DEFAULT 0,
  `category_id_three` int(11) NOT NULL DEFAULT 0,
  `sub_category_id_three` int(11) NOT NULL DEFAULT 0,
  `child_category_id_three` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `three_column_categories`
--

INSERT INTO `three_column_categories` (`id`, `category_id_one`, `sub_category_id_one`, `child_category_id_one`, `category_id_two`, `sub_category_id_two`, `child_category_id_two`, `category_id_three`, `sub_category_id_three`, `child_category_id_three`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 2, 0, 0, 5, 0, 0, NULL, '2022-02-07 03:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `twilio_sms`
--

CREATE TABLE `twilio_sms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_sid` text NOT NULL,
  `auth_token` text NOT NULL,
  `twilio_phone_number` varchar(255) NOT NULL,
  `enable_register_sms` int(11) NOT NULL DEFAULT 0,
  `enable_reset_pass_sms` int(11) NOT NULL DEFAULT 0,
  `enable_order_confirmation_sms` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `twilio_sms`
--

INSERT INTO `twilio_sms` (`id`, `account_sid`, `auth_token`, `twilio_phone_number`, `enable_register_sms`, `enable_reset_pass_sms`, `enable_order_confirmation_sms`, `created_at`, `updated_at`) VALUES
(1, 'AC3551cb38008dc7c6560db2909d58d01b', '001e56dc322d3eb0be477376f969b79c', '+17266008587', 1, 1, 1, NULL, '2023-01-11 11:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `forget_password_token` varchar(191) DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `provider_id` varchar(191) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `provider_avatar` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `country_id` int(10) DEFAULT 0,
  `state_id` int(10) DEFAULT 0,
  `city_id` int(10) DEFAULT 0,
  `zip_code` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `is_vendor` int(10) NOT NULL DEFAULT 0,
  `verify_token` varchar(191) DEFAULT NULL,
  `email_verified` int(1) NOT NULL DEFAULT 0,
  `agree_policy` int(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `forget_password_token`, `status`, `provider_id`, `provider`, `provider_avatar`, `image`, `phone`, `country_id`, `state_id`, `city_id`, `zip_code`, `address`, `is_vendor`, `verify_token`, `email_verified`, `agree_policy`, `created_at`, `updated_at`) VALUES
(4, 'Autumn Decker Dean', 'seller7@gmail.com', NULL, '$2y$10$B3aOUPcMKFQUKR9af/taSei07iAEaiT2TaaWaofuM4cMuspsIffH.', 'Ou5C4kwC0iMZ7K2nAP7m2mZulHnXvIhz5j3VAaWNxboVpCbwFcUVPpPP8DXX', NULL, 0, NULL, NULL, NULL, NULL, '985-458-1254', 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-09-21 05:33:41', '2023-06-26 21:32:26'),
(5, 'Jayden Carter', 'user5@gmail.com', NULL, '$2y$10$fLfrcsXAEO4Ppl.RzHEj2ObbdSBKKgy8XC3kPDIjE/Fqp.yRnCqea', NULL, NULL, 0, NULL, NULL, NULL, NULL, '236-451-7458', 0, 0, 0, NULL, 'qww', 0, NULL, 1, 1, '2022-09-21 05:40:21', '2023-06-26 21:32:29'),
(6, 'David Leo', 'user3@gmail.com', NULL, '$2y$10$97EjXmtnALzk8asIK7c92exVWTjNqiVZY0i63WLgTpiltIxcej66a', NULL, NULL, 0, NULL, NULL, NULL, 'uploads/custom-images/nayeem-2022-11-13-10-12-58-9722.jpg', '874-512-4589', 0, 0, 0, NULL, 'catsle', 0, NULL, 1, 1, '2022-09-21 06:48:34', '2023-06-26 21:32:30'),
(7, 'John Doe', 'user@gmail.com', NULL, '$2y$10$slQDXnVvhpogMQB3OyqAeeIEBYNCS7pwN8rVHlYsSDv/nA3tIhEDu', 'Q8ZIbDCY9pwnZCVAIUA3c0YP8B6g4bOfxP9cZprlVxQ94H2rX9Z3Ex8Bpts0', '351184', 0, NULL, NULL, NULL, 'uploads/custom-images/abdullah-mamunn-2023-03-23-12-54-59-5792.jpg', '12345690', 2, 4, 8, NULL, 'Mirpur 11', 0, NULL, 1, 1, '2022-09-21 07:08:27', '2023-06-26 21:32:31'),
(8, 'Harding Rosa', 'seller5@gmail.com', NULL, '$2y$10$.Z7BHjmwrhswRQA1/SDRUubKwZDTtFU8GK9ZGbkxprsMCDWBycSXC', NULL, NULL, 0, NULL, NULL, NULL, NULL, '215-365-6452', 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-09-21 07:11:54', '2023-06-26 21:32:35'),
(9, 'Nasim Horne', 'seller4@gmail.com', NULL, '$2y$10$fSYHi6.oqhxsPYKZA1aASOA3YbujGYabkkoE/w/G3kKBoSRqzO2TG', NULL, NULL, 0, NULL, NULL, NULL, NULL, '236-458-7851', 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-09-21 07:17:37', '2023-06-26 21:32:33'),
(10, 'Xaviera Barnes', 'seller2@gmail.com', NULL, '$2y$10$W0ffeYoOKWHml0SiziQ7uuB0WjbSkf3hbNuuwwmNi5ZFxD/ybSD4W', NULL, NULL, 0, NULL, NULL, NULL, NULL, '123-452-5662', 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-09-21 07:21:41', '2023-06-26 21:32:34'),
(12, 'Kelsey Conrad', 'seller@gmail.com', NULL, '$2y$10$UuvKnwLpoTsQbJlryYW6gOuaOmrAh.xKqprtMDrhiLGlTmFhRVpTm', NULL, NULL, 0, NULL, NULL, NULL, NULL, '321-584-7584', 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-09-21 07:26:08', '2023-06-26 21:32:37'),
(19, 'Elias Charles', 'seller1@gmail.com', NULL, '$2y$10$UuvKnwLpoTsQbJlryYW6gOuaOmrAh.xKqprtMDrhiLGlTmFhRVpTm', NULL, NULL, 0, NULL, NULL, NULL, NULL, '362-478-5412', 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-10-27 15:07:06', '2023-06-26 21:32:37'),
(30, 'Lucas Benjamin', 'user4@gmail.com', NULL, '$2y$10$ce8fRc1NAK//dp4fOWyTeOb8n5jkw3DBKZ8fnZlogWT4Lamx1rtUm', NULL, '890243', 0, NULL, NULL, NULL, NULL, '122-452-1452', 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-11-10 22:50:51', '2023-06-26 21:32:40'),
(31, 'Mohammad Ali', 'msalisapan@gmail.com', NULL, '$2y$10$xGD4/MDwPGXQlCIRDOObH.DyyY9qPtKzTqcTskNWeKpELq/zeYnWa', NULL, '996248', 0, NULL, NULL, NULL, 'uploads/custom-images/mohammad-ali-2022-11-15-10-12-21-8139.jpg', '01624188877', 1, 1, 2, NULL, 'Florida, USA', 0, NULL, 1, 1, '2022-11-15 14:57:56', '2023-06-26 21:32:39'),
(32, 'Ali', 'sapanmsc@gmail.com', NULL, '$2y$10$MQGGPTLnqU9Z21gpMlf9fuWdQTYU98fSxd4pLLKHTCf4l9YT1f/6G', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-11-17 22:06:51', '2023-06-26 21:32:43'),
(34, 'Rafiqul Islam', 'sokeh55414@rubeshi.com', NULL, '$2y$10$/GpwZbcrq17GuXzo4hAxeOTtHHNk55nvhIsX6eRpccAZnq/ZsuAoG', NULL, NULL, 0, NULL, NULL, NULL, NULL, '017777777777', 4, 7, 11, NULL, 'Dhaka,Bangladesh', 0, NULL, 1, 1, '2022-11-30 15:29:50', '2023-06-26 21:32:44'),
(35, 'Abir', 'bipexoh854@kuvasin.com', NULL, '$2y$10$Lwf7VLLCZ1ES/7K18WusWOZHN7Zz5yyjIYHO1Z93Z7ROLV2FwC9o6', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-11-30 17:48:04', '2023-06-26 21:32:47'),
(37, 'Mamun', 'xercurr@gmail.com', NULL, '$2y$10$gEC6k8pVbXNFcDvLHis8NeEO2ojcnAnl6a.CL87vFyVKBBdDNDXFm', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-12-01 23:11:22', '2023-06-26 21:32:45'),
(38, 'abdur', 'abdur.rohman2003@gmail.com', NULL, '$2y$10$Am3JCsTh5bK4Mt.z7YKJ/e2v8m.q20leFLA1LN7OBV29Jf9ebKm.y', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-12-02 16:02:42', '2023-06-26 21:32:45'),
(39, 'Shuvo khan', 'sediced375@ceoshub.com', NULL, '$2y$10$20UteaRWi7xUVXQSw1SZwOjVpfBFbakm9Vr6FP6tR9OCMQxKOy32C', NULL, NULL, 0, NULL, NULL, NULL, 'uploads/custom-images/shuvo-khan-2022-12-06-11-24-43-1210.jpg', '01777777777', 2, 4, 8, NULL, 'Dhaka,bangladesh', 0, NULL, 1, 1, '2022-12-06 16:17:23', '2023-06-26 21:32:48'),
(40, 'Rafiqul  Islam', 'lenoya1453@dmonies.com', NULL, '$2y$10$13q/OCDiGBucG5cWrjqAmu/hqQCwygGN8lu9h2Pcdg7cINUC0U4Vi', NULL, NULL, 0, NULL, NULL, NULL, 'uploads/custom-images/rafiqul-islam-2022-12-06-03-32-27-8841.jpg', '01777777777', 2, 5, 9, NULL, 'dhaka,bangladesh', 0, NULL, 1, 1, '2022-12-06 20:31:08', '2023-06-26 21:32:49'),
(41, 'Abrahm Linkon', 'gajec29194@tingn.com', NULL, '$2y$10$AWB7oV1hqatMLYvSoMy1IOd387hfVnNRQCiC7xxxQK4pb.Wb0sRAO', NULL, '820126', 0, NULL, NULL, NULL, NULL, '1236547888', 2, 4, 8, NULL, 'Kolkata', 0, NULL, 1, 1, '2023-01-15 16:40:44', '2023-06-26 21:32:49'),
(42, 'Test Name', 'togote8190@v3dev.com', NULL, '$2y$10$sChkUNHvR5KMFhw4mXgrOeIfpXKiyqLV5nq5a2X5yfqbKeQ9Hn2oS', NULL, '945406', 0, NULL, NULL, NULL, NULL, '123697845', 2, 4, 8, NULL, 'Kolkata', 0, NULL, 1, 1, '2023-01-16 15:36:44', '2023-06-26 21:32:50'),
(43, 'AJOY Sarker', 'ajoy.quomodosoft@gmail.com', NULL, '$2y$10$.8ILCxDgqJu088IFRdDOb.ofLB8.RmXMyzn/V9dWUFY0B.JcbsPyu', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2023-01-21 22:50:05', '2023-06-26 21:32:50'),
(46, 'Suvo khan', 'mawar31950@asoflex.com', NULL, '$2y$10$Qby4OWcU.tJK2/EURSFmouMcqZgAvzwVoa4WbCYfbKE8/K4svnqxW', NULL, NULL, 0, NULL, NULL, NULL, 'uploads/custom-images/suvo-khan-2023-03-23-04-28-47-1729.jpg', '+8801642222090', 0, 0, 0, NULL, 'null', 0, NULL, 1, 1, '2023-03-23 10:08:48', '2023-06-26 21:32:52'),
(47, 'Suvo khan', 'jolod73079@asoflex.com', NULL, '$2y$10$9sgHJJnLA.9ZZpB3YUO09OKuUli1Mfb6B6ZQG4.3HxMd3dMzylfBe', NULL, NULL, 0, NULL, NULL, NULL, NULL, '+8801792166627', 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2023-03-23 10:29:37', '2023-06-26 21:32:52'),
(51, 'ibrahim khalil', 'khalil.cmt.bpi@gmail.com', NULL, '$2y$10$DbsQSTucIOTCtHollR70g.dD1gua1fb0Cvh7npoxU1I5tPoDt9yrS', NULL, NULL, 0, NULL, NULL, NULL, NULL, '+8801310118550', 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2023-03-23 10:58:48', '2023-06-26 21:32:53'),
(52, 'Ali', 'jerame5720@necktai.com', NULL, '$2y$10$2u0Ti6fwhHln30IiFq8LNOlxIvTL4.mX0I2MQuIK992PFcFopTBsG', NULL, NULL, 0, NULL, NULL, NULL, NULL, '01776837364', 0, 0, 0, NULL, NULL, 0, '322163', 0, 1, '2023-03-26 09:45:28', '2023-03-26 09:45:28'),
(54, 'test test', 'pagateh183@mitigado.com', NULL, '$2y$10$jiqlYOvu.1lF0THCdicLk.6ymxlpR2egt1uUw3cGyEh.UXxNHx4Pa', NULL, NULL, 0, NULL, NULL, NULL, NULL, '+8801885208429', 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2023-04-04 04:27:47', '2023-06-26 21:32:53'),
(55, 'test2 test2', 'rifaman890@jthoven.com', NULL, '$2y$10$Zz/NP2j7wEH4GXir3EE1N.6XfCWym8W.Gnqlnm/BGF4443Fs0XXKa', NULL, NULL, 0, NULL, NULL, NULL, NULL, '+8801777777777', 0, 0, 0, NULL, NULL, 0, '348401', 0, 1, '2023-04-04 04:39:20', '2023-04-04 04:39:20'),
(56, 'test3 test3', 'cahoyec843@jthoven.com', NULL, '$2y$10$EjKjbh4bwrUT46mD85wDJuu5f7PDr.Kn3IH0FQZ2SDhkwpSwi/fQa', NULL, NULL, 0, NULL, NULL, NULL, NULL, '+8801888888888', 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2023-04-04 04:41:36', '2023-06-26 21:32:54'),
(57, 'Md Anwar Hossain', 'anwar@gmail.com', NULL, '$2y$10$hiGABwPaHrS4cDUoFseVeeTZpTDKkIBFAIYC6tNbH64VoSi.LmoOS', NULL, NULL, 0, NULL, NULL, NULL, 'uploads/custom-images/md-anwar-hossain-2023-06-25-06-54-51-6690.webp', '01700000000', 0, 0, 0, NULL, 'Y=15 momhadpur', 0, NULL, 0, 0, '2023-06-25 18:54:00', '2023-06-25 18:54:52'),
(58, 'Naim Rahaman Rahaman', 'admin@gmail.com', NULL, '$2y$10$CtxNUVoFEMMJoBgbUC0M9OuPuq94dZUiiRyibkUY9Dy4iyqBSvQwO', NULL, NULL, 1, NULL, NULL, NULL, NULL, '01938264923', 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, '2023-06-26 21:26:46', '2023-07-08 17:27:21'),
(59, 'Sayem', 'sayemtutul@gmail.com', NULL, '$2y$10$enttiEWgaExFfsjx6/AsAOmR8Wjdq9L0VTE0iMHrGwCVPAKsigaSe', NULL, NULL, 0, NULL, NULL, NULL, NULL, '01721324456', 0, 0, 0, NULL, 'gj', 0, NULL, 0, 0, '2023-06-26 22:57:16', '2023-06-26 23:24:17'),
(60, 'Sontos Chandra Shil', 'sontosroy78@gmail.com', NULL, '$2y$10$aUA2F7qDNch.DkFYcnqH7eVgJwJcsLd8iOBrFpHEF.df1WtYm68We', NULL, NULL, 0, NULL, NULL, NULL, NULL, '01310186926', 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, '2023-06-27 19:27:17', '2023-06-27 19:27:17'),
(61, 'Shuvo', 'shuvoahmed@gmail.com', NULL, '$2y$10$8/.M31T.i8rtK.TGe/RTcOhoohnaeybcCw4nig/qSOSrArq6DIBx2', NULL, NULL, 1, NULL, NULL, NULL, NULL, '01988387391', 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, '2023-06-30 13:08:30', '2023-07-08 17:27:07'),
(62, 'Rahbar Rashed', 'rashed@gmail.com', NULL, '$2y$10$EviRTCK72Mnbf8GUMXiTXOVk.u7dwaLSq7PCeApSCCB90aT1XjIne', NULL, NULL, 0, NULL, NULL, NULL, NULL, '01762223976', 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, '2023-07-01 07:44:15', '2023-07-01 07:44:15'),
(63, 'test', 'test@gmail.com', NULL, '$2y$10$ddyakw8CrLl1CDW1TnnEOOEO4PzWOIuRGlnro6mArqid/Wkke04YO', NULL, NULL, 0, NULL, NULL, NULL, NULL, '01762223976', 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, '2023-07-04 14:27:05', '2023-07-04 14:27:05'),
(64, 'Naim', 'naimprince040@gmail.com', NULL, '$2y$10$u8yNhioIQvy1e.hpFiSciOJA3rvePML8GO3YanV0XNkPE3xR7mG0i', NULL, NULL, 1, NULL, NULL, NULL, NULL, '01681354066', 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, '2023-07-04 19:50:59', '2023-07-08 17:27:11'),
(65, 'Sirajul', 'sirajul@gmail.com', NULL, '$2y$10$gVv0r5t1TNKKlT2sS0LFk.5sjgk./onCRxmEpmHgVHxqc9bSvIoD6', NULL, NULL, 1, NULL, NULL, NULL, NULL, '01922477974', 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, '2023-07-05 20:36:41', '2023-07-08 17:27:16'),
(66, 'Md Rashed', 'rashed95@gmail.com', NULL, '$2y$10$ah2wbCr2IErWjkPmlNpFZu7PYeDPF4M8glBvefoNEhlgmmFcwgn6S', NULL, NULL, 0, NULL, NULL, NULL, NULL, '01820097439', 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, '2023-07-08 14:46:03', '2023-07-08 14:46:03'),
(67, 'Md. Mahadi Islam Mahadi', 'mahediihasan220@gmail.com', NULL, '$2y$10$ZEBnmVomb0/lzrt3GK0NuuSWlLNCxBTFTiegYoyJSz8v0rJrZKH3i', NULL, NULL, 1, NULL, NULL, NULL, NULL, '+8801623421591', 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, '2023-07-09 22:13:53', '2023-07-09 22:40:53'),
(68, 'tester', 'tester@gmail.com', NULL, '$2y$10$8zLyhJgomv6527h6kehHs.RK4Qz9bem9H6X2y1UCXEuBhvc7U24Qa', NULL, NULL, 0, NULL, NULL, NULL, NULL, '01712056488', 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, '2023-08-06 13:35:00', '2023-08-06 13:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_amount` double NOT NULL DEFAULT 0,
  `banner_image` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `open_at` varchar(255) DEFAULT NULL,
  `closed_at` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `top_rated` int(11) NOT NULL DEFAULT 0,
  `verified_token` varchar(255) DEFAULT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `greeting_msg` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `user_id`, `total_amount`, `banner_image`, `logo`, `phone`, `email`, `shop_name`, `slug`, `open_at`, `closed_at`, `address`, `seo_title`, `seo_description`, `status`, `is_featured`, `top_rated`, `verified_token`, `is_verified`, `greeting_msg`, `created_at`, `updated_at`) VALUES
(1, 4, 0, 'uploads/custom-images/seller-banner-2022-09-21-11-58-14-6681.png', 'uploads/custom-images/seller-logo-2022-09-21-11-58-14-9795.png', '01792166627', 'jipof28122@orlydns.com', 'Shopno BD', 'shopno-bd', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Shopno BD', 'Shopno BD', 0, 0, 0, NULL, 0, 'Welcome to Shopno BD', '2022-09-21 05:58:14', '2023-07-02 16:02:47');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_social_links`
--

CREATE TABLE `vendor_social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `min_amount` double NOT NULL DEFAULT 0,
  `max_amount` double NOT NULL DEFAULT 0,
  `withdraw_charge` double NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `name`, `min_amount`, `max_amount`, `withdraw_charge`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bank Payment', 500, 1500, 5, '<p>Please provide your Bank Account information :&nbsp;</p><p><span style=\"background-color: transparent;\">Bank Name: Your bank name</span></p><p><span style=\"background-color: transparent;\">Account Number:&nbsp; Your bank account number</span></p><p>Routing Number: Your bank routing number</p><p>Branch: Your bank branch name</p>', 1, '2022-11-10 19:41:15', '2022-11-10 19:41:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `announcement_modals`
--
ALTER TABLE `announcement_modals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_payments`
--
ALTER TABLE `bank_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_images`
--
ALTER TABLE `banner_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `breadcrumb_images`
--
ALTER TABLE `breadcrumb_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compare_products`
--
ALTER TABLE `compare_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_pages`
--
ALTER TABLE `contact_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_consents`
--
ALTER TABLE `cookie_consents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_states`
--
ALTER TABLE `country_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_countries`
--
ALTER TABLE `currency_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_paginations`
--
ALTER TABLE `custom_paginations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_configurations`
--
ALTER TABLE `email_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `error_pages`
--
ALTER TABLE `error_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facebook_comments`
--
ALTER TABLE `facebook_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facebook_pixels`
--
ALTER TABLE `facebook_pixels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_categories`
--
ALTER TABLE `featured_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flutterwaves`
--
ALTER TABLE `flutterwaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_links`
--
ALTER TABLE `footer_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_social_links`
--
ALTER TABLE `footer_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_analytics`
--
ALTER TABLE `google_analytics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_recaptchas`
--
ALTER TABLE `google_recaptchas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_one_visibilities`
--
ALTER TABLE `home_page_one_visibilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informations`
--
ALTER TABLE `informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instamojo_payments`
--
ALTER TABLE `instamojo_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintainance_texts`
--
ALTER TABLE `maintainance_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mega_menu_categories`
--
ALTER TABLE `mega_menu_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mega_menu_sub_categories`
--
ALTER TABLE `mega_menu_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_visibilities`
--
ALTER TABLE `menu_visibilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_addresses`
--
ALTER TABLE `order_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product_variants`
--
ALTER TABLE `order_product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paymongo_payments`
--
ALTER TABLE `paymongo_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypal_payments`
--
ALTER TABLE `paypal_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paystack_and_mollies`
--
ALTER TABLE `paystack_and_mollies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `popular_categories`
--
ALTER TABLE `popular_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popular_posts`
--
ALTER TABLE `popular_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reports`
--
ALTER TABLE `product_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_specifications`
--
ALTER TABLE `product_specifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_specification_keys`
--
ALTER TABLE `product_specification_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variant_items`
--
ALTER TABLE `product_variant_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pusher_credentails`
--
ALTER TABLE `pusher_credentails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `razorpay_payments`
--
ALTER TABLE `razorpay_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_mail_logs`
--
ALTER TABLE `seller_mail_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_withdraws`
--
ALTER TABLE `seller_withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_cart_variants`
--
ALTER TABLE `shopping_cart_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_pages`
--
ALTER TABLE `shop_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_templates`
--
ALTER TABLE `sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_login_information`
--
ALTER TABLE `social_login_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sslcommerz_payments`
--
ALTER TABLE `sslcommerz_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stripe_payments`
--
ALTER TABLE `stripe_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tawk_chats`
--
ALTER TABLE `tawk_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `three_column_categories`
--
ALTER TABLE `three_column_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twilio_sms`
--
ALTER TABLE `twilio_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_social_links`
--
ALTER TABLE `vendor_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `announcement_modals`
--
ALTER TABLE `announcement_modals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_payments`
--
ALTER TABLE `bank_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner_images`
--
ALTER TABLE `banner_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `breadcrumb_images`
--
ALTER TABLE `breadcrumb_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `child_categories`
--
ALTER TABLE `child_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `compare_products`
--
ALTER TABLE `compare_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_pages`
--
ALTER TABLE `contact_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cookie_consents`
--
ALTER TABLE `cookie_consents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `country_states`
--
ALTER TABLE `country_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `currency_countries`
--
ALTER TABLE `currency_countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custom_paginations`
--
ALTER TABLE `custom_paginations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `email_configurations`
--
ALTER TABLE `email_configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `error_pages`
--
ALTER TABLE `error_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `facebook_comments`
--
ALTER TABLE `facebook_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facebook_pixels`
--
ALTER TABLE `facebook_pixels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `featured_categories`
--
ALTER TABLE `featured_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `flutterwaves`
--
ALTER TABLE `flutterwaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footer_links`
--
ALTER TABLE `footer_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `footer_social_links`
--
ALTER TABLE `footer_social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `google_analytics`
--
ALTER TABLE `google_analytics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `google_recaptchas`
--
ALTER TABLE `google_recaptchas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_page_one_visibilities`
--
ALTER TABLE `home_page_one_visibilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `informations`
--
ALTER TABLE `informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `instamojo_payments`
--
ALTER TABLE `instamojo_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `maintainance_texts`
--
ALTER TABLE `maintainance_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mega_menu_categories`
--
ALTER TABLE `mega_menu_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mega_menu_sub_categories`
--
ALTER TABLE `mega_menu_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu_visibilities`
--
ALTER TABLE `menu_visibilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `order_addresses`
--
ALTER TABLE `order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;

--
-- AUTO_INCREMENT for table `order_product_variants`
--
ALTER TABLE `order_product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `paymongo_payments`
--
ALTER TABLE `paymongo_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paypal_payments`
--
ALTER TABLE `paypal_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paystack_and_mollies`
--
ALTER TABLE `paystack_and_mollies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `popular_categories`
--
ALTER TABLE `popular_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `popular_posts`
--
ALTER TABLE `popular_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `product_reports`
--
ALTER TABLE `product_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_specifications`
--
ALTER TABLE `product_specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_specification_keys`
--
ALTER TABLE `product_specification_keys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_variant_items`
--
ALTER TABLE `product_variant_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pusher_credentails`
--
ALTER TABLE `pusher_credentails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `razorpay_payments`
--
ALTER TABLE `razorpay_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seller_mail_logs`
--
ALTER TABLE `seller_mail_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_withdraws`
--
ALTER TABLE `seller_withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=857;

--
-- AUTO_INCREMENT for table `shopping_cart_variants`
--
ALTER TABLE `shopping_cart_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `shop_pages`
--
ALTER TABLE `shop_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sms_templates`
--
ALTER TABLE `sms_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_login_information`
--
ALTER TABLE `social_login_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sslcommerz_payments`
--
ALTER TABLE `sslcommerz_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stripe_payments`
--
ALTER TABLE `stripe_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tawk_chats`
--
ALTER TABLE `tawk_chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `three_column_categories`
--
ALTER TABLE `three_column_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `twilio_sms`
--
ALTER TABLE `twilio_sms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vendor_social_links`
--
ALTER TABLE `vendor_social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
