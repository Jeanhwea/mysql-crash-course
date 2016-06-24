-- 第25章 使用触发器

-- NOTES: trigger only for table, not views

CREATE TRIGGER neworder AFTER INSERT ON orders
  FOR EACH ROW SET @msg = (SELECT NEW.order_num);

INSERT INTO orders(order_date, cust_id)
  VALUES(Now(), 10001);

SELECT @msg;


CREATE TRIGGER updatevendor BEFORE UPDATE ON vendors
  FOR EACH ROW SET NEW.vend_state = Upper(NEW.vend_state);
