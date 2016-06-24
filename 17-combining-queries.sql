-- 第17章 组合查询

-- use UNION
SELECT vend_id, prod_id, prod_price
  FROM products
  WHERE prod_price <= 5;
-- +---------+---------+------------+
-- | vend_id | prod_id | prod_price |
-- +---------+---------+------------+
-- |    1003 | FC      |       2.50 |
-- |    1002 | FU1     |       3.42 |
-- |    1003 | SLING   |       4.49 |
-- |    1003 | TNT1    |       2.50 |
-- +---------+---------+------------+

SELECT vend_id, prod_id, prod_price
  FROM products
  WHERE vend_id IN (1001, 1002);
-- +---------+---------+------------+
-- | vend_id | prod_id | prod_price |
-- +---------+---------+------------+
-- |    1001 | ANV01   |       5.99 |
-- |    1001 | ANV02   |       9.99 |
-- |    1001 | ANV03   |      14.99 |
-- |    1002 | FU1     |       3.42 |
-- |    1002 | OL1     |       8.99 |
-- +---------+---------+------------+

SELECT vend_id, prod_id, prod_price
  FROM products
  WHERE prod_price <= 5
UNION
SELECT vend_id, prod_id, prod_price
  FROM products
  WHERE vend_id IN (1001, 1002);
-- +---------+---------+------------+
-- | vend_id | prod_id | prod_price |
-- +---------+---------+------------+
-- |    1003 | FC      |       2.50 |
-- |    1002 | FU1     |       3.42 |
-- |    1003 | SLING   |       4.49 |
-- |    1003 | TNT1    |       2.50 |
-- |    1001 | ANV01   |       5.99 |
-- |    1001 | ANV02   |       9.99 |
-- |    1001 | ANV03   |      14.99 |
-- |    1002 | OL1     |       8.99 |
-- +---------+---------+------------+
SELECT vend_id, prod_id, prod_price
  FROM products
  WHERE prod_price <= 5
     OR vend_id IN (1001, 1002);

-- use UNION ALL
SELECT vend_id, prod_id, prod_price
  FROM products
  WHERE prod_price <= 5
UNION ALL
SELECT vend_id, prod_id, prod_price
  FROM products
  WHERE vend_id IN (1001, 1002);
-- +---------+---------+------------+
-- | vend_id | prod_id | prod_price |
-- +---------+---------+------------+
-- |    1003 | FC      |       2.50 |
-- |    1002 | FU1     |       3.42 |
-- |    1003 | SLING   |       4.49 |
-- |    1003 | TNT1    |       2.50 |
-- |    1001 | ANV01   |       5.99 |
-- |    1001 | ANV02   |       9.99 |
-- |    1001 | ANV03   |      14.99 |
-- |    1002 | FU1     |       3.42 |
-- |    1002 | OL1     |       8.99 |
-- +---------+---------+------------+

-- sort UNION result
SELECT vend_id, prod_id, prod_price
  FROM products
  WHERE prod_price <= 5
UNION
SELECT vend_id, prod_id, prod_price
  FROM products
  WHERE vend_id IN (1001, 1002)
ORDER BY vend_id, prod_id;
-- +---------+---------+------------+
-- | vend_id | prod_id | prod_price |
-- +---------+---------+------------+
-- |    1001 | ANV01   |       5.99 |
-- |    1001 | ANV02   |       9.99 |
-- |    1001 | ANV03   |      14.99 |
-- |    1002 | FU1     |       3.42 |
-- |    1002 | OL1     |       8.99 |
-- |    1003 | FC      |       2.50 |
-- |    1003 | SLING   |       4.49 |
-- |    1003 | TNT1    |       2.50 |
-- +---------+---------+------------+
