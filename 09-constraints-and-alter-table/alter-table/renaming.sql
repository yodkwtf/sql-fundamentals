-- # RENAME TABLE
SELECT
  *
FROM
  users;


-- rename table
ALTER TABLE
  users RENAME TO people;


SELECT
  *
FROM
  people;


-- another way to rename table
RENAME TABLE people TO users;


-- # RENAMING COLUMNS
SELECT
  *
FROM
  users;


-- rename column
ALTER TABLE
  users RENAME COLUMN name TO user_name;