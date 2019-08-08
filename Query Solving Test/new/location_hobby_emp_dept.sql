CREATE SCHEMA `location_hobby_emp_dept` ;
use location_hobby_emp_dept;

drop table if exists location;
drop table if exists hobby;
drop table if exists dept;
drop table if exists emp;




CREATE TABLE `location_hobby_emp_dept`.`location` (
  `LOCATIONID` INT NOT NULL,
  `LOCATIONNAME` VARCHAR(45) NULL,
  PRIMARY KEY (`LOCATIONID`));
  

CREATE TABLE `location_hobby_emp_dept`.`hobby` (
  `HOBBYID` INT NOT NULL,
  `HOBBYNAME` VARCHAR(45) NULL,
  PRIMARY KEY (`HOBBYID`));


CREATE TABLE `location_hobby_emp_dept`.`dept` (
  `DEPTNO` INT NOT NULL,
  `DNAME` VARCHAR(45) NULL,
  `LOCATIONID` INT NULL,
  PRIMARY KEY (`DEPTNO`));


 CREATE TABLE `location_hobby_emp_dept`.`emp` (
  `EMPNO` INT NOT NULL,
  `ENAME` VARCHAR(45) NULL,
  `JOB` VARCHAR(45) NULL,
  `MGR` INT NULL,
  `HIREDATE` DATE NULL,
  `SAL` INT NULL,
  `COMM` INT NULL,
  `DEPTNO` INT NULL,
  `HOBBYID` INT NULL,
  PRIMARY KEY (`EMPNO`));


 
INSERT INTO `location_hobby_emp_dept`.`location` (`LOCATIONID`, `LOCATIONNAME`) VALUES ('1', 'New York');
INSERT INTO `location_hobby_emp_dept`.`location` (`LOCATIONID`, `LOCATIONNAME`) VALUES ('2', 'Dallas');
INSERT INTO `location_hobby_emp_dept`.`location` (`LOCATIONID`, `LOCATIONNAME`) VALUES ('3', 'Chicago');
INSERT INTO `location_hobby_emp_dept`.`location` (`LOCATIONID`, `LOCATIONNAME`) VALUES ('4', 'Boston');
INSERT INTO `location_hobby_emp_dept`.`location` (`LOCATIONID`, `LOCATIONNAME`) VALUES ('5', 'California');
INSERT INTO `location_hobby_emp_dept`.`location` (`LOCATIONID`, `LOCATIONNAME`) VALUES ('6', 'Florida');
INSERT INTO `location_hobby_emp_dept`.`location` (`LOCATIONID`, `LOCATIONNAME`) VALUES ('7', 'Indiana');
INSERT INTO `location_hobby_emp_dept`.`location` (`LOCATIONID`, `LOCATIONNAME`) VALUES ('8', 'Maryland');
INSERT INTO `location_hobby_emp_dept`.`location` (`LOCATIONID`, `LOCATIONNAME`) VALUES ('9', 'Nevada');
INSERT INTO `location_hobby_emp_dept`.`location` (`LOCATIONID`, `LOCATIONNAME`) VALUES ('10', 'London');
INSERT INTO `location_hobby_emp_dept`.`location` (`LOCATIONID`, `LOCATIONNAME`) VALUES ('11', 'Geneva');
INSERT INTO `location_hobby_emp_dept`.`location` (`LOCATIONID`, `LOCATIONNAME`) VALUES ('12', 'Roma');



INSERT INTO `location_hobby_emp_dept`.`hobby` (`HOBBYID`, `HOBBYNAME`) VALUES ('1', 'Windsurfing');
INSERT INTO `location_hobby_emp_dept`.`hobby` (`HOBBYID`, `HOBBYNAME`) VALUES ('2', 'Fishing');
INSERT INTO `location_hobby_emp_dept`.`hobby` (`HOBBYID`, `HOBBYNAME`) VALUES ('3', 'Swimming');
INSERT INTO `location_hobby_emp_dept`.`hobby` (`HOBBYID`, `HOBBYNAME`) VALUES ('4', 'Shopping');
INSERT INTO `location_hobby_emp_dept`.`hobby` (`HOBBYID`, `HOBBYNAME`) VALUES ('5', 'Bowling');
INSERT INTO `location_hobby_emp_dept`.`hobby` (`HOBBYID`, `HOBBYNAME`) VALUES ('6', 'Reading');
INSERT INTO `location_hobby_emp_dept`.`hobby` (`HOBBYID`, `HOBBYNAME`) VALUES ('7', 'Dancing');
INSERT INTO `location_hobby_emp_dept`.`hobby` (`HOBBYID`, `HOBBYNAME`) VALUES ('8', 'Travelling');
INSERT INTO `location_hobby_emp_dept`.`hobby` (`HOBBYID`, `HOBBYNAME`) VALUES ('9', 'Bungee Jumping');
INSERT INTO `location_hobby_emp_dept`.`hobby` (`HOBBYID`, `HOBBYNAME`) VALUES ('10', 'Horse Riding');
INSERT INTO `location_hobby_emp_dept`.`hobby` (`HOBBYID`, `HOBBYNAME`) VALUES ('11', 'Bowling');
INSERT INTO `location_hobby_emp_dept`.`hobby` (`HOBBYID`, `HOBBYNAME`) VALUES ('12', 'Astrology');


INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('10', 'Accounting', '1');
INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('20', 'Research', '2');
INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('30', 'Sales', '3');
INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('40', 'Operations', '4');
INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('50', 'Purchase', '5');
INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('60', 'Production', '6');
INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('70', 'Controls', '7');
INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('80', 'Operations Research', '8');
INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('90', 'Finance', '1');
INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('100', 'IT', '2');
INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('110', 'IT Support', '3');
INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('120', 'Shipping', '4');
INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('130', 'IT Helpdesk', '1');
INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('140', 'Retail Sales', '2');
INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('150', 'IT Network', '3');
INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('160', 'Public Relations', '4');
INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('170', 'Materials Science', '1');
INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('180', 'Career Services', '2');
INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('190', 'Commercial', '5');
INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('200', 'Economics', '6');
INSERT INTO `location_hobby_emp_dept`.`dept` (`DEPTNO`, `DNAME`, `LOCATIONID`) VALUES ('201', 'HRD', '5');



INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('1000', 'Alice', 'manager', '7839', '1983-08-12', '9000', '10', '1');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('1001', 'Victor', 'assistant manager', '1000', '1983-12-25', '8000', '10', '4');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('1002', 'Jack', 'assistant', '1001', '1983-12-25', '7000', '20', '3');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('1003', 'William', 'assistant', '1001', '1984-12-30', '7000', '30', '2');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('1004', 'Rose', 'assistant manager', '1000', '1985-01-30', '8000', '150', '7');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('1005', 'Kate', 'assistant analyst', '7388', '1985-01-30', '3000', '160', '9');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`, `HOBBYID`) VALUES ('1006', 'William', 'salesman', '7388', '1980-02-13', '23700', '1200', '160', '10');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`, `HOBBYID`) VALUES ('1007', 'Matthew', 'salesman', '1005', '1980-02-28', '4700', '1200', '160', '12');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`, `HOBBYID`) VALUES ('1008', 'Mai', 'salesgirl', '1000', '2001-12-25', '8000', '10000', '150', '1');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`, `HOBBYID`) VALUES ('1009', 'Zaria', 'salesgirl', '1001', '2002-12-25', '7000', '555', '150', '7');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`, `HOBBYID`) VALUES ('1010', 'Maya', 'salesgirl', '1001', '2003-12-30', '7000', '120', '140', '4');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`, `HOBBYID`) VALUES ('1011', 'Rose', 'salesgirl', '1000', '2004-01-30', '18000', '250', '150', '3');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`, `HOBBYID`) VALUES ('1012', 'Kate', 'salesgirl', '7388', '2005-01-30', '3000', '900', '160', '8');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`, `HOBBYID`) VALUES ('1013', 'Tina', 'salesgirl', '7388', '2006-02-13', '13700', '2400', '160', '10');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`, `HOBBYID`) VALUES ('1014', 'Mary', 'salesgirl', '1005', '2007-02-28', '20000', '1550', '90', '11');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`, `HOBBYID`) VALUES ('1015', 'Tessa', 'salesgirl', '1005', '2008-02-28', '14700', '1100', '160', '12');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('1016', 'Steven', 'assistant', '1004', '1983-01-12', '9500', '40', '2');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('2099', 'Sherlock', 'clerk', '8009', '1982-01-23', '1600', '40', '6');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('2877', 'Stephen', 'assistant', '7788', '1983-01-12', '1100', '40', '4');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`, `HOBBYID`) VALUES ('3000', 'Aaron', 'salesman', '7877', '1981-11-17', '4500', '1200', '60', '8');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('3001', 'Alexander', 'manager', '7369', '1981-05-01', '2950', '90', '7');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('3002', 'Brooke', 'clerk', '5002', '1981-06-09', '2222', '50', '6');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('3003', 'Bruce', 'personal assistant', '5002', '1981-04-02', '4975', '120', '9');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('3189', 'Eli', 'personal assistant', '3001', '1981-12-03', '5400', '30', '8');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('3244', 'Shelley', 'manager', '7839', '1981-12-03', '6000', '170', '6');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('3267', 'Clive', 'assistant', '5002', '1981-02-20', '3600', '50', '4');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('3467', 'Christopher', 'personal assistant', '7844', '1981-09-28', '4250', '190', '1');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('3598', 'Dirk', 'assistant', '7698', '1981-09-08', '1500', '60', '3');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('3745', 'Ely', 'assistant', '7788', '1981-02-22', '5250', '150', '5');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('4934', 'Sherlock', 'clerk', '8009', '1982-01-23', '1600', '40', '10');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`, `HOBBYID`) VALUES ('5001', 'Aaron', 'salesman', '7902', '1981-11-17', '4500', '1200', '60', '11');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('5002', 'Alexander', 'manager', '7369', '1981-05-01', '2950', '70', '12');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('5003', 'Brooke', 'clerk', '5002', '1981-06-09', '2222', '100', '12');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('6001', 'Bruce', 'personal assistant', '5002', '1981-04-02', '4975', '80', '10');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('6002', 'Christopher', 'personal assistant', '7844', '1981-09-28', '4250', '180', '11');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('6003', 'Clive', 'assistant', '7698', '1981-02-20', '3600', '120', '1');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('6342', 'Joel', 'clerk', '8009', '1982-01-23', '1600', '50', '7');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('6345', 'Jay', 'analyst', '8009', '1982-12-09', '3100', '50', '8');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('6774', 'Joe', 'assistant', '7788', '1983-01-13', '1100', '190', '2');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('6843', 'Matthew', 'assistant', '7788', '1983-01-12', '1100', '100', '3');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('6980', 'Louis', 'clerk', '8009', '1982-01-23', '1600', '30', '2');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('7005', 'DIRK', 'assistant', '7698', '1981-09-08', '1500', '60', '3');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('7006', 'ELI', 'personal assistant', '7521', '1981-12-03', '5400', '70', '5');
INSERT INTO `location_hobby_emp_dept`.`emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `DEPTNO`, `HOBBYID`) VALUES ('7007', 'ELY', 'assistant', '7788', '1981-02-22', '5250', '140', '4');


