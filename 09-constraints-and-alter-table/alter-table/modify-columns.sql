SELECT
  *
FROM
  users;


-- modify column
ALTER TABLE
  users
MODIFY
  COLUMN user_name VARCHAR(50) DEFAULT 'Anonymous';


INSERT INTO
  users (id)
VALUES
  (5);


-- # CHANGE COLUMN
SELECT
  *
FROM
  users;


-- change column
ALTER TABLE
  users CHANGE COLUMN user_name username VARCHAR(25) DEFAULT 'Anonymous';