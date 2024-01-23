SELECT
  *
FROM
  books;


-- get all books not released in 2001
SELECT
  *
FROM
  books
WHERE
  released_year != 2001;


-- get books not by Gaiman
SELECT
  *
FROM
  books
WHERE
  author_lname != 'Gaiman';