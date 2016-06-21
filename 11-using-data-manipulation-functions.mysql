-- 第11章 使用数据处理函数

-- all functions manual are list as following link
--    http://dev.mysql.com/doc/refman/5.5/en/functions.html

SELECT * FROM vendors;
-- +---------+----------------+-----------------+-------------+------------+----------+--------------+
-- | vend_id | vend_name      | vend_address    | vend_city   | vend_state | vend_zip | vend_country |
-- +---------+----------------+-----------------+-------------+------------+----------+--------------+
-- |    1001 | Anvils R Us    | 123 Main Street | Southfield  | MI         | 48075    | USA          |
-- |    1002 | LT Supplies    | 500 Park Street | Anytown     | OH         | 44333    | USA          |
-- |    1003 | ACME           | 555 High Street | Los Angeles | CA         | 90046    | USA          |
-- |    1004 | Furball Inc.   | 1000 5th Avenue | New York    | NY         | 11111    | USA          |
-- |    1005 | Jet Set        | 42 Galaxy Road  | London      | NULL       | N16 6PS  | England      |
-- |    1006 | Jouets Et Ours | 1 Rue Amusement | Paris       | NULL       | 45678    | France       |
-- +---------+----------------+-----------------+-------------+------------+----------+--------------+

-- string function
SELECT vend_name, Upper(vend_name) AS vend_name_uppercase
  FROM vendors
  ORDER BY vend_name;
-- +----------------+---------------------+
-- | vend_name      | vend_name_uppercase |
-- +----------------+---------------------+
-- | ACME           | ACME                |
-- | Anvils R Us    | ANVILS R US         |
-- | Furball Inc.   | FURBALL INC.        |
-- | Jet Set        | JET SET             |
-- | Jouets Et Ours | JOUETS ET OURS      |
-- | LT Supplies    | LT SUPPLIES         |
-- +----------------+---------------------+

-- more string functions
-- Left(str, len)           | return left-handside of string
-- Right(str, len)          | return right-handside of string
-- Length(str)              | return length of string
-- Locate(pat, str, [pos])  | find sub-string location of string
-- SubString(str, pos, len) | get sub-string by index
-- Lower(str)               | lower case of string
-- Upper(str)               | upper case of string
-- Trim(str)                | trim of string
-- LTrim(str)               | trim left-handside of string
-- RTrim(str)               | trim right-handside of string
-- Soundex(str)             | return SOUNDEX value of string

SELECT * FROM orders;
-- +-----------+---------------------+---------+
-- | order_num | order_date          | cust_id |
-- +-----------+---------------------+---------+
-- |     20005 | 2005-09-01 00:00:00 |   10001 |
-- |     20006 | 2005-09-12 00:00:00 |   10003 |
-- |     20007 | 2005-09-30 00:00:00 |   10004 |
-- |     20008 | 2005-10-03 00:00:00 |   10005 |
-- |     20009 | 2005-10-08 00:00:00 |   10001 |
-- +-----------+---------------------+---------+

-- date function
SELECT cust_id, order_num
  FROM orders
  WHERE Date(order_date) = '2005-09-01';
-- +---------+-----------+
-- | cust_id | order_num |
-- +---------+-----------+
-- |   10001 |     20005 |
-- +---------+-----------+

SELECT cust_id, order_num
  FROM orders
  WHERE Year(order_date) = 2005 AND Month(order_date) = 9;
-- +---------+-----------+
-- | cust_id | order_num |
-- +---------+-----------+
-- |   10001 |     20005 |
-- |   10003 |     20006 |
-- |   10004 |     20007 |
-- +---------+-----------+

-- more date functions
-- AddDate(expr, days)    | add time values (intervals) to a date value
-- AddTime(expr1, expr2)  | add time
-- Now()                  | return datetime
-- CurDate()              | return current date
-- CurTime()              | return current time
-- Date(expr)             | return date part of expr
-- Time(expr)             | return time part of expr
-- Year(expr)             | return year part of expr
-- Month(expr)            | return month part of expr
-- Day(expr)              | return day part of expr
-- Hour(expr)             | return hour part of expr
-- Minute(expr)           | return minute part of expr
-- Second(expr)           | return second part of expr
-- DayOfWeek(expr)        | return day of expr
-- DateDiff(expr1, expr2) | return expr1 - expr2


-- numerical functions
-- Ceil()     | return the smallest integer value not less than the argument
-- Floor()    | return the largest integer value not greater than the argument
-- Ceiling()  | return the smallest integer value not less than the argument
-- Truncate() | truncate to specified number of decimal places
-- Radians()  | return argument converted to radians
-- Conv()     | convert numbers between different number bases
-- Round()    | round the argument

-- Asin()     | return the arc sine
-- Acos()     | return the arc cosine
-- Atan()     | return the arc tangent
-- Sin()      | return the sine of the argument
-- Cos()      | return the cosine
-- Tan()      | return the tangent of the argument
-- Cot()      | return the cotangent
-- Pi()       | return the value of pi
-- Ln()       | return the natural logarithm of the argument
-- Log()      | return the natural logarithm of the first argument
-- Log10()    | return the base-10 logarithm of the argument
-- Log2()     | return the base-2 logarithm of the argument
-- Exp()      | raise to the power of
-- Pow()      | return the argument raised to the specified power

-- Abs()      | return the absolute value
-- Sqrt()     | return the square root of the argument
-- Mod()      | return the remainder
-- Sign()     | return the sign of the argument
-- Rand()     | return a random floating-point value
