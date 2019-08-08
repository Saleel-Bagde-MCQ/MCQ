CREATE SCHEMA `customer_orders` ;
use customer_orders;

drop table if exists salespeople;
drop table if exists customers;
drop table if exists orders;



CREATE TABLE `salespeople` (
  `SNUM` int(11) primary key NOT NULL,
  `SNAME` varchar(10) DEFAULT NULL,
  `CITY` varchar(10) DEFAULT NULL,
  `COMM` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `customers` (
  `CNUM` int(11) NOT NULL,
  `CNAME` varchar(10) DEFAULT NULL,
  `CITY` varchar(10) DEFAULT NULL,
  `RATING` float DEFAULT NULL,
  `SNUM` int(11) DEFAULT NULL,
  PRIMARY KEY (`CNUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `orders` (
  `ONUM` int(11) NOT NULL,
  `AMT` float DEFAULT NULL,
  `ODATE` datetime DEFAULT NULL,
  `CNUM` int(11) DEFAULT NULL,
  `SNUM` int(11) DEFAULT NULL,
  PRIMARY KEY (`ONUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `customer_orders`.`salespeople` (`SNUM`, `SNAME`, `CITY`, `COMM`) VALUES ('1001', 'Peel', 'London', '.12');
INSERT INTO `customer_orders`.`salespeople` (`SNUM`, `SNAME`, `CITY`, `COMM`) VALUES ('1002', 'Serres', 'San Jose', '.13');
INSERT INTO `customer_orders`.`salespeople` (`SNUM`, `SNAME`, `CITY`, `COMM`) VALUES ('1004', 'Monika', 'London', '.11');
INSERT INTO `customer_orders`.`salespeople` (`SNUM`, `SNAME`, `CITY`, `COMM`) VALUES ('1007', 'Rifkin', 'Barcelona', '.15');
INSERT INTO `customer_orders`.`salespeople` (`SNUM`, `SNAME`, `CITY`, `COMM`) VALUES ('1003', 'Axelrod', 'New York', '.10');
INSERT INTO `customer_orders`.`salespeople` (`SNUM`, `SNAME`, `CITY`, `COMM`) VALUES ('1005', 'Franc', 'London', '.26');


INSERT INTO `customer_orders`.`customers` (`CNUM`, `CNAME`, `CITY`, `RATING`, `SNUM`) VALUES ('2001', 'Hoffman', 'London', '100', '1001');
INSERT INTO `customer_orders`.`customers` (`CNUM`, `CNAME`, `CITY`, `RATING`, `SNUM`) VALUES ('2002', 'Giovanni', 'Rome', '200', '1003');
INSERT INTO `customer_orders`.`customers` (`CNUM`, `CNAME`, `CITY`, `RATING`, `SNUM`) VALUES ('2003', 'Liu', 'San Jose', '200', '1002');
INSERT INTO `customer_orders`.`customers` (`CNUM`, `CNAME`, `CITY`, `RATING`, `SNUM`) VALUES ('2004', 'Grass', 'Berlin', '300', '1002');
INSERT INTO `customer_orders`.`customers` (`CNUM`, `CNAME`, `CITY`, `RATING`, `SNUM`) VALUES ('2006', 'Clemens', 'London', '100', '1001');
INSERT INTO `customer_orders`.`customers` (`CNUM`, `CNAME`, `CITY`, `RATING`, `SNUM`) VALUES ('2008', 'Cisneros', 'San Jose', '300', '1007');
INSERT INTO `customer_orders`.`customers` (`CNUM`, `CNAME`, `CITY`, `RATING`, `SNUM`) VALUES ('2007', 'Pereira', 'Rome', '100', '1004');



INSERT INTO `customer_orders`.`orders` (`ONUM`, `AMT`, `ODATE`, `CNUM`, `SNUM`) VALUES ('3001', '18.69', '1996-10-03', '2008', '1007');
INSERT INTO `customer_orders`.`orders` (`ONUM`, `AMT`, `ODATE`, `CNUM`, `SNUM`) VALUES ('3003', '767.19', '1996-10-03', '2001', '1001');
INSERT INTO `customer_orders`.`orders` (`ONUM`, `AMT`, `ODATE`, `CNUM`, `SNUM`) VALUES ('3002', '1900.10', '1996-10-03', '2007', '1004');
INSERT INTO `customer_orders`.`orders` (`ONUM`, `AMT`, `ODATE`, `CNUM`, `SNUM`) VALUES ('3005', '5160.45', '1996-10-03', '2003', '1002');
INSERT INTO `customer_orders`.`orders` (`ONUM`, `AMT`, `ODATE`, `CNUM`, `SNUM`) VALUES ('3006', '1098.16', '1996-10-03', '2008', '1007');
INSERT INTO `customer_orders`.`orders` (`ONUM`, `AMT`, `ODATE`, `CNUM`, `SNUM`) VALUES ('3009', '1713.23', '1996-10-04', '2002', '1003');
INSERT INTO `customer_orders`.`orders` (`ONUM`, `AMT`, `ODATE`, `CNUM`, `SNUM`) VALUES ('3007', '75.75', '1996-10-04', '2002', '1003');
INSERT INTO `customer_orders`.`orders` (`ONUM`, `AMT`, `ODATE`, `CNUM`, `SNUM`) VALUES ('3008', '4723.00', '1996-10-05', '2006', '1001');
INSERT INTO `customer_orders`.`orders` (`ONUM`, `AMT`, `ODATE`, `CNUM`, `SNUM`) VALUES ('3010', '1309.95', '1996-10-06', '2004', '1002');
INSERT INTO `customer_orders`.`orders` (`ONUM`, `AMT`, `ODATE`, `CNUM`, `SNUM`) VALUES ('3011', '9891.88', '1996-10-06', '2006', '1001');
INSERT INTO `customer_orders`.`orders` (`ONUM`, `AMT`, `ODATE`, `CNUM`, `SNUM`) VALUES ('3012', '3455.78', '1996-10-04', '2002', '1003');
INSERT INTO `customer_orders`.`orders` (`ONUM`, `AMT`, `ODATE`, `CNUM`, `SNUM`) VALUES ('3013', '1245.98', '1996-10-04', '2002', '1003');
INSERT INTO `customer_orders`.`orders` (`ONUM`, `AMT`, `ODATE`, `CNUM`, `SNUM`) VALUES ('3014', '3721.53', '1996-10-05', '2006', '1001');
INSERT INTO `customer_orders`.`orders` (`ONUM`, `AMT`, `ODATE`, `CNUM`, `SNUM`) VALUES ('3015', '734.50', '1996-10-06', '2004', '1002');
INSERT INTO `customer_orders`.`orders` (`ONUM`, `AMT`, `ODATE`, `CNUM`, `SNUM`) VALUES ('3016', '1729.67', '1996-10-06', '2006', '1001');


