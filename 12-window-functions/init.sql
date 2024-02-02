CREATE TABLE emps(
  emp_no INT PRIMARY KEY AUTO_INCREMENT,
  department VARCHAR(20),
  salary INT
);


INSERT INTO
  emps(department, salary)
VALUES
  ('sales', 59000),
  ('sales', 58000),
  ('sales', 60000),
  ('developer', 119000),
  ('developer', 131000);


SELECT
  *
FROM
  emps;


-- Using GROUP BY
SELECT
  department,
  ROUND(AVG(salary), 2) AS avg_salary
FROM
  emps
GROUP BY
  department;


-- Using window function
SELECT
  department,
  salary,
  AVG(salary) OVER(PARTITION BY department) AS avg_salary
FROM
  emps;