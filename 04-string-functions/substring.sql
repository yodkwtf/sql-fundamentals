-- - Basic examples
-- start and length
SELECT
  SUBSTRING('hello world', 1, 4);


-- with different starting point
SELECT
  SUBSTRING('hello world', 2, 4);


-- only specifying starting point
SELECT
  SUBSTRING('hello world', 3);


SELECT
  SUBSTRING('hello world', 3, 5);


-- negative starting Point
SELECT
  SUBSTRING('hello world', -3);


SELECT
  SUBSTRING('hello world', -3, 2);


-- - With tables
-- get first 20 characters only
SELECT
  SUBSTRING(title, 1, 20)
FROM
  books;


-- get first character of author's last name
SELECT
  SUBSTR(author_lname, 1, 1),
  author_lname
FROM
  books;


-- me combining concat and substr
SELECT
  CONCAT(SUBSTR(title, 1, 20), '...')
FROM
  books;