-- like example
SELECT
  title,
  CONCAT(author_fname, ' ', author_lname) AS 'full name'
FROM
  books
WHERE
  author_fname LIKE 'da%';


-- # NOT LIKE
SELECT
  title,
  CONCAT(author_fname, ' ', author_lname) AS 'full name'
FROM
  books
WHERE
  author_fname NOT LIKE 'da%';


-- get all books where title doesn't contain "a"
SELECT
  title,
  CONCAT(author_fname, ' ', author_lname) AS 'full name'
FROM
  books
WHERE
  title NOT LIKE '%a%';