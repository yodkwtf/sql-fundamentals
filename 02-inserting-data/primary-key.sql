-- drop prev instance
DROP TABLE workers;


--- create a new table with primary key
CREATE TABLE workers (
  worker_id INT NOT NULL PRIMARY KEY,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  age INT
);


--- another way to define primary key
CREATE TABLE workers2 (
  worker_id INT,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  age INT,
  PRIMARY KEY (worker_id)
);


--- create table with auto increment id
CREATE TABLE workers3 (
  worker_id INT AUTO_INCREMENT,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  age INT,
  PRIMARY KEY (worker_id)
);


-- check TABLE
DESC workers;


DESC workers3;


-- insert first person
INSERT INTO
  workers(worker_id, first_name, last_name, age)
VALUES
  (1, 'Tina', 'Belcher', 13);


INSERT INTO
  workers3(first_name, last_name, age)
VALUES
  ('Tina', 'Belcher', 13);


-- insert second person
INSERT INTO
  workers(worker_id, first_name, last_name, age)
VALUES
  (2, 'Bob', 'Belcher', 32);


INSERT INTO
  workers3(first_name, last_name, age)
VALUES
  ('Bob', 'Belcher', 32);


-- multi insert 3 more people
INSERT INTO
  workers(worker_id, first_name, last_name, age)
VALUES
  (3, 'Linda', 'Belcher', 45),
  (4, 'Phillip', 'Frond', 38),
  (5, 'Calvin', 'Fisher', 70);