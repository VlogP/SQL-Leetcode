/* Write your T-SQL query statement below */
SELECT emp.name, bon.bonus FROM Employee emp
LEFT JOIN Bonus bon ON bon.empId = emp.empId
WHERE bonus < 1000 OR bonus is NULL