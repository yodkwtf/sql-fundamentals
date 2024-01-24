-- create a new col `genre` based on case values of released_year
SELECT
  *,
  CASE
    WHEN released_year > 2010 THEN 'Modern'
    WHEN released_year > 2000 THEN 'Contemporary'
    WHEN released_year > 1900 THEN 'Classic'
    ELSE NULL
  END AS genre
FROM
  books;


-- a new column called book length based on no. of pages
SELECT
  title,
  released_year,
  pages,
  CASE
    WHEN pages > 400 THEN 'Long'
    WHEN pages > 200 THEN 'Medium'
    WHEN pages > 0 THEN 'Short'
    ELSE NULL
  END AS book_length
FROM
  books;