-- get length of chars
SELECT
	CHAR_LENGTH('Hello World');


-- get title and title length
SELECT
	CHAR_LENGTH(title) AS title_len,
	title
FROM
	books;


-- get author last names and their length
SELECT
	author_lname,
	CHAR_LENGTH(author_lname) AS 'length'
FROM
	books;


-- print out `author_lname is <length> characters long`
SELECT
	CONCAT(
		author_lname,
		' is ',
		CHAR_LENGTH(author_lname),
		' characters long'
	)
FROM
	books;
