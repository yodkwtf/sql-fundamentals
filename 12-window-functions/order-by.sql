SELECT
  emp_no,
  department,
  salary,
  AVG(salary) OVER(PARTITION BY department) AS avg_salary,
  AVG(salary) OVER(
    PARTITION BY department
    ORDER BY
      salary DESC
  ) AS roll_avg_salary
FROM
  employees;


SELECT
  emp_no,
  department,
  salary,
  MIN(salary) OVER(PARTITION BY department) AS dept_min,
  MIN(salary) OVER(
    PARTITION BY department
    ORDER BY
      salary DESC
  ) AS roll_dept_min
FROM
  employees;