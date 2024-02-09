-- find bot accounts. find users whi have likes every single photo
SELECT
  id,
  username,
  COUNT(*) AS num_likes
FROM
  users
  JOIN likes ON users.id = likes.user_id
GROUP BY
  likes.user_id
HAVING
  num_likes = (
    SELECT
      count(*)
    FROM
      photos
  );