-- count all the rows in the table
SELECT
  COUNT(*)
FROM
  books;


-- count all the first names
SELECT
  COUNT(author_fname)
FROM
  books;


-- count all authors where name starts with `Da`
SELECT
  COUNT(author_fname)
FROM
  books
WHERE
  author_fname LIKE 'Da%';


-- get the count of distinct authors
SELECT
  COUNT(DISTINCT author_fname)
FROM
  books;


-- how many unique years are there when books are released
SELECT
  COUNT(DISTINCT released_year)
FROM
  books;


-- how many books released in 2001
SELECT
  COUNT(*)
FROM
  books
WHERE
  released_year = '2001';


-- get count of the distinct last names
SELECT
  COUNT(DISTINCT author_lname)
FROM
  books;


-- how many titles contain the word `the`
SELECT
  COUNT(title)
FROM
  books
WHERE
  title LIKE '%the%';