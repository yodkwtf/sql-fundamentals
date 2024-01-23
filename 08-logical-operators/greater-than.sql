-- get books released after 2005
SELECT
  *
FROM
  books
WHERE
  released_year > 2005;


-- get books with pages more than 500
SELECT
  *
FROM
  books
WHERE
  pages > 500;


-- get boolean value as 1 or 0 (true or false)
SELECT
  99 > 1;