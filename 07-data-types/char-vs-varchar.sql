CREATE DATABASE school;


USE school;


-- varchar
CREATE TABLE students(NAMES VARCHAR(15), grades VARCHAR(1));


-- char (since grades are one digit only)
CREATE TABLE students1(NAMES VARCHAR(15), grades CHAR(1));


-- insert into both students tables
INSERT INTO
  students(NAMES, grades)
VALUES
  ('John', 'A'),
  ('Jane', 'B'),
  ('Joe', 'C'),
  ('Jill', 'D'),
  ('Jack', 'F');


INSERT INTO
  students1(NAMES, grades)
VALUES
  ('John', 'A'),
  ('Jane', 'B'),
  ('Joe', 'C'),
  ('Jill', 'D'),
  ('Jack', 'F');


-- get data from both tables
SELECT
  *
FROM
  students;


SELECT
  *
FROM
  students1;