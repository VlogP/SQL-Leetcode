/* Write your T-SQL query statement below */
SELECT c1.visited_on, SUM(c2.amount) as amount, ROUND(SUM(CAST(c2.amount as float)) / 7, 2) as average_amount FROM (SELECT DISTINCT visited_on FROM Customer) c1
JOIN Customer c2 ON c2.visited_on <= c1.visited_on AND c2.visited_on > DATEADD(day, -7, c1.visited_on)
GROUP BY c1.visited_on
HAVING COUNT(distinct c2.visited_on) = 7
ORDER BY visited_on