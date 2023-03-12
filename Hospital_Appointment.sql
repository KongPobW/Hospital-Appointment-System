DROP DATABASE IF EXISTS `Hospital_Appointment`;
CREATE DATABASE `Hospital_Appointment`;

USE `Hospital_Appointment`;

DROP TABLE IF EXISTS `Patient`;
CREATE TABLE `Patient` (
  `UserName` VARCHAR(15) NOT NULL,
  `PatPass` VARCHAR(15) NOT NULL,
  `PatName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`UserName`)
);
INSERT INTO `Patient` VALUES ('Admin', 'Admin12345', 'Admin');

DROP TABLE IF EXISTS `Department`;
CREATE TABLE `Department` (
  `idDept` INT NOT NULL AUTO_INCREMENT,
  `Dname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idDept`)
);
INSERT INTO `Department` (`Dname`) VALUES ('Medicine'), ('Heart'), ('Respiratory'), ('Brain'), ('Bone'), ('Obstetric'), ('Skin'), ('Digestive'), ('Other');

DROP TABLE IF EXISTS `Appointment`;
CREATE TABLE `Appointment` (
  `AppID` INT NOT NULL AUTO_INCREMENT,
  `Date` DATE NOT NULL,
  `Time` TIME NOT NULL,
  `UserName` VARCHAR(15),
  `Pnumber` CHAR(10) NOT NULL,
  `idDept` INT,
  PRIMARY KEY (`AppID`),
  FOREIGN KEY (`UserName`) REFERENCES `Patient`(`UserName`), FOREIGN KEY (`idDept`) REFERENCES `Department`(`idDept`)
);