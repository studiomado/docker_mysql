CREATE DATABASE IF NOT EXISTS mydb;

USE mydb;

GRANT ALL on mydb.* to 'myuser'@'%' identified by 'mypassword' WITH GRANT OPTION;
GRANT ALL on mydb.* to 'myuser'@'127.0.0.1' identified by 'mypassword' WITH GRANT OPTION;
GRANT ALL on mydb.* to 'myuser'@'localhost' identified by 'mypassword' WITH GRANT OPTION;

FLUSH PRIVILEGES;