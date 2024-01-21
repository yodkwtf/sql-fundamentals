-- get current date
SELECT
  CURDATE();


-- get current time
SELECT
  CURTIME();


-- get current date and time
SELECT
  NOW();


-- insert a newly born person to person table
INSERT INTO
  people(name, birthDate, birthTime, birthDateTime)
VALUES
  (
    'Jackie',
    CURDATE(),
    CURTIME(),
    NOW()
  );


SELECT
  *
FROM
  people;