SELECT
  *
FROM
  users;


-- add negative age for a new user
INSERT INTO
  users (id, username, age)
VALUES
  (6, 'Eve', -25);


DELETE FROM
  users
WHERE
  id = 6;


-- # add constraint to CHECK age > 0
ALTER TABLE
  users
ADD
  CONSTRAINT age_positive CHECK (age > 0);


-- # drop constraint
ALTER TABLE
  users DROP CONSTRAINT age_positive;