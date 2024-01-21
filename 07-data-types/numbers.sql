-- tiny int
CREATE TABLE home (parent_name VARCHAR(15), no_of_children TINYINT);


INSERT INTO
  home(parent_name, no_of_children)
VALUES
  ('John', 3),
  ('Jane', 2),
  ('Joe', 1),
  ('Jill', 0),
  ('Jack', 0);


SELECT
  *
FROM
  home;


-- small int
CREATE TABLE loans (loan_reason VARCHAR(15), emi SMALLINT);


INSERT INTO
  loans(loan_reason, emi)
VALUES
  ('Home', 10000),
  ('Car', 5000),
  ('Education', 2000),
  ('Personal', 1000),
  ('Business', 500);


SELECT
  *
FROM
  loans;


-- make fields only positive
CREATE TABLE loans1 (loan_reason VARCHAR(15), emi SMALLINT UNSIGNED);