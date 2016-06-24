-- 第16章 创建高级联结

-- table alias
SELECT cust_name, cust_contact
  FROM customers AS c, orders AS o, orderitems AS oi
  WHERE c.cust_id = o.cust_id
    AND o.order_num = oi.order_num
    AND oi.prod_id = 'TNT2';

SELECT prod_id, vend_id, prod_name FROM products;
-- +---------+---------+----------------+
-- | prod_id | vend_id | prod_name      |
-- +---------+---------+----------------+
-- | ANV01   |    1001 | .5 ton anvil   |
-- | ANV02   |    1001 | 1 ton anvil    |
-- | ANV03   |    1001 | 2 ton anvil    |
-- | DTNTR   |    1003 | Detonator      |
-- | FB      |    1003 | Bird seed      |
-- | FC      |    1003 | Carrots        |
-- | FU1     |    1002 | Fuses          |
-- | JP1000  |    1005 | JetPack 1000   |
-- | JP2000  |    1005 | JetPack 2000   |
-- | OL1     |    1002 | Oil can        |
-- | SAFE    |    1003 | Safe           |
-- | SLING   |    1003 | Sling          |
-- | TNT1    |    1003 | TNT (1 stick)  |
-- | TNT2    |    1003 | TNT (5 sticks) |
-- +---------+---------+----------------+

SELECT prod_id, prod_name
  FROM products
  WHERE vend_id = ( SELECT vend_id
                      FROM products
                      WHERE prod_id = 'DTNTR');

-- self-join
SELECT p1.prod_id, p1.prod_name
  FROM products AS p1, products AS p2
  WHERE p1.vend_id = p2.vend_id
    AND p2.prod_id = 'DTNTR';
-- +---------+----------------+
-- | prod_id | prod_name      |
-- +---------+----------------+
-- | DTNTR   | Detonator      |
-- | FB      | Bird seed      |
-- | FC      | Carrots        |
-- | SAFE    | Safe           |
-- | SLING   | Sling          |
-- | TNT1    | TNT (1 stick)  |
-- | TNT2    | TNT (5 sticks) |
-- +---------+----------------+

-- natural join, no duplicate columns
SELECT c.*, o.order_num, o.order_date,
       oi.prod_id, oi.quantity, oi.item_price
  FROM customers AS c, orders AS o, orderitems AS oi
  WHERE c.cust_id = o.cust_id
    AND o.order_num = oi.order_num
    AND oi.prod_id = 'FB';


SELECT cust_name, cust_id FROM customers;
-- +----------------+---------+
-- | cust_name      | cust_id |
-- +----------------+---------+
-- | Coyote Inc.    |   10001 |
-- | Mouse House    |   10002 |
-- | Wascals        |   10003 |
-- | Yosemite Place |   10004 |
-- | E Fudd         |   10005 |
-- +----------------+---------+
SELECT order_num, cust_id FROM orders;
-- +-----------+---------+
-- | order_num | cust_id |
-- +-----------+---------+
-- |     20005 |   10001 |
-- |     20009 |   10001 |
-- |     20006 |   10003 |
-- |     20007 |   10004 |
-- |     20008 |   10005 |
-- +-----------+---------+

-- inner-join and outer-join
SELECT customers.cust_id, orders.order_num
  FROM customers INNER JOIN orders
  ON customers.cust_id = orders.cust_id;
-- +---------+-----------+
-- | cust_id | order_num |
-- +---------+-----------+
-- |   10001 |     20005 |
-- |   10001 |     20009 |
-- |   10003 |     20006 |
-- |   10004 |     20007 |
-- |   10005 |     20008 |
-- +---------+-----------+
SELECT customers.cust_id, orders.order_num
  FROM customers LEFT OUTER JOIN orders
  ON customers.cust_id = orders.cust_id;
-- +---------+-----------+
-- | cust_id | order_num |
-- +---------+-----------+
-- |   10001 |     20005 |
-- |   10001 |     20009 |
-- |   10002 |      NULL |
-- |   10003 |     20006 |
-- |   10004 |     20007 |
-- |   10005 |     20008 |
-- +---------+-----------+

-- join with aggregate function
SELECT customers.cust_name,
       customers.cust_id,
       Count(orders.order_num) AS num_order
  FROM customers INNER JOIN orders
  ON customers.cust_id = orders.cust_id
  GROUP BY customers.cust_id;
-- +----------------+---------+-----------+
-- | cust_name      | cust_id | num_order |
-- +----------------+---------+-----------+
-- | Coyote Inc.    |   10001 |         2 |
-- | Wascals        |   10003 |         1 |
-- | Yosemite Place |   10004 |         1 |
-- | E Fudd         |   10005 |         1 |
-- +----------------+---------+-----------+
SELECT customers.cust_name,
       customers.cust_id,
       Count(orders.order_num) AS num_order
  FROM customers LEFT OUTER JOIN orders
  ON customers.cust_id = orders.cust_id
  GROUP BY customers.cust_id;
-- +----------------+---------+-----------+
-- | cust_name      | cust_id | num_order |
-- +----------------+---------+-----------+
-- | Coyote Inc.    |   10001 |         2 |
-- | Mouse House    |   10002 |         0 |
-- | Wascals        |   10003 |         1 |
-- | Yosemite Place |   10004 |         1 |
-- | E Fudd         |   10005 |         1 |
-- +----------------+---------+-----------+
