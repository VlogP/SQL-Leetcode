/* Write your T-SQL query statement below */

SELECT (SELECT e1.salary as SecondHighestSalary FROM Employee e1
GROUP BY e1.salary
ORDER BY e1.salary DESC
OFFSET 1 ROWS
FETCH FIRST 1 ROWS ONLY) as SecondHighestSalary