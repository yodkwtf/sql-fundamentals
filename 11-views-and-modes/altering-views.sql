-- FAIL as table exists
CREATE VIEW ordered_series AS
SELECT
  *
FROM
  series
ORDER BY
  released_year;


-- # REPLACE VIEW
CREATE
OR REPLACE VIEW ordered_series AS
SELECT
  *
FROM
  series
ORDER BY
  released_year DESC;


SELECT
  *
FROM
  ordered_series;


-- # ALTER VIEW
ALTER VIEW ordered_series AS
SELECT
  *
FROM
  series
ORDER BY
  released_year ASC;


-- # DROP VIEW
DROP VIEW ordered_series;