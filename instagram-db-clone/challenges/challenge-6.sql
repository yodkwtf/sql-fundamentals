-- a brand wants to know the 5 most common hashtags
SELECT
  tag_id,
  CONCAT('#', tag_name) AS tag_name,
  COUNT(*) AS num_tags
FROM
  photo_tags
  JOIN tags ON tags.id = photo_tags.tag_id
GROUP BY
  tag_id
ORDER BY
  num_tags DESC
LIMIT
  5;