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
  ROUND(AVG(rating), 2) AS avg_rating
FROM
  series
  INNER JOIN reviews ON series.id = reviews.series_id
GROUP BY
  title
ORDER BY
  avg_rating;