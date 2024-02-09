-- we have a contest to see who can get the most likes on a single post. who won?
SELECT
  username,
  image_url,
  photos.id AS photo_id,
  COUNT(*) AS num_likes
FROM
  users
  JOIN photos ON users.id = photos.user_id
  JOIN likes ON photos.id = likes.photo_id
GROUP BY
  photos.id
ORDER BY
  num_likes DESC
LIMIT
  1;