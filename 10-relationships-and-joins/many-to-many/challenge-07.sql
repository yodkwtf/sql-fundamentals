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
  rating,
  CONCAT(first_name, " ", last_name) AS reviewer
FROM
  reviews
  JOIN series ON reviews.series_id = series.id
  JOIN reviewers ON reviewers.id = reviews.reviewer_id
ORDER BY
  title;


SELECT
  CONCAT(first_name, " ", last_name) AS reviewer,
  title,
  rating
FROM
  reviews
  JOIN series ON reviews.series_id = series.id
  JOIN reviewers ON reviewers.id = reviews.reviewer_id
ORDER BY
  title;