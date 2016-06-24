-- 第26章 管理事务处理

-- using roolback
SELECT * FROM ordertotals;
START TRANSACTION;
DELETE FROM ordertotals;
SELECT * FROM ordertotals;
ROLLBACK;
SELECT * FROM ordertotals;
-- mysql> SELECT * FROM ordertotals;
-- +-----------+---------+
-- | order_num | total   |
-- +-----------+---------+
-- |     20005 |  159.00 |
-- |     20009 |   41.00 |
-- |     20006 |   58.00 |
-- |     20007 | 1060.00 |
-- |     20008 |  133.00 |
-- |     20008 |  133.00 |
-- +-----------+---------+
-- 6 rows in set (0.00 sec)

-- mysql> START TRANSACTION;
-- Query OK, 0 rows affected (0.00 sec)

-- mysql> DELETE FROM ordertotals;
-- Query OK, 6 rows affected (0.00 sec)

-- mysql> SELECT * FROM ordertotals;
-- Empty set (0.00 sec)

-- mysql> ROLLBACK;
-- Query OK, 0 rows affected (0.01 sec)

-- mysql> SELECT * FROM ordertotals;
-- +-----------+---------+
-- | order_num | total   |
-- +-----------+---------+
-- |     20005 |  159.00 |
-- |     20009 |   41.00 |
-- |     20006 |   58.00 |
-- |     20007 | 1060.00 |
-- |     20008 |  133.00 |
-- |     20008 |  133.00 |
-- +-----------+---------+
-- 6 rows in set (0.00 sec)


-- using commit
START TRANSACTION;
DELETE FROM orderitems WHERE order_num = 20010;
DELETE FROM orders WHERE order_num = 20010;
COMMIT;


-- using savepoint
START TRANSACTION;
SAVEPOINT delete1;
DELETE FROM orderitems WHERE order_num = 20010;
DELETE FROM orders WHERE order_num = 20010;
ROLLBACK TO delete1;
