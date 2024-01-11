-- Upper
SELECT
  UPPER('Hey There');


-- Lower case
SELECT
  LOWER('Hey There');


-- Upper aka UCASE
SELECT
  UCASE('Hey There');


-- Lower aka LCASE()
SELECT
  LCASE('Hey There');


-- upper case the book title
SELECT
  UPPER(title)
FROM
  books;


-- Print 'I LOVE <BOOK_TITLE> !!!'
SELECT
  CONCAT(UPPER('i love '), UPPER(title), ' !!!') AS book_review
FROM
  books;