SELECT
  *
FROM
  people;


-- HOUR() returns the hour for a given date
SELECT
  name,
  birthTime,
  HOUR(birthTime)
FROM
  people;


-- MINUTE() returns the minute for a given date
SELECT
  name,
  birthTime,
  MINUTE(birthTime)
FROM
  people;


-- SECOND() returns the second for a given date
SELECT
  name,
  birthDateTime,
  DATE(birthDateTime),
  TIME(birthDateTime),
  DAY(birthDateTime),
  MONTHNAME(birthDateTime),
  YEAR(birthDateTime),
  HOUR(birthDateTime),
  MINUTE(birthDateTime),
  SECOND(birthDateTime)
FROM
  people;