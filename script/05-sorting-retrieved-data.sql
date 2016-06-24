-- 第5章 排序检索数据

-- sort seleted data
SELECT `date`, `open`, `close`
  FROM gold.price
  ORDER BY `open`
  LIMIT 10;

-- multi-sort seleted data
SELECT `date`, `volume`, `sentiment`
  FROM gold.event
  ORDER BY `date`, `volume` DESC
  LIMIT 10;

-- sort seleted data
SELECT `date`, `open`, `close`
  FROM gold.price
  ORDER BY `open` DESC
  LIMIT 10;

