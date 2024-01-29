CREATE TABLE users (
  id integer PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);


-- add 2 users
INSERT INTO
  users (id, name)
VALUES
  (1, 'Alice');


INSERT INTO
  users (id, name)
VALUES
  (2, 'Bob');


SELECT
  *
FROM
  users;


-- add col w default value
ALTER TABLE
  users
ADD
  age INT NOT NULL DEFAULT 18;


INSERT
  users(id, name, age)
VALUES
  (4, 'David', 20);


-- # DROP column
ALTER TABLE
  users DROP COLUMN email;