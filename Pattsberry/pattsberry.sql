-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema pattsberry
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema pattsberry
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pattsberry` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `pattsberry` ;

-- -----------------------------------------------------
-- Table `pattsberry`.`datos_entrega`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pattsberry`.`datos_entrega` (
  `no_orden` BIGINT NOT NULL AUTO_INCREMENT,
  `calle` VARCHAR(255) NOT NULL,
  `codigopostal` INT NOT NULL,
  `colonia` VARCHAR(255) NOT NULL,
  `estado` VARCHAR(255) NOT NULL,
  `municipio` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`no_orden`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pattsberry`.`detallepedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pattsberry`.`detallepedido` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `cantidad` INT NOT NULL,
  `precio` DOUBLE NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pattsberry`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pattsberry`.`pedido` (
  `idpedido` BIGINT NOT NULL AUTO_INCREMENT,
  `fecha` VARCHAR(255) NOT NULL,
  `total` DOUBLE NOT NULL,
  PRIMARY KEY (`idpedido`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pattsberry`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pattsberry`.`productos` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(255) NOT NULL,
  `imagen` VARCHAR(255) NOT NULL,
  `nombre` VARCHAR(255) NOT NULL,
  `sku` VARCHAR(255) NOT NULL,
  `tamano` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pattsberry`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pattsberry`.`usuarios` (
  `idusuarios` BIGINT NOT NULL AUTO_INCREMENT,
  `administrador` BIT(1) NOT NULL,
  `contrasena` VARCHAR(255) NOT NULL,
  `correo` VARCHAR(255) NOT NULL,
  `nombre` VARCHAR(255) NOT NULL,
  `telefono` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idusuarios`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
