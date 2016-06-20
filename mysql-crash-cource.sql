-- vim: set ts=2 sts=2 sw=2 ft=mysql:
USE gold;

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



SELECT `idprice`, `date`, `open`, `high`, `low`, `close`
  FROM gold.price
  LIMIT 5;

SELECT `idprice`, `date`, `open`, `high`, `low`, `close`
  FROM gold.price
  LIMIT 3, 5;

SELECT DISTINCT `scope_id`
  FROM gold.event;

SELECT DISTINCT `scope_id`, `event_type_id`
  FROM gold.event;
