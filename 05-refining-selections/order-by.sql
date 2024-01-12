-- sort by alphabetical order of author first name
SELECT
  book_id,
  author_fname,
  author_lname
FROM
  books
ORDER BY
  author_fname;


-- sort by alphabetical order of author last name
SELECT
  book_id,
  author_fname,
  author_lname
FROM
  books
ORDER BY
  author_lname;


-- sort by reverse alphabetical order for author first name
SELECT
  book_id,
  author_fname,
  author_lname
FROM
  books
ORDER BY
  author_fname DESC;


-- sort by normal alphabetical order for author first name
SELECT
  book_id,
  author_fname,
  author_lname
FROM
  books
ORDER BY
  author_fname ASC;


-- sort by desc order of pages
SELECT
  title,
  pages
FROM
  books
ORDER BY
  pages DESC;


-- sort by released year
SELECT
  title,
  pages,
  released_year
FROM
  books
ORDER BY
  released_year;


-- sort by the second selected col
SELECT
  title,
  pages,
  released_year
FROM
  books
ORDER BY
  2 DESC;


--  order by last name and then for each of the same last name  order by release year
SELECT
  author_lname,
  released_year,
  title
FROM
  books
ORDER BY
  author_lname,
  released_year;


--  sort by cols not part of the DB
SELECT
  CONCAT(author_fname, ' ', author_lname) AS author
FROM
  books
ORDER BY
  author DESC;