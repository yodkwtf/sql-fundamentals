-- find all books where title contains `stories`
SELECT
  title
FROM
  books
WHERE
  title LIKE '%stories%';


-- find the longest book and print title and page count for it
SELECT
  title,
  pages
FROM
  books
ORDER BY
  pages DESC
LIMIT
  1;


-- print a summary column containing `title - released_year` for the most 3 recent books
SELECT
  CONCAT(title, ' - ', released_year) AS summary
FROM
  books
ORDER BY
  released_year DESC
LIMIT
  3;


-- find all author last names that contains space
SELECT
  title,
  author_lname
FROM
  books
WHERE
  author_lname LIKE '% %';


-- print title, year, and stock for 3 books with lowest stock
SELECT
  title,
  released_year,
  stock_quantity
FROM
  books
ORDER BY
  stock_quantity
LIMIT
  3;


-- print title, author_lname, sorted first by lname and then by title
SELECT
  title,
  author_lname
FROM
  books
ORDER BY
  author_lname,
  title;


-- print a yell column to say `MY FAV AUTHOR IS <FULL_NAME>` sorted by last name alphabetically
SELECT
  UPPER(
    CONCAT(
      'my fav author is ',
      author_fname,
      ' ',
      author_lname,
      '!'
    )
  ) AS yell
FROM
  books
ORDER BY
  author_lname;