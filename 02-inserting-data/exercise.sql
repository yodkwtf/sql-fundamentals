-- create a new table for workers
CREATE TABLE workers(
  first_name varchar(20),
  last_name varchar(20),
  age int
);


-- insert first person
INSERT INTO
  workers(first_name, last_name, age)
VALUES
  ('Tina', 'Belcher', 13);


-- insert second person
INSERT INTO
  workers(first_name, last_name, age)
VALUES
  ('Bob', 'Belcher', 32);


-- multi insert 3 more people
INSERT INTO
  workers(first_name, last_name, age)
VALUES
  ('Linda', 'Belcher', 45),
  ('Phillip', 'Frond', 38),
  ('Calvin', 'Fisher', 70);