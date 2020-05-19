CREATE DATABASE IF NOT EXISTS `testdb`;

CREATE TABLE IF NOT EXISTS `testdb`.`categories`(
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `testdb`.`category_info`(
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_info_category_id_unique` (`category_id`),
  CONSTRAINT `category_info_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

