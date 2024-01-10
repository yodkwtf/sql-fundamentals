-- make shorter version of title
SELECT
  CONCAT(SUBSTR(title, 1, 20), '...') AS short_title
FROM
  books;


-- create a table for author initials
SELECT
  CONCAT(
    SUBSTR(author_fname, 1, 1),
    '.',
    SUBSTR(author_lname, 1, 1),
    '.'
  ) AS author_initials
FROM
  books;