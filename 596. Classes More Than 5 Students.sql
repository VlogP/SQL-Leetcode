/* Write your T-SQL query statement below */
SELECT class FROM Courses c
GROUP BY class
HAVING (SELECT COUNT(DISTINCT student) FROM Courses c2 WHERE c2.class = c.class) >= 5