CREATE SCHEMA `book` ;
use book;

drop table if exists book;
drop table if exists author;
drop table if exists book_author;


CREATE TABLE `book`.`book` (
  `ISBN` INT NOT NULL,
  `TITLE` VARCHAR(45) NULL,
  `LANGUAGE` VARCHAR(45) NULL,
  `MRP` INT NULL,
  `PUBLISHERID` INT NULL,
  `RELEASE_DATE` DATE NULL,
  PRIMARY KEY (`ISBN`));


CREATE TABLE `book`.`author` (
  `AUTHORID` INT NOT NULL,
  `FIRSTNAME` VARCHAR(45) NULL,
  `LASTNAME` VARCHAR(45) NULL,
  `PHONE` VARCHAR(45) NULL,
  `EMAILID` VARCHAR(128) NULL,
  PRIMARY KEY (`AUTHORID`));


CREATE TABLE `book`.`book_author` (
  `ID` INT NOT NULL,
  `ISBN` INT NULL,
  `AUTHORID` INT NULL,
  PRIMARY KEY (`ID`));


INSERT INTO `book`.`book` (`ISBN`, `TITLE`, `LANGUAGE`, `MRP`, `PUBLISHERID`, `RELEASE_DATE`) VALUES ('1', 'MongoDB', 'English', '1200', '1', '2019-04-09');
INSERT INTO `book`.`book` (`ISBN`, `TITLE`, `LANGUAGE`, `MRP`, `PUBLISHERID`, `RELEASE_DATE`) VALUES ('2', 'Redis', 'French', '1300', '3', '2019-04-25');
INSERT INTO `book`.`book` (`ISBN`, `TITLE`, `LANGUAGE`, `MRP`, `PUBLISHERID`, `RELEASE_DATE`) VALUES ('3', 'Hive', 'English', '1450', '2', '2019-05-07');
INSERT INTO `book`.`book` (`ISBN`, `TITLE`, `LANGUAGE`, `MRP`, `PUBLISHERID`, `RELEASE_DATE`) VALUES ('4', 'Javascript', 'French', '750', '5', '2019-05-10');
INSERT INTO `book`.`book` (`ISBN`, `TITLE`, `LANGUAGE`, `MRP`, `PUBLISHERID`, `RELEASE_DATE`) VALUES ('5', 'NodeJS', 'English', '1000', '4', '2019-05-28');
INSERT INTO `book`.`book` (`ISBN`, `TITLE`, `LANGUAGE`, `MRP`, `PUBLISHERID`, `RELEASE_DATE`) VALUES ('6', 'C', 'French', '800', '1', '2019-06-03');
INSERT INTO `book`.`book` (`ISBN`, `TITLE`, `LANGUAGE`, `MRP`, `PUBLISHERID`, `RELEASE_DATE`) VALUES ('7', 'C++', 'English', '950', '3', '2019-06-14');
INSERT INTO `book`.`book` (`ISBN`, `TITLE`, `LANGUAGE`, `MRP`, `PUBLISHERID`, `RELEASE_DATE`) VALUES ('8', 'AutoCAD', 'Hindi', '750', '2', '2019-06-17');
INSERT INTO `book`.`book` (`ISBN`, `TITLE`, `LANGUAGE`, `MRP`, `PUBLISHERID`, `RELEASE_DATE`) VALUES ('9', 'Java', 'Marathi', '500', '5', '2019-09-04');
INSERT INTO `book`.`book` (`ISBN`, `TITLE`, `LANGUAGE`, `MRP`, `PUBLISHERID`, `RELEASE_DATE`) VALUES ('10', 'Pig', 'Hindi', '600', '4', '2019-09-10');
INSERT INTO `book`.`book` (`ISBN`, `TITLE`, `LANGUAGE`, `MRP`, `PUBLISHERID`, `RELEASE_DATE`) VALUES ('11', 'Word', 'English', '1200', '1', '2019-09-16');
INSERT INTO `book`.`book` (`ISBN`, `TITLE`, `LANGUAGE`, `MRP`, `PUBLISHERID`, `RELEASE_DATE`) VALUES ('12', 'Excel', 'Hindi', '700', '4', '2019-09-18');
INSERT INTO `book`.`book` (`ISBN`, `TITLE`, `LANGUAGE`, `MRP`, `PUBLISHERID`, `RELEASE_DATE`) VALUES ('13', 'PowerPoint', 'Marathi', '400', '5', '2019-10-21');
INSERT INTO `book`.`book` (`ISBN`, `TITLE`, `LANGUAGE`, `MRP`, `PUBLISHERID`, `RELEASE_DATE`) VALUES ('14', '.NET', 'Hindi', '900', '4', '2019-11-19');
INSERT INTO `book`.`book` (`ISBN`, `TITLE`, `LANGUAGE`, `MRP`, `PUBLISHERID`, `RELEASE_DATE`) VALUES ('15', 'OSC', 'English', '850', '5', '2019-11-28');
INSERT INTO `book`.`book` (`ISBN`, `TITLE`, `LANGUAGE`, `MRP`, `PUBLISHERID`, `RELEASE_DATE`) VALUES ('16', 'MySQL', 'English', '1450', '2', '2019-12-17');
INSERT INTO `book`.`book` (`ISBN`, `TITLE`, `LANGUAGE`, `MRP`, `PUBLISHERID`, `RELEASE_DATE`) VALUES ('17', 'Oracle', 'English', '750', '3', '2019-12-19');
INSERT INTO `book`.`book` (`ISBN`, `TITLE`, `LANGUAGE`, `MRP`, `PUBLISHERID`, `RELEASE_DATE`) VALUES ('18', 'DB2', 'English', '700', '2', '2019-12-23');
INSERT INTO `book`.`book` (`ISBN`, `TITLE`, `LANGUAGE`, `MRP`, `PUBLISHERID`, `RELEASE_DATE`) VALUES ('19', 'Express', 'English', '780', '5', '2019-12-26');
INSERT INTO `book`.`book` (`ISBN`, `TITLE`, `LANGUAGE`, `MRP`, `PUBLISHERID`, `RELEASE_DATE`) VALUES ('20', 'AngularJS', 'English', '1400', '1', '2019-12-27');


INSERT INTO `book`.`author` (`AUTHORID`, `FIRSTNAME`, `LASTNAME`, `PHONE`, `EMAILID`) VALUES ('1', 'Rudolf', 'Berghammer', '9850884225', 'Rudolf.Berghammer@gmail.com');
INSERT INTO `book`.`author` (`AUTHORID`, `FIRSTNAME`, `LASTNAME`, `PHONE`, `EMAILID`) VALUES ('2', 'Richard', 'Bird', '9850881225', 'Richard.Bird@gmail.com');
INSERT INTO `book`.`author` (`AUTHORID`, `FIRSTNAME`, `LASTNAME`, `PHONE`, `EMAILID`) VALUES ('3', 'Christopher', 'Bishop', '9850662195', 'Christopher.Bishop@gmail.com');
INSERT INTO `book`.`author` (`AUTHORID`, `FIRSTNAME`, `LASTNAME`, `PHONE`, `EMAILID`) VALUES ('4', 'Dines', 'Bjorner', '9850245110', 'Dines.Bjorner@gmail.com');
INSERT INTO `book`.`author` (`AUTHORID`, `FIRSTNAME`, `LASTNAME`, `PHONE`, `EMAILID`) VALUES ('5', 'Egon', 'Borger', '9850345221', 'Egon.Borger@gmail.com');
INSERT INTO `book`.`author` (`AUTHORID`, `FIRSTNAME`, `LASTNAME`, `PHONE`, `EMAILID`) VALUES ('6', 'Stephen', 'Bourne', '9850335761', 'Stephen.Bourne@gmail.com');
INSERT INTO `book`.`author` (`AUTHORID`, `FIRSTNAME`, `LASTNAME`, `PHONE`, `EMAILID`) VALUES ('7', 'Jonathan', 'Bowen', '9922050697', 'Jonathan.Bowen@gmail.com');
INSERT INTO `book`.`author` (`AUTHORID`, `FIRSTNAME`, `LASTNAME`, `PHONE`, `EMAILID`) VALUES ('8', 'Bernd', 'Bruegge', '9922065491', 'Bernd.Bruegge@gmail.com');
INSERT INTO `book`.`author` (`AUTHORID`, `FIRSTNAME`, `LASTNAME`, `PHONE`, `EMAILID`) VALUES ('9', 'Alan', 'Burns', '9922459846', 'Alan.Burns@gmail.com');
INSERT INTO `book`.`author` (`AUTHORID`, `FIRSTNAME`, `LASTNAME`, `PHONE`, `EMAILID`) VALUES ('10', 'Stephen', 'King', '9970398403', 'Stephen.King@gmail.com');
INSERT INTO `book`.`author` (`AUTHORID`, `FIRSTNAME`, `LASTNAME`, `PHONE`, `EMAILID`) VALUES ('11', 'Agatha', 'Christie', '9970648148', 'Agatha.Christie@gmail.com');
INSERT INTO `book`.`author` (`AUTHORID`, `FIRSTNAME`, `LASTNAME`, `PHONE`, `EMAILID`) VALUES ('12', 'Barbara', 'Cartland', '9970619753', 'Barbara.Cartland@gmail.com');



INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('1', '1', '1');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('2', '1', '5');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('3', '2', '7');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('4', '3', '4');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('5', '3', '1');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('6', '4', '6');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('7', '5', '4');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('8', '6', '7');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('9', '7', '1');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('10', '8', '2');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('11', '8', '3');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('12', '9', '4');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('13', '10', '1');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('14', '10', '5');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('15', '10', '7');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('16', '11', '5');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('17', '11', '3');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('18', '12', '8');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('19', '12', '9');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('20', '13', '1');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('21', '14', '4');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('22', '14', '8');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('23', '15', '4');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('24', '15', '3');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('25', '16', '7');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('26', '17', '7');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('27', '18', '8');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('28', '18', '9');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('29', '19', '1');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('30', '19', '4');
INSERT INTO `book`.`book_author` (`ID`, `ISBN`, `AUTHORID`) VALUES ('31', '20', '10');
