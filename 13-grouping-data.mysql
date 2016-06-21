-- 第13章 分组数据

SELECT * FROM products;
-- +---------+---------+----------------+------------+----------------------------------------------------------------+
-- | prod_id | vend_id | prod_name      | prod_price | prod_desc                                                      |
-- +---------+---------+----------------+------------+----------------------------------------------------------------+
-- | ANV01   |    1001 | .5 ton anvil   |       5.99 | .5 ton anvil, black, complete with handy hook                  |
-- | ANV02   |    1001 | 1 ton anvil    |       9.99 | 1 ton anvil, black, complete with handy hook and carrying case |
-- | ANV03   |    1001 | 2 ton anvil    |      14.99 | 2 ton anvil, black, complete with handy hook and carrying case |
-- | DTNTR   |    1003 | Detonator      |      13.00 | Detonator (plunger powered), fuses not included                |
-- | FB      |    1003 | Bird seed      |      10.00 | Large bag (suitable for road runners)                          |
-- | FC      |    1003 | Carrots        |       2.50 | Carrots (rabbit hunting season only)                           |
-- | FU1     |    1002 | Fuses          |       3.42 | 1 dozen, extra long                                            |
-- | JP1000  |    1005 | JetPack 1000   |      35.00 | JetPack 1000, intended for single use                          |
-- | JP2000  |    1005 | JetPack 2000   |      55.00 | JetPack 2000, multi-use                                        |
-- | OL1     |    1002 | Oil can        |       8.99 | Oil can, red                                                   |
-- | SAFE    |    1003 | Safe           |      50.00 | Safe with combination lock                                     |
-- | SLING   |    1003 | Sling          |       4.49 | Sling, one size fits all                                       |
-- | TNT1    |    1003 | TNT (1 stick)  |       2.50 | TNT, red, single stick                                         |
-- | TNT2    |    1003 | TNT (5 sticks) |      10.00 | TNT, red, pack of 10 sticks                                    |
-- +---------+---------+----------------+------------+----------------------------------------------------------------+

-- GROUP BY
SELECT vend_id, Count(*) AS num_prod
  FROM products
  GROUP BY vend_id;
-- +---------+----------+
-- | vend_id | num_prod |
-- +---------+----------+
-- |    1001 |        3 |
-- |    1002 |        2 |
-- |    1003 |        7 |
-- |    1005 |        2 |
-- +---------+----------+

SELECT * FROM orders;
-- +-----------+---------------------+---------+
-- | order_num | order_date          | cust_id |
-- +-----------+---------------------+---------+
-- |     20005 | 2005-09-01 00:00:00 |   10001 |
-- |     20006 | 2005-09-12 00:00:00 |   10003 |
-- |     20007 | 2005-09-30 00:00:00 |   10004 |
-- |     20008 | 2005-10-03 00:00:00 |   10005 |
-- |     20009 | 2005-10-08 00:00:00 |   10001 |
-- +-----------+---------------------+---------+

-- HAVING
SELECT cust_id, Count(*) AS orders
  FROM orders
  GROUP BY cust_id
  HAVING Count(*) >= 2;
-- +---------+--------+
-- | cust_id | orders |
-- +---------+--------+
-- |   10001 |      2 |
-- +---------+--------+

SELECT vend_id, Count(*) AS num_prod
  FROM products
  WHERE prod_price >= 10
  GROUP BY vend_id
  HAVING Count(*) >= 2;
-- +---------+----------+
-- | vend_id | num_prod |
-- +---------+----------+
-- |    1003 |        4 |
-- |    1005 |        2 |
-- +---------+----------+

SELECT vend_id, Count(*) AS num_prod
  FROM products
  GROUP BY vend_id
  HAVING Count(*) >= 2;
-- +---------+----------+
-- | vend_id | num_prod |
-- +---------+----------+
-- |    1001 |        3 |
-- |    1002 |        2 |
-- |    1003 |        7 |
-- |    1005 |        2 |
-- +---------+----------+

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
-- difference between ORDER BY and GROUP BY

SELECT order_num, Sum(quantity*item_price) AS ordertotal
  FROM orderitems
  GROUP BY order_num
  HAVING Sum(quantity*item_price) >= 50;
-- +-----------+------------+
-- | order_num | ordertotal |
-- +-----------+------------+
-- |     20005 |     149.87 |
-- |     20006 |      55.00 |
-- |     20007 |    1000.00 |
-- |     20008 |     125.00 |
-- +-----------+------------+

SELECT order_num, Sum(quantity*item_price) AS ordertotal
  FROM orderitems
  GROUP BY order_num
  HAVING Sum(quantity*item_price) >= 50
  ORDER BY ordertotal;
-- +-----------+------------+
-- | order_num | ordertotal |
-- +-----------+------------+
-- |     20006 |      55.00 |
-- |     20008 |     125.00 |
-- |     20005 |     149.87 |
-- |     20007 |    1000.00 |
-- +-----------+------------+
