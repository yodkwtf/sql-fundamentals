SELECT
  *
FROM
  people;


-- DAY() returns the day of the month for a given date
SELECT
  birthDate,
  DAY(birthDate)
FROM
  people;


-- DAYOFWEEK() returns the day of the week as an integer from 1 (Sunday) to 7 (Saturday)
SELECT
  birthDate,
  DAYOFWEEK(birthDate)
FROM
  people;


-- DAYOFYEAR() returns the day of the year as an integer from 1 to 366
SELECT
  birthDate,
  DAYOFYEAR(birthDate)
FROM
  people;


-- MONTHNAME() returns the name of the month for a given date
SELECT
  birthDate,
  MONTHNAME(birthDate)
FROM
  people;


-- YEAR() returns the year for a given date
SELECT
  name,
  birthDateTime,
  YEAR(birthDateTime)
FROM
  people;