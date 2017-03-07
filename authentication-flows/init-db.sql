CREATE TABLE `auth-flows`.`policy` (
  `POLICY_ID` int(10) unsigned NOT NULL,
  `PASSWORD_MIN_LENGTH` int(11) DEFAULT NULL,
  `PASSWORD_MAX_LENGTH` int(11) DEFAULT NULL,
  `PASSWORD_MIN_UPCASE_CHARS` int(11) DEFAULT NULL,
  `PASSWORD_MIN_LOCASE_CHARS` int(11) DEFAULT NULL,
  `PASSWORD_MIN_NUMERALS` int(11) DEFAULT NULL,
  `PASSWORD_MIN_SPECIAL_SYMBOLS` int(11) DEFAULT NULL,
  `PASSWORD_BLACKLIST` longtext,
  `MAX_PASSWORD_ENTRY_ATTEMPTS` int(11) DEFAULT NULL,
  `PASSWORD_LIFE_IN_DAYS` int(11) DEFAULT NULL,
  `REMEMBER_ME_VALIDITY_IN_DAYS` int(11) DEFAULT NULL,
  PRIMARY KEY (`POLICY_ID`)
);

CREATE  TABLE `auth-flows`.`users` (
  `USERNAME` VARCHAR(50) NOT NULL ,
  `PASSWORD` VARCHAR(100) NOT NULL ,
  `ENABLED` TINYINT(1)  NOT NULL DEFAULT 1 ,
  `LOGIN_ATTEMPTS_COUNTER` INT NOT NULL DEFAULT 0,
  `LAST_PSWD_CHANGE_DATE` DATETIME NOT NULL, 
  `FIRSTNAME` VARCHAR(30) ,
  `LASTNAME` VARCHAR(30) ,
  `AUTHORITIES` VARCHAR(100) NOT NULL ,
  PRIMARY KEY (`USERNAME`) ,
  UNIQUE INDEX `idusers_UNIQUE` (`USERNAME` ASC) 
);
  
CREATE TABLE `auth-flows`.`links` (
  `LINK` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`LINK`)
);

insert into `auth-flows`.`policy` (
 `POLICY_ID`,
  `PASSWORD_MIN_LENGTH`,
  `PASSWORD_MAX_LENGTH`,
  `PASSWORD_MIN_UPCASE_CHARS`,
  `PASSWORD_MIN_LOCASE_CHARS`,
  `PASSWORD_MIN_NUMERALS`,
  `PASSWORD_MIN_SPECIAL_SYMBOLS`,
  `PASSWORD_BLACKLIST`,
  `MAX_PASSWORD_ENTRY_ATTEMPTS`,
  `PASSWORD_LIFE_IN_DAYS`,
  `REMEMBER_ME_VALIDITY_IN_DAYS` ) 
  VALUES (1, 4, 10, 0, 0, 0, 0, "", 5, 30, 30);