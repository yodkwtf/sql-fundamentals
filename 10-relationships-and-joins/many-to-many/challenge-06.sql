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
  first_name,
  last_name,
  COUNT(rating) AS COUNT,
  IFNULL(MIN(rating), 0) AS MIN,
  IFNULL(MAX(rating), 0) AS MAX,
  IFNULL(AVG(rating), 0) AS AVG,
  CASE
    WHEN COUNT(rating) > 0 THEN "ACTIVE"
    ELSE "INACTIVE"
  END AS STATUS
FROM
  reviewers
  LEFT JOIN reviews ON reviews.reviewer_id = reviewers.id
GROUP BY
  first_name,
  last_name;


-- using IF since we only have 2 conditions
SELECT
  first_name,
  last_name,
  COUNT(rating) AS count,
  IFNULL(MIN(rating), 0) AS min,
  IFNULL(MAX(rating), 0) AS max,
  IFNULL(AVG(rating), 0) AS average,
  IF(COUNT(rating) > 0, 'ACTIVE', 'INACTIVE') AS reviewer_status
FROM
  reviewers
  LEFT JOIN reviews ON reviews.reviewer_id = reviewers.id
GROUP BY
  first_name,
  last_name;