-- default values
CREATE TABLE breads(
  name VARCHAR(50) NOT NULL,
  price INT NOT NULL DEFAULT 200
);


DESC breads;


-- insert both values
INSERT INTO
  breads(name, price)
VALUES
  ('Garlic Bread', 500);


-- insert with a default value
INSERT INTO
  breads(name)
VALUES
  ('Baked Bread');


SELECT
  *
FROM
  breads;