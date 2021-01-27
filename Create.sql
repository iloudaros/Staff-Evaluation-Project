CREATE TABLE `user` (
  `username` varchar(12) PRIMARY KEY,
  `password` varchar(10),
  `name` varchar(25),
  `surname` varchar(35),
  `reg_date` datetime,
  `email` varchar(30)
);

CREATE TABLE `employee` (
  `username` varchar(12) PRIMARY KEY,
  `firm` char(9),
  `bio` text,
  `sistatikes` varchar(35),
  `certificates` varchar(35),
  `awards` varchar(35),
  `exp_years` tinyint(4)
);

CREATE TABLE `manager` (
  `managerUsername` varchar(12) PRIMARY KEY,
  `exp_years` tinyint(4) NOT NULL,
  `firm` char(9)
);

CREATE TABLE `evaluator` (
  `username` varchar(12) PRIMARY KEY,
  `exp_years` tinyint(4),
  `firm` char(9)
);

CREATE TABLE `company` (
  `AFM` char(9) PRIMARY KEY,
  `DOY` varchar(15),
  `name` varchar(35),
  `phone` bigint(16),
  `street` varchar(15),
  `num` tinyint(4),
  `city` varchar(15),
  `country` varchar(15)
);

CREATE TABLE `antikeimeno` (
  `title` varchar(36) PRIMARY KEY,
  `descr` tinytext,
  `belongs_to` varchar(36)
);

CREATE TABLE `needs` (
  `j_id` int(4) AUTO_INCREMENT,
  `a_title` varchar(36) UNIQUE,
  PRIMARY KEY (`j_id`, `a_title`)
);

CREATE TABLE `project` (
  `empl` varchar(12),
  `num` tinyint(4) UNIQUE AUTO_INCREMENT,
  `descr` text,
  `url` varchar(60),
  PRIMARY KEY (`empl`, `num`)
);

CREATE TABLE `languages` (
  `employee` varchar(12),
  `lang` SET('EN','FR','SP','GR'),
  PRIMARY KEY (`employee`, `lang`)
);

CREATE TABLE `requestevaluation` (
  `empl_usrname` varchar(12),
  `job_id` int(4),
  PRIMARY KEY (`empl_usrname`, `job_id`)
);

CREATE TABLE `job` (
  `id` int(4) PRIMARY KEY AUTO_INCREMENT,
  `start_date` date,
  `salary` float(6,1),
  `position` varchar(40),
  `edra` varchar(45),
  `evaluator` varchar(12),
  `announce_date` datetime DEFAULT NOW(),
  `submission_date` date
);

CREATE TABLE `degree` (
  `titlos` varchar(50),
  `idryma` varchar(40),
  `bathmida` ENUM ('LYKEIO', 'UNIV', 'MASTER', 'PHD'),
  PRIMARY KEY (`titlos`, `idryma`)
);

CREATE TABLE `has_degree` (
  `degr_title` varchar(50),
  `degr_idryma` varchar(40),
  `empl_usrname` varchar(12),
  `etos` year(4),
  `grade` float(3,1),
  PRIMARY KEY (`degr_title`, `degr_idryma`, `empl_usrname`)
);

CREATE TABLE `applied_for` (
  `candidate` varchar(12),
  `job_application` int(4)
);

CREATE TABLE `evaluation` (
  `empl_usrname` varchar(12),
  `phase` tinyint,
  `grade` tinyint,
  `ev_username` varchar(12),
  PRIMARY KEY (`empl_usrname`, `phase`)
);

CREATE TABLE `evaluationresult` (
  `EvID` varchar(12),
  `empl_usrname` varchar(12),
  `job_id` int(4),
  `grade` int(4),
  `comments` varchar(255),
  PRIMARY KEY (`EvID`, `empl_usrname`)
);

CREATE TABLE `log` (
  `user` varchar(12),
  `timestamp` datetime DEFAULT NOW(),
  `act` ENUM ('insert', 'update', 'delete'),
  `table_changed` ENUM ('job', 'employee', 'requestevaluation'),
  `succesful` boolean
);

ALTER TABLE `employee` ADD FOREIGN KEY (`username`) REFERENCES `user` (`username`);

ALTER TABLE `employee` ADD FOREIGN KEY (`firm`) REFERENCES `company` (`AFM`);

ALTER TABLE `manager` ADD FOREIGN KEY (`managerUsername`) REFERENCES `user` (`username`);

ALTER TABLE `manager` ADD FOREIGN KEY (`firm`) REFERENCES `company` (`AFM`);

ALTER TABLE `evaluator` ADD FOREIGN KEY (`username`) REFERENCES `user` (`username`);

ALTER TABLE `evaluator` ADD FOREIGN KEY (`firm`) REFERENCES `company` (`AFM`);

ALTER TABLE `antikeimeno` ADD FOREIGN KEY (`belongs_to`) REFERENCES `antikeimeno` (`title`);

ALTER TABLE `needs` ADD FOREIGN KEY (`j_id`) REFERENCES `job` (`id`);

ALTER TABLE `needs` ADD FOREIGN KEY (`a_title`) REFERENCES `antikeimeno` (`title`);

ALTER TABLE `project` ADD FOREIGN KEY (`empl`) REFERENCES `employee` (`username`);

ALTER TABLE `languages` ADD FOREIGN KEY (`employee`) REFERENCES `employee` (`username`);

ALTER TABLE `requestevaluation` ADD FOREIGN KEY (`empl_usrname`) REFERENCES `employee` (`username`);

ALTER TABLE `requestevaluation` ADD FOREIGN KEY (`job_id`) REFERENCES `job` (`id`);

ALTER TABLE `job` ADD FOREIGN KEY (`evaluator`) REFERENCES `evaluator` (`username`);

ALTER TABLE `has_degree` ADD FOREIGN KEY (`degr_title`) REFERENCES `degree` (`titlos`);

ALTER TABLE `has_degree` ADD FOREIGN KEY (`degr_idryma`) REFERENCES `degree` (`idryma`);

ALTER TABLE `has_degree` ADD FOREIGN KEY (`empl_usrname`) REFERENCES `employee` (`username`);

ALTER TABLE `applied_for` ADD FOREIGN KEY (`candidate`) REFERENCES `employee` (`username`);

ALTER TABLE `applied_for` ADD FOREIGN KEY (`job_application`) REFERENCES `job` (`id`);

ALTER TABLE `evaluation` ADD FOREIGN KEY (`empl_usrname`) REFERENCES `employee` (`username`);

ALTER TABLE `evaluation` ADD FOREIGN KEY (`ev_username`) REFERENCES `evaluator` (`username`);

ALTER TABLE `evaluationresult` ADD FOREIGN KEY (`EvID`) REFERENCES `evaluator` (`username`);

ALTER TABLE `evaluationresult` ADD FOREIGN KEY (`empl_usrname`) REFERENCES `employee` (`username`);

ALTER TABLE `evaluationresult` ADD FOREIGN KEY (`job_id`) REFERENCES `job` (`id`);

ALTER TABLE `log` ADD FOREIGN KEY (`user`) REFERENCES `user` (`username`);

