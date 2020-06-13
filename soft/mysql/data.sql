CREATE DATABASE IF NOT EXISTS test;
USE test;

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(36) NOT NULL DEFAULT '',
  `name` varchar(22) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXIST `memory_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(36) NOT NULL DEFAULT '',
  `name` varchar(22) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uid` (`uid`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

delimiter $$
CREATE DEFINER=`root`@`%` PROCEDURE `add_memory_users`(IN n int)
BEGIN 
    DECLARE i INT DEFAULT 1;
    WHILE (i <= n) DO
        INSERT INTO memory_users (uid, name, create_time) VALUES (uuid(), substring(MD5(RAND()),1,20), NOW());
        SET i = i + 1;
    END WHILE;
END$$
delimiter ;

CALL add_memory_users(5000000);

INSERT INTO users SELECT * FROM memory_users;
