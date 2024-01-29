-- Create the notebooks table with a multi-column unique constraint
CREATE TABLE notebooks (
  book_id INT PRIMARY KEY,
  title VARCHAR(100),
  author VARCHAR(100),
  publication_year INT,
  CONSTRAINT unique_book_author UNIQUE (title, author)
);


-- Insert some sample data
INSERT INTO
  notebooks (book_id, title, author, publication_year)
VALUES
  (1, 'Introduction to SQL', 'John Doe', 2020),
  (2, 'Data Science Basics', 'Jane Smith', 2019),
  (3, 'Programming in Python', 'John Doe', 2021);


-- Attempt to insert a book with the same title and author (this should fail due to the unique constraint)
INSERT INTO
  notebooks (book_id, title, author, publication_year)
VALUES
  (4, 'Introduction to SQL', 'John Doe', 2022);


SELECT
  *
FROM
  notebooks;


DROP TABLE notebooks;