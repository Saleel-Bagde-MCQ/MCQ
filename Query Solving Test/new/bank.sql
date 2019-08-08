CREATE SCHEMA `bank` ;
use bank;

drop table if exists branch;
drop table if exists bank_employee;
drop table if exists bank_customer;
drop table if exists account;
drop table if exists depositor;
drop table if exists withdraw;
drop table if exists loan;
drop table if exists loan_borrower;


CREATE TABLE `bank`.`branch` (
  `branchID` INT NOT NULL,
  `branchName` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  PRIMARY KEY (`branchID`));


CREATE TABLE `bank`.`bank_employee` (
  `employeeID` INT NOT NULL,
  `EmployeeName` VARCHAR(45) NULL,
  `branchID` INT NULL,
  `Salary` INT NULL,
  PRIMARY KEY (`employeeID`));


CREATE TABLE `bank`.`bank_customer` (
  `customerID` INT NOT NULL,
  `customerName` VARCHAR(45) NULL,
  `gender` CHAR(1) NULL,
  `city` VARCHAR(45) NULL,
  PRIMARY KEY (`customerID`));


CREATE TABLE `bank`.`account` (
  `accountNo` INT NOT NULL,
  `customerID` INT NULL,
  `branchID` INT NULL,
  `balance` INT NULL,
  PRIMARY KEY (`accountNo`));


CREATE TABLE `bank`.`depositor` (
  `ID` INT NOT NULL,
  `accountNo` INT NULL,
  `date` DATE NULL,
  `amount` INT NULL,
  PRIMARY KEY (`ID`));


CREATE TABLE `bank`.`withdraw` (
  `ID` INT NOT NULL,
  `accountNo` INT NULL,
  `date` DATE NULL,
  `amount` INT NULL,
  PRIMARY KEY (`ID`));
  
  
  
CREATE TABLE `bank`.`loan` (
  `loanNumber` INT NOT NULL,
  `branchID` INT NULL,
  `amount` INT NULL,
  PRIMARY KEY (`loanNumber`));



CREATE TABLE `bank`.`loan_borrower` (
  `ID` INT NOT NULL,
  `customerID` INT NULL,
  `loanNumber` INT NULL,
  PRIMARY KEY (`ID`));



INSERT INTO `bank`.`branch` (`branchID`, `branchName`, `city`) VALUES ('1', 'Paud Road', 'pune');
INSERT INTO `bank`.`branch` (`branchID`, `branchName`, `city`) VALUES ('2', 'MG Road', 'Mumbai');
INSERT INTO `bank`.`branch` (`branchID`, `branchName`, `city`) VALUES ('3', 'Kothrud', 'Pune');
INSERT INTO `bank`.`branch` (`branchID`, `branchName`, `city`) VALUES ('4', 'Camp', 'Pune');
INSERT INTO `bank`.`branch` (`branchID`, `branchName`, `city`) VALUES ('5', 'Deccan', 'Pune');
INSERT INTO `bank`.`branch` (`branchID`, `branchName`, `city`) VALUES ('6', 'Dadar', 'Mumbai');
INSERT INTO `bank`.`branch` (`branchID`, `branchName`, `city`) VALUES ('7', 'Link Road', 'Mumbai');


INSERT INTO `bank`.`bank_employee` (`employeeID`, `EmployeeName`, `branchID`, `Salary`) VALUES ('1', 'Saleel', '1', '4500');
INSERT INTO `bank`.`bank_employee` (`employeeID`, `EmployeeName`, `branchID`, `Salary`) VALUES ('2', 'Sharmin', '3', '6000');
INSERT INTO `bank`.`bank_employee` (`employeeID`, `EmployeeName`, `branchID`, `Salary`) VALUES ('3', 'Vrushali', '1', '2500');
INSERT INTO `bank`.`bank_employee` (`employeeID`, `EmployeeName`, `branchID`, `Salary`) VALUES ('4', 'Bandish', '2', '2000');
INSERT INTO `bank`.`bank_employee` (`employeeID`, `EmployeeName`, `branchID`, `Salary`) VALUES ('5', 'Nitish', '5', '1000');
INSERT INTO `bank`.`bank_employee` (`employeeID`, `EmployeeName`, `branchID`, `Salary`) VALUES ('6', 'Neel', '6', '3200');
INSERT INTO `bank`.`bank_employee` (`employeeID`, `EmployeeName`, `branchID`, `Salary`) VALUES ('7', 'Deep', '3', '3400');
INSERT INTO `bank`.`bank_employee` (`employeeID`, `EmployeeName`, `branchID`, `Salary`) VALUES ('8', 'Gau', '2', '5600');
INSERT INTO `bank`.`bank_employee` (`employeeID`, `EmployeeName`, `branchID`, `Salary`) VALUES ('9', 'Supriya', '4', '3700');
INSERT INTO `bank`.`bank_employee` (`employeeID`, `EmployeeName`, `branchID`, `Salary`) VALUES ('10', 'Sangita', '5', '2800');
INSERT INTO `bank`.`bank_employee` (`employeeID`, `EmployeeName`, `branchID`, `Salary`) VALUES ('11', 'Monika', '4', '1800');
INSERT INTO `bank`.`bank_employee` (`employeeID`, `EmployeeName`, `branchID`, `Salary`) VALUES ('12', 'Kaushal', '3', '800');
INSERT INTO `bank`.`bank_employee` (`employeeID`, `EmployeeName`, `branchID`, `Salary`) VALUES ('13', 'Ruhan', '5', '5000');
INSERT INTO `bank`.`bank_employee` (`employeeID`, `EmployeeName`, `branchID`, `Salary`) VALUES ('14', 'Mai', '5', '3400');
INSERT INTO `bank`.`bank_employee` (`employeeID`, `EmployeeName`, `branchID`, `Salary`) VALUES ('15', 'Bipin', '3', '950');
INSERT INTO `bank`.`bank_employee` (`employeeID`, `EmployeeName`, `branchID`, `Salary`) VALUES ('16', 'Didi', '3', '1200');
INSERT INTO `bank`.`bank_employee` (`employeeID`, `EmployeeName`, `branchID`, `Salary`) VALUES ('17', 'Sumeet', '3', '1100');
INSERT INTO `bank`.`bank_employee` (`employeeID`, `EmployeeName`, `branchID`, `Salary`) VALUES ('18', 'Raja', '1', '3200');
INSERT INTO `bank`.`bank_employee` (`employeeID`, `EmployeeName`, `branchID`, `Salary`) VALUES ('19', 'Nrupali', '4', '2300');
INSERT INTO `bank`.`bank_employee` (`employeeID`, `EmployeeName`, `branchID`, `Salary`) VALUES ('20', 'Rahul', '2', '1300');


INSERT INTO `bank`.`bank_customer` (`customerID`, `customerName`, `gender`, `city`) VALUES ('1', 'Amit', 'M', 'pune');
INSERT INTO `bank`.`bank_customer` (`customerID`, `customerName`, `gender`, `city`) VALUES ('2', 'Rahul', 'M', 'Mumbai');
INSERT INTO `bank`.`bank_customer` (`customerID`, `customerName`, `gender`, `city`) VALUES ('3', 'Sanjay', 'M', 'Pune');
INSERT INTO `bank`.`bank_customer` (`customerID`, `customerName`, `gender`, `city`) VALUES ('4', 'Pinky', 'F', 'Pune');
INSERT INTO `bank`.`bank_customer` (`customerID`, `customerName`, `gender`, `city`) VALUES ('5', 'Smita', 'F', 'Pune');
INSERT INTO `bank`.`bank_customer` (`customerID`, `customerName`, `gender`, `city`) VALUES ('6', 'Janhavi', 'F', 'Mumbai');
INSERT INTO `bank`.`bank_customer` (`customerID`, `customerName`, `gender`, `city`) VALUES ('7', 'Omkar', 'M', 'Mumbai');
INSERT INTO `bank`.`bank_customer` (`customerID`, `customerName`, `gender`, `city`) VALUES ('8', 'Ninad', 'M', 'pune');
INSERT INTO `bank`.`bank_customer` (`customerID`, `customerName`, `gender`, `city`) VALUES ('9', 'Sanjay', 'M', 'Mumbai');
INSERT INTO `bank`.`bank_customer` (`customerID`, `customerName`, `gender`, `city`) VALUES ('10', 'Bob', 'M', 'Pune');
INSERT INTO `bank`.`bank_customer` (`customerID`, `customerName`, `gender`, `city`) VALUES ('11', 'Rajesh', 'M', 'Pune');
INSERT INTO `bank`.`bank_customer` (`customerID`, `customerName`, `gender`, `city`) VALUES ('12', 'Amol', 'M', 'Pune');


INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2011', '4', '6', '31608');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2214', '10', '5', '113190');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2594', '5', '2', '114167');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2743', '10', '6', '94827');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2120', '5', '2', '92503');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2080', '6', '2', '40258');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('1675', '1', '5', '124408');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('1694', '6', '5', '92102');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2175', '10', '5', '34478');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('1607', '4', '7', '144502');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2365', '12', '4', '52160');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2222', '12', '4', '92940');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('1590', '11', '7', '128992');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2041', '2', '6', '140878');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2722', '11', '3', '97540');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2532', '9', '4', '93655');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2236', '10', '4', '58354');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2277', '7', '2', '56088');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('1254', '10', '7', '147988');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2781', '5', '4', '34521');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('1811', '7', '5', '105396');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2985', '2', '3', '134739');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2392', '2', '3', '83100');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2006', '3', '2', '45905');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2738', '7', '5', '57958');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('1634', '1', '5', '111726');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2196', '5', '6', '143319');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2635', '4', '6', '70094');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2754', '12', '1', '143892');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('1322', '12', '3', '122719');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('1821', '1', '2', '75434');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2807', '8', '5', '87713');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('1696', '4', '5', '96282');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('1683', '10', '1', '135911');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2168', '7', '1', '142343');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('1541', '4', '6', '92875');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2980', '8', '5', '68209');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2906', '9', '4', '57334');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2696', '1', '6', '123148');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('1738', '8', '1', '94580');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('1115', '9', '2', '34083');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2231', '3', '3', '79575');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('1114', '3', '6', '148874');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2357', '2', '1', '43202');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('1006', '10', '6', '142806');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('1336', '10', '1', '68072');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('1316', '2', '7', '73540');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2935', '11', '7', '93922');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('1112', '9', '5', '143191');
INSERT INTO `bank`.`account` (`accountNo`, `customerID`, `branchID`, `balance`) VALUES ('2667', '9', '3', '102538');


INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('1', '2011', '2019-01-08', '18478');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('2', '2214', '2019-01-18', '9260');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('3', '2594', '2019-01-24', '4364');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('4', '2743', '2019-02-02', '5633');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('5', '2120', '2019-02-09', '5435');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('6', '2080', '2019-02-11', '16280');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('7', '1675', '2019-03-28', '17382');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('8', '1694', '2019-04-13', '7111');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('9', '2175', '2019-04-24', '14256');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('10', '1607', '2019-06-10', '9090');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('11', '2365', '2019-06-22', '6126');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('12', '2222', '2019-07-08', '13072');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('13', '1590', '2019-07-13', '17010');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('14', '2041', '2019-07-17', '3867');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('15', '2722', '2019-08-10', '18316');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('16', '2532', '2019-08-12', '1775');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('17', '2236', '2019-08-19', '9523');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('18', '2277', '2019-08-21', '18195');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('19', '1254', '2019-09-21', '9580');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('20', '2781', '2019-09-24', '19191');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('21', '1811', '2019-11-01', '5311');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('22', '2985', '2019-11-21', '8815');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('23', '2392', '2019-11-23', '16756');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('24', '2006', '2019-11-30', '19488');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('25', '2738', '2019-12-02', '15807');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('26', '1634', '2019-01-11', '6600');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('27', '2196', '2019-02-05', '14609');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('28', '2635', '2019-02-12', '10939');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('29', '2754', '2019-03-06', '5450');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('30', '1322', '2019-03-14', '18184');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('31', '1821', '2019-03-18', '4074');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('32', '2807', '2019-03-20', '4599');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('33', '1696', '2019-03-27', '16670');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('34', '1683', '2019-04-13', '19228');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('35', '2168', '2019-04-30', '12475');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('36', '1541', '2019-05-06', '19689');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('37', '2980', '2019-05-08', '10803');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('38', '2906', '2019-06-04', '14468');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('39', '2696', '2019-07-27', '2186');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('40', '1738', '2019-08-16', '12348');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('41', '1115', '2019-08-20', '10837');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('42', '2231', '2019-08-31', '10182');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('43', '1114', '2019-09-05', '14926');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('44', '2357', '2019-09-17', '14558');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('45', '1006', '2019-09-30', '10466');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('46', '1336', '2019-11-04', '11236');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('47', '1316', '2019-11-06', '3184');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('48', '2935', '2019-11-13', '5985');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('49', '1112', '2019-11-16', '18247');
INSERT INTO `bank`.`depositor` (`ID`, `accountNo`, `date`, `amount`) VALUES ('50', '2667', '2019-12-17', '16246');


INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('1', '2011', '2019-01-11', '1092');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('2', '2214', '2019-01-21', '1137');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('3', '2594', '2019-01-27', '1001');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('4', '2743', '2019-02-05', '524');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('5', '2120', '2019-02-12', '1068');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('6', '2080', '2019-02-14', '749');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('7', '1675', '2019-03-31', '892');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('8', '1694', '2019-04-16', '781');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('9', '2175', '2019-04-27', '1008');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('10', '1607', '2019-06-13', '794');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('11', '2365', '2019-06-25', '554');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('12', '2222', '2019-07-11', '787');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('13', '1590', '2019-07-16', '840');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('14', '2041', '2019-07-20', '543');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('15', '2722', '2019-08-13', '883');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('16', '2532', '2019-08-15', '735');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('17', '2236', '2019-08-22', '835');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('18', '2277', '2019-08-24', '567');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('19', '1254', '2019-09-24', '701');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('20', '2781', '2019-09-27', '924');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('21', '1811', '2019-11-04', '1112');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('22', '2985', '2019-11-24', '762');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('23', '2392', '2019-11-26', '749');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('24', '2006', '2019-12-03', '828');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('25', '2738', '2019-12-05', '522');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('26', '1634', '2019-01-14', '815');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('27', '2196', '2019-02-08', '676');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('28', '2635', '2019-02-15', '538');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('29', '2754', '2019-03-09', '944');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('30', '1322', '2019-03-17', '1044');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('31', '1821', '2019-03-21', '934');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('32', '2807', '2019-03-23', '773');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('33', '1696', '2019-03-30', '1018');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('34', '1683', '2019-04-16', '1022');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('35', '2168', '2019-05-03', '732');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('36', '1541', '2019-05-09', '886');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('37', '2980', '2019-05-11', '828');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('38', '2906', '2019-06-07', '1096');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('39', '2696', '2019-07-30', '797');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('40', '1738', '2019-08-19', '1018');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('41', '1115', '2019-08-23', '640');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('42', '2231', '2019-09-03', '695');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('43', '1114', '2019-09-08', '1119');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('44', '2357', '2019-09-20', '886');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('45', '1006', '2019-10-03', '1075');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('46', '1336', '2019-11-07', '856');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('47', '1316', '2019-11-09', '882');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('48', '2935', '2019-11-16', '1169');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('49', '1112', '2019-11-19', '786');
INSERT INTO `bank`.`withdraw` (`ID`, `accountNo`, `date`, `amount`) VALUES ('50', '2667', '2019-12-20', '1151');


INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('5790', '4', '30848');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('7403', '2', '35213');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('7700', '1', '40398');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('6040', '5', '40540');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('5001', '4', '28457');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('6700', '4', '48887');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('5055', '4', '35619');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('5590', '2', '31693');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('5121', '5', '31128');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('7562', '5', '35056');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('5067', '4', '40542');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('5141', '5', '30888');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('6973', '1', '45888');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('6177', '2', '44410');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('7339', '3', '43318');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('5216', '4', '46209');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('5387', '2', '46489');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('6082', '3', '38052');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('7771', '1', '31271');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('7843', '5', '29048');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('5810', '5', '26353');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('6381', '3', '42518');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('6275', '5', '48126');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('7742', '2', '39875');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('7630', '1', '48734');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('7986', '3', '38463');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('7743', '4', '36280');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('6623', '2', '46785');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('5779', '3', '48285');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('7880', '3', '36092');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('7588', '4', '30519');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('7310', '3', '44267');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('6889', '2', '30800');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('7550', '5', '40131');
INSERT INTO `bank`.`loan` (`loanNumber`, `branchID`, `amount`) VALUES ('5376', '4', '48628');



INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('1', '2', '5790');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('2', '2', '7403');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('3', '2', '7700');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('4', '3', '6040');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('5', '4', '5001');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('6', '3', '6700');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('7', '1', '5055');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('8', '5', '5590');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('9', '1', '5121');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('10', '1', '7562');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('11', '1', '5067');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('12', '3', '5141');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('13', '4', '6973');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('14', '4', '6177');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('15', '4', '7339');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('16', '1', '5216');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('17', '3', '5387');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('18', '4', '6082');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('19', '4', '7771');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('20', '3', '7843');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('21', '2', '5810');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('22', '3', '6381');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('23', '4', '6275');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('24', '4', '7742');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('25', '2', '7630');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('26', '3', '7986');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('27', '2', '7743');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('28', '5', '6623');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('29', '5', '5779');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('30', '5', '7880');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('31', '1', '7588');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('32', '5', '7310');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('33', '4', '6889');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('34', '2', '7550');
INSERT INTO `bank`.`loan_borrower` (`ID`, `customerID`, `loanNumber`) VALUES ('35', '2', '5376');













