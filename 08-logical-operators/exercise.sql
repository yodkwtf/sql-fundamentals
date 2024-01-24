-- #1.Evaluate the following
SELECT
  10 != 10;


SELECT
  15 > 14
  AND 99 -5 <= 94;


SELECT
  1 IN (5, 3)
  OR 9 BETWEEN 8
  AND 10;


-- #2. Select all books written before 1980 (not including 1980)
SELECT
  *
FROM
  books
WHERE
  released_year < 1980;


-- #3. Select all books written by eggers or chabon
SELECT
  *
FROM
  books
WHERE
  author_lname = "Eggers"
  OR author_lname = "Chabon";


-- #4. Select all books written by Lahiri published after 2000
SELECT
  *
FROM
  books
WHERE
  author_lname = "Lahiri"
  AND released_year > 2000;


-- #5. Select all books that have a page count between 100 and 200 pages
SELECT
  *
FROM
  books
WHERE
  pages BETWEEN 100
  AND 200;


-- #6. Select all books where author's last name starts with a "C" or an "S"
SELECT
  *
FROM
  books
WHERE
  author_lname LIKE "C%"
  OR author_lname LIKE "S%";


-- #7. If title contains 'stories -> short stories, just kids and A heartbreaking -> memoir, everything else Novel
SELECT
  title,
  author_lname,
  CASE
    WHEN title LIKE "%stories%" THEN "Short Stories"
    WHEN title LIKE "%A Heartbreaking Work%"
    OR title = "Just Kids" THEN "Memoir"
    ELSE "Novel"
  END AS TYPE
FROM
  books;


-- #8. Print author and the no. of books published by them -> f_name, l_name, x book/books
SELECT
  author_fname,
  author_lname,
  CONCAT(
    COUNT(*),
    CASE
      WHEN COUNT(*) = 1 THEN ' book'
      ELSE ' books'
    END
  ) AS COUNT
FROM
  books
GROUP BY
  author_lname,
  author_fname;