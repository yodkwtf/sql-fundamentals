-- get all books between 2004 and 2015
-- Using # AND
SELECT
  *
FROM
  books
WHERE
  released_year >= 2004
  AND released_year <= 2015;


-- Using # BETWEEN
SELECT
  *
FROM
  books
WHERE
  released_year BETWEEN 2004
  AND 2015;


-- get books w pages bw 200 and 300
SELECT
  *
FROM
  books
WHERE
  pages >= 200
  AND pages <= 300;


-- # NOT BETWEEN
SELECT
  *
FROM
  books
WHERE
  pages NOT BETWEEN 200
  AND 300;