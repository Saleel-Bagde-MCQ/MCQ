CREATE SCHEMA `product` ;
use product;


drop table if exists product;
drop table if exists material_type;
drop table if exists material;
drop table if exists bom;



CREATE TABLE `product`.`product` (
  `ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Price` INT NULL,
  `otherCharges` INT NULL,
  `isPerishable` CHAR(1) NULL,
  PRIMARY KEY (`ID`));


CREATE TABLE `product`.`material_type` (
  `ID` INT NOT NULL,
  `type` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`));


CREATE TABLE `product`.`material` (
  `ID` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `typeID` INT NULL,
  `isPerishable` char(1) NULL,
  `cost` INT NULL,
  PRIMARY KEY (`ID`));

CREATE TABLE `product`.`bom` (
  `ID` INT NOT NULL,
  `productID` INT NULL,
  `materialID` INT NULL,
  `quantity` INT NULL,
  PRIMARY KEY (`ID`));


INSERT INTO `product`.`product` (`ID`, `Name`, `Price`, `otherCharges`, `isPerishable`) VALUES ('1', 'Gold Pen', '225', '20', 'n');
INSERT INTO `product`.`product` (`ID`, `Name`, `Price`, `otherCharges`, `isPerishable`) VALUES ('2', 'Rare Cheese', '250', '45', 'y');
INSERT INTO `product`.`product` (`ID`, `Name`, `Price`, `otherCharges`, `isPerishable`) VALUES ('3', 'Keyboard', '125', '50', 'n');
INSERT INTO `product`.`product` (`ID`, `Name`, `Price`, `otherCharges`, `isPerishable`) VALUES ('4', 'Premium Coffee', '200', '17', 'y');
INSERT INTO `product`.`product` (`ID`, `Name`, `Price`, `otherCharges`, `isPerishable`) VALUES ('5', 'Cycle', '1200', '22', 'n');
INSERT INTO `product`.`product` (`ID`, `Name`, `Price`, `otherCharges`, `isPerishable`) VALUES ('6', 'Deluxe Pencils', '100', '15', 'n');



INSERT INTO `product`.`material_type` (`ID`, `type`) VALUES ('1', 'solid');
INSERT INTO `product`.`material_type` (`ID`, `type`) VALUES ('2', 'liquid');
INSERT INTO `product`.`material_type` (`ID`, `type`) VALUES ('3', 'gas');
INSERT INTO `product`.`material_type` (`ID`, `type`) VALUES ('4', 'plasma');



INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('1', 'cap', '1', 'n', '6');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('2', 'barrel', '1', 'n', '12');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('3', 'ink tube', '1', 'n', '12');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('4', 'ink', '2', 'n', '10');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('5', 'milk', '2', 'y', '8');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('6', 'cheese salt', '1', 'y', '11');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('7', 'black', '2', 'n', '8');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('8', 'red', '2', 'n', '10');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('9', 'green', '2', 'n', '10');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('10', 'blue', '2', 'n', '6');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('11', 'yellow', '2', 'n', '12');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('12', 'nut', '1', 'n', '5');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('13', 'bolt', '1', 'n', '12');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('14', 'cover', '1', 'n', '7');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('15', 'water', '2', 'y', '8');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('16', 'cotton', '1', 'y', '9');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('17', 'cloth', '1', 'y', '9');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('18', 'card board', '1', 'n', '11');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('19', 'steel', '1', 'n', '6');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('20', 'glass', '1', 'n', '8');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('21', 'plastics', '1', 'n', '11');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('22', 'wood', '1', 'n', '8');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('23', 'paper', '1', 'y', '9');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('24', 'leather', '1', 'y', '10');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('25', 'rubber', '1', 'n', '10');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('26', 'powder', '1', 'n', '9');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('27', 'wire', '1', 'n', '5');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('28', 'copper', '1', 'n', '7');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('29', 'iron', '1', 'n', '6');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('30', 'coffee', '1', 'y', '10');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('31', 'sugar', '1', 'y', '11');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('32', 'Tyre', '1', 'n', '8');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('33', 'light', '1', 'n', '10');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('34', 'door', '1', 'n', '8');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('35', 'aluminum', '1', 'n', '9');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('36', 'copper', '1', 'n', '6');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('37', 'Cocoa', '1', 'y', '11');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('38', 'Ballpoint', '1', 'n', '9');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('39', 'Graphite', '1', 'n', '10');
INSERT INTO `product`.`material` (`ID`, `name`, `typeID`, `isPerishable`, `cost`) VALUES ('40', 'White', '2', 'n', '5');


INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('1', '1', '1', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('2', '1', '2', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('3', '1', '8', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('4', '1', '9', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('5', '1', '10', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('6', '1', '11', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('7', '1', '38', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('8', '2', '5', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('9', '2', '15', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('10', '2', '31', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('11', '2', '35', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('12', '2', '14', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('13', '2', '6', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('14', '3', '7', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('15', '3', '40', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('16', '3', '14', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('17', '3', '18', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('18', '3', '19', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('19', '3', '21', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('20', '3', '28', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('21', '3', '35', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('22', '4', '5', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('23', '4', '15', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('24', '4', '30', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('25', '4', '31', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('26', '4', '37', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('27', '5', '2', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('28', '5', '7', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('29', '5', '8', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('30', '5', '9', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('31', '5', '12', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('32', '5', '13', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('33', '5', '19', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('34', '5', '21', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('35', '5', '36', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('36', '5', '25', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('37', '5', '27', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('38', '5', '29', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('39', '5', '32', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('40', '5', '33', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('41', '5', '35', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('42', '6', '25', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('43', '6', '18', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('44', '6', '22', '1');
INSERT INTO `product`.`bom` (`ID`, `productID`, `materialID`, `quantity`) VALUES ('45', '6', '39', '1');



