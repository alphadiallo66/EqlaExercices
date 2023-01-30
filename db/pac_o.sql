-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Pac
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Pac
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Pac` DEFAULT CHARACTER SET utf8 ;
USE `Pac` ;

-- -----------------------------------------------------
-- Table `Pac`.`RGAA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pac`.`RGAA` (
  `idRGAA` INT NOT NULL AUTO_INCREMENT,
  `rgaaVersion` FLOAT NOT NULL,
  `wcagVersion` FLOAT NOT NULL,
  PRIMARY KEY (`idRGAA`),
  UNIQUE INDEX `Version_UNIQUE` (`rgaaVersion` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pac`.`Topic`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pac`.`Topic` (
  `idTopic` INT NOT NULL AUTO_INCREMENT,
  `Topic` VARCHAR(45) NOT NULL,
  `Number` INT NOT NULL,
  `RGAA_idRGAA` INT NOT NULL,
  PRIMARY KEY (`idTopic`, `RGAA_idRGAA`),
  UNIQUE INDEX `Topic_UNIQUE` (`Topic` ASC) VISIBLE,
  UNIQUE INDEX `Number_UNIQUE` (`Number` ASC) VISIBLE,
  INDEX `fk_Topic_RGAA1_idx` (`RGAA_idRGAA` ASC) VISIBLE,
  CONSTRAINT `fk_Topic_RGAA1`
    FOREIGN KEY (`RGAA_idRGAA`)
    REFERENCES `Pac`.`RGAA` (`idRGAA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pac`.`Criterium`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pac`.`Criterium` (
  `idCriterium` INT NOT NULL AUTO_INCREMENT,
  `Number` INT NOT NULL,
  `Criteria_idCriteria` INT NOT NULL,
  `Topic_idTopic` INT NOT NULL,
  `Title` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCriterium`),
  UNIQUE INDEX `Number_UNIQUE` (`Number` ASC) VISIBLE,
  INDEX `fk_Criterium_Topic1_idx` (`Topic_idTopic` ASC) VISIBLE,
  CONSTRAINT `fk_Criterium_Topic1`
    FOREIGN KEY (`Topic_idTopic`)
    REFERENCES `Pac`.`Topic` (`idTopic`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pac`.`Test`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pac`.`Test` (
  `idTest` INT NOT NULL AUTO_INCREMENT,
  `Criterium_idCriterium` INT NOT NULL,
  `Test` VARCHAR(2000) NOT NULL,
  PRIMARY KEY (`idTest`),
  INDEX `fk_Test_Criterium1_idx` (`Criterium_idCriterium` ASC) VISIBLE,
  CONSTRAINT `fk_Test_Criterium1`
    FOREIGN KEY (`Criterium_idCriterium`)
    REFERENCES `Pac`.`Criterium` (`idCriterium`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pac`.`Reference`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pac`.`Reference` (
  `idReference` INT NOT NULL AUTO_INCREMENT,
  `Criterium_idCriterium` INT NOT NULL,
  PRIMARY KEY (`idReference`),
  INDEX `fk_Reference_Criterium1_idx` (`Criterium_idCriterium` ASC) VISIBLE,
  CONSTRAINT `fk_Reference_Criterium1`
    FOREIGN KEY (`Criterium_idCriterium`)
    REFERENCES `Pac`.`Criterium` (`idCriterium`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pac`.`Wcag`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pac`.`Wcag` (
  `idWcag` INT NOT NULL AUTO_INCREMENT,
  `Wcag` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idWcag`),
  UNIQUE INDEX `Wcag_UNIQUE` (`Wcag` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pac`.`Technique`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pac`.`Technique` (
  `idTechnique` INT NOT NULL AUTO_INCREMENT,
  `Technique` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTechnique`),
  UNIQUE INDEX `Technique_UNIQUE` (`Technique` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pac`.`Reference_has_Technique`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pac`.`Reference_has_Technique` (
  `Reference_idReference` INT NOT NULL,
  `Technique_idTechnique` INT NOT NULL,
  PRIMARY KEY (`Reference_idReference`, `Technique_idTechnique`),
  INDEX `fk_Reference_has_Technique_Technique1_idx` (`Technique_idTechnique` ASC) VISIBLE,
  INDEX `fk_Reference_has_Technique_Reference1_idx` (`Reference_idReference` ASC) VISIBLE,
  CONSTRAINT `fk_Reference_has_Technique_Reference1`
    FOREIGN KEY (`Reference_idReference`)
    REFERENCES `Pac`.`Reference` (`idReference`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reference_has_Technique_Technique1`
    FOREIGN KEY (`Technique_idTechnique`)
    REFERENCES `Pac`.`Technique` (`idTechnique`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pac`.`TechnicalNote`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pac`.`TechnicalNote` (
  `idTechnicalNote` INT NOT NULL AUTO_INCREMENT,
  `TechnicalNote` VARCHAR(2000) NOT NULL,
  PRIMARY KEY (`idTechnicalNote`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pac`.`InnerTest`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pac`.`InnerTest` (
  `idInnerTest` INT NOT NULL AUTO_INCREMENT,
  `Test` VARCHAR(2000) NOT NULL,
  `Test_idTest` INT NOT NULL,
  PRIMARY KEY (`idInnerTest`),
  INDEX `fk_InnerTest_Test1_idx` (`Test_idTest` ASC) VISIBLE,
  CONSTRAINT `fk_InnerTest_Test1`
    FOREIGN KEY (`Test_idTest`)
    REFERENCES `Pac`.`Test` (`idTest`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pac`.`Reference_has_Wcag`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pac`.`Reference_has_Wcag` (
  `Reference_idReference` INT NOT NULL,
  `Wcag_idWcag` INT NOT NULL,
  PRIMARY KEY (`Reference_idReference`, `Wcag_idWcag`),
  INDEX `fk_Reference_has_Wcag_Wcag1_idx` (`Wcag_idWcag` ASC) VISIBLE,
  INDEX `fk_Reference_has_Wcag_Reference1_idx` (`Reference_idReference` ASC) VISIBLE,
  CONSTRAINT `fk_Reference_has_Wcag_Reference1`
    FOREIGN KEY (`Reference_idReference`)
    REFERENCES `Pac`.`Reference` (`idReference`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reference_has_Wcag_Wcag1`
    FOREIGN KEY (`Wcag_idWcag`)
    REFERENCES `Pac`.`Wcag` (`idWcag`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
