SELECT
  emp_no,
  department,
  salary,
  FIRST_VALUE(emp_no) OVER(
    ORDER BY
      salary DESC
  )
FROM
  employees;


-- same per department basis
SELECT
  emp_no,
  department,
  salary,
  FIRST_VALUE(emp_no) OVER(
    PARTITION BY department
    ORDER BY
      salary DESC
  )
FROM
  employees;


-- LAST VALUE
SELECT
  emp_no,
  department,
  salary,
  LAST_VALUE(emp_no) OVER(
    PARTITION BY department
    ORDER BY
      salary DESC
  )
FROM
  employees;