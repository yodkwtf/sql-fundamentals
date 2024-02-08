CREATE TABLE likes(
  user_id INT NOT NULL,
  photo_id INT NOT NULL,
  created_at TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (photo_id) REFERENCES photos(id),
  PRIMARY KEY (user_id, photo_id) -- one user can only like a photo once
);


DESC likes;


SELECT
  *
FROM
  likes;