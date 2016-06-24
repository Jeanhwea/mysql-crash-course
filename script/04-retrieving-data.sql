-- 第4章 检索数据

-- select data with limit
SELECT `idprice`, `date`, `open`, `high`, `low`, `close`
  FROM gold.price
  LIMIT 5;

-- select data with limit and offset
SELECT `idprice`, `date`, `open`, `high`, `low`, `close`
  FROM gold.price
  LIMIT 3, 5;

-- distinct selection
SELECT DISTINCT `scope_id`
  FROM gold.event;

-- multiple distinct selection
SELECT DISTINCT `scope_id`, `event_type_id`
  FROM gold.event;
