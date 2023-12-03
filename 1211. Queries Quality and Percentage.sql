/* Write your T-SQL query statement below */
SELECT DISTINCT q.query_name, ROUND(SUM(CAST(q.rating as float) / CAST(q.position as float)) / COUNT(*), 2) as quality,

ROUND(CAST((SELECT COUNT(*) FROM Queries q2 WHERE q2.query_name = q.query_name AND q2.rating < 3) as float) / CAST(COUNT(*) as float), 4) * 100 as poor_query_percentage FROM Queries q
GROUP BY q.query_name