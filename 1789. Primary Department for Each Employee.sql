/* Write your T-SQL query statement below */
SELECT employee_id, department_id  FROM Employee 
WHERE primary_flag = 'Y'
GROUP BY employee_id, department_id
UNION
SELECT employee_id, department_id FROM Employee e
WHERE 1 = (SELECT COUNT(*) FROM Employee e2 WHERE e.employee_id = e2.employee_id)
