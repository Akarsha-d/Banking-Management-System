
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bank
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `bank` ;

-- -----------------------------------------------------
-- Schema bank
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bank` DEFAULT CHARACTER SET utf8 ;
USE `bank` ;

-- -----------------------------------------------------
-- Table `bank`.`account_details`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bank`.`account_details` ;

CREATE TABLE IF NOT EXISTS `bank`.`account_details` (
  `account_id` INT NOT NULL,
  `account_number` INT NULL,
  `account_type` VARCHAR(30) NOT NULL,
  `account_balance` INT NOT NULL,
  `branch_id` INT NOT NULL,
  PRIMARY KEY (`account_id`),
  UNIQUE INDEX `account_number_UNIQUE` (`account_number` ASC) VISIBLE,
  INDEX `acc_branch_id_idx` (`branch_id` ASC) VISIBLE,
  CONSTRAINT `acc_branch_id`
    FOREIGN KEY (`branch_id`)
    REFERENCES `bank`.`branch` (`branch_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bank`.`address`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bank`.`address` ;

CREATE TABLE IF NOT EXISTS `bank`.`address` (
  `address_id` INT NOT NULL,
  `addressline_1` VARCHAR(50) NOT NULL,
  `addressline_2` VARCHAR(50) NOT NULL,
  `city` VARCHAR(20) NOT NULL,
  `state` VARCHAR(20) NOT NULL,
  `country` VARCHAR(20) NOT NULL,
  `zip_code` INT NOT NULL,
  PRIMARY KEY (`address_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bank`.`branch`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bank`.`branch` ;

CREATE TABLE IF NOT EXISTS `bank`.`branch` (
  `branch_id` INT NOT NULL,
  `name` VARCHAR(30) NOT NULL,
  `routing_id` INT NOT NULL,
  `swift_code` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`branch_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bank`.`branch_address`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bank`.`branch_address` ;

CREATE TABLE IF NOT EXISTS `bank`.`branch_address` (
  `branch_address_id` INT NOT NULL,
  `addressline_1` VARCHAR(50) NOT NULL,
  `addressline_2` VARCHAR(50) NOT NULL,
  `city` VARCHAR(20) NOT NULL,
  `state` VARCHAR(20) NOT NULL,
  `country` VARCHAR(20) NOT NULL,
  `zip_code` INT NOT NULL,
  `branch_id` INT NOT NULL,
  PRIMARY KEY (`branch_address_id`),
  INDEX `branch_address_branch_id_idx` (`branch_id` ASC) VISIBLE,
  CONSTRAINT `branch_address_branch_id`
    FOREIGN KEY (`branch_id`)
    REFERENCES `bank`.`branch` (`branch_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bank`.`card_services`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bank`.`card_services` ;

CREATE TABLE IF NOT EXISTS `bank`.`card_services` (
  `card_services_id` INT NOT NULL,
  `type` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`card_services_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bank`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bank`.`customer` ;

CREATE TABLE IF NOT EXISTS `bank`.`customer` (
  `cust_id` INT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` VARCHAR(30) NOT NULL,
  `password` VARCHAR(30) NOT NULL,
  `first_name` VARCHAR(20) NOT NULL,
  `last_name` VARCHAR(20) NOT NULL,
  `phone_number` INT NOT NULL,
  `email` VARCHAR(30) NULL,
  `address_id` INT NULL,
  `account_id` INT NULL,
  PRIMARY KEY (`cust_id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  INDEX `cust_address_id_idx` (`address_id` ASC) VISIBLE,
  INDEX `cust_acc_id_idx` (`account_id` ASC) VISIBLE,
  CONSTRAINT `cust_address_id`
    FOREIGN KEY (`address_id`)
    REFERENCES `bank`.`address` (`address_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `cust_acc_id`
    FOREIGN KEY (`account_id`)
    REFERENCES `bank`.`account_details` (`account_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `bank`.`customer_insurance_details`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bank`.`customer_insurance_details` ;

CREATE TABLE IF NOT EXISTS `bank`.`customer_insurance_details` (
  `insurance_id` INT NULL,
  `cust_id` INT NOT NULL,
  INDEX `cust_ins_cust_id_idx` (`cust_id` ASC) VISIBLE,
  INDEX `cust_ins_id_idx` (`insurance_id` ASC) VISIBLE,
  CONSTRAINT `cust_ins_cust_id`
    FOREIGN KEY (`cust_id`)
    REFERENCES `bank`.`customer` (`cust_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `cust_ins_id`
    FOREIGN KEY (`insurance_id`)
    REFERENCES `bank`.`insurance` (`insurance_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bank`.`customer_loan_details`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bank`.`customer_loan_details` ;

CREATE TABLE IF NOT EXISTS `bank`.`customer_loan_details` (
  `loan_id` INT NULL,
  `cust_id` INT NOT NULL,
  INDEX `cust_loan_cust_id_idx` (`cust_id` ASC) VISIBLE,
  INDEX `cust_loan_id_idx` (`loan_id` ASC) VISIBLE,
  CONSTRAINT `cust_loan_cust_id`
    FOREIGN KEY (`cust_id`)
    REFERENCES `bank`.`customer` (`cust_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `cust_loan_id`
    FOREIGN KEY (`loan_id`)
    REFERENCES `bank`.`loan` (`loan_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bank`.`designation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bank`.`designation` ;

CREATE TABLE IF NOT EXISTS `bank`.`designation` (
  `designation_id` INT NOT NULL,
  `name` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`designation_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bank`.`employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bank`.`employee` ;

CREATE TABLE IF NOT EXISTS `bank`.`employee` (
  `emp_id` INT NOT NULL,
  `username` VARCHAR(20) NOT NULL,
  `password` VARCHAR(20) NOT NULL,
  `email` VARCHAR(30) NOT NULL,
  `phone_number` INT NOT NULL,
  `first_name` VARCHAR(20) NOT NULL,
  `last_name` VARCHAR(20) NOT NULL,
  `designation_id` INT NOT NULL,
  `salary` INT NOT NULL,
  `date_joined` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address_id` INT NOT NULL,
  `account_id` INT NOT NULL,
  `branch_id` INT NOT NULL,
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  INDEX `designation_idx` (`designation_id` ASC) VISIBLE,
  INDEX `emp_address_id_idx` (`address_id` ASC) VISIBLE,
  INDEX `emp_acc_id_idx` (`account_id` ASC) VISIBLE,
  INDEX `emp_branch_id_idx` (`branch_id` ASC) VISIBLE,
  PRIMARY KEY (`emp_id`),
  CONSTRAINT `emp_designation`
    FOREIGN KEY (`designation_id`)
    REFERENCES `bank`.`designation` (`designation_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `emp_address_id`
    FOREIGN KEY (`address_id`)
    REFERENCES `bank`.`address` (`address_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `emp_acc_id`
    FOREIGN KEY (`account_id`)
    REFERENCES `bank`.`account_details` (`account_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `emp_branch_id`
    FOREIGN KEY (`branch_id`)
    REFERENCES `bank`.`branch` (`branch_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bank`.`employee_card_services`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bank`.`employee_card_services` ;

CREATE TABLE IF NOT EXISTS `bank`.`employee_card_services` (
  `card_service_id` INT NULL,
  `emp_id` INT NOT NULL,
  INDEX `emp_card_id_idx` (`card_service_id` ASC) VISIBLE,
  INDEX `emp_card_emp_id_idx` (`emp_id` ASC) VISIBLE,
  CONSTRAINT `emp_card_id`
    FOREIGN KEY (`card_service_id`)
    REFERENCES `bank`.`card_services` (`card_services_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `emp_card_emp_id`
    FOREIGN KEY (`emp_id`)
    REFERENCES `bank`.`employee` (`emp_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bank`.`employee_insurance_details`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bank`.`employee_insurance_details` ;

CREATE TABLE IF NOT EXISTS `bank`.`employee_insurance_details` (
  `insurance_id` INT NULL,
  `emp_id` INT NOT NULL,
  INDEX `emp_ins_id_idx` (`insurance_id` ASC) VISIBLE,
  INDEX `emp_ins_emp_id_idx` (`emp_id` ASC) VISIBLE,
  CONSTRAINT `emp_ins_id`
    FOREIGN KEY (`insurance_id`)
    REFERENCES `bank`.`insurance` (`insurance_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `emp_ins_emp_id`
    FOREIGN KEY (`emp_id`)
    REFERENCES `bank`.`employee` (`emp_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bank`.`employee_loan_detail`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bank`.`employee_loan_detail` ;

CREATE TABLE IF NOT EXISTS `bank`.`employee_loan_detail` (
  `loan_id` INT NULL,
  `emp_id` INT NOT NULL,
  INDEX `emp_loan_id_idx` (`loan_id` ASC) VISIBLE,
  INDEX `emp_loan_emp_id_idx` (`emp_id` ASC) VISIBLE,
  CONSTRAINT `emp_loan_id`
    FOREIGN KEY (`loan_id`)
    REFERENCES `bank`.`loan` (`loan_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `emp_loan_emp_id`
    FOREIGN KEY (`emp_id`)
    REFERENCES `bank`.`employee` (`emp_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bank`.`insurance`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bank`.`insurance` ;

CREATE TABLE IF NOT EXISTS `bank`.`insurance` (
  `insurance_id` INT NOT NULL,
  `coverage` DOUBLE NOT NULL,
  PRIMARY KEY (`insurance_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bank`.`loan`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bank`.`loan` ;

CREATE TABLE IF NOT EXISTS `bank`.`loan` (
  `loan_id` INT NOT NULL,
  `type` VARCHAR(20) NOT NULL,
  `amount` DOUBLE NOT NULL,
  `roi` DOUBLE NOT NULL,
  `duration` DOUBLE NOT NULL,
  PRIMARY KEY (`loan_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bank`.`transaction`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bank`.`transaction` ;

CREATE TABLE IF NOT EXISTS `bank`.`transaction` (
  `transaction_id` INT NOT NULL,
  `transaction_type` VARCHAR(30) NOT NULL,
  `amount` DOUBLE NOT NULL,
  `account_id` INT NOT NULL,
  `beneficiary_acc_num` INT NOT NULL,
  `transaction_timestamp` TIMESTAMP GENERATED ALWAYS AS () VIRTUAL,
  PRIMARY KEY (`transaction_id`),
  INDEX `trans_acc_id_idx` (`account_id` ASC) VISIBLE,
  CONSTRAINT `trans_acc_id`
    FOREIGN KEY (`account_id`)
    REFERENCES `bank`.`account_details` (`account_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
