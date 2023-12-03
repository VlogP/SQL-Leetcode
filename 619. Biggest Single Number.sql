/* Write your T-SQL query statement below */

SELECT ISNULL(MAX(num), null) as num FROM
(SELECT n.num FROM MyNumbers n
GROUP BY n.num
HAVING COUNT(n.num) = 1) c