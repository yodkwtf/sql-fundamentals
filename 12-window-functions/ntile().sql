-- divide entire company into 3 buckets
SELECT
  emp_no,
  department,
  salary,
  NTILE(3) OVER(
    ORDER BY
      salary DESC
  )
FROM
  employees;


-- divide each department into 3 buckets
SELECT
  emp_no,
  department,
  salary,
  NTILE(3) OVER(
    PARTITION BY department
    ORDER BY
      salary DESC
  )
FROM
  employees;