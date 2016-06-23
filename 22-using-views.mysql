-- 第22章 使用视图

-- forehead
SELECT cust_name, cust_contact
  FROM customers, orders, orderitems
  WHERE customers.cust_id = orders.cust_id
    AND orders.order_num = orderitems.order_num
    AND prod_id = 'TNT2';

-- create view
CREATE VIEW prodcust AS
  SELECT cust_name, cust_contact, prod_id
  FROM customers, orders, orderitems
  WHERE customers.cust_id = orders.cust_id
    AND orders.order_num = orderitems.order_num;

SELECT cust_name, cust_contact
  FROM prodcust
  WHERE prod_id = 'TNT2';

-- formatting field using views
CREATE VIEW vendorlocations AS
  SELECT Concat(RTrim(vend_name), ' (', Trim(vend_country) ,')') AS vend_title
    FROM vendors
    ORDER BY vend_name;

SELECT * FROM vendorlocations;

-- filtering data
CREATE VIEW custemaillist AS
  SELECT cust_id, cust_email
    FROM customers
    WHERE cust_email IS NOT NULL;

-- calculate field
CREATE VIEW orderitemsexpanded AS
  SELECT order_num
         prod_id,
         quantity,
         item_price,
         quantity*item_price AS expanded_price
    FROM orderitems;

