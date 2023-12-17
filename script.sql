-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Distrito_Sanitario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Distrito_Sanitario` (
  `idDS` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `zona` VARCHAR(20) NOT NULL,
  `area` VARCHAR(20) NOT NULL,
  `qntdBairros` INT NOT NULL,
  `areaCobertura` INT NOT NULL,
  PRIMARY KEY (`idDS`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Paciente` (
  `cpf` VARCHAR(15) NOT NULL,
  `nome` VARCHAR(60) NOT NULL,
  `cns` INT(20) NOT NULL,
  `dataNasc` DATE NOT NULL,
  `sexo` CHAR(1) NOT NULL,
  `estCivil` CHAR(10) NOT NULL,
  `cor` CHAR(10) NOT NULL,
  `email` VARCHAR(60) NOT NULL,
  `preCID` VARCHAR(15) NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) VISIBLE,
  UNIQUE INDEX `cns_UNIQUE` (`cns` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Bairro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Bairro` (
  `idBairro` INT ZEROFILL NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `numHabitantes` INT NOT NULL,
  `numCasas` INT NOT NULL,
  `porcECA` INT(3) NOT NULL,
  `porET` INT(3) NOT NULL,
  `Distrito_Sanitario_idDS` INT NOT NULL,
  `Paciente_cpf` VARCHAR(15) NULL,
  PRIMARY KEY (`idBairro`),
  INDEX `fk_Bairro_Distrito_Sanitario1_idx` (`Distrito_Sanitario_idDS` ASC) VISIBLE,
  INDEX `fk_Bairro_Paciente1_idx` (`Paciente_cpf` ASC) VISIBLE,
  CONSTRAINT `fk_Bairro_Distrito_Sanitario1`
    FOREIGN KEY (`Distrito_Sanitario_idDS`)
    REFERENCES `mydb`.`Distrito_Sanitario` (`idDS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Bairro_Paciente1`
    FOREIGN KEY (`Paciente_cpf`)
    REFERENCES `mydb`.`Paciente` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ACS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ACS` (
  `idACS` INT ZEROFILL NOT NULL AUTO_INCREMENT,
  `matricula` VARCHAR(45) NOT NULL,
  `nome` VARCHAR(60) NOT NULL,
  `nomeSocial` VARCHAR(45) NULL,
  `cpf` VARCHAR(15) NOT NULL,
  `email` VARCHAR(60) NOT NULL,
  `dataNasc` DATE NOT NULL,
  `sexo` VARCHAR(1) NOT NULL,
  PRIMARY KEY (`idACS`),
  UNIQUE INDEX `matricula_UNIQUE` (`matricula` ASC) VISIBLE,
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `idACS_UNIQUE` (`idACS` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ACE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ACE` (
  `idACE` INT NOT NULL AUTO_INCREMENT,
  `matricula` VARCHAR(45) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `nomeSocial` VARCHAR(45) NULL,
  `cpf` INT(15) NOT NULL,
  `email` VARCHAR(60) NOT NULL,
  `dataNasc` DATE NOT NULL,
  `sexo` VARCHAR(1) NOT NULL,
  PRIMARY KEY (`idACE`),
  UNIQUE INDEX `idACE_UNIQUE` (`idACE` ASC) VISIBLE,
  UNIQUE INDEX `matricula_UNIQUE` (`matricula` ASC) VISIBLE,
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Esgoto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Esgoto` (
  `idEsgoto` INT NOT NULL AUTO_INCREMENT,
  `latitude` INT NOT NULL,
  `longitude` INT NOT NULL,
  `dataCirculacao` DATE NOT NULL,
  PRIMARY KEY (`idEsgoto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CID`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CID` (
  `nomeCid` VARCHAR(5) NOT NULL,
  `nomePopular` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`nomeCid`),
  UNIQUE INDEX `idCID_UNIQUE` (`nomeCid` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Internacoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Internacoes` (
  `idInternacoes` INT NOT NULL AUTO_INCREMENT,
  `cid` VARCHAR(5) NOT NULL,
  `sintomas` VARCHAR(100) NULL,
  `CID_nomeCid` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`idInternacoes`),
  INDEX `fk_Internacoes_CID1_idx` (`CID_nomeCid` ASC) VISIBLE,
  CONSTRAINT `fk_Internacoes_CID1`
    FOREIGN KEY (`CID_nomeCid`)
    REFERENCES `mydb`.`CID` (`nomeCid`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Hospital`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Hospital` (
  `idHospital` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `especializacao` VARCHAR(45) NOT NULL,
  `tipo` VARCHAR(20) NOT NULL,
  `qntdLeitos` INT NOT NULL,
  PRIMARY KEY (`idHospital`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Endereco` (
  `idEndereco` INT NOT NULL AUTO_INCREMENT,
  `uf` VARCHAR(2) NOT NULL,
  `cidade` VARCHAR(60) NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `rua` VARCHAR(45) NOT NULL,
  `numero` INT NOT NULL,
  `cep` INT(8) NOT NULL,
  `complemento` VARCHAR(45) NULL,
  `Hospital_idHospital` INT NULL,
  `Paciente_cpf` VARCHAR(15) NULL,
  PRIMARY KEY (`idEndereco`),
  INDEX `fk_Endereco_Hospital1_idx` (`Hospital_idHospital` ASC) VISIBLE,
  INDEX `fk_Endereco_Paciente1_idx` (`Paciente_cpf` ASC) VISIBLE,
  CONSTRAINT `fk_Endereco_Hospital1`
    FOREIGN KEY (`Hospital_idHospital`)
    REFERENCES `mydb`.`Hospital` (`idHospital`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Endereco_Paciente1`
    FOREIGN KEY (`Paciente_cpf`)
    REFERENCES `mydb`.`Paciente` (`cpf`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Telefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Telefone` (
  `idTelefone` INT NOT NULL AUTO_INCREMENT,
  `numero` VARCHAR(15) NOT NULL,
  `Paciente_cpf` VARCHAR(15) NULL,
  `Hospital_idHospital` INT NULL,
  PRIMARY KEY (`idTelefone`),
  UNIQUE INDEX `numero_UNIQUE` (`numero` ASC) VISIBLE,
  INDEX `fk_Telefone_Paciente1_idx` (`Paciente_cpf` ASC) VISIBLE,
  INDEX `fk_Telefone_Hospital1_idx` (`Hospital_idHospital` ASC) VISIBLE,
  CONSTRAINT `fk_Telefone_Paciente1`
    FOREIGN KEY (`Paciente_cpf`)
    REFERENCES `mydb`.`Paciente` (`cpf`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Telefone_Hospital1`
    FOREIGN KEY (`Hospital_idHospital`)
    REFERENCES `mydb`.`Hospital` (`idHospital`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Alta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Alta` (
  `idAlta` INT NOT NULL AUTO_INCREMENT,
  `dataAlta` DATE NOT NULL,
  `dataAdmissao` DATE NOT NULL,
  `Hospital_idHospital` INT NOT NULL,
  `Paciente_cpf` VARCHAR(15) NOT NULL,
  `Internacoes_idInternacoes` INT NULL,
  PRIMARY KEY (`idAlta`),
  INDEX `fk_Alta_Hospital1_idx` (`Hospital_idHospital` ASC) VISIBLE,
  INDEX `fk_Alta_Paciente1_idx` (`Paciente_cpf` ASC) VISIBLE,
  INDEX `fk_Alta_Internacoes1_idx` (`Internacoes_idInternacoes` ASC) VISIBLE,
  CONSTRAINT `fk_Alta_Hospital1`
    FOREIGN KEY (`Hospital_idHospital`)
    REFERENCES `mydb`.`Hospital` (`idHospital`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Alta_Paciente1`
    FOREIGN KEY (`Paciente_cpf`)
    REFERENCES `mydb`.`Paciente` (`cpf`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Alta_Internacoes1`
    FOREIGN KEY (`Internacoes_idInternacoes`)
    REFERENCES `mydb`.`Internacoes` (`idInternacoes`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Bairro_has_Esgoto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Bairro_has_Esgoto` (
  `Bairro_idBairro` INT ZEROFILL NOT NULL,
  `Esgoto_idEsgoto` INT NOT NULL,
  PRIMARY KEY (`Bairro_idBairro`, `Esgoto_idEsgoto`),
  INDEX `fk_Bairro_has_Esgoto_Esgoto1_idx` (`Esgoto_idEsgoto` ASC) VISIBLE,
  INDEX `fk_Bairro_has_Esgoto_Bairro1_idx` (`Bairro_idBairro` ASC) VISIBLE,
  CONSTRAINT `fk_Bairro_has_Esgoto_Bairro1`
    FOREIGN KEY (`Bairro_idBairro`)
    REFERENCES `mydb`.`Bairro` (`idBairro`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Bairro_has_Esgoto_Esgoto1`
    FOREIGN KEY (`Esgoto_idEsgoto`)
    REFERENCES `mydb`.`Esgoto` (`idEsgoto`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Bairro_has_ACS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Bairro_has_ACS` (
  `Bairro_idBairro` INT ZEROFILL NOT NULL,
  `ACS_idACS` INT ZEROFILL NOT NULL,
  PRIMARY KEY (`Bairro_idBairro`, `ACS_idACS`),
  INDEX `fk_Bairro_has_ACS_ACS1_idx` (`ACS_idACS` ASC) VISIBLE,
  INDEX `fk_Bairro_has_ACS_Bairro1_idx` (`Bairro_idBairro` ASC) VISIBLE,
  CONSTRAINT `fk_Bairro_has_ACS_Bairro1`
    FOREIGN KEY (`Bairro_idBairro`)
    REFERENCES `mydb`.`Bairro` (`idBairro`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Bairro_has_ACS_ACS1`
    FOREIGN KEY (`ACS_idACS`)
    REFERENCES `mydb`.`ACS` (`idACS`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Bairro_has_ACE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Bairro_has_ACE` (
  `Bairro_idBairro` INT ZEROFILL NOT NULL,
  `ACE_idACE` INT NOT NULL,
  PRIMARY KEY (`Bairro_idBairro`, `ACE_idACE`),
  INDEX `fk_Bairro_has_ACE_ACE1_idx` (`ACE_idACE` ASC) VISIBLE,
  INDEX `fk_Bairro_has_ACE_Bairro1_idx` (`Bairro_idBairro` ASC) VISIBLE,
  CONSTRAINT `fk_Bairro_has_ACE_Bairro1`
    FOREIGN KEY (`Bairro_idBairro`)
    REFERENCES `mydb`.`Bairro` (`idBairro`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Bairro_has_ACE_ACE1`
    FOREIGN KEY (`ACE_idACE`)
    REFERENCES `mydb`.`ACE` (`idACE`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Esgoto_has_CID`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Esgoto_has_CID` (
  `Esgoto_idEsgoto` INT NOT NULL,
  `CID_nomeCid` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`Esgoto_idEsgoto`, `CID_nomeCid`),
  INDEX `fk_Esgoto_has_CID_CID1_idx` (`CID_nomeCid` ASC) VISIBLE,
  INDEX `fk_Esgoto_has_CID_Esgoto1_idx` (`Esgoto_idEsgoto` ASC) VISIBLE,
  CONSTRAINT `fk_Esgoto_has_CID_Esgoto1`
    FOREIGN KEY (`Esgoto_idEsgoto`)
    REFERENCES `mydb`.`Esgoto` (`idEsgoto`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Esgoto_has_CID_CID1`
    FOREIGN KEY (`CID_nomeCid`)
    REFERENCES `mydb`.`CID` (`nomeCid`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;