-- we need to schedule an ad campaign for d day. find which day of the week most users register on
SELECT
  DAYNAME(created_at) AS day_registered,
  COUNT(*) AS num_users
FROM
  users
GROUP BY
  day_registered
ORDER BY
  num_users DESC;