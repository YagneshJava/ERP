CREATE TABLE `customer_info_tab` (
  `customer_id` VARCHAR(45) NOT NULL,
  `customer_name` VARCHAR(200) NULL,
  `gst` VARCHAR(45) NULL,
  `pan` VARCHAR(45) NULL,
  `mobile_number` INT NULL,
  `email` VARCHAR(100) NULL,
  `created_date` DATETIME NULL DEFAULT now(),
  `created_by` VARCHAR(45) NULL,
  `last_updated_date` DATETIME NULL,
  `updated_by` VARCHAR(45) NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE);


CREATE TABLE `customer_address_tab` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `customer_id` VARCHAR(45) NULL,
  `address1` VARCHAR(100) NULL,
  `address2` VARCHAR(100) NULL,
  `post_code` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `created_date` DATETIME NULL DEFAULT now(),
  `created_by` VARCHAR(45) NULL,
  `last_updated_date` DATETIME NULL DEFAULT now(),
  `last_updated_by` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE);
  
  
  CREATE TABLE `erp-db`.`customer_bank_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `customer_id` VARCHAR(45) NULL,
  `bank_name` VARCHAR(100) NULL,
  `account_number` VARCHAR(45) NULL,
  `ifsc` VARCHAR(45) NULL,
  `branch` VARCHAR(45) NULL,
  `created_date` DATETIME NULL DEFAULT now(),
  `created_by` VARCHAR(45) NULL,
  `last_updated_date` DATETIME NULL DEFAULT now(),
  `last_updated_by` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE);
  
  CREATE TABLE `item_tab` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(200) COLLATE latin1_bin DEFAULT NULL,
  `part_number` varchar(45) COLLATE latin1_bin DEFAULT NULL,
  `hsn` varchar(45) COLLATE latin1_bin DEFAULT NULL,
  `gst` varchar(20) COLLATE latin1_bin DEFAULT NULL,
  `unit` varchar(45) COLLATE latin1_bin DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(45) COLLATE latin1_bin DEFAULT NULL,
  `last_updated` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` varchar(45) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
);

