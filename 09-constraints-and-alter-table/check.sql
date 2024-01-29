CREATE TABLE users(
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  age INTEGER NOT NULL CHECK (age >= 18)
);


--  success insert
INSERT INTO
  users (name, age)
VALUES
  ('Jane', 25);


--  error insert
INSERT INTO
  users (name, age)
VALUES
  ('Jane', 15);


SELECT
  *
FROM
  users;


-- check to only add words that are palindrome
CREATE TABLE words(
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  word VARCHAR(50) NOT NULL CHECK (word = REVERSE(word))
);


-- success insert
INSERT INTO
  words (word)
VALUES
  ('madam');


-- error insert
INSERT INTO
  words (word)
VALUES
  ('hello');


SELECT
  *
FROM
  words;


DROP TABLE users;


DROP TABLE words;