-- 第14章 使用子查询


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

-- sub query
SELECT cust_id
  FROM orders
  WHERE order_num IN (
    SELECT order_num
      FROM orderitems
      WHERE prod_id = 'TNT2'
  );
-- +---------+
-- | cust_id |
-- +---------+
-- |   10001 |
-- |   10004 |
-- +---------+

SELECT cust_id, cust_name, cust_state FROM customers;
-- +---------+----------------+------------+
-- | cust_id | cust_name      | cust_state |
-- +---------+----------------+------------+
-- |   10001 | Coyote Inc.    | MI         |
-- |   10002 | Mouse House    | OH         |
-- |   10003 | Wascals        | IN         |
-- |   10004 | Yosemite Place | AZ         |
-- |   10005 | E Fudd         | IL         |
-- +---------+----------------+------------+

SELECT cust_name,
       cust_state,
       ( SELECT Count(*)
         FROM orders
         WHERE orders.cust_id = customers.cust_id
        ) AS num_orders
  FROM customers
  ORDER BY cust_name;
-- +----------------+------------+------------+
-- | cust_name      | cust_state | num_orders |
-- +----------------+------------+------------+
-- | Coyote Inc.    | MI         |          2 |
-- | E Fudd         | IL         |          1 |
-- | Mouse House    | OH         |          0 |
-- | Wascals        | IN         |          1 |
-- | Yosemite Place | AZ         |          1 |
-- +----------------+------------+------------+
