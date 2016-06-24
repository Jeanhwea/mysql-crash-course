-- 第3章 使用MySQL

-- change Database
USE database_name;

-- get information
SHOW DATABASES;
SHOW TABLES;
SHOW COLUMNS FROM table_name;

DESCRIBE COLUMNS; -- mysql only
SHOW STATUS;
SHOW CREATE TABLE price;
SHOW GRANTS;
SHOW ERRORS;
SHOW WARNINGS;

-- create table
CREATE TABLE `price` (
  `idprice` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `open` float NOT NULL,
  `high` float NOT NULL,
  `low` float NOT NULL,
  `close` float NOT NULL,
  PRIMARY KEY (`idprice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `event` (
  `idevent` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `scope_id` int(11) NOT NULL,
  `event_type_id` int(11) NOT NULL,
  `sentiment` float NOT NULL,
  `volume` int(11) NOT NULL,
  PRIMARY KEY (`idevent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

