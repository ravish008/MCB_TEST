-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2021 at 02:07 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`) VALUES
(2, 3, 'Business', '2017-03-04 13:14:40'),
(3, 6, 'test', '2018-03-27 20:28:24');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 2, 'John Doe', 'jdoe@gmail.com', 'Great Post!', '2017-03-17 13:57:29'),
(2, 2, 'Jan Doe', 'jane@yahoo.com', 'Thank you for this awesome post', '2017-03-17 14:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `id` int(11) NOT NULL,
  `Customer_Id` varchar(100) NOT NULL,
  `Customer_Type` varchar(100) DEFAULT NULL,
  `Date_Of_Birth` date DEFAULT NULL,
  `Date_Incorp` date DEFAULT NULL,
  `Registration_No` varchar(100) DEFAULT NULL,
  `Address_Line_1` varchar(200) DEFAULT NULL,
  `Address_Line_2` varchar(200) DEFAULT NULL,
  `Town_City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Contact_Name` varchar(100) DEFAULT NULL,
  `Contact_Number` int(100) DEFAULT NULL,
  `Num_Shares` int(100) DEFAULT NULL,
  `Share_Price` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`id`, `Customer_Id`, `Customer_Type`, `Date_Of_Birth`, `Date_Incorp`, `Registration_No`, `Address_Line_1`, `Address_Line_2`, `Town_City`, `Country`, `Contact_Name`, `Contact_Number`, `Num_Shares`, `Share_Price`) VALUES
(101, 'T90897', 'Individual', '1970-01-01', '2003-08-20', 'R156925840', '33 St James', 'Court', 'Port Louis', 'Mauritius', 'Thompson Deutsche Ltd', 579815662, 2000, 365.2),
(100, 'H15676', 'Corporate', '1970-01-01', '2002-01-14', 'R10411524', '50 Paul', 'Detroit Road', 'Ohio', 'United States', 'Dellaware Ltd', NULL, 63000, 12.2),
(99, 'D43764', 'Corporate', '1970-01-01', '2012-07-01', 'R14023581', '40', 'Morven Road', 'St Louis', 'United States', 'Sterling Holdings', 2147483647, 4000, 9.2),
(98, 'C11233', 'Individual', '1987-07-19', '1970-01-01', NULL, '21', 'Downing Street', 'London', 'England', 'Mr John Doe', 7784051, 10200, 11.4);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(320) DEFAULT NULL,
  `telephone_number` varchar(30) DEFAULT NULL,
  `address` text,
  `position_name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `telephone_number`, `address`, `position_name`) VALUES
(1, 'Cristiano', 'Ronaldo', 'cronaldo@gmail.com', '232323', 'Italy', 'Striker'),
(2, 'Lionel', 'Messi', 'lmessi@gmail.com', '343434', 'Spain', 'Forward'),
(3, 'Paul', 'Pogba', 'ppogba@gmail.com', '232322', 'England', 'Midfielder'),
(4, 'John', 'Smith', 'john_smith@gmail.com', '448870023221', 'oxford street', 'web developer');

-- --------------------------------------------------------

--
-- Table structure for table `error_logs`
--

CREATE TABLE `error_logs` (
  `id` int(10) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `error_message` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `error_logs`
--

INSERT INTO `error_logs` (`id`, `customer_id`, `error_message`) VALUES
(64, 0, 'number of shares must be number and greater than zero'),
(63, 0, 'Invalid Age,must be greater than 18'),
(62, 0, 'Invalid Age,must be greater than 18'),
(61, 0, 'number of shares must be number and greater than zero'),
(60, 0, 'number of shares must be number and greater than zero'),
(59, 0, 'Invalid Age,must be greater than 18'),
(58, 0, 'Invalid Age,must be greater than 18'),
(57, 0, 'number of shares must be number and greater than zero');

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(20191017150000);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(1, 1, 1, 'Blog Post 1', 'Blog-Post-1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et molestie eros. Maecenas dignissim, erat at faucibus finibus, nunc nibh finibus lacus, sed gravida leo urna at erat. Proin et efficitur dolor, eget interdum enim. Cras nec ante quis tellus gravida ornare. Duis arcu lacus, elementum quis iaculis id, mattis ut turpis. Pellentesque id dignissim dolor. Curabitur finibus facilisis pulvinar. Nullam urna arcu, malesuada a purus a, pharetra pulvinar lacus. Curabitur quis ornare felis, ut ultrices nulla.</p>\r\n\r\n<p>Fusce placerat aliquam erat, et sagittis diam accumsan vitae. In elementum vel augue sit amet bibendum. Nulla cursus elit metus. Ut auctor nisl quis bibendum tincidunt. Integer gravida nisi id urna rhoncus, nec tristique magna efficitur. Mauris non blandit ipsum, ut tempus purus. Praesent rhoncus gravida aliquam. Nulla finibus mi id fermentum fringilla. Morbi volutpat, massa eget sodales tempus, est risus elementum leo, pulvinar fermentum diam nibh a mi. Phasellus porttitor vitae mauris non elementum. Sed ut lacinia sapien. Proin a metus ullamcorper lectus ultricies euismod. Donec vitae turpis eros. Morbi at imperdiet ligula. Mauris sed rutrum lectus. Phasellus eget nulla congue, dictum dolor ac, dapibus justo.</p>\r\n', 'OS_Ubuntu.png', '2017-03-17 13:22:28'),
(2, 2, 1, 'Blog Post 2', 'Blog-Post-2', '<p>. Cras nec ante quis tellus gravida ornare. Duis arcu lacus, elementum quis iaculis id, mattis ut turpis. Pellentesque id dignissim dolor. Curabitur finibus facilisis pulvinar. Nullam urna arcu, malesuada a purus a, pharetra pulvinar lacus. Curabitur quis ornare felis, ut ultrices nulla.</p>\r\n\r\n<p>Fusce placerat aliquam erat, et sagittis diam accumsan vitae. In elementum vel augue sit amet bibendum. Nulla cursus elit metus. Ut auctor nisl quis bibendum tincidunt. Intes elementum leo, pulvinar fermentum diam nibh a mi. Phasellus porttitor vitae mauris non elementum. Sed ut lacinia sapien. Proin a metus ullamcorper lectus ultricies euismod. Donec vitae turpis eros. Morbi at imperdiet ligula. Mauris sed rutrum lectus. Phasellus eget nulla congue, dictum dolor ac, dapibus justo.</p>\r\n', 'ci.png', '2017-03-17 13:23:23'),
(3, 2, 2, 'Test Post', 'Test-Post', '<p>Test</p>\r\n', 'noimage.jpg', '2017-04-10 14:15:59'),
(5, 7, 3, 'test post popo', 'test-post-popo', '<p>test post popo</p>\r\n', 'noimage.jpg', '2017-08-12 09:00:29'),
(6, 7, 3, 'POPO2', 'POPO2', '<p>This is popo2</p>\r\n', 'noimage.jpg', '2017-08-12 14:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float(6,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `created`, `modified`, `status`) VALUES
(1, 'Product1', 65.00, '2017-03-14 16:42:40', '2017-03-14 16:42:40', '1'),
(2, 'Product2', 20.00, '2017-03-14 16:42:40', '2017-03-14 16:42:40', '1'),
(3, 'Product3', 350.00, '2017-03-14 16:42:40', '2017-03-14 16:42:40', '1'),
(4, 'Product4', 155.00, '2017-03-14 16:42:40', '2017-03-14 16:42:40', '1'),
(5, 'Product5', 90.00, '2017-03-14 16:42:40', '2017-03-14 16:42:40', '1'),
(6, 'Product6', 185.00, '2017-03-14 16:42:40', '2017-03-14 16:42:40', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `user_password` varchar(40) NOT NULL,
  `user_type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_password`, `user_type`) VALUES
(2, 'toto', 'admin123', 'normal'),
(3, 'yoyo', 'yoyo123', 'normal');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin` tinyint(1) NOT NULL,
  `login_attempt` int(10) NOT NULL,
  `locked_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `image_url`, `register_date`, `admin`, `login_attempt`, `locked_status`) VALUES
(1, 'Brad Traversy', '01913', 'brad@gmail.com', 'brad', 'e10adc3949ba59abbe56e057f20f883e', '', '2017-04-10 13:14:31', 0, 0, ''),
(2, 'John Doe', '90210', 'jdoe@gmail.com', 'john', 'e10adc3949ba59abbe56e057f20f883e', '', '2017-04-10 14:12:14', 0, 0, ''),
(3, 'ravish', '230', 'rgoolaup@gmail.com', 'rgoolaup001', '3f7caa3d471688b704b73e9a77b1107f', '', '2017-08-12 08:30:29', 0, 1, ''),
(4, 'theon', '044', 'theob@gmail.com', 'theon001', '0192023a7bbd73250516f069df18b500', '', '2017-08-12 08:57:01', 0, 0, ''),
(5, 'dfdfdf', '32323', 'ravish.goolaup@hotmail.com', 'dsd233', '827ccb0eea8a706c4c34a16891f84e7b', '', '2017-08-17 12:33:43', 0, 0, ''),
(6, 'titi', '0545', 'tit@gmail.com', 'titi088', '0192023a7bbd73250516f069df18b500', 'chart1.JPG', '2017-08-19 07:40:27', 0, 0, ''),
(7, 'toto', '0908', 'toto@gmail.com', 'toto123', '0192023a7bbd73250516f069df18b500', 'employee-learning-300x1998.jpg', '2017-08-19 07:47:33', 1, 1, ''),
(8, 'niko', '230', 'rgoolaup@gmail.com', 'niko@test', '2779420618b52869b8076b2962ba9ef8', '0.jpg', '2020-07-20 13:07:12', 0, 1, ''),
(9, 'niko', '230', 'ravish.goolaup@mcbcs.mu', 'niko', '0192023a7bbd73250516f069df18b500', '', '2020-10-28 07:16:21', 1, 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `error_logs`
--
ALTER TABLE `error_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `error_logs`
--
ALTER TABLE `error_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
