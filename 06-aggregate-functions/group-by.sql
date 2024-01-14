-- group data by author's last name
SELECT
  author_lname
FROM
  books
GROUP BY
  author_lname;


-- get the count of books after grouping them based on author's last name
SELECT
  author_lname,
  COUNT(*)
FROM
  books
GROUP BY
  author_lname;


-- group by unique authors and make the output a bit cleaner
SELECT
  CONCAT(author_fname, ' ', author_lname) AS author,
  COUNT(*) AS books_written
FROM
  books
GROUP BY
  author
ORDER BY
  books_written DESC;


-- group by released year
SELECT
  released_year,
  COUNT(*)
FROM
  books
GROUP BY
  released_year
ORDER BY
  released_year;


-- # group by multiple cols
-- grouping by only l_name (issue)
SELECT
  author_lname,
  COUNT(*)
FROM
  books
GROUP BY
  author_lname;


-- group by multiple columns (f_name and l_name) (soln)
SELECT
  author_fname,
  author_lname,
  COUNT(*)
FROM
  books
GROUP BY
  author_lname,
  author_fname;