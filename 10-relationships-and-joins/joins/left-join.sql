SELECT
  *
FROM
  customers;


SELECT
  *
FROM
  orders;


-- # LEFT JOIN (gives all data from left side along with matching data from right side)
SELECT
  *
FROM
  customers
  LEFT JOIN orders ON customers.id = orders.customer_id;