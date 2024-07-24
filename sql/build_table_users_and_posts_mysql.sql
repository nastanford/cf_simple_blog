/* CREATE DATABASE simpleblog; */
USE simpleblog;

CREATE TABLE `users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `first_name` varchar(100),
  `last_name` varchaR(100),
  `email` varchar(100),
  `password` varchar(100)
);

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `users_id` int,
  `title` varchar(255),
  -- specify the length of varchar
  `content` text,
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE
  `posts`
ADD
  FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);