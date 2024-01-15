-- find the latest book of each author
SELECT
  author_fname,
  author_lname,
  MAX(released_year)
FROM
  books
GROUP BY
  author_lname,
  author_fname;


-- find the first as well as the last book
SELECT
  CONCAT(author_fname, ' ', author_lname) AS author,
  COUNT(*) AS books_written,
  MIN(released_year) AS first_book,
  MAX(released_year) AS last_book
FROM
  books
GROUP BY
  author_lname,
  author_fname;