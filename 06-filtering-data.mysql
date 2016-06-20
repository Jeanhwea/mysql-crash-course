-- 第6章 过滤数据

-- filter data, using WHERE
SELECT `date`, `sentiment`, `volume`
  FROM gold.event
  WHERE `date` = "2014-06-11"
  LIMIT 10;

-- using BETWEEN
SELECT `date`, `sentiment`, `volume`
  FROM gold.event
  WHERE volume BETWEEN 10 AND 20
  LIMIT 10;

-- check NULL
SELECT `date`
  FROM gold.event
  WHERE volume IS NULL;

