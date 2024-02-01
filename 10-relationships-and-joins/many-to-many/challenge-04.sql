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
  title AS unreviewed_series
FROM
  series
  LEFT JOIN reviews ON reviews.series_id = series.id
WHERE
  rating IS NULL;