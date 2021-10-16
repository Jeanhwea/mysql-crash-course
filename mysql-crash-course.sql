-- vim: set ts=2 sts=2 sw=2 ft=mysql:
USE course;
DESCRIBE vendors;
-- +--------------+----------+------+-----+---------+----------------+
-- | Field        | Type     | Null | Key | Default | Extra          |
-- +--------------+----------+------+-----+---------+----------------+
-- | vend_id      | int(11)  | NO   | PRI | NULL    | auto_increment |
-- | vend_name    | char(50) | NO   |     | NULL    |                |
-- | vend_address | char(50) | YES  |     | NULL    |                |
-- | vend_city    | char(50) | YES  |     | NULL    |                |
-- | vend_state   | char(5)  | YES  |     | NULL    |                |
-- | vend_zip     | char(10) | YES  |     | NULL    |                |
-- | vend_country | char(50) | YES  |     | NULL    |                |
-- +--------------+----------+------+-----+---------+----------------+
DESCRIBE products;
-- +------------+--------------+------+-----+---------+-------+
-- | Field      | Type         | Null | Key | Default | Extra |
-- +------------+--------------+------+-----+---------+-------+
-- | prod_id    | char(10)     | NO   | PRI | NULL    |       |
-- | vend_id    | int(11)      | NO   | MUL | NULL    |       |
-- | prod_name  | char(255)    | NO   |     | NULL    |       |
-- | prod_price | decimal(8,2) | NO   |     | NULL    |       |
-- | prod_desc  | text         | YES  |     | NULL    |       |
-- +------------+--------------+------+-----+---------+-------+
DESCRIBE customers;
-- +--------------+-----------+------+-----+---------+----------------+
-- | Field        | Type      | Null | Key | Default | Extra          |
-- +--------------+-----------+------+-----+---------+----------------+
-- | cust_id      | int(11)   | NO   | PRI | NULL    | auto_increment |
-- | cust_name    | char(50)  | NO   |     | NULL    |                |
-- | cust_address | char(50)  | YES  |     | NULL    |                |
-- | cust_city    | char(50)  | YES  |     | NULL    |                |
-- | cust_state   | char(5)   | YES  |     | NULL    |                |
-- | cust_zip     | char(10)  | YES  |     | NULL    |                |
-- | cust_country | char(50)  | YES  |     | NULL    |                |
-- | cust_contact | char(50)  | YES  |     | NULL    |                |
-- | cust_email   | char(255) | YES  |     | NULL    |                |
-- +--------------+-----------+------+-----+---------+----------------+
DESCRIBE orders;
-- +------------+----------+------+-----+---------+----------------+
-- | Field      | Type     | Null | Key | Default | Extra          |
-- +------------+----------+------+-----+---------+----------------+
-- | order_num  | int(11)  | NO   | PRI | NULL    | auto_increment |
-- | order_date | datetime | NO   |     | NULL    |                |
-- | cust_id    | int(11)  | NO   | MUL | NULL    |                |
-- +------------+----------+------+-----+---------+----------------+
DESCRIBE orderitems;
-- +------------+--------------+------+-----+---------+-------+
-- | Field      | Type         | Null | Key | Default | Extra |
-- +------------+--------------+------+-----+---------+-------+
-- | order_num  | int(11)      | NO   | PRI | NULL    |       |
-- | order_item | int(11)      | NO   | PRI | NULL    |       |
-- | prod_id    | char(10)     | NO   | MUL | NULL    |       |
-- | quantity   | int(11)      | NO   |     | NULL    |       |
-- | item_price | decimal(8,2) | NO   |     | NULL    |       |
-- +------------+--------------+------+-----+---------+-------+
DESCRIBE productnotes;
-- +-----------+----------+------+-----+---------+----------------+
-- | Field     | Type     | Null | Key | Default | Extra          |
-- +-----------+----------+------+-----+---------+----------------+
-- | note_id   | int(11)  | NO   | PRI | NULL    | auto_increment |
-- | prod_id   | char(10) | NO   |     | NULL    |                |
-- | note_date | datetime | NO   |     | NULL    |                |
-- | note_text | text     | YES  | MUL | NULL    |                |
-- +-----------+----------+------+-----+---------+----------------+
