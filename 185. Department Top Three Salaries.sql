/* Write your T-SQL query statement below */

with emp_data AS ((SELECT e.departmentId, e.name, e.salary FROM Employee e WHERE 
e.salary IN (SELECT DISTINCT TOP(3) e2.salary FROM Employee e2 WHERE e2.departmentId = e.departmentId ORDER BY e2.SALARY DESC)))


SELECT d.name as Department, mg.name as Employee, mg.salary as Salary FROM Department d
JOIN emp_data mg ON mg.departmentId = d.id