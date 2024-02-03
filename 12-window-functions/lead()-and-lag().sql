SELECT
  emp_no,
  department,
  salary,
  -- get prev entry's salary
  LAG(salary) OVER(
    ORDER BY
      salary DESC
  ) AS prev_value,
  -- get next entry's salary
  LEAD(salary) OVER(
    ORDER BY
      salary DESC
  ) AS next_value
FROM
  employees;


-- useful example -> calc salary jump
SELECT
  emp_no,
  department,
  salary,
  salary - LAG(salary) OVER(
    ORDER BY
      salary ASC
  ) AS salary_jump
FROM
  employees;


-- same example per department basis using LEAD
SELECT
  emp_no,
  department,
  salary,
  salary - LEAD(salary) OVER(
    PARTITION BY department
    ORDER BY
      salary DESC
  ) AS salary_reduction_for_next_employee
FROM
  employees;