CREATE TABLE `showroom`.`contribution` (
  `ieventid` INT NOT NULL,
  `roomid` INT NOT NULL,
  `viewerid` INT NOT NULL,
  `irank` INT NOT NULL,
  `point` INT NOT NULL,
  PRIMARY KEY (`ieventid`, `roomid`, `irank`),
  INDEX `idx_viewid` (`viewerid` ASC) VISIBLE,
  INDEX `idx_point` (`point` ASC) VISIBLE);
