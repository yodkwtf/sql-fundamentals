-- # OR
SELECT
  *
FROM
  books
WHERE
  author_lname = 'Eggers'
  OR pages >= 437;


SELECT
  1 < 5;


SELECT
  10 < 5;


SELECT
  10 > 5
  OR 2 > 5;


SELECT
  10 < 5
  OR 2 > 5;


-- find a short book or one with stories
SELECT
  *
FROM
  books
WHERE
  pages < 300
  OR title LIKE '%stories%';