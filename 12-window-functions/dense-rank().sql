-- # DENSE_RANK
SELECT
  emp_no,
  department,
  salary,
  -- rank
  RANK() OVER(
    ORDER BY
      salary DESC
  ) AS company_rank,
  -- dense rank
  DENSE_RANK() OVER(
    ORDER BY
      salary DESC
  ) AS company_dense_rank
FROM
  employees;