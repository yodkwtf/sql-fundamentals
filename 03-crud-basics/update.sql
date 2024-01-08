--- update
UPDATE
  cakes
SET
  price = price * 20;


SELECT
  *
FROM
  cakes;


-- update with conditions
UPDATE
  cakes
SET
  price = 450
WHERE
  price >= 500;