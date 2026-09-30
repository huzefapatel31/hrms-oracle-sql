CREATE OR REPLACE VIEW employee_attendance_summary AS
SELECT e.emp_id,
       e.emp_name,
       COUNT(a.att_id) AS total_days,
       SUM(CASE WHEN a.status = 'Present' THEN 1 ELSE 0 END) AS present_days,
       SUM(CASE WHEN a.status = 'Absent' THEN 1 ELSE 0 END) AS absent_days
FROM employee e
LEFT JOIN attendance a
ON e.emp_id = a.emp_id
GROUP BY e.emp_id, e.emp_name;
------------------------------------------------------------------------------------
CREATE OR REPLACE VIEW dept_salary_summary AS
SELECT d.dept_id,
       d.dept_name,
       SUM(p.salary) AS total_salary
FROM department d
JOIN employee e
ON d.dept_id = e.dept_id
JOIN payroll p
ON e.emp_id = p.emp_id
GROUP BY d.dept_id, d.dept_name;
