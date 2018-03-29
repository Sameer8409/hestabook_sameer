-- Adminer 4.6.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

USE `hestabook_sameer`;

DROP TABLE IF EXISTS `feed`;
CREATE TABLE `feed` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `post_id` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `feed_ibfk_2` FOREIGN KEY (`email`) REFERENCES `user` (`email`),
  CONSTRAINT `feed_ibfk_3` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `feed` (`id`, `post_id`, `email`) VALUES
(13,	13,	'sam@gmail.com'),
(14,	14,	'sameer@gmail.com'),
(15,	15,	'sameer@gmail.com'),
(16,	16,	'sameer@gmail.com'),
(17,	17,	'sameer@gmail.com'),
(18,	18,	'sameer@gmail.com'),
(19,	19,	'sameer@gmail.com'),
(22,	22,	'sameer@gmail.com'),
(23,	23,	'sameer@gmail.com'),
(24,	24,	'sameer@gmail.com'),
(25,	25,	'sameer@gmail.com');

DROP TABLE IF EXISTS `loggedin`;
CREATE TABLE `loggedin` (
  `serial` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`serial`),
  KEY `email` (`email`),
  CONSTRAINT `loggedin_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `loggedin` (`serial`, `email`) VALUES
(9,	'akash@gmail.com'),
(25,	'sam@gmail.com'),
(35,	'sameer@gmail.com'),
(36,	'sameer@gmail.com'),
(37,	'sameer@gmail.com'),
(33,	'xyz@gmail.com');

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `post_id` int(10) NOT NULL AUTO_INCREMENT,
  `post_data` varchar(250) NOT NULL,
  `post_type` int(1) NOT NULL,
  `post_time` datetime NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `post` (`post_id`, `post_data`, `post_type`, `post_time`) VALUES
(1,	'sdfhdfghdfgfg',	1,	'2018-03-22 23:11:01'),
(2,	'my first post',	1,	'2018-03-23 06:52:57'),
(3,	'https://pbs.twimg.com/profile_images/927446347879292930/Fi0D7FGJ_400x400.jpg',	0,	'2018-03-23 06:56:29'),
(4,	'https://pbs.twimg.com/profile_images/927446347879292930/Fi0D7FGJ_bigger.jpg',	0,	'2018-03-23 07:03:11'),
(5,	'this is new post',	1,	'2018-03-23 09:32:16'),
(6,	'asdfghjksdfghjkdfghjk',	1,	'2018-03-23 10:14:49'),
(7,	'ashdvashdvahsdas',	1,	'2018-03-23 12:48:33'),
(8,	'hello sameer',	1,	'2018-03-23 16:05:12'),
(9,	'asdfghjklkjh gfg hjklkjhgfgh jklkjhgf',	1,	'2018-03-23 16:34:10'),
(10,	'fghjkxdfghjdfghj',	1,	'2018-03-26 09:34:42'),
(11,	'hdjhcgsgdhjbdghjbfhfdh fjk hgfdhbhdgh',	1,	'2018-03-26 11:16:09'),
(12,	'dyujgfgh fghjdfgh guytygtiu',	1,	'2018-03-26 14:42:46'),
(13,	'Test post',	1,	'2018-03-26 14:49:58'),
(14,	'bhdghb hhj ghbhdg hs hhb  sdjhfjsdjhjhfsjdhf',	1,	'2018-03-27 00:14:24'),
(15,	'jhdshsdhgsgdyyg hsguyghdsghsg gdhsh hj dh',	1,	'2018-03-27 11:11:11'),
(16,	'gfg jgh hg',	1,	'2018-03-27 11:16:10'),
(17,	'jksdgysgub gdyu yuuhg ysdgyc gydgydy',	1,	'2018-03-27 12:20:09'),
(18,	'jhhshhhjhjhjh bssjbj',	1,	'2018-03-27 12:21:53'),
(19,	'hg  g gasdgyA GA SGASAS T GS ADAS Y',	1,	'2018-03-27 12:30:12'),
(21,	'saghga fgvgvgsbvsdha',	1,	'2018-03-27 17:11:20'),
(22,	'jhxdxggfhg f h fjdh',	1,	'2018-03-27 17:11:40'),
(23,	'',	1,	'2018-03-28 12:07:45'),
(24,	'',	1,	'2018-03-28 12:09:52'),
(25,	'',	1,	'2018-03-29 00:13:51');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `gender` char(6) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(250) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(16) NOT NULL,
  `Description` tinytext,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `user` (`user_id`, `name`, `gender`, `mobile`, `email`, `address`, `dob`, `password`, `Description`, `picture`) VALUES
(2,	'sameer',	'male',	0,	'sameer@gmail.com',	'',	'1970-01-01',	'qwe',	'Hellow',	''),
(3,	'Kavish',	'male',	0,	'kavish@gmail.com',	'',	'1970-01-01',	'123',	'I am a developer',	''),
(4,	'akash',	'qqeqww',	0,	'akash@gmail.com',	'',	'1970-01-01',	'12345',	'',	''),
(5,	'bhawna',	'female',	0,	'bhawna@gmail.com',	'',	'1970-01-01',	'123',	'jhjj',	''),
(7,	'Bhawna Sagar',	'f',	0,	'bhawnasagar@gmail.com',	'',	'1970-01-01',	'123',	'dfghjdfghjkfghj',	''),
(8,	'sam',	'male',	4567890345,	'sam@gmail.com',	'a 45 gnhv',	'2018-03-05',	'123456',	'rty fghj vhg hg hvh jhvk',	'/var/www/html/hestabookproject/photo/'),
(13,	'sameer',	'male',	-764836282,	'xyz@gmail.com',	'fjnjhsjjh',	'2018-03-14',	'123456',	'dfghjkl',	'/var/www/html/hestabookproject/photo/'),
(14,	'fghj',	'male',	-45678567,	'hgh@fgh.fgh',	'ghjk',	'2018-03-26',	'123456',	'dfghjk',	'/var/www/html/hestabookproject/photo/'),
(15,	'Sam',	'female',	7474847836,	'pk@gmail.com',	'sdfghj',	'2018-03-20',	'123456',	'dfghjsuhusgd ygyu yd',	'/var/www/html/hestabookproject/photo/'),
(16,	'sam',	'male',	34567890,	'123@gmail.com',	'dfghjk',	'2018-03-12',	'123456',	'ertyughj',	'/var/www/html/hestabookproject/photo/'),
(18,	'hxhz',	'',	0,	'acs@jhgh.jh',	'hjk',	'1970-01-01',	'uyg',	'',	'/var/www/html/hestabookproject/photo/'),
(21,	'yghjkl',	'male',	3456789,	'acs@jhgh.jhjscs',	'ghjkl',	'2018-03-06',	'uyg',	'',	'/var/www/html/hestabookproject/photo/'),
(22,	'kav',	'male',	56432134,	'kav@kav.kav',	'aasdfg',	'1994-02-21',	'abcabc',	'fgdsa',	'/var/www/html/hestabookproject/photo/'),
(23,	'',	'male',	0,	'',	'',	'1970-01-01',	'',	'',	'/var/www/html/hestabookproject/photo/'),
(25,	'',	'male',	0,	'kas@ghj.gh',	'',	'1970-01-01',	'',	'',	'/var/www/html/hestabookproject/photo/'),
(26,	'',	'male',	0,	'fgyu@ghj.dg',	'',	'1970-01-01',	'',	'',	'/var/www/html/hestabookproject/photo/'),
(27,	'sameer',	'male',	536474676482,	'xvc@gmail.com',	' mn',	'2018-03-13',	'1234556',	'',	'/var/www/html/hestabookproject/photo/');

-- 2018-03-29 06:53:13
