CREATE TABLE people (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  CONSTRAINT email_unique UNIQUE (email)
);


SELECT
  *
FROM
  people;


-- add a person
INSERT INTO
  people (name, email)
VALUES
  ('Jane', 'jane.smith@gmail.com');


INSERT INTO
  people (name, email)
VALUES
  ('Jane', 'jane1.smith@gmail.com');


-- ERROR case
INSERT INTO
  people (name, email)
VALUES
  ('John', 'jane1.smith@gmail.com');


DROP TABLE people;