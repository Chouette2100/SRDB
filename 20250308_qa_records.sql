/*
CREATE TABLE qa_records (
id INT AUTO_INCREMENT PRIMARY KEY,
timestamp DATETIME NOT NULL,
responsetime INT NOT NULL,
model_name VARCHAR(255) NOT NULL,
question TEXT NOT NULL,
maxtokens INT NOT NULL,
temperature FLOAT NOT NULL,
answer TEXT NOT NULL
);

ALTER TABLE `showroom`.`qa_records` 
ADD COLUMN `system` VARCHAR(2048) NOT NULL AFTER `temperature`,
ADD COLUMN `itokens` INT NOT NULL AFTER `answer`,
ADD COLUMN `otokens` INT NOT NULL AFTER `itokens`,
ADD COLUMN `stopreason` VARCHAR(256) NOT NULL AFTER `otokens`,
CHANGE COLUMN `question` `question` TEXT NOT NULL AFTER `system`,
CHANGE COLUMN `modelname` `modelname` VARCHAR(255) NOT NULL ;

ALTER TABLE showroom.qa_records ADD FULLTEXT(question, answer);
*/


CREATE TABLE `qa_records` (
     	`id` int NOT NULL AUTO_INCREMENT,
     	`timestamp` datetime NOT NULL,
     	`responsetime` int NOT NULL,
     	`modelname` varchar(255) NOT NULL,
     	`maxtokens` int NOT NULL,
     	`temperature` float NOT NULL,
     	`system` varchar(2048) NOT NULL,
     	`question` text NOT NULL,
	`answer` text NOT NULL,
      	`itokens` int NOT NULL,
      	`otokens` int NOT NULL,
      	`stopreason` varchar(256) NOT NULL,
	PRIMARY KEY (`id`),
	FULLTEXT INDEX ft_question_answer(question, answer)
) ENGINE=Mroonga DEFAULT CHARSET=utf8mb4;
