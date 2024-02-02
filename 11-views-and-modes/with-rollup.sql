CREATE
OR REPLACE VIEW full_reviews AS
SELECT
  title,
  rating,
  genre,
  released_year,
  CONCAT(first_name, ' ', last_name)
FROM
  reviews
  JOIN series ON series.id = reviews.series_id
  JOIN reviewers ON reviewers.id = reviews.reviewer_id;


-- w/o roll up
SELECT
  title,
  AVG(rating)
FROM
  full_reviews
GROUP BY
  title;


-- with roll up
SELECT
  title,
  AVG(rating)
FROM
  full_reviews
GROUP BY
  title WITH ROLLUP;


SELECT
  title,
  AVG(rating),
  COUNT(rating)
FROM
  full_reviews
GROUP BY
  title WITH ROLLUP;


-- 2 levels of with ROLLUP
SELECT
  released_year,
  genre,
  avg(rating)
FROM
  full_reviews
GROUP BY
  released_year,
  genre WITH rollup;