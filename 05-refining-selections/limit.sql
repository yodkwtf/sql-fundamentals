-- get first 5 entries
SELECT
  book_id,
  title,
  released_year
FROM
  books
LIMIT
  5;


-- get latest 5 books
SELECT
  book_id,
  title,
  released_year
FROM
  books
ORDER BY
  released_year DESC
LIMIT
  5;


-- specify the starting row index
SELECT
  book_id,
  title,
  released_year
FROM
  books
ORDER BY
  released_year DESC
LIMIT
  0, 5;


-- start from 4th row to give latest 5 books
SELECT
  book_id,
  title,
  released_year
FROM
  books
ORDER BY
  released_year DESC
LIMIT
  3, 5;


-- use out of bounds limits
SELECT
  book_id,
  title,
  released_year
FROM
  books
ORDER BY
  released_year DESC
LIMIT
  15, 255;