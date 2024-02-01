SELECT
  *
FROM
  series;


SELECT
  *
FROM
  reviewers;


SELECT
  *
FROM
  reviews;


-- # SOLUTION
SELECT
  title,
  rating
FROM
  series
  JOIN reviews ON series.id = reviews.series_id;