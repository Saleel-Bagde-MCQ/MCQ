CREATE SCHEMA `emp_dept`;
use emp_dept;

drop table if exists dept;
drop table if exists emp;



CREATE TABLE `dept` (
  `DEPTNO` int(2) NOT NULL,
  `DNAME` varchar(12) DEFAULT NULL,
  `LOC` varchar(10) DEFAULT NULL,
  `PWD` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `emp` (
  `EMPNO` int(4) NOT NULL,
  `ENAME` varchar(12) DEFAULT NULL,
  `JOB` varchar(20) DEFAULT NULL,
  `MGR` int(4) DEFAULT NULL,
  `HIREDATE` datetime DEFAULT NULL,
  `SAL` float(7,2) DEFAULT NULL,
  `COMM` float(7,2) DEFAULT NULL,
  `DEPTNO` int(2) NOT NULL,
  `BONUSID` int(11) DEFAULT NULL,
  `USER NAME` varchar(20) DEFAULT NULL,
  `PWD` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;