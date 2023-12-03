/* Write your T-SQL query statement below */
with cte as (SELECT s1.id, s2.student FROM Seat s1
JOIN Seat s2 ON s2.id = s1.id - 1 AND s2.id % 2 = 1
UNION
SELECT s2.id, s1.student FROM Seat s1
JOIN Seat s2 ON s2.id = s1.id - 1 AND s2.id % 2 = 1
UNION
SELECT s1.id, s1.student FROM Seat s1 WHERE s1.Id = (SELECT MAX(id) FROM Seat) AND (SELECT MAX(id) FROM Seat) % 2 = 1
)

SELECT * FROM cte
ORDER BY id
