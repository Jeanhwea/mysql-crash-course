-- 第7章 数据过滤

-- AND operator
SELECT `date`, `open`, `close`
  FROM gold.price
  WHERE open > 1300 AND open < 1310;

-- OR operator
SELECT `date`, `open`, `close`
  FROM gold.price
  WHERE `date` = '2015-12-11' OR `date` = '2015-12-23';

-- IN operator
SELECT `date`, `open`, `close`
  FROM gold.price
  WHERE `date` IN ('2015-11-11', '2015-12-11', '2015-12-23');

-- NOT operator
SELECT COUNT(`date`)
  FROM gold.price
  WHERE `date` NOT IN ('2015-11-11', '2015-12-11', '2015-12-23');
