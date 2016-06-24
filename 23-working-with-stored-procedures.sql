-- 第23章 使用存储过程

DROP PROCEDURE productpricing;
DELIMITER $$
CREATE PROCEDURE productpricing(
  OUT pl DECIMAL(8,2),
  OUT ph DECIMAL(8,2),
  OUT pa DECIMAL(8,2)
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
  IN onumber INT,
  IN taxable BOOLEAN,
  OUT ototal DECIMAL(8,2)
) COMMENT 'Obtain order total, optionally adding tax'
BEGIN
  DECLARE total DECIMAL(8,2);
  DECLARE taxrate INT DEFAULT 6;
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
