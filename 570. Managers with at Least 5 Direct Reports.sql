/* Write your T-SQL query statement below */

SELECT e1.name FROM Employee e1
JOIN Employee e2 ON e1.Id = e2.managerId
GROUP BY e1.ManagerId, e1.name
HAVING COUNT(*) >= 5