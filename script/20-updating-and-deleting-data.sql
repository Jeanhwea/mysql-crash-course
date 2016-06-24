-- 第20章 更新和删除数据

-- UPDATE
UPDATE customers
  SET cust_email = 'jack@gmail.com'
  WHERE cust_id = 10005;


UPDATE customers
  SET cust_email = 'jack@gmail.com',
      cust_name = 'jack'
  WHERE cust_id = 10005;


-- DELETE
DELETE FROM customers
  WHERE cust_id = 10006;
