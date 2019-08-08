CREATE SCHEMA `movie`;
use movie;


drop table if exists movie;
drop table if exists team;
drop table if exists movie_team;

CREATE TABLE `movie`.`movie` (
  `mvno` INT NOT NULL,
  `mvname` VARCHAR(45) NULL,
  `releaseyear` INT NULL,
  PRIMARY KEY (`mvno`));
  
  
CREATE TABLE `movie`.`team` (
  `memberno` INT NOT NULL,
  `membername` VARCHAR(45) NULL,
  `membertype` VARCHAR(45) NULL,
  PRIMARY KEY (`memberno`));


CREATE TABLE `movie`.`movie_team` (
  `id` INT NOT NULL,
  `mvno` INT NULL,
  `memberno` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  


  
INSERT INTO `movie`.`movie` (`mvno`, `mvname`, `releaseyear`) VALUES ('1', 'Sholay', '1975');
INSERT INTO `movie`.`movie` (`mvno`, `mvname`, `releaseyear`) VALUES ('2', 'Don', '1978');
INSERT INTO `movie`.`movie` (`mvno`, `mvname`, `releaseyear`) VALUES ('3', 'Dostana', '1980');
INSERT INTO `movie`.`movie` (`mvno`, `mvname`, `releaseyear`) VALUES ('4', 'Shaan', '1980');
INSERT INTO `movie`.`movie` (`mvno`, `mvname`, `releaseyear`) VALUES ('5', 'Khel Khel Mein', '1975');


INSERT INTO `movie`.`team` (`memberno`, `membername`, `membertype`) VALUES ('1', 'Dharmendra', 'actor');
INSERT INTO `movie`.`team` (`memberno`, `membername`, `membertype`) VALUES ('2', 'Amitabh Bachchan', 'actor');
INSERT INTO `movie`.`team` (`memberno`, `membername`, `membertype`) VALUES ('3', 'Hema Malini', 'actress');
INSERT INTO `movie`.`team` (`memberno`, `membername`, `membertype`) VALUES ('4', 'Jaya Bhaduri', 'actress');
INSERT INTO `movie`.`team` (`memberno`, `membername`, `membertype`) VALUES ('5', 'Zeenat Aman', 'actress');
INSERT INTO `movie`.`team` (`memberno`, `membername`, `membertype`) VALUES ('6', 'Shatrughan Sinha', 'actor');
INSERT INTO `movie`.`team` (`memberno`, `membername`, `membertype`) VALUES ('7', 'Raj Khosla', 'director');
INSERT INTO `movie`.`team` (`memberno`, `membername`, `membertype`) VALUES ('8', 'Ramesh Sippy', 'director');
INSERT INTO `movie`.`team` (`memberno`, `membername`, `membertype`) VALUES ('9', 'Shashi Kapoor', 'actor');
INSERT INTO `movie`.`team` (`memberno`, `membername`, `membertype`) VALUES ('10', 'Parveen Babi', 'actress');
INSERT INTO `movie`.`team` (`memberno`, `membername`, `membertype`) VALUES ('11', 'Bindiya Goswami', 'actress');
INSERT INTO `movie`.`team` (`memberno`, `membername`, `membertype`) VALUES ('12', 'G. P. Sippy', 'producer');
INSERT INTO `movie`.`team` (`memberno`, `membername`, `membertype`) VALUES ('13', 'Nariman Irani', 'producer');
INSERT INTO `movie`.`team` (`memberno`, `membername`, `membertype`) VALUES ('14', 'Yash Johar', 'Producer');
INSERT INTO `movie`.`team` (`memberno`, `membername`, `membertype`) VALUES ('15', 'Neetu Singh', 'actress');
INSERT INTO `movie`.`team` (`memberno`, `membername`, `membertype`) VALUES ('16', 'Kajol', 'actress');
INSERT INTO `movie`.`team` (`memberno`, `membername`, `membertype`) VALUES ('17', 'Ajay Devgan', 'actor');
INSERT INTO `movie`.`team` (`memberno`, `membername`, `membertype`) VALUES ('18', 'Ravi Malhotra', 'producer');
INSERT INTO `movie`.`team` (`memberno`, `membername`, `membertype`) VALUES ('19', 'Rishi Kapoor', 'actor');
INSERT INTO `movie`.`team` (`memberno`, `membername`, `membertype`) VALUES ('20', 'Rakesh Roshan', 'actor');


INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('1', '1', '1');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('2', '1', '2');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('3', '1', '3');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('4', '1', '4');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('5', '2', '2');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('6', '2', '5');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('7', '3', '2');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('8', '3', '5');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('9', '3', '6');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('10', '3', '7');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('11', '1', '8');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('12', '4', '2');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('13', '4', '6');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('14', '4', '10');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('15', '4', '11');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('16', '4', '9');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('17', '1', '12');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('18', '2', '13');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('19', '3', '14');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('20', '4', '12');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('21', '5', '19');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('22', '5', '20');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('23', '5', '15');
INSERT INTO `movie`.`movie_team` (`id`, `mvno`, `memberno`) VALUES ('24', '5', '18');


