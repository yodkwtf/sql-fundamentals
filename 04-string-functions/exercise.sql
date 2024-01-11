-- reverse and uppercase the following senetence
--'Why does my cat look at me with such disdain?'
SELECT
  REVERSE(
    UPPER('Why does my cat look at me with such disdain?')
  );


-- Guess the output
-- Output: I-Love-SQl
SELECT
  REPLACE(CONCAT('I', ' ', 'love', ' ', 'SQL'), ' ', '-');


-- Replace spaces in book title with `->`
SELECT
  REPLACE(title, ' ', '->') AS title
FROM
  books;


-- Print author last name in forwards and backwards
SELECT
  author_lname AS forwards,
  REVERSE(author_lname) AS backwards
FROM
  books;


-- Print author's full name in caps
SELECT
  UCASE(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps'
FROM
  books;


-- Print sentence '<BookName> was released in <Year>'
SELECT
  CONCAT(title, ' was released in ', released_year) AS blurb
FROM
  books;


-- Print the book title and length of each title
SELECT
  title,
  CHAR_LENGTH(title) AS 'character count'
FROM
  books;


-- create a table layout with 3 columns -> short title, author, quantity
SELECT
  CONCAT(SUBSTR(title, 1, 10), '...') AS 'short title',
  CONCAT(author_lname, ', ', author_fname) AS 'author',
  CONCAT(stock_quantity, ' in stock') AS 'quantity'
FROM
  books;