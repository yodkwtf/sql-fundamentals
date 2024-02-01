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
  genre,
  AVG(rating) AS avg_rating
FROM
  series
  INNER JOIN reviews ON reviews.series_id = series.id
GROUP BY
  genre;