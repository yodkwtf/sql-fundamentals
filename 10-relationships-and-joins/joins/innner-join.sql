SELECT
  *
FROM
  customers;


SELECT
  *
FROM
  orders;


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