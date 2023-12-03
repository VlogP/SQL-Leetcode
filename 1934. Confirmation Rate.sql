/* Write your T-SQL query statement below */
SELECT s1.user_id, 
ROUND(CAST((SELECT COUNT(*) FROM Confirmations c2 WHERE c2.user_id = s1.user_id AND c2.action = 'confirmed' ) as float)
/
NULLIF(CAST((COUNT(*)) as float), 0),2)  
as confirmation_rate FROM Signups s1
LEFT JOIN Confirmations c1 ON c1.user_id = s1.user_id 
GROUP BY s1.user_id