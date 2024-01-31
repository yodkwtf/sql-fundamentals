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


-- # LEFT JOIN with GROUP BY
SELECT first_name, last_name, SUM(amount), IFNULL(SUM(amount), 0) FROM customers
LEFT JOIN orders ON orders.customer_id = customers.id
GROUP BY first_name, last_name;
