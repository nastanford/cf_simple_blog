DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `users_id` int,
  `title` varchar(255),  -- specify the length of varchar
  `content` text,
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE `posts`
ADD FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
