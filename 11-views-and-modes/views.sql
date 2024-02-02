-- query w/o view
SELECT
  title,
  rating,
  genre,
  CONCAT(first_name, ' ', last_name)
FROM
  reviews
  JOIN series ON series.id = reviews.series_id
  JOIN reviewers ON reviewers.id = reviews.reviewer_id;


-- # Create VIEW
CREATE VIEW full_reviews AS
SELECT
  title,
  rating,
  genre,
  CONCAT(first_name, ' ', last_name)
FROM
  reviews
  JOIN series ON series.id = reviews.series_id
  JOIN reviewers ON reviewers.id = reviews.reviewer_id;


-- working with view
SELECT
  *
FROM
  full_reviews;


SELECT
  genre,
  AVG(rating)
FROM
  full_reviews
GROUP BY
  genre;