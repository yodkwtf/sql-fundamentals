-- get books with max no. of pages
SELECT
  MAX(pages)
FROM
  books;


-- get details of books with most no. of pages
SELECT
  title,
  pages
FROM
  books
WHERE
  pages = (
    -- sub query
    SELECT
      MAX(pages)
    FROM
      books
  );


-- find title of the books that was/were released earliest
SELECT
  title,
  released_year
FROM
  books
WHERE
  released_year = (
    -- get earliest released year
    SELECT
      MIN(released_year)
    FROM
      books
  );