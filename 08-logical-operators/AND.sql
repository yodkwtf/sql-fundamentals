-- get all books by Dave Eggers with pages 437 or more
-- one by one approach
SELECT
  *
FROM
  books
WHERE
  author_lname = 'Eggers';


SELECT
  *
FROM
  books
WHERE
  pages >= 437;


-- # AND approach
SELECT
  *
FROM
  books
WHERE
  author_lname = 'Eggers'
  AND pages >= 437;


--  more complex query
SELECT
  *
FROM
  books
WHERE
  author_lname = 'Eggers'
  AND title LIKE '%novel%';


-- get books that have long titles as well as more no. of pages
SELECT
  title,
  pages
FROM
  books
WHERE
  CHAR_LENGTH(title) > 10
  AND pages > 400;