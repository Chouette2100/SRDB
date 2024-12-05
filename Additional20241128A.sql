ALTER TABLE `showroom`.`wuser` 
ADD COLUMN `fanpower` INT NULL DEFAULT '-1' AFTER `fans`,
ADD COLUMN `fanpower_lst` INT NULL DEFAULT '-1' AFTER `fans_lst`;
