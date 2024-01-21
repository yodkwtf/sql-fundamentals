CREATE DATABASE datesAndTimes;


USE datesAndTimes;


-- create a new table
CREATE TABLE people (
  name VARCHAR(100),
  birthDate DATE,
  birthTime TIME,
  birthDateTime DATETIME
);


-- insert some data real looking data
INSERT INTO
  people(name, birthDate, birthTime, birthDateTime)
VALUES
  (
    'John',
    '1980-01-01',
    '12:30:00',
    '1980-01-01 12:30:00'
  ),
  (
    'Jane',
    '1981-02-02',
    '13:30:00',
    '1981-02-02 13:30:00'
  ),
  (
    'Joe',
    '1982-03-03',
    '14:30:00',
    '1982-03-03 14:30:00'
  ),
  (
    'Jill',
    '1983-04-04',
    '15:30:00',
    '1983-04-04 15:30:00'
  ),
  (
    'Jack',
    '1984-05-05',
    '16:30:00',
    '1984-05-05 16:30:00'
  );


-- get all data from the table
SELECT
  *
FROM
  people;