/* Write your T-SQL query statement below */
SELECT employee_id  FROM Employees e1
WHERE NOT EXISTS (SELECT * FROM Employees e2 WHERE e1.manager_id = e2.employee_id) AND e1.salary < 30000 AND e1.manager_id IS NOT NULL
ORDER BY employee_id ASC