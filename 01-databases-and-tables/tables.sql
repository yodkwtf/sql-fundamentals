-- creating a table
CREATE TABLE cats (name VARCHAR(50), age INT);


-- select a database
USE petStore;


-- show all the tables inside a database
SHOW TABLES;


-- get all columns info of a table
SHOW COLUMNS
FROM
  cats;


DESCRIBE cats;


DESC cats;


-- dropping tables (be careful as data gets erased)
DROP TABLE cats;


SHOW TABLES;