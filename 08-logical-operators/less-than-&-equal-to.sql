-- # LESS THAN
-- get all books with pages less than 500
SELECT
  *
FROM
  books
WHERE
  pages < 500;


-- get all books released with stock quantity less than 50
SELECT
  *
FROM
  books
WHERE
  stock_quantity < 50;


-- # EQUAL TO
-- get all books released in 2001 or before
SELECT
  *
FROM
  books
WHERE
  released_year <= 2001;


-- get all books with pages 437 or more
SELECT
  *
FROM
  books
WHERE
  pages >= 437;