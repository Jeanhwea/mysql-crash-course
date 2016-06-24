-- 第23章 使用存储过程

DROP PROCEDURE productpricing;
DELIMITER $$
CREATE PROCEDURE productpricing(
  OUT pl decimal(8,2),
  OUT ph decimal(8,2),
  OUT pa decimal(8,2)
)
BEGIN
  SELECT Min(prod_price) INTO pl
    FROM products;
  SELECT Max(prod_price) INTO ph
    FROM products;
  SELECT Avg(prod_price) INTO pa
    FROM products;
END $$
DELIMITER ;

CALL productpricing(@pricelow, @pricehigh, @priceavg);
SELECT @pricelow, @pricehigh, @priceavg;

-- stored procedure
DELIMITER $$
CREATE PROCEDURE ordertotal(
  IN onumber int,
  IN taxable boolean,
  OUT ototal decimal(8,2)
) COMMENT 'Obtain order total, optionally adding tax'
BEGIN
  DECLARE total decimal(8,2);
  DECLARE taxrate int DEFAULT 6;
  SELECT Sum(item_price*quantity)
    FROM orderitems
    WHERE order_num = onumber
    INTO total;
  IF taxable THEN
    SELECT total+(total/100*taxrate) INTO total;
  END IF;
  SELECT total INTO ototal;
END $$
DELIMITER ;

CALL ordertotal(20005, 0, @total);
SELECT @total;
CALL ordertotal(20005, 1, @total);
SELECT @total;
