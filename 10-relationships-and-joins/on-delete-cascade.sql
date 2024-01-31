SELECT
  *
FROM
  customers;


SELECT
  *
FROM
  orders;


-- try delete w/o cascade delete (will get an error)
DELETE FROM
  customers
WHERE
  id = 1;


--# add ON CASCADE DELETE to foreign key constraint
ALTER TABLE
  orders
ADD
  CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE CASCADE;


DESC orders;


-- try delete w cascade delete (will delete all orders for customer 1)
DELETE FROM
  customers
WHERE
  id = 1;


SELECT
  *
FROM
  customers;


SELECT
  *
FROM
  orders;


-- try once more
DELETE FROM
  customers
WHERE
  first_name = 'George';