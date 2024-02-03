-- # ROW NUMBER
SELECT
  emp_no,
  department,
  salary,
  ROW_NUMBER() OVER(
    ORDER BY
      salary DESC
  )
FROM
  employees;


SELECT
  emp_no,
  department,
  salary,
  ROW_NUMBER() OVER(
    PARTITION BY department
    ORDER BY
      salary DESC
  ) AS dept_row_number
FROM
  employees;