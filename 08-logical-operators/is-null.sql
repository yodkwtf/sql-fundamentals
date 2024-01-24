-- insert a book with title as null
INSERT INTO
  books (
    title,
    author_fname,
    author_lname,
    released_year,
    stock_quantity,
    pages
  )
VALUES
  (NULL, 'John', 'Doe', 2010, 10, 100);


-- checking for null values
-- # IS NULL
-- - wrong way
SELECT
  *
FROM
  books
WHERE
  title = NULL;


-- - right way
SELECT
  *
FROM
  books
WHERE
  title IS NULL;


-- # IS NOT NULL
-- all books including null
SELECT
  *
FROM
  books;


-- all books excluding null
SELECT
  *
FROM
  books
WHERE
  title IS NOT NULL;