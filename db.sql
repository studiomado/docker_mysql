CREATE DATABASE IF NOT EXISTS mydb;

USE mydb;

GRANT ALL on mydb.* to 'myuser'@'localhost' identified by 'mypassword';

FLUSH PRIVILEGES;