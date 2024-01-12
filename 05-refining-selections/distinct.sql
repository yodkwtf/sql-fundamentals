-- get author last name
SELECT
  author_lname
FROM
  books;


-- get distinct author last names
SELECT
  DISTINCT author_lname
FROM
  books;


-- get distinct release year
SELECT
  DISTINCT released_year
FROM
  books;


-- get unique full author name
SELECT
  DISTINCT CONCAT(author_fname, ' ', author_lname)
FROM
  books;


-- another way (finds distinct combinations of these 2 cols)
SELECT
  DISTINCT author_fname,
  author_lname
FROM
  books;