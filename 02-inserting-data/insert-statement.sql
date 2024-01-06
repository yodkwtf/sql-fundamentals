-- inserting data into tables
INSERT INTO
  pastries(name, quantity)
VALUES
  ('Pineapple Pastry', 20);


-- multiple inserts
INSERT INTO
  pastries(name, quantity)
VALUES
  ('Black Forest', 10),
  ('Apple Pie', 7),
  ('Red Velvet', 5);


-- check if data is inserted
SELECT
  *
FROM
  pastries;