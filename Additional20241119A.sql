ALTER TABLE `showroom`.`event` 
ADD COLUMN `thinit` INT NULL DEFAULT 50 AFTER `maxpoint`,
ADD COLUMN `thdelta` INT NULL DEFAULT 5 AFTER `thinit`;

ALTER TABLE `showroom`.`wevent`
ADD COLUMN `thinit` INT NULL DEFAULT 50 AFTER `maxpoint`,
ADD COLUMN `thdelta` INT NULL DEFAULT 5 AFTER `thinit`;

ALTER TABLE `showroom`.`eventuser`
ADD COLUMN `status` INT NULL DEFAULT 0 AFTER `vld`;
