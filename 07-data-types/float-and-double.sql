-- storing nums with float and double
CREATE TABLE nums (x FLOAT, y DOUBLE);


INSERT INTO
  nums(x, y)
VALUES
  (1.5, 1.5),
  (2.5, 2.5),
  (3.5, 3.5),
  (4.5, 4.5),
  (5.5, 5.5);


SELECT
  *
FROM
  nums;


-- loosing precision after 7 digits for float
INSERT INTO
  nums(x, y)
VALUES
  (1.123456789, 1.123456789),
  (2.123456789, 2.123456789),
  (3.123456789, 3.123456789);


-- loosing precision after 15 digits for double
INSERT INTO
  nums(x, y)
VALUES
  (1.123456789123456, 1.123456789123456789),
  (2.123456789123456, 2.123456789123456789),
  (3.123456789123456, 3.123456789123456);