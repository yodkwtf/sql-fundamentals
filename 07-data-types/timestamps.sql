SELECT
  NOW();


-- timestamp is no different than date time
SELECT
  TIMESTAMP(NOW());


-- using timestamp
CREATE TABLE captions(
  text VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO
  captions(text)
VALUES
  ('I create websites and stuff'),
  ('Just another day at the office');


SELECT
  text,
  created_at,
  DATE_FORMAT(created_at, '%M %D, %Y') AS formatted_date
FROM
  captions;


-- on update example
CREATE TABLE captions2(
  text VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


INSERT INTO
  captions2(text)
VALUES
  ('I create websites and stuff'),
  ('Just another day at the office');


SELECT
  text,
  created_at,
  updated_at
FROM
  captions2;


UPDATE
  captions2
SET
  text = 'I create websites and stuff, and I love it!!!'
WHERE
  text = 'I create websites and stuff';


SELECT
  text,
  created_at,
  updated_at
FROM
  captions2;