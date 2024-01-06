-- not null
CREATE TABLE cakes(
  name VARCHAR(50) NOT NULL,
  price INT NOT NULL
);


-- throws error if a price column data is missing
INSERT INTO
  cakes(name)
VALUES
  ('Black Forest');


-- works when none of the column stays null
INSERT INTO
  cakes(name, price)
VALUES
  ('Black Forest', 450);