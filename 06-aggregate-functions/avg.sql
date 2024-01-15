-- find avg release year
SELECT
  AVG(released_year)
FROM
  books;


-- find avg no. of pages
SELECT
  AVG(pages)
FROM
  books;


-- find avg stock quantity
SELECT
  AVG(stock_quantity)
FROM
  books;


-- find avg stock of books released in the same year
SELECT
  released_year,
  COUNT(*) AS books_published,
  SUM(stock_quantity) AS total_stock,
  AVG(stock_quantity) AS avg_stock
FROM
  books
GROUP BY
  released_year
ORDER BY
  released_year DESC;