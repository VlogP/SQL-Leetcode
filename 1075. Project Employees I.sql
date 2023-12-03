/* Write your T-SQL query statement below */
SELECT p.project_id, ROUND(AVG(CAST(experience_years as decimal)), 2) as average_years FROM Project p
JOIN Employee e ON e.employee_id = p.employee_id
GROUP BY p.project_id
ORDER BY p.project_id
