ALTER TABLE `showroom`.`event` 
     ADD COLUMN `cmode` INT NULL DEFAULT 0 AFTER `aclr`;
ALTER TABLE `showroom`.`wevent` 
     ADD COLUMN `cmode` INT NULL DEFAULT 0 AFTER `aclr`;
ALTER TABLE `showroom`.`tevent` 
     ADD COLUMN `cmode` INT NULL DEFAULT 0 AFTER `aclr`;
