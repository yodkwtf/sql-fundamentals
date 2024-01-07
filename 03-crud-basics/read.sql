--- READ
SELECT
  *
FROM
  cakes;


-- filtering columns
SELECT
  name
FROM
  cakes;


SELECT
  name,
  price
FROM
  cakes;


--- WHERE clause
SELECT
  name,
  price
FROM
  cakes
WHERE
  price >= 20;


SELECT
  *
FROM
  cakes
WHERE
  flavor = 'vanilla';


--- Aliases
SELECT
  cake_id AS id
FROM
  cakes;