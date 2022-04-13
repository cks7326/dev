CREATE TABLE `tbl_board` (
  `board_idx` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `contents` text,
  `hit_count` int DEFAULT '0',
  `created_datetime` date DEFAULT NULL,
  `creator_id` varchar(50) NOT NULL,
  `updated_datetime` date DEFAULT NULL,
  `updater_id` varchar(50) DEFAULT NULL,
  `deleted_yn` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`board_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tbl_mail` (
  `mail_idx` int NOT NULL AUTO_INCREMENT,
  `receiver` varchar(5) NOT NULL,
  `sender` varchar(5) NOT NULL,
  `title` varchar(50) NOT NULL,
  `contents` text,
  `read_yn` varchar(5) NOT NULL,
  `deleted_yn` varchar(5) NOT NULL,
  `mail_date` date NOT NULL,
  PRIMARY KEY (`mail_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tbl_users` (
  `user_name` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `enabled` tinyint DEFAULT '1',
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`user_name`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tbl_users_roles` (
  `user_name` varchar(50) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  PRIMARY KEY (`user_name`),
  CONSTRAINT `FK_users_roles` FOREIGN KEY (`user_name`) REFERENCES `tbl_users` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;