-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2021 at 08:03 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus5`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `writer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sinopsis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `category_id`, `title`, `writer`, `published_year`, `sinopsis`, `created_at`, `updated_at`) VALUES
(9, 2, 'Head First Python A Brain-Friendly Guide', 'Paul Barry', '2016', 'Are you keen to add Python to your programming skills? Learn quickly and have some fun at the same time with Head First Python. This book takes you beyond typical how-to manuals with engaging images, puzzles, stories, and quizzes that are proven to stimulate learning and retention. You\'ll not only learn how Python differs from other programming languages and how it\'s similar, you\'ll learn how to be a great programmer.', NULL, NULL),
(10, 2, 'Java Programming For Beginners - A Simple Start to Java Programming', 'Scott Sanderson', '2016', 'If you\'re serious about learning Java Programming, then this guide is for you. The author, Mr. Sanderson has been teaching computer programming languages for over 20 years, and is passionate about sharing his knowledge with his students in the easiest, and most efficient way possible.', NULL, NULL),
(11, 2, 'PHP, MySQL, JavaScript & HTML5 All-In-One For Dummies', 'Janet Valade', '2013', 'PHP, JavaScript, and HTML5 are essential programming languages for creating dynamic websites that work with the MySQL database. PHP and MySQL provide a robust, easy-to-learn, open-source solution for creating superb e-commerce sites and content management. JavaScript and HTML5 add support for the most current multimedia effects. This one-stop guide gives you what you need to know about all four! Seven self-contained minibooks cover web technologies, HTML5 and CSS3, PHP programming, MySQL databases, JavaScript, PHP with templates, and web applications.', NULL, NULL),
(12, 2, 'Introduction to Compiler Design', 'Torben Mogensen', '2011', 'Introduction to Compiler Design presents techniques for making realistic, though non-optimizing compilers for simple programming languages using methods that are close to those used in \"real\" compilers, albeit slightly simplified in places for presentation purposes. All phases required for translating a high-level language to machine language is covered, including lexing, parsing, intermediate-code generation, machine-code generation and register allocation. Interpretation is covered briefly.', NULL, NULL),
(13, 2, 'Machine Language', 'David Dowker', '2010', 'Machine Language delves the delic, from the \'pataphysical conjunction of antique paper tape code, a fragment of Sappho and the Gorgon (apparatus) to the writing through (over under sideways around) various texts and subtexts of the postmodern North American rhizome, coding the flows of Black Mountain poetics and so-called \"language poetries,\" elliptical traces of neo-surrealist tendencies with reconnaissance syntax and pliant iambics, love\'s number crunched for the age of surveillance.', NULL, NULL),
(14, 2, 'Handbook of Computer Networks Volume 2', 'Hossein Bidgoli', '2007', 'A comprehensive look at computer networking, from LANs to wireless networks  In this second volume of The Handbook of Computer Networks, readers will get a complete overview of the types of computer networks that are most relevant to real-world applications. Offering a complete view of computer networks, the book is designed for both undergraduate students and professionals working in a variety of computer network-dependent industries. With input from over 270 experts in the field and with over 1,000 peer reviewers, the text covers local and wide area networks, the Internet, wireless networks, voice over IP, global networks, and more.', NULL, '2021-05-10 22:56:54'),
(15, 2, 'DEAR TOMORROW: Notes to My Future Self', 'Maudy Ayunda', '2019', 'Guilty as charged.  I am one of those people who adore witty quotes and phrases. I love being reminded by simple truths. I love how short statements can strike a chord in our minds and move us to do something.  This book is a compilation of my experiences, thoughts, and conversations with my self on love, dreams, and life. All throughout this book, I curated takeaways–things that I want to be reminded of in the future. Saving it for all my tomorrows.  If anything I write here can make you smile–or think, then I’ve done what I wanted through writing this book.  Love,  Maudy', NULL, NULL),
(16, 1, 'The Dark Lord', 'Patricia Simpson', '2010', 'In Egypt, Rae found Tarot card in an ancient box near by Nut Temple when windstorm happened. when she flew on the plane to san fransisco, she met a guy, his name was Simeon. In San Fransisco, she got a bad news, that Dr. Geogory was dead. And he got a message in CD from Dr. Geogory before he’s dead. Rae must hide herself in his home, Alameda. Because the evil will come and bring calamity on the earth. Rae and her sister lived with Geogory’s son, Michael Geogory in there. Rae found a photo that Simeon is a vampire. But she didn’t believe. Simeon and Michael loved rae. Rae must have chosen one of them. Because a terror, rae want to move to barkeley. But Michael could hold her back. Rae knew why Dr. Geogory was killed. Because the killer want to steal a sword which Dr. geogory found in Egypt. After rae found that sword, simoen kidnapped angie and stolen the sword. Because Simeon want to get the magic power from that sword. Rae, Michael, and Maren maked a plan to saved her. After they found Simeon’s place, happened a fighting between Michael and Simeon. Fortunately, Rae found her soul vision. She had magic power from genetic her father. With her silver eyes, she could defeat Simeon. After Simeon was dead, Michael sold that tarot card. With that money, Rae, Michael, and Angie bought a house and live in Barkeley.  Value Evil thing will be defeated by power of love.', NULL, NULL),
(17, 1, 'To Catch a King', 'Harry Patterson', '1979', 'This novel tells about a Jewish girl who named Fraulin Hannah Winter. She born in Berlin but when she was a child her father brought her to New York. She was a singer. The other main character is Walter Schellenberg. He was a major-general of police in Lisbon. The story based on history of World War II 1940. The issue of this novel is about a plan to kidnapping David or usually called as The Duke of Windsor. He was a major-general in France who wanted to be a governor of Bahamas. The interesting point in this novel is Hannah who only an ordinary person had to against a major-general of police to save The Duke. Actually she was not an agent, but her uncle who he was a Russia Agent needed her helping to send a report of kidnapping plan to The Duke in France. But the part that made me confusing in this novel is about the politic problem between Nazi Party and other capital in Europe. Also, I dislike with the part when her uncle, Max Winter, was joined her in this problem. Hannah as an ordinary person, it would be dangerous to her. In my opinion if I could change the story, Max Winter must solved this problem professionally. He could send the report with other Russia Agent, not Hannah. I don’t have any experience that related with this story. But I ever read an article about World War II. From this novel I can imagine how their life is. Many Jew people had been killed in Holocaust tragedy. It’s very frightened. While I was reading this novel, I was excited with how Hannah struggling to help his uncle. Although his uncle had been kill and dead, she still struggle to send the report.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Fiction', NULL, NULL),
(2, 'Non-Fiction', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_11_000000_create_roles_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_07_010811_create_categories_table', 1),
(5, '2019_08_07_010835_create_books_table', 1),
(6, '2019_08_07_010857_create_rents_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rents`
--

CREATE TABLE `rents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `rent_date` date NOT NULL,
  `return_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rents`
--

INSERT INTO `rents` (`id`, `user_id`, `book_id`, `rent_date`, `return_date`, `created_at`, `updated_at`) VALUES
(20, 2, 9, '2021-05-11', '2021-05-18', '2021-05-10 23:01:00', '2021-05-10 23:01:00'),
(21, 2, 16, '2021-05-11', '2021-05-18', '2021-05-10 23:01:11', '2021-05-10 23:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-08-07 07:25:43', '2019-08-07 07:25:43'),
(2, 'user', '2019-08-07 07:25:43', '2019-08-07 07:25:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT '2',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@admin.com', NULL, '$2y$10$niIdD53EkTd9e0uymmGv7.lR0uKj4N/wnJH3wpB9ERepDHvSvhibC', '24i3niSurbBXAHQnI1uoRzn2GagPxC4DNH0pefgTC0wNcOUocrtGLnWTY2Kj', '2019-08-07 07:25:44', '2019-08-07 07:25:44'),
(2, 2, 'Ayu Widianingsih', 'ayu@ayu.com', NULL, '$2y$10$fRFnF9IMksWzqZ2IwpRJXeoN0XgJ7bpV6dnE1/1UlGDgRZ0J0jCy6', NULL, '2019-08-07 07:28:02', '2020-10-30 09:32:23'),
(3, 2, 'Kang Daniel', 'daniel@daniel.com', NULL, '$2y$10$0JTqhPAAD/1w2HWkClSxUev6FO369o74aSTOYeHgawH9xFVl4IuKG', NULL, '2019-08-07 19:11:48', '2019-08-07 19:11:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `rents`
--
ALTER TABLE `rents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rents_user_id_foreign` (`user_id`),
  ADD KEY `rents_book_id_foreign` (`book_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rents`
--
ALTER TABLE `rents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rents`
--
ALTER TABLE `rents`
  ADD CONSTRAINT `rents_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
