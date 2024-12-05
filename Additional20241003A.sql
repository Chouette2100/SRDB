ALTER TABLE `showroom`.`giftranking` 
ADD COLUMN `cntrblst` INT NOT NULL DEFAULT 0 AFTER `norder`;

CREATE TABLE `showroom`.`giftscorecntrb` (
  `giftid` INT NOT NULL,
  `userno` INT NOT NULL,
  `viewerid` INT NOT NULL,
  `orderno` INT NOT NULL,
  `score` INT NOT NULL,
  `ts` DATETIME NOT NULL,
  PRIMARY KEY (`giftid`, `ts`, `userno`, `viewerid`));
