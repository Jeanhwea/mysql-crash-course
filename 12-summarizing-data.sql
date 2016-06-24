-- 第12章 汇总数据

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

-- aggregate function
-- Avg() Count() Max() Min() Sum()

-- Avg() ignore NULL value
SELECT Avg(prod_price) AS avg_price
  FROM products;
-- +-----------+
-- | avg_price |
-- +-----------+
-- | 16.133571 |
-- +-----------+

SELECT cust_id, cust_name, cust_email FROM customers;
-- +---------+----------------+---------------------+
-- | cust_id | cust_name      | cust_email          |
-- +---------+----------------+---------------------+
-- |   10001 | Coyote Inc.    | ylee@coyote.com     |
-- |   10002 | Mouse House    | NULL                |
-- |   10003 | Wascals        | rabbit@wascally.com |
-- |   10004 | Yosemite Place | sam@yosemite.com    |
-- |   10005 | E Fudd         | NULL                |
-- +---------+----------------+---------------------+
SELECT Count(*) AS num_cust
  FROM customers;
-- +----------+
-- | num_cust |
-- +----------+
-- |        5 |
-- +----------+
SELECT Count(cust_email) AS num_cust
  FROM customers;
-- +----------+
-- | num_cust |
-- +----------+
-- |        3 |
-- +----------+

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
SELECT Sum(quantity) AS items_ordered
  FROM orderitems
  WHERE order_num = 20005;
-- +---------------+
-- | items_ordered |
-- +---------------+
-- |            19 |
-- +---------------+
SELECT Sum(quantity*item_price) AS total_price
  FROM orderitems
  WHERE order_num = 20005;
-- +-------------+
-- | total_price |
-- +-------------+
-- |      149.87 |
-- +-------------+


SELECT Count(*) AS num_items,
       Max(prod_price) AS price_max,
       Min(prod_price) AS price_min,
       Avg(prod_price) AS price_avg
  FROM products;
-- +-----------+-----------+-----------+-----------+
-- | num_items | price_max | price_min | price_avg |
-- +-----------+-----------+-----------+-----------+
-- |        14 |     55.00 |      2.50 | 16.133571 |
-- +-----------+-----------+-----------+-----------+

