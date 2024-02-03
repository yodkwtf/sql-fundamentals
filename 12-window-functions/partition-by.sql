SELECT
  emp_no,
  department,
  AVG(salary) OVER(PARTITION BY department) AS avg_salary
FROM
  employees;


SELECT
  emp_no,
  department,
  AVG(salary) OVER(PARTITION BY department) AS department_avg,
  AVG(salary) OVER() AS company_avg
FROM
  employees;


SELECT
  emp_no,
  department,
  COUNT(salary) OVER(PARTITION BY department) AS department_count,
  AVG(salary) OVER(PARTITION BY department) AS department_avg,
  AVG(salary) OVER() AS company_avg
FROM
  employees;


SELECT
  emp_no,
  department,
  COUNT(salary) over(PARTITION BY department) AS department_count,
  salary,
  SUM(salary) over(PARTITION BY department) AS department_total_spend,
  SUM(salary) OVER() AS company_total_spend
FROM
  employees;