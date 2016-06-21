-- 第15章 联结表

-- create join
SELECT vend_name, prod_name, prod_price
  FROM vendors, products
  WHERE vendors.vend_id = products.vend_id
  ORDER BY vend_name, prod_name;
-- +-------------+----------------+------------+
-- | vend_name   | prod_name      | prod_price |
-- +-------------+----------------+------------+
-- | ACME        | Bird seed      |      10.00 |
-- | ACME        | Carrots        |       2.50 |
-- | ACME        | Detonator      |      13.00 |
-- | ACME        | Safe           |      50.00 |
-- | ACME        | Sling          |       4.49 |
-- | ACME        | TNT (1 stick)  |       2.50 |
-- | ACME        | TNT (5 sticks) |      10.00 |
-- | Anvils R Us | .5 ton anvil   |       5.99 |
-- | Anvils R Us | 1 ton anvil    |       9.99 |
-- | Anvils R Us | 2 ton anvil    |      14.99 |
-- | Jet Set     | JetPack 1000   |      35.00 |
-- | Jet Set     | JetPack 2000   |      55.00 |
-- | LT Supplies | Fuses          |       3.42 |
-- | LT Supplies | Oil can        |       8.99 |
-- +-------------+----------------+------------+

-- Cartesian product, join table returns Cartesian product
SELECT vend_name, prod_name, prod_price
  FROM vendors, products
  ORDER BY vend_name, prod_name;
-- +----------------+----------------+------------+
-- | vend_name      | prod_name      | prod_price |
-- +----------------+----------------+------------+
-- | ACME           | .5 ton anvil   |       5.99 |
-- | ACME           | 1 ton anvil    |       9.99 |
-- | ACME           | 2 ton anvil    |      14.99 |
-- | ACME           | Bird seed      |      10.00 |
-- | ACME           | Carrots        |       2.50 |
-- | ACME           | Detonator      |      13.00 |
-- | ACME           | Fuses          |       3.42 |
-- | ACME           | JetPack 1000   |      35.00 |
-- | ACME           | JetPack 2000   |      55.00 |
-- | ACME           | Oil can        |       8.99 |
-- | ACME           | Safe           |      50.00 |
-- | ACME           | Sling          |       4.49 |
-- | ACME           | TNT (1 stick)  |       2.50 |
-- | ACME           | TNT (5 sticks) |      10.00 |
-- | Anvils R Us    | .5 ton anvil   |       5.99 |
-- | Anvils R Us    | 1 ton anvil    |       9.99 |
-- | Anvils R Us    | 2 ton anvil    |      14.99 |
-- | Anvils R Us    | Bird seed      |      10.00 |
-- | Anvils R Us    | Carrots        |       2.50 |
-- | Anvils R Us    | Detonator      |      13.00 |
-- | Anvils R Us    | Fuses          |       3.42 |
-- | Anvils R Us    | JetPack 1000   |      35.00 |
-- | Anvils R Us    | JetPack 2000   |      55.00 |
-- | Anvils R Us    | Oil can        |       8.99 |
-- | Anvils R Us    | Safe           |      50.00 |
-- | Anvils R Us    | Sling          |       4.49 |
-- | Anvils R Us    | TNT (1 stick)  |       2.50 |
-- | Anvils R Us    | TNT (5 sticks) |      10.00 |
-- | Furball Inc.   | .5 ton anvil   |       5.99 |
-- | Furball Inc.   | 1 ton anvil    |       9.99 |
-- | Furball Inc.   | 2 ton anvil    |      14.99 |
-- | Furball Inc.   | Bird seed      |      10.00 |
-- | Furball Inc.   | Carrots        |       2.50 |
-- | Furball Inc.   | Detonator      |      13.00 |
-- | Furball Inc.   | Fuses          |       3.42 |
-- | Furball Inc.   | JetPack 1000   |      35.00 |
-- | Furball Inc.   | JetPack 2000   |      55.00 |
-- | Furball Inc.   | Oil can        |       8.99 |
-- | Furball Inc.   | Safe           |      50.00 |
-- | Furball Inc.   | Sling          |       4.49 |
-- | Furball Inc.   | TNT (1 stick)  |       2.50 |
-- | Furball Inc.   | TNT (5 sticks) |      10.00 |
-- | Jet Set        | .5 ton anvil   |       5.99 |
-- | Jet Set        | 1 ton anvil    |       9.99 |
-- | Jet Set        | 2 ton anvil    |      14.99 |
-- | Jet Set        | Bird seed      |      10.00 |
-- | Jet Set        | Carrots        |       2.50 |
-- | Jet Set        | Detonator      |      13.00 |
-- | Jet Set        | Fuses          |       3.42 |
-- | Jet Set        | JetPack 1000   |      35.00 |
-- | Jet Set        | JetPack 2000   |      55.00 |
-- | Jet Set        | Oil can        |       8.99 |
-- | Jet Set        | Safe           |      50.00 |
-- | Jet Set        | Sling          |       4.49 |
-- | Jet Set        | TNT (1 stick)  |       2.50 |
-- | Jet Set        | TNT (5 sticks) |      10.00 |
-- | Jouets Et Ours | .5 ton anvil   |       5.99 |
-- | Jouets Et Ours | 1 ton anvil    |       9.99 |
-- | Jouets Et Ours | 2 ton anvil    |      14.99 |
-- | Jouets Et Ours | Bird seed      |      10.00 |
-- | Jouets Et Ours | Carrots        |       2.50 |
-- | Jouets Et Ours | Detonator      |      13.00 |
-- | Jouets Et Ours | Fuses          |       3.42 |
-- | Jouets Et Ours | JetPack 1000   |      35.00 |
-- | Jouets Et Ours | JetPack 2000   |      55.00 |
-- | Jouets Et Ours | Oil can        |       8.99 |
-- | Jouets Et Ours | Safe           |      50.00 |
-- | Jouets Et Ours | Sling          |       4.49 |
-- | Jouets Et Ours | TNT (1 stick)  |       2.50 |
-- | Jouets Et Ours | TNT (5 sticks) |      10.00 |
-- | LT Supplies    | .5 ton anvil   |       5.99 |
-- | LT Supplies    | 1 ton anvil    |       9.99 |
-- | LT Supplies    | 2 ton anvil    |      14.99 |
-- | LT Supplies    | Bird seed      |      10.00 |
-- | LT Supplies    | Carrots        |       2.50 |
-- | LT Supplies    | Detonator      |      13.00 |
-- | LT Supplies    | Fuses          |       3.42 |
-- | LT Supplies    | JetPack 1000   |      35.00 |
-- | LT Supplies    | JetPack 2000   |      55.00 |
-- | LT Supplies    | Oil can        |       8.99 |
-- | LT Supplies    | Safe           |      50.00 |
-- | LT Supplies    | Sling          |       4.49 |
-- | LT Supplies    | TNT (1 stick)  |       2.50 |
-- | LT Supplies    | TNT (5 sticks) |      10.00 |
-- +----------------+----------------+------------+

-- inner join
SELECT vend_name, prod_name, prod_price
  FROM vendors INNER JOIN products
    ON vendors.vend_id = products.vend_id;
-- +-------------+----------------+------------+
-- | vend_name   | prod_name      | prod_price |
-- +-------------+----------------+------------+
-- | Anvils R Us | .5 ton anvil   |       5.99 |
-- | Anvils R Us | 1 ton anvil    |       9.99 |
-- | Anvils R Us | 2 ton anvil    |      14.99 |
-- | LT Supplies | Fuses          |       3.42 |
-- | LT Supplies | Oil can        |       8.99 |
-- | ACME        | Detonator      |      13.00 |
-- | ACME        | Bird seed      |      10.00 |
-- | ACME        | Carrots        |       2.50 |
-- | ACME        | Safe           |      50.00 |
-- | ACME        | Sling          |       4.49 |
-- | ACME        | TNT (1 stick)  |       2.50 |
-- | ACME        | TNT (5 sticks) |      10.00 |
-- | Jet Set     | JetPack 1000   |      35.00 |
-- | Jet Set     | JetPack 2000   |      55.00 |
-- +-------------+----------------+------------+

-- join multiple tables
SELECT prod_name, vend_name, prod_price, quantity
  FROM orderitems, products, vendors
  WHERE products.vend_id = vendors.vend_id
    AND orderitems.prod_id = products.prod_id
    AND order_num = 20005;
-- +----------------+-------------+------------+----------+
-- | prod_name      | vend_name   | prod_price | quantity |
-- +----------------+-------------+------------+----------+
-- | .5 ton anvil   | Anvils R Us |       5.99 |       10 |
-- | 1 ton anvil    | Anvils R Us |       9.99 |        3 |
-- | TNT (5 sticks) | ACME        |      10.00 |        5 |
-- | Bird seed      | ACME        |      10.00 |        1 |
-- +----------------+-------------+------------+----------+

-- difference: join and sub-query
SELECT cust_name, cust_contact
  FROM customers
  WHERE cust_id IN ( SELECT cust_id
                      FROM orders
                      WHERE order_num IN ( SELECT order_num
                                            FROM orderitems
                                            WHERE prod_id = 'TNT2'
                      )
                  );

SELECT cust_name, cust_contact
  FROM customers, orders, orderitems
  WHERE customers.cust_id = orders.cust_id
    AND orders.order_num = orderitems.order_num
    AND orderitems.prod_id = 'TNT2';

-- +----------------+--------------+
-- | cust_name      | cust_contact |
-- +----------------+--------------+
-- | Coyote Inc.    | Y Lee        |
-- | Yosemite Place | Y Sam        |
-- +----------------+--------------+
