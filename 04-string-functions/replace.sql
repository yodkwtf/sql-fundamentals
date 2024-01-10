-- repleace sql with MySQL
SELECT
	REPLACE('www.sql.com', 'sql', 'MySQL');


-- replace spaces with 'and'
SELECT
	REPLACE('milk, bread, coffee, cheese', ', ', ' and ');


-- case sensitive
SELECT
	REPLACE('www.sql.com', 'SQL', 'MySQL');


-- create slug if titles by replacing spaces with `-`
SELECT
	REPLACE(title, ' ', '-') AS title_slug
FROM
	books;
