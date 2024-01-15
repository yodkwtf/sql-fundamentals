-- add up all the book quantity
SELECT
  SUM(stock_quantity)
FROM
  books;


-- sum of the book in stock for each author
SELECT
  CONCAT(author_fname, ' ', author_lname) AS author,
  COUNT(*) AS books_written,
  SUM(pages) AS pages_written,
  SUM(stock_quantity)
FROM
  books
GROUP BY
  author_lname,
  author_fname;


-- adding up text values
SELECT
  SUM(author_fname)
FROM
  books;