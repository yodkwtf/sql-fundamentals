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


-- Using the VIEW
SELECT
  title,
  AVG(rating),
  COUNT(rating)
FROM
  full_reviews
GROUP BY
  title
HAVING
  COUNT(*) > 2;