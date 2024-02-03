SELECT
  emp_no,
  department,
  salary,
  AVG(salary) OVER()
FROM
  employees;


SELECT
  emp_no,
  department,
  salary,
  MIN(salary) OVER(),
  MAX(salary) OVER()
FROM
  employees;


-- the below will give error
SELECT
  emp_no,
  department,
  salary,
  MIN(salary),
  MAX(salary)
FROM
  employees;