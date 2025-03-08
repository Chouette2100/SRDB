ALTER TABLE `showroom`.`weventuser` 
ADD COLUMN `status` INT NULL DEFAULT 0 AFTER `vld`;

ALTER TABLE `showroom`.`eventuser` 
CHANGE COLUMN `istarget` `istarget` CHAR(1) NULL DEFAULT 'N' ,
CHANGE COLUMN `graph` `graph` CHAR(1) NULL DEFAULT 'N' ,
CHANGE COLUMN `color` `color` CHAR(20) NULL DEFAULT 'red' ,
CHANGE COLUMN `vld` `vld` INT NULL DEFAULT '1' ;

ALTER TABLE `showroom`.`weventuser` 
CHANGE COLUMN `istarget` `istarget` CHAR(1) NULL DEFAULT 'N' ,
CHANGE COLUMN `graph` `graph` CHAR(1) NULL DEFAULT 'N' ,
CHANGE COLUMN `color` `color` CHAR(20) NULL DEFAULT 'red' ,
CHANGE COLUMN `vld` `vld` INT NULL DEFAULT '1' ;