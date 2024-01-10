-- reverse hello world
SELECT
	REVERSE('hello world');


-- reverse author first names
SELECT
	REVERSE(author_fname)
FROM
	books;


-- reverse concatenated author first and last names with alias
SELECT
	REVERSE(CONCAT(author_fname, ' ', author_lname)) AS 'reverse_name'
FROM
	books;


-- make f_name a palindrome
SELECT
	CONCAT(author_fname, REVERSE(author_fname)) AS 'palindrome'
FROM
	books;


-- null exception
SELECT
	REVERSE(NULL);
