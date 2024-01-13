-- find exact match with where
SELECT
  title,
  author_fname,
  author_lname
FROM
  books
WHERE
  author_fname = 'Dave';


-- find author where name matches exactly `da`
SELECT
  title,
  author_fname,
  author_lname
FROM
  books
WHERE
  author_fname LIKE 'da';


-- find author where name contains `da` anywhere in the name
SELECT
  title,
  author_fname,
  author_lname
FROM
  books
WHERE
  author_fname LIKE '%da%';


-- find books where title has a colon
SELECT
  title,
  author_fname,
  author_lname
FROM
  books
WHERE
  title LIKE '%:%';


-- - Underscore wildcards
-- find author with name with exactly 4 characters
SELECT
  title,
  author_fname,
  author_lname
FROM
  books
WHERE
  author_fname LIKE '____';


--  find authors where name starts with anything but then we should exactly `av` and end can be anything
SELECT
  title,
  author_fname,
  author_lname
FROM
  books
WHERE
  author_fname LIKE '_av%';


-- find authors where name ends with n
SELECT
  title,
  author_fname,
  author_lname
FROM
  books
WHERE
  author_fname LIKE '%n';