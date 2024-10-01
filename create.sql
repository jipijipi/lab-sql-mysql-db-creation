CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

DROP TABLE IF EXISTS customers;

DROP TABLE IF EXISTS salespersons;

DROP TABLE IF EXISTS invoices;

CREATE TABLE cars (
  `vehicle_id` INT NOT NULL AUTO_INCREMENT,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` INT NULL,
  `color` VARCHAR(45) NULL,
  `vin` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`vehicle_id`)
);

CREATE TABLE customers (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `phone_number` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `postal_code` VARCHAR(45) NULL,
  `internal_customer_id` VARCHAR(45) NULL,
  PRIMARY KEY (`customer_id`)
);

CREATE TABLE salespersons (
  `staff_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  `internal_staff_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`staff_id`)
);

CREATE TABLE invoices (
  `invoice_id` INT NOT NULL AUTO_INCREMENT,
  `date` DATETIME NOT NULL,
  `cars_vehicle_id` INT NOT NULL,
  `customers_customer_id` INT NOT NULL,
  `salespersons_staff_id` INT NOT NULL,
  PRIMARY KEY (`invoice_id`)
);