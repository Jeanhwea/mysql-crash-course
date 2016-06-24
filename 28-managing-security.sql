-- 第28章 安全管理

USE mysql;
SELECT user FROM user;

-- create account
CREATE USER ben IDENTIFIED BY 'password';
-- rename account
RENAME USER ben TO bforta;
-- delete account
DROP USER ben;
-- change password
SET PASSWORD FOR bforta = Password('new password');


-- show privileges
SHOW GRANTS FOR hujh;

