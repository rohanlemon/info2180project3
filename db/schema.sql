SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `cheapomail` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cheapomail`;

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `subject` text NOT NULL,
  `user_id` varchar(25) NOT NULL,
  `recipient_ids` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

INSERT INTO `message` (`id`, `body`, `subject`, `user_id`, `recipient_ids`) VALUES
(1, 'sdad', 'osha', 'rsl23', 'rsl23'),
(2, 'sada, this user does not exists', 'Unable to deliever to sada', 'admin', 'rsl23'),
(3, 'sdadasd', 'sada', 'rsl23', 'sada'),
(4, 'Just want to say hi', 'hi', 'rsl23', 'admin'),
(5, 'Hi', 'Hola', 'britts', 'rsl23'),
(6, 'Briits, this user does not exists', 'Unable to deliever to Briits', 'admin', 'rsl23'),
(8, 'Hola you', 'Hi Back', 'rsl23', 'britts');

CREATE TABLE IF NOT EXISTS `message_read` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL,
  `read_id` varchar(25) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

INSERT INTO `message_read` (`id`, `message_id`, `read_id`, `date`) VALUES
(1, 8, 'britts', '2013-12-15 04:10:17');

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

INSERT INTO `user` (`id`, `first_name`, `last_name`, `password`, `username`) VALUES
(1, 'Rohan', 'Lemon', 'dfb2576a6828ca862396db19cf4590e2', 'rsl23'),
(2, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');
