-- # INSERT
-- insert text in between 
-- Output -> HelloThere Bobby
SELECT
INSERT
  ('Hello Bobby', 6, 0, 'There');


-- fix space issue above
-- Output -> Hello There Bobby
SELECT
INSERT
  ('Hello Bobby', 6, 0, ' There');


-- replace parts of string
-- Output -> Hello Thereby ` Bob` is replaced
SELECT
INSERT
  ('Hello Bobby', 6, 4, ' There');


-- replace parts of string
-- Output -> Hello There ` Bobby` is replaced
SELECT
INSERT
  ('Hello Bobby', 6, 6, ' There');


-- # LEFT
-- get left most 2 characters
SELECT
  LEFT('yodkwtf', 2);


-- get initials of author first name
SELECT
  LEFT(author_fname, 1)
FROM
  books;


-- # RIGHT
-- get 3 right most characters
SELECT
  RIGHT('yodkwtf', 3);


-- # REPEAT
--  repeat a line 10 times
SELECT
  REPEAT('I love Coding! ', 10);


-- # TRIM
-- remove empty spaces from both sides - `Durgesh`
SELECT
  TRIM('   Durgesh         ');


-- specify to remove from start -> `STHA`
SELECT
  TRIM(
    LEADING 'A'
    FROM
      'AASTHA'
  );


-- specify to remove from end -> `JHANV`
SELECT
  TRIM(
    TRAILING 'I'
    FROM
      'JHANVII'
  );


-- remove from both ends -> `KANSH`
SELECT
  TRIM(
    BOTH 'AA'
    FROM
      'AAKANSHAA'
  );