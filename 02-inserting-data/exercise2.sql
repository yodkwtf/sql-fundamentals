-- # Define an Employees table with the following FIELDS
-- id - number(auto increment) and primary key
-- last name - text, mandatory
-- first name - text, mandatory
-- middle name - text, not mandatory
-- age - number, mandatory
-- current status - text, mandatory, defaults to 'employed'
CREATE TABLE employees(
  id INT AUTO_INCREMENT PRIMARY KEY,
  last_name VARCHAR(50) NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  middle_name VARCHAR(50),
  age INT NOT NULL,
  current_status VARCHAR(100) NOT NULL DEFAULT 'employed'
);


DESC employees;


INSERT INTO
  employees(first_name, last_name, age)
VALUES
  ('Durgesh', 'Chaudhary', 22);


INSERT INTO
  employees(first_name, last_name, age, current_status)
VALUES
  ('Aman', 'Sharma', 23, 'intern'),
  ('Bhavya', 'Gauri', 23, 'fte'),
  ('Diksh', 'Sawayliya', 24, 'java developer');


SELECT
  *
FROM
  employees;