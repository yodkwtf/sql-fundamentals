-- # CONCAT
-- Simple CONCAT
SELECT
  CONCAT('h', 'e', 'y');


-- Real concat
SELECT
  CONCAT(author_fname, '!!!')
FROM
  books;


SELECT
  CONCAT(author_fname, author_lname)
FROM
  books;


-- add space in between first and last name
SELECT
  CONCAT(author_fname, " ", author_lname)
FROM
  books;


-- rename with as
SELECT
  CONCAT(author_fname, " ", author_lname) AS author
FROM
  books;


-- # CONCAT_WS
-- Simple CONCAT_WS
SELECT
  -- h/e/y
  CONCAT_WS('/', 'h', 'e', 'y');


SELECT
  -- /hey
  CONCAT('/', 'h', 'e', 'y');


-- create a slug kinda thing
SELECT
  CONCAT_WS('-', title, author_fname, author_lname)
FROM
  books;


-- create a slug kinda thing with aliases
SELECT
  CONCAT_WS('-', title, author_fname, author_lname) AS slug
FROM
  books;