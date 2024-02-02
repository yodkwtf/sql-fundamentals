-- # NOT Updatable Views
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


-- should fail
DELETE FROM
  full_reviews
WHERE
  title = 'The Crown';


-- # Updatable Views
CREATE VIEW ordered_series AS
SELECT
  *
FROM
  series
ORDER BY
  released_year;


-- should work
INSERT INTO
  ordered_series (title, released_year, genre)
VALUES
  ('The Great', 2016, 'Drama');


SELECT
  *
FROM
  ordered_series;


SELECT
  *
FROM
  series;


DELETE FROM
  ordered_series
WHERE
  title = 'The Great';