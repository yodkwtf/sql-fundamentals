--find the shortest books
SELECT
  MIN(pages)
FROM
  books;


-- find books with largest stock
SELECT
  MAX(stock_quantity)
FROM
  books;


-- use with text (works alphabetically)
SELECT
  MAX(author_fname)
FROM
  books;


SELECT
  MIN(author_lname)
FROM
  books;