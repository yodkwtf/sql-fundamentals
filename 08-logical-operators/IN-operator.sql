-- get books by author of last names Carver, Lahiri, or Smith
-- long way
SELECT
  *
FROM
  books
WHERE
  author_lname = 'Carver'
  OR author_lname = 'Lahiri'
  OR author_lname = 'Smith';


-- short way IN operator
SELECT
  *
FROM
  books
WHERE
  author_lname IN ('Carver', 'Lahiri', 'Smith');


-- # NOT IN
SELECT
  *
FROM
  books
WHERE
  author_lname NOT IN ('Carver', 'Lahiri', 'Smith');


-- find all books not released in even years
-- long way
SELECT
  *
FROM
  books
WHERE
  released_year != 2000
  AND released_year != 2002
  AND released_year != 2004
  AND released_year != 2006
  AND released_year != 2008
  AND released_year != 2010
  AND released_year != 2012
  AND released_year != 2014
  AND released_year != 2016
  AND released_year != 2018
ORDER BY
  released_year;


-- short way
SELECT
  *
FROM
  books
WHERE
  released_year NOT IN (
    2000,
    2002,
    2004,
    2006,
    2008,
    2010,
    2012,
    2014,
    2016,
    2018
  )
ORDER BY
  released_year;


-- get only after 2000
SELECT
  *
FROM
  books
WHERE
  released_year NOT IN (
    2000,
    2002,
    2004,
    2006,
    2008,
    2010,
    2012,
    2014,
    2016,
    2018
  )
  AND released_year > 2000;


-- handle even year dynamically using modulo (gives remainder)
SELECT
  *
FROM
  books
WHERE
  released_year % 2 != 0
  AND released_year > 2000;