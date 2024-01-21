SELECT
  *
FROM
  people;


-- get dates in the format -> December 25, 2017 (using date functions and concatenation)
SELECT
  name,
  CONCAT(
    MONTHNAME(birthDate),
    ' ',
    DAY(birthDate),
    ', ',
    YEAR(birthDate)
  ) AS birth_date_formatted
FROM
  people;


-- abbreviate the month name
SELECT
  name,
  birthDate,
  DATE_FORMAT(birthDate, '%b')
FROM
  people;


-- abbreviate week day and month
SELECT
  name,
  birthDate,
  DATE_FORMAT(birthDate, '%a %b')
FROM
  people;


-- abbreviate the month name and add the day and year
SELECT
  name,
  birthDate,
  DATE_FORMAT(birthDate, '%b %D, %Y')
FROM
  people;


-- format based on time specifiers
SELECT
  name,
  birthDateTime,
  DATE_FORMAT(birthDateTime, '%M %e, %H:%i')
FROM
  people;


-- format based on time specifiers 12 hour clock
SELECT
  name,
  birthDateTime,
  DATE_FORMAT(birthDateTime, 'Born on %M %e, at %r')
FROM
  people;