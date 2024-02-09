-- get the 5 oldest users to reward them
SELECT
  *
FROM
  users
ORDER BY
  created_at
LIMIT
  5;