SELECT
  *
FROM
  customers;


SELECT
  *
FROM
  orders;


-- insert a customer that doesn't have any orders
INSERT INTO
  customers (first_name, last_name, email)
VALUES
  ('Prince', 'Rogers Nelson', 'prince@mail.com');


-- # INNER JOIN (gives overlapping data)
SELECT
  *
FROM
  customers
  JOIN orders ON customers.id = orders.customer_id;


-- join by id (can do but it's not useful)
SELECT
  *
FROM
  customers
  JOIN orders ON customers.id = orders.id;


DELETE FROM
  customers
WHERE
  email = 'prince@mail.com';


-- # INNER JOIN with group by
SELECT
  first_name,
  last_name,
  SUM(amount) AS total
FROM
  customers
  JOIN orders ON customers.id = orders.customer_id
GROUP BY
  first_name,
  last_name
ORDER BY
  total DESC;