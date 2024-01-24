USE datesandtimes;


-- get people born at time between 12 to 4 pm
SELECT
  *
FROM
  people
WHERE
  birthTime BETWEEN '12:00:00'
  AND '16:00:00';


-- # CAST
SELECT
  *
FROM
  people
WHERE
  birthTime BETWEEN CAST('12:00:00' AS TIME)
  AND CAST('16:00:00' AS TIME);


-- if we only care about hour
SELECT
  *
FROM
  people
WHERE
  HOUR(birthTime) BETWEEN 12
  AND 16;