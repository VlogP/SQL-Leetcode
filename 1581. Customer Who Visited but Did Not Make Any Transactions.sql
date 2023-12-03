/* Write your T-SQL query statement below */
SELECT customer_id, COUNT(*) as count_no_trans FROM Visits v (NOLOCK)
WHERE v.visit_id NOT IN (SELECT visit_id FROM Transactions)
GROUP BY customer_id 