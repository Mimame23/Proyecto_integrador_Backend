-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Pattsberry
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Pattsberry
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Pattsberry` DEFAULT CHARACTER SET utf8 ;
USE `Pattsberry` ;

-- -----------------------------------------------------
-- Table `Pattsberry`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pattsberry`.`usuarios` (
  `idusuarios` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(100) NOT NULL,
  `Contraseña` VARCHAR(45) NOT NULL,
  `Correo` VARCHAR(100) NOT NULL,
  `Telefono` VARCHAR(45) NOT NULL,
  `Administrador` TINYINT NOT NULL,
  PRIMARY KEY (`idusuarios`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pattsberry`.`Pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pattsberry`.`Pedidos` (
  `IdPedido` INT NOT NULL AUTO_INCREMENT,
  `cantidad` INT NOT NULL,
  `total` FLOAT NOT NULL,
  `usuarios_idusuarios` INT NOT NULL,
  PRIMARY KEY (`IdPedido`, `usuarios_idusuarios`),
  INDEX `fk_Pedidos_usuarios1_idx` (`usuarios_idusuarios` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pattsberry`.`DatosDeEntrega`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pattsberry`.`DatosDeEntrega` (
  `noOrden` INT NOT NULL AUTO_INCREMENT,
  `calle` VARCHAR(100) NOT NULL,
  `colonial` VARCHAR(100) NOT NULL,
  `municipio` VARCHAR(100) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  `codigoPostal` INT NOT NULL,
  `usuarios_idusuarios` INT NOT NULL,
  PRIMARY KEY (`noOrden`, `usuarios_idusuarios`),
  INDEX `fk_DatosDeEntrega_usuarios_idx` (`usuarios_idusuarios` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pattsberry`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pattsberry`.`productos` (
  `idproductos` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(100) NOT NULL,
  `Descripcion` VARCHAR(200) NOT NULL,
  `Imagen` VARCHAR(100) NOT NULL,
  `Precio` FLOAT NOT NULL,
  `Tamaño` VARCHAR(45) NOT NULL,
  `SKU` VARCHAR(45) NOT NULL,
  `Pedidos_IdPedido` INT NOT NULL,
  `Pedidos_usuarios_idusuarios` INT NOT NULL,
  PRIMARY KEY (`idproductos`, `Pedidos_IdPedido`, `Pedidos_usuarios_idusuarios`),
  INDEX `fk_productos_Pedidos1_idx` (`Pedidos_IdPedido` ASC, `Pedidos_usuarios_idusuarios` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
