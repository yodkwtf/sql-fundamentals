-- we want to target inactive users. find users who have never posted
SELECT
  username
FROM
  users
  LEFT JOIN photos ON users.id = photos.user_id
WHERE
  user_id IS NULL;