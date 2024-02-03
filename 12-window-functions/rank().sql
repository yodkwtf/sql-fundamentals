-- get the total rank wrt to all employees
SELECT
  emp_no,
  department,
  salary,
  RANK() OVER(
    ORDER BY
      salary DESC
  ) AS company_rank
FROM
  employees;


-- get rank wrt to department
SELECT
  emp_no,
  department,
  salary,
  RANK() OVER(
    PARTITION BY department
    ORDER BY
      salary DESC
  ) AS department_rank
FROM
  employees;


-- combine both
SELECT
  emp_no,
  department,
  salary,
  -- dept rank
  RANK() OVER(
    PARTITION BY department
    ORDER BY
      salary DESC
  ) AS department_rank,
  -- company rank
  RANK() OVER(
    ORDER BY
      salary DESC
  ) AS company_rank
FROM
  employees
ORDER BY
  department;