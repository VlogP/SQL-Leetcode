/* Write your T-SQL query statement below */

SELECT TOP(1) r.requester_id as id , SUM(count) as num  FROM (
    SELECT requester_id, COUNT(*) count FROM RequestAccepted
    GROUP BY requester_id
    UNION ALL
    SELECT accepter_id as requester_id, COUNT(*) count FROM RequestAccepted
    GROUP BY accepter_id
) r
GROUP BY r.requester_id
ORDER BY num  DESC