SELECT
  *
FROM
  customers;


SELECT
  *
FROM
  orders;


-- # RIGHT JOIN (gives all data from right side along with matching data from left side)
SELECT
  *
FROM
  orders
  RIGHT JOIN customers ON customers.id = orders.customer_id;