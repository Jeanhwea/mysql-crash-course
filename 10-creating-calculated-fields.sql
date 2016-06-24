-- 第10章 创建计算字段

SELECT * FROM vendors;
-- +---------+----------------+-----------------+-------------+------------+----------+--------------+
-- | vend_id | vend_name      | vend_address    | vend_city   | vend_state | vend_zip | vend_country |
-- +---------+----------------+-----------------+-------------+------------+----------+--------------+
-- |    1001 | Anvils R Us    | 123 Main Street | Southfield  | MI         | 48075    | USA          |
-- |    1002 | LT Supplies    | 500 Park Street | Anytown     | OH         | 44333    | USA          |
-- |    1003 | ACME           | 555 High Street | Los Angeles | CA         | 90046    | USA          |
-- |    1004 | Furball Inc.   | 1000 5th Avenue | New York    | NY         | 11111    | USA          |
-- |    1005 | Jet Set        | 42 Galaxy Road  | London      | NULL       | N16 6PS  | England      |
-- |    1006 | Jouets Et Ours | 1 Rue Amusement | Paris       | NULL       | 45678    | France       |
-- +---------+----------------+-----------------+-------------+------------+----------+--------------+

-- concatenate fields
SELECT Concat(vend_name, '(', vend_country ,')')
  FROM vendors
  ORDER BY vend_name;
-- +-------------------------------------------+
-- | Concat(vend_name, '(', vend_country ,')') |
-- +-------------------------------------------+
-- | ACME(USA)                                 |
-- | Anvils R Us(USA)                          |
-- | Furball Inc.(USA)                         |
-- | Jet Set(England)                          |
-- | Jouets Et Ours(France)                    |
-- | LT Supplies(USA)                          |
-- +-------------------------------------------+

-- alias
SELECT Concat(RTrim(vend_name), ' (', Trim(vend_country) ,')')
  AS vend_title
  FROM vendors
  ORDER BY vend_name;
-- +-------------------------+
-- | vend_title              |
-- +-------------------------+
-- | ACME (USA)              |
-- | Anvils R Us (USA)       |
-- | Furball Inc. (USA)      |
-- | Jet Set (England)       |
-- | Jouets Et Ours (France) |
-- | LT Supplies (USA)       |
-- +-------------------------+

SELECT * FROM orderitems;
-- +-----------+------------+---------+----------+------------+
-- | order_num | order_item | prod_id | quantity | item_price |
-- +-----------+------------+---------+----------+------------+
-- |     20005 |          1 | ANV01   |       10 |       5.99 |
-- |     20005 |          2 | ANV02   |        3 |       9.99 |
-- |     20005 |          3 | TNT2    |        5 |      10.00 |
-- |     20005 |          4 | FB      |        1 |      10.00 |
-- |     20006 |          1 | JP2000  |        1 |      55.00 |
-- |     20007 |          1 | TNT2    |      100 |      10.00 |
-- |     20008 |          1 | FC      |       50 |       2.50 |
-- |     20009 |          1 | FB      |        1 |      10.00 |
-- |     20009 |          2 | OL1     |        1 |       8.99 |
-- |     20009 |          3 | SLING   |        1 |       4.49 |
-- |     20009 |          4 | ANV03   |        1 |      14.99 |
-- +-----------+------------+---------+----------+------------+

-- calculation
SELECT prod_id,
       quantity,
       item_price,
       quantity*item_price AS expanded_price
  FROM orderitems
  WHERE order_num = 20005;
-- +---------+----------+------------+----------------+
-- | prod_id | quantity | item_price | expanded_price |
-- +---------+----------+------------+----------------+
-- | ANV01   |       10 |       5.99 |          59.90 |
-- | ANV02   |        3 |       9.99 |          29.97 |
-- | TNT2    |        5 |      10.00 |          50.00 |
-- | FB      |        1 |      10.00 |          10.00 |
-- +---------+----------+------------+----------------+

-- more topics on SELECT
SELECT 3*2;
-- +-----+
-- | 3*2 |
-- +-----+
-- |   6 |
-- +-----+
SELECT Trim(' a b cc ');
-- +------------------+
-- | Trim(' a b cc ') |
-- +------------------+
-- | a b cc           |
-- +------------------+
SELECT Now();
-- +---------------------+
-- | Now()               |
-- +---------------------+
-- | 2016-06-21 13:59:35 |
-- +---------------------+
