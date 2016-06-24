-- 第24章 使用游标

DROP PROCEDURE processsorders;
DELIMITER $$
CREATE PROCEDURE processsorders()
BEGIN
  -- declare local variables, must declare before cursor
  DECLARE done boolean DEFAULT 0;
  DECLARE o int;
  DECLARE t decimal(8,0);

  -- declare cursor
  DECLARE ordernumbers CURSOR
    FOR
      SELECT order_num FROM orders;
  -- declare continue handler, http://dev.mysql.com/doc/refman/en/error-handling.html
  DECLARE CONTINUE HANDLER
    FOR
      SQLSTATE '02000' SET done=1;

  -- create table to store results
  CREATE TABLE IF NOT EXISTS ordertotals
    (order_num int, total decimal(8,2));

  -- open cursors
  OPEN ordernumbers;

  -- loop through all rows
  REPEAT
    -- get order number
    FETCH ordernumbers INTO o;
    -- get the total for this order
    CALL ordertotal(o, 1, t);
    -- insert order and total into ordertotals
    INSERT INTO ordertotals(order_num, total) VALUES(o, t);
  UNTIL done END REPEAT;

  -- close cursor
  CLOSE ordernumbers;
END $$
DELIMITER ;

CALL processsorders();
