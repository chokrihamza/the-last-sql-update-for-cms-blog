-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2021 at 11:37 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'c sharp'),
(2, 'react'),
(3, 'php'),
(4, 'Bootstrap');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 1, 'Sami', 'sami1452@gmail.com', 'good tuto', 'approved', '2021-05-17'),
(3, 23, 'Sami', 'alex152@gmail.com', 'tyrtytyut', 'approved', '2021-05-22'),
(4, 49, 'Sami', 'chokrihamza1994@gmail.com', 'dtrtyrtyrt', 'approved', '2021-05-25'),
(5, 49, 'Sami', 'chokrihamza1994@gmail.com', 'hgfhtyutyutyuyt', 'unapproved', '2021-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(1, 1, 'Php course full stack', 'Chokri hamza', '2021-05-19', 'New Project (5).png', '<p><span style=\"color: #e03e2d;\"><em>php,laravel</em></span></p>    \r\n    ', '    good work', 1, 'published', 3),
(7, 2, 'Puzzle universe ', 'Chokri hamza', '2021-05-19', 'New Project (3).png', 'js,es6,json', '<p>good course</p>', 0, 'published', 0),
(8, 4, 'Puzzle universe ', 'sami', '2021-05-20', 's-l300.jpg', 'python', '    python course is great', 0, 'published', 0),
(13, 1, 'Php course full stack', 'Chokri hamza', '2021-05-19', 'New Project (5).png', '<p><span style=\"color: #e03e2d;\"><em>php,laravel</em></span></p>    \r\n    ', '    good work', 0, 'published', 0),
(14, 1, 'Php course full stack', 'Chokri hamza', '2021-05-19', 'New Project (5).png', '<p><span style=\"color: #e03e2d;\"><em>php,laravel</em></span></p>    \r\n    ', '    good work', 0, 'published', 0),
(15, 2, 'Puzzle universe ', 'Chokri hamza', '2021-05-19', 'New Project (3).png', 'js,es6,json', '<p>good course</p>', 0, 'published', 4),
(16, 4, 'Puzzle universe ', 'sami', '2021-05-20', 's-l300.jpg', 'python', '    python course is great', 0, 'published', 0),
(17, 1, 'Php course full stack', 'Chokri hamza', '2021-05-19', 'New Project (5).png', '<p><span style=\"color: #e03e2d;\"><em>php,laravel</em></span></p>    \r\n    ', '    good work', 0, 'published', 0),
(18, 2, 'Puzzle universe ', 'Chokri hamza', '2021-05-19', 'New Project (3).png', 'js,es6,json', '<p>good course</p>', 0, 'published', 0),
(19, 4, 'Puzzle universe ', 'sami', '2021-05-20', 's-l300.jpg', 'python', '    python course is great', 0, 'published', 1),
(20, 4, 'Puzzle universe ', 'sami', '2021-05-20', 's-l300.jpg', 'python', '    python course is great', 0, 'published', 0),
(21, 2, 'Puzzle universe ', 'Chokri hamza', '2021-05-19', 'New Project (3).png', 'js,es6,json', '<p>good course</p>', 0, 'published', 0),
(22, 1, 'Php course full stack', 'Chokri hamza', '2021-05-19', 'New Project (5).png', '<p><span style=\"color: #e03e2d;\"><em>php,laravel</em></span></p>    \r\n    ', '    good work', 0, 'published', 0),
(23, 4, 'Puzzle universe ', 'sami', '2021-05-20', 's-l300.jpg', 'python', '    python course is great', 0, 'published', 0),
(24, 2, 'Puzzle universe ', 'Chokri hamza', '2021-05-19', 'New Project (3).png', 'js,es6,json', '<p>good course</p>', 0, 'published', 0),
(25, 1, 'Php course full stack', 'Chokri hamza', '2021-05-19', 'New Project (5).png', '<p><span style=\"color: #e03e2d;\"><em>php,laravel</em></span></p>    \r\n    ', '    good work', 0, 'published', 1),
(26, 1, 'Php course full stack', 'Chokri hamza', '2021-05-19', 'New Project (5).png', '<p><span style=\"color: #e03e2d;\"><em>php,laravel</em></span></p>    \r\n    ', '    good work', 0, 'published', 0),
(27, 4, 'Puzzle universe ', 'sami', '2021-05-20', 's-l300.jpg', 'python', '    python course is great', 0, 'published', 0),
(28, 2, 'Puzzle universe ', 'Chokri hamza', '2021-05-19', 'New Project (3).png', 'js,es6,json', '<p>good course</p>', 0, 'published', 0),
(29, 1, 'Php course full stack', 'Chokri hamza', '2021-05-19', 'New Project (5).png', '<p><span style=\"color: #e03e2d;\"><em>php,laravel</em></span></p>    \r\n    ', '    good work', 0, 'published', 0),
(30, 1, 'Php course full stack', 'Chokri hamza', '2021-05-19', 'New Project (5).png', '<p><span style=\"color: #e03e2d;\"><em>php,laravel</em></span></p>    \r\n    ', '    good work', 0, 'published', 0),
(31, 2, 'Puzzle universe ', 'Chokri hamza', '2021-05-19', 'New Project (3).png', 'js,es6,json', '<p>good course</p>', 0, 'published', 0),
(32, 4, 'Puzzle universe ', 'sami', '2021-05-20', 's-l300.jpg', 'python', '    python course is great', 0, 'published', 0),
(33, 1, 'Php course full stack', 'Chokri hamza', '2021-05-19', 'New Project (5).png', '<p><span style=\"color: #e03e2d;\"><em>php,laravel</em></span></p>    \r\n    ', '    good work', 0, 'published', 0),
(34, 1, 'Php course full stack', 'Chokri hamza', '2021-05-19', 'New Project (5).png', '<p><span style=\"color: #e03e2d;\"><em>php,laravel</em></span></p>    \r\n    ', '    good work', 0, 'published', 0),
(35, 2, 'Puzzle universe ', 'Chokri hamza', '2021-05-19', 'New Project (3).png', 'js,es6,json', '<p>good course</p>', 0, 'published', 0),
(36, 4, 'Puzzle universe ', 'sami', '2021-05-20', 's-l300.jpg', 'python', '    python course is great', 0, 'published', 0),
(37, 1, 'Php course full stack', 'Chokri hamza', '2021-05-19', 'New Project (5).png', '<p><span style=\"color: #e03e2d;\"><em>php,laravel</em></span></p>    \r\n    ', '    good work', 0, 'published', 0),
(38, 2, 'Puzzle universe ', 'Chokri hamza', '2021-05-19', 'New Project (3).png', 'js,es6,json', '<p>good course</p>', 0, 'published', 1),
(39, 4, 'Puzzle universe ', 'sami', '2021-05-20', 's-l300.jpg', 'python', '    python course is great', 0, 'published', 0),
(40, 4, 'Puzzle universe ', 'sami', '2021-05-20', 's-l300.jpg', 'python', '    python course is great', 0, 'published', 0),
(41, 2, 'Puzzle universe ', 'Chokri hamza', '2021-05-19', 'New Project (3).png', 'js,es6,json', '<p>good course</p>', 0, 'published', 0),
(42, 1, 'Php course full stack', 'Chokri hamza', '2021-05-19', 'New Project (5).png', '<p><span style=\"color: #e03e2d;\"><em>php,laravel</em></span></p>    \r\n    ', '    good work', 0, 'published', 0),
(44, 2, 'Puzzle universe ', 'Chokri hamza', '2021-05-19', 'New Project (3).png', 'js,es6,json', '<p>good course</p>', 0, 'published', 0),
(46, 1, 'Php course full stack', 'Chokri hamza', '2021-05-19', 'New Project (5).png', '<p><span style=\"color: #e03e2d;\"><em>php,laravel</em></span></p>    \r\n    ', '    good work', 0, 'published', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2a$07$usesomesillystringforsalt$'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(15, 'sss', '$2a$07$usesomesillystringforeCI3bOJCOVL5EcUpNgLUWQvDkcpSwEbe', '', '', 'sss@gmail.com', '', 'subscriber', '$2a$07$usesomesillystringforsalt$'),
(16, 'hamza', '$2a$07$usesomesillystringforecemo1UU6VreMzT69nZVvtb3DQJYsA7W', '', '', 'hamza1994@gmail.com', '', 'subscriber', '$2a$07$usesomesillystringforsalt$'),
(17, 'jhon', '$2y$12$LFXtuzJZDmAX.l4DrlErp.XeyPOx4H7xhWWdswKJx3bhPxfW5v1AS', '', '', 'jhonedoe145@gmail.com', '', 'subscriber', '$2a$07$usesomesillystringforsalt$');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(12, '35ese2v9sqqnuehm36c8v83ss8', 1622021802);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
