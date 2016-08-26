-- 第29章 数据库维护

-- check table
ANALYZE TABLE orders;

CHECK TABLE orders, orderitems;


-- create databse
CREATE DATABASE mydb
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;
