/* Write your T-SQL query statement below */

WITH cte AS (SELECT a.player_id,  a.event_date FROM Activity a
GROUP BY a.player_id, a.event_date
HAVING DATEADD(day, -1, a.event_date) = (SELECT TOP(1) a2.event_date FROM Activity a2 WHERE a.player_id = a2.player_id ORDER BY a2.event_date ASC))


SELECT ROUND(CAST((SELECT COUNT(*) FROM cte) as float) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) as fraction