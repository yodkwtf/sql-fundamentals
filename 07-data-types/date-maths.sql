SELECT
  *
FROM
  people;


-- # DATEDIFF
SELECT
  DATEDIFF('2017-12-25', '2017-12-01') AS days_diff;


-- how many days ago bday was
SELECT
  name,
  birthDate,
  DATEDIFF(CURDATE(), birthDate) AS days_ago
FROM
  people;


-- # DATE_ADD
SELECT
  DATE_ADD('2017-12-25', INTERVAL 1 DAY) AS date_plus_1_day;


SELECT
  name,
  birthDate,
  DATE_ADD(birthDate, INTERVAL 1 DAY) AS birth_date_plus_1_day
FROM
  people;


-- one year from now
SELECT
  DATE_ADD(CURDATE(), INTERVAL 12 YEAR);


-- # DATE_SUB
SELECT
  DATE_SUB('2017-12-25', INTERVAL 4 MONTH) AS date_minus_1_day;


SELECT
  name,
  birthDate,
  DATE_SUB(birthDate, INTERVAL 1 MONTH)
FROM
  people;


-- # TIMEDIFF
SELECT
  TIMEDIFF('11:00:00', CURTIME()) AS time_diff;


-- Maths Operators director
SELECT
  name,
  birthDate,
  birthDate + INTERVAL 18 YEAR AS voting_age,
  birthDate + INTERVAL 21 YEAR AS drinking_age,
  birthDate + INTERVAL 65 YEAR AS retirement_age
FROM
  people;