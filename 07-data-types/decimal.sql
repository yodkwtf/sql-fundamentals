-- storing decimal values in int
CREATE TABLE products (product_name VARCHAR(15), price INT);


INSERT INTO
  products(product_name, price)
VALUES
  ('Laptop', 1000.75),
  ('Mobile', 500.50),
  ('Tablet', 250.25),
  ('Watch', 100.75),
  ('Headphone', 50.50);


SELECT
  *
FROM
  products;


--# DECIMAL
CREATE TABLE products1 (product_name VARCHAR(15), price DECIMAL(5, 2));


INSERT INTO
  products1(product_name, price)
VALUES
  ('Laptop', 100.75),
  ('Mobile', 500.50),
  ('Tablet', 250.25),
  ('Watch', 100.75),
  ('Headphone', 50.50);


SELECT
  *
FROM
  products1;