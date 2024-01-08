-- Create database
CREATE DATABASE shirts_db;


SELECT
  DATABASE();


-- use database 
USE shirts_db;


SELECT
  DATABASE();


-- Create a table 
CREATE TABLE shirts(
  shirt_id INT PRIMARY KEY AUTO_INCREMENT,
  article VARCHAR(50) NOT NULL DEFAULT 't-shirt',
  color VARCHAR(50),
  shirt_size VARCHAR(5),
  last_worn INT
);


DESC shirts;


--# CREATE
-- Insert some data
INSERT INTO
  shirts (article, color, shirt_size, last_worn)
VALUES
  ('t-shirt', 'white', 'S', 10),
  ('t-shirt', 'green', 'S', 200),
  ('polo shirt', 'black', 'M', 10),
  ('tank top', 'blue', 'S', 50),
  ('t-shirt', 'pink', 'S', 0),
  ('polo shirt', 'red', 'M', 5),
  ('tank top', 'white', 'S', 200),
  ('tank top', 'blue', 'M', 15);


SELECT
  *
FROM
  shirts;


-- insert some more data
INSERT INTO
  shirts (article, color, shirt_size, last_worn)
VALUES
  ('polo shirt', 'purple', 'M', 50);


SELECT
  *
FROM
  shirts;


--# READ
-- Print out article and color
SELECT
  article,
  color
FROM
  shirts;


-- Print everything but shirt_id for size MEDIUM
SELECT
  article,
  color,
  shirt_size,
  last_worn
FROM
  shirts
WHERE
  shirt_size = 'M';


--# UPDATE
-- Update all polo shirts to size L
SELECT
  *
FROM
  shirts
WHERE
  article = 'polo shirt';


UPDATE
  shirts
SET
  shirt_size = 'L'
WHERE
  article = 'polo shirt';


-- Update shirt last worn 15 days ago to last worn 0
SELECT
  *
FROM
  shirts
WHERE
  last_worn = 15;


UPDATE
  shirts
SET
  last_worn = 0
WHERE
  last_worn = 15;


-- Update all white shirts to size XS and color 'off white'
SELECT
  *
FROM
  shirts
WHERE
  color = 'white';


UPDATE
  shirts
SET
  color = 'off white',
  shirt_size = 'XS'
WHERE
  color = 'white';


--# DELETE
-- Delete shirts last worn 200 days ago
SELECT
  *
FROM
  shirts
WHERE
  last_worn >= 200;


DELETE FROM
  shirts
WHERE
  last_worn >= 200;


SELECT
  *
FROM
  shirts;


-- Delete all tank tops
SELECT
  *
FROM
  shirts
WHERE
  article = 'tank top';


DELETE FROM
  shirts
WHERE
  article = 'tank top';


-- Delete all shirts
DELETE FROM
  shirts;


SELECT
  *
FROM
  shirts;


DESC shirts;


-- Drop shirts table
DROP TABLE shirts;


-- Drop `shirts_db` database
SHOW DATABASES;


DROP DATABASE shirts_db;


SHOW DATABASES;