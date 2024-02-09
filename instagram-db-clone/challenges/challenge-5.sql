-- how many times does an avg user post
SELECT
  COUNT(*)
FROM
  users;


SELECT
  COUNT(*)
FROM
  photos;


SELECT
  count(*) / (
    SELECT
      count(*)
    FROM
      users
  ) AS avg_posts_per_user
FROM
  photos;