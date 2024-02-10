USE subscribe;


CREATE TABLE users (
  email VARCHAR(255) PRIMARY KEY,
  created_at TIMESTAMP DEFAULT NOW()
);


SELECT
  *
FROM
  users
ORDER BY
  created_at DESC;


DELETE FROM
  users
WHERE
  email = 'Oleta.Schroeder@gmail.com';