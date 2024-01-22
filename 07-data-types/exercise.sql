-- #1. What's good use case for 'CHAR'? Give example.
-- Ans. To store values of same length -> grades, name initials, year as a string, etc.
-- 
-- 
-- 
-- #2.What would be a good type for the following table fields?
-- CREATE TABLE inventory (
--   item_name _________,
--   price ____________,
--   quantity _________
-- );
CREATE TABLE inventory (
  item_name VARCHAR (255),
  price DECIMAL(6, 2),
  quantity INT
);


-- #3. What's the difference between 'TIMESTAMP' and 'DATETIME'?
-- Ans. TIMESTAMP is stored in UTC and DATETIME is stored in local time zone. Also, timestamp has a range of 1970-2038 and datetime has a range of 1000-9999.
-- 
-- 
-- 
-- #4. Print out the current time.
SELECT
  CURTIME();


-- #5. Print out current date.
SELECT
  CURDATE();


-- #6. Print out day of the week in number.
SELECT
  DAYOFWEEK(CURDATE());


-- #7. Print out day of the week in name.
SELECT
  DAYNAME(CURDATE());


-- #8. Print out current date and time in format mm/dd/yyyy hh:mm:ss.
SELECT
  DATE_FORMAT(NOW(), '%m/%d/%Y %h:%i:%s');


-- #9. Print out current date and time in format `January 2nd at 3:15`, `April 1st at 10:18`.
SELECT
  DATE_FORMAT(NOW(), '%M %D at %l:%i');


-- #10. Create a tweets table that stores - the tweet content (180 char), a username, and time it was created.
CREATE TABLE tweets(
  tweet_content VARCHAR(180),
  username VARCHAR(15),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO
  tweets(tweet_content, username)
VALUES
  ('I create websites and stuff', 'johndoe'),
  ('Just another day at the office', 'janedoe');


SELECT
  tweet_content,
  username,
  created_at
FROM
  tweets;