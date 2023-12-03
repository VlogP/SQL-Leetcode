/* Write your T-SQL query statement below */
Declare @UserCount float;
SET @UserCount = (SELECT Count(*) FROM Users) * 1.0;

SELECT r.contest_id, ROUND((CAST(COUNT(r.contest_id) as float) / CAST(@UserCount as float)) * 100, 2) as [percentage]  FROM Register r
JOIN Users u ON u.user_id = r.user_id 
GROUP BY r.contest_id
ORDER BY [percentage] DESC, r.contest_id ASC