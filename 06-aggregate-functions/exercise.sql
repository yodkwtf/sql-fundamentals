-- print total no. of books in the database
SELECT
  COUNT(*)
FROM
  books;


-- print how many books were released each year (year, count)
SELECT
  released_year AS year,
  COUNT(*) AS count
FROM
  books
GROUP BY
  released_year;


-- print total no. of books in stock
SELECT
  SUM(stock_quantity)
FROM
  books;


-- find avg released year for each author
SELECT
  CONCAT(`author_fname`, ' ', `author_lname`) AS author,
  AVG(released_year)
FROM
  books
GROUP BY
  author;


SELECT
  `author_fname`,
  `author_lname`,
  AVG(released_year)
FROM
  books
GROUP BY
  `author_lname`,
  `author_fname`;


-- find full name of the author who wrote the longest book
SELECT
  CONCAT(`author_fname`, ' ', `author_lname`) AS author,
  title AS book_title,
  pages AS page_count
FROM
  books
WHERE
  pages = (
    SELECT
      MAX(pages)
    FROM
      books
  );


-- print a table (year, no. of books, avg pages)
SELECT
  released_year AS `year`,
  COUNT(*) AS `# books`,
  AVG(pages) AS `avg pages`
FROM
  books
GROUP BY
  `released_year`
ORDER BY
  `released_year`;